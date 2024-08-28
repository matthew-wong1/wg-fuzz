struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(238f, vec4<bool>(true, true, false, true));

var<private> global1: array<vec4<f32>, 25> = array<vec4<f32>, 25>(vec4<f32>(-276f, 327f, -2050f, -2238f), vec4<f32>(1609f, -1000f, 398f, -467f), vec4<f32>(1545f, -945f, 972f, -210f), vec4<f32>(-2027f, 227f, -1488f, 1602f), vec4<f32>(-2026f, 1000f, -376f, -416f), vec4<f32>(-1000f, 425f, -718f, -1250f), vec4<f32>(-208f, -1000f, -1000f, 1000f), vec4<f32>(-678f, 612f, 1187f, 249f), vec4<f32>(-432f, -2048f, 385f, -303f), vec4<f32>(-351f, 600f, -214f, -1000f), vec4<f32>(-438f, 755f, 542f, 1000f), vec4<f32>(2021f, 193f, -652f, 950f), vec4<f32>(-1256f, 224f, 1279f, 1028f), vec4<f32>(-1905f, 413f, 589f, -720f), vec4<f32>(-181f, -824f, 194f, -1530f), vec4<f32>(1228f, 356f, 860f, -622f), vec4<f32>(-1213f, -147f, 747f, -788f), vec4<f32>(-293f, 576f, 1529f, -924f), vec4<f32>(849f, -728f, -151f, -1000f), vec4<f32>(568f, -687f, -2344f, 1000f), vec4<f32>(1000f, 1000f, -410f, -1349f), vec4<f32>(1000f, 1371f, -862f, 1862f), vec4<f32>(376f, -1388f, -870f, -607f), vec4<f32>(-684f, 796f, 406f, 978f), vec4<f32>(-1977f, 179f, 838f, -728f));

var<private> global2: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(true, true, false, true));

var<private> global3: array<vec3<f32>, 2> = array<vec3<f32>, 2>(vec3<f32>(-821f, -421f, 1000f), vec3<f32>(-694f, -341f, 819f));

var<private> global4: array<bool, 5> = array<bool, 5>(true, true, true, false, false);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec4<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1106f + 1087f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_2.a.x)), arg_2.a.x))));
    var var_1 = u_input.a.x;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(979f - arg_2.a.x), !(!select(vec4<bool>(global4[_wgslsmith_index_u32(u_input.b.x, 5u)], arg_2.b.x, global4[_wgslsmith_index_u32(u_input.b.x, 5u)], global4[_wgslsmith_index_u32(7576u, 5u)]), select(vec4<bool>(true, global4[_wgslsmith_index_u32(20256u, 5u)], true, false), global2[_wgslsmith_index_u32(0u, 1u)], vec4<bool>(global0.b.x, global4[_wgslsmith_index_u32(2481u, 5u)], true, global4[_wgslsmith_index_u32(1u, 5u)])), !arg_2.b)));
    var var_3 = -2147483647i;
    global1 = array<vec4<f32>, 25>();
    return 1i;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1) -> f32 {
    let var_0 = ~select(4294967295u << (_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x)) % 32u), ~u_input.b.x ^ u_input.b.x, false) | (~abs(u_input.b.x << (u_input.b.x % 32u)) | _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(1u, u_input.b.x), u_input.b.x), 1u));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1.a.x, arg_1.a.x))), vec2<f32>(-225f, 250f)) - vec2<f32>(arg_1.a.x, arg_0.a)) - _wgslsmith_f_op_vec2_f32(-arg_1.a.xz)), ~vec4<u32>(min(abs(39477u), 25305u << (1u % 32u)), ~(~4294967295u), firstLeadingBit(var_0), 13447u), Struct_1(arg_1.a, !select(!vec4<bool>(false, false, global0.b.x, true), global2[_wgslsmith_index_u32(~u_input.b.x, 1u)], false)), Struct_1(vec3<f32>(arg_0.a, 226f, _wgslsmith_f_op_f32(-arg_0.a)), vec4<bool>(select(global0.b.x, arg_0.b.x, arg_0.a < -2821f), true, all(select(vec2<bool>(global4[_wgslsmith_index_u32(var_0, 5u)], global0.b.x), arg_0.b.xz, vec2<bool>(true, true))), false)));
    let var_2 = _wgslsmith_add_i32(~(-firstLeadingBit(1i)), -func_3(!(!arg_0.b.zxy), ~firstLeadingBit(vec3<i32>(-625i, u_input.a.x, -1i)), Struct_1(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, u_input.b.x), 2u)], !global2[_wgslsmith_index_u32(7560u, 1u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global1[_wgslsmith_index_u32(4294967295u, 25u)], vec4<f32>(arg_1.a.x, 1143f, -647f, 716f), var_1.d.b.x)))));
    global4 = array<bool, 5>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(arg_1.a.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_1.d.a.x, -563f)), var_1.c.a.x))) - _wgslsmith_f_op_f32(-arg_0.a));
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    var var_0 = -1663i;
    var var_1 = !arg_0.b.x;
    global1 = array<vec4<f32>, 25>();
    var var_2 = arg_0.b.ww;
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + -392f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.a.x - 204f)))), _wgslsmith_f_op_f32(select(arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(120f)) - 1f), arg_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x * 1000f)))));
    return Struct_3(_wgslsmith_f_op_f32(max(-2153f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.x), 139f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_3(1721f, vec4<bool>(true, false, global4[_wgslsmith_index_u32(3564u, 5u)], false)), Struct_1(global3[_wgslsmith_index_u32(70660u, 2u)], vec4<bool>(true, var_2.x, global4[_wgslsmith_index_u32(u_input.b.x, 5u)], false)))))))), select(global0.b, arg_0.b, global4[_wgslsmith_index_u32(u_input.b.x, 5u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(global0.b.x, false, false, !(!global4[_wgslsmith_index_u32(~u_input.b.x, 5u)]));
    global3 = array<vec3<f32>, 2>();
    global0 = Struct_3(_wgslsmith_f_op_f32(step(global0.a, -612f)), select(vec4<bool>(true, true, true, true), !(!(!var_0)), !select(select(vec4<bool>(false, global0.b.x, true, false), global2[_wgslsmith_index_u32(u_input.b.x, 1u)], true), !global0.b, vec4<bool>(global4[_wgslsmith_index_u32(u_input.b.x, 5u)], var_0.x, true, var_0.x))));
    var var_1 = func_1(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(964f, -342f, 1293f)), select(global2[_wgslsmith_index_u32(67501u, 1u)], vec4<bool>(global4[_wgslsmith_index_u32(0u, 5u)], any(vec2<bool>(global4[_wgslsmith_index_u32(u_input.b.x, 5u)], global4[_wgslsmith_index_u32(31028u, 5u)])), var_0.x, all(var_0.zzz)), global4[_wgslsmith_index_u32(2017u, 5u)])));
    let var_2 = any(vec2<bool>(true, false | select(false, true, u_input.a.x < -29195i)));
    global2 = array<vec4<bool>, 1>();
    var var_3 = !any(!(!global0.b));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(_wgslsmith_clamp_i32(21108i, max(-2147483647i, u_input.a.x), 1i), u_input.a.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-621f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.a)))))), u_input.b.x & 23655u, select(u_input.a.x, u_input.a.x, !global4[_wgslsmith_index_u32(4294967295u, 5u)] & true) & _wgslsmith_mod_i32(u_input.a.x, u_input.a.x));
}

