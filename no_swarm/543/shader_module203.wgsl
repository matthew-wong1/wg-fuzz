struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec4<i32>,
    e: bool,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec4<u32>;

var<private> global2: array<Struct_4, 32>;

var<private> global3: vec4<bool>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn func_3(arg_0: f32, arg_1: vec3<f32>) -> vec4<bool> {
    var var_0 = all(vec2<bool>(false, global0.x & global3.x));
    global3 = !(!select(vec4<bool>(!global3.x, all(global3.yy), any(vec4<bool>(global3.x, true, global0.x, global0.x)), -1925f != arg_1.x), !vec4<bool>(false, true, global3.x, global0.x), !vec4<bool>(global0.x, true, false, global0.x)));
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -(u_input.b & u_input.b), -1i | u_input.b) >> (~(~global1.zzy) % vec3<u32>(32u)), ~(vec3<i32>(_wgslsmith_clamp_i32(1i, -1i, u_input.b), 1i, u_input.b) >> (vec3<u32>(_wgslsmith_mod_u32(u_input.a, u_input.a), ~u_input.a, global1.x) % vec3<u32>(32u))));
    var var_2 = firstLeadingBit(vec2<i32>(0i & u_input.b, _wgslsmith_div_i32(var_1, -u_input.b)));
    var var_3 = global1.yyw;
    return vec4<bool>(global0.x, global3.x, all(select(select(!vec4<bool>(false, global0.x, true, false), !vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, true)), vec4<bool>(global0.x & global3.x, any(vec3<bool>(global3.x, true, true)), global3.x, !global0.x), vec4<bool>(any(vec4<bool>(global0.x, true, global3.x, global3.x)), true, true, false))), true);
}

fn func_2() -> vec2<bool> {
    global2 = array<Struct_4, 32>();
    global3 = !select(!vec4<bool>(true, true, global3.x, global3.x), !(!vec4<bool>(true, true, global0.x, global0.x)), select(vec4<bool>(any(global3.zz), all(vec4<bool>(global3.x, global0.x, true, true)), !global0.x, true), vec4<bool>(global0.x, true, any(vec4<bool>(global3.x, true, true, global0.x)), true), false));
    let var_0 = !func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-654f, -1132f, true)) + _wgslsmith_f_op_f32(-427f * 988f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -347f) + -132f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1228f, 2211f, 273f), vec3<f32>(-1000f, 194f, 593f), all(global3.xyx)))));
    global3 = vec4<bool>(true, true, true, any(select(vec2<bool>(true, global3.x), !select(vec2<bool>(global3.x, false), vec2<bool>(false, global0.x), vec2<bool>(global3.x, false)), !global0.x)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) * _wgslsmith_f_op_f32(floor(193f))) + _wgslsmith_f_op_f32(round(-1844f))) + _wgslsmith_div_f32(-482f, -1320f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1f)) * 1f));
    return func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-755f))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(305f * -901f)))), -315f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1299f, _wgslsmith_f_op_f32(floor(1279f))))))).yx;
}

fn func_1(arg_0: i32, arg_1: vec2<u32>) -> bool {
    var var_0 = true;
    let var_1 = Struct_1(1i, vec3<bool>(global3.x, true, !global0.x), vec3<bool>(all(func_2()), all(vec4<bool>(global0.x && global3.x, true, true, false)), !select(true, true, global0.x || false)), all(!(!vec3<bool>(true, global3.x, false))));
    var var_2 = countOneBits(1u);
    var_2 = arg_1.x;
    let var_3 = var_1;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(global1.xy);
    var var_1 = (true != func_1(u_input.b, global1.yw)) & !(!func_1(-12635i, ~vec2<u32>(var_0.x, var_0.x)));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1420f, 475f, 465f) - vec3<f32>(-1348f, 1235f, 919f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 848f, -1511f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1210f, -1874f, -427f), vec3<f32>(963f, 457f, -288f))), vec3<f32>(_wgslsmith_f_op_f32(sign(-952f)), _wgslsmith_f_op_f32(-584f * 519f), 1179f), false))) * vec3<f32>(_wgslsmith_div_f32(-1391f, _wgslsmith_f_op_f32(f32(-1f) * -1115f)), -747f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-328f))) - _wgslsmith_div_f32(-155f, 1403f))));
    let var_3 = ~_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(~global1.x, 1u, 19313u)), global1.ywz, ~(vec3<u32>(1u, 27855u, 0u) | _wgslsmith_mod_vec3_u32(global1.xzz, vec3<u32>(u_input.a, global1.x, u_input.a))));
    var var_4 = Struct_1(_wgslsmith_mult_i32(u_input.b, ~(~(~2147483647i))), vec3<bool>(global3.x, -499f == var_2.x, global3.x), vec3<bool>(global3.x, global3.x, false), _wgslsmith_div_i32(-22009i, _wgslsmith_sub_i32(-u_input.b, ~(-4656i))) <= abs(_wgslsmith_clamp_i32(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b)), firstTrailingBit(-58943i))));
    var var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1932f, 1277f, var_2.x) - vec3<f32>(-392f, 704f, var_2.x))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.x, var_2.x, var_2.x)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(729f, 579f)) - 670f), _wgslsmith_f_op_f32(f32(-1f) * -163f), var_2.x)));
    var var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-616f, _wgslsmith_f_op_f32(min(359f, var_2.x))))))));
    var var_7 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(select(countOneBits(vec4<u32>(0u, var_3.x, var_0.x, 4294967295u)), ~vec4<u32>(var_0.x, 0u, global1.x, 0u), select(vec4<bool>(global3.x, true, true, global0.x), vec4<bool>(global0.x, global0.x, true, global3.x), true))), abs(~vec4<u32>(4294967295u, 13810u, u_input.a, 4294967295u) >> ((vec4<u32>(var_3.x, 0u, 32429u, 4294967295u) & vec4<u32>(15478u, var_3.x, 1u, global1.x)) % vec4<u32>(32u)))), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, _wgslsmith_dot_vec2_u32(global1.zz, var_0), _wgslsmith_add_u32(var_3.x, var_0.x)), global1.zzx), 28266u)), 32u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-888f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1109f - -380f), _wgslsmith_f_op_f32(trunc(-650f)), var_4.d)))), vec2<u32>(reverseBits(~u_input.a), 1u), var_0.x, vec2<i32>(countOneBits(77985i), _wgslsmith_clamp_i32(-var_4.a, 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(13256i, var_4.a), vec2<i32>(-2147483647i, var_4.a))) | countOneBits(u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-272f))) - var_2.x) * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1642f, -1449f, true)), _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_2.x, var_2.x)), _wgslsmith_f_op_f32(exp2(var_2.x)))))));
}

