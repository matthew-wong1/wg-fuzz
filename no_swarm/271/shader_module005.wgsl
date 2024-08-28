struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<bool> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * -301f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2315f)) - -165f))), -423f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(323f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2012f))));
    global0 = array<i32, 9>();
    var var_1 = select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true), any(vec3<bool>(true, true, true)) | true), vec2<bool>(true, true | all(vec4<bool>(false, true, false, false))), true);
    let var_2 = var_1.x;
    var var_3 = Struct_2(~_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(1i, u_input.c.x, -1i), vec3<i32>(u_input.c.x, -13471i, global0[_wgslsmith_index_u32(61164u, 9u)])) >> ((vec3<u32>(u_input.b, u_input.b, 0u) & vec3<u32>(u_input.b, u_input.b, 1u)) % vec3<u32>(32u)), vec3<i32>(0i, 8307i, 0i) >> ((vec3<u32>(73396u, u_input.d, u_input.a.x) & vec3<u32>(u_input.d, 1u, 4294967295u)) % vec3<u32>(32u))), firstLeadingBit(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, u_input.d, 0u, 69481u), reverseBits(vec4<u32>(9462u, 1u, 34126u, u_input.b))), vec4<u32>(firstTrailingBit(4294967295u), u_input.b, 0u, countOneBits(4251u)))));
    return vec3<bool>(all(vec4<bool>(var_1.x, false, var_1.x, !any(vec4<bool>(var_1.x, var_1.x, false, var_1.x)))), var_1.x, any(vec3<bool>(var_1.x, all(vec2<bool>(true, false)), _wgslsmith_add_i32(-4634i, global0[_wgslsmith_index_u32(35792u, 9u)]) >= 1i)));
}

