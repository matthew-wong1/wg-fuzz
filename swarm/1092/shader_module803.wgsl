struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: i32,
    d: vec4<bool>,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
    c: vec3<bool>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<i32>(-1i, -18159i, 2147483647i), vec2<bool>(true, true)), vec3<i32>(3001i, 1i, 1i), Struct_1(vec3<i32>(i32(-2147483648), 1i, -1i), vec2<bool>(true, false)), Struct_1(vec3<i32>(1i, 1i, 32530i), vec2<bool>(true, false)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>) -> bool {
    let var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~arg_0, 11506u, _wgslsmith_dot_vec3_u32(u_input.c.wwz, select(vec3<u32>(u_input.b, u_input.c.x, arg_0), vec3<u32>(arg_0, 1u, arg_0), vec3<bool>(global1.a.b.x, false, global1.a.b.x))) & abs(33591u)), vec3<u32>(~arg_0, firstTrailingBit(1u), u_input.b), u_input.c.zwx);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1043f) - -769f);
    var var_2 = Struct_5(Struct_3(select(!select(vec4<bool>(false, global1.a.b.x, false, true), vec4<bool>(global1.c.b.x, global1.a.b.x, global1.c.b.x, global1.c.b.x), vec4<bool>(global1.c.b.x, global1.a.b.x, global1.c.b.x, true)), vec4<bool>(true, true, global1.c.b.x, !global1.d.b.x), false), Struct_2(Struct_1(min(global1.c.a, global1.c.a), vec2<bool>(global1.a.b.x, false)), -_wgslsmith_div_vec3_i32(vec3<i32>(0i, -2147483647i, -31753i), vec3<i32>(-1i, u_input.a.x, -1i)), Struct_1(global1.a.a, global1.c.b), global1.a), _wgslsmith_mod_i32(53382i, min(2147483647i, 21392i)) ^ _wgslsmith_clamp_i32(u_input.d, abs(global1.c.a.x), select(1i, u_input.d, false)), select(select(vec4<bool>(global1.c.b.x, false, true, global1.d.b.x), vec4<bool>(global1.c.b.x, global1.d.b.x, false, true), !vec4<bool>(global1.c.b.x, true, true, global1.c.b.x)), vec4<bool>(40371u < var_0.x, true, true, !global1.a.b.x), select(select(vec4<bool>(global1.c.b.x, true, true, global1.d.b.x), vec4<bool>(global1.c.b.x, false, true, true), global1.a.b.x), select(vec4<bool>(false, global1.c.b.x, global1.d.b.x, global1.a.b.x), vec4<bool>(true, false, true, global1.a.b.x), vec4<bool>(global1.c.b.x, global1.d.b.x, true, false)), !vec4<bool>(global1.d.b.x, false, global1.a.b.x, global1.d.b.x))), min(52721u, arg_0) ^ ~arg_0), Struct_4(Struct_2(global1.d, global1.b, global1.a, Struct_1(vec3<i32>(0i, u_input.d, global1.b.x), vec2<bool>(global1.c.b.x, global1.d.b.x))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.x, 556f, 999f, 1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -271f, arg_1.x, -1371f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-493f, var_1, arg_1.x, 458f)))), !select(select(vec3<bool>(false, global1.c.b.x, false), vec3<bool>(true, global1.a.b.x, global1.c.b.x), global1.d.b.x), select(vec3<bool>(false, true, global1.d.b.x), vec3<bool>(true, global1.c.b.x, true), vec3<bool>(global1.c.b.x, true, global1.c.b.x)), vec3<bool>(global1.c.b.x, global1.a.b.x, false))), vec3<bool>(all(!select(vec4<bool>(global1.d.b.x, global1.c.b.x, false, global1.a.b.x), vec4<bool>(global1.c.b.x, true, global1.d.b.x, global1.a.b.x), vec4<bool>(global1.d.b.x, global1.a.b.x, true, global1.c.b.x))), true, any(global1.d.b)), vec4<bool>(global1.a.b.x, all(vec4<bool>(!global1.c.b.x, true, select(false, true, global1.c.b.x), global1.d.b.x)), true == global1.c.b.x, !global1.c.b.x));
    global0 = -u_input.d;
    global0 = 2147483647i;
    return global1.d.b.x;
}

fn func_2(arg_0: vec3<i32>) -> Struct_3 {
    global0 = firstLeadingBit(i32(-1i) * -35950i);
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(min(-1785f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-704f * 752f))))));
    let var_1 = true;
    var var_2 = Struct_4(Struct_2(global1.d, global1.b, Struct_1(max(reverseBits(vec3<i32>(2147483647i, global1.b.x, u_input.a.x)), -global1.a.a), !vec2<bool>(global1.a.b.x, true)), Struct_1(arg_0, select(!global1.c.b, global1.c.b, any(vec2<bool>(global1.d.b.x, false))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-954f))), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-410f, _wgslsmith_f_op_f32(trunc(var_0.x)), false)) - _wgslsmith_f_op_f32(f32(-1f) * -1840f)), _wgslsmith_f_op_f32(var_0.x - var_0.x)), vec3<bool>(any(vec4<bool>(true, !var_1, func_3(84496u, vec3<f32>(-798f, var_0.x, var_0.x)), !global1.d.b.x)), var_1, var_0.x < _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-244f))))));
    let var_3 = -(i32(-1i) * -1i);
    return Struct_3(!vec4<bool>(var_2.a.c.b.x, false, var_1, (var_0.x == -1000f) | global1.d.b.x), var_2.a, var_2.a.c.a.x, !select(vec4<bool>(global1.d.b.x, true, true, !var_2.a.d.b.x), !(!vec4<bool>(global1.d.b.x, true, true, false)), all(vec4<bool>(true, true, false, false)) | var_2.a.a.b.x), abs(~(~u_input.b)));
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_1) -> StorageBuffer {
    var var_0 = func_2(vec3<i32>(u_input.a.x, _wgslsmith_add_i32(-2147483647i, -(u_input.d | arg_2.a.x)), -19210i));
    let var_1 = Struct_4(Struct_2(func_2(_wgslsmith_mod_vec3_i32(-vec3<i32>(1i, 0i, -1i), var_0.b.a.a)).b.a, vec3<i32>(u_input.d, ~(u_input.a.x >> (4294967295u % 32u)), arg_2.a.x), func_2(arg_2.a).b.d, func_2(var_0.b.a.a).b.c), vec4<f32>(776f, _wgslsmith_f_op_f32(f32(-1f) * -714f), _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(352f + 1000f)))), -887f), var_0.d.wxw);
    var var_2 = ~global1.a.a.x;
    var var_3 = select(var_0.d.xyy, !vec3<bool>(any(vec3<bool>(var_0.b.a.b.x, arg_2.b.x, arg_2.b.x)), false, var_0.a.x), (!func_2(vec3<i32>(2147483647i, -17462i, var_1.a.b.x)).b.c.b.x || true) && var_1.a.d.b.x);
    var_3 = var_0.d.yyy;
    return StorageBuffer(_wgslsmith_add_i32(arg_2.a.x, i32(-1i) * -4787i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 2147483647i;
    let x = u_input.a;
    s_output = func_1(~(~u_input.c.yw), 846f, global1.c);
}

