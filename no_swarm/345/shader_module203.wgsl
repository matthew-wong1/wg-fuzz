struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(~vec2<i32>(~(-1i), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-3390i, -19032i), -u_input.b, u_input.b)), -37694i & -min(1i, -u_input.b), 1000f);
    let var_1 = var_0;
    var var_2 = var_0.c;
    var var_3 = Struct_1(var_0.a, 2147483647i, _wgslsmith_f_op_f32(abs(var_0.c)));
    var var_4 = var_1;
    return _wgslsmith_f_op_f32(abs(-601f));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = Struct_1(-vec2<i32>(countOneBits(-76091i ^ u_input.b), ~(-19780i ^ arg_0.b)), u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))));
    let var_1 = vec3<i32>(1i, arg_0.a.x, -26499i);
    let var_2 = countOneBits(~countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(u_input.a, 0u)) >> (~arg_2 % 32u)));
    var var_3 = arg_1;
    var_0 = Struct_1(_wgslsmith_add_vec2_i32(arg_0.a, _wgslsmith_sub_vec2_i32(vec2<i32>(1i, abs(-1i)), vec2<i32>(firstTrailingBit(-2147483647i), var_3.a.x))), var_0.a.x, arg_1.c);
    return ~select(select(~(~vec4<u32>(0u, 4294967295u, 1u, var_2)), ~vec4<u32>(arg_2, arg_2, 31880u, u_input.a) >> (vec4<u32>(4353u, u_input.a, u_input.a, var_2) % vec4<u32>(32u)), !(arg_3.c > 1469f)), abs(abs(vec4<u32>(arg_2, u_input.a, var_2, u_input.a))), vec4<bool>(false, true, any(vec4<bool>(false, true, true, false)) & (u_input.a <= 0u), all(vec3<bool>(true, false, false))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<u32>) -> i32 {
    let var_0 = abs(abs(~(~vec3<i32>(17604i, -15338i, u_input.b))));
    var var_1 = -1i;
    var var_2 = ~_wgslsmith_sub_u32(_wgslsmith_div_u32(1u | (4294967295u | u_input.a), 2766u), arg_0.x);
    var var_3 = !(!(~4294967295u > ~u_input.a) && false);
    let var_4 = vec2<i32>(countOneBits(~(-13792i)), firstLeadingBit(u_input.b) | _wgslsmith_mult_i32(u_input.b, var_0.x));
    return _wgslsmith_sub_i32(-var_0.x, var_4.x);
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = true;
    var_0 = any(vec2<bool>(true, true));
    var var_1 = Struct_1(vec2<i32>(_wgslsmith_add_i32(-27307i, func_4(func_2(Struct_1(vec2<i32>(2147483647i, arg_0), 1i, 1811f), Struct_1(vec2<i32>(arg_0, -2147483647i), arg_0, 639f), 3159u, Struct_1(vec2<i32>(-2147483647i, arg_0), -2147483647i, 520f)), vec2<u32>(0u, u_input.a) >> (vec2<u32>(64676u, 10620u) % vec2<u32>(32u)))), ~(~(-14450i))), -1i << (_wgslsmith_dot_vec2_u32(~(vec2<u32>(u_input.a, 23352u) >> (vec2<u32>(0u, 1u) % vec2<u32>(32u))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, 1u))) % 32u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2428f)) - _wgslsmith_f_op_f32(f32(-1f) * -1061f)))));
    var_0 = any(!vec3<bool>(true, true == (0u == u_input.a), select(0u, u_input.a, true) > 4294967295u));
    let var_2 = 4102i;
    return Struct_1(var_1.a, u_input.b, _wgslsmith_f_op_f32(-var_1.c));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = i32(-1i) * -17347i;
    let var_1 = !vec2<bool>(false, !all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false))));
    let var_2 = vec4<i32>(~_wgslsmith_mod_i32(arg_1.b, arg_1.a.x), -1i, _wgslsmith_clamp_i32(-var_0, _wgslsmith_dot_vec2_i32(~vec2<i32>(11443i, u_input.b), abs(vec2<i32>(var_0, var_0))), -27066i), var_0) | ~_wgslsmith_add_vec4_i32(-(vec4<i32>(-1i, arg_1.a.x, var_0, var_0) | vec4<i32>(var_0, var_0, 1i, -1i)), min(select(vec4<i32>(-5610i, arg_1.a.x, var_0, u_input.b), vec4<i32>(arg_1.a.x, -2147483647i, arg_0.a.x, -52553i), vec4<bool>(var_1.x, var_1.x, false, var_1.x)), ~vec4<i32>(-43966i, arg_1.a.x, var_0, var_0)));
    var var_3 = func_1(reverseBits(-2147483647i));
    var var_4 = arg_1;
    return vec3<bool>(true, false, countOneBits(var_2.x) == _wgslsmith_clamp_i32(2147483647i ^ var_2.x, -2147483647i, -16190i & u_input.b));
}

