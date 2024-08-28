struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec2<bool>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: Struct_1 = Struct_1(vec2<i32>(2147483647i, -49098i), -1166f, vec2<bool>(false, true), vec3<bool>(false, true, true));

var<private> global2: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec2<i32>(-22239i, -43771i), 1533f, vec2<bool>(false, false), vec3<bool>(true, false, true)), Struct_1(vec2<i32>(25948i, -36397i), 473f, vec2<bool>(false, false), vec3<bool>(false, true, true)), Struct_1(vec2<i32>(15708i, i32(-2147483648)), 1169f, vec2<bool>(true, true), vec3<bool>(false, true, false)), Struct_1(vec2<i32>(1i, i32(-2147483648)), -742f, vec2<bool>(true, true), vec3<bool>(true, true, false)), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), 245f, vec2<bool>(true, false), vec3<bool>(true, true, false)), Struct_1(vec2<i32>(52507i, 51995i), 422f, vec2<bool>(false, false), vec3<bool>(false, true, true)), Struct_1(vec2<i32>(2529i, 18784i), 1016f, vec2<bool>(false, true), vec3<bool>(false, true, false)), Struct_1(vec2<i32>(19439i, 2147483647i), 911f, vec2<bool>(true, true), vec3<bool>(false, true, true)), Struct_1(vec2<i32>(95517i, 10917i), 1467f, vec2<bool>(false, false), vec3<bool>(false, true, true)), Struct_1(vec2<i32>(2147483647i, 46719i), -271f, vec2<bool>(false, false), vec3<bool>(true, false, true)), Struct_1(vec2<i32>(-1i, 1i), -1652f, vec2<bool>(false, false), vec3<bool>(false, false, true)), Struct_1(vec2<i32>(-1i, 1i), -1275f, vec2<bool>(true, true), vec3<bool>(true, true, true)), Struct_1(vec2<i32>(-1i, -79303i), -626f, vec2<bool>(true, false), vec3<bool>(true, true, false)), Struct_1(vec2<i32>(16932i, i32(-2147483648)), -159f, vec2<bool>(true, false), vec3<bool>(false, false, true)), Struct_1(vec2<i32>(1i, 1i), -480f, vec2<bool>(true, true), vec3<bool>(true, true, true)), Struct_1(vec2<i32>(i32(-2147483648), 0i), -286f, vec2<bool>(false, true), vec3<bool>(true, false, false)), Struct_1(vec2<i32>(-9015i, -26679i), -666f, vec2<bool>(false, false), vec3<bool>(false, false, false)), Struct_1(vec2<i32>(35184i, -52650i), -1000f, vec2<bool>(true, true), vec3<bool>(true, false, true)), Struct_1(vec2<i32>(58691i, i32(-2147483648)), -647f, vec2<bool>(true, false), vec3<bool>(true, true, false)), Struct_1(vec2<i32>(8361i, 1i), 660f, vec2<bool>(true, false), vec3<bool>(false, false, true)), Struct_1(vec2<i32>(4477i, -1i), -2004f, vec2<bool>(false, false), vec3<bool>(false, false, false)), Struct_1(vec2<i32>(i32(-2147483648), -21627i), -355f, vec2<bool>(true, false), vec3<bool>(true, false, true)), Struct_1(vec2<i32>(-1i, 3056i), -1541f, vec2<bool>(false, false), vec3<bool>(false, true, false)), Struct_1(vec2<i32>(3595i, -17520i), -337f, vec2<bool>(true, true), vec3<bool>(false, true, false)), Struct_1(vec2<i32>(-56020i, -6432i), -415f, vec2<bool>(false, false), vec3<bool>(false, false, false)), Struct_1(vec2<i32>(-25929i, 0i), -1000f, vec2<bool>(false, true), vec3<bool>(true, true, false)), Struct_1(vec2<i32>(0i, -21185i), -270f, vec2<bool>(true, true), vec3<bool>(false, false, false)), Struct_1(vec2<i32>(61009i, 1i), 230f, vec2<bool>(false, true), vec3<bool>(true, true, false)), Struct_1(vec2<i32>(-43982i, i32(-2147483648)), 849f, vec2<bool>(false, false), vec3<bool>(false, true, false)), Struct_1(vec2<i32>(1i, 9196i), 293f, vec2<bool>(true, true), vec3<bool>(true, false, true)), Struct_1(vec2<i32>(62445i, 35166i), 1471f, vec2<bool>(false, false), vec3<bool>(true, true, false)));

