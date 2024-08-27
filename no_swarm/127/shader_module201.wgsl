struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21> = array<bool, 21>(false, true, true, true, false, true, true, true, true, true, true, true, true, true, false, true, false, true, false, false, true);

var<private> global1: array<vec3<f32>, 26> = array<vec3<f32>, 26>(vec3<f32>(-1412f, -313f, -497f), vec3<f32>(2258f, 767f, -1207f), vec3<f32>(1650f, 1110f, 271f), vec3<f32>(610f, 163f, -1270f), vec3<f32>(-239f, -559f, -1250f), vec3<f32>(520f, -258f, -1025f), vec3<f32>(-660f, 712f, -1000f), vec3<f32>(-1178f, 2006f, 871f), vec3<f32>(-1000f, -1431f, 543f), vec3<f32>(1433f, -1256f, 514f), vec3<f32>(-257f, 987f, -1163f), vec3<f32>(-907f, -525f, 329f), vec3<f32>(-615f, -630f, -1654f), vec3<f32>(-117f, 1443f, 206f), vec3<f32>(1053f, 984f, 394f), vec3<f32>(-1000f, 1606f, 1000f), vec3<f32>(720f, -611f, 806f), vec3<f32>(-1515f, 1879f, -2274f), vec3<f32>(1921f, -1000f, 157f), vec3<f32>(1710f, -359f, 735f), vec3<f32>(2294f, -1458f, 932f), vec3<f32>(1602f, 1057f, -307f), vec3<f32>(-410f, -1000f, -383f), vec3<f32>(-2909f, -1093f, 284f), vec3<f32>(-693f, 719f, -1362f), vec3<f32>(1278f, -370f, 1868f));

var<private> global2: array<i32, 12> = array<i32, 12>(-1207i, 2761i, 2147483647i, 11077i, -8190i, 0i, 2147483647i, 0i, i32(-2147483648), 21676i, 2147483647i, i32(-2147483648));

var<private> global3: u32;

var<private> global4: array<i32, 24>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<f32>) -> bool {
    global2 = array<i32, 12>();
    global3 = 0u;
    var var_0 = Struct_1(vec3<bool>(any(!select(vec2<bool>(false, global0[_wgslsmith_index_u32(61724u, 21u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 21u)]), global0[_wgslsmith_index_u32(u_input.a.x, 21u)])), global0[_wgslsmith_index_u32(0u, 21u)], select(!(!global0[_wgslsmith_index_u32(6044u, 21u)]), (global0[_wgslsmith_index_u32(u_input.a.x, 21u)] && global0[_wgslsmith_index_u32(u_input.c, 21u)]) == all(vec3<bool>(global0[_wgslsmith_index_u32(82022u, 21u)], false, true)), all(select(vec2<bool>(false, false), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 21u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 21u)], true))))));
    let var_1 = Struct_1(vec3<bool>(u_input.a.x <= ~(~12992u), any(select(select(vec4<bool>(false, var_0.a.x, true, true), vec4<bool>(false, var_0.a.x, var_0.a.x, true), vec4<bool>(global0[_wgslsmith_index_u32(48266u, 21u)], var_0.a.x, var_0.a.x, true)), !vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 21u)], false, true), !vec4<bool>(var_0.a.x, var_0.a.x, global0[_wgslsmith_index_u32(u_input.c, 21u)], global0[_wgslsmith_index_u32(u_input.c, 21u)]))), all(select(select(vec3<bool>(true, false, true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], true, false), true), vec3<bool>(var_0.a.x, global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(0u, 21u)]), select(vec3<bool>(true, false, true), vec3<bool>(var_0.a.x, global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(76530u, 21u)]), global0[_wgslsmith_index_u32(1u, 21u)])))));
    var_0 = var_1;
    return any(select(var_1.a.xz, select(select(!vec2<bool>(var_0.a.x, false), vec2<bool>(false, var_0.a.x), true), select(select(var_0.a.yz, var_0.a.xx, false), !var_1.a.zz, !var_0.a.x), true), vec2<bool>(true, var_0.a.x)));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    var var_0 = select(select(vec4<bool>(true, !func_3(vec2<f32>(-1664f, -1530f)), !arg_2.a.a.x, any(select(vec4<bool>(arg_0.x, global0[_wgslsmith_index_u32(81666u, 21u)], arg_1.a.x, global0[_wgslsmith_index_u32(78213u, 21u)]), vec4<bool>(false, arg_0.x, true, global0[_wgslsmith_index_u32(u_input.a.x, 21u)]), true))), select(vec4<bool>(arg_2.a.a.x, any(vec2<bool>(arg_2.a.a.x, false)), arg_2.c != 898f, true), vec4<bool>(all(vec4<bool>(true, true, arg_1.a.x, true)), true, arg_2.a.a.x || arg_2.a.a.x, any(vec2<bool>(arg_0.x, true))), true), select(vec4<bool>(1i == global2[_wgslsmith_index_u32(u_input.c, 12u)], false, arg_1.a.x & false, false), select(!vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(u_input.a.x, 21u)]), !vec4<bool>(false, arg_2.a.a.x, false, arg_2.a.a.x), all(arg_1.a.yy)), vec4<bool>(53440i == u_input.b, global0[_wgslsmith_index_u32(u_input.c, 21u)], true, arg_0.x))), vec4<bool>(true, arg_1.a.x, _wgslsmith_div_i32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, u_input.a.x), 12u)], -65543i) >= global2[_wgslsmith_index_u32(max(abs(0u), _wgslsmith_dot_vec3_u32(u_input.a.wwy, u_input.a.wwy)), 12u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 40468u), u_input.a.yz), 21u)]), select(select(vec4<bool>(func_3(vec2<f32>(arg_2.c, -371f)), true, arg_0.x, true), select(vec4<bool>(true, arg_0.x, global0[_wgslsmith_index_u32(u_input.c, 21u)], arg_0.x), !vec4<bool>(arg_0.x, arg_1.a.x, arg_2.a.a.x, true), !vec4<bool>(true, true, false, arg_1.a.x)), global0[_wgslsmith_index_u32(~u_input.a.x, 21u)]), !(!vec4<bool>(arg_1.a.x, arg_1.a.x, arg_2.a.a.x, arg_0.x)), arg_2.a.a.x));
    global4 = array<i32, 24>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1213f + 326f), 1562f, arg_2.b, arg_2.c) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_2.d, vec4<f32>(arg_2.c, -1097f, arg_2.b, 202f), vec4<bool>(var_0.x, global0[_wgslsmith_index_u32(u_input.c, 21u)], true, arg_2.a.a.x))))) + _wgslsmith_f_op_vec4_f32(-arg_2.d)));
    var var_2 = arg_2;
    let var_3 = min(select(u_input.a, vec4<u32>(select(20823u, ~u_input.c, func_3(vec2<f32>(-297f, arg_2.d.x))), u_input.a.x, 4294967295u, u_input.a.x), !(!(!vec4<bool>(false, var_0.x, false, true)))), u_input.a);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b)));
}

