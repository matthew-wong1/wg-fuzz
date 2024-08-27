struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: bool = true;

var<private> global2: array<vec2<f32>, 8>;

var<private> global3: vec3<bool>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> f32 {
    global2 = array<vec2<f32>, 8>();
    var var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(70106u, 49235u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.b), arg_1.a) & _wgslsmith_div_vec2_u32(arg_1.a, vec2<u32>(3896u, arg_1.a.x)), arg_1.a)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~arg_1.a.x, 43648u, u_input.b), ~vec4<u32>(30853u, 60394u, u_input.b, arg_1.a.x)), 0u ^ arg_1.a.x, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(arg_1.a, countOneBits(arg_1.a)), min(vec2<u32>(u_input.b, 1u), ~vec2<u32>(u_input.b, arg_1.a.x)))), vec3<u32>(reverseBits(~24744u >> (min(1u, 0u) % 32u)), 1u, min(_wgslsmith_dot_vec3_u32(vec3<u32>(56109u, u_input.b, 4294967295u) ^ vec3<u32>(arg_1.a.x, arg_1.a.x, 31674u), vec3<u32>(26649u, 57559u, arg_1.a.x) << (vec3<u32>(19989u, 0u, arg_1.a.x) % vec3<u32>(32u))), arg_1.a.x)));
    global1 = global3.x;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-368f + 621f) * -212f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(636f, 1499f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-373f)) * 1f))))));
    return -1505f;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_mult_vec2_u32(arg_1.a, vec2<u32>(61949u, ~arg_1.a.x));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c, arg_0.d.x) + 365f) * arg_0.a.x)) <= 2284f;
    let var_2 = ~(~u_input.a);
    let var_3 = vec2<i32>(var_2.x, _wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.a), ~vec3<i32>(1i, 1i, 1i) | u_input.a));
    global2 = array<vec2<f32>, 8>();
    return _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(31764u, ~arg_1.a.x, 22488u, ~0u), vec4<u32>(firstTrailingBit(var_0.x ^ var_0.x), var_0.x, _wgslsmith_sub_u32(0u << (arg_1.a.x % 32u), _wgslsmith_mult_u32(var_0.x, 4228u)), ~arg_1.a.x << (~u_input.b % 32u))), vec4<u32>(arg_1.a.x, ~4294967295u, 1u, _wgslsmith_div_u32(1u, ~0u) ^ u_input.b));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, _wgslsmith_f_op_f32(trunc(-1245f)), _wgslsmith_f_op_f32(-1000f * 1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1382f, 289f, -1452f)))))))));
    let var_1 = global0[_wgslsmith_index_u32(func_4(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(var_0.x + 122f), _wgslsmith_f_op_f32(func_3(vec2<i32>(-41282i, 2147483647i), global0[_wgslsmith_index_u32(arg_1.x, 14u)])))), u_input.a.x, _wgslsmith_f_op_f32(min(var_0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_0, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, var_0.x, -1498f), var_0))))), var_0.x), Struct_1(vec2<u32>(~arg_1.x, countOneBits(u_input.b)) | _wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.b), arg_1.yy, arg_1.zy)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-345f)) + _wgslsmith_f_op_f32(min(var_0.x, 2066f))), true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -311f))), -44393i, (u_input.a.zx << (vec2<u32>(u_input.b, 736u) % vec2<u32>(32u))) >> (vec2<u32>(~0u, countOneBits(arg_1.x)) % vec2<u32>(32u))), _wgslsmith_mod_vec2_i32(u_input.a.zz, vec2<i32>(i32(-1i) * -68582i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(0i, -20007i, u_input.a.x, -32929i)), -vec4<i32>(56418i, u_input.a.x, 2147483647i, u_input.a.x))))), 14u)];
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-631f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.c)) + var_0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_1.b))))), !(true | arg_2) != true));
    global0 = array<Struct_1, 14>();
    let var_3 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, 914f, -479f, 715f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, var_1.c, var_1.c, var_1.b), vec4<f32>(var_0.x, -905f, var_1.c, 214f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, var_2, var_1.c, var_2) + vec4<f32>(var_1.b, 320f, 606f, var_2))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1241f, var_1.c, var_2, 779f))), vec4<f32>(-292f, var_2, var_2, 944f), true)))), -2147483647i, var_1.b, var_0, _wgslsmith_f_op_f32(var_2 - 1000f));
    return var_3;
}

