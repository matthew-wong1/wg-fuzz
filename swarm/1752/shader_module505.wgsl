struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: f32,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: Struct_3 = Struct_3(-1056f, 4294967295u, true, Struct_2(1u, 859f, 342f, vec4<bool>(false, false, false, true), Struct_1(vec3<f32>(1000f, -2819f, -189f), true, vec4<u32>(0u, 4148u, 4294967295u, 1u))));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    global0 = ~4294967295u;
    global0 = _wgslsmith_dot_vec2_u32(~vec2<u32>(21609u, firstTrailingBit(~55931u)), global1.d.e.c.zx);
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.a, global1.a, global1.d.e.a.x))))), global1.d.e.a, any(vec3<bool>(global1.d.e.b || global1.c, false, false & global1.c)))), true, vec4<u32>(u_input.b ^ ~8892u, 4294967295u | u_input.b, 0u, 85528u));
    global1 = Struct_3(1166f, countOneBits(1u), any(select(global1.d.d.yz, !vec2<bool>(global1.c, var_0.b), false)), Struct_2(abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(global1.b, 79922u), ~var_0.c.zy)), _wgslsmith_f_op_f32(global1.d.e.a.x * var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(422f + -693f)))), vec4<bool>(!select(var_0.b, var_0.b, var_0.b), true, var_0.b, (u_input.b | 39008u) > 0u), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1319f, var_0.a.x, var_0.a.x)), !select(false, global1.d.d.x, false), firstLeadingBit(vec4<u32>(u_input.b, 45303u, 0u, var_0.c.x)) ^ vec4<u32>(u_input.b, global1.d.a, global1.b, 0u))));
    let var_1 = u_input.c.x;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1234f), _wgslsmith_f_op_f32(-var_0.a.x)))));
}

fn func_2(arg_0: vec2<f32>) -> f32 {
    let var_0 = global1.d.e;
    var var_1 = u_input.a.x;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x)), 4294967295u, !any(!vec4<bool>(false, false, false, var_0.b)), Struct_2(var_0.c.x, global1.a, -839f, select(select(!vec4<bool>(global1.d.d.x, global1.d.d.x, var_0.b, var_0.b), vec4<bool>(true, true, true, true), !global1.d.d), global1.d.d, true), global1.d.e));
    let var_3 = Struct_2(~(~(~var_0.c.x)) << ((1u << (~(~global1.b) % 32u)) % 32u), 1315f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(abs(var_2.a))), !select(!(!global1.d.d), var_2.d.d, true), var_2.d.e);
    var var_4 = 1i ^ ~_wgslsmith_sub_i32(~(u_input.a.x ^ 2147483647i), _wgslsmith_sub_i32(u_input.c.x, 0i) | 2147483647i);
    return 2076f;
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(364f + global1.a), global1.d.e.c.x, !(!select(true, !global1.d.d.x, global1.c)), Struct_2(4294967295u, global1.a, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global1.d.e.a.xy)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.d.e.a.x, -1324f)))))), global1.d.d, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-720f, global1.a, global1.a)), true, vec4<u32>(global1.b, 59255u, 4294967295u, u_input.b) << (abs(global1.d.e.c) % vec4<u32>(32u)))));
    let var_1 = arg_0.yx;
    var var_2 = 1i;
    let var_3 = global1.d.e;
    global0 = ~global1.b;
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, countOneBits(func_1(vec4<i32>(36557i, 1i, -14020i, -48206i))), _wgslsmith_mult_u32(_wgslsmith_mod_u32(global1.b, 21883u), ~4294967295u)), global1.d.e.c.xxz);
    let var_0 = select(select(vec3<bool>(all(vec3<bool>(false, global1.d.e.b, global1.c)), false, !any(global1.d.d)), global1.d.d.zyx, select(select(!global1.d.d.wzx, global1.d.d.ywz, true), global1.d.d.zxw, global1.c)), global1.d.d.wyw, false);
    global0 = 32499u;
    var var_1 = Struct_3(global1.a, _wgslsmith_dot_vec3_u32(~global1.d.e.c.yzw, global1.d.e.c.xzy), global1.d.d.x, global1.d);
    global0 = ~(~0u);
    let var_2 = ~(~func_1(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, -2147483647i, u_input.c.x, 15786i), -vec4<i32>(48053i, -5267i, -1i, -1i))));
    var var_3 = Struct_3(-750f, _wgslsmith_mult_u32(6933u, var_1.b), false, Struct_2(var_1.d.e.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1822f))), _wgslsmith_f_op_f32(global1.d.b + _wgslsmith_f_op_f32(func_2(global1.d.e.a.yy))), !(!(!vec4<bool>(global1.d.e.b, var_1.d.d.x, false, global1.c))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(1319f, var_1.d.e.a.x)), 936f, global1.a), true, global1.d.e.c)));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(var_2 >> (~var_2 % 32u)));
}

