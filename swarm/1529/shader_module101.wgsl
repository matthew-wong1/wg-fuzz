struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 28> = array<vec2<f32>, 28>(vec2<f32>(320f, 775f), vec2<f32>(-333f, -1000f), vec2<f32>(531f, 386f), vec2<f32>(-1400f, 1272f), vec2<f32>(2906f, 166f), vec2<f32>(-1000f, -1000f), vec2<f32>(1315f, 1000f), vec2<f32>(299f, 2122f), vec2<f32>(-1095f, 1000f), vec2<f32>(-236f, -1645f), vec2<f32>(923f, 1461f), vec2<f32>(-1652f, -296f), vec2<f32>(661f, -494f), vec2<f32>(975f, -1114f), vec2<f32>(-271f, -1281f), vec2<f32>(500f, -437f), vec2<f32>(-263f, 1176f), vec2<f32>(-193f, -724f), vec2<f32>(-1604f, -116f), vec2<f32>(1144f, 1456f), vec2<f32>(348f, 379f), vec2<f32>(399f, 275f), vec2<f32>(348f, 445f), vec2<f32>(371f, 249f), vec2<f32>(-1216f, 933f), vec2<f32>(-1040f, -1022f), vec2<f32>(2150f, 1122f), vec2<f32>(-1099f, 281f));

var<private> global1: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: bool) -> f32 {
    let var_0 = ~u_input.c.x;
    let var_1 = Struct_1(true, global1.b);
    var var_2 = _wgslsmith_add_i32(_wgslsmith_div_i32(-2147483647i, 9405i), max(countOneBits(-2147483647i), 25678i));
    let var_3 = !global1.a;
    var var_4 = !(!select(select(arg_0, !vec2<bool>(var_3, global1.a), any(vec4<bool>(var_1.a, global1.a, arg_0.x, global1.a))), arg_0, arg_2));
    return -272f;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2409f, -404f))));
    var var_1 = ~_wgslsmith_div_u32(~u_input.b, u_input.c.x);
    var var_2 = Struct_1(any(vec4<bool>(global1.a, true, !global1.a, !all(vec4<bool>(false, global1.a, global1.a, global1.a)))), global1.b);
    var var_3 = Struct_1(global1.a, _wgslsmith_f_op_vec3_f32(global1.b * vec3<f32>(_wgslsmith_f_op_f32(step(var_2.b.x, _wgslsmith_f_op_f32(func_3(vec2<bool>(false, global1.a), vec3<u32>(32887u, u_input.b, u_input.c.x), var_2.a)))), 792f, _wgslsmith_div_f32(_wgslsmith_div_f32(-797f, var_2.b.x), _wgslsmith_f_op_f32(f32(-1f) * -765f)))));
    var var_4 = -1i;
    return Struct_1(!(!(any(vec2<bool>(true, true)) & true)), vec3<f32>(-1176f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, -622f))), -100f));
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = 315f;
    global1 = func_2();
    var var_1 = select(!vec4<bool>(select(true, true, select(false, arg_2.a, true)), all(vec4<bool>(true, false, arg_2.a, true)), ~1u <= u_input.c.x, !(!arg_2.a)), select(select(select(!vec4<bool>(global1.a, true, true, false), select(vec4<bool>(false, arg_2.a, global1.a, global1.a), vec4<bool>(true, true, true, global1.a), vec4<bool>(global1.a, arg_2.a, global1.a, global1.a)), select(vec4<bool>(global1.a, arg_2.a, global1.a, global1.a), vec4<bool>(arg_2.a, true, arg_2.a, global1.a), vec4<bool>(true, arg_2.a, true, global1.a))), !(!vec4<bool>(arg_2.a, global1.a, global1.a, global1.a)), select(vec4<bool>(false, false, true, global1.a), select(vec4<bool>(arg_2.a, false, true, arg_2.a), vec4<bool>(true, true, false, global1.a), arg_2.a), vec4<bool>(true, false, global1.a, global1.a))), vec4<bool>(arg_2.a, global1.a, false, global1.a), all(vec4<bool>(true, arg_2.a, arg_2.a, global1.a)) & global1.a), 4294967295u > reverseBits(abs(reverseBits(u_input.b))));
    let var_2 = func_2();
    var var_3 = ~_wgslsmith_sub_vec3_i32(~vec3<i32>(~11639i, arg_1, ~u_input.a.x), u_input.a);
    return func_2();
}

fn func_4(arg_0: Struct_1) -> StorageBuffer {
    let var_0 = Struct_1(global1.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1292f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.b.x, arg_0.b.x)) - _wgslsmith_f_op_f32(exp2(arg_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<bool>(true, arg_0.a), vec3<u32>(133582u, 0u, 66821u), true))))));
    let var_1 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1452f, var_0.b.x, 546f, 146f)), vec4<f32>(1623f, _wgslsmith_div_f32(arg_0.b.x, var_0.b.x), _wgslsmith_f_op_f32(round(var_0.b.x)), _wgslsmith_f_op_f32(min(440f, var_0.b.x))))), abs(u_input.a.x), Struct_1(global1.a, vec3<f32>(_wgslsmith_f_op_f32(arg_0.b.x + 1f), _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -932f), _wgslsmith_f_op_f32(min(1282f, 1000f))))));
    let var_2 = select(select(!(!vec3<bool>(var_1.a, true, true)), vec3<bool>(!var_1.a, var_1.a, global1.a), !(!(!global1.a))), vec3<bool>(false, arg_0.a, true), _wgslsmith_f_op_f32(min(-1309f, 624f)) < var_1.b.x);
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(850f * _wgslsmith_f_op_f32(func_1(vec4<f32>(1511f, 1544f, global1.b.x, var_1.b.x), 17969i, var_0).b.x - -1956f)) * 873f), -269f);
    let var_4 = func_2();
    return StorageBuffer(_wgslsmith_f_op_f32(-1000f + -268f), var_1.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 28>();
    let x = u_input.a;
    s_output = func_4(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, global1.b.x, -1453f, -558f), vec4<f32>(global1.b.x, global1.b.x, global1.b.x, global1.b.x))))), _wgslsmith_sub_i32(~(-25832i), u_input.a.x) ^ (-8444i << (u_input.d % 32u)), Struct_1(any(!vec4<bool>(false, false, global1.a, global1.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1000f, -467f, global1.b.x))) * global1.b))));
}