fn func_6(arg_0: u32, arg_1: vec3<bool>, arg_2: u32) -> StorageBuffer {
    var var_0 = Struct_1(select(~(vec2<i32>(u_input.b, 2147483647i) << ((vec2<u32>(66958u, arg_0) ^ vec2<u32>(arg_2, arg_0)) % vec2<u32>(32u))), func_1(0i).a, !arg_1.zz), ~(i32(-1i) * -1182i), _wgslsmith_f_op_f32(-func_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-16801i, 1i, u_input.b) | vec3<i32>(u_input.b, u_input.b, 2147483647i), select(vec3<i32>(-20320i, u_input.b, u_input.b), vec3<i32>(-13460i, -16590i, -1i), vec3<bool>(false, true, arg_1.x)))).c));
    let var_1 = -1024f;
    let var_2 = func_5(func_1(1i << (_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0, arg_2, 15214u), vec3<u32>(arg_2, arg_2, 87165u)) % 32u)), Struct_1(var_0.a, i32(-1i) * -12014i, _wgslsmith_f_op_f32(var_1 * -137f))).x;
    var_0 = func_1(u_input.b);
    var var_3 = vec4<bool>(arg_1.x, any(vec4<bool>(true, true, true, true)) & (_wgslsmith_sub_i32(var_0.a.x, func_4(vec4<u32>(0u, u_input.a, 1u, 18580u), vec2<u32>(0u, 1u))) <= -func_1(u_input.b).b), any(arg_1), true);
    return StorageBuffer(~abs(vec3<u32>(arg_0, _wgslsmith_mult_u32(arg_2, arg_2), firstTrailingBit(4294967295u))), ~_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(48388i, u_input.b), u_input.b, _wgslsmith_sub_i32(var_0.a.x, u_input.b)), vec3<i32>(u_input.b, -2147483647i, 0i)), ~vec3<u32>(~61763u, (4294967295u << (u_input.a % 32u)) ^ arg_2, _wgslsmith_add_u32(firstLeadingBit(u_input.a), reverseBits(9921u))), ~vec4<u32>(u_input.a, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_2, 1u, arg_0), vec3<u32>(arg_0, 1u, u_input.a)), vec3<u32>(0u, arg_2, u_input.a)), arg_0, ~u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(~_wgslsmith_mult_i32(~u_input.b >> (u_input.a % 32u), -_wgslsmith_div_i32(u_input.b, -14341i)), ~0i, ~(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(24929i, 7626i, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, 29141i, u_input.b)), 2147483647i | u_input.b, -10305i) << ((43673u << ((u_input.a ^ 0u) % 32u)) % 32u)));
    let x = u_input.a;
    s_output = func_6(u_input.a, select(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), false), !func_5(func_1(15950i), Struct_1(vec2<i32>(1i, -1i), var_0.x, -731f)), false), ~firstLeadingBit(u_input.a >> (u_input.a % 32u)) >> (u_input.a % 32u));
}