var<private> global3: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec2<i32>(-1i, 0i), -121f, vec2<bool>(true, false), vec3<bool>(true, false, false)), Struct_1(vec2<i32>(16043i, 40642i), -997f, vec2<bool>(true, false), vec3<bool>(true, true, false)), Struct_1(vec2<i32>(0i, -54958i), 287f, vec2<bool>(true, true), vec3<bool>(true, false, false)), Struct_1(vec2<i32>(11743i, -1i), 827f, vec2<bool>(false, true), vec3<bool>(true, true, true)), Struct_1(vec2<i32>(i32(-2147483648), -21626i), 2129f, vec2<bool>(true, false), vec3<bool>(true, false, false)), Struct_1(vec2<i32>(1i, -1i), -472f, vec2<bool>(false, false), vec3<bool>(false, true, true)), Struct_1(vec2<i32>(-24286i, -1i), -925f, vec2<bool>(false, false), vec3<bool>(false, false, false)), Struct_1(vec2<i32>(-1i, -1260i), 223f, vec2<bool>(false, false), vec3<bool>(true, true, true)), Struct_1(vec2<i32>(34115i, -85681i), -1264f, vec2<bool>(true, true), vec3<bool>(true, false, true)), Struct_1(vec2<i32>(-43598i, i32(-2147483648)), -954f, vec2<bool>(false, false), vec3<bool>(true, false, true)), Struct_1(vec2<i32>(i32(-2147483648), 1i), -785f, vec2<bool>(true, true), vec3<bool>(false, false, true)), Struct_1(vec2<i32>(0i, 2147483647i), -1167f, vec2<bool>(true, false), vec3<bool>(true, true, false)), Struct_1(vec2<i32>(-12394i, 1i), 214f, vec2<bool>(false, true), vec3<bool>(false, false, true)), Struct_1(vec2<i32>(16278i, -1i), -939f, vec2<bool>(false, true), vec3<bool>(true, true, false)), Struct_1(vec2<i32>(2147483647i, -16208i), -1490f, vec2<bool>(false, true), vec3<bool>(true, true, true)), Struct_1(vec2<i32>(i32(-2147483648), -62607i), 1356f, vec2<bool>(false, true), vec3<bool>(true, false, false)), Struct_1(vec2<i32>(-16139i, -953i), -179f, vec2<bool>(false, false), vec3<bool>(false, false, false)), Struct_1(vec2<i32>(-7689i, 2147483647i), -1000f, vec2<bool>(false, false), vec3<bool>(false, true, false)), Struct_1(vec2<i32>(1357i, -43510i), -472f, vec2<bool>(true, true), vec3<bool>(false, true, false)), Struct_1(vec2<i32>(42576i, -22381i), -1201f, vec2<bool>(true, false), vec3<bool>(true, false, true)), Struct_1(vec2<i32>(-22412i, -49287i), -533f, vec2<bool>(true, false), vec3<bool>(true, false, true)), Struct_1(vec2<i32>(1651i, -47716i), 1696f, vec2<bool>(false, false), vec3<bool>(true, true, false)), Struct_1(vec2<i32>(-1i, i32(-2147483648)), 1000f, vec2<bool>(true, false), vec3<bool>(false, false, false)), Struct_1(vec2<i32>(2147483647i, -16951i), -1291f, vec2<bool>(false, false), vec3<bool>(true, true, false)), Struct_1(vec2<i32>(-44916i, 2147483647i), -1988f, vec2<bool>(false, true), vec3<bool>(false, false, true)));

