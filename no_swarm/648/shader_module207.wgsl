struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec4<i32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec3<i32>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1128f, 236f);

var<private> global1: array<f32, 31>;

var<private> global2: bool;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3) -> vec3<bool> {
    global2 = true;
    global1 = array<f32, 31>();
    global2 = all(vec4<bool>(arg_2.d.b, !(false | !arg_0.e.e), false, false));
    global1 = array<f32, 31>();
    let var_0 = arg_2.a.d;
    return select(select(!vec3<bool>(false, arg_0.a.e, any(vec2<bool>(false, false))), vec3<bool>(all(select(vec3<bool>(arg_0.d.e, false, true), vec3<bool>(false, true, false), vec3<bool>(true, arg_0.d.e, arg_2.e.b))), false, false), !select(vec3<bool>(arg_0.d.e, true, arg_0.a.b), select(vec3<bool>(arg_0.d.b, false, true), vec3<bool>(arg_0.d.e, true, arg_0.e.b), vec3<bool>(arg_0.d.e, arg_0.a.e, false)), vec3<bool>(true, true, true))), !(!vec3<bool>(true, select(false, arg_2.e.b, arg_2.e.e), arg_2.e.b)), !vec3<bool>(arg_2.d.b, !arg_2.d.e, false));
}

