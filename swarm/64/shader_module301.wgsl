struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false);

var<private> global1: array<vec3<u32>, 23>;

var<private> global2: Struct_3 = Struct_3(0u, 37694u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_1(global0.a);
    global1 = array<vec3<u32>, 23>();
    var_0 = Struct_1(true);
    let var_1 = ~79531u;
    let var_2 = Struct_1(false);
    return Struct_3(91627u, 0u);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> Struct_1 {
    var var_0 = ~(~(-(-vec3<i32>(-1i, 45218i, 0i) << (~u_input.a.zzz % vec3<u32>(32u)))));
    var var_1 = _wgslsmith_div_f32(896f, _wgslsmith_div_f32(1224f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-350f, 1172f)) - _wgslsmith_f_op_f32(f32(-1f) * -676f)) + -560f)));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-511f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-675f * 1000f), _wgslsmith_f_op_f32(abs(427f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1220f * 765f))) - -456f);
    var_0 = _wgslsmith_add_vec3_i32(-_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, 2147483647i, -2147483647i), vec3<i32>(var_0.x, 36269i, var_0.x)), ~(~vec3<i32>(var_0.x, 1i, 0i))), vec3<i32>(-1i ^ var_0.x, -abs(_wgslsmith_mult_i32(-2147483647i, var_0.x)), var_0.x));
    let var_2 = global0.a;
    return Struct_1(all(!vec3<bool>(all(vec4<bool>(global0.a, arg_1.d.a, true, global0.a)), arg_1.b, any(vec3<bool>(arg_1.d.a, false, false)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    global1 = array<vec3<u32>, 23>();
    var var_0 = false;
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(379f)), -216f, any(select(select(!vec4<bool>(true, arg_1.b, arg_1.a.a, arg_0.a.a), !vec4<bool>(true, false, arg_0.d.a, arg_3.b), !global0.a), !select(vec4<bool>(false, arg_1.a.a, arg_1.a.a, false), vec4<bool>(false, arg_3.a.a, arg_1.b, arg_3.b), vec4<bool>(arg_1.b, arg_0.b, arg_1.a.a, true)), true | arg_0.b))));
    var var_2 = firstLeadingBit(select(~42798u, ~u_input.a.x, global0.a));
    var_0 = true;
    return func_3(func_2(), Struct_2(Struct_1(!(4294967295u != arg_1.c)), true, u_input.a.x << (arg_3.c % 32u), func_3(func_2(), arg_3)));
}

fn func_1() -> Struct_2 {
    global0 = func_4(Struct_2(Struct_1(all(select(vec3<bool>(global0.a, global0.a, false), vec3<bool>(global0.a, global0.a, false), vec3<bool>(false, false, true)))), true, 1u, Struct_1(global0.a)), Struct_2(Struct_1(true), true, ~17740u, func_3(func_2(), Struct_2(Struct_1(global0.a), global0.a, u_input.a.x, Struct_1(true)))), firstTrailingBit(8686u) ^ select(reverseBits(_wgslsmith_mult_u32(34817u, 1u)), ~u_input.a.x, global0.a), Struct_2(func_3(Struct_3(firstLeadingBit(u_input.a.x), 22238u), Struct_2(Struct_1(false), global0.a, u_input.a.x, func_3(Struct_3(15021u, 42135u), Struct_2(Struct_1(global0.a), global0.a, global2.a, Struct_1(global0.a))))), true, ~abs(1u), func_3(func_2(), Struct_2(Struct_1(global0.a), false, reverseBits(u_input.a.x), func_3(Struct_3(1u, 58827u), Struct_2(Struct_1(true), global0.a, 4294967295u, Struct_1(global0.a)))))));
    global1 = array<vec3<u32>, 23>();
    return Struct_2(func_3(func_2(), Struct_2(Struct_1(true), false, global2.a, func_4(Struct_2(Struct_1(global0.a), global0.a, 1u, Struct_1(false)), Struct_2(Struct_1(false), global0.a, 42399u, Struct_1(true)), ~25337u, Struct_2(Struct_1(true), global0.a, 0u, Struct_1(global0.a))))), all(vec3<bool>(any(select(vec4<bool>(global0.a, global0.a, global0.a, true), vec4<bool>(true, global0.a, global0.a, global0.a), vec4<bool>(global0.a, global0.a, global0.a, global0.a))), global0.a, !func_3(Struct_3(u_input.a.x, 32435u), Struct_2(Struct_1(global0.a), global0.a, 136u, Struct_1(false))).a)), _wgslsmith_div_u32((u_input.a.x << (1u % 32u)) ^ _wgslsmith_mult_u32(select(0u, 45669u, global0.a), 1u >> (u_input.a.x % 32u)), _wgslsmith_div_u32(abs(0u), 102578u)), Struct_1(global0.a || select(true, func_3(Struct_3(u_input.a.x, u_input.a.x), Struct_2(Struct_1(true), global0.a, u_input.a.x, Struct_1(false))).a, all(vec2<bool>(global0.a, true)))));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: u32, arg_3: vec2<bool>) -> Struct_1 {
    global0 = Struct_1(arg_3.x);
    var var_0 = ~u_input.a.wzz;
    global0 = Struct_1(!(!global0.a));
    let var_1 = ((vec2<i32>(-24494i, -2147483647i) ^ ((vec2<i32>(1i, -2147483647i) << (var_0.zz % vec2<u32>(32u))) & -vec2<i32>(-5986i, 14357i))) ^ -firstTrailingBit(select(vec2<i32>(41892i, 69597i), vec2<i32>(67647i, 0i), vec2<bool>(true, arg_0.a.a)))) | vec2<i32>(_wgslsmith_sub_i32(45171i, ~(-18417i)), reverseBits(reverseBits(~(-2147483647i))));
    var var_2 = func_2();
    return Struct_1(all(select(!(!arg_3), !(!vec2<bool>(false, global0.a)), var_2.b == u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.xy;
    var var_1 = func_5(func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-911f)) - _wgslsmith_f_op_f32(-840f + 1226f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-718f - -1307f)))))), 4294967295u, !select(select(select(vec2<bool>(true, global0.a), vec2<bool>(global0.a, true), vec2<bool>(false, global0.a)), select(vec2<bool>(false, global0.a), vec2<bool>(true, global0.a), global0.a), true), select(vec2<bool>(global0.a, true), !vec2<bool>(false, global0.a), !vec2<bool>(true, global0.a)), !select(vec2<bool>(global0.a, global0.a), vec2<bool>(global0.a, false), vec2<bool>(global0.a, true))));
    var var_2 = -27032i;
    let var_3 = -7839i;
    var_1 = Struct_1(select(true, true, !(!global0.a)));
    global2 = Struct_3(global2.b, var_0.x);
    global1 = array<vec3<u32>, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -274f) - _wgslsmith_f_op_f32(step(484f, _wgslsmith_f_op_f32(f32(-1f) * -637f)))), -1000f)));
}

