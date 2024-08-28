struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: bool,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<f32>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_3,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: vec3<f32>;

var<private> global2: array<f32, 3> = array<f32, 3>(1586f, -472f, 944f);

var<private> global3: array<vec2<u32>, 31> = array<vec2<u32>, 31>(vec2<u32>(1u, 52277u), vec2<u32>(1u, 32483u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 0u), vec2<u32>(1u, 65031u), vec2<u32>(4294967295u, 1u), vec2<u32>(4067u, 88452u), vec2<u32>(1u, 4294967295u), vec2<u32>(77752u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(19406u, 19995u), vec2<u32>(0u, 0u), vec2<u32>(1u, 9287u), vec2<u32>(60160u, 0u), vec2<u32>(1u, 59578u), vec2<u32>(4294967295u, 48535u), vec2<u32>(40862u, 29542u), vec2<u32>(0u, 1u), vec2<u32>(79314u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 6895u), vec2<u32>(12493u, 0u), vec2<u32>(1u, 91748u), vec2<u32>(4294967295u, 0u), vec2<u32>(3480u, 82632u), vec2<u32>(0u, 0u), vec2<u32>(71067u, 1u), vec2<u32>(74809u, 0u), vec2<u32>(0u, 0u), vec2<u32>(0u, 483u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: i32, arg_3: vec2<f32>) -> i32 {
    global0 = select(select(select(!select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(arg_0.c.e.c, arg_1.e.c, false), vec3<bool>(false, arg_1.e.c, false)), vec3<bool>(true, global0.x, !arg_0.d), vec3<bool>(any(vec3<bool>(global0.x, true, global0.x)), arg_1.e.c, !arg_1.e.c)), !vec3<bool>(select(global0.x, false, false), arg_1.e.c, false || arg_0.c.e.c), arg_0.c.e.c == any(!vec4<bool>(false, global0.x, arg_1.e.c, false))), !(!select(!vec3<bool>(arg_0.c.e.c, global0.x, arg_0.c.e.c), vec3<bool>(false, arg_1.e.c, global0.x), arg_0.c.e.c)), true);
    var var_0 = arg_1.a.a;
    let var_1 = vec2<f32>(453f, _wgslsmith_f_op_f32(abs(183f)));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_3.x)), _wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_div_f32(global1.x, var_1.x), _wgslsmith_f_op_f32(arg_0.b.a - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-412f)), global2[_wgslsmith_index_u32(0u, 3u)])))), vec4<f32>(-1491f, _wgslsmith_f_op_f32(abs(-1023f)), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(156f + _wgslsmith_f_op_f32(global1.x + global2[_wgslsmith_index_u32(arg_1.e.a.x, 3u)])))), !(!(!all(vec4<bool>(true, arg_0.c.e.c, arg_0.c.e.c, true))))));
    let var_3 = Struct_3(arg_1.a, vec4<i32>(abs(~abs(-5841i)), -2147483647i, _wgslsmith_dot_vec2_i32(select(arg_0.c.b.zz, ~arg_0.c.b.zz, true), arg_1.b.ww), -67831i), arg_0.c.c, arg_1.e.d, arg_0.c.e);
    return ~_wgslsmith_mult_i32(4226i, arg_1.e.d.c);
}