var<private> global4: i32 = -16237i;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: i32, arg_3: vec4<f32>) -> f32 {
    global2 = array<Struct_1, 31>();
    let var_0 = Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x >> (1u % 32u)), u_input.a.zx, u_input.a.yx), _wgslsmith_f_op_f32(-global1.b), !(!global1.c), global1.d);
    global3 = array<Struct_1, 25>();
    var var_1 = firstLeadingBit(vec3<i32>(2147483647i, abs(-_wgslsmith_mult_i32(-45798i, arg_2)), arg_0.a.x));
    var_1 = u_input.a;
    return _wgslsmith_f_op_f32(-arg_3.x);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    global4 = ~(~(~(~arg_0.a.x) & max(arg_1.a.x, 0i)));
    let var_0 = ~_wgslsmith_mult_u32(u_input.c, ~u_input.c);
    global2 = array<Struct_1, 31>();
    global2 = array<Struct_1, 31>();
    let var_1 = arg_1.d.x;
    return !vec3<bool>(true, !(!arg_1.d.x), u_input.d == u_input.c);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: f32, arg_3: vec4<f32>) -> bool {
    var var_0 = global3[_wgslsmith_index_u32(0u << (u_input.d % 32u), 25u)];
    var_0 = global2[_wgslsmith_index_u32(u_input.c, 31u)];
    var var_1 = Struct_1(arg_1, _wgslsmith_f_op_f32(-252f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + 831f)))), !var_0.c, select(!vec3<bool>(false, any(vec2<bool>(global1.c.x, global1.c.x)), all(global1.c)), !(!select(var_0.d, vec3<bool>(true, true, var_0.d.x), var_0.d)), select(select(vec3<bool>(var_0.c.x, var_0.c.x, false), vec3<bool>(global1.c.x, true, true), vec3<bool>(true, var_0.d.x, false)), func_3(global3[_wgslsmith_index_u32(~1u, 25u)], Struct_1(u_input.a.zz, -1043f, vec2<bool>(true, false), var_0.d)), vec3<bool>(true, true, true))));
    let var_2 = global3[_wgslsmith_index_u32(u_input.c, 25u)];
    let var_3 = ~(-(vec2<i32>(-1i) * -(var_0.a ^ arg_1)));
    return var_2.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(!select(false, global1.d.x, global1.d.x) & func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-771f, 1000f) * vec2<f32>(global1.b, 1151f)), select(global1.a, vec2<i32>(u_input.a.x, 2147483647i), global1.c.x), _wgslsmith_f_op_f32(func_1(global3[_wgslsmith_index_u32(31546u, 25u)], 361f, 33482i, vec4<f32>(-1253f, global1.b, 728f, -569f))), vec4<f32>(769f, 327f, 1396f, -2376f)), select(true || (false || global1.c.x), (global1.c.x & global1.c.x) || global1.c.x, true), false);
    global4 = max(26096i, 39727i);
    var var_1 = Struct_1(_wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(29325i ^ u_input.b, -2147483647i ^ global1.a.x)), ~countOneBits(global1.a), u_input.a.xx & abs(~u_input.a.xy)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) + _wgslsmith_f_op_f32(1000f - global1.b)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global1.b)), _wgslsmith_f_op_f32(f32(-1f) * -476f), global1.c.x)))), _wgslsmith_f_op_f32(trunc(-1574f))), select(!(!var_0.yy), vec2<bool>(var_0.x, false), !global1.c), !vec3<bool>(var_0.x, all(vec2<bool>(var_0.x, true)), func_3(Struct_1(vec2<i32>(global1.a.x, 19984i), global1.b, vec2<bool>(false, false), vec3<bool>(global1.d.x, global1.c.x, global1.c.x)), global2[_wgslsmith_index_u32(u_input.c, 31u)]).x));
    var var_2 = vec4<u32>(_wgslsmith_div_u32(u_input.c, _wgslsmith_div_u32(u_input.d, u_input.c)), ~u_input.c, ~9628u, _wgslsmith_mod_u32(~_wgslsmith_sub_u32(4294967295u, _wgslsmith_add_u32(u_input.d, 1u)), u_input.c));
    var_2 = ~min(~vec4<u32>(~var_2.x, 29537u, var_2.x, ~var_2.x), (vec4<u32>(0u, u_input.d, var_2.x, 5836u) << (vec4<u32>(u_input.d, u_input.c, 70775u, 0u) % vec4<u32>(32u))) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 4294967295u, var_2.x, var_2.x), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, u_input.c, 4364u, 58264u), vec4<u32>(12791u, 0u, 11971u, u_input.d))) % vec4<u32>(32u)));
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -441f)))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)))) * -1420f);
    let var_5 = vec4<bool>(_wgslsmith_f_op_f32(-var_1.b) != var_1.b, true, true && !all(var_1.d), false);
    var_0 = !global1.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, var_1.b, -589f), vec3<f32>(-1901f, global1.b, global1.b))))))));
}

