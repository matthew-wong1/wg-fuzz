struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: vec4<f32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
    c: Struct_3,
    d: vec2<u32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7> = array<u32, 7>(2228u, 44241u, 4294967295u, 43554u, 1455u, 20962u, 8248u);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_3(Struct_2(~arg_0.c.a.a, 35947u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-542f, 1000f, arg_0.c.a.c.x, 894f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.c.b.c.x, -2376f)) + 676f)), Struct_2(arg_0.c.b.a, ~2963u, arg_0.c.b.c, _wgslsmith_f_op_f32(max(arg_0.c.b.c.x, -1345f))), 839f);
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(global0[_wgslsmith_index_u32(10095u, 7u)], global0[_wgslsmith_index_u32(arg_0.c.b.b, 7u)], 4294967295u, global0[_wgslsmith_index_u32(1u, 7u)]), vec4<u32>(global0[_wgslsmith_index_u32(var_0.b.b, 7u)], 4294967295u, 1u, 1u), vec4<bool>(arg_0.e, true, false, arg_2.a.x)), vec4<u32>(0u, var_0.a.b, 4294967295u, 80766u), vec4<u32>(var_0.a.b, 21028u, global0[_wgslsmith_index_u32(var_0.b.b, 7u)], global0[_wgslsmith_index_u32(arg_0.d.x, 7u)])), vec4<u32>(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(66455u, 7u)], 7u)], ~var_0.b.b, var_0.b.b, 0u)) ^ 0u, abs(var_0.b.b));
    var var_2 = !arg_2.a.x;
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.c.a.c.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.a.c.x + arg_0.c.a.c.x) + -820f)))));
    let var_4 = Struct_1(vec3<bool>(!((arg_2.a.x == false) && true), true, true));
    return var_0.c;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<bool>) -> f32 {
    let var_0 = false;
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    var var_1 = Struct_4(arg_1.a.a.xx, any(select(!vec4<bool>(false, false, true, var_0), select(!vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x), !vec4<bool>(true, arg_2.x, true, false), true), !select(vec4<bool>(var_0, arg_2.x, false, true), vec4<bool>(true, var_0, arg_2.x, arg_2.x), var_0))), Struct_3(arg_1.a, Struct_2(_wgslsmith_add_vec4_i32(~arg_0.b.a, arg_1.a.a), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(72954u, arg_1.b.b, 4294967295u)), vec3<u32>(5316u, arg_0.a.b, 1u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-817f, arg_1.b.c.x, 180f, 720f))), -1670f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(515f, arg_0.b.d) + -591f) * arg_1.a.d)), _wgslsmith_mult_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(arg_0.b.b, 7u)], ~max(global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20851u, 7u)], 7u)])), vec2<u32>(0u, 4294967295u)), arg_2.x);
    var var_2 = ~1i;
    return var_1.c.a.c.x;
}

fn func_2(arg_0: Struct_4) -> f32 {
    global0 = array<u32, 7>();
    var var_0 = arg_0.e & all(vec4<bool>(!(true || arg_0.b), true, true, all(vec3<bool>(true, arg_0.b, arg_0.e))));
    let var_1 = vec4<bool>(_wgslsmith_f_op_f32(func_4(Struct_3(Struct_2(arg_0.c.b.a, 4294967295u, arg_0.c.b.c, 1135f), arg_0.c.b, -416f), Struct_3(arg_0.c.a, arg_0.c.a, _wgslsmith_f_op_f32(func_3(arg_0, -1i, Struct_1(vec3<bool>(arg_0.e, false, arg_0.b))))), select(select(vec2<bool>(arg_0.b, arg_0.e), vec2<bool>(arg_0.e, arg_0.e), vec2<bool>(false, arg_0.b)), !vec2<bool>(arg_0.b, false), arg_0.b))) < arg_0.c.a.c.x, select(false, arg_0.e, arg_0.b), true, all(!vec3<bool>(-2033i <= u_input.a, arg_0.b, !arg_0.e)));
    global0 = array<u32, 7>();
    return -349f;
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: vec3<bool>) -> Struct_4 {
    let var_0 = reverseBits(~firstTrailingBit((vec4<u32>(13816u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50682u, 7u)], 7u)], 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(72809u, 7u)], 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18466u, 7u)], 7u)]) >> (vec4<u32>(global0[_wgslsmith_index_u32(25476u, 7u)], 85715u, 5647u, 91240u) % vec4<u32>(32u))) | vec4<u32>(0u, 1u, global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)])));
    global0 = array<u32, 7>();
    var var_1 = global0[_wgslsmith_index_u32(~(var_0.x | ~var_0.x), 7u)];
    var var_2 = vec3<i32>(-2147483647i, 0i, _wgslsmith_dot_vec3_i32(min(vec3<i32>(-33834i, u_input.a, _wgslsmith_mult_i32(1i, u_input.a)), -(~vec3<i32>(u_input.a, -15288i, 0i))), vec3<i32>(_wgslsmith_sub_i32(5798i, u_input.a), reverseBits(-1i), 32617i | u_input.a) >> (var_0.xxx % vec3<u32>(32u))));
    var var_3 = 4294967295u;
    return Struct_4(firstLeadingBit(abs(_wgslsmith_clamp_vec2_i32(select(vec2<i32>(u_input.a, var_2.x), vec2<i32>(var_2.x, u_input.a), arg_2.x), vec2<i32>(-1i, -30385i), countOneBits(vec2<i32>(u_input.a, 1i))))), any(select(!select(vec3<bool>(arg_2.x, arg_2.x, arg_1), vec3<bool>(false, arg_1, false), false), select(select(arg_2, arg_2, vec3<bool>(arg_2.x, false, arg_1)), !vec3<bool>(true, arg_1, true), arg_2.x), !(!arg_1))), Struct_3(Struct_2(vec4<i32>(_wgslsmith_mult_i32(-31174i, u_input.a), 1i, u_input.a, var_2.x), 0u, _wgslsmith_div_vec4_f32(vec4<f32>(383f, arg_0, arg_0, -101f), vec4<f32>(arg_0, -1098f, -924f, arg_0)), _wgslsmith_f_op_f32(func_4(Struct_3(Struct_2(vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a), 1659u, vec4<f32>(arg_0, arg_0, arg_0, arg_0), arg_0), Struct_2(vec4<i32>(32687i, 21220i, 27659i, u_input.a), var_0.x, vec4<f32>(1000f, -1000f, arg_0, arg_0), 554f), -241f), Struct_3(Struct_2(vec4<i32>(u_input.a, var_2.x, -1i, 8153i), var_0.x, vec4<f32>(arg_0, arg_0, -1981f, 1536f), -409f), Struct_2(vec4<i32>(u_input.a, var_2.x, 1i, 1245i), 1u, vec4<f32>(arg_0, 1555f, -489f, 364f), arg_0), -380f), !arg_2.zy))), Struct_2(firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 3301i, u_input.a, 2147483647i), vec4<i32>(-320i, 34936i, var_2.x, u_input.a))), max(global0[_wgslsmith_index_u32(var_0.x, 7u)], var_0.x) & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7936u, 7u)], 7u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 431f, 554f, arg_0) * vec4<f32>(-764f, arg_0, -111f, -868f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), arg_0), vec2<u32>(global0[_wgslsmith_index_u32(~min(35648u >> (0u % 32u), 0u), 7u)], global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(max(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(60852u, 7u)], 7u)], global0[_wgslsmith_index_u32(0u, 7u)]), ~global0[_wgslsmith_index_u32(1u, 7u)]), 7u)]), true);
}

