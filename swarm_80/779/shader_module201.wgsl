struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: f32,
    d: vec4<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = vec2<bool>(any(vec3<bool>(true || (arg_0.d.x >= arg_0.d.x), true, any(vec3<bool>(true, true, true)))), false);
    return arg_0.e.x;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = Struct_2(arg_2, 0u, Struct_1(reverseBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, -33765i, arg_0, arg_0), vec4<i32>(arg_2.a.x, u_input.a.x, -1i, arg_0)), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 0i, u_input.a.x, 0i), vec4<i32>(u_input.a.x, u_input.a.x, arg_0, -26555i)), arg_2.a)), _wgslsmith_f_op_vec4_f32(step(arg_2.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1232f, arg_2.e.x, arg_2.c, 792f) - arg_2.b)))), arg_2.c, ~max(min(vec4<u32>(4294967295u, arg_2.d.x, 30275u, arg_2.d.x), vec4<u32>(arg_2.d.x, 4294967295u, 52147u, arg_2.d.x)), arg_2.d | arg_2.d), vec3<f32>(_wgslsmith_f_op_f32(-arg_2.e.x), _wgslsmith_f_op_f32(2063f + _wgslsmith_f_op_f32(-arg_2.e.x)), 165f)), vec4<i32>(-1i, u_input.a.x, _wgslsmith_mult_i32(51122i, 22488i) >> (_wgslsmith_dot_vec3_u32(~arg_2.d.wwx, countOneBits(vec3<u32>(1u, 4294967295u, arg_2.d.x))) % 32u), firstLeadingBit(u_input.a.x)), abs(vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-9911i, -1i, arg_2.a.x, 42372i), ~vec4<i32>(7650i, arg_2.a.x, -1i, u_input.a.x)), 2147483647i, u_input.a.x)));
    var var_1 = countOneBits(_wgslsmith_div_vec4_u32(~(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.a.d.x, 55548u, 1u, 39171u), arg_2.d) ^ vec4<u32>(74596u, var_0.c.d.x, 16835u, arg_2.d.x)), vec4<u32>(firstTrailingBit(_wgslsmith_dot_vec3_u32(arg_2.d.yxy, arg_2.d.zyx)), ~abs(0u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, 4294967295u), _wgslsmith_mod_u32(var_0.b, var_0.a.d.x)), var_0.a.d.x)));
    var var_2 = Struct_2(var_0.a, arg_2.d.x, Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x >> (12714u % 32u), -37881i, max(var_0.a.a.x, 23104i), abs(var_0.d.x)), ~_wgslsmith_add_vec4_i32(var_0.d, vec4<i32>(48494i, arg_2.a.x, u_input.a.x, -53952i)), arg_2.a), vec4<f32>(arg_2.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.c, 154f) + arg_2.c), var_0.c.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-255f + -462f) * 242f)), _wgslsmith_f_op_f32(round(-293f)), abs(arg_2.d), var_0.c.b.wyx), max(vec4<i32>(~arg_0 << (~19838u % 32u), 6616i, 50207i, arg_0), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(-var_0.a.a, vec4<i32>(0i, u_input.a.x, arg_0, -5401i) | vec4<i32>(0i, u_input.a.x, 2147483647i, -5720i)), vec4<i32>(~var_0.c.a.x, 2147483647i & u_input.a.x, 1i, 0i))), _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, 0i, u_input.a.x), -vec3<i32>(u_input.a.x, var_0.c.a.x, 30445i)), ~(i32(-1i) * -2147483647i), -1986i), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(var_0.a.a.zyy, vec3<i32>(18263i, -1i, var_0.a.a.x)), var_0.e.x, -u_input.a.x), ~(vec3<i32>(arg_0, 2147483647i, var_0.a.a.x) & vec3<i32>(var_0.d.x, var_0.d.x, arg_0)))));
    var_2 = Struct_2(Struct_1(firstLeadingBit(vec4<i32>(-var_2.d.x, 1i, firstTrailingBit(arg_2.a.x), ~(-1i))), var_2.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.c, var_2.c.b.x))), ~_wgslsmith_clamp_vec4_u32(min(var_0.a.d, vec4<u32>(var_1.x, arg_2.d.x, 8679u, 19174u)), ~var_0.a.d, select(vec4<u32>(1u, 47201u, 68502u, 42044u), var_2.a.d, vec4<bool>(arg_1, arg_1, false, arg_1))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.a.b.x, var_0.a.e.x, 566f))) + vec3<f32>(777f, var_2.a.c, -1566f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.c, 1000f, 1311f)))), ~firstTrailingBit(~var_1.x), Struct_1(var_2.a.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-728f, var_2.a.c, var_2.a.c, var_0.c.e.x))), -1062f, _wgslsmith_div_vec4_u32(vec4<u32>(var_2.b, 1971u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_0.b, var_0.a.d.x, var_1.x), arg_2.d), _wgslsmith_dot_vec2_u32(var_2.c.d.yw, vec2<u32>(4294967295u, arg_2.d.x))), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(arg_2.d, var_2.c.d), vec4<u32>(var_1.x, arg_2.d.x, 48722u, 0u))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(arg_2.e * _wgslsmith_f_op_vec3_f32(trunc(arg_2.b.yyw))), vec3<f32>(-1000f, -582f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), -_wgslsmith_clamp_vec4_i32(abs(arg_2.a), max(arg_2.a, select(vec4<i32>(var_2.a.a.x, 1i, arg_2.a.x, -24160i), vec4<i32>(var_2.e.x, var_2.a.a.x, 54621i, 2147483647i), vec4<bool>(false, false, arg_1, false))), ~firstLeadingBit(u_input.a)), max(~vec3<i32>(i32(-1i) * -74297i, u_input.a.x, u_input.a.x), vec3<i32>(max(2147483647i, ~0i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.a.x, u_input.a.x, arg_0, var_0.a.a.x), -var_0.c.a), ~2147483647i)));
    var_2 = Struct_2(var_0.a, _wgslsmith_dot_vec4_u32(~arg_2.d, ~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, arg_2.d.x, var_1.x, 4294967295u), var_2.a.d) | ~vec4<u32>(var_2.b, var_2.a.d.x, 1u, 0u)), Struct_1(-u_input.a, var_0.a.b, 1f, var_2.a.d, _wgslsmith_f_op_vec3_f32(min(var_0.a.b.zyy, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.c.c, var_2.c.e.x, arg_2.e.x)))))), vec4<i32>(1i, _wgslsmith_mult_i32(31164i, 1i) ^ _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(-2147483647i, -2147483647i)), firstTrailingBit(var_0.e.x), arg_2.a.x), countOneBits(i32(-1i) * -63278i) ^ _wgslsmith_dot_vec3_i32(~u_input.a.zxw, vec3<i32>(arg_0, arg_2.a.x, arg_0)), arg_2.a.x), u_input.a.xxw);
    return reverseBits(vec4<i32>(~_wgslsmith_div_i32(reverseBits(arg_0), -13712i), var_0.e.x, countOneBits(var_2.d.x) >> (~0u % 32u), reverseBits(_wgslsmith_mod_i32(abs(41602i), var_0.c.a.x))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    let var_0 = !vec4<bool>(any(vec4<bool>(all(vec2<bool>(false, false)), false, arg_2.b.x >= arg_1.a.b.x, true)), false, all(vec2<bool>(arg_0.c.b.x > arg_2.e.x, true)), true);
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(arg_2.b * arg_0.c.b))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1f * -2391f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-932f)))), 1f, -479f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(arg_0.c.b * arg_2.b))))), var_0));
    let var_2 = arg_0;
    var var_3 = func_4(var_2.a.a.x, var_0.x, Struct_1(firstTrailingBit(firstTrailingBit(select(vec4<i32>(-11893i, 0i, -1i, u_input.a.x), vec4<i32>(u_input.a.x, -37493i, -2147483647i, arg_2.a.x), false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 2405f, 1583f, -315f) * vec4<f32>(-154f, -624f, arg_2.b.x, arg_0.a.b.x)) - arg_1.c.b) - _wgslsmith_f_op_vec4_f32(vec4<f32>(750f, arg_2.b.x, -1079f, arg_2.e.x) - vec4<f32>(-313f, arg_2.b.x, -854f, var_2.c.e.x))), var_1.x, _wgslsmith_add_vec4_u32(vec4<u32>(arg_2.d.x, abs(arg_1.c.d.x), min(var_2.c.d.x, arg_0.b), arg_1.b), _wgslsmith_mod_vec4_u32(firstTrailingBit(arg_1.a.d), vec4<u32>(var_2.c.d.x, 1357u, 1u, arg_2.d.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(func_3(arg_1.a)), arg_0.a.b.x)));
    var var_4 = -var_2.d.x & _wgslsmith_dot_vec2_i32(arg_2.a.zw, vec2<i32>(_wgslsmith_add_i32(u_input.a.x, var_2.c.a.x | arg_0.d.x), -1391i));
    return 17818u;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = select(select(!vec2<bool>(any(vec2<bool>(true, false)), true), vec2<bool>(!select(true, false, false), !(u_input.a.x > 1333i)), select(select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), true), arg_0.d.x <= 0u), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)))), !select(vec2<bool>(select(false, false, false), true), vec2<bool>(true, all(vec4<bool>(false, false, false, false))), select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), false), true));
    let var_1 = Struct_2(arg_0, 4294967295u, arg_0, vec4<i32>(~func_4(2147483647i, all(vec2<bool>(true, var_0.x)), arg_0).x, -(_wgslsmith_mod_i32(arg_0.a.x, u_input.a.x) << (_wgslsmith_sub_u32(arg_0.d.x, arg_0.d.x) % 32u)), i32(-1i) * -_wgslsmith_mult_i32(u_input.a.x, arg_0.a.x), u_input.a.x), arg_0.a.zwx & vec3<i32>(-(~2147483647i), u_input.a.x, reverseBits(27486i)));
    let var_2 = ~arg_0.d.x;
    let var_3 = var_1;
    var var_4 = i32(-1i) * -(~(_wgslsmith_clamp_i32(var_1.d.x, var_3.d.x, arg_0.a.x) ^ (i32(-1i) * -2147483647i)));
    return arg_0;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = ~(_wgslsmith_add_vec2_u32(vec2<u32>(min(22605u, arg_2.b), 37331u), ~vec2<u32>(4294967295u, 36101u)) & ~vec2<u32>(arg_2.c.d.x, 25362u));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.c.e.x)) - _wgslsmith_f_op_f32(-arg_1.b.x)) - _wgslsmith_f_op_f32(-arg_1.b.x)), arg_0.c.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.c.b.x))), 1031f)), -113f);
    let var_2 = vec2<f32>(-487f, _wgslsmith_f_op_f32(f32(-1f) * -1228f));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.c.b) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.c, arg_2.c.e.x, -1983f, -275f)))) - arg_0.a.b), _wgslsmith_f_op_vec4_f32(arg_0.c.b + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(780f, 189f, -188f, arg_1.c), vec4<f32>(1204f, 1179f, -1069f, arg_2.a.e.x)), arg_1.b)))));
    let var_4 = func_5(Struct_1(-(~(-arg_0.d)), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1612f)), _wgslsmith_f_op_f32(f32(-1f) * -192f), 241f), 1030f, ~vec4<u32>(arg_1.d.x, ~92053u, 91505u, func_2(Struct_2(arg_0.c, 1u, arg_2.c, arg_1.a, arg_2.e), arg_2, Struct_1(arg_3, var_3, -1000f, vec4<u32>(0u, 28359u, 10297u, 14238u), arg_2.a.b.xzx))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-969f, arg_0.c.e.x, -1170f) + arg_2.c.e))));
    return arg_1;
}

