struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<f32>(-1583f, -1273f, 188f), -276f), vec2<bool>(false, true));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> vec3<u32> {
    var var_0 = ~select(~u_input.a, u_input.a << (~42002u % 32u), any(!global0.b)) ^ -8894i;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -899f));
    let var_2 = Struct_1(global0.a.a, -326f);
    var var_3 = true;
    var var_4 = vec3<i32>(u_input.a, u_input.b, max(-26092i, -u_input.a));
    return vec3<u32>(~u_input.d, 1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 58689u, 4294967295u, 27895u), vec4<u32>(u_input.c.x, arg_0, arg_0, u_input.c.x) >> (vec4<u32>(1u, 92996u, 15622u, u_input.c.x) % vec4<u32>(32u))) & ~u_input.d);
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> vec3<u32> {
    let var_0 = false;
    var var_1 = true;
    var_1 = true;
    var var_2 = global0.a;
    global0 = Struct_2(global0.a, global0.b);
    return func_3(min(u_input.c.x, 130153u));
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: bool, arg_3: Struct_2) -> Struct_2 {
    var var_0 = -(~_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, u_input.b, 1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.a), vec3<i32>(u_input.a, 1201i, u_input.a), vec3<i32>(u_input.b, u_input.a, u_input.a))), vec3<i32>(2147483647i, 0i, u_input.a) >> (~vec3<u32>(u_input.d, arg_1, u_input.c.x) % vec3<u32>(32u))));
    let var_1 = abs(5970i << (0u % 32u));
    let var_2 = global0.a;
    let var_3 = global0.a.b;
    global0 = Struct_2(arg_3.a, select(arg_0, global0.b, select(select(vec2<bool>(true, global0.b.x), !arg_0, global0.b), !select(arg_3.b, arg_3.b, arg_2), true)));
    return arg_3;
}