fn func_1() -> f32 {
    var var_0 = u_input.a.yzx;
    let var_1 = !vec3<bool>(false, all(!vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 21u)], global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(6102u, 21u)], global0[_wgslsmith_index_u32(u_input.a.x, 21u)])), !(!global0[_wgslsmith_index_u32(var_0.x, 21u)] | global0[_wgslsmith_index_u32(_wgslsmith_add_u32(59419u, 0u), 21u)]));
    var var_2 = Struct_2(Struct_1(var_1), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-115f + 1000f) + 788f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -204f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(var_1, Struct_1(var_1), Struct_2(Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 21u)], global0[_wgslsmith_index_u32(u_input.c, 21u)], false)), 278f, -2175f, vec4<f32>(-867f, 2883f, -305f, 1000f))))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-483f, 336f)) + _wgslsmith_f_op_f32(-1091f - -1061f)))), 1353f, -1239f));
    var var_3 = vec2<i32>(global4[_wgslsmith_index_u32(44754u, 24u)], global2[_wgslsmith_index_u32(var_0.x, 12u)] >> (var_0.x % 32u));
    let var_4 = min(~u_input.a, vec4<u32>(max(var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 20706u), ~u_input.a.yx)), var_0.x, max(4294967295u, ~60118u), 4294967295u));
    return -1234f;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: vec4<i32>) -> Struct_1 {
    global4 = array<i32, 24>();
    let var_0 = arg_0 | max(arg_3, vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(vec4<i32>(9629i, -24555i, -37759i, arg_0.x), arg_3));
    global1 = array<vec3<f32>, 26>();
    let var_1 = vec2<u32>(u_input.c & 0u, max(_wgslsmith_dot_vec3_u32(u_input.a.zxw, vec3<u32>(10688u, ~0u, firstLeadingBit(10087u))), ~1u));
    var var_2 = u_input.a;
    return arg_2.a;
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = min(_wgslsmith_sub_u32(u_input.c ^ ~u_input.a.x, u_input.a.x), select(~u_input.c, ~firstLeadingBit(52839u), false)) >> (4294967295u % 32u);
    var var_1 = global1[_wgslsmith_index_u32(~u_input.a.x, 26u)];
    let var_2 = Struct_2(func_4(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.b, global4[_wgslsmith_index_u32(u_input.c, 24u)], u_input.b), vec4<i32>(-39180i, -11333i, 1i, 11349i), vec4<i32>(-10460i, u_input.b, global4[_wgslsmith_index_u32(76039u, 24u)], 2147483647i)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 62784u, 5990u, u_input.c), u_input.a) % vec4<u32>(32u)), vec4<i32>(-global4[_wgslsmith_index_u32(u_input.c, 24u)], u_input.b | 46937i, -2147483647i, ~3809i), select(select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 21u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 21u)], global0[_wgslsmith_index_u32(u_input.c, 21u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 21u)], false, false), global0[_wgslsmith_index_u32(u_input.a.x, 21u)]), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], arg_1.a.x, false, arg_1.a.x), vec4<bool>(false, arg_1.a.x, true, arg_1.a.x))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, var_1.x, -1000f)), vec3<f32>(1119f, arg_0, -1000f)))), Struct_2(func_4(abs(vec4<i32>(global4[_wgslsmith_index_u32(u_input.c, 24u)], 19615i, 46359i, global4[_wgslsmith_index_u32(u_input.c, 24u)])), vec3<f32>(arg_0, arg_0, arg_0), Struct_2(arg_1, var_1.x, var_1.x, vec4<f32>(var_1.x, -294f, arg_0, -1516f)), vec4<i32>(global4[_wgslsmith_index_u32(u_input.a.x, 24u)], 67067i, global4[_wgslsmith_index_u32(u_input.a.x, 24u)], -2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-582f, 1295f, arg_0, arg_0) + vec4<f32>(var_1.x, 2198f, 1405f, 529f)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, 475f, -871f, 654f))))), ((vec4<i32>(u_input.b, global2[_wgslsmith_index_u32(u_input.a.x, 12u)], global2[_wgslsmith_index_u32(94041u, 12u)], global2[_wgslsmith_index_u32(u_input.c, 12u)]) & vec4<i32>(14697i, global4[_wgslsmith_index_u32(0u, 24u)], global4[_wgslsmith_index_u32(u_input.c, 24u)], 6371i)) ^ select(vec4<i32>(-25719i, global4[_wgslsmith_index_u32(u_input.a.x, 24u)], u_input.b, 1i), vec4<i32>(u_input.b, global4[_wgslsmith_index_u32(u_input.a.x, 24u)], -2147483647i, -2005i), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(u_input.c, 21u)], true, arg_1.a.x))) << (~select(u_input.a, vec4<u32>(4294967295u, 0u, 17462u, 97973u), global0[_wgslsmith_index_u32(u_input.a.x, 21u)]) % vec4<u32>(32u))), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1.x)), var_1.x)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.x, var_1.x, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(205f * 1372f))))));
    var_1 = vec3<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(ceil(-2502f))), 1708f);
    global4 = array<i32, 24>();
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(92023u, 21u)];
    let var_1 = func_5(-1791f, func_4(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], -21214i, 0i, global4[_wgslsmith_index_u32(u_input.a.x, 24u)])), vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], 0i, 14097i, global4[_wgslsmith_index_u32(14368u, 24u)])) | vec4<i32>(min(2147483647i, global4[_wgslsmith_index_u32(u_input.c, 24u)]), _wgslsmith_div_i32(global4[_wgslsmith_index_u32(u_input.a.x, 24u)], -1928i), ~global4[_wgslsmith_index_u32(1u, 24u)], abs(-2147483647i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_1()), 489f, -540f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(0u, 26u)]))), Struct_2(Struct_1(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], true, global0[_wgslsmith_index_u32(4294967295u, 21u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 21u)], global0[_wgslsmith_index_u32(u_input.a.x, 21u)]), global0[_wgslsmith_index_u32(1u, 21u)])), _wgslsmith_f_op_f32(f32(-1f) * -476f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -246f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-2210f, 271f, 159f, -252f))))), vec4<i32>(global4[_wgslsmith_index_u32(u_input.a.x | _wgslsmith_mod_u32(40732u, u_input.c), 24u)], -max(2147483647i, 47484i), _wgslsmith_div_i32(_wgslsmith_mult_i32(-31560i, u_input.b), -2147483647i), _wgslsmith_sub_i32(global4[_wgslsmith_index_u32(~49695u, 24u)], global4[_wgslsmith_index_u32(u_input.c, 24u)]))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.c)));
    var var_3 = _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(_wgslsmith_mult_u32(54657u, u_input.a.x), 16624u & u_input.a.x, u_input.c >> (1u % 32u))), reverseBits(firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, u_input.c), abs(u_input.a.yzw)))), max(abs(u_input.a.xyy << (vec3<u32>(85739u, 90596u, 4294967295u) % vec3<u32>(32u))), reverseBits(_wgslsmith_mod_vec3_u32(u_input.a.zxx, vec3<u32>(50575u, u_input.c, u_input.c)))));
    let var_4 = Struct_1(!func_5(_wgslsmith_f_op_f32(-var_1.d.x), var_1.a).a.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.a | u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-892f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_1.c))))) - _wgslsmith_f_op_f32(func_2(vec3<bool>(!global0[_wgslsmith_index_u32(87347u, 21u)], true, true), Struct_1(func_4(vec4<i32>(global4[_wgslsmith_index_u32(0u, 24u)], global4[_wgslsmith_index_u32(0u, 24u)], u_input.b, global4[_wgslsmith_index_u32(16266u, 24u)]), vec3<f32>(-417f, var_1.c, var_1.b), var_1, vec4<i32>(u_input.b, 23210i, global4[_wgslsmith_index_u32(0u, 24u)], 1i)).a), func_5(_wgslsmith_div_f32(var_1.b, 1005f), var_4)))), _wgslsmith_f_op_f32(select(1303f, _wgslsmith_f_op_f32(-var_1.b), false)));
}