fn func_4(arg_0: vec3<bool>) -> i32 {
    global0 = vec2<f32>(1503f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 31u)] + 1170f) + _wgslsmith_f_op_f32(max(-827f, global1[_wgslsmith_index_u32(4294967295u, 31u)])))), _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(~u_input.a | select(4294967295u, 43760u, arg_0.x), 31u)], _wgslsmith_f_op_f32(1836f + global1[_wgslsmith_index_u32(1u, 31u)]))))));
    let var_0 = Struct_2(~((0i | _wgslsmith_dot_vec4_i32(vec4<i32>(-9157i, 2147483647i, 2147483647i, -42105i), vec4<i32>(2147483647i, -1i, -21094i, -34124i))) ^ 1i), true, firstTrailingBit(_wgslsmith_clamp_vec4_i32(countOneBits(-vec4<i32>(2147483647i, -17362i, 1i, -2147483647i)), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-13665i, 32207i, -2147483647i, 2147483647i), vec4<i32>(2147483647i, 2147483647i, 2147483647i, -39865i)), countOneBits(vec4<i32>(-1027i, -7119i, 1i, -1i))), ~firstLeadingBit(vec4<i32>(1i, 20246i, -2147483647i, 2147483647i)))), Struct_1(abs(~(~1u)), abs(-2147483647i), 111f, _wgslsmith_sub_i32(_wgslsmith_add_i32(-1i, -1i), _wgslsmith_mult_i32(~(-73381i), max(0i, -1i)))), false || (true & !(false | arg_0.x)));
    var var_1 = reverseBits(var_0.a ^ _wgslsmith_clamp_i32(var_0.c.x, -11912i, _wgslsmith_mult_i32(~var_0.c.x, var_0.c.x)));
    let var_2 = i32(-1i) * -(~(~(-var_0.d.b)));
    let var_3 = var_0.c.x;
    return 1i;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2) -> Struct_3 {
    let var_0 = Struct_1(~_wgslsmith_add_u32(~_wgslsmith_add_u32(arg_1.d.a, 0u), ~0u >> (arg_0.d.d.a % 32u)), func_4(func_3(Struct_3(Struct_2(2147483647i, true, arg_1.c, Struct_1(77108u, -21434i, 480f, 2147483647i), true), arg_0.b, vec3<i32>(arg_1.d.b, arg_1.a, 35022i) & arg_0.c, arg_0.a, Struct_2(arg_1.c.x, arg_1.b, arg_1.c, arg_1.d, arg_0.e.e)), arg_0.e.d, Struct_3(Struct_2(arg_1.c.x, false, vec4<i32>(arg_1.a, 21508i, 1i, 2147483647i), Struct_1(arg_0.d.d.a, arg_0.a.c.x, arg_0.e.d.c, 33936i), true), _wgslsmith_f_op_vec4_f32(-arg_0.b), vec3<i32>(-1i, -1i, arg_0.e.c.x), Struct_2(2147483647i, true, arg_0.d.c, Struct_1(arg_1.d.a, 2147483647i, 320f, arg_1.d.b), arg_0.e.b), arg_1))), 926f, select(reverseBits(i32(-1i) * -1i), -(_wgslsmith_mod_i32(arg_1.a, 1i) << (min(0u, arg_1.d.a) % 32u)), all(select(select(vec4<bool>(true, arg_0.d.b, arg_1.b, arg_0.e.b), vec4<bool>(false, false, true, arg_0.a.b), true), !vec4<bool>(false, arg_0.d.e, arg_0.a.b, arg_0.e.e), true))));
    let var_1 = ~(~vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.e.d.a, u_input.a, arg_1.d.a), vec3<u32>(arg_0.d.d.a, 4294967295u, var_0.a)), arg_1.d.a, 98006u));
    var var_2 = var_0.a;
    var var_3 = 1000f;
    let var_4 = reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(~reverseBits(4294967295u), 0u), vec2<u32>(~arg_1.d.a, abs(~var_1.x))));
    return arg_0;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2) -> vec2<u32> {
    let var_0 = arg_0.e.c.x;
    var var_1 = select(!select(vec4<bool>(false, arg_0.d.b, arg_1.b && arg_1.b, arg_0.e.c.x <= arg_1.d.b), vec4<bool>(!arg_0.a.b, !arg_1.b, arg_1.e, false), !vec4<bool>(false, false, arg_1.b, arg_0.a.b)), vec4<bool>(true, any(func_3(Struct_3(arg_0.a, vec4<f32>(750f, 2910f, arg_1.d.c, arg_0.b.x), arg_1.c.zxx, Struct_2(-23196i, arg_0.e.b, vec4<i32>(arg_0.e.c.x, 12927i, arg_0.c.x, 19487i), arg_0.e.d, arg_0.a.e), Struct_2(0i, arg_1.e, vec4<i32>(arg_1.d.d, 19336i, 0i, arg_0.d.a), arg_1.d, arg_1.e)), arg_1.d, Struct_3(Struct_2(var_0, true, arg_0.e.c, arg_0.a.d, false), arg_0.b, vec3<i32>(arg_0.c.x, 20411i, arg_0.c.x), arg_1, arg_1))), arg_1.e, any(!select(vec3<bool>(false, arg_1.b, false), vec3<bool>(arg_1.b, false, arg_1.b), true))), select(1i <= ~arg_1.a, arg_1.d.c > _wgslsmith_f_op_f32(-arg_0.b.x), !(!all(vec2<bool>(arg_0.a.e, arg_0.e.b)))));
    let var_2 = func_2(func_2(func_2(Struct_3(func_2(arg_0, Struct_2(2147483647i, var_1.x, vec4<i32>(-2147483647i, arg_0.d.a, arg_0.c.x, 1i), Struct_1(4294967295u, arg_0.e.a, -868f, arg_0.a.c.x), false)).d, vec4<f32>(-740f, arg_1.d.c, -447f, global0.x), -arg_0.d.c.wwx, Struct_2(arg_1.d.d, arg_1.b, vec4<i32>(0i, -24803i, arg_1.a, 0i), Struct_1(arg_0.d.d.a, arg_0.e.c.x, arg_0.b.x, arg_1.a), arg_1.b), func_2(Struct_3(arg_0.d, arg_0.b, vec3<i32>(arg_0.c.x, -2147483647i, arg_1.a), arg_1, arg_1), arg_1).e), func_2(arg_0, arg_1).d), func_2(func_2(arg_0, func_2(Struct_3(arg_0.d, arg_0.b, arg_0.d.c.wwz, arg_1, Struct_2(arg_0.d.d.d, false, arg_0.d.c, arg_0.a.d, arg_0.a.b)), arg_1).d), Struct_2(arg_1.c.x, !arg_0.e.b, arg_1.c, Struct_1(u_input.a, 2147483647i, 143f, -13083i), false)).d), arg_0.a);
    var var_3 = vec4<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(~(~0u), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 25647u), vec2<u32>(1u, 15878u)), u_input.a)), arg_0.d.d.a), var_2.d.d.a, u_input.a, reverseBits(min(~arg_0.e.d.a, ~4294967295u)));
    let var_4 = global1[_wgslsmith_index_u32(~arg_0.d.d.a, 31u)];
    return ~(~abs(var_3.wx) << (var_3.zx % vec2<u32>(32u)));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: bool) -> i32 {
    var var_0 = vec2<u32>(u_input.a, ~23476u);
    var_0 = ~(~vec2<u32>(35091u, var_0.x)) >> (~_wgslsmith_sub_vec2_u32(func_5(func_2(Struct_3(Struct_2(arg_0.x, true, vec4<i32>(1i, arg_0.x, arg_0.x, arg_0.x), Struct_1(19532u, arg_0.x, 1932f, arg_0.x), arg_1), vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(var_0.x, 31u)], global1[_wgslsmith_index_u32(var_0.x, 31u)]), arg_0.wxy, Struct_2(-3201i, false, arg_0, Struct_1(u_input.a, arg_0.x, global0.x, arg_0.x), arg_1), Struct_2(arg_0.x, true, arg_0, Struct_1(var_0.x, 0i, global1[_wgslsmith_index_u32(var_0.x, 31u)], 24013i), true)), Struct_2(29481i, arg_2, arg_0, Struct_1(1u, -1i, global0.x, 1i), arg_2)), func_2(Struct_3(Struct_2(-36646i, arg_2, arg_0, Struct_1(var_0.x, -44013i, global0.x, 15794i), false), vec4<f32>(-552f, global0.x, global1[_wgslsmith_index_u32(60786u, 31u)], 2076f), arg_0.xzw, Struct_2(arg_0.x, arg_2, arg_0, Struct_1(8420u, arg_0.x, global0.x, arg_0.x), arg_1), Struct_2(74654i, false, vec4<i32>(arg_0.x, -1i, 2147483647i, arg_0.x), Struct_1(u_input.a, arg_0.x, 2386f, 13077i), arg_2)), Struct_2(arg_0.x, arg_2, vec4<i32>(61855i, 10496i, arg_0.x, arg_0.x), Struct_1(1u, arg_0.x, -991f, arg_0.x), false)).e), _wgslsmith_sub_vec2_u32(func_5(Struct_3(Struct_2(arg_0.x, false, arg_0, Struct_1(var_0.x, 0i, -2409f, 2147483647i), true), vec4<f32>(global0.x, global1[_wgslsmith_index_u32(var_0.x, 31u)], global0.x, global0.x), arg_0.xyz, Struct_2(-60616i, false, arg_0, Struct_1(u_input.a, arg_0.x, global1[_wgslsmith_index_u32(var_0.x, 31u)], arg_0.x), arg_1), Struct_2(arg_0.x, arg_1, vec4<i32>(arg_0.x, 2147483647i, -2147483647i, arg_0.x), Struct_1(var_0.x, arg_0.x, global0.x, 49690i), false)), Struct_2(arg_0.x, arg_1, arg_0, Struct_1(67494u, -2147483647i, global1[_wgslsmith_index_u32(24112u, 31u)], arg_0.x), arg_1)), vec2<u32>(var_0.x, u_input.a))) % vec2<u32>(32u));
    var_0 = vec2<u32>(0u, 4294967295u);
    let var_1 = func_2(Struct_3(Struct_2(-(~0i), false, _wgslsmith_mod_vec4_i32(arg_0, vec4<i32>(arg_0.x, -1i, -2147483647i, arg_0.x)), func_2(Struct_3(Struct_2(arg_0.x, arg_2, vec4<i32>(arg_0.x, -2147483647i, arg_0.x, arg_0.x), Struct_1(u_input.a, -5836i, global0.x, 1i), true), vec4<f32>(global0.x, global1[_wgslsmith_index_u32(u_input.a, 31u)], global1[_wgslsmith_index_u32(var_0.x, 31u)], -221f), vec3<i32>(arg_0.x, arg_0.x, -30950i), Struct_2(arg_0.x, arg_1, arg_0, Struct_1(u_input.a, arg_0.x, global0.x, arg_0.x), arg_1), Struct_2(0i, false, arg_0, Struct_1(7178u, arg_0.x, 309f, arg_0.x), true)), Struct_2(1i, false, arg_0, Struct_1(var_0.x, arg_0.x, -101f, 8010i), true)).e.d, _wgslsmith_f_op_f32(step(1021f, 1000f)) != 1282f), vec4<f32>(global1[_wgslsmith_index_u32(~(~53057u), 31u)], func_2(Struct_3(Struct_2(-2147483647i, false, vec4<i32>(arg_0.x, 4032i, arg_0.x, 0i), Struct_1(0u, 62503i, global0.x, arg_0.x), true), vec4<f32>(-221f, -225f, -943f, global0.x), arg_0.wwx, Struct_2(1i, arg_2, arg_0, Struct_1(4294967295u, arg_0.x, global0.x, 54105i), false), Struct_2(arg_0.x, true, arg_0, Struct_1(64042u, arg_0.x, global1[_wgslsmith_index_u32(11679u, 31u)], 44150i), arg_2)), func_2(Struct_3(Struct_2(arg_0.x, false, arg_0, Struct_1(u_input.a, arg_0.x, 1000f, arg_0.x), true), vec4<f32>(global1[_wgslsmith_index_u32(1u, 31u)], 651f, 1110f, -1433f), arg_0.zxz, Struct_2(arg_0.x, true, vec4<i32>(arg_0.x, arg_0.x, arg_0.x, 1i), Struct_1(68306u, arg_0.x, 104f, -36287i), arg_1), Struct_2(-21155i, arg_1, arg_0, Struct_1(u_input.a, 0i, global1[_wgslsmith_index_u32(0u, 31u)], arg_0.x), arg_2)), Struct_2(26880i, arg_1, vec4<i32>(-2147483647i, arg_0.x, arg_0.x, 2147483647i), Struct_1(1u, -2147483647i, global1[_wgslsmith_index_u32(u_input.a, 31u)], -15943i), false)).a).d.d.c, -643f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + func_2(Struct_3(Struct_2(arg_0.x, false, vec4<i32>(1i, 38929i, arg_0.x, 16675i), Struct_1(0u, arg_0.x, 223f, -7959i), false), vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 31u)], 1000f, global0.x, 722f), vec3<i32>(arg_0.x, 1i, arg_0.x), Struct_2(arg_0.x, arg_2, vec4<i32>(-43847i, arg_0.x, arg_0.x, 2147483647i), Struct_1(37816u, arg_0.x, global1[_wgslsmith_index_u32(u_input.a, 31u)], arg_0.x), true), Struct_2(1i, true, vec4<i32>(arg_0.x, 2147483647i, 0i, arg_0.x), Struct_1(u_input.a, 2147483647i, 835f, 25029i), arg_2)), Struct_2(arg_0.x, false, vec4<i32>(0i, 0i, arg_0.x, -1i), Struct_1(var_0.x, -2147483647i, 1044f, arg_0.x), arg_2)).a.d.c)), vec3<i32>(_wgslsmith_dot_vec2_i32(arg_0.ww, vec2<i32>(arg_0.x, arg_0.x)), (i32(-1i) * -32744i) & (arg_0.x << (var_0.x % 32u)), 11420i), func_2(Struct_3(Struct_2(arg_0.x, false, vec4<i32>(arg_0.x, arg_0.x, arg_0.x, -10893i), Struct_1(14434u, arg_0.x, 1045f, arg_0.x), arg_1), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(35596u, 31u)], global1[_wgslsmith_index_u32(0u, 31u)], global1[_wgslsmith_index_u32(1u, 31u)], global0.x), vec4<f32>(286f, global1[_wgslsmith_index_u32(var_0.x, 31u)], global0.x, -781f), true)), vec3<i32>(arg_0.x, arg_0.x, arg_0.x), Struct_2(35658i, false, vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), Struct_1(u_input.a, 1i, 1134f, -81521i), arg_2), func_2(Struct_3(Struct_2(arg_0.x, false, arg_0, Struct_1(1u, 432i, global0.x, arg_0.x), false), vec4<f32>(-271f, -538f, global0.x, 645f), vec3<i32>(1i, 1i, arg_0.x), Struct_2(arg_0.x, true, arg_0, Struct_1(u_input.a, arg_0.x, global0.x, -2926i), true), Struct_2(597i, arg_2, arg_0, Struct_1(u_input.a, -2147483647i, global0.x, arg_0.x), arg_1)), Struct_2(-75129i, arg_1, vec4<i32>(arg_0.x, arg_0.x, 12911i, arg_0.x), Struct_1(4294967295u, arg_0.x, 170f, 2147483647i), arg_2)).d), func_2(func_2(Struct_3(Struct_2(arg_0.x, true, arg_0, Struct_1(var_0.x, arg_0.x, -1383f, 17495i), arg_2), vec4<f32>(-1870f, global0.x, global0.x, -1065f), arg_0.ywz, Struct_2(-25334i, false, arg_0, Struct_1(var_0.x, arg_0.x, 956f, 36572i), arg_1), Struct_2(arg_0.x, arg_1, vec4<i32>(arg_0.x, 2147483647i, -37199i, -499i), Struct_1(var_0.x, -24399i, global1[_wgslsmith_index_u32(u_input.a, 31u)], 28242i), true)), Struct_2(-27109i, arg_1, vec4<i32>(arg_0.x, arg_0.x, -4099i, arg_0.x), Struct_1(var_0.x, -2147483647i, global0.x, arg_0.x), arg_1)), Struct_2(arg_0.x, arg_1, arg_0, Struct_1(var_0.x, 13514i, global1[_wgslsmith_index_u32(u_input.a, 31u)], 1i), true)).d).d, Struct_2(firstLeadingBit(-arg_0.x), arg_2, vec4<i32>(~2147483647i, arg_0.x, -2147483647i | arg_0.x, 1i), Struct_1(u_input.a, -2283i, global0.x, ~(-30672i)), func_3(Struct_3(Struct_2(10724i, false, vec4<i32>(1i, arg_0.x, arg_0.x, -1i), Struct_1(u_input.a, -10512i, -528f, -5526i), arg_2), vec4<f32>(492f, -1000f, global1[_wgslsmith_index_u32(4294967295u, 31u)], global0.x), arg_0.wxx, Struct_2(arg_0.x, arg_2, vec4<i32>(-1i, arg_0.x, arg_0.x, 2147483647i), Struct_1(4294967295u, 22953i, global0.x, -33179i), arg_2), Struct_2(-29150i, arg_2, vec4<i32>(-67263i, arg_0.x, -14377i, arg_0.x), Struct_1(70623u, 2147483647i, global1[_wgslsmith_index_u32(u_input.a, 31u)], arg_0.x), arg_2)), Struct_1(u_input.a, arg_0.x, global1[_wgslsmith_index_u32(21058u, 31u)], 3134i), Struct_3(Struct_2(-2147483647i, arg_2, arg_0, Struct_1(0u, -2147483647i, global0.x, 1i), false), vec4<f32>(global1[_wgslsmith_index_u32(0u, 31u)], -474f, global0.x, -1215f), vec3<i32>(arg_0.x, 1i, 51013i), Struct_2(-1i, arg_1, vec4<i32>(-2147483647i, -4598i, 0i, 9343i), Struct_1(81489u, -1088i, global1[_wgslsmith_index_u32(u_input.a, 31u)], 11646i), arg_1), Struct_2(-2147483647i, arg_2, arg_0, Struct_1(1u, arg_0.x, global1[_wgslsmith_index_u32(u_input.a, 31u)], arg_0.x), false))).x | arg_2)), Struct_2(-2147483647i, all(vec2<bool>(arg_2, arg_1)) || func_3(Struct_3(Struct_2(-49696i, true, vec4<i32>(1i, 21778i, 0i, arg_0.x), Struct_1(4294967295u, -1i, -858f, arg_0.x), arg_2), vec4<f32>(1758f, global0.x, global1[_wgslsmith_index_u32(4294967295u, 31u)], -645f), vec3<i32>(13141i, -2147483647i, -2147483647i), Struct_2(arg_0.x, arg_1, arg_0, Struct_1(var_0.x, -25360i, 562f, arg_0.x), true), Struct_2(-34066i, arg_2, arg_0, Struct_1(var_0.x, -9841i, 1123f, 36312i), false)), func_2(Struct_3(Struct_2(-2147483647i, true, arg_0, Struct_1(6260u, arg_0.x, global0.x, -24049i), arg_1), vec4<f32>(global1[_wgslsmith_index_u32(1u, 31u)], global0.x, -846f, 163f), vec3<i32>(-31524i, arg_0.x, -2147483647i), Struct_2(-2147483647i, arg_2, vec4<i32>(arg_0.x, arg_0.x, 0i, 1635i), Struct_1(var_0.x, 2147483647i, -327f, arg_0.x), false), Struct_2(arg_0.x, arg_1, vec4<i32>(arg_0.x, arg_0.x, 19430i, arg_0.x), Struct_1(var_0.x, -2147483647i, global1[_wgslsmith_index_u32(var_0.x, 31u)], -1i), false)), Struct_2(arg_0.x, false, arg_0, Struct_1(4294967295u, arg_0.x, 620f, -16743i), arg_2)).e.d, Struct_3(Struct_2(arg_0.x, arg_1, arg_0, Struct_1(var_0.x, -8646i, 1753f, arg_0.x), true), vec4<f32>(1012f, -531f, -1106f, global0.x), arg_0.zxw, Struct_2(arg_0.x, true, vec4<i32>(-8566i, -21277i, arg_0.x, -1i), Struct_1(7082u, -1i, 438f, arg_0.x), arg_2), Struct_2(arg_0.x, true, arg_0, Struct_1(u_input.a, 0i, global1[_wgslsmith_index_u32(4294967295u, 31u)], arg_0.x), arg_2))).x, -select(max(arg_0, arg_0), _wgslsmith_div_vec4_i32(arg_0, vec4<i32>(arg_0.x, 1i, -26225i, arg_0.x)), all(vec4<bool>(false, arg_2, arg_1, false))), func_2(func_2(Struct_3(Struct_2(-8655i, false, arg_0, Struct_1(1u, 18979i, 1175f, -2147483647i), arg_1), vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 31u)], -103f, 1981f, -409f), vec3<i32>(2147483647i, arg_0.x, -1i), Struct_2(arg_0.x, arg_1, vec4<i32>(arg_0.x, -31445i, arg_0.x, arg_0.x), Struct_1(1u, -2147483647i, 146f, -1i), arg_1), Struct_2(32198i, true, arg_0, Struct_1(21047u, 1i, global1[_wgslsmith_index_u32(11852u, 31u)], arg_0.x), false)), func_2(Struct_3(Struct_2(-14663i, true, arg_0, Struct_1(1u, arg_0.x, -883f, 7038i), arg_2), vec4<f32>(-608f, -570f, global1[_wgslsmith_index_u32(u_input.a, 31u)], -162f), arg_0.zyx, Struct_2(arg_0.x, arg_1, arg_0, Struct_1(31287u, arg_0.x, -798f, 0i), true), Struct_2(arg_0.x, true, vec4<i32>(42090i, arg_0.x, arg_0.x, -4045i), Struct_1(4294967295u, arg_0.x, global0.x, arg_0.x), arg_2)), Struct_2(arg_0.x, arg_1, vec4<i32>(arg_0.x, arg_0.x, 0i, arg_0.x), Struct_1(u_input.a, arg_0.x, -1123f, arg_0.x), false)).d), func_2(Struct_3(Struct_2(arg_0.x, true, arg_0, Struct_1(u_input.a, arg_0.x, 538f, -2147483647i), arg_1), vec4<f32>(-1007f, global0.x, -115f, -1161f), vec3<i32>(-12227i, arg_0.x, -2147483647i), Struct_2(arg_0.x, arg_1, vec4<i32>(arg_0.x, arg_0.x, -2147483647i, arg_0.x), Struct_1(u_input.a, 21139i, global0.x, 34449i), false), Struct_2(-2147483647i, true, vec4<i32>(arg_0.x, arg_0.x, arg_0.x, 37514i), Struct_1(u_input.a, arg_0.x, global1[_wgslsmith_index_u32(var_0.x, 31u)], arg_0.x), true)), Struct_2(-41514i, arg_1, arg_0, Struct_1(0u, -1i, -775f, arg_0.x), false)).a).a.d, true)).e.d;
    return arg_0.x ^ abs(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, arg_0.x) & arg_0.xx, ~vec2<i32>(var_1.b, var_1.b)), _wgslsmith_div_vec2_i32(vec2<i32>(var_1.b, 11070i), vec2<i32>(2147483647i, arg_0.x)) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(-29659i, 0i), arg_0.yy)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(-max(5406i, ~1i), (_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-619f)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(0u, 31u)])))) | true, select(vec4<i32>(i32(-1i) * -1i, -12158i, 52367i >> (u_input.a % 32u), _wgslsmith_div_i32(2147483647i, -11262i)), firstTrailingBit(-vec4<i32>(1i, 2147483647i, -2147483647i, 2147483647i)), any(vec4<bool>(true, true, true, true))) | vec4<i32>(1i, ~2147483647i, -(~7432i), -(i32(-1i) * -59118i)), Struct_1(4294967295u, func_1(select(-vec4<i32>(-52051i, -30177i, 0i, 0i), vec4<i32>(2147483647i, -2147483647i, -1i, -1i) << (vec4<u32>(4557u, 18807u, u_input.a, u_input.a) % vec4<u32>(32u)), vec4<bool>(false, true, false, true)), all(vec4<bool>(true, true, true, true)), true), 1597f, countOneBits(abs(-2147483647i >> (u_input.a % 32u)))), !(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)) <= ((u_input.a | 10264u) << (_wgslsmith_sub_u32(u_input.a, u_input.a) % 32u))));
    global0 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.c) * _wgslsmith_f_op_f32(select(878f, global0.x, var_0.e))) - global1[_wgslsmith_index_u32(~func_2(Struct_3(var_0, vec4<f32>(-1065f, -562f, 360f, -2915f), var_0.c.yxz, var_0, var_0), var_0).d.d.a, 31u)])), vec2<f32>(_wgslsmith_f_op_f32(step(-712f, var_0.d.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.c) * _wgslsmith_f_op_f32(f32(-1f) * -933f)))));
    var var_1 = Struct_3(func_2(func_2(Struct_3(var_0, vec4<f32>(var_0.d.c, 2862f, var_0.d.c, var_0.d.c), abs(var_0.c.yxx), Struct_2(var_0.c.x, var_0.e, vec4<i32>(var_0.c.x, var_0.a, var_0.c.x, var_0.d.b), Struct_1(1u, 101041i, -797f, -1i), var_0.b), var_0), Struct_2(~var_0.c.x, false, vec4<i32>(var_0.d.b, var_0.a, 0i, 1i), var_0.d, true)), Struct_2(-(~var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -209f) < _wgslsmith_f_op_f32(-1006f + global0.x), ~countOneBits(vec4<i32>(-17537i, -2147483647i, -20828i, -8586i)), Struct_1(1u, -var_0.c.x, var_0.d.c, abs(1i)), true)).d, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.c, -796f, global1[_wgslsmith_index_u32(1u, 31u)], var_0.d.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1642f), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(2438u, 31u)])), _wgslsmith_f_op_f32(select(-1693f, -1363f, true)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 31u)])))), -var_0.c.wzw, Struct_2(-(~(-30899i)), all(select(select(vec2<bool>(var_0.e, false), vec2<bool>(false, var_0.b), vec2<bool>(var_0.e, var_0.b)), func_3(Struct_3(Struct_2(var_0.d.b, var_0.b, vec4<i32>(var_0.a, var_0.c.x, -1i, 26799i), Struct_1(var_0.d.a, var_0.c.x, global0.x, 55318i), var_0.e), vec4<f32>(-1039f, global0.x, var_0.d.c, 690f), vec3<i32>(var_0.d.b, var_0.d.d, var_0.d.d), Struct_2(-91751i, true, vec4<i32>(var_0.d.b, var_0.a, var_0.c.x, 2147483647i), Struct_1(u_input.a, 41903i, 726f, var_0.d.b), var_0.e), Struct_2(1i, var_0.e, var_0.c, var_0.d, var_0.e)), Struct_1(0u, 12294i, -776f, 2147483647i), Struct_3(Struct_2(var_0.a, var_0.e, vec4<i32>(var_0.c.x, 2147483647i, var_0.d.b, 0i), var_0.d, var_0.b), vec4<f32>(-178f, 831f, var_0.d.c, 814f), vec3<i32>(var_0.c.x, 27659i, 0i), var_0, var_0)).yz, var_0.b)), max(countOneBits(vec4<i32>(var_0.d.b, 0i, var_0.a, -2147483647i)), var_0.c) << ((vec4<u32>(32793u, 1u, var_0.d.a, u_input.a) << (vec4<u32>(var_0.d.a, 1u, 1u, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u)), func_2(func_2(func_2(Struct_3(Struct_2(-55785i, var_0.e, var_0.c, Struct_1(30019u, -25644i, 909f, 1i), false), vec4<f32>(466f, global0.x, 606f, global0.x), vec3<i32>(var_0.c.x, var_0.d.b, -901i), Struct_2(22907i, var_0.e, vec4<i32>(var_0.c.x, -21923i, 2147483647i, var_0.d.b), var_0.d, var_0.e), Struct_2(-9246i, var_0.b, var_0.c, var_0.d, var_0.b)), var_0), Struct_2(-1i, true, var_0.c, Struct_1(0u, -1i, -587f, var_0.a), var_0.e)), func_2(func_2(Struct_3(Struct_2(1i, var_0.b, var_0.c, var_0.d, true), vec4<f32>(global0.x, -611f, 486f, global0.x), vec3<i32>(var_0.c.x, var_0.a, 1i), var_0, Struct_2(var_0.a, false, vec4<i32>(var_0.c.x, 2147483647i, var_0.d.b, var_0.d.b), Struct_1(var_0.d.a, var_0.d.d, 984f, var_0.a), false)), Struct_2(1i, var_0.e, var_0.c, var_0.d, true)), Struct_2(var_0.d.d, false, var_0.c, Struct_1(32815u, var_0.a, global1[_wgslsmith_index_u32(var_0.d.a, 31u)], var_0.d.d), var_0.e)).e).d.d, any(select(select(vec4<bool>(var_0.b, var_0.e, false, true), vec4<bool>(false, var_0.b, var_0.b, false), false), vec4<bool>(var_0.e, false, false, var_0.e), !vec4<bool>(false, true, var_0.e, true)))), Struct_2(_wgslsmith_add_i32(1i & firstTrailingBit(44204i), _wgslsmith_mod_i32(-73408i, var_0.d.d) & (-2147483647i << (u_input.a % 32u))), all(!(!vec2<bool>(var_0.b, true))), _wgslsmith_add_vec4_i32(~_wgslsmith_clamp_vec4_i32(var_0.c, vec4<i32>(-12551i, 16555i, -2147483647i, 2147483647i), vec4<i32>(-2147483647i, var_0.a, -2147483647i, 59132i)), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.d.d, var_0.c.x, var_0.a, 2621i), vec4<i32>(var_0.a, var_0.a, var_0.c.x, var_0.c.x))), func_2(Struct_3(func_2(Struct_3(var_0, vec4<f32>(-168f, global0.x, global1[_wgslsmith_index_u32(var_0.d.a, 31u)], -1536f), vec3<i32>(var_0.a, -2147483647i, var_0.c.x), Struct_2(var_0.d.d, true, vec4<i32>(var_0.a, var_0.c.x, var_0.c.x, -27878i), var_0.d, var_0.b), var_0), var_0).e, vec4<f32>(var_0.d.c, -1813f, global1[_wgslsmith_index_u32(1u, 31u)], var_0.d.c), var_0.c.zyy, var_0, func_2(Struct_3(Struct_2(var_0.c.x, var_0.b, var_0.c, Struct_1(4294967295u, var_0.d.b, var_0.d.c, -2147483647i), var_0.b), vec4<f32>(var_0.d.c, -968f, -618f, 132f), var_0.c.wyw, Struct_2(var_0.c.x, var_0.b, vec4<i32>(10297i, var_0.a, -1943i, var_0.d.b), var_0.d, var_0.b), Struct_2(var_0.c.x, var_0.b, vec4<i32>(-2147483647i, var_0.a, var_0.a, 2147483647i), Struct_1(u_input.a, var_0.d.d, 185f, -1i), false)), var_0).e), func_2(func_2(Struct_3(var_0, vec4<f32>(221f, 455f, global1[_wgslsmith_index_u32(var_0.d.a, 31u)], 1000f), var_0.c.zyy, Struct_2(-2147483647i, var_0.e, var_0.c, var_0.d, var_0.b), var_0), Struct_2(var_0.a, false, vec4<i32>(var_0.d.d, 33067i, var_0.d.b, -2147483647i), Struct_1(127531u, var_0.a, global0.x, -2147483647i), false)), func_2(Struct_3(var_0, vec4<f32>(523f, var_0.d.c, var_0.d.c, var_0.d.c), var_0.c.wyx, var_0, Struct_2(-3744i, false, var_0.c, var_0.d, var_0.e)), Struct_2(-1i, false, vec4<i32>(-17130i, -1i, var_0.a, 46233i), var_0.d, var_0.e)).d).d).d.d, true));
    global2 = false;
    let var_2 = var_0;
    var var_3 = countOneBits(~4735i);
    let var_4 = Struct_3(func_2(Struct_3(var_1.e, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -522f), _wgslsmith_div_f32(var_0.d.c, global0.x), _wgslsmith_f_op_f32(select(-538f, global1[_wgslsmith_index_u32(var_1.e.d.a, 31u)], true)), _wgslsmith_f_op_f32(-585f + 341f)), ~countOneBits(var_1.d.c.zyw), var_1.e, func_2(func_2(Struct_3(var_2, vec4<f32>(1652f, -380f, -629f, 309f), var_0.c.wzy, Struct_2(var_0.a, true, var_0.c, var_2.d, true), var_1.d), Struct_2(var_0.a, true, var_1.d.c, Struct_1(var_0.d.a, 0i, global0.x, 60061i), var_1.d.b)), Struct_2(var_0.a, var_1.d.e, var_0.c, Struct_1(u_input.a, -2667i, var_0.d.c, var_0.a), false)).e), func_2(Struct_3(Struct_2(var_2.c.x, var_0.b, var_0.c, Struct_1(1u, -25052i, -1012f, 33810i), var_0.b), var_1.b, var_2.c.xzx, var_2, func_2(Struct_3(Struct_2(14718i, var_1.e.e, vec4<i32>(-2147483647i, -1i, var_0.a, 2147483647i), Struct_1(0u, var_1.d.d.b, -107f, -1i), var_0.b), vec4<f32>(var_2.d.c, 1051f, 2429f, var_2.d.c), var_0.c.zzx, Struct_2(var_1.c.x, false, vec4<i32>(-2449i, var_2.c.x, 66759i, var_2.c.x), var_1.a.d, true), var_2), var_1.e).d), Struct_2(-var_0.a, var_1.a.b, _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 26996i, -2553i, var_1.a.d.b), vec4<i32>(26559i, -1i, var_1.e.a, var_0.a)), Struct_1(var_2.d.a, 1i, -110f, var_2.c.x), var_1.d.d.a <= u_input.a)).e).d, var_1.b, select(var_2.c.xzy, var_1.e.c.xwx, vec3<bool>(var_0.d.a <= ~var_1.d.d.a, true, all(vec3<bool>(true, true, true)))), Struct_2(var_0.c.x, func_2(func_2(Struct_3(Struct_2(1i, var_1.d.e, var_1.d.c, var_1.d.d, true), var_1.b, var_1.e.c.ywz, var_1.e, var_0), var_2), var_1.e).a.b, vec4<i32>(~(-1i), ~var_0.c.x, var_2.c.x, -1i ^ var_1.c.x) | select(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.d.d, var_2.d.d, 1i, 1i), vec4<i32>(var_0.a, var_2.a, var_2.c.x, 2147483647i)), ~var_0.c, select(vec4<bool>(false, var_2.e, var_1.e.e, true), vec4<bool>(var_0.b, false, var_1.a.b, var_1.e.e), vec4<bool>(var_1.d.e, true, var_2.b, var_1.d.b))), var_1.d.d, !(!all(vec2<bool>(var_2.b, var_2.b)))), func_2(func_2(Struct_3(func_2(Struct_3(var_0, vec4<f32>(var_0.d.c, -230f, -831f, var_0.d.c), var_0.c.zxy, Struct_2(-2147483647i, false, vec4<i32>(var_1.c.x, 2147483647i, 53735i, var_2.c.x), Struct_1(var_2.d.a, -32534i, var_2.d.c, var_0.c.x), var_2.b), Struct_2(3577i, false, var_1.e.c, Struct_1(var_1.d.d.a, -1i, var_1.b.x, var_1.e.d.d), var_0.e)), Struct_2(var_2.d.d, var_2.e, var_2.c, var_1.e.d, var_0.e)).e, var_1.b, vec3<i32>(23193i, var_1.c.x, -43417i), var_1.e, Struct_2(var_1.e.c.x, false, var_1.e.c, var_0.d, var_0.e)), Struct_2(var_2.d.b, true, vec4<i32>(-2147483647i, -2147483647i, -16222i, var_0.c.x), Struct_1(69053u, 44043i, -286f, -2826i), true)), var_1.d).d);
    var var_5 = Struct_2(-func_4(vec3<bool>(true, any(vec2<bool>(false, true)), var_2.e != var_4.d.e)), !(all(!vec2<bool>(var_2.b, var_0.b)) & true), vec4<i32>(func_1(vec4<i32>(var_2.c.x, 37034i, 0i, var_4.c.x) | vec4<i32>(-39124i, var_1.a.a, -1i, var_2.a), false, false), var_4.d.c.x << (0u % 32u), _wgslsmith_dot_vec2_i32(var_0.c.yy, var_4.c.zz) >> (~0u % 32u), 15563i & ~var_2.c.x) >> (~(~vec4<u32>(10256u, 104124u, u_input.a, var_4.e.d.a)) % vec4<u32>(32u)), func_2(func_2(var_4, var_0), var_0).a.d, true);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.xzx, ~_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(max(vec2<u32>(3781u, 30539u), vec2<u32>(55726u, var_0.d.a)), select(vec2<u32>(4294967295u, var_4.e.d.a), vec2<u32>(var_5.d.a, var_2.d.a), var_1.d.e)), vec2<u32>(_wgslsmith_mod_u32(var_4.a.d.a, u_input.a), 56136u)), vec4<i32>(var_1.e.d.b, 55228i, _wgslsmith_mult_i32(~var_5.a, 1562i ^ -var_0.a), min(var_0.a, -var_2.c.x)));
}