fn func_2() -> vec3<bool> {
    var var_0 = global3[_wgslsmith_index_u32(~(~reverseBits(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(14109u, 0u), vec2<u32>(u_input.a.x, u_input.a.x)), u_input.a.x))), 31u)];
    var var_1 = u_input.c;
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 3u)], _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 3u)], global1.x)), global1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-546f, global2[_wgslsmith_index_u32(u_input.b.x, 3u)], global2[_wgslsmith_index_u32(1u, 3u)])))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1565f, 963f, 1416f) + vec3<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 3u)], 2359f, -1417f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(2323f, global2[_wgslsmith_index_u32(4294967295u, 3u)], -1000f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.x, -482f, -136f), vec3<f32>(global2[_wgslsmith_index_u32(1u, 3u)], -183f, 287f))), global0.x)))));
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-778f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -173f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 538f, global2[_wgslsmith_index_u32(38049u, 3u)], 1089f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 3u)], global1.x, global1.x, global2[_wgslsmith_index_u32(50736u, 3u)]) - vec4<f32>(global1.x, global1.x, global2[_wgslsmith_index_u32(94180u, 3u)], 667f)))), func_3(Struct_4(Struct_1(1935f, vec4<f32>(-1008f, -586f, global2[_wgslsmith_index_u32(var_0.x, 3u)], global1.x), 41900i, global3[_wgslsmith_index_u32(var_0.x, 31u)]), Struct_1(428f, vec4<f32>(1895f, 827f, global1.x, global2[_wgslsmith_index_u32(1u, 3u)]), u_input.c, global3[_wgslsmith_index_u32(u_input.e.x, 31u)]), Struct_3(Struct_1(global1.x, vec4<f32>(-712f, -986f, -633f, 1691f), u_input.d.x, global3[_wgslsmith_index_u32(28187u, 31u)]), vec4<i32>(1i, u_input.c, 2147483647i, u_input.d.x), vec4<f32>(global1.x, -482f, global1.x, -1000f), Struct_1(global2[_wgslsmith_index_u32(var_0.x, 3u)], vec4<f32>(global1.x, global2[_wgslsmith_index_u32(1u, 3u)], -1832f, -1233f), 37819i, global3[_wgslsmith_index_u32(24011u, 31u)]), Struct_2(u_input.a, 50402u, false, Struct_1(global2[_wgslsmith_index_u32(1u, 3u)], vec4<f32>(715f, -181f, 1042f, 395f), u_input.d.x, global3[_wgslsmith_index_u32(var_0.x, 31u)]), vec2<u32>(4294967295u, u_input.a.x))), false), Struct_3(Struct_1(-791f, vec4<f32>(-793f, global2[_wgslsmith_index_u32(0u, 3u)], global1.x, 964f), 2147483647i, u_input.b), abs(vec4<i32>(1i, u_input.d.x, -1i, u_input.d.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.x, 128f, 1182f, global2[_wgslsmith_index_u32(0u, 3u)]))), Struct_1(337f, vec4<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 3u)], -1663f, 904f, -1204f), 13359i, global3[_wgslsmith_index_u32(u_input.b.x, 31u)]), Struct_2(u_input.a, u_input.b.x, global0.x, Struct_1(1355f, vec4<f32>(-579f, global1.x, global2[_wgslsmith_index_u32(u_input.b.x, 3u)], -1008f), u_input.c, vec2<u32>(u_input.b.x, var_0.x)), u_input.a.xz)), _wgslsmith_clamp_i32(12989i, u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, -7552i), u_input.d.zz)), vec2<f32>(1410f, global1.x)), global3[_wgslsmith_index_u32(31587u, 31u)] >> (~(vec2<u32>(1u, u_input.e.x) << (vec2<u32>(u_input.e.x, 57496u) % vec2<u32>(32u))) % vec2<u32>(32u))), vec4<i32>(~(-9566i), u_input.d.x, func_3(Struct_4(Struct_1(-1000f, vec4<f32>(1000f, global2[_wgslsmith_index_u32(4294967295u, 3u)], 488f, global1.x), 2147483647i, global3[_wgslsmith_index_u32(14427u, 31u)]), Struct_1(-211f, vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 3u)], 941f, global1.x, global2[_wgslsmith_index_u32(var_0.x, 3u)]), u_input.d.x, vec2<u32>(57437u, 5582u)), Struct_3(Struct_1(-940f, vec4<f32>(global1.x, global2[_wgslsmith_index_u32(u_input.a.x, 3u)], -1357f, -1251f), u_input.c, global3[_wgslsmith_index_u32(var_0.x, 31u)]), vec4<i32>(u_input.c, -25432i, u_input.d.x, -43370i), vec4<f32>(global1.x, global1.x, global2[_wgslsmith_index_u32(u_input.e.x, 3u)], global1.x), Struct_1(-1509f, vec4<f32>(global1.x, global2[_wgslsmith_index_u32(4294967295u, 3u)], 1298f, 737f), u_input.c, vec2<u32>(var_0.x, 4294967295u)), Struct_2(vec4<u32>(var_0.x, 4294967295u, var_0.x, u_input.a.x), u_input.e.x, true, Struct_1(global2[_wgslsmith_index_u32(86773u, 3u)], vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 3u)], -1284f, global2[_wgslsmith_index_u32(48156u, 3u)], global2[_wgslsmith_index_u32(4294967295u, 3u)]), u_input.c, global3[_wgslsmith_index_u32(var_0.x, 31u)]), vec2<u32>(19818u, 1u))), select(false, global0.x, global0.x)), Struct_3(Struct_1(-978f, vec4<f32>(global1.x, global1.x, 1272f, global2[_wgslsmith_index_u32(u_input.e.x, 3u)]), u_input.c, global3[_wgslsmith_index_u32(38555u, 31u)]), ~vec4<i32>(u_input.c, u_input.d.x, -1i, -3148i), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(645f, global1.x, -906f, -1003f), vec4<f32>(global1.x, global1.x, global2[_wgslsmith_index_u32(u_input.b.x, 3u)], global1.x))), Struct_1(-997f, vec4<f32>(global1.x, global2[_wgslsmith_index_u32(26513u, 3u)], -1453f, global1.x), u_input.c, global3[_wgslsmith_index_u32(1u, 31u)]), Struct_2(u_input.a, 47807u, global0.x, Struct_1(global1.x, vec4<f32>(-113f, global2[_wgslsmith_index_u32(0u, 3u)], global2[_wgslsmith_index_u32(var_0.x, 3u)], global1.x), u_input.c, vec2<u32>(1u, u_input.e.x)), vec2<u32>(48159u, var_0.x))), ~u_input.d.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2[_wgslsmith_index_u32(0u, 3u)], 209f))))), u_input.d.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(var_0.x, 3u)], global1.x, global2[_wgslsmith_index_u32(var_0.x, 3u)], global2[_wgslsmith_index_u32(89543u, 3u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1861f, 467f, global2[_wgslsmith_index_u32(1u, 3u)])))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.e.x, 3u)], global1.x, global2[_wgslsmith_index_u32(var_0.x, 3u)], global2[_wgslsmith_index_u32(var_0.x, 3u)])), vec4<f32>(132f, -2239f, global2[_wgslsmith_index_u32(30829u, 3u)], -890f))))), Struct_1(_wgslsmith_f_op_f32(global1.x * -1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(788f, -813f, global2[_wgslsmith_index_u32(41570u, 3u)], global2[_wgslsmith_index_u32(var_0.x, 3u)])))), 2147483647i, u_input.e), Struct_2(~abs(vec4<u32>(u_input.e.x, var_0.x, 4294967295u, 0u)) >> (reverseBits(~vec4<u32>(4294967295u, 4294967295u, 46657u, u_input.b.x)) % vec4<u32>(32u)), ~(u_input.e.x >> ((var_0.x & u_input.b.x) % 32u)), any(!select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(false, global0.x, false), vec3<bool>(false, true, false))), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.x + global1.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(820f, global1.x, global1.x, global2[_wgslsmith_index_u32(0u, 3u)]) * vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 3u)], global2[_wgslsmith_index_u32(40016u, 3u)], 545f, 1294f)))), -2147483647i, vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.x, 1u), vec3<u32>(27077u, var_0.x, var_0.x)), u_input.b.x ^ u_input.e.x)), vec2<u32>(~_wgslsmith_div_u32(u_input.a.x, u_input.a.x), _wgslsmith_sub_u32(u_input.e.x, 1u) | ~58946u)));
    var_1 = 24856i;
    return vec3<bool>(false && all(select(select(vec4<bool>(true, var_2.e.c, global0.x, var_2.e.c), vec4<bool>(global0.x, true, true, true), var_2.e.c), vec4<bool>(false, false, global0.x, var_2.e.c), !vec4<bool>(var_2.e.c, global0.x, var_2.e.c, var_2.e.c))), global0.x, var_2.e.c);
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: vec4<bool>, arg_3: vec2<u32>) -> Struct_3 {
    let var_0 = true;
    var var_1 = !(!select(select(!arg_2.www, select(vec3<bool>(true, arg_1, arg_2.x), arg_2.zwz, true), true), select(arg_2.zxw, select(vec3<bool>(arg_1, arg_2.x, false), arg_2.zwx, arg_2.x), all(vec4<bool>(var_0, global0.x, arg_1, var_0))), select(!arg_2.zww, arg_2.wzw, func_2())));
    global3 = array<vec2<u32>, 31>();
    let var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(41685u, 3u)])))))), vec4<f32>(arg_0.x, -1371f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_div_f32(333f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -359f), _wgslsmith_f_op_f32(sign(1009f))))), ~_wgslsmith_mult_i32(-u_input.c, 109403i), reverseBits(~select(vec2<u32>(arg_3.x, arg_3.x), vec2<u32>(u_input.b.x, arg_3.x) >> (arg_3 % vec2<u32>(32u)), arg_2.zw)));
    var var_3 = Struct_1(global2[_wgslsmith_index_u32(51950u, 3u)], _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-var_2.b), var_2.b)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + -1000f), global2[_wgslsmith_index_u32(~(~20728u), 3u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * -717f) + _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(21399u, 3u)]))), -251f)), _wgslsmith_mult_i32(-firstTrailingBit(-2147483647i | var_2.c), -var_2.c), ~_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(var_2.d, vec2<u32>(8498u, var_2.d.x)) >> (~vec2<u32>(arg_3.x, 0u) % vec2<u32>(32u)), reverseBits(_wgslsmith_mod_vec2_u32(var_2.d, vec2<u32>(u_input.b.x, 4294967295u)))));
    return Struct_3(var_2, ~firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, var_2.c, var_2.c, u_input.c), vec4<i32>(var_2.c, u_input.d.x, 2147483647i, -7850i))) >> (~(~reverseBits(vec4<u32>(var_3.d.x, var_3.d.x, u_input.a.x, var_2.d.x))) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-218f, global2[_wgslsmith_index_u32(1u, 3u)], var_3.b.x, 616f)) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_3.b))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), var_3.b, -2147483647i, u_input.b), Struct_2(u_input.a, _wgslsmith_div_u32(arg_3.x, 0u), false, var_2, ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_3.x, arg_3.x), var_2.d))));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = u_input.a;
    let var_1 = func_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-368f, global1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.d.b.x), _wgslsmith_f_op_f32(-arg_0.a.a)))))), global0.x, !select(!vec4<bool>(arg_0.e.c, global0.x, global0.x, arg_0.e.c), !(!vec4<bool>(arg_0.e.c, arg_0.e.c, true, true)), !select(vec4<bool>(arg_0.e.c, false, arg_0.e.c, arg_0.e.c), vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(true, arg_0.e.c, false, global0.x))), vec2<u32>(arg_1, u_input.e.x)).a;
    global1 = vec3<f32>(-478f, -805f, global1.x);
    let var_2 = select(select(!vec3<bool>(true, arg_0.e.c, arg_2.x >= -29033i), vec3<bool>(global0.x, true, global0.x), true), select(!vec3<bool>(true, !global0.x, all(global0.zx)), vec3<bool>(all(vec3<bool>(true, true, false)), true != global0.x, global0.x | true), vec3<bool>(any(vec2<bool>(false, true)), global2[_wgslsmith_index_u32(~var_0.x, 3u)] != -203f, any(vec4<bool>(true, false, true, arg_0.e.c)))), select(func_2(), select(!(!vec3<bool>(true, true, global0.x)), select(!vec3<bool>(false, true, global0.x), select(vec3<bool>(false, arg_0.e.c, arg_0.e.c), vec3<bool>(arg_0.e.c, arg_0.e.c, true), true), global2[_wgslsmith_index_u32(4294967295u, 3u)] <= var_1.b.x), !vec3<bool>(arg_0.e.c, global0.x, false)), vec3<bool>(arg_0.e.c, select(all(vec3<bool>(arg_0.e.c, arg_0.e.c, false)), true, global0.x), true)));
    let var_3 = -u_input.d.x;
    return func_1(_wgslsmith_f_op_vec3_f32(-var_1.b.yxw), !func_1(_wgslsmith_f_op_vec3_f32(arg_0.d.b.zwx * arg_0.e.d.b.xww), true, !vec4<bool>(false, false, arg_0.e.c, arg_0.e.c), vec2<u32>(_wgslsmith_mult_u32(var_1.d.x, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 2559u, 4294967295u), var_0.zyz))).e.c, select(select(!select(vec4<bool>(global0.x, arg_0.e.c, var_2.x, true), vec4<bool>(global0.x, true, false, false), global0.x), select(vec4<bool>(false, arg_0.e.c, false, arg_0.e.c), vec4<bool>(true, false, global0.x, true), !var_2.x), vec4<bool>(global0.x, any(vec2<bool>(true, global0.x)), true, !arg_0.e.c)), !(!vec4<bool>(true, var_2.x, global0.x, arg_0.e.c)), !vec4<bool>(false, var_2.x, any(vec4<bool>(global0.x, global0.x, false, global0.x)), arg_0.e.c)), firstTrailingBit(vec2<u32>(4123u, min(0u, arg_0.a.d.x))) >> (~global3[_wgslsmith_index_u32(1u, 31u)] % vec2<u32>(32u))).d;
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> f32 {
    var var_0 = abs(-u_input.d);
    global2 = array<f32, 3>();
    global0 = !select(!func_2(), vec3<bool>(true, !global0.x, true), ((true & global0.x) && func_2().x) & false);
    let var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x + 632f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(69003u, 3u)] - global1.x))), arg_1.b, 0i, ~_wgslsmith_mult_vec2_u32(~u_input.a.ww, _wgslsmith_mult_vec2_u32(global3[_wgslsmith_index_u32(u_input.e.x, 31u)], global3[_wgslsmith_index_u32(1u, 31u)]))), func_4(Struct_3(Struct_1(1786f, _wgslsmith_f_op_vec4_f32(arg_1.b - arg_1.b), ~arg_1.c, reverseBits(u_input.a.wz)), ~vec4<i32>(arg_1.c, u_input.d.x, arg_1.c, -2147483647i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1876f, global2[_wgslsmith_index_u32(0u, 3u)], -673f, global1.x)), arg_1, func_1(_wgslsmith_div_vec3_f32(vec3<f32>(379f, global2[_wgslsmith_index_u32(u_input.a.x, 3u)], 354f), vec3<f32>(global2[_wgslsmith_index_u32(23162u, 3u)], global2[_wgslsmith_index_u32(u_input.e.x, 3u)], -1697f)), any(vec3<bool>(false, false, false)), vec4<bool>(true, global0.x, false, true), reverseBits(global3[_wgslsmith_index_u32(1u, 31u)])).e), 52123u, ~vec4<i32>(0i, max(var_0.x, 1432i), min(arg_0, 41854i), arg_0)), Struct_3(func_1(_wgslsmith_div_vec3_f32(arg_1.b.zxw, vec3<f32>(global2[_wgslsmith_index_u32(1u, 3u)], global1.x, global2[_wgslsmith_index_u32(44849u, 3u)])), select(false | global0.x, global0.x, 17106u == u_input.a.x), select(!vec4<bool>(true, global0.x, global0.x, false), !vec4<bool>(false, global0.x, true, global0.x), all(global0.zz)), firstLeadingBit(~u_input.a.yw)).d, reverseBits(-_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, -2147483647i, -1i, var_0.x), vec4<i32>(59238i, u_input.c, arg_0, -1i))), _wgslsmith_div_vec4_f32(arg_1.b, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -551f), _wgslsmith_f_op_f32(global1.x + 857f), global2[_wgslsmith_index_u32(~0u, 3u)], _wgslsmith_f_op_f32(min(-629f, arg_1.a)))), arg_1, Struct_2(countOneBits(vec4<u32>(u_input.e.x, 49729u, u_input.e.x, arg_1.d.x)), u_input.e.x, global0.x, func_1(arg_1.b.wyw, !global0.x, select(vec4<bool>(true, true, true, true), vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, false)), ~global3[_wgslsmith_index_u32(arg_1.d.x, 31u)]).e.d, u_input.b)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, ~31947u), select(global3[_wgslsmith_index_u32(48935u, 31u)], ~u_input.e, arg_1.c > arg_1.c)) < ~firstTrailingBit(0u ^ u_input.b.x));
    var var_2 = select(func_2(), select(vec3<bool>(true, false, var_1.d != global0.x), !(!(!vec3<bool>(global0.x, false, false))), func_1(_wgslsmith_f_op_vec3_f32(-arg_1.b.xwy), false, vec4<bool>(false, true, true, any(global0.xz)), u_input.e).e.c), false);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1010f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(4294967295u, 3u)])), _wgslsmith_f_op_f32(sign(var_1.b.a)), true))))), _wgslsmith_f_op_f32(arg_1.b.x * arg_1.b.x)));
}

