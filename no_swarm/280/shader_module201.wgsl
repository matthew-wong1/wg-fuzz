struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<bool>(true, false, true, false), 23951u));

var<private> global2: Struct_1 = Struct_1(vec4<bool>(false, false, false, false), 23976u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: vec2<bool>) -> vec4<u32> {
    global1 = arg_1;
    let var_0 = vec4<u32>(~(~select(~15872u, 0u, global1.a.b >= 74819u)), global1.a.b, ~(min(4294967295u, global1.a.b) | ~10430u) >> (firstTrailingBit(0u) % 32u), 4294967295u);
    let var_1 = vec4<u32>(~4294967295u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_1.a.b, var_0.x) >> (~firstTrailingBit(16686u) % 32u), abs(34092u)), ~4294967295u, min(~arg_1.a.b, 0u));
    let var_2 = Struct_1(!vec4<bool>(select(global2.a.x, arg_2.x, global1.a.a.x), global2.a.x, !all(global2.a), (4294967295u >> (global1.a.b % 32u)) <= (global2.b ^ 1u)), ~22258u);
    var var_3 = global0.x;
    return var_0;
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> vec4<f32> {
    global0 = abs(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, u_input.a.x, u_input.a.x), global0.wyw), firstTrailingBit(0i), ~u_input.a.x), u_input.a) << (~(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.b.x, 1u, global1.a.b), vec4<u32>(0u, 40488u, arg_0.a.b, 0u))) % vec4<u32>(32u)));
    let var_0 = 12045i;
    var var_1 = select(select(select(select(!global1.a.a.yz, select(global1.a.a.wz, global2.a.zx, false), select(vec2<bool>(true, arg_1), vec2<bool>(true, global1.a.a.x), false)), select(global1.a.a.wz, global1.a.a.zx, select(vec2<bool>(false, true), vec2<bool>(global1.a.a.x, true), global2.a.zy)), vec2<bool>(true, select(false, false, global2.a.x))), vec2<bool>(_wgslsmith_add_i32(var_0, global0.x) <= max(global0.x, 0i), arg_0.a.a.x), true), vec2<bool>(true, true), arg_1);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1337f, _wgslsmith_f_op_f32(-1151f - _wgslsmith_f_op_f32(round(-1576f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2036f + 587f), -967f)))));
    var var_3 = abs(4294967295u);
    return vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-293f * 509f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1509f, -504f))))))), _wgslsmith_f_op_f32(f32(-1f) * -1156f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(359f))))) * -1135f), _wgslsmith_f_op_f32(max(-427f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(482f, 352f)), _wgslsmith_f_op_f32(f32(-1f) * -105f)), -511f)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: vec4<f32>) -> vec3<bool> {
    global2 = Struct_1(!arg_0.a.a, abs(arg_0.a.b));
    let var_0 = arg_1;
    global2 = Struct_1(arg_0.a.a, (_wgslsmith_dot_vec4_u32(max(vec4<u32>(global1.a.b, arg_1.a.b, 11347u, 28310u), vec4<u32>(1u, 0u, global1.a.b, global1.a.b)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u, arg_0.a.b, arg_1.a.b), vec4<u32>(arg_1.a.b, global2.b, 25425u, global2.b))) & ~u_input.b.x) >> (_wgslsmith_div_u32(~20778u, arg_0.a.b) % 32u));
    let var_1 = Struct_2(Struct_1(!(!select(arg_0.a.a, vec4<bool>(arg_2.x, global1.a.a.x, false, arg_2.x), var_0.a.a)), arg_1.a.b & firstTrailingBit(~4294967295u)));
    return vec3<bool>(arg_1.a.a.x, !(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(14949u, 4294967295u, arg_1.a.b), vec3<u32>(0u, 1u, global1.a.b)), vec3<u32>(arg_1.a.b, 1134u, 19003u) ^ vec3<u32>(u_input.b.x, 0u, 0u)) < select(~58055u, _wgslsmith_sub_u32(17981u, 12579u), any(var_0.a.a.ww))), any(!select(vec3<bool>(arg_2.x, global2.a.x, true), vec3<bool>(arg_2.x, var_1.a.a.x, false), select(vec3<bool>(global2.a.x, true, var_0.a.a.x), vec3<bool>(false, false, arg_1.a.a.x), false))));
}

