struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25> = array<u32, 25>(1u, 0u, 0u, 4754u, 26298u, 0u, 19536u, 37436u, 1u, 4294967295u, 7017u, 0u, 1u, 1u, 4294967295u, 30649u, 4294967295u, 1u, 29424u, 1u, 32607u, 28054u, 0u, 1u, 4294967295u);

var<private> global1: array<vec4<u32>, 23> = array<vec4<u32>, 23>(vec4<u32>(0u, 1u, 1u, 1u), vec4<u32>(3669u, 99093u, 35934u, 79602u), vec4<u32>(4294967295u, 45383u, 31573u, 80985u), vec4<u32>(51122u, 2752u, 1u, 1u), vec4<u32>(14459u, 4294967295u, 3208u, 66450u), vec4<u32>(56443u, 27502u, 79685u, 42495u), vec4<u32>(4294967295u, 0u, 21112u, 81130u), vec4<u32>(77792u, 0u, 1u, 1u), vec4<u32>(1u, 0u, 1u, 1u), vec4<u32>(51764u, 1u, 0u, 71347u), vec4<u32>(17465u, 4294967295u, 54012u, 0u), vec4<u32>(34074u, 1u, 34588u, 1u), vec4<u32>(0u, 19431u, 4294967295u, 4294967295u), vec4<u32>(0u, 0u, 19738u, 1u), vec4<u32>(10655u, 1u, 0u, 4294967295u), vec4<u32>(29440u, 12259u, 4294967295u, 20286u), vec4<u32>(2342u, 1u, 10772u, 72448u), vec4<u32>(43483u, 20219u, 1008u, 0u), vec4<u32>(87955u, 4256u, 7685u, 4294967295u), vec4<u32>(31014u, 0u, 1u, 70178u), vec4<u32>(1u, 24891u, 4294967295u, 77991u), vec4<u32>(0u, 83629u, 62011u, 0u), vec4<u32>(0u, 11353u, 4294967295u, 22955u));

var<private> global2: array<f32, 13> = array<f32, 13>(658f, -1065f, 442f, -522f, 2804f, -187f, 284f, -119f, 405f, 1637f, -1000f, 773f, 712f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool) -> u32 {
    global0 = array<u32, 25>();
    let var_0 = false;
    let var_1 = Struct_1(global2[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 13u)]);
    global0 = array<u32, 25>();
    let var_2 = 1u;
    return ~u_input.a;
}

fn func_2() -> Struct_1 {
    global2 = array<f32, 13>();
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(12170u, global0[_wgslsmith_index_u32(abs(~global0[_wgslsmith_index_u32(~1u, 25u)]), 25u)]), 23u)];
    var var_1 = Struct_1(global2[_wgslsmith_index_u32(abs(min(_wgslsmith_add_u32(func_3(false), _wgslsmith_clamp_u32(76092u, 4294967295u, 1u)), ~(~var_0.x))), 13u)]);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1005f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a + 392f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(19884u, 13u)]))), var_1.a, true)));
    global0 = array<u32, 25>();
    return Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(firstTrailingBit(~u_input.a), 13u)]))));
}

fn func_1(arg_0: u32, arg_1: u32) -> vec4<bool> {
    global1 = array<vec4<u32>, 23>();
    let var_0 = func_2();
    global1 = array<vec4<u32>, 23>();
    let var_1 = _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(arg_0, 13u)], global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(4294967295u, ~(~arg_0)), 13u)]));
    let var_2 = Struct_1(-412f);
    return !select(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), false), true), select(vec4<bool>(false, true, select(true, false, false), false), vec4<bool>(u_input.b.x > 0i, true, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), var_2.a <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, var_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 50863i;
    var var_1 = _wgslsmith_mod_i32(-min(var_0, _wgslsmith_add_i32(_wgslsmith_sub_i32(var_0, var_0), u_input.b.x)), u_input.b.x);
    let var_2 = any(select(func_1(global0[_wgslsmith_index_u32(1540u, 25u)], _wgslsmith_mult_u32(_wgslsmith_mult_u32(44695u, 36138u), 0u)), select(!func_1(global0[_wgslsmith_index_u32(30438u, 25u)], 5625u), vec4<bool>(true, true, all(vec4<bool>(true, true, true, false)), any(vec3<bool>(true, true, false))), vec4<bool>(func_1(32958u, 1u).x, true, true, true)), false));
    global1 = array<vec4<u32>, 23>();
    let var_3 = func_2();
    var var_4 = var_2;
    global2 = array<f32, 13>();
    var var_5 = _wgslsmith_div_f32(-154f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-471f, 534f)) + -224f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(0u ^ u_input.a, 13u)], var_3.a, 1f, _wgslsmith_f_op_f32(var_3.a - 928f))))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u) << (select(vec3<u32>(u_input.a, u_input.a, global0[_wgslsmith_index_u32(0u, 25u)]), vec3<u32>(0u, 0u, global0[_wgslsmith_index_u32(u_input.a, 25u)]), vec3<bool>(var_2, true, false)) % vec3<u32>(32u)), firstTrailingBit(~vec3<u32>(0u, u_input.a, 41504u))), vec3<u32>(1u, reverseBits(~abs(4294967295u)), u_input.a));
}

