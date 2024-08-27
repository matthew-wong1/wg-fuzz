struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 5>;

var<private> global1: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(vec4<i32>(-1i, -52103i, 0i, -31173i), vec4<f32>(-1246f, 1053f, -827f, 453f), 18493u, Struct_1(vec2<i32>(-16325i, 0i), vec3<u32>(29391u, 0u, 1u), false, false)), Struct_2(vec4<i32>(1i, -1i, 2147483647i, i32(-2147483648)), vec4<f32>(1000f, -110f, -1212f, -1209f), 1u, Struct_1(vec2<i32>(-34037i, -4501i), vec3<u32>(24029u, 26005u, 4294967295u), true, false)));

var<private> global2: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_4) -> vec3<bool> {
    return !vec3<bool>(all(vec3<bool>(!arg_1.b.d.d, true, any(vec4<bool>(global2.d, true, arg_1.e.d.d, true)))), global2.c, all(vec2<bool>(true, true)));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = global2.a.x;
    global2 = Struct_1(countOneBits(vec2<i32>(u_input.a, u_input.a & -2147483647i)), select(vec3<u32>(global2.b.x, _wgslsmith_dot_vec2_u32(global2.b.xx, global2.b.yz) | ~u_input.b.x, reverseBits(_wgslsmith_dot_vec3_u32(global2.b, arg_0.d.b))), arg_0.d.b, select(func_3(vec2<i32>(12432i, -62098i), Struct_4(-1i, global1[_wgslsmith_index_u32(1u, 2u)], arg_0.d, 188f, global1[_wgslsmith_index_u32(arg_0.d.b.x, 2u)])), !(!vec3<bool>(false, arg_0.d.c, global2.d)), false)), !(global2.b.x < ~(~0u)), ~_wgslsmith_add_i32(_wgslsmith_add_i32(1i, -34323i), max(global2.a.x, u_input.a)) >= u_input.a);
    var var_1 = countOneBits(arg_0.a);
    var var_2 = arg_0.a;
    var var_3 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), arg_0.b.x), arg_0.b.yz));
    return Struct_1(-_wgslsmith_add_vec2_i32(var_1.ww, arg_0.a.wx), arg_0.d.b, all(!func_3(vec2<i32>(global2.a.x, var_2.x), Struct_4(-20817i, global1[_wgslsmith_index_u32(1u, 2u)], arg_0.d, var_3.x, Struct_2(arg_0.a, arg_0.b, arg_0.d.b.x, Struct_1(vec2<i32>(var_2.x, 2147483647i), global2.b, global2.d, true))))), true);
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(351f, -692f, 418f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(929f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -214f) - _wgslsmith_f_op_f32(f32(-1f) * -2823f)), 760f)));
    return func_2(global1[_wgslsmith_index_u32(~(min(u_input.b.x, ~u_input.b.x) ^ reverseBits(abs(u_input.b.x))), 2u)]);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_4(u_input.a, global1[_wgslsmith_index_u32(func_1().b.x, 2u)], arg_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-674f + 2356f))), _wgslsmith_div_f32(1140f, -672f))), global1[_wgslsmith_index_u32(func_2(Struct_2(select(abs(vec4<i32>(u_input.a, -1i, arg_0.a.x, arg_0.a.x)), _wgslsmith_div_vec4_i32(vec4<i32>(25673i, arg_0.a.x, 1i, global2.a.x), vec4<i32>(1i, u_input.a, 1i, arg_0.a.x)), vec4<bool>(false, false, true, false)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2047f, -1072f, 1000f, -1052f), vec4<f32>(-212f, -1201f, -714f, -703f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -1000f, 1000f, -460f), vec4<f32>(110f, 505f, 402f, -454f), global2.d)))), ~104397u, func_1())).b.x, 2u)]);
    global0 = array<vec4<u32>, 5>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(func_1());
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(270f)))), _wgslsmith_f_op_f32(f32(-1f) * -196f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1174f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(859f + -144f))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1062f, -1000f, -1000f, _wgslsmith_f_op_f32(1333f - -373f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(549f, -579f, -1240f, -160f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(125f, -352f, -1077f, 1081f)))), global2.c))));
    var var_1 = func_4(Struct_1(global2.a, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, ~1410u, _wgslsmith_dot_vec3_u32(vec3<u32>(36589u, 1u, u_input.b.x), global2.b)), ~(global2.b | vec3<u32>(29770u, u_input.b.x, 0u))), any(vec3<bool>(true, global2.d, true & global2.d)), true)).a.x;
    var_1 = _wgslsmith_add_i32(42032i, -(firstLeadingBit(u_input.a) | 1i));
    let x = u_input.a;
    s_output = StorageBuffer(-abs(select(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, global2.a.x, -46584i), vec3<i32>(-39755i, u_input.a, 2147483647i)), select(vec3<i32>(-1i, global2.a.x, u_input.a), vec3<i32>(-32135i, u_input.a, global2.a.x), vec3<bool>(false, true, false)), !vec3<bool>(true, global2.c, global2.d))), vec3<u32>(1u, ~(~global2.b.x), ~112915u), firstLeadingBit(vec3<i32>(-(17875i ^ u_input.a), -39773i, 0i)));
}

