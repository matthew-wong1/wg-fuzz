struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: f32,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: f32;

var<private> global2: i32;

var<private> global3: vec3<bool> = vec3<bool>(true, true, false);

var<private> global4: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(vec3<i32>(15101i, 56675i, 22683i)), Struct_2(vec3<i32>(57228i, 32640i, 2147483647i)), Struct_2(vec3<i32>(i32(-2147483648), 36335i, 1i)), Struct_2(vec3<i32>(2147483647i, -11095i, 39331i)), Struct_2(vec3<i32>(6810i, 1i, 66821i)), Struct_2(vec3<i32>(0i, -13032i, -1i)), Struct_2(vec3<i32>(1i, 1i, i32(-2147483648))), Struct_2(vec3<i32>(47818i, 1i, -11115i)), Struct_2(vec3<i32>(1i, 0i, 0i)), Struct_2(vec3<i32>(67115i, i32(-2147483648), 2147483647i)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> vec4<u32> {
    return ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 14334u, u_input.c, ~1u), ~arg_0.e);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<i32>) -> vec4<i32> {
    global0 = any(select(!select(vec2<bool>(global3.x, global3.x), global3.xx, true), !vec2<bool>(true, !global3.x), !vec2<bool>(!global3.x, -1i <= arg_1.x)));
    global4 = array<Struct_2, 10>();
    global2 = ~(-u_input.b | arg_1.x);
    var var_0 = Struct_2(countOneBits(-(vec3<i32>(-1i) * -vec3<i32>(-14586i, arg_1.x, -1i))));
    let var_1 = (arg_1 >> (firstTrailingBit(vec4<u32>(~1u, 1u ^ u_input.c, ~1437u, select(u_input.c, 1u, global3.x))) % vec4<u32>(32u))) >> ((_wgslsmith_div_vec4_u32(func_3(Struct_1(vec2<u32>(31416u, 0u), vec3<f32>(1656f, -927f, arg_0.x), 404f, global3.x, vec4<u32>(64346u, u_input.c, u_input.c, u_input.c)), _wgslsmith_f_op_f32(359f - 188f), !global3.x), ~(~vec4<u32>(13200u, u_input.c, u_input.c, 29320u))) ^ min(_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(1u, 4294967295u, u_input.c, u_input.c)), max(vec4<u32>(u_input.c, u_input.c, 0u, 4294967295u), vec4<u32>(12375u, u_input.c, 0u, 1u))), vec4<u32>(1u, u_input.c, firstLeadingBit(0u), 7987u))) % vec4<u32>(32u));
    return ~_wgslsmith_add_vec4_i32(countOneBits(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, -1i, var_1.x, var_1.x), arg_1)), var_1 | vec4<i32>(var_0.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-41873i, -2147483647i), u_input.a), select(2147483647i, var_0.a.x, global3.x), arg_1.x));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec3<f32>) -> vec3<u32> {
    let var_0 = func_2(_wgslsmith_div_vec2_f32(arg_1.b.zz, arg_1.b.zx), vec4<i32>(~(u_input.b | u_input.a.x) ^ ~1i, _wgslsmith_sub_i32(-15090i, u_input.a.x), ~(_wgslsmith_sub_i32(u_input.a.x, -2147483647i) ^ u_input.b), -reverseBits(u_input.a.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -317f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1522f)), -498f))), -1263f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(arg_3.x)), _wgslsmith_f_op_f32(-arg_1.b.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(102f)) - 1901f))));
    global2 = -8519i;
    var var_2 = max(firstLeadingBit(2147483647i), 32950i);
    let var_3 = Struct_1(~arg_1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(arg_1.b)), _wgslsmith_f_op_vec3_f32(arg_1.b * vec3<f32>(792f, var_1.x, arg_1.c))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-504f + 1776f) + _wgslsmith_f_op_f32(-arg_3.x))), _wgslsmith_div_f32(1430f, 1516f)), !(!select(global3.x, arg_1.d, arg_1.d)), reverseBits(~(~(~vec4<u32>(arg_2.x, u_input.c, arg_0, 4294967295u)))));
    return min(~_wgslsmith_add_vec3_u32(vec3<u32>(~arg_1.a.x, 22833u, select(0u, 58109u, true)), vec3<u32>(0u, arg_0, ~0u)), _wgslsmith_div_vec3_u32(vec3<u32>(countOneBits(u_input.c), 1u, min(102971u, ~u_input.c)), abs(arg_2.yyz)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(695f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(721f - _wgslsmith_f_op_f32(select(1699f, -1124f, true))))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -368f)), _wgslsmith_f_op_f32(f32(-1f) * -1146f)), 1000f)));
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -658f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -566f)) * -1427f) + -450f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -573f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-419f - 1006f) + -1068f)))));
    var var_1 = var_0.x;
    var var_2 = vec2<u32>(~(~reverseBits(u_input.c)), u_input.c);
    var_1 = 850f;
    var_1 = _wgslsmith_f_op_f32(-1149f + _wgslsmith_f_op_f32(-1293f - var_0.x));
    global2 = -24167i;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec4<u32>(var_2.x, 4294967295u, reverseBits(var_2.x), 1u) & reverseBits(~vec4<u32>(4294967295u, var_2.x, 0u, u_input.c))), u_input.a, abs(~_wgslsmith_dot_vec3_u32(func_1(0u, Struct_1(vec2<u32>(0u, var_2.x), vec3<f32>(694f, var_0.x, -245f), 2047f, true, vec4<u32>(var_2.x, 0u, u_input.c, 14464u)), vec4<u32>(u_input.c, var_2.x, var_2.x, var_2.x), vec3<f32>(var_0.x, var_0.x, 584f)), vec3<u32>(var_2.x, var_2.x, 1u) << (vec3<u32>(var_2.x, 4294967295u, u_input.c) % vec3<u32>(32u)))));
}