fn func_2(arg_0: i32, arg_1: u32) -> f32 {
    let var_0 = ~u_input.d;
    var var_1 = Struct_1(i32(-1i) * -14909i, -625f, max(var_0, var_0), ~u_input.a.x, -firstLeadingBit(0i));
    global0 = array<i32, 9>();
    let var_2 = select(!select(vec3<bool>(true, any(vec3<bool>(false, true, true)), true), select(vec3<bool>(true, true, true), func_3(), any(vec4<bool>(false, false, false, false))), true), func_3(), !all(vec4<bool>(true, true, false, true)));
    let var_3 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(26318u, 4294967295u, var_0, var_1.d), vec4<u32>(40465u, 4294967295u, 1u, var_0), vec4<u32>(92059u, arg_1, 0u, 1u)), firstTrailingBit(~vec4<u32>(0u, u_input.d, u_input.d, var_0))), 44552u, 4294967295u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_1.d), u_input.a), ~(~var_1.d))), vec4<u32>(min(_wgslsmith_mult_u32(var_0 << (0u % 32u), _wgslsmith_sub_u32(var_0, 39681u)), _wgslsmith_mult_u32(min(79086u, var_1.c), 1u)), ~arg_1, arg_1, 4294967295u | u_input.d));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-321f, -546f))))), _wgslsmith_f_op_f32(abs(var_1.b)), true));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_dot_vec3_i32(-u_input.c, select(vec3<i32>(1i, u_input.c.x, 1i) << (vec3<u32>(4294967295u, u_input.d, u_input.b) % vec3<u32>(32u)), vec3<i32>(9262i, global0[_wgslsmith_index_u32(u_input.b, 9u)], global0[_wgslsmith_index_u32(10830u, 9u)]) & u_input.c, vec3<bool>(true, true, true))), u_input.a.x)));
    let var_1 = global0[_wgslsmith_index_u32(1u, 9u)];
    var var_2 = select(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(76559u, 9u)], u_input.c.x, u_input.c.x, -14393i), _wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(-2147483647i, -26622i, global0[_wgslsmith_index_u32(96488u, 9u)], global0[_wgslsmith_index_u32(1u, 9u)]))), -countOneBits(vec4<i32>(u_input.c.x, -93i, 13059i, global0[_wgslsmith_index_u32(u_input.a.x, 9u)]))), vec4<i32>(-_wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, 43252i), -2578i, 2147483647i, _wgslsmith_sub_i32(-1i, -global0[_wgslsmith_index_u32(u_input.a.x, 9u)])), (vec4<i32>(global0[_wgslsmith_index_u32(38339u, 9u)], -2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 9u)], 34978i) << (vec4<u32>(77862u, u_input.a.x, 4294967295u, u_input.b) % vec4<u32>(32u))) | _wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.c.x, -29962i, -1567i), abs(vec4<i32>(u_input.c.x, 0i, 2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 9u)])))), select(vec4<i32>(reverseBits(countOneBits(u_input.c.x)), select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(78403u, 819u, u_input.d, u_input.a.x), vec4<u32>(31534u, u_input.a.x, 4294967295u, u_input.a.x)), 9u)], global0[_wgslsmith_index_u32(u_input.b, 9u)] ^ global0[_wgslsmith_index_u32(u_input.a.x, 9u)], true), ~_wgslsmith_mult_i32(-4293i, u_input.c.x), global0[_wgslsmith_index_u32(abs(u_input.d), 9u)]), -reverseBits(countOneBits(vec4<i32>(15076i, 16525i, 0i, global0[_wgslsmith_index_u32(100484u, 9u)]))), !vec4<bool>(select(true, true, true), -2147483647i <= global0[_wgslsmith_index_u32(26145u, 9u)], all(vec4<bool>(false, false, false, true)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(420f - -320f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(622f - -121f))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1790f + _wgslsmith_f_op_f32(min(1096f, 313f))) - _wgslsmith_f_op_f32(func_2(~(-2147483647i), 38735u))));
    var_2 = _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 9u)], min(i32(-1i) * -59929i, select(global0[_wgslsmith_index_u32(37789u, 9u)], var_2.x, false)), _wgslsmith_dot_vec3_i32(u_input.c, u_input.c ^ u_input.c), -347i), firstTrailingBit(vec4<i32>(-1i, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(35524u, u_input.a.x), 9u)], 1i, global0[_wgslsmith_index_u32(1u, 9u)]))), max(-vec4<i32>(-var_2.x, 1i, ~var_2.x, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(1u, 9u)], 2147483647i)), vec4<i32>(var_2.x, 1i, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.b, 9u)], -50063i), u_input.c.xz), -var_2.x), max(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.a.x, u_input.b)), 9u)], -24227i))), firstLeadingBit(_wgslsmith_div_vec4_i32(select(_wgslsmith_div_vec4_i32(vec4<i32>(-83789i, var_2.x, global0[_wgslsmith_index_u32(4294967295u, 9u)], 0i), vec4<i32>(var_2.x, global0[_wgslsmith_index_u32(4294967295u, 9u)], u_input.c.x, 18570i)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_2.x, u_input.c.x, -62705i, global0[_wgslsmith_index_u32(0u, 9u)]), vec4<i32>(var_2.x, global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(65581u, 9u)], var_2.x)), all(vec4<bool>(false, true, false, false))), vec4<i32>(global0[_wgslsmith_index_u32(71956u, 9u)], 13362i, var_2.x, 0i))));
    let var_3 = func_3();
    return Struct_2(_wgslsmith_clamp_vec3_i32(var_2.zzy, -vec3<i32>(i32(-1i) * -36763i, 1i, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(u_input.b, 9u)], var_2.x)), vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, 0i), u_input.c.xx), firstTrailingBit(-4924i), ~(-1i)), u_input.c.x, -reverseBits(u_input.c.x))), ~select(countOneBits(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.d)), vec4<u32>(_wgslsmith_clamp_u32(u_input.b, u_input.a.x, 17681u), ~u_input.d, 10796u, ~u_input.b), select(select(vec4<bool>(false, true, var_3.x, var_3.x), vec4<bool>(var_3.x, true, var_3.x, false), true), select(vec4<bool>(var_3.x, false, false, var_3.x), vec4<bool>(var_3.x, var_3.x, false, false), var_3.x), var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_u32(0u, u_input.b);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -559f));
    var var_2 = firstTrailingBit(-2147483647i);
    let var_3 = func_1();
    let var_4 = Struct_1(_wgslsmith_dot_vec3_i32(select(select(-u_input.c, vec3<i32>(u_input.c.x, -9229i, 13614i), var_0 == var_0), (vec3<i32>(var_3.a.x, var_3.a.x, 0i) | vec3<i32>(-1i, var_3.a.x, -1i)) & ~var_3.a, true), var_3.a), var_1, _wgslsmith_dot_vec3_u32(~(~var_3.b.wxx), vec3<u32>(var_0, ~func_1().b.x, abs(~var_3.b.x))), min(82762u, var_3.b.x), global0[_wgslsmith_index_u32(~(~(~_wgslsmith_mod_u32(13218u, 17343u))), 9u)]);
    var_2 = 30985i;
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_4.b, _wgslsmith_f_op_f32(573f - 422f)))) - 1095f), select(u_input.c.x, abs(global0[_wgslsmith_index_u32(var_4.c, 9u)]), true), -562f);
}

