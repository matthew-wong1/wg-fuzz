struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: f32,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: u32,
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

var<private> global0: array<f32, 3>;

var<private> global1: array<vec4<u32>, 32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_4) -> Struct_2 {
    let var_0 = 0u;
    var var_1 = arg_1.a.d;
    var_1 = arg_1.b.a;
    let var_2 = u_input.d;
    let var_3 = Struct_3(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.a.a.a)), var_1.a), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c - arg_1.a.d.a.x))), firstLeadingBit(u_input.a.x), u_input.d), !select(vec3<bool>(true, true, arg_1.a.c.b | true), vec3<bool>(var_1.b & var_1.b, 1439f >= arg_1.b.a.a.x, any(vec4<bool>(arg_1.a.c.b, false, false, true))), arg_1.b.b));
    return Struct_2(var_3.a, var_1.b, var_3.a, var_3.a);
}

fn func_3() -> bool {
    global1 = array<vec4<u32>, 32>();
    return select(all(vec3<bool>(true, true, true)) || true, any(vec4<bool>(true, true, true, true)), true);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec4<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_1.a.a.x))))) + _wgslsmith_f_op_f32(-arg_2.x)));
    var var_1 = arg_1.a.a.zww;
    global1 = array<vec4<u32>, 32>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-832f)))))));
    let var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-func_2(!vec4<bool>(arg_3.x, false, arg_3.x, arg_3.x), Struct_4(Struct_2(arg_1.a, arg_3.x, arg_1.c, Struct_1(vec4<f32>(arg_2.x, var_2, global0[_wgslsmith_index_u32(11219u, 3u)], var_2), false, arg_1.d.a.x, arg_1.c.d, arg_1.d.e)), Struct_3(arg_1.c, vec3<bool>(arg_1.c.b, true, arg_1.b)))).a.c), arg_1.d.a.x, arg_2.x), arg_1.a.a.www);
    return func_2(vec4<bool>(true, false, !all(!vec4<bool>(arg_1.b, true, arg_1.d.b, false)), arg_3.x), Struct_4(Struct_2(func_2(select(arg_3, arg_3, vec4<bool>(arg_1.a.b, arg_1.b, true, arg_1.d.b)), Struct_4(Struct_2(Struct_1(arg_1.c.a, arg_3.x, var_3.x, u_input.a.x, vec4<u32>(arg_0.x, 632u, 4294967295u, u_input.e)), arg_1.d.b, arg_1.a, arg_1.c), Struct_3(arg_1.a, vec3<bool>(arg_3.x, false, false)))).d, false, func_2(!arg_3, Struct_4(arg_1, Struct_3(Struct_1(vec4<f32>(-427f, 449f, -1451f, var_3.x), arg_1.a.b, 273f, 2147483647i, vec4<u32>(arg_1.d.e.x, u_input.c, 85527u, arg_1.c.e.x)), arg_3.yyx))).d, func_2(vec4<bool>(false, true, true, arg_1.d.b), Struct_4(Struct_2(Struct_1(vec4<f32>(-1581f, arg_2.x, var_3.x, 1925f), arg_3.x, 146f, u_input.a.x, global1[_wgslsmith_index_u32(arg_0.x, 32u)]), arg_3.x, arg_1.c, arg_1.c), Struct_3(arg_1.c, vec3<bool>(arg_1.c.b, true, arg_3.x)))).a), Struct_3(arg_1.d, !vec3<bool>(true, arg_1.d.b, true))));
}

