struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: f32,
    d: vec2<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true));

var<private> global1: array<Struct_1, 15>;

var<private> global2: i32 = -1i;

var<private> global3: array<Struct_1, 12>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: vec4<u32>) -> bool {
    var var_0 = ~(~min(~(~vec3<u32>(44049u, 25787u, 20341u)), arg_3.wxx));
    global1 = array<Struct_1, 15>();
    var var_1 = -1204f;
    let var_2 = global1[_wgslsmith_index_u32(0u, 15u)];
    var var_3 = global0[_wgslsmith_index_u32(~reverseBits(u_input.a), 16u)];
    return false;
}

fn func_2() -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(abs(u_input.b), 16u)];
    var_0 = Struct_1(!(!var_0.a) && func_3(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.a, 4294967295u), 12u)], _wgslsmith_f_op_f32(step(445f, -860f)), 1206f, vec4<u32>(58206u ^ u_input.a, ~0u, u_input.a, 1u)));
    var var_1 = Struct_1(var_0.a);
    global3 = array<Struct_1, 12>();
    var_1 = Struct_1(((~u_input.b | ~u_input.b) >= u_input.a) || true);
    return Struct_1(!any(vec2<bool>(false, true)));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    global1 = array<Struct_1, 15>();
    let var_0 = _wgslsmith_f_op_f32(-arg_1);
    global2 = ~countOneBits(-12554i);
    let var_1 = func_2();
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-580f, 136f, var_0)))))) * vec3<f32>(var_0, _wgslsmith_f_op_f32(sign(var_0)), -551f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 892f, arg_1))) + vec3<f32>(-846f, _wgslsmith_f_op_f32(f32(-1f) * -257f), _wgslsmith_f_op_f32(-var_0))))));
    return arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec4<bool>) -> Struct_1 {
    global1 = array<Struct_1, 15>();
    let var_0 = func_4(func_1(Struct_1(true), 1192f, global0[_wgslsmith_index_u32(4294967295u, 16u)]), arg_0);
    global3 = array<Struct_1, 12>();
    let var_1 = select(!(!arg_2.wyw), select(select(arg_2.yxw, arg_2.wyw, !select(arg_2.zzy, vec3<bool>(arg_2.x, true, arg_2.x), var_0.a)), arg_2.xwy, arg_2.x), arg_0.a && all(vec3<bool>(var_0.a && false, func_1(var_0, -1141f, global1[_wgslsmith_index_u32(4294967295u, 15u)]).a, arg_0.a)));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-729f, -566f))), _wgslsmith_div_vec2_f32(vec2<f32>(-760f, -726f), vec2<f32>(282f, -565f)))) - vec2<f32>(_wgslsmith_f_op_f32(select(503f, -734f, false)), _wgslsmith_f_op_f32(1519f + 1791f))))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-906f + -300f) + _wgslsmith_f_op_f32(738f * -332f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-600f, -306f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2045f) - -1440f)));
    return Struct_1(var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true))), vec4<bool>(true, true, true, true), !(!(1i > u_input.c.x)));
    let var_1 = func_5(func_4(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.a | 12169u, _wgslsmith_sub_u32(u_input.a, u_input.a)), 16u)], func_1(global3[_wgslsmith_index_u32(~max(u_input.a, u_input.a), 12u)], -1346f, global0[_wgslsmith_index_u32(0u, 16u)])), firstTrailingBit(u_input.c), !select(!vec4<bool>(var_0.x, true, var_0.x, true), var_0, !var_0.x));
    let var_2 = func_4(func_4(global3[_wgslsmith_index_u32(((u_input.a | 0u) << (u_input.a % 32u)) & ~_wgslsmith_clamp_u32(u_input.b, 0u, 92902u), 12u)], Struct_1(false)), Struct_1(true));
    let var_3 = -21721i;
    global0 = array<Struct_1, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(u_input.c.x << (1u % 32u), -1i) << (~(~vec2<u32>(u_input.b, u_input.a)) % vec2<u32>(32u))), abs(-_wgslsmith_sub_vec4_i32(min(vec4<i32>(-27680i, 23175i, var_3, -8786i), vec4<i32>(var_3, var_3, var_3, 37509i)), ~vec4<i32>(1i, var_3, u_input.c.x, var_3))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1435f)), _wgslsmith_div_f32(-1791f, -1264f), false)) - _wgslsmith_f_op_f32(1899f * -418f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -843f) + 1265f)), vec2<u32>(~(~2025u), select(1u, ~u_input.a, u_input.a != 65019u)) << (~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.a) & vec2<u32>(u_input.b, u_input.a), vec2<u32>(118888u, 0u) & vec2<u32>(u_input.b, 4294967295u)) % vec2<u32>(32u)), vec2<i32>(reverseBits(0i), var_3));
}