fn func_2() -> Struct_2 {
    var var_0 = any(vec4<bool>(true & all(vec2<bool>(global1.a.a.x, global2.a.x)), all(select(vec2<bool>(true, true), !global1.a.a.wz, global2.a.ww)), global1.a.a.x, true));
    var_0 = any(func_4(Struct_2(Struct_1(vec4<bool>(false, global1.a.a.x, global2.a.x, global1.a.a.x), 72623u)), Struct_2(Struct_1(global1.a.a, u_input.b.x)), global1.a.a, _wgslsmith_f_op_vec4_f32(func_3(Struct_2(global1.a), true)))) | !select((global1.a.b | global2.b) == _wgslsmith_mod_u32(global1.a.b, 58407u), true || (false == global1.a.a.x), all(select(global1.a.a.xwy, vec3<bool>(false, false, false), true)));
    var var_1 = Struct_2(Struct_1(global2.a, ~1u));
    let var_2 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -305f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1000f, 1654f)))))), -963f);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.x, var_2.x, 665f, -834f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(Struct_1(var_1.a.a, 35093u)), true)) - vec4<f32>(1065f, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -2385f), _wgslsmith_f_op_f32(ceil(var_2.x))))));
    return Struct_2(global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global1.a.b, 0u, 36697u, 8194u), vec4<u32>(global1.a.b, 53562u, 1u, 17190u)), vec4<u32>(1u, 54269u, 33241u, 1666u)), select(vec4<u32>(u_input.b.x, global2.b, global1.a.b, 33635u), func_1(global2.a.x, Struct_2(global1.a), vec2<bool>(false, false)), select(true, false, false))), _wgslsmith_add_vec4_u32(~(vec4<u32>(global1.a.b, global2.b, global1.a.b, u_input.b.x) & vec4<u32>(global2.b, global1.a.b, 4294967295u, u_input.b.x)), vec4<u32>(~global1.a.b, 4294967295u, 86684u << (global2.b % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(global2.b, global1.a.b, 4294967295u), vec3<u32>(global2.b, global1.a.b, 1u)))));
    let var_1 = select(global1.a.a.xyz, vec3<bool>(true, global2.a.x, any(global1.a.a)), global1.a.a.x);
    let var_2 = vec3<u32>(~func_1(!(false & global2.a.x), func_2(), global2.a.zw).x, 4294967295u, ~20411u);
    global0 = u_input.a ^ ~vec4<i32>(29319i, global0.x, _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-1539i, u_input.a.x, -1i)), vec3<i32>(global0.x, global0.x, u_input.a.x)), -18024i);
    var var_3 = func_2();
    var var_4 = !(!var_1.x);
    let var_5 = global1.a;
    let var_6 = vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a | u_input.a), _wgslsmith_sub_i32(u_input.a.x ^ 2147483647i, _wgslsmith_add_i32(-26629i, u_input.a.x)), -44447i, u_input.a.x)), _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.a.x, 1i), global0.x ^ countOneBits(_wgslsmith_div_i32(104642i, 1i))), -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(select(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, global0.x, global0.x), ~u_input.a.wxz), vec3<i32>(~var_6.x, firstTrailingBit(~global0.x), max(select(-1i, -13304i, var_1.x), 92491i)), select(global1.a.a.x, global1.a.a.x, false)), global2.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_2(global1.a), false)).x), 1456f, 2102f, -788f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2218f, 1852f, -2242f, -166f), vec4<f32>(-1745f, -776f, -214f, -368f), var_3.a.a)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-490f, 925f, -1252f, -756f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(286f, -106f)), -1598f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(820f - -424f)))), 697f, -1527f, _wgslsmith_f_op_f32(f32(-1f) * -583f)));
}

