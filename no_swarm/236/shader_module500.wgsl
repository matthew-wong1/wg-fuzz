struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = !arg_0.b.x;
    var_0 = true;
    var_0 = arg_0.a;
    var var_1 = ~(-vec4<i32>(u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a.x, -59677i, u_input.c), abs(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.b.x))), 0i, u_input.c));
    var var_2 = Struct_1(arg_0.b.x, arg_0.b);
    return var_2.b.zx;
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_div_vec2_i32(~countOneBits(vec2<i32>(u_input.a.x, u_input.c)), u_input.b.yx);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -399f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-189f, -1529f)), -720f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-569f, 1008f)) * _wgslsmith_f_op_f32(sign(1321f)))));
    let var_2 = vec4<bool>(any(vec3<bool>(true, true, true)), all(vec3<bool>(false, true, _wgslsmith_f_op_f32(-var_1.x) >= var_1.x)), false, !all(vec2<bool>(false, true)));
    var var_3 = min(u_input.a.zzw | ~u_input.b, u_input.a.xyx);
    var_3 = _wgslsmith_sub_vec3_i32(-((-vec3<i32>(-20426i, u_input.a.x, 12426i) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, var_3.x, -32563i), u_input.b)) ^ -(~u_input.b)), u_input.a.zzw >> (vec3<u32>(select(~73121u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 4294967295u, 25461u), vec3<u32>(4294967295u, u_input.d.x, u_input.d.x)), var_2.x), u_input.d.x, 1u) % vec3<u32>(32u)));
    return !(_wgslsmith_f_op_f32(ceil(-989f)) == var_1.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(select(-2690f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1410f, 801f, arg_0.x))), !all(!arg_0))) >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) * _wgslsmith_f_op_f32(ceil(614f))), _wgslsmith_f_op_f32(trunc(-231f))))));
    let var_1 = u_input.c;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-222f, 948f, 762f, -1503f)))), vec4<f32>(-347f, _wgslsmith_f_op_f32(674f + -124f), _wgslsmith_f_op_f32(floor(363f)), -509f)) * vec4<f32>(456f, _wgslsmith_f_op_f32(2737f * _wgslsmith_div_f32(2200f, 283f)), _wgslsmith_div_f32(-754f, -1530f), _wgslsmith_f_op_f32(810f - _wgslsmith_f_op_f32(f32(-1f) * -1351f)))));
    let var_3 = 1018f;
    var var_4 = vec3<i32>(u_input.a.x, -abs(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(arg_1.a, arg_1.a, u_input.a), -u_input.a)), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a.x, -1i) & vec2<i32>(5984i, 2147483647i), u_input.b.yx) ^ max(-1i, ~(-1i))));
    return Struct_2(vec4<i32>(-1i, -10584i, u_input.a.x, var_1));
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_1 {
    let var_0 = false;
    let var_1 = func_4(select(func_2(Struct_1(var_0, vec3<bool>(true, true, true))), vec2<bool>(func_3(), true), select(vec2<bool>(all(vec2<bool>(var_0, false)), var_0), select(!vec2<bool>(true, var_0), select(vec2<bool>(true, var_0), vec2<bool>(true, false), vec2<bool>(var_0, true)), true), false)), Struct_2(-vec4<i32>(~0i, 852i, select(13793i, arg_0, false), firstTrailingBit(2147483647i))));
    return Struct_1(~(~select(u_input.d.x, 4294967295u, var_0)) >= 1964u, select(select(select(!vec3<bool>(false, false, var_0), vec3<bool>(var_0, true, var_0), vec3<bool>(var_0, var_0, var_0)), vec3<bool>(select(var_0, false, var_0), var_0 || var_0, var_0), true), !vec3<bool>(var_0 != var_0, all(vec3<bool>(false, false, true)), func_3()), vec3<bool>(all(!vec2<bool>(var_0, true)), true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-366f, -288f)) + 1237f));
    var_0 = Struct_1(false, !(!var_0.b));
    var_0 = Struct_1(var_0.b.x, vec3<bool>(!all(var_0.b), true, true));
    var var_1 = select(!(!select(!vec4<bool>(var_0.a, true, false, var_0.b.x), select(vec4<bool>(false, true, var_0.a, false), vec4<bool>(false, false, false, true), var_0.b.x), vec4<bool>(var_0.b.x, false, var_0.a, var_0.b.x))), vec4<bool>(!(true || var_0.b.x), true, var_0.b.x, var_0.b.x), vec4<bool>(true, true, true, false));
    let var_2 = _wgslsmith_add_vec4_u32(~min(min(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), vec4<u32>(u_input.d.x, u_input.d.x, 31336u, 4294967295u)), ~vec4<u32>(1u, 0u, u_input.d.x, u_input.d.x)) >> (vec4<u32>(u_input.d.x, _wgslsmith_div_u32(~u_input.d.x, 46948u), select(4294967295u, ~u_input.d.x, true), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, 4294967295u), vec3<u32>(35869u, u_input.d.x, u_input.d.x)) ^ _wgslsmith_div_u32(u_input.d.x, 6677u)) % vec4<u32>(32u)), ~(~(~_wgslsmith_add_vec4_u32(vec4<u32>(65246u, 4294967295u, 44068u, u_input.d.x), vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, 2559u)))));
    let var_3 = Struct_2(u_input.a);
    var var_4 = Struct_1(!var_1.x, select(select(var_1.yxw, !var_1.wwy, false == any(vec4<bool>(var_0.b.x, var_0.a, var_1.x, var_1.x))), var_1.yww, false));
    var var_5 = !((true | var_1.x) | false) || false;
    let x = u_input.a;
    s_output = StorageBuffer(~50476i, ~(vec4<u32>(~63106u, firstLeadingBit(u_input.d.x), 4294967295u, firstTrailingBit(u_input.d.x)) & ~(~vec4<u32>(72850u, 60819u, var_2.x, u_input.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -433f)), var_2.x, ~vec4<u32>(u_input.d.x, ~(~1u), 4294967295u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(1u, var_2.x), _wgslsmith_add_u32(u_input.d.x, 18098u), _wgslsmith_sub_u32(13929u, u_input.d.x))));
}

