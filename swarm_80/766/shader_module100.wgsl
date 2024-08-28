struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: u32,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool) -> Struct_2 {
    global0 = arg_1;
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -633f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1511f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-744f + 491f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1143f - -102f)))))));
    let var_2 = arg_1;
    let var_3 = vec4<u32>(reverseBits(global0.d.c), ~var_0.e.x, 27201u, 0u);
    return var_2;
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> i32 {
    return ~0i;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: vec4<i32>) -> vec3<u32> {
    global0 = func_2(arg_0, arg_2, true);
    var var_0 = -_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, -22954i), min(vec3<i32>(arg_3.x, 16561i, 1i), arg_3.wzw)), vec3<i32>(_wgslsmith_mod_i32(arg_3.x, -2147483647i), -6751i, func_3(global0.a, -160f))) << (~(vec3<u32>(~arg_2.a.e.x, firstTrailingBit(global0.d.b), arg_0.c) ^ _wgslsmith_add_vec3_u32(~vec3<u32>(arg_2.e.c, 0u, 1u), vec3<u32>(global0.a.b, arg_0.e.x, 0u))) % vec3<u32>(32u));
    var var_1 = 0i;
    var_1 = 2147483647i;
    let var_2 = true;
    return _wgslsmith_mod_vec3_u32(vec3<u32>(countOneBits(_wgslsmith_mod_u32(arg_2.d.e.x, arg_0.e.x)) >> (min(1u, _wgslsmith_mod_u32(0u, arg_2.a.e.x)) % 32u), max(arg_2.e.e.x, global0.b.b), firstLeadingBit(select(1u, arg_2.d.c ^ 38286u, true))), vec3<u32>(countOneBits(~(~46681u)), global0.e.b ^ _wgslsmith_dot_vec3_u32(vec3<u32>(30851u, arg_2.b.e.x, arg_0.c) << (vec3<u32>(u_input.c.x, 1u, 0u) % vec3<u32>(32u)), ~vec3<u32>(4294967295u, 4294967295u, global0.d.c)), global0.c.c));
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: bool) -> Struct_1 {
    let var_0 = global0.e.a.x;
    global0 = func_2(global0.c, func_2(func_2(func_2(Struct_1(vec2<bool>(true, false), 4294967295u, 4294967295u, vec4<bool>(arg_2, false, true, global0.d.d.x), vec2<u32>(arg_0.x, u_input.b)), Struct_2(global0.e, Struct_1(global0.d.d.xw, global0.e.e.x, u_input.c.x, vec4<bool>(arg_2, arg_2, false, arg_2), vec2<u32>(arg_1, 5466u)), global0.e, global0.b, global0.b), false & arg_2).c, func_2(Struct_1(global0.d.d.zw, 24900u, 47400u, vec4<bool>(global0.d.d.x, global0.b.a.x, global0.d.d.x, global0.b.a.x), vec2<u32>(3880u, arg_0.x)), func_2(global0.a, Struct_2(Struct_1(global0.a.a, 11015u, 48311u, vec4<bool>(arg_2, false, false, true), vec2<u32>(arg_0.x, arg_1)), global0.d, global0.e, global0.c, Struct_1(global0.b.d.wy, 1u, 0u, vec4<bool>(false, true, arg_2, arg_2), u_input.c)), false), 1i >= u_input.a.x), !(true | global0.e.d.x)).c, func_2(global0.b, func_2(global0.d, Struct_2(global0.e, global0.e, global0.c, Struct_1(global0.b.a, arg_1, u_input.b, vec4<bool>(true, true, true, global0.b.d.x), arg_0.zy), global0.b), global0.b.d.x), !all(global0.d.d.yyx)), arg_2), true && !(!all(global0.e.d)));
    global0 = Struct_2(func_2(func_2(global0.a, func_2(global0.c, Struct_2(global0.e, global0.e, global0.e, global0.a, Struct_1(vec2<bool>(false, true), global0.a.b, arg_1, vec4<bool>(false, true, global0.a.d.x, false), u_input.c)), true), !arg_2).a, func_2(global0.e, Struct_2(global0.b, global0.b, Struct_1(global0.b.d.zy, u_input.b, global0.d.b, vec4<bool>(false, arg_2, false, arg_2), arg_0.zy), func_2(Struct_1(global0.e.a, global0.c.b, u_input.b, vec4<bool>(arg_2, global0.d.d.x, true, false), vec2<u32>(arg_1, 10779u)), Struct_2(Struct_1(vec2<bool>(arg_2, arg_2), 1u, arg_0.x, vec4<bool>(global0.b.a.x, false, arg_2, false), arg_0.yx), global0.d, Struct_1(global0.a.a, 4294967295u, 4294967295u, vec4<bool>(false, global0.b.a.x, arg_2, global0.e.a.x), vec2<u32>(u_input.b, arg_0.x)), global0.c, global0.a), global0.d.d.x).e, global0.d), func_2(func_2(Struct_1(vec2<bool>(arg_2, true), 30415u, 63619u, global1[_wgslsmith_index_u32(global0.e.b, 32u)], global0.d.e), Struct_2(Struct_1(vec2<bool>(global0.b.a.x, false), 51208u, u_input.b, vec4<bool>(true, false, arg_2, false), u_input.c), Struct_1(vec2<bool>(global0.a.a.x, true), arg_0.x, 1u, global0.b.d, global0.c.e), Struct_1(vec2<bool>(false, arg_2), 10754u, arg_1, global0.d.d, vec2<u32>(u_input.c.x, arg_0.x)), Struct_1(global0.a.d.zx, arg_1, arg_1, global1[_wgslsmith_index_u32(u_input.b, 32u)], global0.a.e), Struct_1(vec2<bool>(global0.c.d.x, global0.e.d.x), global0.e.e.x, arg_0.x, vec4<bool>(global0.b.a.x, arg_2, global0.c.a.x, arg_2), vec2<u32>(u_input.b, u_input.b))), true).a, Struct_2(global0.e, Struct_1(global0.c.d.wx, 1u, global0.a.b, global1[_wgslsmith_index_u32(u_input.c.x, 32u)], arg_0.xz), global0.a, Struct_1(global0.e.d.wy, 0u, 1u, vec4<bool>(false, true, false, global0.b.d.x), arg_0.xy), Struct_1(global0.c.a, global0.d.e.x, 0u, global1[_wgslsmith_index_u32(1u, 32u)], arg_0.yx)), true).e.d.x), true).c, global0.e, func_2(global0.d, func_2(Struct_1(vec2<bool>(true, false), ~arg_0.x, u_input.c.x, func_2(global0.d, Struct_2(global0.c, Struct_1(vec2<bool>(arg_2, true), global0.b.e.x, arg_1, vec4<bool>(arg_2, arg_2, global0.c.d.x, true), vec2<u32>(arg_0.x, global0.a.c)), global0.c, global0.e, Struct_1(vec2<bool>(true, true), 4294967295u, 1u, global1[_wgslsmith_index_u32(arg_0.x, 32u)], arg_0.xz)), arg_2).e.d, _wgslsmith_sub_vec2_u32(u_input.c, u_input.c)), func_2(global0.d, func_2(Struct_1(global0.a.d.zx, 1u, arg_0.x, vec4<bool>(true, global0.b.d.x, true, true), vec2<u32>(57565u, 51733u)), Struct_2(global0.c, Struct_1(global0.a.a, 36983u, arg_1, global0.a.d, arg_0.zz), Struct_1(global0.b.d.yz, 0u, 4294967295u, global0.b.d, vec2<u32>(global0.b.c, 0u)), Struct_1(global0.b.d.wx, u_input.c.x, 0u, vec4<bool>(global0.a.a.x, false, false, false), u_input.c), Struct_1(vec2<bool>(arg_2, false), 0u, 20192u, vec4<bool>(true, global0.b.a.x, true, false), vec2<u32>(global0.b.e.x, global0.c.e.x))), global0.e.d.x), true & global0.e.d.x), select(arg_2, true, any(vec4<bool>(global0.a.a.x, global0.e.d.x, arg_2, true)))), true).d, func_2(func_2(Struct_1(!global0.e.d.xz, 1u, 27482u, select(global0.b.d, global0.c.d, global0.c.d), ~vec2<u32>(arg_0.x, 15889u)), func_2(func_2(Struct_1(global0.c.a, arg_0.x, global0.b.e.x, vec4<bool>(false, false, true, false), vec2<u32>(arg_0.x, u_input.b)), Struct_2(global0.e, global0.c, Struct_1(vec2<bool>(false, true), u_input.c.x, arg_1, vec4<bool>(global0.b.a.x, global0.a.a.x, false, arg_2), vec2<u32>(1u, u_input.b)), Struct_1(global0.d.d.zy, u_input.c.x, 4516u, global0.a.d, vec2<u32>(4294967295u, arg_0.x)), Struct_1(vec2<bool>(global0.a.d.x, false), arg_1, 19080u, global0.b.d, vec2<u32>(arg_1, u_input.c.x))), true).a, Struct_2(global0.b, Struct_1(global0.a.d.wy, arg_1, arg_0.x, vec4<bool>(global0.d.a.x, arg_2, global0.a.d.x, global0.d.a.x), vec2<u32>(arg_1, global0.b.c)), global0.e, Struct_1(global0.b.a, 4294967295u, arg_1, global0.b.d, vec2<u32>(global0.c.b, 324u)), global0.b), any(global0.a.a)), !all(vec4<bool>(false, global0.b.a.x, global0.c.a.x, true))).b, func_2(Struct_1(global0.d.a, abs(u_input.b), ~110361u, !vec4<bool>(arg_2, global0.c.a.x, global0.b.d.x, global0.b.a.x), abs(u_input.c)), func_2(func_2(global0.c, Struct_2(Struct_1(vec2<bool>(true, global0.c.a.x), 4294967295u, arg_0.x, global0.b.d, u_input.c), Struct_1(vec2<bool>(global0.e.d.x, true), u_input.b, 59607u, global1[_wgslsmith_index_u32(1u, 32u)], global0.c.e), global0.a, global0.b, Struct_1(global0.a.a, global0.c.c, global0.c.e.x, vec4<bool>(false, false, false, global0.c.d.x), u_input.c)), false).a, func_2(global0.a, Struct_2(Struct_1(vec2<bool>(arg_2, true), 1u, 0u, vec4<bool>(arg_2, arg_2, global0.b.d.x, false), vec2<u32>(arg_1, 51263u)), Struct_1(global0.e.d.zx, arg_1, 0u, vec4<bool>(global0.c.a.x, true, false, false), global0.a.e), global0.a, Struct_1(global0.a.d.yz, u_input.c.x, global0.a.c, global1[_wgslsmith_index_u32(arg_0.x, 32u)], global0.d.e), global0.e), arg_2), !global0.b.a.x), global0.d.a.x), !(global0.e.c != global0.c.b)).a, global0.c);
    global0 = Struct_2(func_2(func_2(Struct_1(global0.c.a, 23050u, ~u_input.c.x, !global1[_wgslsmith_index_u32(global0.c.e.x, 32u)], firstLeadingBit(vec2<u32>(u_input.c.x, 1u))), Struct_2(func_2(global0.b, Struct_2(Struct_1(global0.c.d.yz, arg_1, 4294967295u, vec4<bool>(global0.c.d.x, global0.a.a.x, arg_2, true), vec2<u32>(0u, 4294967295u)), global0.e, global0.e, global0.d, global0.e), arg_2).c, func_2(global0.b, Struct_2(Struct_1(global0.a.d.xy, u_input.c.x, global0.a.b, vec4<bool>(global0.d.a.x, false, arg_2, true), vec2<u32>(0u, u_input.c.x)), global0.a, Struct_1(global0.b.d.zw, u_input.c.x, arg_0.x, vec4<bool>(arg_2, true, global0.d.d.x, false), arg_0.xz), global0.b, global0.d), global0.e.d.x).c, global0.b, global0.e, global0.e), arg_2).d, func_2(func_2(Struct_1(global0.e.a, arg_0.x, u_input.c.x, vec4<bool>(true, false, false, true), arg_0.zz), Struct_2(global0.b, global0.b, Struct_1(vec2<bool>(global0.e.a.x, global0.c.d.x), arg_1, global0.d.c, global1[_wgslsmith_index_u32(62556u, 32u)], vec2<u32>(u_input.c.x, global0.a.e.x)), global0.a, Struct_1(global0.c.a, global0.d.b, u_input.c.x, vec4<bool>(true, false, false, true), vec2<u32>(69714u, 20114u))), any(vec4<bool>(arg_2, global0.b.d.x, false, global0.b.a.x))).a, func_2(Struct_1(vec2<bool>(false, false), arg_1, 4294967295u, vec4<bool>(global0.b.d.x, false, arg_2, true), global0.c.e), Struct_2(Struct_1(vec2<bool>(false, false), 0u, arg_1, vec4<bool>(true, false, false, true), vec2<u32>(arg_1, arg_0.x)), global0.b, Struct_1(global0.a.d.wy, arg_1, 1u, global1[_wgslsmith_index_u32(21622u, 32u)], global0.d.e), Struct_1(global0.a.d.yx, 27903u, 4294967295u, global1[_wgslsmith_index_u32(41459u, 32u)], vec2<u32>(51717u, 37958u)), global0.c), arg_2), 8123u < (arg_0.x << (15866u % 32u))), false).e, func_2(func_2(func_2(Struct_1(global0.c.d.xw, arg_1, 20044u, vec4<bool>(global0.e.a.x, arg_2, false, false), arg_0.xx), func_2(Struct_1(global0.d.d.zx, 1u, 54701u, vec4<bool>(true, false, true, false), arg_0.xy), Struct_2(global0.e, Struct_1(global0.a.d.wz, 4294967295u, 39510u, global1[_wgslsmith_index_u32(1u, 32u)], vec2<u32>(1u, global0.e.c)), global0.c, Struct_1(vec2<bool>(false, true), 4291u, global0.d.e.x, global0.d.d, vec2<u32>(1u, 5340u)), Struct_1(vec2<bool>(false, true), u_input.c.x, arg_0.x, global0.b.d, u_input.c)), global0.c.a.x), false).d, func_2(Struct_1(global0.b.a, arg_1, 10474u, vec4<bool>(arg_2, global0.e.d.x, global0.b.a.x, arg_2), arg_0.zy), func_2(global0.e, Struct_2(global0.c, Struct_1(global0.b.a, arg_1, 46592u, vec4<bool>(arg_2, false, false, arg_2), global0.a.e), global0.d, global0.d, Struct_1(vec2<bool>(true, arg_2), 0u, arg_1, vec4<bool>(global0.c.d.x, true, global0.c.a.x, arg_2), vec2<u32>(45144u, u_input.b))), global0.d.d.x), true), global0.b.d.x).c, func_2(Struct_1(vec2<bool>(global0.a.a.x, global0.e.a.x), 1u, 17831u, select(global0.e.d, global0.c.d, global0.e.a.x), ~global0.e.e), func_2(global0.b, Struct_2(Struct_1(global0.a.a, arg_0.x, arg_1, vec4<bool>(arg_2, arg_2, false, false), vec2<u32>(21935u, global0.d.c)), Struct_1(global0.c.d.yy, global0.e.c, u_input.c.x, global1[_wgslsmith_index_u32(u_input.c.x, 32u)], vec2<u32>(u_input.c.x, arg_1)), global0.e, global0.a, Struct_1(global0.d.a, u_input.b, global0.a.e.x, vec4<bool>(global0.d.d.x, false, global0.e.d.x, true), vec2<u32>(arg_0.x, arg_1))), any(global0.a.d.xy)), false), select(arg_2, true, false)).c, Struct_1(func_2(Struct_1(global0.a.d.wy, _wgslsmith_add_u32(0u, 0u), global0.b.e.x, !global1[_wgslsmith_index_u32(1187u, 32u)], _wgslsmith_add_vec2_u32(global0.e.e, vec2<u32>(u_input.b, 0u))), func_2(global0.a, Struct_2(Struct_1(vec2<bool>(arg_2, arg_2), arg_1, 100411u, vec4<bool>(arg_2, false, global0.c.d.x, true), vec2<u32>(1u, global0.b.c)), global0.e, Struct_1(vec2<bool>(true, global0.e.d.x), 10312u, u_input.c.x, vec4<bool>(arg_2, true, global0.e.d.x, global0.d.a.x), vec2<u32>(4294967295u, global0.a.c)), Struct_1(global0.c.a, u_input.b, 4294967295u, vec4<bool>(global0.e.d.x, global0.a.a.x, arg_2, global0.a.d.x), global0.e.e), global0.e), true), true).c.a, ~_wgslsmith_div_u32(abs(1u), abs(arg_1)), 47653u, !(!func_2(global0.d, Struct_2(Struct_1(global0.e.a, global0.d.b, 23667u, global0.d.d, arg_0.zx), global0.a, Struct_1(global0.b.d.wy, arg_1, arg_0.x, vec4<bool>(global0.a.a.x, arg_2, true, false), u_input.c), global0.e, Struct_1(global0.d.d.wx, global0.c.e.x, 88815u, vec4<bool>(true, true, true, global0.e.d.x), arg_0.xx)), global0.a.a.x).e.d), u_input.c), global0.e, global0.d);
    let var_1 = Struct_1(!select(vec2<bool>(true, arg_2), global0.a.a, global0.c.a), abs(global0.e.e.x), ~((~global0.d.c | countOneBits(4294967295u)) << (arg_0.x % 32u)), global1[_wgslsmith_index_u32(0u, 32u)], arg_0.zz);
    return Struct_1(vec2<bool>(arg_2, func_2(var_1, func_2(Struct_1(global0.c.a, arg_1, arg_1, var_1.d, u_input.c), Struct_2(var_1, Struct_1(var_1.d.yz, 4294967295u, u_input.c.x, vec4<bool>(var_1.a.x, false, arg_2, true), var_1.e), Struct_1(var_1.a, 4294967295u, var_1.b, vec4<bool>(false, false, arg_2, global0.e.d.x), arg_0.xy), global0.a, var_1), any(global0.e.d.xz)), false).c.a.x), 28801u, 4294967295u, global0.a.d, ~_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(arg_1, 1u), vec2<u32>(var_1.e.x, arg_0.x)), ~(~u_input.c), abs(~u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a;
    let var_1 = Struct_1(!select(select(var_0.d.yy, vec2<bool>(var_0.d.x, global0.e.d.x), var_0.a), select(vec2<bool>(true, true), vec2<bool>(true, var_0.d.x), any(global0.a.d.yx)), global0.c.a), ~(~(~4294967295u)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.c.b, var_0.b, var_0.c) ^ vec3<u32>(u_input.c.x, u_input.c.x, 0u), ~vec3<u32>(global0.c.b, u_input.b, global0.c.c)), ~_wgslsmith_add_u32(16537u, u_input.b)) & 4294967295u, select(vec4<bool>(true, var_0.d.x, any(select(global0.d.d.wyz, var_0.d.ywz, vec3<bool>(true, var_0.a.x, var_0.d.x))), false), global0.b.d, vec4<bool>(true, (u_input.b >> (0u % 32u)) <= _wgslsmith_sub_u32(var_0.e.x, global0.e.c), 11040u > firstLeadingBit(global0.e.e.x), true)), var_0.e);
    var var_2 = func_4(firstLeadingBit(max(vec3<u32>(~4294967295u, abs(128u), 4294967295u), ~vec3<u32>(1u, global0.d.c, u_input.c.x) >> (func_1(Struct_1(vec2<bool>(var_1.d.x, global0.b.a.x), u_input.c.x, 3835u, vec4<bool>(global0.b.d.x, var_1.d.x, var_1.a.x, true), u_input.c), true, Struct_2(var_1, Struct_1(var_0.a, var_0.b, u_input.c.x, vec4<bool>(true, var_0.a.x, false, var_0.d.x), vec2<u32>(var_0.b, 4294967295u)), var_1, global0.d, global0.e), vec4<i32>(1i, u_input.a.x, 2147483647i, 2147483647i)) % vec3<u32>(32u)))), u_input.b, any(vec4<bool>(true, var_1.d.x, var_0.a.x || var_1.a.x, true)));
    let var_3 = global0.d.e;
    var var_4 = _wgslsmith_f_op_f32(-1f);
    var var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-169f))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1036f, -1000f))), 937f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1009f - -449f), _wgslsmith_f_op_f32(ceil(-222f)), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1430f, -1748f, 111f, -585f) + vec4<f32>(1760f, 326f, 1065f, -228f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1219f, -686f, 1417f, 1407f)), true)))));
    var var_6 = Struct_2(func_2(Struct_1(vec2<bool>(true, !var_2.a.x), _wgslsmith_mod_u32(var_2.c, _wgslsmith_dot_vec2_u32(vec2<u32>(45269u, 4294967295u), var_0.e)), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(0u, 0u, var_3.x)), countOneBits(vec3<u32>(22353u, global0.a.c, 0u))), select(!var_2.d, vec4<bool>(var_0.d.x, true, true, false), !var_0.d), func_1(Struct_1(vec2<bool>(false, true), u_input.b, var_0.e.x, vec4<bool>(false, false, var_1.a.x, var_0.d.x), var_2.e), var_0.d.x || false, func_2(Struct_1(var_0.d.yz, u_input.c.x, var_0.e.x, vec4<bool>(true, var_1.a.x, global0.d.d.x, false), var_2.e), Struct_2(Struct_1(vec2<bool>(true, var_2.d.x), 1u, 39688u, vec4<bool>(global0.d.d.x, false, var_2.a.x, var_1.d.x), var_0.e), global0.c, Struct_1(vec2<bool>(var_2.a.x, var_2.d.x), 11597u, 87845u, var_2.d, vec2<u32>(global0.b.c, 21810u)), Struct_1(var_1.a, 10290u, var_0.e.x, vec4<bool>(global0.e.a.x, true, false, var_1.a.x), u_input.c), global0.d), false), vec4<i32>(54852i, 6727i, u_input.a.x, 4483i)).xx), Struct_2(func_4(vec3<u32>(54119u, var_3.x, u_input.c.x) >> (vec3<u32>(var_1.b, u_input.c.x, 55139u) % vec3<u32>(32u)), 1u, true && var_0.d.x), Struct_1(!vec2<bool>(global0.d.d.x, false), func_2(Struct_1(var_1.a, 33606u, 4294967295u, vec4<bool>(var_2.d.x, false, false, var_0.d.x), var_0.e), Struct_2(Struct_1(vec2<bool>(false, var_2.d.x), var_3.x, global0.b.b, vec4<bool>(false, var_2.d.x, true, var_0.a.x), vec2<u32>(var_3.x, 4294967295u)), global0.b, global0.c, Struct_1(var_0.a, var_2.b, 1u, vec4<bool>(var_2.d.x, false, var_0.a.x, false), var_2.e), Struct_1(vec2<bool>(false, global0.a.a.x), 82084u, 0u, var_1.d, u_input.c)), false).b.e.x, ~global0.d.c, vec4<bool>(true, var_2.d.x, var_1.a.x, global0.a.a.x), vec2<u32>(1u, var_0.c)), func_2(Struct_1(var_1.a, 56416u, u_input.b, var_0.d, vec2<u32>(8636u, var_1.c)), func_2(Struct_1(var_0.a, var_2.c, 106181u, vec4<bool>(var_1.d.x, true, true, var_2.d.x), var_1.e), Struct_2(Struct_1(vec2<bool>(false, true), 61182u, 5527u, global1[_wgslsmith_index_u32(global0.b.b, 32u)], u_input.c), var_1, global0.a, Struct_1(var_2.d.wx, global0.e.c, var_2.b, var_0.d, global0.d.e), global0.a), var_0.d.x), false).d, Struct_1(select(vec2<bool>(var_2.a.x, false), global0.d.d.zz, true), func_1(global0.e, true, Struct_2(Struct_1(vec2<bool>(true, true), 99540u, 18315u, var_1.d, var_0.e), var_1, var_1, global0.b, global0.d), vec4<i32>(0i, 45966i, u_input.a.x, u_input.a.x)).x, abs(1u), !var_0.d, vec2<u32>(var_3.x, var_3.x)), Struct_1(!vec2<bool>(var_0.d.x, var_2.d.x), u_input.c.x, 0u, global1[_wgslsmith_index_u32(global0.a.b, 32u)], max(var_2.e, var_2.e))), select(true, !all(var_0.d), var_1.a.x)).e, global0.c, func_2(func_2(global0.c, Struct_2(func_4(vec3<u32>(var_3.x, var_3.x, 4294967295u), global0.e.e.x, var_0.d.x), Struct_1(var_0.a, global0.c.b, 24096u, global1[_wgslsmith_index_u32(u_input.b, 32u)], var_1.e), func_4(vec3<u32>(u_input.b, 20591u, 0u), 59878u, var_2.d.x), func_4(vec3<u32>(var_0.e.x, 1u, 2944u), 8947u, false), var_1), var_1.a.x).a, func_2(Struct_1(var_1.a, var_2.b, ~75363u, vec4<bool>(var_2.a.x, true, false, var_1.d.x), vec2<u32>(var_2.e.x, global0.a.c)), Struct_2(var_1, func_4(vec3<u32>(35349u, 22956u, 4294967295u), 39442u, global0.d.a.x), var_1, Struct_1(global0.c.d.wy, 0u, 1u, vec4<bool>(var_2.d.x, true, global0.b.a.x, true), vec2<u32>(0u, var_1.e.x)), global0.b), var_2.a.x), func_2(func_4(~vec3<u32>(var_3.x, 27176u, 7495u), var_2.c, func_4(vec3<u32>(0u, 4294967295u, var_2.c), u_input.b, false).a.x), Struct_2(func_2(Struct_1(vec2<bool>(var_2.d.x, global0.c.d.x), 50924u, global0.e.b, var_2.d, var_2.e), Struct_2(Struct_1(vec2<bool>(var_1.a.x, false), u_input.b, var_0.e.x, vec4<bool>(true, var_1.d.x, var_2.d.x, var_1.a.x), var_0.e), Struct_1(vec2<bool>(false, false), 48186u, var_3.x, global0.d.d, var_1.e), Struct_1(var_1.a, var_2.b, var_2.e.x, vec4<bool>(true, var_1.d.x, true, var_1.d.x), vec2<u32>(69159u, global0.a.e.x)), var_1, Struct_1(var_1.d.xy, 1u, 13428u, vec4<bool>(global0.a.d.x, false, global0.b.d.x, true), vec2<u32>(var_1.c, var_3.x))), false).e, Struct_1(global0.c.a, 0u, global0.a.e.x, var_2.d, vec2<u32>(1u, var_0.b)), Struct_1(var_0.d.wz, 0u, var_2.e.x, vec4<bool>(var_0.a.x, var_0.d.x, var_0.d.x, var_0.d.x), vec2<u32>(global0.e.c, var_2.b)), Struct_1(var_1.a, var_1.b, 82368u, global0.b.d, global0.d.e), Struct_1(var_0.a, 0u, 4294967295u, var_1.d, vec2<u32>(4294967295u, 39001u))), true).d.a.x).d, global0.b, func_2(Struct_1(!func_2(global0.b, Struct_2(global0.b, global0.a, Struct_1(vec2<bool>(var_1.d.x, false), 4294967295u, var_1.c, vec4<bool>(global0.b.a.x, false, var_2.a.x, var_1.a.x), u_input.c), global0.b, global0.b), false).b.a, firstLeadingBit(firstLeadingBit(4294967295u)), ~38818u, vec4<bool>(false, var_2.a.x, var_2.a.x, var_2.a.x), vec2<u32>(8616u, global0.b.b)), func_2(Struct_1(vec2<bool>(var_2.d.x, global0.a.d.x), _wgslsmith_clamp_u32(4294967295u, 1u, 0u), abs(4294967295u), vec4<bool>(true, global0.b.d.x, global0.c.d.x, global0.b.d.x), _wgslsmith_clamp_vec2_u32(u_input.c, var_2.e, var_0.e)), Struct_2(global0.b, func_2(global0.e, Struct_2(global0.c, Struct_1(var_1.d.xx, u_input.b, 1u, vec4<bool>(true, false, false, false), vec2<u32>(global0.d.e.x, 483u)), Struct_1(vec2<bool>(var_2.a.x, false), 3220u, 1u, vec4<bool>(true, true, true, var_0.a.x), vec2<u32>(var_3.x, var_3.x)), Struct_1(vec2<bool>(true, var_1.a.x), 0u, 4294967295u, var_1.d, var_0.e), var_1), false).b, func_4(vec3<u32>(var_0.e.x, global0.e.c, 0u), 27974u, var_0.a.x), global0.b, var_1), var_1.a.x), var_0.a.x).d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_5.yx)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.x)), -976f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_5.x, var_5.x) + var_5.xz)))), var_6.b.e, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(var_5.zwx, var_5.wwy, vec3<bool>(var_6.c.d.x, var_0.a.x, var_0.a.x))))), _wgslsmith_f_op_vec3_f32(step(var_5.zzw, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.x, 1271f, var_5.x) + var_5.wwx))), !(var_0.c > 0u)))), ~var_6.e.e);
}

