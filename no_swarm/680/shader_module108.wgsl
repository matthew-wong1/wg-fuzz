struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec4<f32>, 23> = array<vec4<f32>, 23>(vec4<f32>(-1000f, 1000f, -982f, 774f), vec4<f32>(-259f, -769f, 965f, -1000f), vec4<f32>(118f, -1000f, 413f, 1521f), vec4<f32>(-390f, 894f, 813f, -446f), vec4<f32>(-1742f, -576f, -628f, -834f), vec4<f32>(340f, 194f, -182f, -513f), vec4<f32>(-221f, 852f, 1000f, 1471f), vec4<f32>(-377f, 815f, -1251f, -205f), vec4<f32>(282f, 1165f, -1124f, 1426f), vec4<f32>(626f, 829f, -124f, -710f), vec4<f32>(-1592f, -764f, 1048f, 211f), vec4<f32>(-358f, 1031f, 950f, -473f), vec4<f32>(1992f, 1000f, -576f, 1306f), vec4<f32>(-760f, -1091f, 1568f, -866f), vec4<f32>(-289f, -232f, 1217f, 1106f), vec4<f32>(499f, 1870f, 1981f, 964f), vec4<f32>(-1355f, -833f, 989f, 749f), vec4<f32>(1050f, -198f, -1009f, -617f), vec4<f32>(-1073f, -1000f, -311f, -1236f), vec4<f32>(441f, -1071f, -258f, -146f), vec4<f32>(-1041f, -1092f, -455f, -1257f), vec4<f32>(-1000f, -1135f, 941f, 189f), vec4<f32>(-1952f, 275f, 1461f, 1091f));

var<private> global2: Struct_3;

var<private> global3: array<Struct_3, 25>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: Struct_3) -> vec2<bool> {
    return !(!(!select(!vec2<bool>(true, arg_0.a.x), vec2<bool>(global0.d.c.x, false), arg_0.c.x | global2.b)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, _wgslsmith_add_i32(-u_input.b.x, -1i)), ~_wgslsmith_sub_vec2_i32(~u_input.b.xy, -vec2<i32>(-67370i, global0.d.b))), _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(-132i, arg_1.b) | select(vec2<i32>(47591i, arg_0.d.b), vec2<i32>(arg_1.b, 1i), arg_1.a.zx)));
    var var_1 = u_input.a;
    let var_2 = u_input.b.x;
    var_1 = u_input.a;
    global2 = arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

fn func_1() -> Struct_4 {
    global1 = array<vec4<f32>, 23>();
    var var_0 = func_2(Struct_1(!select(global2.a, global2.d.a, !global2.d.c.x), u_input.b.x, vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(883f, -1520f, 1300f))) - vec3<f32>(-472f, 1000f, -651f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1280f, 746f, -804f), vec3<f32>(-703f, -1059f, -577f)))))))), u_input.a, Struct_3(!global0.d.a, true, global2.c, global0.d));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(548f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global3[_wgslsmith_index_u32(global0.c, 25u)], Struct_1(vec3<bool>(false, true, global2.a.x), 0i, global2.a.yy)))))) + 1f);
    global0 = global3[_wgslsmith_index_u32(~(abs(24807u) << (~(~0u) % 32u)), 25u)];
    var_1 = _wgslsmith_f_op_f32(1354f * _wgslsmith_f_op_f32(ceil(1f)));
    return Struct_4(global0.d.b, select(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 0u, 30380u) & vec3<u32>(global0.c, 26947u, global0.c), vec3<u32>(global2.c, global0.c, 41822u) ^ vec3<u32>(global0.c, 82297u, 0u)), vec3<u32>(1u & global2.c, max(39602u, global0.c), ~global2.c)), max(~(vec3<u32>(4294967295u, global0.c, 1u) & vec3<u32>(global2.c, global0.c, global2.c)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, global0.c, 0u), ~vec3<u32>(global0.c, 4878u, global2.c))), vec3<bool>(true, global0.d.a.x, global2.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~(~(func_1().b.x & ~4294967295u)), _wgslsmith_dot_vec2_i32(vec2<i32>(-global2.d.b, global2.d.b) ^ u_input.b.xz, select(vec2<i32>(-2147483647i, 20424i) & countOneBits(u_input.b.zz), ~_wgslsmith_mod_vec2_i32(u_input.a.yw, u_input.a.wy), !all(vec2<bool>(global2.b, false)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1007f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-617f - -117f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(151f)) * _wgslsmith_f_op_f32(max(1041f, -1002f))), -138f) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(var_0.b.x, 23u)]) * vec4<f32>(735f, -119f, -862f, 1561f))))));
}

