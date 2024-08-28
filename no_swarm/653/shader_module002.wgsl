struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_3,
    d: vec4<f32>,
    e: vec4<bool>,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: vec4<u32>,
    d: Struct_2,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<f32>, 15>;

var<private> global2: vec4<u32>;

var<private> global3: vec4<f32> = vec4<f32>(-357f, 2163f, 1406f, 454f);

var<private> global4: array<vec3<bool>, 24>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = Struct_3(false, Struct_2(_wgslsmith_f_op_vec4_f32(arg_0.a * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(arg_0.a, vec4<f32>(719f, 355f, global3.x, global3.x)))))), Struct_1(_wgslsmith_sub_i32(-46189i, countOneBits(-u_input.a)), vec3<u32>(u_input.c.x, global2.x, ~25273u)));
    var var_1 = Struct_1(_wgslsmith_mult_i32(-21442i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(2147483647i, u_input.a, 1i, -17172i)), -vec4<i32>(var_0.c.a, var_0.c.a, u_input.b, var_0.c.a)) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_0.c.a), abs(vec2<i32>(26789i, u_input.b)))), vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~29151u, abs(1u), global2.x), global2.x, 4294967295u), reverseBits(~select(global2.x, u_input.c.x, var_0.a)), ((1u & global2.x) << (abs(43645u) % 32u)) << (~(1u & var_0.c.b.x) % 32u)));
    let var_2 = var_0.b;
    let var_3 = -496i;
    let var_4 = var_0.c;
    return select(vec4<bool>(true == var_0.a, var_0.a, false, true), select(!(!vec4<bool>(var_0.a, true, true, var_0.a)), select(!vec4<bool>(var_0.a, var_0.a, true, var_0.a), !vec4<bool>(true, true, var_0.a, var_0.a), var_0.a && !var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-369f + 860f) - _wgslsmith_div_f32(global3.x, -1358f)) >= var_0.b.a.x), !(!all(!global4[_wgslsmith_index_u32(u_input.c.x, 24u)])));
}

