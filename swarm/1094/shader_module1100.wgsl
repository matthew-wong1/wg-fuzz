struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 6>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: bool) -> u32 {
    global0 = array<Struct_3, 6>();
    var var_0 = _wgslsmith_div_i32(2147483647i, ~arg_0.x) << (min(35902u, _wgslsmith_mod_u32(21835u >> (_wgslsmith_div_u32(arg_1, arg_1) % 32u), arg_1)) % 32u);
    var var_1 = Struct_1(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(arg_1, 4294967295u), arg_1), abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, arg_1), vec2<u32>(arg_1, 51435u), vec2<u32>(arg_1, 23041u)))), ~_wgslsmith_sub_vec2_u32(abs(vec2<u32>(23784u, 0u)), vec2<u32>(arg_1, 85863u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)))), countOneBits(abs(reverseBits(vec4<u32>(76949u, arg_1, 1u, arg_1))) ^ ~firstLeadingBit(vec4<u32>(arg_1, 4294967295u, 4563u, 60036u))), select(vec3<bool>(arg_2 && (u_input.a.x >= arg_0.x), false | !arg_2, min(0i, arg_0.x) <= ~arg_0.x), vec3<bool>(!all(vec3<bool>(arg_2, true, arg_2)), true && arg_2, arg_2), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(141f)), _wgslsmith_f_op_f32(min(-293f, 1000f))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(309f - -948f) - _wgslsmith_f_op_f32(ceil(-450f)))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(569f, -110f))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) - 681f) * 559f), 733f));
    return _wgslsmith_mod_u32(~arg_1, arg_1) >> (_wgslsmith_div_u32(0u << (arg_1 % 32u), var_1.a.x) % 32u);
}

fn func_2(arg_0: i32, arg_1: vec2<u32>) -> u32 {
    var var_0 = Struct_1(arg_1, _wgslsmith_add_vec4_u32(reverseBits(~vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 4735u) ^ ~vec4<u32>(21091u, arg_1.x, arg_1.x, arg_1.x)), ~min(~vec4<u32>(20737u, 12974u, 37917u, arg_1.x), vec4<u32>(arg_1.x, arg_1.x, 39694u, 0u))), !(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true)));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_2 = Struct_2(-184f);
    let var_3 = var_0.c;
    var_0 = Struct_1(var_0.b.xx, ~firstTrailingBit(vec4<u32>(var_0.b.x, func_3(vec2<i32>(2147483647i, -10196i), arg_1.x, false), ~1u, 59883u >> (var_0.b.x % 32u))), vec3<bool>(1u >= firstTrailingBit(31563u), var_0.c.x, true));
    return (var_0.a.x ^ ~(~_wgslsmith_mod_u32(4294967295u, arg_1.x))) ^ (_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(select(var_0.b, vec4<u32>(9706u, arg_1.x, arg_1.x, 4294967295u), vec4<bool>(var_0.c.x, true, var_3.x, var_3.x)), abs(var_0.b)), var_0.a.x ^ ~0u) >> (firstTrailingBit(4294967295u) % 32u));
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_sub_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 4294967295u, 4294967295u, 4136u), vec4<u32>(1u, 1u, 1u, 1u)), ~abs(69661u), 6133u), _wgslsmith_mult_vec3_u32(select(vec3<u32>(~10308u, ~4684u, 102111u), ~vec3<u32>(1u, 1u, 1u), true), ~vec3<u32>(~2831u, 1u, func_2(-17467i, vec2<u32>(1u, 48136u)))));
    var var_1 = _wgslsmith_mult_i32(u_input.a.x & max(u_input.a.x, ~firstTrailingBit(2147483647i)), -1023i);
    var_0 = vec3<u32>(10964u, ~1u, ~(~(59815u ^ func_2(-15907i, vec2<u32>(1u, var_0.x)))));
    let var_2 = Struct_1(abs(vec2<u32>(_wgslsmith_mod_u32(~12475u, firstLeadingBit(var_0.x)), var_0.x)), _wgslsmith_sub_vec4_u32(countOneBits(~vec4<u32>(var_0.x, 4294967295u, 0u, 71263u)), vec4<u32>(reverseBits(var_0.x), 1u, ~1u, ~(~var_0.x))), !(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)))));
    global0 = array<Struct_3, 6>();
    return global0[_wgslsmith_index_u32(func_3(~(-max(vec2<i32>(-38754i, 2147483647i), vec2<i32>(u_input.a.x, 1765i))), 9928u, !var_2.c.x) ^ 1u, 6u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 6>();
    var var_0 = func_1();
    let var_1 = var_0.a;
    var var_2 = 0u;
    var var_3 = ~_wgslsmith_div_vec3_u32(var_1.b.zxw, vec3<u32>(var_0.a.a.x, 1u, var_1.a.x)) & var_1.b.wzz;
    global0 = array<Struct_3, 6>();
    var_2 = 1u;
    let var_4 = Struct_2(-156f);
    var var_5 = vec4<i32>(14959i, 1i, -abs(u_input.b.x), 330i) ^ -u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(-(~_wgslsmith_mult_vec3_i32(vec3<i32>(var_5.x, u_input.a.x, var_5.x), u_input.a.wzy)), -var_5.x, var_0.a.b.xyw, var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_4.a)))));
}

