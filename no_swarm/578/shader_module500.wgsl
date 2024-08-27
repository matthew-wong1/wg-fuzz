struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-2557f, Struct_1(vec2<bool>(false, true)), false, 2157u, 27181u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_2) -> i32 {
    let var_0 = !select(!select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, true, arg_1), vec4<bool>(global0.b.a.x, false, arg_2.b.a.x, false), vec4<bool>(true, true, arg_1, true)), true), !select(select(vec4<bool>(arg_2.b.a.x, global0.c, arg_2.c, global0.c), vec4<bool>(arg_2.b.a.x, true, true, arg_2.b.a.x), false), vec4<bool>(false, arg_2.c, false, arg_1), vec4<bool>(true, global0.c, arg_1, true)), select(!vec4<bool>(global0.c, false, true, true), vec4<bool>(all(arg_2.b.a), arg_1, any(vec4<bool>(false, arg_2.c, true, false)), false), select(!vec4<bool>(true, arg_2.c, false, arg_1), select(vec4<bool>(true, arg_1, arg_1, false), vec4<bool>(true, global0.b.a.x, arg_2.c, true), global0.c), select(vec4<bool>(true, false, arg_2.b.a.x, false), vec4<bool>(global0.c, true, global0.c, global0.b.a.x), vec4<bool>(true, global0.c, arg_2.b.a.x, false)))));
    global0 = arg_2;
    var var_1 = _wgslsmith_add_u32(reverseBits(global0.d), ~(~0u));
    var_1 = ~4294967295u;
    var var_2 = Struct_3(Struct_2(global0.a, Struct_1(vec2<bool>(u_input.a < u_input.a, !var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)) > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2341f * global0.a), -601f)), ~(~_wgslsmith_sub_u32(44796u, 36597u)), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(35296u, 1u, arg_2.d, 34419u) ^ vec4<u32>(global0.e, u_input.a, arg_0, 1u), vec4<u32>(arg_0, arg_2.d, 27607u, global0.e)))), _wgslsmith_add_vec4_u32(~(~(~vec4<u32>(u_input.a, 4294967295u, 25068u, 65830u))), vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(82624u, 32545u), vec2<u32>(global0.e, 4294967295u) >> (vec2<u32>(arg_0, 35402u) % vec2<u32>(32u))), 19995u, ~4294967295u, _wgslsmith_add_u32(_wgslsmith_mod_u32(18449u, 29006u), abs(71150u)))));
    return 1i;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: f32, arg_3: i32) -> u32 {
    let var_0 = Struct_1(global0.b.a);
    global0 = Struct_2(_wgslsmith_f_op_f32(499f + 440f), Struct_1(vec2<bool>(arg_0 & arg_1, -50953i != max(u_input.c, -2147483647i))), any(vec4<bool>(false, false, _wgslsmith_f_op_f32(arg_2 + 1621f) <= _wgslsmith_f_op_f32(-1379f + 331f), select(true, arg_0, any(vec4<bool>(arg_0, arg_1, arg_0, true))))), global0.d, ~u_input.a);
    let var_1 = Struct_3(Struct_2(arg_2, Struct_1(vec2<bool>(global0.b.a.x, true)), _wgslsmith_dot_vec3_u32(vec3<u32>(33721u, u_input.b, 53871u) << (vec3<u32>(u_input.b, u_input.b, 26803u) % vec3<u32>(32u)), abs(vec3<u32>(0u, 22908u, u_input.a))) <= abs(~1u), max(0u >> (u_input.a % 32u), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(56663u, 2189u), vec2<u32>(u_input.a, u_input.a)))), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, global0.e, 1u), vec3<u32>(u_input.b, 18733u, global0.d), vec3<u32>(u_input.b, u_input.b, 63564u)), ~vec3<u32>(u_input.a, u_input.b, 41105u)) >> (u_input.a % 32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a << (global0.e % 32u), firstTrailingBit(~25051u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.d, 1u, global0.e), vec3<u32>(0u, 4294967295u, global0.d)), ~countOneBits(u_input.b)), vec4<u32>(3689u, ~u_input.b, global0.d, global0.e)));
    var var_2 = -9954i;
    global0 = var_1.a;
    return 45174u;
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_2(1287f, global0.b, true, abs(reverseBits(u_input.a)), firstTrailingBit(56253u));
    let var_1 = countOneBits(_wgslsmith_mod_vec4_i32(reverseBits(-vec4<i32>(u_input.c, -33252i, -16944i, 2147483647i)), select(vec4<i32>(arg_0, u_input.c, 1i, u_input.c), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -1143i, 15664i, 21471i), vec4<i32>(u_input.c, u_input.c, 2147483647i, arg_0)), -536f != var_0.a)) << (_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(5746u, var_0.d, 86329u, u_input.b) & vec4<u32>(4294967295u, var_0.d, global0.d, u_input.b), vec4<u32>(var_0.e, var_0.e, 1u, 53762u)), firstLeadingBit(~vec4<u32>(u_input.a, u_input.b, 4294967295u, u_input.b))) % vec4<u32>(32u)));
    global0 = var_0;
    global0 = Struct_2(149f, global0.b, true, min(u_input.a, ~4294967295u), func_4(!(!var_0.c), all(!(!vec3<bool>(global0.c, global0.c, var_0.c))), var_0.a, -max(func_3(var_0.e, true, var_0), -2147483647i)));
    global0 = var_0;
    return Struct_1(!global0.b.a);
}

fn func_1(arg_0: Struct_3, arg_1: vec4<u32>) -> i32 {
    global0 = arg_0.a;
    global0 = arg_0.a;
    global0 = Struct_2(_wgslsmith_f_op_f32(floor(arg_0.a.a)), func_2(u_input.c), global0.c, max(~_wgslsmith_add_u32(func_4(global0.c, global0.c, -1554f, 40533i), u_input.b), _wgslsmith_div_u32(global0.d, ~(28693u << (u_input.a % 32u)))), ~max(0u, ~u_input.a >> (_wgslsmith_mult_u32(arg_0.b.x, 1u) % 32u)));
    let var_0 = global0.a;
    let var_1 = Struct_1(vec2<bool>(arg_0.a.b.a.x, all(!vec4<bool>(true, true, false, global0.c))));
    return _wgslsmith_add_i32(u_input.c | (u_input.c << (~(~0u) % 32u)), max(-1i, u_input.c << (11890u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max((-(~vec2<i32>(u_input.c, u_input.c)) | vec2<i32>(func_1(Struct_3(Struct_2(-1515f, global0.b, true, u_input.b, global0.d), vec4<u32>(u_input.a, 4294967295u, u_input.b, u_input.a)), vec4<u32>(global0.d, 1u, 12746u, u_input.b)), _wgslsmith_sub_i32(-2147483647i, u_input.c))) << (vec2<u32>(4294967295u, 25740u) % vec2<u32>(32u)), vec2<i32>(-45028i, 0i & u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global0.a - global0.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-327f)))), global0.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, 1000f, 713f, global0.a)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1019f, global0.a, global0.a, global0.a)))))), _wgslsmith_dot_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 27888i, u_input.c) & vec4<i32>(var_0.x, var_0.x, var_0.x, u_input.c), ~vec4<i32>(var_0.x, var_0.x, 1i, -25049i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-43556i, var_0.x, var_0.x, var_0.x) & vec4<i32>(u_input.c, var_0.x, u_input.c, 23438i), vec4<i32>(-1i) * -vec4<i32>(16771i, u_input.c, u_input.c, var_0.x))));
}

