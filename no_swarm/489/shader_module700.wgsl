struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7>;

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec2<f32>(-188f, 2547f)), Struct_1(vec2<f32>(-1000f, 1162f)), Struct_1(vec2<f32>(-256f, -1509f)), Struct_1(vec2<f32>(-1698f, -774f)), Struct_1(vec2<f32>(2144f, -1000f)), Struct_1(vec2<f32>(-389f, 415f)), Struct_1(vec2<f32>(-827f, 1755f)), Struct_1(vec2<f32>(1000f, 623f)), Struct_1(vec2<f32>(220f, -681f)), Struct_1(vec2<f32>(-793f, 145f)), Struct_1(vec2<f32>(-769f, -184f)), Struct_1(vec2<f32>(381f, 1320f)), Struct_1(vec2<f32>(754f, -113f)), Struct_1(vec2<f32>(347f, -461f)), Struct_1(vec2<f32>(-1079f, 746f)), Struct_1(vec2<f32>(1197f, -1346f)), Struct_1(vec2<f32>(603f, 806f)));

var<private> global2: vec3<i32> = vec3<i32>(0i, 1i, i32(-2147483648));

var<private> global3: array<vec4<u32>, 23>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: f32) -> f32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(arg_2)), arg_2))), select(vec3<bool>(arg_1.x, true, any(vec2<bool>(true, arg_1.x))), arg_1, !all(!vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x))));
    var var_1 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1927f, var_0.a.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-424f, -1053f)), !var_0.b.x))), var_0.b), u_input.c, ~vec2<u32>(_wgslsmith_sub_u32(firstTrailingBit(u_input.c), u_input.c), 1u));
    global0 = array<Struct_3, 7>();
    global2 = -vec3<i32>(global2.x, -1i, firstLeadingBit(_wgslsmith_mult_i32(-1431i, arg_0)));
    global2 = vec3<i32>(i32(-1i) * -55284i, -17308i, 1i);
    return var_0.a.a.x;
}

fn func_2() -> f32 {
    let var_0 = global2.xx;
    var var_1 = i32(-1i) * -1i;
    let var_2 = _wgslsmith_sub_vec3_i32(max(vec3<i32>(-1i) * -(~vec3<i32>(-20615i, u_input.b.x, global2.x)), -select(vec3<i32>(-28636i, 2147483647i, -83968i) ^ vec3<i32>(var_0.x, -1i, var_0.x), vec3<i32>(global2.x, -1i, 0i) ^ vec3<i32>(-2147483647i, 0i, global2.x), true)), ~(-(vec3<i32>(-1i) * -vec3<i32>(1i, u_input.b.x, var_0.x))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -464f) + -637f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~(~19824i), vec3<bool>(true, true, select(false, true, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-181f + 263f))))), 668f);
    return var_3.x;
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3, arg_3: bool) -> bool {
    let var_0 = global2.x;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(f32(-1f) * -845f));
    let var_2 = Struct_2(global1[_wgslsmith_index_u32(arg_0.a.x >> (0u % 32u), 17u)], !vec3<bool>(false, !all(vec3<bool>(arg_3, arg_1, false)), !(arg_1 || true)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true || (select(true, func_1(global0[_wgslsmith_index_u32(u_input.c, 7u)], true, Struct_3(vec3<u32>(u_input.c, 537u, 0u)), true), true) & true), false, true, u_input.c >= 81981u);
    let var_1 = Struct_4(Struct_2(global1[_wgslsmith_index_u32(firstTrailingBit(u_input.c), 17u)], var_0.zzw), 90899u, ~vec2<u32>(~(~4294967295u), firstLeadingBit(~4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(-26983i, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(-4253i, -3322i), abs(-45245i), 25491i >> (1u % 32u), u_input.b.x & -1i), select(vec4<i32>(13845i, global2.x, -1i, u_input.a), -vec4<i32>(0i, u_input.a, u_input.a, 2147483647i), var_1.a.b.x))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a.a.a.x, var_1.a.a.a.x, -988f, -671f), vec4<f32>(965f, -165f, var_1.a.a.a.x, var_1.a.a.a.x), all(var_1.a.b.xz))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-707f, var_1.a.a.a.x, 151f, var_1.a.a.a.x)), vec4<f32>(var_1.a.a.a.x, -902f, var_1.a.a.a.x, var_1.a.a.a.x)))))));
}

