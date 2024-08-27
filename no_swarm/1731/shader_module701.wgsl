struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-518f, 1742f, -1333f);

var<private> global1: array<vec4<i32>, 20>;

var<private> global2: array<bool, 4> = array<bool, 4>(true, true, false, false);

var<private> global3: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(Struct_1(vec4<u32>(1u, 10057u, 56029u, 0u)), vec3<bool>(true, false, true)), Struct_2(Struct_1(vec4<u32>(0u, 4294967295u, 4294967295u, 1u)), vec3<bool>(false, true, false)), Struct_2(Struct_1(vec4<u32>(4294967295u, 22581u, 13981u, 0u)), vec3<bool>(true, false, false)), Struct_2(Struct_1(vec4<u32>(31252u, 1u, 90012u, 4294967295u)), vec3<bool>(false, true, false)), Struct_2(Struct_1(vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u)), vec3<bool>(true, false, false)), Struct_2(Struct_1(vec4<u32>(0u, 4294967295u, 1u, 1u)), vec3<bool>(false, false, false)), Struct_2(Struct_1(vec4<u32>(1u, 1u, 11784u, 31884u)), vec3<bool>(false, true, false)), Struct_2(Struct_1(vec4<u32>(42972u, 23433u, 30327u, 4294967295u)), vec3<bool>(true, false, true)), Struct_2(Struct_1(vec4<u32>(49206u, 4294967295u, 1u, 81291u)), vec3<bool>(false, false, true)), Struct_2(Struct_1(vec4<u32>(4294967295u, 24179u, 49624u, 0u)), vec3<bool>(false, true, true)), Struct_2(Struct_1(vec4<u32>(3254u, 0u, 1u, 2008u)), vec3<bool>(true, true, false)), Struct_2(Struct_1(vec4<u32>(0u, 30656u, 1u, 1u)), vec3<bool>(true, false, true)), Struct_2(Struct_1(vec4<u32>(4294967295u, 44323u, 4662u, 4294967295u)), vec3<bool>(true, true, true)), Struct_2(Struct_1(vec4<u32>(1u, 1u, 49191u, 31260u)), vec3<bool>(true, false, false)), Struct_2(Struct_1(vec4<u32>(1u, 8536u, 1u, 17057u)), vec3<bool>(true, false, true)));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_4) -> f32 {
    let var_0 = global2[_wgslsmith_index_u32(~4294967295u, 4u)];
    var var_1 = vec4<u32>(_wgslsmith_mult_u32(min(_wgslsmith_add_u32(24301u, 0u), 1u), ~_wgslsmith_mult_u32(1u, 60497u)) | _wgslsmith_mult_u32(firstTrailingBit(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(15891u, 4294967295u), ~vec2<u32>(4294967295u, 69472u))), abs(~38019u), 25703u, countOneBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), ~reverseBits(vec2<u32>(4294967295u, 1u)))));
    let var_2 = _wgslsmith_div_u32(~_wgslsmith_mod_u32(firstLeadingBit(4294967295u), firstTrailingBit(firstTrailingBit(var_1.x))), 55978u);
    let var_3 = Struct_2(Struct_1(vec4<u32>(0u, 4294967295u, ~(~16353u), var_2)), !select(vec3<bool>(true, u_input.b < -41215i, all(vec2<bool>(true, true))), select(!vec3<bool>(global2[_wgslsmith_index_u32(var_2, 4u)], true, false), select(vec3<bool>(global2[_wgslsmith_index_u32(0u, 4u)], true, false), vec3<bool>(false, true, global2[_wgslsmith_index_u32(1u, 4u)]), global2[_wgslsmith_index_u32(0u, 4u)]), true), vec3<bool>(!global2[_wgslsmith_index_u32(var_2, 4u)], 2147483647i > arg_1.a.x, true)));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-244f * -997f)))) - _wgslsmith_f_op_f32(-1083f - _wgslsmith_div_f32(global0.x, -2024f))), 650f);
    return arg_2.a;
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: bool) -> vec3<u32> {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, 448f, arg_2.a), vec3<f32>(arg_2.a, -250f, -910f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1100f, 931f, arg_2.a) * vec3<f32>(1327f, 293f, 1020f)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-990f, -1085f, 1513f)))))))) - vec3<f32>(-2354f, arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_2.a)), 101f))));
    global0 = vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-705f * -1767f)), arg_2.a);
    let var_0 = Struct_4(-239f);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1158f, -973f, 1636f, global0.x), vec4<f32>(arg_2.a, -526f, 432f, global0.x), vec4<bool>(false, arg_3, false, global2[_wgslsmith_index_u32(50319u, 4u)]))), Struct_3(global1[_wgslsmith_index_u32(1u, 20u)]), Struct_4(1000f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-316f)) - _wgslsmith_f_op_f32(global0.x - -861f))) * var_0.a));
    let var_2 = Struct_1(~firstTrailingBit(~vec4<u32>(4294967295u, 0u, 2884u, 23505u)));
    return ~vec3<u32>(~var_2.a.x, 1u, select(_wgslsmith_dot_vec3_u32(vec3<u32>(22749u, 111991u, var_2.a.x), vec3<u32>(var_2.a.x, 1078u, var_2.a.x)) ^ _wgslsmith_add_u32(var_2.a.x, var_2.a.x), 1u, true));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: vec3<f32>) -> f32 {
    let var_0 = arg_0.x;
    global2 = array<bool, 4>();
    let var_1 = _wgslsmith_f_op_vec2_f32(global0.xx + _wgslsmith_f_op_vec2_f32(-global0.xy));
    var var_2 = ~_wgslsmith_dot_vec3_u32(func_2(global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(56464u, 20734u)), 4u)], _wgslsmith_f_op_vec2_f32(-global0.zy), Struct_4(_wgslsmith_f_op_f32(trunc(var_1.x))), (u_input.a.x & arg_0.x) <= firstLeadingBit(var_0)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 1u, 42868u), abs(vec3<u32>(0u, 24615u, 4294967295u)), abs(vec3<u32>(1301u, 0u, 11434u))));
    global2 = array<bool, 4>();
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(20735u, _wgslsmith_mult_u32(4294967295u, _wgslsmith_mod_u32(39753u, 1u)), 1u), vec3<u32>(~abs(~0u), ~_wgslsmith_div_u32(31492u, ~40594u), abs(_wgslsmith_add_u32(abs(1u), ~34160u))));
    var var_1 = select(abs(abs(firstTrailingBit(~vec3<u32>(18891u, 4294967295u, var_0.x)))), ~(~_wgslsmith_add_vec3_u32(~vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(0u, var_0.x, 1u))), !(!vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 4u)], all(vec4<bool>(true, false, global2[_wgslsmith_index_u32(4294967295u, 4u)], global2[_wgslsmith_index_u32(4294967295u, 4u)])))));
    var_1 = vec3<u32>(24092u, ~19884u, var_1.x);
    var var_2 = Struct_3(global1[_wgslsmith_index_u32(~(~(~var_0.x | ~var_0.x)), 20u)]);
    global2 = array<bool, 4>();
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.x)) - _wgslsmith_div_f32(global0.x, 921f))), _wgslsmith_f_op_f32(func_1(countOneBits(vec3<i32>(u_input.a.x, var_2.a.x, u_input.d)) | _wgslsmith_div_vec3_i32(u_input.a.wyz, u_input.a.xxx), 187f, _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 792f, global0.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, -564f) - vec3<f32>(752f, global0.x, global0.x))))))), global0.x);
    var var_4 = Struct_1(countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, 15535u, 51430u, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, var_1.x, 115661u, 0u), vec4<u32>(1u, var_0.x, 1u, var_1.x), vec4<u32>(var_1.x, var_0.x, 0u, var_1.x))) | (~vec4<u32>(26318u, var_0.x, 4294967295u, 0u) ^ ~vec4<u32>(var_1.x, 26980u, var_0.x, 56796u))));
    var_0 = func_2(any(vec4<bool>(any(!vec4<bool>(global2[_wgslsmith_index_u32(23531u, 4u)], false, false, true)), true, true, global2[_wgslsmith_index_u32(var_0.x, 4u)])), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - global0.x) * _wgslsmith_f_op_f32(f32(-1f) * -747f))))), Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -800f)), !(!all(!vec4<bool>(true, global2[_wgslsmith_index_u32(var_4.a.x, 4u)], global2[_wgslsmith_index_u32(var_4.a.x, 4u)], global2[_wgslsmith_index_u32(var_0.x, 4u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(59180u, 139f, vec4<f32>(473f, global0.x, -808f, global0.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, global0.x, false))), -864f, global0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) * _wgslsmith_f_op_f32(global0.x + global0.x))))));
}