fn func_1() -> Struct_4 {
    var var_0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_4(vec2<i32>(u_input.a, 0i), true, Struct_3(Struct_2(vec4<i32>(u_input.a, u_input.a, u_input.a, 42228i), 4294967295u, vec4<f32>(1300f, -1000f, -1000f, 339f), -1563f), Struct_2(vec4<i32>(1i, u_input.a, u_input.a, u_input.a), 27329u, vec4<f32>(151f, 159f, 862f, 2298f), 596f), -574f), vec2<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)]), true))) - 325f)), true, !select(vec3<bool>(any(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, false)), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), vec3<bool>(true, false, false), vec3<bool>(false, true, true))));
    let var_1 = u_input.a;
    let var_2 = select(!select(!vec4<bool>(var_0.e, var_0.e, var_0.b, false), select(!vec4<bool>(true, var_0.b, false, var_0.e), select(vec4<bool>(var_0.e, var_0.e, true, false), vec4<bool>(var_0.e, var_0.e, false, true), var_0.b), vec4<bool>(var_0.e, var_0.b, false, false)), vec4<bool>(var_0.b, !var_0.b, false, var_0.b || var_0.e)), vec4<bool>(var_0.e, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(208f, var_0.c.a.c.x)) != var_0.c.c, var_0.e, var_0.e), func_5(var_0.c.c, var_0.b, !(!select(vec3<bool>(var_0.b, true, var_0.e), vec3<bool>(false, false, false), true))).b);
    global0 = array<u32, 7>();
    let var_3 = ~(var_0.c.b.a.yz >> (var_0.d % vec2<u32>(32u)));
    return Struct_4(-countOneBits(var_0.a), !(~min(var_3.x, var_1) >= var_3.x), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.b.c.x - -1000f))), any(var_2.xwx), !vec3<bool>(!var_0.e, var_0.b, true)).c, vec2<u32>(global0[_wgslsmith_index_u32(var_0.c.b.b, 7u)], var_0.d.x) & vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(select(global0[_wgslsmith_index_u32(var_0.c.b.b, 7u)], global0[_wgslsmith_index_u32(35572u, 7u)], false), 7u)], 7u)], 7u)], _wgslsmith_mult_u32(min(0u, 39533u), var_0.c.a.b)), false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 7>();
    var var_0 = func_1();
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-389f, 929f, -2416f, var_0.c.b.c.x)))) - _wgslsmith_f_op_vec4_f32(-var_0.c.b.c)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_4(vec2<i32>(u_input.a, u_input.a), true, var_0.c, vec2<u32>(16663u, var_0.d.x), var_0.e), 0i, Struct_1(vec3<bool>(true, false, false)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1472f * 1179f) - var_0.c.a.c.x)), var_0.c.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.a.d + _wgslsmith_f_op_f32(816f + var_0.c.a.d))), var_0.c.c));
    global0 = array<u32, 7>();
    var var_2 = var_0.c.c;
    var_0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -936f)), var_0.b, vec3<bool>(all(select(vec4<bool>(false, true, var_0.b, false), vec4<bool>(true, var_0.e, false, var_0.b), select(vec4<bool>(var_0.b, var_0.e, true, true), vec4<bool>(false, var_0.b, var_0.e, var_0.e), true))), var_0.b, var_0.b));
    let var_3 = !vec2<bool>(true, !var_0.b);
    var var_4 = Struct_1(vec3<bool>((func_5(-2586f, var_3.x, vec3<bool>(var_0.e, var_3.x, var_3.x)).b & true) | var_0.e, true, !(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24802u, 7u)], 7u)], 4294967295u) != func_1().d.x)));
    global0 = array<u32, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~reverseBits(u_input.a), ~var_0.a.x, u_input.a));
}