fn func_5(arg_0: i32, arg_1: vec3<i32>, arg_2: vec2<bool>, arg_3: Struct_2) -> i32 {
    global0 = array<Struct_1, 14>();
    global1 = true;
    global2 = array<vec2<f32>, 8>();
    global0 = array<Struct_1, 14>();
    global2 = array<vec2<f32>, 8>();
    return -firstLeadingBit(_wgslsmith_mod_i32(arg_0, -28378i));
}

fn func_1() -> Struct_2 {
    var var_0 = select(select(!(!(!vec4<bool>(global3.x, false, global3.x, global3.x))), select(select(!vec4<bool>(global3.x, true, global3.x, global3.x), !vec4<bool>(false, false, global3.x, global3.x), true), !vec4<bool>(false, global3.x, global3.x, false), true), true), vec4<bool>(all(!(!vec2<bool>(true, global3.x))), global3.x, global3.x, !global3.x), global3.x && any(!(!vec4<bool>(global3.x, false, global3.x, global3.x))));
    var var_1 = abs(vec2<i32>(func_5(1i, _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 69847i), u_input.a, -u_input.a), !global3.zy, func_2(!vec4<bool>(var_0.x, true, true, true), vec4<u32>(u_input.b, u_input.b, 49336u, u_input.b) | vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), var_0.x)), select(u_input.a.x ^ 1i, _wgslsmith_clamp_i32(~(-32708i), -75845i, ~0i), var_0.x)));
    let var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(4294967295u, 31084u), 14u)];
    global0 = array<Struct_1, 14>();
    let var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - var_2.c)), _wgslsmith_f_op_f32(max(-189f, -622f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c))))));
    return Struct_2(func_2(!select(!vec4<bool>(var_0.x, var_0.x, false, global3.x), vec4<bool>(global3.x, var_0.x, false, false), false && var_0.x), vec4<u32>(countOneBits(var_2.a.x), _wgslsmith_clamp_u32(35908u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, var_2.a.x, u_input.b), vec4<u32>(u_input.b, var_2.a.x, 80890u, var_2.a.x))), 132136u, ~20353u), true).a, var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1614f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.c, var_3.x, -891f), vec3<f32>(var_3.x, -661f, 697f)) * var_3) * var_3), _wgslsmith_f_op_f32(-386f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - var_3.x), _wgslsmith_f_op_f32(f32(-1f) * -162f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1065f, -866f, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -6293i), u_input.a.yz) | (u_input.a.x | -10655i), -2147483647i));
    var var_1 = func_1();
    let var_2 = vec4<u32>(_wgslsmith_sub_u32(1u, _wgslsmith_div_u32(_wgslsmith_div_u32(3119u, u_input.b) & u_input.b, _wgslsmith_sub_u32(firstLeadingBit(12145u), _wgslsmith_sub_u32(0u, u_input.b)))), _wgslsmith_add_u32(~u_input.b, u_input.b << (_wgslsmith_add_u32(abs(u_input.b), ~u_input.b) % 32u)), ~(~u_input.b), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(var_1.a))) - _wgslsmith_f_op_vec4_f32(var_1.a * vec4<f32>(var_1.e, -1000f, -1128f, var_1.a.x)))), var_2.xzw ^ var_2.zyx, _wgslsmith_clamp_i32(max(var_1.b, countOneBits(~u_input.a.x)), 55623i, -9163i));
}

