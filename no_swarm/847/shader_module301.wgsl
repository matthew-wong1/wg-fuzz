struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 15>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<i32> {
    let var_0 = abs(abs(-1i)) & (~0i << (u_input.a % 32u));
    let var_1 = Struct_2(true, ~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, global0.a, global0.a), ~vec3<u32>(1u, u_input.a, 1u)), ~max(u_input.a, global0.a)), global1[_wgslsmith_index_u32(1u >> (reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.b.x, 9497u), ~global0.b)) % 32u), 15u)], global1[_wgslsmith_index_u32(global0.b.x, 15u)], _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.a, 4294967295u, global0.a), 4294967295u), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(global0.a, global0.b.x, 28886u, global0.a)), max(vec4<u32>(60025u, 1u, global0.a, 4294967295u), vec4<u32>(u_input.a, 0u, u_input.a, 4294967295u))), ~55836u, global0.b.x), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(119521u, 48017u, 4294967295u, 1u), vec4<u32>(u_input.a, 26477u, u_input.a, 21269u)), 4294967295u), 0u, ~reverseBits(u_input.a), _wgslsmith_div_u32(u_input.a, 4294967295u))));
    global1 = array<Struct_1, 15>();
    global1 = array<Struct_1, 15>();
    let var_2 = var_1;
    return -(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_2.c.c, 0i, -6705i), vec3<i32>(var_0, var_2.c.c, 1458i) | vec3<i32>(var_1.c.c, u_input.b.x, 21667i)), ~vec3<i32>(-61340i, var_2.c.c, global0.c)) ^ ~(-(vec3<i32>(var_0, 40951i, -66105i) | vec3<i32>(global0.c, -2539i, -21202i))));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: u32, arg_3: vec2<bool>) -> vec3<i32> {
    global0 = Struct_1(global0.a, vec2<u32>(_wgslsmith_add_u32(u_input.a, abs(~global0.a)), _wgslsmith_sub_u32(u_input.a, 8009u)), i32(-1i) * -u_input.b.x, select(global0.d, select(select(vec4<bool>(global0.d.x, true, global0.d.x, true), global0.d, select(false, global0.d.x, global0.d.x)), global0.d, (85621u >= arg_2) & false), global0.d));
    var var_0 = global0.d.x;
    var var_1 = global1[_wgslsmith_index_u32(0u, 15u)];
    var var_2 = arg_1;
    let var_3 = Struct_3(var_2.a, vec3<i32>(var_2.b.x, _wgslsmith_mod_i32(abs(0i), 1i), var_2.b.x), -1320f, !(!select(true, all(vec2<bool>(true, var_1.d.x)), -723f <= arg_1.c)));
    return vec3<i32>(_wgslsmith_mult_i32(~(-47806i), -1290i), -countOneBits(reverseBits(-6735i)), ~_wgslsmith_div_i32(-8519i, _wgslsmith_clamp_i32(u_input.b.x, select(u_input.b.x, -1i, false), -12426i)));
}

