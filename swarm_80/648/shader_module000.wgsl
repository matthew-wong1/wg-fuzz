struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: Struct_2, arg_3: Struct_2) -> vec3<i32> {
    global0 = array<Struct_2, 12>();
    var var_0 = -1i;
    var var_1 = Struct_1(all(!(!(!vec4<bool>(arg_1, arg_3.c.a, false, arg_3.b.a)))));
    var var_2 = arg_2.c;
    var_2 = arg_2.c;
    return _wgslsmith_div_vec3_i32(u_input.b.xzz, _wgslsmith_mult_vec3_i32(u_input.b.yyz, u_input.b.yzy));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: f32) -> Struct_2 {
    var var_0 = -1255f;
    var var_1 = abs(func_2(min(_wgslsmith_mod_i32(-11311i, arg_0.x), arg_0.x), arg_1, Struct_2(_wgslsmith_mod_u32(1u, 46731u), Struct_1(arg_1), Struct_1(arg_1 | true), 62533u), Struct_2(_wgslsmith_mod_u32(~33586u, abs(4294967295u)), Struct_1(true | arg_1), Struct_1(arg_1), min(1u, firstTrailingBit(44203u)))).x);
    var var_2 = !select(select(!(!vec2<bool>(arg_1, false)), vec2<bool>(arg_1, arg_1), !arg_1), vec2<bool>(all(select(vec3<bool>(false, arg_1, true), vec3<bool>(arg_1, arg_1, arg_1), arg_1)), false), arg_1);
    var_0 = 620f;
    let var_3 = (vec2<i32>(~arg_0.x | 25583i, 1i) | (_wgslsmith_add_vec2_i32(u_input.b.yz, u_input.b.ww) << (vec2<u32>(3622u, ~0u) % vec2<u32>(32u)))) & (-(~(arg_0.yx << (vec2<u32>(54699u, 4294967295u) % vec2<u32>(32u)))) ^ ~arg_0.xx);
    return global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~1u, ~(~_wgslsmith_mod_u32(1u, 29213u))), 12u)];
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_2) -> vec2<bool> {
    global0 = array<Struct_2, 12>();
    let var_0 = 2145f;
    return !vec2<bool>(!(!arg_2.b.a && arg_2.c.a), any(vec4<bool>(!arg_2.b.a, true, arg_2.c.a & true, false)));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> bool {
    global0 = array<Struct_2, 12>();
    global0 = array<Struct_2, 12>();
    global0 = array<Struct_2, 12>();
    let var_0 = abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 37224u, arg_1.a, 1u), _wgslsmith_clamp_vec4_u32(countOneBits(max(vec4<u32>(47111u, arg_3.d, arg_3.d, arg_3.d), vec4<u32>(arg_3.d, 4294967295u, arg_3.d, arg_3.a))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 21186u, arg_1.d, 4294967295u), vec4<u32>(0u, arg_1.a, 4294967295u, 4294967295u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.d, arg_1.a, 4294967295u, arg_3.a), vec4<u32>(96863u, arg_3.a, arg_3.a, arg_1.a)))));
    var var_1 = select(~vec3<u32>(_wgslsmith_mult_u32(arg_3.a & arg_1.a, select(53951u, 4294967295u, false)), 80487u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.d, 52162u, 56564u, var_0), vec4<u32>(228u, arg_1.a, var_0, 19563u))), vec3<u32>(7218u, 40322u, _wgslsmith_add_u32(~var_0, 25742u)) ^ ~(reverseBits(vec3<u32>(arg_1.a, 4294967295u, 46947u)) ^ vec3<u32>(43389u, 4294967295u, 1u)), select(vec3<bool>(false, !(4294967295u != arg_3.d), select(true, true, all(arg_0))), select(!(!vec3<bool>(false, arg_2.a, false)), vec3<bool>(select(arg_3.c.a, arg_2.a, true), true, any(vec4<bool>(arg_1.b.a, arg_2.a, arg_0.x, arg_0.x))), arg_2.a || all(vec4<bool>(arg_1.c.a, arg_2.a, arg_3.c.a, arg_3.c.a))), true));
    return true;
}

fn func_1() -> i32 {
    global0 = array<Struct_2, 12>();
    var var_0 = true;
    global0 = array<Struct_2, 12>();
    var_0 = func_5(func_4(abs(1i), abs(-56016i), func_3(func_2(-31120i, true, global0[_wgslsmith_index_u32(85613u, 12u)], global0[_wgslsmith_index_u32(1u, 12u)]) ^ vec3<i32>(u_input.b.x, u_input.c, u_input.c), true, -1000f)), global0[_wgslsmith_index_u32(1u, 12u)], Struct_1(func_3(~vec3<i32>(-6581i, u_input.c, 9062i), true, _wgslsmith_f_op_f32(741f + -2214f)).b.a || (any(vec3<bool>(true, false, false)) & true)), global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(~abs(vec3<u32>(93542u, 1u, 11465u)), ~vec3<u32>(4294967295u, 11847u, 1u) >> (countOneBits(vec3<u32>(0u, 13313u, 1u)) % vec3<u32>(32u)))), 12u)]);
    return 1i & ~(~firstTrailingBit(abs(u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 12>();
    var var_0 = _wgslsmith_mod_i32(func_1(), _wgslsmith_sub_i32(firstLeadingBit(u_input.a), i32(-1i) * -4161i));
    var var_1 = Struct_1(false);
    var_0 = _wgslsmith_mod_i32(u_input.c, ~(~(-u_input.b.x)));
    let var_2 = func_4(u_input.c, -1i, Struct_2(firstLeadingBit(0u), func_3(vec3<i32>(u_input.a, 0i, 2147483647i) >> (~vec3<u32>(14233u, 11844u, 15938u) % vec3<u32>(32u)), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(365f)))).b, Struct_1(func_4(i32(-1i) * -9699i, _wgslsmith_sub_i32(2147483647i, 0i), func_3(vec3<i32>(u_input.b.x, u_input.a, 52633i), true, 1169f)).x), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), vec3<u32>(~0u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(52194u, 4294967295u), vec2<u32>(4294967295u, 59719u))))));
    var var_3 = func_3(-func_2(i32(-1i) * -u_input.c, false, Struct_2(0u, Struct_1(true), func_3(u_input.b.wyw, true, -924f).b, 0u), Struct_2(1u, func_3(vec3<i32>(u_input.c, -1i, u_input.b.x), true, 275f).c, func_3(u_input.b.yzw, var_2.x, -1350f).c, _wgslsmith_mod_u32(25599u, 46940u))), any(func_4(_wgslsmith_dot_vec2_i32(~u_input.b.yx, vec2<i32>(u_input.c, 1567i)), 31591i, Struct_2(_wgslsmith_add_u32(48760u, 0u), func_3(vec3<i32>(u_input.c, -76898i, u_input.a), true, 1000f).c, func_3(u_input.b.yyx, var_2.x, -729f).c, ~0u))), -284f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -298f) - _wgslsmith_div_f32(1152f, -478f)), 1000f))));
}