fn func_1(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_1, arg_3: vec3<f32>) -> bool {
    var var_0 = Struct_4(func_4(vec2<u32>(1u, 4294967295u), func_2(select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_2.b, arg_2.b, arg_0.x, true), arg_2.b | arg_0.x), Struct_4(Struct_2(arg_2, true, Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(1u, 3u)], 2027f, 386f, global0[_wgslsmith_index_u32(1u, 3u)]), arg_1, global0[_wgslsmith_index_u32(u_input.e, 3u)], u_input.a.x, vec4<u32>(1u, u_input.e, 26314u, 42652u)), Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(31964u, 3u)], 227f, 1000f, arg_2.c), arg_0.x, arg_2.c, -14025i, u_input.d)), Struct_3(arg_2, vec3<bool>(arg_1, true, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_2.a.x, arg_2.a.x)))), vec4<bool>(func_3(), func_2(!vec4<bool>(false, arg_2.b, false, true), Struct_4(Struct_2(Struct_1(arg_2.a, true, global0[_wgslsmith_index_u32(0u, 3u)], 34045i, vec4<u32>(57365u, u_input.e, 1u, 0u)), arg_0.x, arg_2, Struct_1(vec4<f32>(1275f, 329f, global0[_wgslsmith_index_u32(u_input.c, 3u)], -571f), arg_0.x, -835f, 2147483647i, vec4<u32>(1u, 4294967295u, u_input.b, 1u))), Struct_3(Struct_1(arg_2.a, arg_2.b, 949f, -8643i, vec4<u32>(14376u, 26983u, arg_2.e.x, 0u)), vec3<bool>(false, true, false)))).a.b, arg_2.b, all(select(arg_0, arg_0, arg_2.b)))), Struct_3(arg_2, !(!(!vec3<bool>(true, arg_0.x, true)))));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(57767u, (max(62338u, reverseBits(var_0.b.a.e.x)) & _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 33155u), func_4(var_0.a.c.e.xy, Struct_2(var_0.a.a, false, Struct_1(arg_2.a, true, 587f, -45160i, vec4<u32>(u_input.e, var_0.b.a.e.x, 58741u, arg_2.e.x)), var_0.b.a), vec2<f32>(-1634f, arg_3.x), vec4<bool>(false, true, false, var_0.b.a.b)).c.e.yx)) << (countOneBits(4294967295u) % 32u)), 3u)];
    var_0 = Struct_4(Struct_2(arg_2, false, arg_2, arg_2), var_0.b);
    let var_2 = arg_0;
    var_0 = Struct_4(func_4(func_2(!(!vec4<bool>(false, var_2.x, var_2.x, var_0.b.b.x)), Struct_4(Struct_2(arg_2, true, Struct_1(vec4<f32>(arg_3.x, -1000f, global0[_wgslsmith_index_u32(275u, 3u)], var_0.a.d.a.x), arg_0.x, -572f, var_0.b.a.d, vec4<u32>(u_input.c, 1u, arg_2.e.x, var_0.a.c.e.x)), Struct_1(vec4<f32>(1171f, arg_2.c, 493f, arg_2.a.x), var_0.a.a.b, 733f, u_input.a.x, vec4<u32>(1u, var_0.b.a.e.x, 0u, u_input.b))), var_0.b)).a.e.yx, var_0.a, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-812f)), 1013f), arg_2.a.yw), vec4<bool>(all(var_0.b.b), var_2.x, false, !(u_input.a.x != var_0.b.a.d))), var_0.b);
    return reverseBits(~arg_2.d) <= -91307i;
}