fn func_2(arg_0: vec2<f32>) -> Struct_2 {
    global0 = global2.x;
    var var_0 = !func_3(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3.x, 254f, -497f, arg_0.x))))));
    let var_1 = vec4<u32>(abs(min(global2.x, _wgslsmith_mult_u32(1u, 15539u))) >> (~_wgslsmith_clamp_u32(u_input.c.x, global2.x, 0u) % 32u), _wgslsmith_clamp_u32(u_input.c.x, 1556u, max(53465u, 0u)), _wgslsmith_sub_u32(~u_input.c.x & ~u_input.c.x, _wgslsmith_div_u32(16086u, 38314u)), _wgslsmith_mult_u32(u_input.c.x, ~(~(~global2.x))));
    let var_2 = -u_input.b ^ u_input.b;
    var_0 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global3.x)) * _wgslsmith_div_f32(arg_0.x, -176f))) <= -416f, any(vec3<bool>(true, u_input.c.x != 1u, select(true, false, all(vec4<bool>(var_0.x, var_0.x, false, var_0.x))))), false, select(all(vec2<bool>(false, true)) || all(var_0.zwx), var_0.x, !all(select(var_0.zw, vec2<bool>(false, var_0.x), true))));
    return Struct_2(vec4<f32>(global3.x, _wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -121f), var_0.x)), global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(global3.x)), 918f)) - -971f)));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = func_2(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.a.x, -1054f)), arg_2.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 1249f))))));
    global1 = array<vec3<f32>, 15>();
    let var_1 = Struct_3(arg_0.x, arg_2, Struct_1(467i, ~vec3<u32>(84580u, u_input.c.x, 1u)));
    let var_2 = Struct_5(_wgslsmith_add_u32(~arg_1.x, u_input.c.x), max(_wgslsmith_dot_vec4_u32(~vec4<u32>(3223u, global2.x, arg_1.x, u_input.c.x), vec4<u32>(var_1.c.b.x, global2.x, u_input.c.x, var_1.c.b.x)), u_input.c.x) < arg_1.x, abs(select(~vec4<u32>(50989u, 1u, var_1.c.b.x, 1u) & vec4<u32>(var_1.c.b.x, 4294967295u, u_input.c.x, 74195u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 0u, 37661u, 22409u) ^ vec4<u32>(var_1.c.b.x, u_input.c.x, global2.x, 4294967295u), vec4<u32>(u_input.c.x, 437u, u_input.c.x, 8324u)), !arg_0.x)), arg_2, func_3(var_1.b).ww);
    let var_3 = _wgslsmith_f_op_f32(min(1f, 2183f));
    return var_1.c;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_4 {
    var var_0 = global3.yyx;
    var var_1 = arg_1.b.x;
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(global3.xyw, global1[_wgslsmith_index_u32(1u, 15u)])), vec3<f32>(var_0.x, 304f, global3.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-901f, global3.x, global3.x), vec3<f32>(arg_0.x, -1045f, 124f)))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_0.x, 537f) - global3.wwy), global1[_wgslsmith_index_u32(u_input.c.x | 4294967295u, 15u)], false))))));
    global1 = array<vec3<f32>, 15>();
    var var_2 = Struct_4(Struct_3(false, Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, -1803f, arg_0.x), vec4<f32>(707f, arg_0.x, 1030f, -557f)))), arg_1), Struct_3(_wgslsmith_sub_u32(global2.x, _wgslsmith_mult_u32(global2.x, arg_1.b.x)) == _wgslsmith_dot_vec2_u32(arg_1.b.yz, abs(vec2<u32>(u_input.c.x, global2.x))), Struct_2(vec4<f32>(_wgslsmith_div_f32(var_0.x, global3.x), var_0.x, var_0.x, arg_0.x)), arg_1), Struct_3(true, func_2(vec2<f32>(1610f, global3.x)), func_4(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), ~(~vec3<u32>(25925u, 24622u, u_input.c.x)), Struct_2(vec4<f32>(-1181f, arg_0.x, arg_0.x, global3.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-991f, 1172f, global3.x, global3.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(912f, var_0.x, var_0.x, var_0.x) * vec4<f32>(-2132f, 225f, global3.x, global3.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, var_0.x, -522f, 299f), vec4<f32>(global3.x, global3.x, arg_0.x, -1000f), vec4<bool>(true, false, false, true)))))), !select(vec4<bool>(true, true, true, u_input.c.x > global2.x), vec4<bool>(true, true, true, true), _wgslsmith_div_i32(11053i, arg_1.a) > (u_input.b ^ -7989i)));
    return Struct_4(Struct_3(var_2.e.x, Struct_2(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.x)), -1000f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(min(var_2.b.b.a.x, -813f)))), Struct_1(-func_4(var_2.e.yw, vec3<u32>(0u, 66442u, 4294967295u), Struct_2(var_2.d), var_2.b.b.a).a, ~vec3<u32>(0u, var_2.a.c.b.x, 10092u))), var_2.c, var_2.c, var_2.d, select(!vec4<bool>(all(global4[_wgslsmith_index_u32(0u, 24u)]), any(vec4<bool>(var_2.a.a, true, var_2.c.a, var_2.a.a)), true, all(vec2<bool>(var_2.b.a, true))), !vec4<bool>(var_2.e.x | false, false & var_2.c.a, false, all(var_2.e.xx)), vec4<bool>(u_input.c.x != countOneBits(arg_1.b.x), var_2.c.a, var_2.c.a, func_3(Struct_2(vec4<f32>(arg_0.x, arg_0.x, 1220f, var_2.b.b.a.x))).x)));
}

fn func_1() -> bool {
    let var_0 = vec4<i32>(-4784i, -54813i, _wgslsmith_mod_i32(24570i, 2147483647i & _wgslsmith_clamp_i32(abs(-88808i), i32(-1i) * -1i, 1i)), u_input.a);
    global0 = ~0u;
    var var_1 = vec3<u32>(_wgslsmith_mod_u32(global2.x, ~(0u >> (u_input.c.x % 32u))), _wgslsmith_div_u32(global2.x, u_input.c.x), max(max(~u_input.c.x, global2.x), 4294967295u) ^ u_input.c.x);
    let var_2 = -var_0.yz;
    var var_3 = func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global3.x, global3.x))), global3.wy)), func_4(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, false), true), ~global2.ywy, func_2(_wgslsmith_f_op_vec2_f32(global3.zw * vec2<f32>(global3.x, global3.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(783f + global3.x), global3.x, -1192f, -913f) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-349f, global3.x, global3.x, 307f))))))));
    return var_3.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(select(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), true), vec4<bool>(false, func_1(), false, any(vec2<bool>(true, true))), u_input.c.x < 14597u), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, func_3(Struct_2(vec4<f32>(1213f, global3.x, global3.x, 155f))).x, true), true), true), func_3(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1894f, global3.x, global3.x, 1869f) * vec4<f32>(global3.x, global3.x, global3.x, 400f))))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false)), true), vec4<bool>(all(vec4<bool>(true, true, false, false)), -155f == global3.x, true, -2147483647i > u_input.a)));
    global4 = array<vec3<bool>, 24>();
    let var_1 = _wgslsmith_f_op_f32(-120f + _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global1 = array<vec3<f32>, 15>();
    let var_2 = !(!func_5(global3.zz, Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -49865i), vec2<i32>(u_input.a, -35628i)), global2.zyx)).e);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, -13810i);
}

