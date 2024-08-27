struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 27249u;

var<private> global1: array<vec4<f32>, 14>;

var<private> global2: bool = true;

var<private> global3: array<vec3<u32>, 18>;

var<private> global4: array<Struct_2, 14>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: Struct_4) -> f32 {
    global3 = array<vec3<u32>, 18>();
    return arg_1.b.b.x;
}

fn func_2(arg_0: vec2<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(func_3(_wgslsmith_mod_i32(~u_input.c, max(firstLeadingBit(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), reverseBits(~(-1i)))), Struct_4(u_input.a.yy | firstTrailingBit(~u_input.a.xx), Struct_1(firstLeadingBit(vec4<u32>(u_input.b, u_input.b, 100213u, u_input.b)) ^ select(vec4<u32>(u_input.b, u_input.b, 0u, u_input.b), vec4<u32>(u_input.b, 1u, u_input.b, u_input.b), false), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1184f, arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, arg_0.x, arg_0.x, 1719f)))), u_input.c, u_input.c))));
    var var_1 = !(!(!vec3<bool>(all(vec4<bool>(true, true, true, false)), true, -1000f < arg_0.x)));
    global2 = any(select(!(!select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(false, var_1.x, true), var_1.x)), vec3<bool>(select(var_1.x, true, all(vec3<bool>(var_1.x, true, var_1.x))), select(var_1.x, var_1.x && true, var_1.x), true), false));
    global2 = any(vec3<bool>(var_1.x, var_1.x, true));
    global1 = array<vec4<f32>, 14>();
    return ~(~abs(reverseBits(50222u) ^ reverseBits(u_input.b)));
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_1) -> bool {
    let var_0 = Struct_5(select(!vec3<bool>(-1i <= u_input.a.x, true, u_input.b > u_input.b), vec3<bool>(true, false, func_2(vec2<f32>(arg_1.x, arg_1.x)) > ~u_input.b), !(!any(vec3<bool>(false, false, false)))));
    var var_1 = Struct_3(Struct_2(var_0.a.zx, firstLeadingBit(vec2<i32>(-24960i, 1i)), vec2<i32>(-1i) * -firstTrailingBit(vec2<i32>(arg_0, -1i)), Struct_1(vec4<u32>(select(48526u, 1u, false), 1u, arg_2.a.x, _wgslsmith_sub_u32(0u, 0u)), global1[_wgslsmith_index_u32(1u, 14u)], -58095i, arg_0)), vec4<i32>(u_input.a.x ^ 0i, _wgslsmith_dot_vec3_i32(~u_input.a.wyx, _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0, arg_0, -1i) << (vec3<u32>(arg_2.a.x, 1u, 1u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0, arg_0, arg_2.d), u_input.a.xyy))), ~(i32(-1i) * -u_input.a.x), ~(1i | u_input.a.x)), global4[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, _wgslsmith_add_u32(1u, 2413u)), 14u)]);
    let var_2 = ~(~(~(arg_2.a.yz << (~var_1.c.d.a.yw % vec2<u32>(32u)))));
    var var_3 = ~_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, var_1.c.d.c, arg_2.d, ~var_1.a.d.d), abs(vec4<i32>(i32(-1i) * -39539i, ~(-19345i), _wgslsmith_mult_i32(var_1.b.x, arg_0), u_input.c)));
    var var_4 = Struct_4(abs(vec2<i32>(abs(0i), select(arg_0, u_input.c, var_0.a.x))), Struct_1(~var_1.c.d.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2086f, arg_2.b.x, 1378f, 1407f) - _wgslsmith_f_op_vec4_f32(-arg_2.b))), min(var_1.a.c.x, -(var_3.x & var_3.x)), ~var_1.b.x));
    return !var_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-157f, 334f))), 447f)), Struct_1(vec4<u32>(u_input.b, ~u_input.b, ~firstTrailingBit(53330u), _wgslsmith_div_u32(u_input.b, 83545u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), ~37700i, u_input.a.x));
    let var_1 = 1084f;
    let var_2 = 83503u;
    var var_3 = var_1;
    global0 = 0u;
    var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1 - var_1))) + var_1)));
}