fn func_1() -> vec3<f32> {
    var var_0 = func_4(!select(global0.b, global0.b, all(!vec4<bool>(true, global0.b.x, global0.b.x, true))), _wgslsmith_dot_vec3_u32(func_2(global0.a, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, -7814i), vec3<i32>(u_input.b, -15367i, 1i))), abs(vec3<u32>(~4294967295u, ~1u, func_3(53501u).x))), !global0.b.x, Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(247f, 372f, global0.a.a.x), global0.a.a)), 1601f), select(global0.b, !select(global0.b, vec2<bool>(global0.b.x, global0.b.x), global0.b.x), !all(vec4<bool>(global0.b.x, global0.b.x, global0.b.x, global0.b.x)))));
    var var_1 = func_4(vec2<bool>(any(var_0.b), true), u_input.c.x, global0.b.x, func_4(!global0.b, ~_wgslsmith_mod_u32(44851u, _wgslsmith_add_u32(u_input.c.x, u_input.c.x)), true, func_4(global0.b, u_input.c.x, !(u_input.a != u_input.b), func_4(vec2<bool>(true, global0.b.x), _wgslsmith_mult_u32(u_input.c.x, u_input.c.x), true, func_4(vec2<bool>(true, true), 1531u, var_0.b.x, Struct_2(Struct_1(vec3<f32>(var_0.a.a.x, -448f, -1773f), -447f), vec2<bool>(global0.b.x, global0.b.x)))))));
    var var_2 = func_4(select(var_0.b, vec2<bool>(any(select(vec3<bool>(true, false, var_1.b.x), vec3<bool>(global0.b.x, true, true), global0.b.x)), global0.b.x), vec2<bool>(global0.b.x, !any(vec4<bool>(false, var_0.b.x, false, false)))), ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.c.x, u_input.d, u_input.d), 4294967295u), ~(1u << (u_input.d % 32u))), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.x)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-632f)) * _wgslsmith_f_op_f32(-global0.a.b))), Struct_2(var_1.a, select(!var_1.b, select(var_1.b, vec2<bool>(true, true), true), var_0.b.x)));
    var_0 = Struct_2(var_2.a, vec2<bool>(any(vec4<bool>(true, u_input.b != u_input.b, var_0.a.b >= var_2.a.b, !var_1.b.x)), !var_1.b.x));
    var var_3 = true;
    return vec3<f32>(var_1.a.b, _wgslsmith_div_f32(var_1.a.a.x, var_1.a.a.x), _wgslsmith_f_op_f32(-var_1.a.a.x));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    var var_0 = select(!global0.b, global0.b, !(!func_4(!vec2<bool>(false, global0.b.x), u_input.c.x, global0.b.x, Struct_2(arg_1, global0.b)).b.x));
    var var_1 = vec3<u32>(18202u, ~u_input.d, 1345u);
    var var_2 = func_4(vec2<bool>(u_input.d == var_1.x, true), func_3(u_input.c.x).x, func_4(!global0.b, u_input.c.x, var_0.x, Struct_2(arg_2, select(select(global0.b, vec2<bool>(var_0.x, false), global0.b), vec2<bool>(global0.b.x, false), func_4(global0.b, var_1.x, true, Struct_2(arg_2, vec2<bool>(false, global0.b.x))).b))).b.x, func_4(vec2<bool>(global0.b.x, false), u_input.c.x, var_0.x, Struct_2(arg_2, select(!global0.b, vec2<bool>(global0.b.x, false), true)))).a;
    var var_3 = select(i32(-1i) * -1i, max(-2147483647i, ~2147483647i), global0.b.x);
    var_1 = countOneBits(~(~(~vec3<u32>(var_1.x, u_input.d, u_input.d) << (vec3<u32>(u_input.c.x, 0u, 31954u) % vec3<u32>(32u)))));
    return Struct_2(func_4(vec2<bool>(true, var_0.x), abs(64426u), global0.b.x, Struct_2(global0.a, vec2<bool>(true, false))).a, select(global0.b, select(vec2<bool>(true, true), vec2<bool>(!var_0.x, !global0.b.x), any(vec4<bool>(global0.b.x, true, true, false)) & true), any(!global0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~0i;
    let var_1 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.a.b), _wgslsmith_f_op_f32(global0.a.a.x + -1000f), _wgslsmith_f_op_f32(-448f + global0.a.b), _wgslsmith_f_op_f32(ceil(global0.a.a.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.a.x, global0.a.b, global0.a.b, global0.a.a.x))))), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(global0.a.a.x, -616f, _wgslsmith_div_f32(global0.a.a.x, 651f)), _wgslsmith_f_op_vec3_f32(func_1())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.b * -368f) - _wgslsmith_f_op_f32(f32(-1f) * -435f))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(func_4(global0.b, u_input.d, false, Struct_2(global0.a, global0.b)).a.b, global0.a.b, all(global0.b))), -1158f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * global0.a.b), -1655f))), global0.a.a.x));
    let var_2 = vec4<bool>(u_input.a != _wgslsmith_dot_vec2_i32(-firstTrailingBit(vec2<i32>(u_input.a, u_input.b)), vec2<i32>(-1i, -u_input.b)), func_5(vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.a.b + var_1.a.a.x))), _wgslsmith_div_f32(global0.a.b, _wgslsmith_f_op_f32(-var_1.a.a.x)), func_5(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.a.a.x, -2878f, global0.a.a.x, var_1.a.b))), func_4(vec2<bool>(false, false), 25374u, false, Struct_2(Struct_1(var_1.a.a, 311f), global0.b)).a, global0.a).a.a.x), var_1.a, func_4(vec2<bool>(true, true), ~select(u_input.d, u_input.d, true), !(!var_1.b.x), func_4(func_4(global0.b, 7882u, var_1.b.x, var_1).b, 43015u, var_1.b.x, func_5(vec4<f32>(608f, global0.a.a.x, var_1.a.b, 900f), Struct_1(var_1.a.a, 2480f), Struct_1(vec3<f32>(var_1.a.b, -232f, -1972f), var_1.a.a.x)))).a).b.x, var_1.b.x, any(select(select(vec3<bool>(false, global0.b.x, global0.b.x), select(vec3<bool>(true, global0.b.x, true), vec3<bool>(true, false, global0.b.x), global0.b.x), vec3<bool>(true, true, true)), vec3<bool>(global0.b.x, all(vec4<bool>(false, var_1.b.x, true, var_1.b.x)), -537f < global0.a.b), !select(vec3<bool>(var_1.b.x, var_1.b.x, global0.b.x), vec3<bool>(global0.b.x, true, false), false))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.a, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(i32(-1i) * -6665i, ~0i, u_input.a | -2147483647i, 34099i), firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, -1i, -40447i), vec4<i32>(2147483647i, u_input.a, -1i, 2147483647i)))), abs(select(vec4<i32>(u_input.a, u_input.a, u_input.a, 2199i) << (vec4<u32>(3024u, u_input.c.x, u_input.d, 85529u) % vec4<u32>(32u)), -vec4<i32>(-1i, 2147483647i, 35608i, u_input.a), all(vec4<bool>(global0.b.x, global0.b.x, var_2.x, var_2.x))))));
}

