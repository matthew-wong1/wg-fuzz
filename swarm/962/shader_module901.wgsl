struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec4<f32>(1122f, -403f, -718f, 1000f), 33506u), Struct_1(vec4<f32>(-137f, 404f, 1959f, 139f), 67078u), Struct_1(vec4<f32>(1696f, 1252f, 915f, 1453f), 4294967295u), Struct_1(vec4<f32>(156f, -681f, -601f, -215f), 12220u), Struct_1(vec4<f32>(-1000f, -1064f, 1658f, 1012f), 27331u), Struct_1(vec4<f32>(-1581f, 780f, 280f, -316f), 4294967295u), Struct_1(vec4<f32>(1170f, -2903f, 976f, -1003f), 35381u), Struct_1(vec4<f32>(1137f, -1190f, 1250f, -879f), 4294967295u), Struct_1(vec4<f32>(1038f, 450f, -1000f, 1412f), 17036u), Struct_1(vec4<f32>(1000f, -1054f, -1620f, 190f), 0u), Struct_1(vec4<f32>(230f, -275f, -264f, -2172f), 58436u), Struct_1(vec4<f32>(1593f, 293f, -1000f, -751f), 0u), Struct_1(vec4<f32>(-271f, -1279f, -463f, -922f), 31583u), Struct_1(vec4<f32>(-854f, -528f, -964f, 1852f), 29312u), Struct_1(vec4<f32>(320f, -1591f, -624f, 602f), 42838u), Struct_1(vec4<f32>(201f, 337f, 1025f, -1094f), 4294967295u), Struct_1(vec4<f32>(-1306f, -248f, -693f, -1257f), 4294967295u), Struct_1(vec4<f32>(782f, -819f, -1750f, -311f), 1u), Struct_1(vec4<f32>(924f, 1735f, 1488f, -293f), 0u), Struct_1(vec4<f32>(200f, 1082f, -1179f, -433f), 1u), Struct_1(vec4<f32>(516f, -1000f, 113f, 627f), 13690u));

var<private> global1: array<i32, 13> = array<i32, 13>(2147483647i, -9900i, -31555i, 2147483647i, 2147483647i, -37713i, 58334i, 22963i, 1i, -64940i, -38254i, 2147483647i, -1i);

var<private> global2: bool = true;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(4294967295u, 21u)];
    global0 = array<Struct_1, 21>();
    var var_1 = vec4<u32>(0u, var_0.b, max(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.b, 56514u), vec2<u32>(var_0.b, var_0.b)), ~vec2<u32>(13613u, 20059u)), 4294967295u) << (var_0.b % 32u), 17520u);
    var_1 = ~(~vec4<u32>(~(~4294967295u), ~(~var_1.x), ~1u, _wgslsmith_sub_u32(65427u, 7971u)));
    global0 = array<Struct_1, 21>();
    return var_1.x;
}

fn func_2() -> f32 {
    global0 = array<Struct_1, 21>();
    let var_0 = _wgslsmith_div_f32(-304f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(836f, _wgslsmith_f_op_f32(f32(-1f) * -1414f))), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -907f) - _wgslsmith_f_op_f32(round(-980f)))))));
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(firstTrailingBit(~func_3()), 21u)], Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-799f, var_0, var_0, 972f)))), vec4<f32>(var_0, _wgslsmith_f_op_f32(270f - var_0), var_0, var_0), true)), 17174u), firstTrailingBit(-u_input.a.yz), global1[_wgslsmith_index_u32(~(~(~1u)), 13u)]);
    let var_2 = min(abs(u_input.a), ~vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.a, min(vec4<i32>(-25043i, u_input.a.x, 1i, u_input.a.x), vec4<i32>(1i, global1[_wgslsmith_index_u32(var_1.b.b, 13u)], var_1.d, -1i))), 0i, -abs(u_input.a.x), global1[_wgslsmith_index_u32(4294967295u & _wgslsmith_mod_u32(var_1.b.b, 1u), 13u)]));
    global2 = any(!vec3<bool>(false, true, all(vec2<bool>(false, true)))) | !all(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true)));
    return -318f;
}

fn func_1() -> StorageBuffer {
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(trunc(1512f)), _wgslsmith_f_op_f32(trunc(-2182f))))) - vec2<f32>(316f, _wgslsmith_f_op_f32(func_2()))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1432f, var_1.x, -639f, -1252f))))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1000f, -579f))), -632f, var_1.x, var_1.x))));
    global2 = false;
    global1 = array<i32, 13>();
    return StorageBuffer(var_2.x, 48549u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 13>();
    let x = u_input.a;
    s_output = func_1();
}