fn func_2() -> vec4<bool> {
    global1 = array<Struct_1, 15>();
    global0 = global1[_wgslsmith_index_u32(select(u_input.a, global0.b.x, global0.d.x), 15u)];
    var var_0 = Struct_3(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1505f * 697f))), Struct_3(max(-vec3<i32>(-13851i, 2147483647i, -24320i), vec3<i32>(global0.c, 1i, 0i)), func_3(), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1172f))), false), abs(~28109u), !select(select(vec2<bool>(global0.d.x, global0.d.x), global0.d.ww, vec2<bool>(true, false)), !global0.d.zz, select(true, true, false))), vec3<i32>((_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(global0.c, 1i)) | func_3().x) << (~(~59307u) % 32u), 2147483647i, _wgslsmith_add_i32(-2147483647i << (_wgslsmith_clamp_u32(u_input.a, global0.a, global0.a) % 32u), u_input.b.x)), _wgslsmith_f_op_f32(-928f + 1691f), any(!global0.d));
    let var_1 = Struct_2(!var_0.d != (firstLeadingBit(-36777i) < ~_wgslsmith_div_i32(29942i, global0.c)), 46451u, Struct_1(1u, vec2<u32>(u_input.a, 1u), -14425i, select(vec4<bool>(global0.d.x, !global0.d.x, global0.d.x, true), global0.d, !global0.d)), global1[_wgslsmith_index_u32(51747u >> (u_input.a % 32u), 15u)], _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, global0.b.x ^ 4294967295u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(u_input.a, 1u, 67307u))) & vec4<u32>(global0.a << (0u % 32u), 0u, _wgslsmith_mod_u32(9794u, global0.a), ~global0.b.x), firstTrailingBit(~_wgslsmith_sub_vec4_u32(vec4<u32>(global0.b.x, 16948u, 0u, u_input.a), vec4<u32>(global0.b.x, global0.a, global0.b.x, u_input.a)))));
    var var_2 = Struct_1(min(u_input.a, 45249u), select(global0.b, _wgslsmith_sub_vec2_u32(~(~global0.b), var_1.c.b), false), ~global0.c, global0.d);
    return !select(var_1.d.d, vec4<bool>(true, any(vec4<bool>(global0.d.x, false, var_0.d, true)), var_0.d, var_0.d), var_1.c.d);
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: vec2<bool>) -> Struct_3 {
    var var_0 = Struct_1(1u ^ global0.b.x, global0.b, 1i, func_2());
    var var_1 = ~firstTrailingBit(reverseBits(max(vec3<u32>(29612u, 0u, u_input.a), vec3<u32>(51676u, u_input.a, 0u))) << (vec3<u32>(12766u << (1u % 32u), global0.b.x, abs(var_0.a)) % vec3<u32>(32u)));
    let var_2 = arg_1.wy;
    var var_3 = Struct_3(select(select(vec3<i32>(u_input.b.x, 2147483647i, 29464i), arg_1.zxy, var_0.d.yxw) ^ (firstTrailingBit(arg_1.yxz) ^ vec3<i32>(-2147483647i, u_input.b.x, arg_0)), countOneBits(func_4(1091f, Struct_3(arg_1.wyw, vec3<i32>(arg_0, -853i, var_0.c), -1000f, true), 42487u, arg_2)) | firstTrailingBit(vec3<i32>(arg_1.x, var_0.c, 0i)), true), vec3<i32>(2147483647i, global0.c, u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1808f, -952f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-856f, 312f)))) - -1458f), !any(var_0.d.yy));
    var var_4 = 0i;
    return Struct_3(~var_3.a, vec3<i32>(~(i32(-1i) * -1i), arg_0, -11542i), 494f, !var_0.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec3<i32>(-1i) * -vec3<i32>(abs(u_input.b.x), 1425i, global0.c), vec3<i32>(global0.c & -(i32(-1i) * -6015i), abs(abs(select(0i, 47462i, true))), 22863i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(872f - _wgslsmith_f_op_f32(f32(-1f) * -956f))))), !global0.d.x);
    global1 = array<Struct_1, 15>();
    var_0 = func_1(abs(~_wgslsmith_sub_i32(firstTrailingBit(1i), -global0.c)), firstLeadingBit(countOneBits(-vec4<i32>(1i, u_input.b.x, -935i, u_input.b.x))) << (vec4<u32>(_wgslsmith_sub_u32(u_input.a, 37037u) >> (_wgslsmith_dot_vec2_u32(global0.b, global0.b) % 32u), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(22067u, 43972u)), ~global0.b), u_input.a, ~1u) % vec4<u32>(32u)), global0.d.zy);
    let var_1 = Struct_2(false, u_input.a, global1[_wgslsmith_index_u32(~1u, 15u)], Struct_1(max(6301u, _wgslsmith_sub_u32(firstTrailingBit(0u), max(u_input.a, u_input.a))), vec2<u32>(41357u, 4294967295u), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1012f * -442f) - -2249f), func_1(-15628i, vec4<i32>(var_0.b.x, var_0.a.x, u_input.b.x, 39093i) & vec4<i32>(u_input.b.x, global0.c, var_0.b.x, global0.c), vec2<bool>(false, var_0.d)), 0u | global0.b.x, !func_2().wy).x, vec4<bool>(!global0.d.x, all(!vec3<bool>(global0.d.x, true, global0.d.x)), true, false)), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, u_input.a, 1u, 4294967295u) & select(vec4<u32>(u_input.a, 13890u, global0.a, 4294967295u), vec4<u32>(global0.a, u_input.a, 4294967295u, global0.a), var_0.d), ~firstTrailingBit(vec4<u32>(1u, 4294967295u, global0.a, global0.a))), _wgslsmith_clamp_vec4_u32(vec4<u32>(firstLeadingBit(4294967295u), ~global0.b.x, abs(global0.a), u_input.a), ~vec4<u32>(global0.b.x, global0.a, global0.a, 1u), vec4<u32>(u_input.a, global0.b.x, 15679u, 24704u) & (vec4<u32>(44923u, 96457u, 66398u, global0.a) >> (vec4<u32>(4294967295u, 108573u, global0.a, u_input.a) % vec4<u32>(32u))))));
    global1 = array<Struct_1, 15>();
    var_0 = func_1(global0.c, _wgslsmith_mod_vec4_i32(~select(~vec4<i32>(global0.c, var_1.c.c, u_input.b.x, u_input.b.x), select(vec4<i32>(var_1.c.c, var_0.a.x, -2147483647i, -7973i), vec4<i32>(var_0.a.x, 0i, -2147483647i, var_1.d.c), var_0.d), !var_0.d), vec4<i32>(max(global0.c, 0i), var_1.d.c, ~(-4782i) ^ var_1.c.c, abs(_wgslsmith_sub_i32(var_0.a.x, 6400i)))), global0.d.yz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(689f, _wgslsmith_div_f32(var_0.c, 1032f), 1000f, _wgslsmith_f_op_f32(var_0.c + -1628f))) * vec4<f32>(var_0.c, _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.c, var_0.c), _wgslsmith_f_op_f32(1000f + 1925f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.c)) - _wgslsmith_f_op_f32(-119f + 537f)), 405f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1f, var_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + var_0.c)), var_1.c.d.x))), -firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(15395i, -10154i, -33386i), _wgslsmith_sub_vec3_i32(var_0.b, var_0.b))));
}