fn func_5(arg_0: bool) -> Struct_2 {
    var var_0 = ~u_input.a.x;
    var_0 = -1i;
    let var_1 = -2147483647i & ~(_wgslsmith_div_i32(~u_input.a.x, -2147483647i) << (select(firstLeadingBit(u_input.c), ~u_input.d.x, true) % 32u));
    let var_2 = func_2(vec4<bool>(true, arg_0, true, false), Struct_4(func_4(~u_input.d.zw, Struct_2(Struct_1(vec4<f32>(-971f, 2315f, global0[_wgslsmith_index_u32(u_input.d.x, 3u)], 1000f), arg_0, global0[_wgslsmith_index_u32(u_input.d.x, 3u)], 2057i, vec4<u32>(0u, 0u, u_input.e, 18026u)), false, Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(u_input.e, 3u)], global0[_wgslsmith_index_u32(u_input.d.x, 3u)], -756f, global0[_wgslsmith_index_u32(53852u, 3u)]), arg_0, -815f, -1i, vec4<u32>(1u, 1u, u_input.e, 15517u)), Struct_1(vec4<f32>(-442f, global0[_wgslsmith_index_u32(19317u, 3u)], -818f, global0[_wgslsmith_index_u32(15924u, 3u)]), true, global0[_wgslsmith_index_u32(u_input.e, 3u)], 1i, vec4<u32>(0u, u_input.c, u_input.e, 1u))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0[_wgslsmith_index_u32(97645u, 3u)], global0[_wgslsmith_index_u32(u_input.d.x, 3u)]))), vec4<bool>(arg_0, !arg_0, false & arg_0, func_1(vec2<bool>(false, arg_0), arg_0, Struct_1(vec4<f32>(-652f, global0[_wgslsmith_index_u32(u_input.b, 3u)], global0[_wgslsmith_index_u32(u_input.b, 3u)], -1356f), false, 746f, 58748i, u_input.d), vec3<f32>(global0[_wgslsmith_index_u32(u_input.e, 3u)], -712f, -1434f)))), Struct_3(func_4(vec2<u32>(1u, u_input.e), Struct_2(Struct_1(vec4<f32>(-369f, 610f, -535f, -574f), false, 618f, u_input.a.x, vec4<u32>(0u, 0u, 4206u, u_input.d.x)), arg_0, Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(u_input.e, 3u)], 1202f, 1452f, global0[_wgslsmith_index_u32(u_input.d.x, 3u)]), true, global0[_wgslsmith_index_u32(u_input.d.x, 3u)], -1i, u_input.d), Struct_1(vec4<f32>(952f, -1000f, 1499f, -492f), arg_0, 2218f, 1i, vec4<u32>(u_input.e, 33719u, u_input.e, 0u))), _wgslsmith_div_vec2_f32(vec2<f32>(1000f, global0[_wgslsmith_index_u32(0u, 3u)]), vec2<f32>(global0[_wgslsmith_index_u32(u_input.e, 3u)], global0[_wgslsmith_index_u32(u_input.e, 3u)])), vec4<bool>(true, arg_0, arg_0, true)).d, select(vec3<bool>(true, true, true), vec3<bool>(true, arg_0, true), arg_0)))).a.b;
    let var_3 = func_4(~u_input.d.wy, func_2(!vec4<bool>(true || arg_0, var_2, var_2, 20480i <= u_input.a.x), Struct_4(Struct_2(Struct_1(vec4<f32>(263f, global0[_wgslsmith_index_u32(u_input.c, 3u)], -575f, 614f), arg_0, global0[_wgslsmith_index_u32(u_input.c, 3u)], u_input.a.x, vec4<u32>(24371u, u_input.c, u_input.d.x, u_input.c)), true, Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(44506u, 3u)], global0[_wgslsmith_index_u32(1u, 3u)], 1414f, global0[_wgslsmith_index_u32(1u, 3u)]), true, 244f, 42657i, u_input.d), Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 3u)], -763f, 1084f, 874f), false, global0[_wgslsmith_index_u32(18054u, 3u)], 10378i, vec4<u32>(1u, 0u, 11148u, u_input.d.x))), Struct_3(func_4(u_input.d.xz, Struct_2(Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 3u)], -778f, -1990f, 353f), var_2, -235f, u_input.a.x, global1[_wgslsmith_index_u32(39544u, 32u)]), true, Struct_1(vec4<f32>(234f, 1060f, global0[_wgslsmith_index_u32(u_input.b, 3u)], global0[_wgslsmith_index_u32(u_input.b, 3u)]), arg_0, global0[_wgslsmith_index_u32(u_input.b, 3u)], 1i, global1[_wgslsmith_index_u32(1u, 32u)]), Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(16324u, 3u)], global0[_wgslsmith_index_u32(11749u, 3u)], -1467f, global0[_wgslsmith_index_u32(4294967295u, 3u)]), false, global0[_wgslsmith_index_u32(38307u, 3u)], var_1, u_input.d)), vec2<f32>(381f, global0[_wgslsmith_index_u32(0u, 3u)]), vec4<bool>(arg_0, var_2, false, true)).c, select(vec3<bool>(false, var_2, false), vec3<bool>(var_2, arg_0, arg_0), true)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(60435u, 3u)])), global0[_wgslsmith_index_u32(~u_input.d.x, 3u)])))), select(select(vec4<bool>(true, true, !var_2, false), select(select(vec4<bool>(arg_0, false, var_2, arg_0), vec4<bool>(var_2, true, var_2, var_2), vec4<bool>(false, false, false, arg_0)), select(vec4<bool>(false, true, false, arg_0), vec4<bool>(arg_0, var_2, false, false), false), func_4(vec2<u32>(1u, u_input.b), Struct_2(Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(u_input.e, 3u)], global0[_wgslsmith_index_u32(u_input.b, 3u)], global0[_wgslsmith_index_u32(100816u, 3u)], global0[_wgslsmith_index_u32(u_input.d.x, 3u)]), arg_0, global0[_wgslsmith_index_u32(1u, 3u)], var_1, u_input.d), false, Struct_1(vec4<f32>(-315f, 1000f, global0[_wgslsmith_index_u32(u_input.e, 3u)], global0[_wgslsmith_index_u32(u_input.e, 3u)]), true, 593f, -2147483647i, vec4<u32>(u_input.d.x, 508u, u_input.b, 6737u)), Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(u_input.e, 3u)], global0[_wgslsmith_index_u32(u_input.c, 3u)], global0[_wgslsmith_index_u32(u_input.d.x, 3u)], 529f), var_2, global0[_wgslsmith_index_u32(u_input.e, 3u)], -1i, global1[_wgslsmith_index_u32(u_input.d.x, 32u)])), vec2<f32>(global0[_wgslsmith_index_u32(u_input.c, 3u)], 404f), vec4<bool>(true, var_2, true, false)).a.b), false), vec4<bool>(254f < global0[_wgslsmith_index_u32(~u_input.e, 3u)], var_2, var_2, !select(var_2, false, false)), vec4<bool>(true, var_2, var_2, (u_input.c | u_input.d.x) >= _wgslsmith_add_u32(1u, u_input.d.x)))).d;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(var_3.a, var_3.a))), func_1(vec2<bool>(true, true), func_1(vec2<bool>(false, arg_0), var_3.b, Struct_1(var_3.a, true, global0[_wgslsmith_index_u32(1u, 3u)], 2147483647i, global1[_wgslsmith_index_u32(44739u, 32u)]), var_3.a.yzw) & false, func_4(select(vec2<u32>(1u, u_input.b), vec2<u32>(var_3.e.x, 1u), vec2<bool>(var_2, false)), Struct_2(var_3, arg_0, Struct_1(var_3.a, true, var_3.a.x, u_input.a.x, vec4<u32>(0u, 1u, 0u, 4294967295u)), var_3), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-230f, 1054f), vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 3u)], var_3.a.x), var_3.b)), select(vec4<bool>(var_2, false, true, true), vec4<bool>(var_3.b, var_3.b, var_2, true), vec4<bool>(true, true, var_2, true))).a, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_3.c, global0[_wgslsmith_index_u32(var_3.e.x, 3u)], var_3.c)))), var_3.c, i32(-1i) * -1i, vec4<u32>(reverseBits(u_input.d.x), 29778u, _wgslsmith_clamp_u32(~0u, 30699u, ~var_3.e.x), ~(~44257u))), var_3.b, var_3, Struct_1(_wgslsmith_f_op_vec4_f32(-var_3.a), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(83868u, 3u)] - -314f))), -1i & var_1, var_3.e));
}

