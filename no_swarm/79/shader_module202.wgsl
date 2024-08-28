struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<i32>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(116161u, 0u);

var<private> global1: Struct_1;

var<private> global2: vec4<u32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1023f, _wgslsmith_f_op_f32(-global1.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, -494f))), select(vec2<bool>(true, true), !vec2<bool>(false, global1.d), select(vec2<bool>(global1.a, true), vec2<bool>(global1.d, global1.a), false)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -397f), 1000f), !(!(!vec2<bool>(global1.a, global1.d))))), global2.x, max(-59344i, 1i), Struct_1(~(-2147483647i) <= _wgslsmith_dot_vec3_i32(vec3<i32>(global1.c.x, 0i, u_input.c.x) >> (vec3<u32>(global2.x, global2.x, global1.e.x) % vec3<u32>(32u)), vec3<i32>(global1.c.x, 64779i, global1.c.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(111f + 1497f) - _wgslsmith_div_f32(834f, 1000f)))), global1.c, true, ~u_input.e), Struct_2(!(!vec4<bool>(false, global1.d, global1.a, global1.a))));
    global1 = var_0.d;
    return var_0.e;
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = func_2();
    return Struct_1((~global0.x > global2.x) & all(!vec3<bool>(var_0.a.x, false, false)), _wgslsmith_f_op_f32(-global1.b), vec4<i32>(min(~2147483647i, u_input.c.x), 1i, _wgslsmith_dot_vec3_i32(~vec3<i32>(global1.c.x, global1.c.x, 46658i), global1.c.yxx), ~(i32(-1i) * -67693i)) & -vec4<i32>(_wgslsmith_sub_i32(u_input.c.x, 0i), 2641i | u_input.c.x, min(-2147483647i, arg_0), _wgslsmith_div_i32(66986i, -8641i)), any(var_0.a.zx), u_input.b.wwx);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec4<f32>) -> vec4<bool> {
    global1 = Struct_1(global1.a, arg_0.b, ~(-arg_0.c), !arg_0.d, _wgslsmith_mod_vec3_u32(~vec3<u32>(global1.e.x, 0u, arg_0.e.x) | _wgslsmith_mod_vec3_u32(global1.e, vec3<u32>(global0.x, 0u, 46796u)), vec3<u32>(_wgslsmith_mult_u32(arg_0.e.x, 7697u), 0u, 74529u)) & vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0.e.x, u_input.b.x, global2.x) | u_input.b, ~vec4<u32>(4294967295u, arg_0.e.x, global0.x, 23904u)), ~19777u, min(abs(1u), ~0u)));
    global1 = arg_0;
    let var_0 = vec3<bool>(global1.a, arg_1 <= 6452i, true);
    global0 = ~(func_1(-18897i).e.zx & u_input.e.xz);
    var var_1 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(arg_0.b * 2467f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1268f, global1.b)) * global1.b), global1.b));
    return !select(!select(vec4<bool>(true, arg_0.d, arg_0.a, false), !vec4<bool>(false, global1.a, false, false), true), !(!(!vec4<bool>(false, global1.d, var_0.x, true))), global1.a);
}

fn func_4(arg_0: vec4<bool>) -> Struct_1 {
    global2 = u_input.b;
    global1 = func_1(~(i32(-1i) * -93170i) << (~(~(~4294967295u)) % 32u));
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, global1.b, global1.b)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, -397f, global1.b)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1483f * global1.b), 1752f, global1.b)))));
    let var_1 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(-1117f + _wgslsmith_f_op_f32(sign(global1.b))), _wgslsmith_f_op_f32(f32(-1f) * -307f)));
    global1 = func_1(_wgslsmith_dot_vec4_i32(-global1.c, vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(u_input.c.x, -2147483647i, global1.c.x, u_input.c.x))));
    return func_1(u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.b, _wgslsmith_f_op_f32(abs(global1.b)), global1.b)));
    global1 = func_4(select(select(func_3(func_1(-29094i), -2147483647i, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.b, 1063f, 1795f, var_0.x), vec4<f32>(371f, 1665f, -666f, global1.b)))), vec4<bool>(true, true, 59383u < u_input.b.x, u_input.d.x > 4294967295u), true), vec4<bool>(func_3(Struct_1(true, 1235f, vec4<i32>(global1.c.x, global1.c.x, 24639i, 2147483647i), global1.d, vec3<u32>(40931u, global2.x, 4294967295u)), reverseBits(u_input.c.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, global1.b, 1334f), vec4<f32>(global1.b, -618f, global1.b, var_0.x), global1.d))).x, true, global1.d, !any(vec4<bool>(true, true, true, true))), global1.a));
    var var_1 = _wgslsmith_sub_i32(u_input.c.x, (_wgslsmith_add_i32(~global1.c.x, i32(-1i) * -28329i) >> (global1.e.x % 32u)) & countOneBits(u_input.c.x));
    let var_2 = ~(i32(-1i) * -2147483647i);
    global1 = func_4(func_2().a);
    let x = u_input.a;
    s_output = StorageBuffer(0u, vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-244f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(func_4(vec4<bool>(true, true, false, false)).b)), global1.b)), _wgslsmith_div_f32(global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) - _wgslsmith_f_op_f32(sign(-599f)))), -1387f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) - -1000f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -309f)))));
}

