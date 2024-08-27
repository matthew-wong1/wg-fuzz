struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, 289f, vec3<i32>(1i, -829i, 11058i), 10263i);

var<private> global1: array<vec3<bool>, 31>;

var<private> global2: array<bool, 2>;

var<private> global3: vec3<i32> = vec3<i32>(-12139i, 2147483647i, 15493i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<bool>) -> vec4<u32> {
    let var_0 = vec4<u32>(11793u, 63030u, ~(~firstTrailingBit(0u)), 1u);
    var var_1 = vec4<f32>(-1888f, 958f, 1000f, _wgslsmith_f_op_f32(-global0.b));
    let var_2 = var_0.x;
    var var_3 = ~global0.d;
    let var_4 = !vec2<bool>(all(vec4<bool>(any(arg_0), global0.a, all(vec2<bool>(global2[_wgslsmith_index_u32(var_0.x, 2u)], false)), any(arg_0))), global2[_wgslsmith_index_u32(max(0u, firstTrailingBit(var_0.x) >> ((1u >> (1u % 32u)) % 32u)), 2u)]);
    return ~vec4<u32>(_wgslsmith_div_u32(1u, ~14440u), max(firstTrailingBit(~var_0.x), ~0u ^ var_2), firstLeadingBit(_wgslsmith_dot_vec2_u32(~var_0.xx, vec2<u32>(0u, var_0.x) >> (vec2<u32>(25159u, 4294967295u) % vec2<u32>(32u)))), ~(var_0.x << (1u % 32u)) ^ _wgslsmith_add_u32(0u, ~var_0.x));
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(true, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.b, _wgslsmith_f_op_f32(-global0.b)))))), abs(~(~vec3<i32>(global0.c.x, global3.x, -22635i)) ^ vec3<i32>(-40123i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.d, global3.x, 49882i, global3.x), vec4<i32>(global3.x, 34569i, global0.c.x, global3.x)), global0.d)), global3.x);
    global3 = ~_wgslsmith_add_vec3_i32(-vec3<i32>(global3.x, global3.x, 39354i) | -global0.c, _wgslsmith_add_vec3_i32(vec3<i32>(30487i, u_input.a.x, ~1i), vec3<i32>(-1i) * -global0.c));
    let var_0 = min(~select(~func_3(vec2<bool>(true, global0.a)), firstLeadingBit(select(vec4<u32>(4414u, 1u, 25139u, 4294967295u), vec4<u32>(89001u, 8169u, 29107u, 73063u), global0.a)), true), _wgslsmith_clamp_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), ~vec4<u32>(firstTrailingBit(1u), _wgslsmith_add_u32(8280u, 0u), 38142u, 1u), max(vec4<u32>(firstLeadingBit(0u), ~27829u, 1u, 94132u), ~vec4<u32>(1u, 1u, 1u, 1u))));
    let var_1 = u_input.a;
    global3 = _wgslsmith_mod_vec3_i32(vec3<i32>(-u_input.a.x, ~_wgslsmith_clamp_i32(0i, global0.c.x, 2147483647i), ~(-22467i)) ^ _wgslsmith_add_vec3_i32(-global0.c, max(_wgslsmith_add_vec3_i32(vec3<i32>(13588i, -38086i, 0i), vec3<i32>(53523i, u_input.a.x, -23342i)), select(vec3<i32>(-34824i, u_input.a.x, var_1.x), vec3<i32>(var_1.x, 2147483647i, -19010i), true))), _wgslsmith_div_vec3_i32(firstTrailingBit(u_input.a), var_1));
    return Struct_1(true, _wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.b, 952f, false))))), vec3<i32>(global3.x, ~_wgslsmith_sub_i32(global3.x, global0.d), 1i) << (vec3<u32>(~0u, 39961u, var_0.x | 16216u) % vec3<u32>(32u)), _wgslsmith_mult_i32(abs(0i), global0.c.x));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> i32 {
    var var_0 = arg_0;
    global0 = func_2();
    let var_1 = Struct_1(arg_1 > max(4294967295u, arg_1), global0.b, vec3<i32>(-28401i, i32(-1i) * -2147483647i, ~arg_0.d), _wgslsmith_mod_i32(firstTrailingBit(arg_2.d << (17023u % 32u)) | -1i, _wgslsmith_div_i32(global0.c.x, arg_0.c.x) << (30822u % 32u)));
    let var_2 = !select(arg_2.a, all(!(!vec4<bool>(arg_2.a, false, global2[_wgslsmith_index_u32(33755u, 2u)], true))), select(!any(vec4<bool>(arg_2.a, true, var_0.a, false)), any(select(vec2<bool>(true, var_0.a), vec2<bool>(true, true), var_1.a)), all(vec4<bool>(false, true, false, false))));
    var var_3 = func_3(select(!select(vec2<bool>(true, true), select(vec2<bool>(arg_0.a, arg_2.a), vec2<bool>(false, var_0.a), false), vec2<bool>(false, true)), select(select(vec2<bool>(var_1.a, var_2), select(vec2<bool>(false, arg_0.a), vec2<bool>(false, global0.a), true), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(var_2, arg_0.a), vec2<bool>(var_2, arg_2.a)), !vec2<bool>(arg_0.a, true)), global0.a), var_1.a));
    return u_input.a.x;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec3<i32>(func_4(func_2(), 47753u, Struct_1(arg_0.a, 1f, -arg_0.c, _wgslsmith_dot_vec4_i32(vec4<i32>(-18332i, -3854i, -2147483647i, u_input.a.x), -vec4<i32>(2147483647i, 1i, u_input.a.x, global3.x)))), 0i, countOneBits(-max(-1306i, global0.d)));
    global2 = array<bool, 2>();
    global0 = arg_0;
    var var_1 = Struct_1(!global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(~1u), 9200u), 2u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-492f * _wgslsmith_f_op_f32(-1694f - arg_0.b)) - global0.b) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2().b + _wgslsmith_f_op_f32(-arg_0.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b + arg_0.b)))), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(reverseBits(global0.c), select(arg_0.c, arg_0.c, global2[_wgslsmith_index_u32(0u, 2u)])) ^ vec3<i32>(0i, -46553i, 1i), vec3<i32>(abs(~global0.d), -global3.x, global0.c.x)), abs(~firstTrailingBit(-1i) >> (0u % 32u)));
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(-56570i, countOneBits(-2147483647i)), global3.yy);
    return func_2();
}