fn func_6(arg_0: u32, arg_1: vec4<f32>, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = Struct_1(203f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-arg_1))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(9699u, arg_0, u_input.e.x, 1u), vec4<u32>(arg_0, 53826u, 38442u, arg_0)), 3u)], global2[_wgslsmith_index_u32(4294967295u << (arg_0 % 32u), 3u)], -1687f, _wgslsmith_div_f32(global2[_wgslsmith_index_u32(37002u, 3u)], -499f)))), u_input.c, vec2<u32>(~58621u, ~abs(1u)));
    let var_1 = _wgslsmith_f_op_f32(-arg_1.x);
    global3 = array<vec2<u32>, 31>();
    var_0 = func_4(Struct_3(func_1(vec3<f32>(_wgslsmith_f_op_f32(var_1 - var_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1513f), _wgslsmith_div_f32(916f, -1425f)), func_2().x, vec4<bool>(global0.x, true != arg_2.x, arg_2.x, select(false, false, global0.x)), func_1(_wgslsmith_div_vec3_f32(vec3<f32>(var_1, -922f, -1720f), arg_1.yzy), func_1(vec3<f32>(var_1, -156f, -646f), arg_2.x, vec4<bool>(arg_2.x, false, arg_2.x, global0.x), var_0.d).e.c, vec4<bool>(false, global0.x, false, arg_2.x), ~var_0.d).e.d.d).a, _wgslsmith_clamp_vec4_i32(-firstLeadingBit(vec4<i32>(var_0.c, -85274i, var_0.c, -78010i)), firstLeadingBit(min(vec4<i32>(var_0.c, 2147483647i, var_0.c, -16869i), vec4<i32>(-6333i, -1i, -57877i, 2147483647i))), reverseBits(vec4<i32>(-21353i, 16018i, -28620i, var_0.c)) | -vec4<i32>(-45891i, 22492i, u_input.d.x, 1i)), vec4<f32>(-291f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-702f, 1019f)), -947f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(331f - var_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -2425f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-arg_1.x), arg_2.x == true))), Struct_1(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-439f, var_1, -697f, arg_1.x), _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, -1824f, arg_1.x, -1456f), arg_1), arg_2)), -1i, ~_wgslsmith_mod_vec2_u32(var_0.d, u_input.b)), func_1(vec3<f32>(-1046f, _wgslsmith_f_op_f32(floor(var_0.a)), var_1), true, select(arg_2, vec4<bool>(arg_2.x, true, global0.x, global0.x), all(vec4<bool>(false, false, false, global0.x))), u_input.a.xx).e), var_0.d.x, countOneBits(-func_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(244f, 201f, arg_1.x), vec3<f32>(var_0.b.x, global2[_wgslsmith_index_u32(arg_0, 3u)], -1340f), global0.x)), false, arg_2, max(global3[_wgslsmith_index_u32(u_input.a.x, 31u)], vec2<u32>(55482u, u_input.a.x))).b));
    global1 = arg_1.zwz;
    return Struct_2(abs(u_input.a >> (u_input.a % vec4<u32>(32u))), abs(_wgslsmith_div_u32(u_input.b.x, 0u) << (var_0.d.x % 32u)), (_wgslsmith_mult_u32(var_0.d.x, _wgslsmith_add_u32(u_input.b.x, u_input.b.x)) | 1u) == var_0.d.x, Struct_1(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 1321f, var_0.b.x, 263f) + var_0.b))), 1i ^ u_input.c, var_0.d), ~_wgslsmith_mult_vec2_u32(select(vec2<u32>(4294967295u, 36588u), vec2<u32>(arg_0, var_0.d.x), arg_2.yw), ~vec2<u32>(4446u, var_0.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(vec3<bool>(any(vec2<bool>(global0.x, true)), !global0.x & true, global0.x), select(!(!vec3<bool>(global0.x, global0.x, global0.x)), !vec3<bool>(false, global0.x, global2[_wgslsmith_index_u32(16728u, 3u)] >= global1.x), all(!select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(false, global0.x, global0.x), vec3<bool>(true, global0.x, true)))), select(select(!select(vec3<bool>(global0.x, true, true), vec3<bool>(global0.x, global0.x, true), global0.x), vec3<bool>(global0.x, true, true), vec3<bool>(true, !global0.x, false)), !vec3<bool>(all(vec2<bool>(false, true)), 6156i < u_input.d.x, all(vec3<bool>(global0.x, false, global0.x))), false));
    var var_0 = func_6(u_input.a.x, vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(u_input.a.x, 3u)])))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x))) + 1509f), global1.x, _wgslsmith_f_op_f32(func_5(~firstLeadingBit(u_input.c), func_4(func_1(vec3<f32>(-1000f, global1.x, 2309f), true, vec4<bool>(true, false, global0.x, global0.x), vec2<u32>(u_input.a.x, u_input.e.x)), _wgslsmith_mod_u32(72180u, 1u), select(vec4<i32>(u_input.d.x, -2147483647i, u_input.d.x, 25390i), vec4<i32>(-10239i, u_input.c, u_input.c, 2147483647i), vec4<bool>(true, global0.x, true, global0.x)))))), vec4<bool>(true, true, global0.x, !(all(vec4<bool>(false, global0.x, false, false)) | true)));
    global0 = !(!(!select(vec3<bool>(false, false, global0.x), select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(true, true, global0.x), vec3<bool>(true, true, global0.x)), !var_0.c)));
    global2 = array<f32, 3>();
    var var_1 = func_1(_wgslsmith_f_op_vec3_f32(var_0.d.b.wxw + vec3<f32>(global1.x, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.d.a))))), all(select(vec3<bool>(true, true, true), vec3<bool>(var_0.c, func_6(77393u, vec4<f32>(608f, global2[_wgslsmith_index_u32(0u, 3u)], var_0.d.a, global1.x), vec4<bool>(true, var_0.c, false, true)).c, true), !select(vec3<bool>(false, false, global0.x), vec3<bool>(global0.x, true, var_0.c), vec3<bool>(true, global0.x, false)))), vec4<bool>(~(var_0.d.d.x | var_0.a.x) == 0u, func_1(func_1(vec3<f32>(-532f, 1000f, var_0.d.b.x), !global0.x, !vec4<bool>(global0.x, false, global0.x, true), func_1(vec3<f32>(var_0.d.b.x, -310f, -1539f), true, vec4<bool>(true, true, global0.x, global0.x), vec2<u32>(u_input.e.x, var_0.b)).d.d).a.b.ywz, global0.x, !vec4<bool>(var_0.c, false, var_0.c, true), ~select(u_input.e, vec2<u32>(var_0.b, u_input.a.x), global0.yz)).e.c, true, global0.x), global3[_wgslsmith_index_u32(~u_input.b.x, 31u)]).e;
    global2 = array<f32, 3>();
    var var_2 = u_input.d;
    var var_3 = firstLeadingBit(firstLeadingBit((_wgslsmith_clamp_i32(37524i, -13629i, var_1.d.c) >> (max(var_0.b, 4294967295u) % 32u)) >> (~func_6(9996u, vec4<f32>(var_1.d.a, -200f, var_1.d.a, 514f), vec4<bool>(true, var_0.c, global0.x, global0.x)).a.x % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(var_1.a.x ^ _wgslsmith_div_u32(var_0.d.d.x | u_input.e.x, ~9575u)));
}