fn func_6(arg_0: i32, arg_1: Struct_2, arg_2: Struct_4, arg_3: Struct_3) -> Struct_2 {
    global0 = array<f32, 3>();
    let var_0 = func_5(func_2(select(vec4<bool>(arg_2.b.a.b | true, arg_3.b.x, u_input.a.x != -22402i, arg_1.c.c < arg_3.a.c), !vec4<bool>(false, true, arg_1.a.b, arg_2.b.b.x), true), Struct_4(func_4(vec2<u32>(u_input.b, arg_1.c.e.x) >> (vec2<u32>(14082u, arg_1.d.e.x) % vec2<u32>(32u)), arg_2.a, _wgslsmith_div_vec2_f32(vec2<f32>(-487f, -143f), arg_1.d.a.wz), select(vec4<bool>(true, true, arg_1.c.b, false), vec4<bool>(arg_2.a.d.b, false, arg_2.b.a.b, false), vec4<bool>(arg_2.a.c.b, arg_2.b.a.b, false, arg_2.a.a.b))), arg_2.b)).c.b).a;
    let var_1 = arg_2.a;
    var var_2 = vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, arg_3.a.d, arg_1.c.d, arg_3.a.d), vec4<i32>(2147483647i, 1i, u_input.a.x, arg_2.b.a.d)), _wgslsmith_div_vec4_i32(vec4<i32>(-33143i, 15570i, -4494i, 0i) << (vec4<u32>(arg_2.a.c.e.x, 1u, arg_1.c.e.x, var_1.c.e.x) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(26021i, arg_3.a.d, var_0.d, 1i), vec4<i32>(arg_3.a.d, -1i, -2147483647i, var_1.a.d), vec4<i32>(-1i, -2147483647i, u_input.a.x, -12384i))));
    let var_3 = ~(~1u);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(21832u, 3u)], global0[_wgslsmith_index_u32(41878u, 3u)], global0[_wgslsmith_index_u32(u_input.b, 3u)], -816f)) - vec4<f32>(-1102f, global0[_wgslsmith_index_u32(u_input.b, 3u)], global0[_wgslsmith_index_u32(u_input.b, 3u)], -1375f)) - vec4<f32>(global0[_wgslsmith_index_u32(abs(u_input.b), 3u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 3u)]), global0[_wgslsmith_index_u32(1u, 3u)], _wgslsmith_f_op_f32(sign(365f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-668f, 324f, -851f, global0[_wgslsmith_index_u32(4294967295u, 3u)])) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-383f, 1989f, global0[_wgslsmith_index_u32(u_input.d.x, 3u)], global0[_wgslsmith_index_u32(u_input.b, 3u)]) + vec4<f32>(-1210f, global0[_wgslsmith_index_u32(5392u, 3u)], global0[_wgslsmith_index_u32(u_input.c, 3u)], global0[_wgslsmith_index_u32(u_input.e, 3u)]))))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -369f), 345f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.b, 3u)], -506f)), 229f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 3u)] - -1793f) + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.d.x, 3u)] * -455f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(8961u, 3u)]) * global0[_wgslsmith_index_u32(939u, 3u)])))));
    global1 = array<vec4<u32>, 32>();
    var_0 = vec4<f32>(313f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.d.x, 3u)] + -879f)), _wgslsmith_f_op_f32(min(667f, -945f)));
    global0 = array<f32, 3>();
    let var_1 = Struct_4(func_6(min(u_input.a.x, u_input.a.x), func_5(!func_1(vec2<bool>(false, false), false, Struct_1(vec4<f32>(100f, 249f, global0[_wgslsmith_index_u32(u_input.d.x, 3u)], -865f), true, global0[_wgslsmith_index_u32(u_input.e, 3u)], -2147483647i, u_input.d), vec3<f32>(global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(43231u, 3u)], 681f))), Struct_4(Struct_2(Struct_1(vec4<f32>(164f, global0[_wgslsmith_index_u32(42024u, 3u)], -296f, -2470f), false, 241f, 2147483647i, vec4<u32>(u_input.e, 0u, 4682u, 0u)), true, Struct_1(vec4<f32>(-1000f, -128f, var_0.x, var_0.x), false, global0[_wgslsmith_index_u32(36482u, 3u)], u_input.a.x, global1[_wgslsmith_index_u32(u_input.c, 32u)]), Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(14468u, 3u)], 1066f, global0[_wgslsmith_index_u32(u_input.e, 3u)], 927f), true, -814f, 15900i, global1[_wgslsmith_index_u32(1u, 32u)])), Struct_3(Struct_1(vec4<f32>(-2116f, -128f, var_0.x, 486f), false, var_0.x, u_input.a.x, u_input.d), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)))), Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(13570u, 3u)], var_0.x, 1426f, global0[_wgslsmith_index_u32(0u, 3u)]) + vec4<f32>(878f, global0[_wgslsmith_index_u32(u_input.e, 3u)], var_0.x, global0[_wgslsmith_index_u32(u_input.d.x, 3u)])), false, _wgslsmith_f_op_f32(min(-1800f, global0[_wgslsmith_index_u32(u_input.b, 3u)])), u_input.a.x, ~u_input.d), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, false, false), any(vec3<bool>(false, false, true))))), Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(349f, global0[_wgslsmith_index_u32(u_input.d.x, 3u)], 147f, var_0.x) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, global0[_wgslsmith_index_u32(2411u, 3u)], var_0.x, var_0.x), vec4<f32>(-386f, var_0.x, -1220f, 789f)))), false, _wgslsmith_div_f32(-712f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.d.x, 3u)] * global0[_wgslsmith_index_u32(1u, 3u)])), u_input.a.x, _wgslsmith_sub_vec4_u32(u_input.d, global1[_wgslsmith_index_u32(4294967295u, 32u)] << (u_input.d % vec4<u32>(32u)))), !vec3<bool>(true, true, 1127f > global0[_wgslsmith_index_u32(1u, 3u)])));
    var var_2 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.a.c.a.x));
}

