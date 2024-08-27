struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: i32,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 32540i;

var<private> global1: array<Struct_4, 2>;

var<private> global2: vec3<u32>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> vec3<u32> {
    global2 = (vec3<u32>(_wgslsmith_add_u32(abs(global2.x), global2.x), _wgslsmith_add_u32(30022u, countOneBits(61530u)), global2.x) | firstTrailingBit(_wgslsmith_mult_vec3_u32(~vec3<u32>(global2.x, 0u, 12026u), vec3<u32>(21987u, global2.x, global2.x)))) | vec3<u32>(~(~_wgslsmith_clamp_u32(20345u, 0u, 35521u)), 1u, global2.x);
    return vec3<u32>(countOneBits(global2.x & global2.x), ~(62304u | (abs(global2.x) << (global2.x % 32u))), global2.x >> (global2.x % 32u));
}

fn func_3(arg_0: i32, arg_1: u32) -> u32 {
    var var_0 = vec4<u32>(global2.x | arg_1, ~(~arg_1), countOneBits(max(_wgslsmith_div_u32(global2.x, arg_1), ~0u) | global2.x), abs(_wgslsmith_clamp_u32(49404u, 27642u, 1u)));
    let var_1 = Struct_4(~min(_wgslsmith_mult_vec3_u32(vec3<u32>(global2.x, var_0.x, 13810u) ^ vec3<u32>(5624u, arg_1, arg_1), ~vec3<u32>(68240u, global2.x, global2.x)), var_0.wzw), u_input.b);
    let var_2 = global1[_wgslsmith_index_u32(~firstLeadingBit(abs(~var_0.x)), 2u)];
    let var_3 = var_1;
    var_0 = countOneBits(min(~min(vec4<u32>(24471u, 1u, var_0.x, var_3.a.x) << (vec4<u32>(4294967295u, 1u, 22631u, 1u) % vec4<u32>(32u)), vec4<u32>(var_3.a.x, 0u, 0u, 20730u) ^ vec4<u32>(1u, var_3.a.x, 53631u, var_3.a.x)), ~max(vec4<u32>(4294967295u, global2.x, var_2.a.x, arg_1) << (vec4<u32>(var_2.a.x, 55456u, 12223u, 75967u) % vec4<u32>(32u)), ~vec4<u32>(var_0.x, var_2.a.x, var_1.a.x, 50834u))));
    return 0u;
}

fn func_1() -> Struct_1 {
    global2 = func_2() << (vec3<u32>(global2.x, countOneBits(_wgslsmith_mult_u32(55365u, global2.x)), ~1u) % vec3<u32>(32u));
    let var_0 = global2.x;
    global2 = _wgslsmith_add_vec3_u32(~_wgslsmith_div_vec3_u32(~vec3<u32>(global2.x, global2.x, global2.x), vec3<u32>(global2.x, 29938u, 1u) | vec3<u32>(global2.x, 4294967295u, global2.x)), vec3<u32>(_wgslsmith_add_u32(func_3(u_input.a.x, 4294967295u), global2.x), 1u, ~0u)) << (vec3<u32>(~func_3(~2147483647i, select(12948u, 11469u, true)), func_2().x, global2.x) % vec3<u32>(32u));
    let var_1 = func_3(~_wgslsmith_mult_i32(u_input.a.x, u_input.b.x), ~min(~(~58188u), _wgslsmith_sub_u32(firstLeadingBit(global2.x), 12683u)));
    global2 = countOneBits(vec3<u32>(0u, func_2().x << (func_2().x % 32u), _wgslsmith_mult_u32(global2.x & 4294967295u, global2.x)) << (vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(45083u, 28254u), global2.x), func_2().x, 22790u) % vec3<u32>(32u)));
    return Struct_1(var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = func_1();
    let var_2 = vec4<f32>(-669f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(409f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, 1164f, true)) + 345f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1113f, -2503f)), -1235f)) * 1125f) - _wgslsmith_f_op_f32(605f + -423f)), -460f);
    let var_3 = Struct_4(~(~(vec3<u32>(4294967295u, 4294967295u, global2.x) ^ vec3<u32>(95012u, var_1.a, var_1.a))), vec2<i32>(~(~(-22660i)), _wgslsmith_add_i32(_wgslsmith_div_i32(reverseBits(u_input.b.x), _wgslsmith_div_i32(-1211i, -21494i)), _wgslsmith_dot_vec3_i32(~u_input.c, -u_input.a.yzx))));
    var var_4 = Struct_1(min(var_3.a.x, var_1.a));
    global0 = (_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.a.zwy, _wgslsmith_mult_vec3_i32(vec3<i32>(1i, -2147483647i, -2147483647i), u_input.a.xww)), -u_input.b.x) ^ -(i32(-1i) * -2147483647i)) >> (abs(_wgslsmith_add_u32(_wgslsmith_div_u32(global2.x, ~1u), _wgslsmith_add_u32(~var_4.a, max(0u, 23140u)))) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xwx, var_2.x, 1000f, _wgslsmith_f_op_vec2_f32(sign(var_2.yy)));
}