fn func_6(arg_0: Struct_2) -> Struct_1 {
    var var_0 = select(select(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false))), !select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), false), vec4<bool>(true, true, false, false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.e.x - -979f) - -530f) == arg_0.c.b.x), vec4<bool>(any(vec4<bool>(true, select(false, true, false), true, false)), all(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(false, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true)))), all(vec2<bool>(false, all(vec2<bool>(false, true)))), select(true, all(select(vec2<bool>(false, false), vec2<bool>(true, false), true)), !any(vec2<bool>(true, false)))), select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), false)), vec4<bool>(all(vec2<bool>(true, true)), true, false, all(vec3<bool>(true, false, false))), any(vec4<bool>(false, true, true, false))), vec4<bool>(true, !all(vec2<bool>(false, false)), any(vec4<bool>(true, true, true, true)), !(48973i <= arg_0.c.a.x)), !all(vec4<bool>(false, true, true, true)) == false));
    var_0 = vec4<bool>(!(_wgslsmith_add_u32(arg_0.b, max(0u, arg_0.a.d.x)) > reverseBits(arg_0.c.d.x ^ 58313u)), !(!((var_0.x != var_0.x) | var_0.x)), var_0.x, var_0.x);
    var_0 = !select(select(select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(false, var_0.x, false, true), select(vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(var_0.x, true, var_0.x, false), var_0.x)), !(!vec4<bool>(true, var_0.x, var_0.x, var_0.x)), all(vec4<bool>(var_0.x, var_0.x, false, false))), select(select(select(vec4<bool>(true, var_0.x, false, false), vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(false, false, false, false)), !vec4<bool>(true, true, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true)), select(vec4<bool>(false, false, false, var_0.x), vec4<bool>(false, true, false, var_0.x), any(var_0.zy)), vec4<bool>(var_0.x, any(vec4<bool>(true, false, var_0.x, false)), true, var_0.x)), !any(!vec4<bool>(var_0.x, true, var_0.x, true)));
    var_0 = vec4<bool>(var_0.x, !(!var_0.x), var_0.x, any(select(vec3<bool>(true, var_0.x, var_0.x), var_0.yyx, _wgslsmith_f_op_f32(sign(313f)) >= arg_0.a.c)));
    let var_1 = Struct_2(Struct_1(u_input.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.b.x, -482f, arg_0.c.e.x, arg_0.c.b.x) - arg_0.a.b) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.b.x, arg_0.c.c, -697f, arg_0.c.c) - vec4<f32>(arg_0.a.e.x, -2150f, arg_0.a.e.x, arg_0.a.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0.c.b, vec4<f32>(arg_0.c.c, 1117f, 1171f, 496f)))), -230f, firstTrailingBit(arg_0.a.d ^ (arg_0.a.d >> (vec4<u32>(arg_0.a.d.x, 34556u, 78351u, 1u) % vec4<u32>(32u)))), vec3<f32>(-463f, arg_0.a.c, _wgslsmith_f_op_f32(exp2(1f)))), max(max(21521u, 1u), arg_0.a.d.x), func_1(Struct_2(arg_0.a, abs(countOneBits(arg_0.c.d.x)), arg_0.c, arg_0.a.a, -max(vec3<i32>(-2147483647i, 2147483647i, arg_0.a.a.x), u_input.a.xxx)), func_5(arg_0.c), arg_0, u_input.a), ~func_5(func_1(arg_0, Struct_1(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, -2147483647i), vec4<f32>(-950f, 336f, arg_0.a.e.x, arg_0.c.b.x), arg_0.a.e.x, vec4<u32>(1u, 72382u, 93791u, arg_0.c.d.x), arg_0.c.b.yxz), Struct_2(arg_0.c, arg_0.c.d.x, arg_0.c, u_input.a, vec3<i32>(u_input.a.x, -1i, arg_0.d.x)), vec4<i32>(arg_0.c.a.x, arg_0.e.x, u_input.a.x, -2147483647i))).a, ~(~vec3<i32>(u_input.a.x, arg_0.c.a.x, 1i)));
    return func_5(Struct_1(func_5(func_1(Struct_2(var_1.a, 4294967295u, Struct_1(vec4<i32>(arg_0.e.x, arg_0.e.x, 0i, -37293i), vec4<f32>(2376f, var_1.a.e.x, 840f, 736f), 1000f, vec4<u32>(0u, 33045u, var_1.a.d.x, 1u), var_1.a.b.wxx), vec4<i32>(u_input.a.x, var_1.a.a.x, u_input.a.x, u_input.a.x), u_input.a.xxw), arg_0.a, Struct_2(var_1.c, 13730u, var_1.c, u_input.a, vec3<i32>(u_input.a.x, 49385i, -25291i)), vec4<i32>(var_1.a.a.x, 63319i, u_input.a.x, u_input.a.x))).a, var_1.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-544f + var_1.c.b.x)), abs(vec4<u32>(~arg_0.c.d.x, _wgslsmith_sub_u32(56340u, var_1.a.d.x), 1u, func_5(var_1.a).d.x)), arg_0.c.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_2(func_1(Struct_2(Struct_1(u_input.a, vec4<f32>(-1000f, -534f, 183f, 1544f), -998f, vec4<u32>(58875u, 0u, 4294967295u, 1875u), vec3<f32>(-625f, 1029f, -130f)), 0u, Struct_1(u_input.a, vec4<f32>(2008f, 396f, 738f, -848f), 867f, vec4<u32>(548u, 118490u, 38332u, 74421u), vec3<f32>(-270f, -244f, 907f)), vec4<i32>(u_input.a.x, u_input.a.x, -61051i, u_input.a.x), ~u_input.a.xxz), Struct_1(vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x) >> (vec4<u32>(4294967295u, 7551u, 5761u, 37390u) % vec4<u32>(32u)), vec4<f32>(-241f, -382f, 359f, -468f), _wgslsmith_f_op_f32(f32(-1f) * -1755f), reverseBits(vec4<u32>(1u, 4294967295u, 0u, 1u)), vec3<f32>(1022f, -1051f, -1000f)), Struct_2(Struct_1(vec4<i32>(10442i, -12807i, u_input.a.x, 43152i), vec4<f32>(1000f, -134f, 330f, 603f), 171f, vec4<u32>(42458u, 39479u, 4294967295u, 1u), vec3<f32>(-515f, 1446f, 1339f)), 38199u, Struct_1(u_input.a, vec4<f32>(729f, 484f, -242f, -438f), 1115f, vec4<u32>(40197u, 4294967295u, 0u, 4294967295u), vec3<f32>(626f, 108f, -886f)), reverseBits(u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, -1i, u_input.a.x), u_input.a.wwz)), select(select(u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, -22709i, u_input.a.x), true), -vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x), select(true, false, true))), 2337u, Struct_1(vec4<i32>(_wgslsmith_sub_i32(-1i, 2147483647i), 2147483647i, -14282i, 5614i), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1024f, -631f, 480f, 317f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1907f, 166f, -409f, 954f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 568f) + _wgslsmith_f_op_f32(977f + -748f)), vec4<u32>(~24200u, func_1(Struct_2(Struct_1(u_input.a, vec4<f32>(245f, -1000f, -1747f, 2085f), -1727f, vec4<u32>(79142u, 4294967295u, 36735u, 4294967295u), vec3<f32>(152f, -743f, -1234f)), 0u, Struct_1(u_input.a, vec4<f32>(-507f, -1006f, -1000f, -1656f), -1295f, vec4<u32>(39876u, 62387u, 1u, 4294967295u), vec3<f32>(168f, -630f, 1399f)), vec4<i32>(u_input.a.x, -2147483647i, -2147483647i, 6080i), vec3<i32>(2147483647i, 45326i, u_input.a.x)), Struct_1(vec4<i32>(u_input.a.x, -71563i, 0i, u_input.a.x), vec4<f32>(942f, 931f, -1000f, 750f), -2422f, vec4<u32>(25072u, 26830u, 29039u, 1u), vec3<f32>(380f, -856f, 625f)), Struct_2(Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<f32>(690f, -1000f, 882f, -1041f), 610f, vec4<u32>(100356u, 0u, 0u, 1u), vec3<f32>(-901f, 2486f, -829f)), 1u, Struct_1(u_input.a, vec4<f32>(1129f, -533f, 1652f, 236f), -910f, vec4<u32>(0u, 76488u, 1u, 1u), vec3<f32>(666f, 1321f, 399f)), u_input.a, u_input.a.zzx), u_input.a).d.x, 1u, 16858u), vec3<f32>(_wgslsmith_f_op_f32(-693f - -1139f), _wgslsmith_f_op_f32(f32(-1f) * -665f), _wgslsmith_f_op_f32(floor(-1139f)))), -abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), reverseBits(u_input.a.www)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-679f - -1501f));
    var_0 = Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(~(var_0.a.x ^ -27892i), var_0.a.x, 1i, _wgslsmith_clamp_i32(u_input.a.x, -1i, -36906i)), var_0.a << (var_0.d % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.b + vec4<f32>(var_0.b.x, var_0.b.x, var_0.e.x, var_0.c))), vec4<f32>(_wgslsmith_div_f32(var_0.e.x, var_0.c), _wgslsmith_f_op_f32(-212f - 1001f), -126f, var_0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.c, var_0.c), _wgslsmith_f_op_f32(-var_0.b.x))))), (func_5(func_6(Struct_2(Struct_1(var_0.a, var_0.b, var_0.b.x, var_0.d, var_0.e), 0u, Struct_1(u_input.a, var_0.b, 628f, var_0.d, vec3<f32>(var_0.c, 1408f, 533f)), vec4<i32>(28577i, -25303i, var_0.a.x, u_input.a.x), var_0.a.xzy))).d ^ ~(var_0.d << (var_0.d % vec4<u32>(32u)))) ^ vec4<u32>(0u, 1u, 31074u, _wgslsmith_clamp_u32(0u, var_0.d.x, var_0.d.x) ^ (var_0.d.x >> (14680u % 32u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e.x, var_0.c, _wgslsmith_f_op_f32(floor(-2791f))) * vec3<f32>(_wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(var_0.c - var_0.c), var_0.e.x)));
    let var_2 = countOneBits(vec3<u32>(80141u << (_wgslsmith_clamp_u32(~0u, _wgslsmith_add_u32(var_0.d.x, 1u), func_5(Struct_1(vec4<i32>(-1i, u_input.a.x, -28052i, -2147483647i), var_0.b, 691f, vec4<u32>(var_0.d.x, 1u, 47687u, var_0.d.x), var_0.e)).d.x) % 32u), 18522u, 47617u));
    var_0 = func_5(Struct_1(vec4<i32>(-1i) * -(u_input.a >> (vec4<u32>(46682u, var_2.x, var_2.x, var_2.x) % vec4<u32>(32u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_0.b)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, 1458f, var_0.b.x, var_0.b.x) + vec4<f32>(-1000f, var_0.c, -1000f, var_0.b.x))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.e.x), -1794f, var_0.c, _wgslsmith_f_op_f32(var_0.b.x * var_0.b.x))), var_0.e.x, abs(min(vec4<u32>(var_2.x, var_2.x, 1u, 49983u), ~var_0.d)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(881f * -316f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) + var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c, var_0.e.x)))));
    let var_3 = select(var_0.d, var_0.d, vec4<bool>(any(vec3<bool>(true, true, false)), _wgslsmith_div_u32(reverseBits(15244u), 45357u) == firstTrailingBit(4294967295u), false, !any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), false))));
    var var_4 = _wgslsmith_div_vec4_i32(abs(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, var_0.a.x, u_input.a.x, 0i), vec4<i32>(-2147483647i, var_0.a.x, -9890i, var_0.a.x))), abs(u_input.a)) >> ((~var_0.d << (~var_3 % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_5 = func_1(Struct_2(Struct_1(_wgslsmith_clamp_vec4_i32(-vec4<i32>(var_4.x, u_input.a.x, u_input.a.x, 15947i), func_4(u_input.a.x, true, Struct_1(var_0.a, vec4<f32>(var_0.c, -1000f, 446f, var_0.c), var_0.c, vec4<u32>(var_3.x, 4294967295u, 4294967295u, var_3.x), vec3<f32>(304f, 1660f, -216f))), u_input.a << (vec4<u32>(var_2.x, 1u, var_0.d.x, 92502u) % vec4<u32>(32u))), var_0.b, 1168f, var_3, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(var_0.b.xwz))))), ~var_0.d.x, Struct_1(~vec4<i32>(var_4.x, var_4.x, 21184i, u_input.a.x) ^ ~vec4<i32>(var_4.x, u_input.a.x, 1i, 15471i), func_1(Struct_2(Struct_1(var_0.a, var_0.b, 1897f, vec4<u32>(var_2.x, 38963u, 10370u, var_0.d.x), vec3<f32>(var_0.b.x, var_0.b.x, 885f)), var_2.x, Struct_1(var_0.a, vec4<f32>(-516f, -606f, -138f, -1934f), 821f, vec4<u32>(1u, var_3.x, 13295u, var_0.d.x), vec3<f32>(var_0.c, var_0.c, var_0.e.x)), var_0.a, u_input.a.wzz), Struct_1(vec4<i32>(3742i, -70109i, 0i, -1i), vec4<f32>(681f, 754f, var_0.c, var_0.c), var_0.c, vec4<u32>(var_0.d.x, var_3.x, 67103u, 1u), vec3<f32>(-591f, var_0.e.x, 657f)), Struct_2(Struct_1(vec4<i32>(28002i, var_0.a.x, 2147483647i, -67958i), vec4<f32>(var_0.e.x, var_0.b.x, var_0.c, -1171f), -370f, var_0.d, var_0.b.zzy), var_2.x, Struct_1(vec4<i32>(var_4.x, var_4.x, u_input.a.x, var_4.x), var_0.b, 637f, vec4<u32>(8829u, var_2.x, var_0.d.x, 0u), var_0.e), vec4<i32>(40219i, 26378i, 1i, -2147483647i), vec3<i32>(-3623i, u_input.a.x, 21938i)), ~vec4<i32>(var_0.a.x, 0i, var_4.x, var_4.x)).b, _wgslsmith_div_f32(var_0.b.x, var_0.e.x), var_3, vec3<f32>(_wgslsmith_f_op_f32(-1336f * -1684f), _wgslsmith_f_op_f32(max(var_0.e.x, 242f)), var_0.e.x)), var_0.a, _wgslsmith_mod_vec3_i32(u_input.a.zzx, -var_4.wxw) | firstLeadingBit(max(vec3<i32>(16636i, 43848i, -2147483647i), var_0.a.zyw))), func_1(Struct_2(Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, var_4.x) >> (vec4<u32>(var_0.d.x, var_3.x, 26371u, 84973u) % vec4<u32>(32u)), func_5(Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, 1i, -28687i), vec4<f32>(var_0.c, var_0.c, -1464f, var_0.b.x), 1303f, var_0.d, vec3<f32>(-574f, -790f, var_0.b.x))).b, var_0.e.x, _wgslsmith_add_vec4_u32(vec4<u32>(var_0.d.x, var_3.x, 82913u, 1u), vec4<u32>(39887u, var_2.x, 1u, var_3.x)), _wgslsmith_f_op_vec3_f32(var_0.e * vec3<f32>(1120f, var_0.c, -256f))), _wgslsmith_sub_u32(var_3.x & var_0.d.x, ~4294967295u), Struct_1(vec4<i32>(-2147483647i, u_input.a.x, -17913i, -2147483647i), _wgslsmith_f_op_vec4_f32(abs(var_0.b)), func_5(Struct_1(u_input.a, var_0.b, -562f, var_3, var_0.b.xzy)).c, vec4<u32>(var_0.d.x, 1u, var_3.x, var_3.x) & vec4<u32>(0u, 17611u, var_0.d.x, 38909u), vec3<f32>(var_0.e.x, 602f, var_0.e.x)), u_input.a >> (~var_3 % vec4<u32>(32u)), u_input.a.zzx), func_6(Struct_2(func_1(Struct_2(Struct_1(var_0.a, var_0.b, var_0.b.x, vec4<u32>(59125u, var_0.d.x, var_3.x, 66817u), var_0.e), 55690u, Struct_1(vec4<i32>(37447i, -4624i, 0i, var_0.a.x), vec4<f32>(var_0.e.x, var_0.b.x, -690f, -916f), var_0.e.x, vec4<u32>(75136u, var_3.x, var_0.d.x, 4294967295u), vec3<f32>(var_0.b.x, 725f, -1000f)), u_input.a, u_input.a.ywy), Struct_1(var_0.a, var_0.b, -830f, var_3, var_0.e), Struct_2(Struct_1(var_0.a, vec4<f32>(709f, 495f, var_0.e.x, var_0.e.x), 139f, vec4<u32>(var_2.x, var_0.d.x, var_3.x, 13874u), var_0.b.wzw), 61779u, Struct_1(vec4<i32>(var_4.x, u_input.a.x, -26202i, 2147483647i), vec4<f32>(354f, -191f, 838f, 269f), -525f, vec4<u32>(var_3.x, 13023u, 1u, 27788u), vec3<f32>(210f, var_0.c, var_0.c)), vec4<i32>(0i, var_4.x, var_4.x, 2147483647i), u_input.a.wxy), u_input.a), ~1090u, func_5(Struct_1(vec4<i32>(var_4.x, -2147483647i, u_input.a.x, 2147483647i), var_0.b, -356f, vec4<u32>(var_2.x, 1930u, var_3.x, var_3.x), vec3<f32>(1809f, var_0.c, var_0.c))), _wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(-20708i, var_0.a.x, -16409i, var_0.a.x)), var_0.a.wxx)), Struct_2(Struct_1(u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, var_0.e.x, -445f, var_0.b.x)), _wgslsmith_f_op_f32(var_0.c + var_0.e.x), func_6(Struct_2(Struct_1(u_input.a, var_0.b, -130f, vec4<u32>(1u, var_3.x, 90537u, var_3.x), var_0.e), 4294967295u, Struct_1(vec4<i32>(var_4.x, 0i, -42783i, 2147483647i), var_0.b, var_0.e.x, vec4<u32>(1u, var_3.x, var_3.x, 0u), var_0.b.wzx), vec4<i32>(var_4.x, -58238i, u_input.a.x, u_input.a.x), vec3<i32>(1i, 1i, var_0.a.x))).d, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.e.x, 558f, var_0.e.x)))), var_2.x, func_5(func_5(Struct_1(var_0.a, var_0.b, var_0.e.x, var_3, vec3<f32>(-1393f, var_0.c, var_0.b.x)))), max(u_input.a, func_6(Struct_2(Struct_1(var_0.a, vec4<f32>(var_0.c, var_0.c, -1323f, var_0.e.x), var_0.c, var_3, var_0.b.yww), 54066u, Struct_1(vec4<i32>(25640i, var_4.x, -1i, 0i), vec4<f32>(var_0.e.x, -664f, -797f, -1114f), 272f, vec4<u32>(var_2.x, var_3.x, 46168u, var_2.x), var_0.b.wzw), u_input.a, vec3<i32>(-56537i, -1i, var_4.x))).a), var_4.yxy), vec4<i32>(func_4(var_0.a.x, false, Struct_1(vec4<i32>(-5920i, 67661i, var_0.a.x, -51071i), var_0.b, -1000f, var_0.d, var_0.e)).x, var_0.a.x, var_0.a.x, ~1i)), Struct_2(Struct_1(vec4<i32>(-1i) * -u_input.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(195f, -1489f, -1000f, var_0.c) + var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -1303f), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_2.x, var_2.x, 0u), var_3), vec3<f32>(var_0.e.x, _wgslsmith_f_op_f32(min(var_0.b.x, var_0.c)), _wgslsmith_div_f32(var_0.e.x, -132f))), ~var_3.x, func_6(Struct_2(Struct_1(var_0.a, vec4<f32>(var_0.c, var_0.e.x, -311f, -273f), 1918f, var_3, var_0.e), _wgslsmith_sub_u32(var_3.x, 31132u), func_6(Struct_2(Struct_1(var_0.a, var_0.b, 286f, var_0.d, var_0.b.zyz), 4294967295u, Struct_1(var_0.a, var_0.b, var_0.e.x, var_3, vec3<f32>(359f, var_0.c, -819f)), vec4<i32>(2147483647i, 9440i, var_4.x, -34326i), u_input.a.wyy)), var_0.a, vec3<i32>(var_4.x, 2147483647i, 2147483647i))), u_input.a, _wgslsmith_div_vec3_i32(-firstTrailingBit(var_4.xzw), var_0.a.zxz)), vec4<i32>(-1615i, 2147483647i, abs(-25607i), 9035i)).e.xz;
    var_4 = -(u_input.a << (~countOneBits(var_0.d | vec4<u32>(var_3.x, 12117u, 4294967295u, var_3.x)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_0.b.xxw));
}

