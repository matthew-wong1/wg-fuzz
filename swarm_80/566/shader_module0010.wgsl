struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: f32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_2,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: i32,
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

var<private> global0: array<f32, 23> = array<f32, 23>(137f, 1510f, 751f, 397f, 1977f, -930f, 1448f, -699f, -995f, -1000f, 753f, -639f, 782f, 1253f, -756f, 2648f, -575f, -765f, 211f, -1145f, -1487f, -100f, -234f);

var<private> global1: vec4<i32>;

var<private> global2: vec3<u32> = vec3<u32>(4294967295u, 0u, 4957u);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = _wgslsmith_sub_i32(reverseBits(_wgslsmith_mod_i32(~(-38814i >> (u_input.a.x % 32u)), select(~u_input.d.x, u_input.e | u_input.c.x, !arg_0.a.a))), global1.x);
    let var_1 = !select(!select(vec4<bool>(false, true, arg_0.a.a, arg_0.a.a), !vec4<bool>(false, false, arg_0.a.a, arg_0.a.a), arg_0.a.a), !select(vec4<bool>(true, false, arg_0.a.a, true), vec4<bool>(true, false, arg_0.a.a, arg_0.a.a), false), true);
    global2 = ~select(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(~u_input.a.wzz, u_input.a.wyw), u_input.a.wyx), ~select(u_input.a.www, vec3<u32>(1u, 18087u, 0u), vec3<bool>(true, arg_0.a.a, false)), true || arg_0.a.a);
    global0 = array<f32, 23>();
    var var_2 = Struct_1(!(~34191u >= countOneBits(u_input.a.x)) & (true != arg_0.a.a));
    return (global1.x << (~(~u_input.a.x) % 32u)) << ((max(u_input.a.x, 0u) | (~firstTrailingBit(0u) & max(23583u << (0u % 32u), u_input.a.x))) % 32u);
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_3) -> vec3<bool> {
    var var_0 = u_input.a.xyy;
    var_0 = vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.a.yxx, (vec3<u32>(arg_2.d, arg_2.d, 64268u) & u_input.a.xzy) << (u_input.a.yww % vec3<u32>(32u))), u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x | (u_input.a.x & arg_2.d)), u_input.a.xy));
    var var_1 = 1u;
    var var_2 = ~(-vec4<i32>(func_3(Struct_2(arg_2.b, u_input.c, -102f, vec4<f32>(-1554f, arg_2.c.d.x, -1779f, arg_2.c.d.x))) | _wgslsmith_add_i32(arg_2.e.b.x, 37175i), 1i, reverseBits(0i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_1, global1.x, u_input.b), vec4<i32>(arg_2.e.b.x, global1.x, global1.x, global1.x))));
    global0 = array<f32, 23>();
    return arg_0;
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: i32) -> vec2<f32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1130f + _wgslsmith_f_op_f32(f32(-1f) * -670f)), _wgslsmith_f_op_f32(-432f + _wgslsmith_f_op_f32(abs(arg_0))))), Struct_1(select((-13405i ^ u_input.b) != min(global1.x, 2147483647i), arg_1.x, arg_1.x)), Struct_2(Struct_1(!all(vec3<bool>(arg_1.x, arg_1.x, false))), u_input.d ^ vec4<i32>(~(-66863i), -12091i, _wgslsmith_mult_i32(arg_3, u_input.b), _wgslsmith_mod_i32(arg_3, 2147483647i)), arg_2.x, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + 2133f), arg_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global2.x, 23u)] * -162f) * arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -700f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(0u, 23u)]))))), 0u, Struct_2(Struct_1(true), _wgslsmith_div_vec4_i32(max(select(u_input.d, vec4<i32>(arg_3, -1i, u_input.e, -2147483647i), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, 0i, 1i, arg_3), u_input.d)), -u_input.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2610f))) - -270f), vec4<f32>(arg_2.x, -1000f, 1000f, 1000f)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(arg_2.zz, vec2<f32>(_wgslsmith_f_op_f32(floor(-697f)), _wgslsmith_f_op_f32(616f * -1188f)))), _wgslsmith_f_op_vec2_f32(-arg_2.zy), true)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1406f, global0[_wgslsmith_index_u32(var_0.d, 23u)])), _wgslsmith_div_vec2_f32(vec2<f32>(arg_2.x, var_0.a.x), var_0.c.d.xz))) * _wgslsmith_f_op_vec2_f32(-arg_2.yx)));
    var var_2 = Struct_2(Struct_1(var_0.c.a.a), _wgslsmith_add_vec4_i32(u_input.d, _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, ~global1.x, var_0.c.b.x, -9441i), select(var_0.e.b, u_input.c, var_0.e.a.a) & select(vec4<i32>(u_input.e, 38255i, 26537i, -11387i), vec4<i32>(var_0.c.b.x, -6579i, 26406i, 2147483647i), vec4<bool>(true, arg_1.x, true, arg_1.x)), u_input.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.c.d.x, 995f)) * -491f)) - _wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_1.x, 122f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1196f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * var_1.x), _wgslsmith_f_op_f32(trunc(-967f)), var_0.a.x)));
    let var_3 = _wgslsmith_add_u32(4294967295u, ~max(firstTrailingBit(abs(101778u)), 0u));
    var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1, vec2<f32>(var_0.a.x, var_0.e.c), arg_1.x)), vec2<f32>(-1671f, var_1.x)))), Struct_1(arg_1.x), var_0.e, abs(global2.x), var_0.c);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_2.d.zz, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1645f * -2079f), _wgslsmith_div_f32(var_0.c.d.x, -1417f)), arg_2.x))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, -1000f) + vec2<f32>(var_1.x, var_1.x)) - _wgslsmith_div_vec2_f32(var_1, vec2<f32>(355f, global0[_wgslsmith_index_u32(u_input.a.x, 23u)]))))))));
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(global2.zz, ~global2.zy), ~vec2<u32>(44710u, u_input.a.x)), _wgslsmith_add_vec2_u32(countOneBits(select(vec2<u32>(1u, u_input.a.x), u_input.a.yx, vec2<bool>(true, false))), reverseBits(u_input.a.zz)))), 23u)];
    global2 = ~abs(_wgslsmith_mod_vec3_u32(u_input.a.xyy, vec3<u32>(global2.x, 0u, 79575u) | u_input.a.zzx) ^ (vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x) >> (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, global2.x, 0u), vec3<u32>(global2.x, 49072u, u_input.a.x)) % vec3<u32>(32u))));
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_f32(trunc(214f)), select(vec3<bool>(true, true, true), func_2(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), i32(-1i) * -7401i, Struct_3(vec2<f32>(701f, 190f), Struct_1(true), Struct_2(Struct_1(true), u_input.c, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], vec4<f32>(876f, 1000f, global0[_wgslsmith_index_u32(4294967295u, 23u)], 222f)), 4294967295u, Struct_2(Struct_1(false), vec4<i32>(arg_0.x, arg_0.x, global1.x, -42136i), global0[_wgslsmith_index_u32(global2.x, 23u)], vec4<f32>(global0[_wgslsmith_index_u32(global2.x, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)], -829f, -492f)))), func_2(vec3<bool>(true, true, true), -34332i, Struct_3(vec2<f32>(226f, 125f), Struct_1(true), Struct_2(Struct_1(false), vec4<i32>(u_input.c.x, u_input.c.x, global1.x, global1.x), -629f, vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], -220f, global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(27317u, 23u)])), 0u, Struct_2(Struct_1(true), arg_0, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], vec4<f32>(global0[_wgslsmith_index_u32(0u, 23u)], 318f, 1631f, 926f))))), vec3<f32>(_wgslsmith_f_op_f32(select(1f, -1035f, func_2(vec3<bool>(true, true, true), -1i, Struct_3(vec2<f32>(global0[_wgslsmith_index_u32(1u, 23u)], 308f), Struct_1(true), Struct_2(Struct_1(true), u_input.d, -1826f, vec4<f32>(-905f, global0[_wgslsmith_index_u32(0u, 23u)], 1413f, -412f)), u_input.a.x, Struct_2(Struct_1(false), u_input.c, global0[_wgslsmith_index_u32(17050u, 23u)], vec4<f32>(315f, -1000f, global0[_wgslsmith_index_u32(global2.x, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)])))).x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(1u, 23u)], -835f)) + 1000f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~1u, 23u)] + 457f)), select(countOneBits(22016i), arg_0.x, false))), Struct_1(!(global2.x <= firstLeadingBit(1u))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 23u)]) == _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(42265u, 23u)]))), u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-3019f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-415f, 838f, 305f, -1444f) - vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(global2.x, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(global2.x, 23u)]))))), 0u, Struct_2(Struct_1(-2147483647i <= select(u_input.b, 29650i, true)), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-10838i, u_input.d.x, global1.x, u_input.e), u_input.d, arg_0), select(arg_0, vec4<i32>(global1.x, u_input.d.x, -14028i, arg_0.x), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true)) & arg_0, -2067f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(0u, 23u)], 196f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), -304f))));
    let var_2 = Struct_4(max(~min(global2.x, global2.x << (1u % 32u)), _wgslsmith_mult_u32(abs(1u) >> ((global2.x ^ var_1.d) % 32u), max(global2.x, 29511u))));
    var var_3 = Struct_3(vec2<f32>(588f, 1214f), Struct_1(all(select(vec3<bool>(false, var_1.e.a.a, var_1.c.a.a), !vec3<bool>(var_1.b.a, var_1.c.a.a, var_1.b.a), !var_1.c.a.a))), Struct_2(var_1.c.a, var_1.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1010f)), var_1.c.d), u_input.a.x, Struct_2(var_1.e.a, _wgslsmith_mod_vec4_i32(vec4<i32>(global1.x, i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-15416i, var_1.c.b.x, -45307i), vec3<i32>(-75940i, var_1.c.b.x, -1i)), u_input.e), vec4<i32>(_wgslsmith_mult_i32(0i, arg_0.x), -global1.x, var_1.c.b.x, var_1.e.b.x)), var_1.e.d.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.a.x, var_1.e.c, -406f, global0[_wgslsmith_index_u32(0u, 23u)])))))));
    return _wgslsmith_add_u32(u_input.a.x, global2.x);
}

