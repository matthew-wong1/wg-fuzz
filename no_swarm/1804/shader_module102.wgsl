struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 30>;

var<private> global1: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(vec2<u32>(61487u, 43733u), vec2<i32>(1i, 1i), -237f), Struct_2(vec2<u32>(0u, 42480u), vec2<i32>(28187i, 40649i), 272f), Struct_2(vec2<u32>(18949u, 4294967295u), vec2<i32>(i32(-2147483648), 2147483647i), 324f));

var<private> global2: Struct_2;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(-1f);
    return vec2<bool>(all(vec3<bool>(false, true, _wgslsmith_div_u32(17300u, 61608u) > _wgslsmith_mult_u32(u_input.c, u_input.c))), 602f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global2.c)))) - -191f));
}

fn func_4(arg_0: u32, arg_1: vec2<i32>) -> vec2<u32> {
    global2 = global1[_wgslsmith_index_u32((44653u >> (u_input.c % 32u)) << (_wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, abs(global2.a.x)) ^ arg_0, 8452u) % 32u), 3u)];
    let var_0 = _wgslsmith_f_op_f32(-global2.c);
    var var_1 = global2.c;
    global0 = array<vec2<f32>, 30>();
    global2 = Struct_2(~vec2<u32>(0u, ~arg_0), -max(~vec2<i32>(-1i, arg_1.x), vec2<i32>(global2.b.x, global2.b.x)) >> (max(reverseBits(global2.a ^ vec2<u32>(global2.a.x, 39441u)), global2.a) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + 2104f)));
    return (global2.a ^ _wgslsmith_mult_vec2_u32(countOneBits(global2.a), vec2<u32>(u_input.c, arg_0 | 1497u))) ^ ~_wgslsmith_div_vec2_u32(vec2<u32>(global2.a.x >> (4294967295u % 32u), u_input.c), select(_wgslsmith_clamp_vec2_u32(global2.a, global2.a, vec2<u32>(0u, u_input.c)), _wgslsmith_mod_vec2_u32(vec2<u32>(85842u, arg_0), vec2<u32>(arg_0, arg_0)), vec2<bool>(true, true)));
}

fn func_2() -> Struct_2 {
    let var_0 = func_4(global2.a.x, select(global2.b, ~_wgslsmith_mult_vec2_i32(min(vec2<i32>(u_input.b.x, 47383i), global2.b), _wgslsmith_add_vec2_i32(vec2<i32>(4437i, 2147483647i), global2.b)), func_3()));
    let var_1 = Struct_1(vec4<i32>(-2147483647i, u_input.b.x, global2.b.x, 2147483647i));
    global1 = array<Struct_2, 3>();
    let var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(global2.b, -max(vec2<i32>(-9435i, var_1.a.x), var_1.a.ww)), global2.b.x), vec2<i32>(-1i) * -reverseBits(u_input.b.zy));
    let var_3 = vec3<bool>(!(!all(vec3<bool>(true, true, true)) && all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)))), true, false);
    return global1[_wgslsmith_index_u32(firstTrailingBit(25689u), 3u)];
}

fn func_1() -> vec4<bool> {
    let var_0 = func_2();
    var var_1 = max(u_input.b | ((~vec3<i32>(u_input.a, var_0.b.x, -9709i) ^ select(vec3<i32>(var_0.b.x, 33516i, 2147483647i), u_input.b, true)) ^ (_wgslsmith_mult_vec3_i32(u_input.b, u_input.b) << (~vec3<u32>(var_0.a.x, 0u, 27376u) % vec3<u32>(32u)))), ~u_input.b);
    global0 = array<vec2<f32>, 30>();
    global2 = global1[_wgslsmith_index_u32(~max(global2.a.x, _wgslsmith_mod_u32(~4294967295u, max(_wgslsmith_dot_vec4_u32(vec4<u32>(10047u, global2.a.x, global2.a.x, 18685u), vec4<u32>(4294967295u, u_input.c, 7593u, var_0.a.x)), _wgslsmith_sub_u32(58990u, 49334u)))), 3u)];
    var var_2 = max(vec4<i32>(2147483647i, var_1.x, -97287i, var_1.x), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, -global2.b.x, -2147483647i, -13206i), min(vec4<i32>(global2.b.x, -2147483647i, -2147483647i, -36688i), select(vec4<i32>(var_0.b.x, -2147483647i, 33542i, -29793i), vec4<i32>(2636i, var_0.b.x, 0i, global2.b.x), false))), _wgslsmith_clamp_vec4_i32(~(-vec4<i32>(u_input.a, 1i, var_0.b.x, -29654i)), reverseBits(vec4<i32>(global2.b.x, var_0.b.x, u_input.a, u_input.a)) << (reverseBits(vec4<u32>(var_0.a.x, global2.a.x, 22590u, 0u)) % vec4<u32>(32u)), vec4<i32>(i32(-1i) * -123i, global2.b.x, 1i, 32689i))));
    return vec4<bool>(true, true, any(vec2<bool>(true, true)) & !(global2.a.x > global2.a.x), ~62317i == -_wgslsmith_add_i32(u_input.b.x, global2.b.x));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_mult_u32(~min(global2.a.x, ~27230u) & 33859u, _wgslsmith_div_u32(u_input.c, abs(u_input.c)));
    global1 = array<Struct_2, 3>();
    let var_1 = Struct_1(reverseBits(~vec4<i32>(48989i, global2.b.x, global2.b.x, global2.b.x) >> ((vec4<u32>(0u, 3126u, global2.a.x, global2.a.x) ^ vec4<u32>(global2.a.x, global2.a.x, u_input.c, global2.a.x)) % vec4<u32>(32u))));
    var var_2 = func_2();
    let var_3 = 4294967295u;
    return var_1;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    let var_0 = ~_wgslsmith_mult_u32(firstLeadingBit(~(global2.a.x << (arg_1.a.x % 32u))), ~func_4(func_4(1u, vec2<i32>(arg_2.a.x, -19721i)).x, _wgslsmith_mult_vec2_i32(global2.b, vec2<i32>(arg_0.a.x, 0i))).x);
    let var_1 = 7947i;
    let var_2 = vec4<i32>(firstLeadingBit(_wgslsmith_add_i32(-27598i, var_1 | ~var_1)), arg_1.b.x & (arg_2.a.x << (41404u % 32u)), func_5(vec4<bool>(true, true, all(vec4<bool>(false, false, true, true)), true), func_1().xzx).a.x, arg_0.a.x);
    var var_3 = !func_1().zyw;
    let var_4 = ~(~vec4<u32>(~var_0, _wgslsmith_mult_u32(~global2.a.x, 4294967295u), abs(1u ^ var_0), countOneBits(~12443u)));
    return func_5(vec4<bool>(true, true, any(select(vec4<bool>(false, var_3.x, false, var_3.x), vec4<bool>(false, false, var_3.x, var_3.x), false)) && false, var_3.x), vec3<bool>(var_3.x, true, !(!(false != var_3.x))));
}

