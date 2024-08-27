struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<i32>;

var<private> global2: i32 = -1i;

var<private> global3: array<vec4<f32>, 5> = array<vec4<f32>, 5>(vec4<f32>(339f, 690f, 313f, 981f), vec4<f32>(1407f, -1000f, 760f, -1446f), vec4<f32>(-573f, -238f, 585f, 585f), vec4<f32>(472f, -773f, -266f, 967f), vec4<f32>(709f, 1099f, -524f, -2178f));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> i32 {
    let var_0 = global0.b.x;
    let var_1 = _wgslsmith_sub_vec3_i32(~_wgslsmith_mult_vec3_i32(-(~vec3<i32>(global1.x, -84038i, -53779i)), vec3<i32>(-u_input.c, 18361i, abs(0i))), abs(vec3<i32>(-global1.x, -20146i, i32(-1i) * -1i)) & (vec3<i32>(select(global1.x, global1.x, false), 2147483647i, u_input.d.x >> (52480u % 32u)) ^ ~min(vec3<i32>(global0.a, 2147483647i, -22284i), vec3<i32>(u_input.c, global0.a, 2147483647i))));
    return ~var_1.x;
}

fn func_2(arg_0: vec4<u32>) -> i32 {
    var var_0 = ~(~0u);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(arg_0.x, 5u)] - _wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), arg_0.x >> (u_input.b.x % 32u)), 5u)])) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(870f, _wgslsmith_f_op_f32(ceil(-2244f)), -689f, 1662f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1682f, 683f, -1116f, 1720f), global3[_wgslsmith_index_u32(1u, 5u)]))))) - _wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, 30873u) << (4294967295u % 32u), 5u)] - global3[_wgslsmith_index_u32(~arg_0.x ^ ~42845u, 5u)])));
    let var_2 = arg_0.yz;
    let var_3 = Struct_1(func_3() << (~4294967295u % 32u), global0.b);
    global0 = Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(~(vec3<i32>(u_input.c, -1i, u_input.a) << (u_input.b % vec3<u32>(32u))), ~(~vec3<i32>(12074i, 39400i, 0i))), vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, -1i, 14335i, 78915i), vec4<i32>(45868i, global1.x, -1i, 0i)), u_input.c, 14835i)), !select(var_3.b, var_3.b, any(global0.b)));
    return global1.x ^ -reverseBits(~(~(-2147483647i)));
}

fn func_1() -> i32 {
    let var_0 = any(vec4<bool>(all(!vec4<bool>(true, false, global0.b.x, true)) & global0.b.x, all(global0.b), false, func_2(vec4<u32>(38902u, 0u, 47442u, 45238u)) >= -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2147483647i, -2147483647i), vec3<i32>(0i, -2147483647i, 2147483647i))));
    var var_1 = Struct_1(firstLeadingBit(min(_wgslsmith_mult_i32(i32(-1i) * -40161i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.d.x), vec4<i32>(-1i, -1i, 2147483647i, u_input.c))), func_2(vec4<u32>(4294967295u, 80895u, u_input.b.x, u_input.b.x)))), vec2<bool>((min(u_input.b.x, 53845u) >= _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.xz)) & all(vec4<bool>(global0.b.x, false, var_0, var_0)), true));
    var var_2 = var_1.b.x | !all(vec4<bool>(true, true, true, true));
    let var_3 = var_1.b;
    var var_4 = _wgslsmith_dot_vec3_u32(abs(~vec3<u32>(u_input.b.x, ~u_input.b.x, 0u)), firstTrailingBit(u_input.b));
    return -_wgslsmith_add_i32(func_3(), ~(func_2(vec4<u32>(u_input.b.x, 0u, 67572u, 7180u)) >> (14783u % 32u)));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec2<f32>, arg_3: vec4<i32>) -> StorageBuffer {
    global0 = Struct_1(_wgslsmith_sub_i32(-26153i, i32(-1i) * -1i) ^ _wgslsmith_div_i32(arg_3.x, arg_3.x), select(!global0.b, select(vec2<bool>(select(false, false, true), true), select(global0.b, vec2<bool>(global0.b.x, global0.b.x), global0.b.x | false), any(vec3<bool>(true, global0.b.x, global0.b.x))), global0.b.x));
    var var_0 = Struct_1(0i, global0.b);
    var var_1 = Struct_1(~(-(~(1i >> (u_input.b.x % 32u)))), vec2<bool>(false, (_wgslsmith_f_op_f32(-arg_2.x) <= _wgslsmith_f_op_f32(max(arg_2.x, 439f))) != global0.b.x));
    var var_2 = vec2<u32>(_wgslsmith_sub_u32(abs(u_input.b.x ^ u_input.b.x) | _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(4294967295u, u_input.b.x, 1u) & vec3<u32>(u_input.b.x, u_input.b.x, 1u)), reverseBits(u_input.b.x)), select(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, 62117u, 1u, 45974u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, u_input.b.x), vec4<u32>(4294967295u, 35301u, u_input.b.x, u_input.b.x))), ~(~u_input.b.x), u_input.b.x), firstLeadingBit(reverseBits(firstLeadingBit(35988u))), true));
    let var_3 = true;
    return StorageBuffer(~1i, _wgslsmith_mult_vec2_i32(-(~arg_3.yy), arg_3.zx), -arg_3, _wgslsmith_add_vec2_i32(-u_input.d, ~(~arg_3.zy)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<f32>, 5>();
    global1 = vec2<i32>(-1i) * -u_input.d;
    let var_0 = ~38811u;
    global2 = ~(-2147483647i);
    var var_1 = ~(4294967295u | firstTrailingBit(0u));
    global2 = -_wgslsmith_mult_i32(abs(global1.x), u_input.d.x);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-800f - 1262f)))), _wgslsmith_f_op_f32(select(-1105f, 366f, !(global0.b.x | global0.b.x))))) + -1435f);
    let x = u_input.a;
    s_output = func_4(_wgslsmith_clamp_i32(func_1(), ~(i32(-1i) * -19851i), -(~global0.a)), global1.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(var_2 * var_2), _wgslsmith_f_op_f32(-var_2)), vec2<f32>(-245f, _wgslsmith_f_op_f32(-1000f + var_2)), global0.b))), abs(-select(~vec4<i32>(1i, u_input.c, u_input.d.x, 0i), vec4<i32>(global0.a, global1.x, -2147483647i, 64690i) | vec4<i32>(u_input.a, global1.x, u_input.a, 1i), any(vec4<bool>(false, true, global0.b.x, global0.b.x)))));
}