fn func_5(arg_0: Struct_3, arg_1: vec2<u32>) -> bool {
    var var_0 = Struct_3(vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 23u)]))))), Struct_1(arg_0.e.a.a), arg_0.c, abs(u_input.a.x), Struct_2(arg_0.b, reverseBits(u_input.c), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(51293u, 23u)]) * 542f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1147f, arg_0.a.x, arg_0.b.a)), 232f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -195f)), global0[_wgslsmith_index_u32(4294967295u, 23u)], -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_1 = arg_0.c;
    var var_2 = -func_3(Struct_2(Struct_1(var_1.a.a), vec4<i32>(min(var_0.c.b.x, var_0.c.b.x), firstLeadingBit(1i), _wgslsmith_div_i32(var_0.e.b.x, 2147483647i), -u_input.c.x), _wgslsmith_f_op_f32(1147f + _wgslsmith_f_op_f32(ceil(arg_0.e.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.c.d - var_0.c.d) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, 850f, 979f, arg_0.a.x)))));
    var_2 = min(-_wgslsmith_sub_i32(var_0.c.b.x, _wgslsmith_div_i32(arg_0.e.b.x, global1.x) ^ ~0i), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(abs(u_input.d.xxz), abs(~var_1.b.zwx)), select(vec3<i32>(arg_0.c.b.x, ~var_1.b.x, -2147483647i | global1.x), vec3<i32>(var_0.e.b.x, i32(-1i) * -8182i, var_1.b.x), all(select(vec2<bool>(true, false), vec2<bool>(arg_0.e.a.a, true), vec2<bool>(var_1.a.a, true))))));
    global2 = vec3<u32>(countOneBits(~66217u), ~(~var_0.d >> (_wgslsmith_add_u32(0u, 1u) % 32u)), _wgslsmith_add_u32(3152u, abs(u_input.a.x << (global2.x % 32u))));
    return var_1.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~(~(u_input.c ^ ((vec4<i32>(u_input.b, global1.x, u_input.d.x, 3273i) | vec4<i32>(global1.x, -1769i, u_input.b, u_input.e)) >> (~u_input.a % vec4<u32>(32u)))));
    global0 = array<f32, 23>();
    let var_0 = Struct_1(false);
    let var_1 = var_0;
    global2 = u_input.a.ywz;
    let var_2 = Struct_1(func_5(Struct_3(vec2<f32>(global0[_wgslsmith_index_u32(min(global2.x, 4294967295u), 23u)], global0[_wgslsmith_index_u32(func_1(u_input.d), 23u)]), Struct_1(false), Struct_2(var_0, vec4<i32>(global1.x, -39663i, -1i, 944i) | vec4<i32>(-47351i, -17931i, global1.x, 2147483647i), _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(u_input.a.x, 23u)])), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 1000f, -183f)))), ~countOneBits(34887u), Struct_2(Struct_1(true), vec4<i32>(global1.x, u_input.b, 1i, -64742i), _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(global2.x, 23u)], var_0.a)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0[_wgslsmith_index_u32(18355u, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)], -904f), vec4<f32>(1204f, -2055f, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 2397f))))), ~max(u_input.a.wy & vec2<u32>(global2.x, 92530u), global2.xx)));
    var var_3 = global1.x;
    let x = u_input.a;
    s_output = StorageBuffer(~0u);
}

