struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = arg_0;
    var_0 = arg_0;
    var var_1 = countOneBits(u_input.b);
    let var_2 = 23765u;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(min(655f, arg_0.a)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)) - _wgslsmith_f_op_f32(-var_0.a));
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.b.x >> (min(~(~(~u_input.e.x)), _wgslsmith_add_u32(0u, firstTrailingBit(u_input.b.x & u_input.b.x))) % 32u);
    let var_1 = _wgslsmith_add_i32(u_input.d.x, ~(-1i));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f * -550f))), _wgslsmith_f_op_f32(func_3(Struct_1(466f, vec4<i32>(-7242i, var_1, 31242i, 2147483647i), var_0))))), _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.a.x, 6738i, -19841i, var_1), vec4<i32>(4952i, var_1, u_input.d.x, 2147483647i) << (vec4<u32>(11733u, u_input.e.x, 37224u, 44384u) % vec4<u32>(32u)), -vec4<i32>(u_input.c, -58150i, var_1, u_input.d.x)), -_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.c, var_1, var_1), vec4<i32>(-1037i, var_1, -29512i, var_1))) | select(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, u_input.c, u_input.d.x, var_1), select(vec4<i32>(0i, 1i, var_1, var_1), vec4<i32>(u_input.d.x, var_1, 0i, 1i), vec4<bool>(false, true, false, true))), ~max(vec4<i32>(u_input.c, var_1, u_input.d.x, 30022i), vec4<i32>(u_input.c, u_input.d.x, 2147483647i, u_input.c)), vec4<bool>(all(vec3<bool>(true, false, false)), all(vec3<bool>(true, true, false)), 0u <= var_0, true)), var_0);
    global0 = array<Struct_2, 5>();
    let var_3 = vec2<f32>(2096f, var_2.a);
    return var_2;
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: f32, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_2(func_2(), ~reverseBits(~(vec2<u32>(arg_0.x, 70705u) ^ arg_0.zy)));
    global0 = array<Struct_2, 5>();
    let var_1 = Struct_2(func_2(), var_0.b);
    global0 = array<Struct_2, 5>();
    global0 = array<Struct_2, 5>();
    return func_2();
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> f32 {
    let var_0 = any(!select(vec4<bool>(true, true, true, select(true, true, false)), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false))));
    let var_1 = Struct_2(arg_1, u_input.e.xx);
    let var_2 = firstLeadingBit(1i);
    var var_3 = var_2;
    var_3 = 1i;
    return arg_1.a;
}

fn func_5(arg_0: f32) -> Struct_1 {
    return Struct_1(2299f, vec4<i32>(u_input.d.x, -2147483647i, 50538i, 1i >> (u_input.e.x % 32u)) << (vec4<u32>(~func_2().c, u_input.e.x, _wgslsmith_dot_vec2_u32(u_input.b.yy, vec2<u32>(4294967295u, u_input.e.x) >> (vec2<u32>(u_input.b.x, 40230u) % vec2<u32>(32u))), 24725u) % vec4<u32>(32u)), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 5>();
    global0 = array<Struct_2, 5>();
    let var_0 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(abs(vec3<i32>(-1i, u_input.a.x, -2871i)), func_1(vec4<u32>(40603u, 81761u, u_input.e.x, u_input.e.x), u_input.b.x, -1348f, u_input.d.x))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(531f, -375f)) + _wgslsmith_f_op_f32(floor(428f))))));
    let var_1 = ~28900i;
    var var_2 = select(vec4<bool>(!(var_0.a > _wgslsmith_f_op_f32(-var_0.a)), !all(vec4<bool>(true, true, false, false)) && true, reverseBits(-350i) > (0i ^ var_0.b.x), false), vec4<bool>(!all(vec3<bool>(false, false, false)) && (u_input.a.x <= ~var_0.b.x), !(any(vec3<bool>(true, false, false)) && select(true, true, true)), !(u_input.e.x >= u_input.e.x), all(vec3<bool>(true, true, true)) && false), !(any(vec2<bool>(true, true)) && true));
    var_2 = !select(!select(!vec4<bool>(true, true, var_2.x, true), vec4<bool>(var_2.x, true, true, false), select(vec4<bool>(var_2.x, true, var_2.x, var_2.x), vec4<bool>(var_2.x, false, var_2.x, true), vec4<bool>(true, false, var_2.x, false))), vec4<bool>(true, select(any(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)), select(true, var_2.x, var_2.x), select(var_2.x, true, true)), (u_input.b.x & u_input.b.x) > select(u_input.e.x, u_input.b.x, false), false), !(!(!vec4<bool>(false, var_2.x, false, var_2.x))));
    var var_3 = select(var_2.zx, select(var_2.xw, !var_2.wy, any(select(vec4<bool>(true, false, true, var_2.x), select(vec4<bool>(var_2.x, var_2.x, true, true), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), false), !var_2.x))), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a * var_0.a), var_0.a), _wgslsmith_f_op_f32(-var_0.a)) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -417f) + -782f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * -711f) * _wgslsmith_div_f32(var_0.a, 1110f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_4(reverseBits(vec3<i32>(-1i, 37821i, -1i) >> (vec3<u32>(631u, 1u, u_input.e.x) % vec3<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(step(var_0.a, -1300f)), vec4<i32>(-21369i, var_1, 1i, -21822i), abs(u_input.e.x)))))), vec3<i32>(_wgslsmith_add_i32(~16830i, firstTrailingBit(_wgslsmith_clamp_i32(49591i, var_1, 2634i))), ~var_0.b.x, var_1), vec3<u32>(max(func_1(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.c, 4294967295u, var_0.c, u_input.e.x), vec4<u32>(1u, 54405u, 1u, 46618u)), 0u, _wgslsmith_div_f32(var_0.a, 2796f), var_0.b.x).c, countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.e.x, 1u), vec3<u32>(var_0.c, 0u, 0u)))), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, 13001u), u_input.b), ~0u), func_5(-269f).c), var_0.b.x);
}

