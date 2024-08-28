struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_4, 1> = array<Struct_4, 1>(Struct_4(468f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> vec2<bool> {
    var var_0 = max(~1i, arg_0);
    return select(vec2<bool>(arg_1.b, !(false || select(true, arg_1.b, true))), select(vec2<bool>(arg_1.b, !global0.b), select(!(!vec2<bool>(arg_1.b, false)), select(select(vec2<bool>(arg_1.b, arg_1.b), vec2<bool>(true, arg_1.b), vec2<bool>(arg_1.b, global0.b)), select(vec2<bool>(global0.b, global0.b), vec2<bool>(true, arg_1.b), vec2<bool>(true, false)), global0.c <= global0.c), true), select(vec2<bool>(all(vec2<bool>(arg_1.b, arg_1.b)), select(false, true, false)), select(select(vec2<bool>(true, false), vec2<bool>(false, global0.b), vec2<bool>(global0.b, true)), vec2<bool>(true, true), select(vec2<bool>(arg_1.b, global0.b), vec2<bool>(false, global0.b), vec2<bool>(arg_1.b, global0.b))), vec2<bool>(true, !global0.b))), !(!select(!vec2<bool>(true, global0.b), select(vec2<bool>(true, true), vec2<bool>(global0.b, global0.b), vec2<bool>(arg_1.b, true)), !global0.b)));
}

fn func_2(arg_0: Struct_4, arg_1: vec2<u32>) -> vec2<bool> {
    var var_0 = arg_0;
    let var_1 = var_0.a;
    var var_2 = Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -861f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_0.a)), _wgslsmith_f_op_f32(var_0.a * global0.c))), _wgslsmith_f_op_f32(-var_0.a))))));
    var var_3 = vec2<u32>(arg_1.x, 26064u);
    var_2 = global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_div_u32(50325u, _wgslsmith_div_u32(arg_1.x, ~(~29802u)))), 1u)];
    return select(!(!func_3(_wgslsmith_sub_i32(-1i, global0.a), Struct_1(u_input.a.x, global0.b, -733f), arg_1.x)), select(!select(func_3(-23163i, Struct_1(-45645i, global0.b, -812f), var_3.x), !vec2<bool>(global0.b, global0.b), all(vec2<bool>(global0.b, global0.b))), select(select(select(vec2<bool>(global0.b, global0.b), vec2<bool>(global0.b, global0.b), vec2<bool>(true, global0.b)), select(vec2<bool>(global0.b, true), vec2<bool>(global0.b, true), global0.b), vec2<bool>(global0.b, false)), !select(vec2<bool>(global0.b, global0.b), vec2<bool>(true, global0.b), vec2<bool>(global0.b, false)), select(true, arg_1.x != 4294967295u, !global0.b)), any(vec4<bool>(global0.b | global0.b, global0.b, !global0.b, true))), select(select(func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(16099i, 0i, 5903i, u_input.a.x), vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, 2147483647i)), Struct_1(-14138i, true, var_0.a), var_3.x), vec2<bool>(false, !global0.b), all(vec2<bool>(global0.b, true)) != true), select(select(select(vec2<bool>(true, false), vec2<bool>(global0.b, global0.b), global0.b), vec2<bool>(global0.b, global0.b), vec2<bool>(true, true)), vec2<bool>(true, true), global0.b), select(vec2<bool>(any(vec3<bool>(false, global0.b, true)), global0.b), select(vec2<bool>(global0.b, global0.b), vec2<bool>(true, true), global0.b), vec2<bool>(all(vec2<bool>(global0.b, true)), var_3.x != 1950u))));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> f32 {
    let var_0 = select(vec2<bool>(true, true), !func_2(Struct_4(_wgslsmith_f_op_f32(331f * -3969f)), vec2<u32>(min(34768u, arg_0), 1u)), all(vec2<bool>(arg_2.b, func_3(0i, Struct_1(2147483647i, arg_2.b, arg_2.c), arg_1).x)) & global0.b);
    let var_1 = Struct_2(arg_2, arg_2, 0u);
    global1 = array<Struct_4, 1>();
    var var_2 = -reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(firstLeadingBit(u_input.a.x), arg_2.a ^ u_input.a.x, _wgslsmith_sub_i32(9654i, -29733i)), min(~vec3<i32>(global0.a, u_input.a.x, arg_2.a), vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x) & vec3<i32>(-2147483647i, -50521i, -12362i))));
    global0 = Struct_1(-var_2.x, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(685f - -615f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)))));
    return 295f;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_4(arg_2.c);
    let var_1 = ~(~_wgslsmith_add_vec4_u32(vec4<u32>(abs(4294967295u), ~28528u, 62455u, 0u), vec4<u32>(arg_3.x, arg_3.x, abs(arg_3.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.x, arg_3.x, arg_3.x, arg_3.x), vec4<u32>(arg_3.x, 86340u, arg_3.x, arg_3.x)))));
    global1 = array<Struct_4, 1>();
    global1 = array<Struct_4, 1>();
    let var_2 = 269f;
    return arg_2;
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    let var_0 = !(!select(vec4<bool>(func_2(Struct_4(global0.c), vec2<u32>(arg_1.c, arg_1.c)).x, global0.b, 1724f != global0.c, true), select(!vec4<bool>(false, true, arg_1.b.b, true), vec4<bool>(false, true, false, true), select(vec4<bool>(false, true, false, arg_1.b.b), vec4<bool>(true, true, false, true), vec4<bool>(arg_1.a.b, false, global0.b, true))), select(vec4<bool>(global0.b, false, global0.b, false), vec4<bool>(arg_1.a.b, false, false, true), true)));
    global0 = Struct_1(abs(_wgslsmith_mod_i32(-1i, -9448i)), false, func_4(vec3<i32>(~0i, _wgslsmith_div_i32(2147483647i, -40335i), u_input.a.x << (59756u % 32u)) >> (abs(~vec3<u32>(4294967295u, 0u, arg_1.c)) % vec3<u32>(32u)), global1[_wgslsmith_index_u32(~((arg_1.c << (0u % 32u)) >> (48223u % 32u)), 1u)], func_4(firstTrailingBit(~vec3<i32>(16254i, global0.a, -2147483647i)), Struct_4(arg_1.b.c), arg_1.b, ~vec2<u32>(arg_1.c, 0u) << ((vec2<u32>(arg_1.c, arg_1.c) >> (vec2<u32>(arg_1.c, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u))), vec2<u32>(11031u, 4294967295u)).c);
    var var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(firstLeadingBit(u_input.a), countOneBits(vec2<i32>(u_input.a.x, -16876i))), ~vec2<i32>(u_input.a.x, global0.a)), true, _wgslsmith_f_op_f32(1876f * arg_1.b.c)), Struct_1(~u_input.a.x, !func_3(2147483647i, arg_1.a, ~arg_1.c).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1720f, 264f)))), ~firstTrailingBit(~23631u) & arg_1.c);
    var var_2 = ~firstTrailingBit(abs(-firstTrailingBit(vec3<i32>(var_1.a.a, u_input.a.x, var_1.a.a))));
    let var_3 = ~vec2<i32>(-2147483647i, u_input.a.x >> (arg_1.c % 32u));
    return func_4(~(vec3<i32>(global0.a, _wgslsmith_add_i32(1i, 2791i), var_1.a.a) >> (abs(reverseBits(vec3<u32>(var_1.c, 0u, arg_1.c))) % vec3<u32>(32u))), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_1.c, 1u), 1u)], arg_1.b, vec2<u32>(~_wgslsmith_div_u32(56022u, 64920u), ~(~1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c, global0.c) + 1048f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(344f)) - global0.c))), Struct_2(Struct_1(-1i, 20414i == global0.a, global0.c), func_4(-vec3<i32>(global0.a, 0i, u_input.a.x), global1[_wgslsmith_index_u32(9968u, 1u)], Struct_1(~0i, global0.b, _wgslsmith_f_op_f32(func_1(109256u, 1u, Struct_1(-2147483647i, global0.b, 1656f)))), vec2<u32>(1u, 1u)), (~54653u >> (_wgslsmith_clamp_u32(4294967295u, 136327u, 15578u) % 32u)) ^ (~1u >> (1u % 32u))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.c + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c), -1575f)), global0.c)));
    let var_0 = Struct_1(~(-1i), !global0.b, 242f);
    global0 = Struct_1(firstLeadingBit(~_wgslsmith_mod_i32(1i, u_input.a.x) << (0u % 32u)), all(!select(select(vec3<bool>(var_0.b, true, global0.b), vec3<bool>(var_0.b, var_0.b, var_0.b), global0.b), !vec3<bool>(global0.b, global0.b, global0.b), select(vec3<bool>(true, true, global0.b), vec3<bool>(true, false, false), true))), -438f);
    global0 = var_0;
    global0 = Struct_1(countOneBits(i32(-1i) * -37226i), func_5(-1000f, Struct_2(var_0, func_5(global0.c, Struct_2(var_0, Struct_1(5157i, var_0.b, var_0.c), 43968u), _wgslsmith_f_op_f32(-1122f * 1652f)), ~_wgslsmith_div_u32(4294967295u, 4294967295u)), global0.c).b, 1055f);
    global0 = var_0;
    let var_1 = Struct_4(-548f);
    global0 = func_4(vec3<i32>(-_wgslsmith_sub_i32(6012i | global0.a, 42370i >> (1u % 32u)), -18756i, global0.a), Struct_4(_wgslsmith_f_op_f32(round(-109f))), func_5(_wgslsmith_div_f32(2773f, 691f), Struct_2(var_0, func_5(_wgslsmith_f_op_f32(f32(-1f) * -1409f), Struct_2(var_0, var_0, 4294967295u), _wgslsmith_f_op_f32(-global0.c)), 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - 1075f))), firstTrailingBit(vec2<u32>(_wgslsmith_mult_u32(~4294967295u, ~4294967295u), ~1u)));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec4<i32>(1i, 2869i, _wgslsmith_dot_vec3_i32(~vec3<i32>(0i, global0.a, 30074i), vec3<i32>(var_0.a, 2147483647i, -1i) ^ vec3<i32>(global0.a, 2147483647i, -21368i)), -19117i), vec4<i32>(34528i, firstTrailingBit(1i), global0.a, i32(-1i) * -2147483647i)), countOneBits(firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -8567i, 36141i, var_0.a) >> (vec4<u32>(0u, 51089u, 0u, 1u) % vec4<u32>(32u)), -vec4<i32>(var_0.a, -98243i, 28002i, -2147483647i)))), ~1u);
}