fn func_5(arg_0: vec4<bool>, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-arg_3.b);
    global1 = array<vec3<bool>, 31>();
    let var_1 = true;
    global2 = array<bool, 2>();
    global2 = array<bool, 2>();
    return _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(~71792u, ~4294967295u, _wgslsmith_clamp_u32(arg_2.x, arg_2.x, 0u), func_3(vec2<bool>(false, global2[_wgslsmith_index_u32(1u, 2u)])).x), ~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, arg_2.x, 1u), vec4<u32>(1u, 4294967295u, arg_2.x, arg_2.x))), ~abs(~arg_2.x), arg_2.x), ~(~firstTrailingBit(countOneBits(vec4<u32>(4294967295u, 87829u, arg_2.x, 0u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(~max(~vec4<i32>(1i, 0i, 2147483647i, global3.x), _wgslsmith_add_vec4_i32(vec4<i32>(global3.x, global0.c.x, global0.d, 1i), vec4<i32>(u_input.a.x, u_input.a.x, global0.c.x, -7724i))) & (vec4<i32>(global0.d | global3.x, 33089i | global3.x, global0.c.x, global0.d) & -_wgslsmith_mod_vec4_i32(vec4<i32>(-29685i, u_input.a.x, -24384i, 0i), vec4<i32>(u_input.a.x, -51483i, u_input.a.x, global0.c.x))));
    global0 = Struct_1(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-833f)))), vec3<i32>(u_input.a.x, -8495i, 18569i << (func_5(vec4<bool>(true, global2[_wgslsmith_index_u32(62049u, 2u)], false, global0.a), true, select(vec3<u32>(31385u, 71446u, 1121u), vec3<u32>(27237u, 21401u, 0u), global0.a), func_1(Struct_1(global0.a, 101f, vec3<i32>(-8875i, global0.d, -5288i), global0.c.x))) % 32u)), 22184i);
    let var_1 = func_2();
    global3 = vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, u_input.a.x, 1i), _wgslsmith_mod_vec3_i32((var_0.wzz | u_input.a) & ~var_0.wzz, var_0.yxw)), var_1.c.x, -11208i);
    global0 = func_1(var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(988f * _wgslsmith_f_op_f32(round(var_1.b))), -1672i, abs(~_wgslsmith_div_u32(10821u, abs(4294967295u))));
}

