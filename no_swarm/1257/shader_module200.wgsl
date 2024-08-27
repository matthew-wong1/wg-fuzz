struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec2<bool>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 21>;

var<private> global1: vec3<f32> = vec3<f32>(2092f, -662f, -1168f);

var<private> global2: vec3<i32>;

var<private> global3: array<i32, 22> = array<i32, 22>(-32781i, 1i, -1i, -58350i, 2147483647i, 9476i, -1i, 16627i, 2147483647i, i32(-2147483648), 2147483647i, -9561i, -22417i, -707i, i32(-2147483648), -8618i, -4226i, 48352i, 32635i, 12728i, 9457i, 0i);

var<private> global4: array<vec4<bool>, 29> = array<vec4<bool>, 29>(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(select(vec4<bool>(-12036i == max(global3[_wgslsmith_index_u32(u_input.a, 22u)], -2147483647i), select(true, true, 4294967295u <= u_input.a), true, false), global4[_wgslsmith_index_u32(~(~4294967295u) | (u_input.a >> (u_input.a % 32u)), 29u)], any(select(vec2<bool>(true, true), vec2<bool>(false, true), !global0[_wgslsmith_index_u32(u_input.a, 21u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global1.x + global1.x), _wgslsmith_f_op_f32(round(global1.x))))), !vec2<bool>(any(vec3<bool>(true, true, true)), select(true, true, true)), !select(false, any(select(global4[_wgslsmith_index_u32(4294967295u, 29u)], vec4<bool>(false, false, true, true), true)), true));
    let var_1 = Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.x, -682f))))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1410f)), var_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(572f * -111f) * _wgslsmith_f_op_f32(trunc(107f)))), all(select(select(global0[_wgslsmith_index_u32(u_input.a, 21u)], vec2<bool>(false, true), var_0.a.x), select(vec2<bool>(false, true), var_0.a.xz, var_0.c), global0[_wgslsmith_index_u32(min(37570u, 1u), 21u)])))), !(!var_0.a.zy), !(var_0.b.x > _wgslsmith_f_op_f32(sign(var_0.b.x))));
    let var_2 = var_0;
    var var_3 = !select(vec2<bool>(false, any(var_2.a.wxx) & false), var_2.a.zy, true);
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(var_1.b.x + -1702f)), -1142f)), _wgslsmith_f_op_f32(select(-1000f, global1.x, all(select(select(var_0.a.zz, vec2<bool>(var_2.d, false), vec2<bool>(true, var_3.x)), var_0.c, var_1.a.xy)))));
    return 0u;
}

fn func_2(arg_0: vec4<f32>) -> bool {
    let var_0 = Struct_1(select(select(global4[_wgslsmith_index_u32(1u, 29u)], vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, false, true), global4[_wgslsmith_index_u32(u_input.a, 29u)]), arg_0.xx, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_3(), ~40916u), 21u)], true | !(!any(vec3<bool>(false, false, false))));
    var var_1 = ~countOneBits(~_wgslsmith_add_u32(_wgslsmith_sub_u32(16311u, u_input.a), _wgslsmith_add_u32(u_input.a, u_input.a)));
    let var_2 = var_0;
    var var_3 = var_2;
    global2 = ~vec3<i32>(u_input.b.x, u_input.c | global2.x, _wgslsmith_sub_i32(2147483647i, abs(7179i)) >> (_wgslsmith_mult_u32(select(20697u, u_input.a, var_3.a.x), 37361u) % 32u));
    return all(select(var_2.c, var_3.a.xw, true));
}

fn func_1() -> vec2<f32> {
    let var_0 = vec4<f32>(-1000f, _wgslsmith_f_op_f32(floor(global1.x)), global1.x, global1.x);
    global2 = select(~vec3<i32>(global2.x, u_input.b.x, -_wgslsmith_mult_i32(-17358i, u_input.c)), firstLeadingBit(vec3<i32>(u_input.b.x & max(global2.x, global2.x), -(~global2.x), -25281i)), vec3<bool>(!all(vec2<bool>(true, true)), true, !func_2(var_0)));
    let var_1 = vec3<i32>(-6403i, select(~64456i, global2.x, !select(all(vec3<bool>(true, true, true)), true, all(vec4<bool>(false, false, true, false)))), firstLeadingBit(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.a, select(37916u, u_input.a, false)), firstTrailingBit(_wgslsmith_mult_u32(4294967295u, u_input.a)), 4294967295u), 22u)]));
    var var_2 = abs(var_1);
    var_2 = vec3<i32>(i32(-1i) * -(~_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(global2.x, -25322i))), global2.x, 2147483647i);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global1.x * var_0.x), -201f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1010f, 1000f)) - var_0.yy)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!(!(!global4[_wgslsmith_index_u32(~130332u, 29u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1())), global0[_wgslsmith_index_u32(15728u, 21u)], !select(true, true, any(!global0[_wgslsmith_index_u32(u_input.a, 21u)])));
    let var_1 = firstLeadingBit(vec4<u32>(10328u, 48925u, 19565u, _wgslsmith_clamp_u32(~35593u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 106373u, u_input.a, u_input.a) << (vec4<u32>(0u, 49408u, 4294967295u, u_input.a) % vec4<u32>(32u)), abs(vec4<u32>(u_input.a, 27824u, 0u, 4294967295u))), abs(~12035u))));
    global0 = array<vec2<bool>, 21>();
    global0 = array<vec2<bool>, 21>();
    global4 = array<vec4<bool>, 29>();
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.b.x)), 212f, _wgslsmith_f_op_f32(min(-1000f, -396f))))))));
    global0 = array<vec2<bool>, 21>();
    let var_3 = !select(var_0.a.wxw, !vec3<bool>(true, var_0.c.x, var_0.c.x), any(select(!var_0.a.yzw, select(vec3<bool>(var_0.d, true, false), var_0.a.ywy, vec3<bool>(true, var_0.a.x, var_0.c.x)), 299f <= var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(step(var_2.x, -1000f)), _wgslsmith_f_op_f32(-1131f - var_0.b.x), _wgslsmith_f_op_f32(-2372f + 2273f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -526f), 926f, _wgslsmith_f_op_f32(-global1.x), -1281f))))));
}