fn func_7(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = abs(-reverseBits(~_wgslsmith_add_vec3_i32(vec3<i32>(global2.b.x, 1i, -1i), arg_0.a.xyw)));
    global0 = array<vec2<f32>, 30>();
    global2 = Struct_2(~_wgslsmith_add_vec2_u32(global2.a, global2.a), max(func_6(func_6(Struct_1(vec4<i32>(11726i, global2.b.x, -2385i, 0i)), global1[_wgslsmith_index_u32(func_4(global2.a.x, arg_0.a.yy).x, 3u)], func_5(vec4<bool>(true, false, false, true), vec3<bool>(true, false, false))), func_2(), func_6(arg_0, global1[_wgslsmith_index_u32(global2.a.x, 3u)], func_5(vec4<bool>(true, true, false, true), vec3<bool>(false, false, false)))).a.zx, arg_0.a.yx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(686f, -1495f))));
    let var_1 = ~(~select(~vec4<u32>(global2.a.x, global2.a.x, global2.a.x, 16214u), reverseBits(vec4<u32>(2951u, 32560u, 24368u, 66882u)), true) & ~vec4<u32>(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 1u, 1u), vec4<u32>(0u, global2.a.x, 1u, 1u)), u_input.c << (35826u % 32u), func_4(1u, arg_0.a.xx).x));
    var var_2 = i32(-1i) * -4819i;
    return select(vec2<u32>(~1u, global2.a.x), abs(_wgslsmith_div_vec2_u32(global2.a, vec2<u32>(_wgslsmith_dot_vec3_u32(var_1.ywy, var_1.wyw), _wgslsmith_div_u32(7742u, global2.a.x)))), all(vec2<bool>(func_6(Struct_1(arg_0.a), global1[_wgslsmith_index_u32(731u, 3u)], Struct_1(arg_0.a)).a.x == arg_0.a.x, false)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 30>();
    global2 = global1[_wgslsmith_index_u32(~global2.a.x, 3u)];
    var var_0 = firstLeadingBit(_wgslsmith_div_vec4_u32(~vec4<u32>(global2.a.x, 4294967295u, u_input.c, global2.a.x), ~countOneBits(vec4<u32>(global2.a.x, global2.a.x, 15040u, 0u))));
    global2 = Struct_2(func_7(func_6(func_5(func_1(), vec3<bool>(true, true, true)), func_2(), func_5(vec4<bool>(true, true, true, true), vec3<bool>(true, false, false)))), -(~global2.b), _wgslsmith_f_op_f32(-global2.c));
    global2 = Struct_2(global2.a, _wgslsmith_add_vec2_i32(global2.b ^ vec2<i32>(~(-2147483647i), 10494i), firstLeadingBit(vec2<i32>(-1i) * -vec2<i32>(10475i, global2.b.x))), _wgslsmith_div_f32(-1237f, -310f));
    let x = u_input.a;
    s_output = StorageBuffer(-833f, -abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-18442i, -20805i, global2.b.x) >> (var_0.wyx % vec3<u32>(32u)), select(vec3<i32>(global2.b.x, u_input.a, 32838i), vec3<i32>(1215i, u_input.a, -1545i), vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global2.c, global2.c))));
}

