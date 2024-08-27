struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(vec4<f32>(-1034f, -232f, -1000f, 1240f), 266f, vec3<f32>(1219f, -1033f, 1216f), -1344f), vec3<f32>(-1000f, -1000f, -1080f), vec4<u32>(104818u, 4294967295u, 8786u, 0u), vec2<u32>(12583u, 4294967295u)), Struct_2(Struct_1(vec4<f32>(1734f, -327f, 385f, -652f), -209f, vec3<f32>(-271f, 1000f, -343f), -1000f), vec3<f32>(1073f, -936f, 1702f), vec4<u32>(55286u, 1u, 0u, 37285u), vec2<u32>(101202u, 1u)), Struct_2(Struct_1(vec4<f32>(-796f, -790f, -2590f, -1931f), 328f, vec3<f32>(1000f, 715f, -1022f), -1562f), vec3<f32>(-642f, 764f, 1115f), vec4<u32>(0u, 37624u, 4294967295u, 4294967295u), vec2<u32>(4294967295u, 18020u)), Struct_2(Struct_1(vec4<f32>(921f, -259f, 385f, -1000f), 125f, vec3<f32>(1000f, -1144f, 287f), 376f), vec3<f32>(670f, -134f, 366f), vec4<u32>(38179u, 0u, 4294967295u, 1u), vec2<u32>(1u, 1u)), Struct_2(Struct_1(vec4<f32>(1357f, 170f, -256f, -477f), 631f, vec3<f32>(420f, -1000f, -1620f), 1064f), vec3<f32>(1231f, -603f, 1130f), vec4<u32>(11681u, 4294967295u, 1850u, 4294967295u), vec2<u32>(4294967295u, 62489u)), Struct_2(Struct_1(vec4<f32>(661f, 1656f, -597f, 379f), -2162f, vec3<f32>(-524f, -131f, -140f), 1162f), vec3<f32>(-412f, -3302f, -917f), vec4<u32>(1u, 39563u, 78903u, 4294967295u), vec2<u32>(26955u, 0u)), Struct_2(Struct_1(vec4<f32>(-699f, 668f, -902f, -3043f), 252f, vec3<f32>(529f, -1000f, -233f), -780f), vec3<f32>(1169f, -558f, 173f), vec4<u32>(1u, 1u, 78650u, 32440u), vec2<u32>(0u, 72632u)), Struct_2(Struct_1(vec4<f32>(642f, -540f, -1745f, -1320f), -807f, vec3<f32>(-129f, -1008f, -1000f), 1325f), vec3<f32>(887f, -1413f, 465f), vec4<u32>(47110u, 4294967295u, 6410u, 1u), vec2<u32>(0u, 1u)));

var<private> global1: Struct_3;

var<private> global2: i32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: u32, arg_3: Struct_2) -> vec4<i32> {
    global0 = array<Struct_2, 8>();
    var var_0 = arg_0;
    var var_1 = _wgslsmith_dot_vec4_i32(max(vec4<i32>(-7847i, ~(-2147483647i), u_input.c, 19384i), -(~vec4<i32>(50585i, 16343i, 34004i, u_input.a))) ^ (-(vec4<i32>(u_input.a, -34519i, u_input.a, u_input.d.x) >> (arg_0.b.c % vec4<u32>(32u))) << (abs(arg_3.c) % vec4<u32>(32u))), -firstLeadingBit(abs(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.d.x, u_input.d.x, u_input.d.x), vec4<i32>(u_input.c, u_input.a, -2147483647i, u_input.d.x)))));
    global0 = array<Struct_2, 8>();
    var var_2 = _wgslsmith_add_vec2_u32(~(~(~vec2<u32>(0u, 110817u))), arg_3.c.yx);
    return vec4<i32>(_wgslsmith_add_i32(~0i, _wgslsmith_add_i32(u_input.c, u_input.b.x) ^ (5224i >> (1u % 32u))), _wgslsmith_mod_i32(-(u_input.c ^ u_input.a), u_input.a), 21278i, u_input.a << (arg_2 % 32u)) >> (~_wgslsmith_add_vec4_u32(arg_3.c, countOneBits(max(arg_0.b.c, vec4<u32>(arg_0.b.c.x, arg_0.c.d.x, arg_0.c.c.x, global1.c.d.x)))) % vec4<u32>(32u));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: Struct_4) -> vec2<u32> {
    var var_0 = global1.c;
    let var_1 = _wgslsmith_mod_vec3_u32(countOneBits(arg_2.a.b.c.zwz) ^ (vec3<u32>(3530u, _wgslsmith_div_u32(0u, var_0.c.x), 62762u) | ~var_0.c.xxz), vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(var_0.c.xwx, var_0.c.wxy), 37673u, 1u), global1.b.c.x), var_0.c.x, global1.c.c.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(global1.c.b.xy, _wgslsmith_f_op_vec2_f32(-global1.c.a.c.zx), !select(vec2<bool>(true, arg_0.x), vec2<bool>(false, arg_0.x), select(vec2<bool>(false, arg_0.x), arg_0.yy, true))))));
    let var_3 = vec4<f32>(var_2.x, var_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + 531f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2163f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.x)) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2356f)) + -215f));
    global2 = ~(-2147483647i);
    return vec2<u32>(var_1.x, arg_2.a.b.d.x);
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-586f * _wgslsmith_f_op_f32(global1.a.b - arg_0)), global1.c.a.b, -195f, -1291f);
    global0 = array<Struct_2, 8>();
    let var_1 = vec2<u32>(global1.c.d.x, global1.c.c.x) ^ func_4(vec3<bool>(true, false, ~global1.b.c.x != _wgslsmith_dot_vec2_u32(global1.b.c.yz, vec2<u32>(51425u, global1.b.d.x))), _wgslsmith_sub_vec4_i32(select(-vec4<i32>(u_input.d.x, u_input.b.x, -2147483647i, u_input.b.x), vec4<i32>(8164i, 0i, u_input.c, 0i) >> (global1.b.c % vec4<u32>(32u)), vec4<bool>(true, true, true, true)), func_3(Struct_3(global1.c.a, Struct_2(Struct_1(vec4<f32>(-1406f, -1291f, 2170f, global1.b.a.c.x), global1.c.a.c.x, vec3<f32>(arg_0, 1000f, var_0.x), global1.b.a.c.x), vec3<f32>(arg_0, var_0.x, var_0.x), global1.c.c, global1.c.d), Struct_2(Struct_1(global1.c.a.a, -218f, var_0.xxz, var_0.x), vec3<f32>(global1.c.a.d, var_0.x, -888f), vec4<u32>(global1.c.d.x, global1.b.d.x, 4294967295u, 1u), global1.c.d)), select(vec2<bool>(false, true), vec2<bool>(false, false), false), ~global1.b.c.x, Struct_2(global1.b.a, var_0.wyz, vec4<u32>(39000u, global1.c.d.x, 21023u, 4294967295u), vec2<u32>(global1.b.d.x, global1.c.d.x)))), Struct_4(Struct_3(Struct_1(global1.b.a.a, 1000f, vec3<f32>(-1000f, -594f, 512f), var_0.x), Struct_2(Struct_1(var_0, global1.a.d, var_0.yxy, -1000f), var_0.yyy, vec4<u32>(1u, global1.c.c.x, global1.c.c.x, 1u), vec2<u32>(1u, global1.c.d.x)), global0[_wgslsmith_index_u32(~35838u, 8u)])));
    global2 = -u_input.c;
    var var_2 = Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0)), arg_0, global1.c.a.a.xxw, -507f), Struct_2(global1.a, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global1.c.b))), global1.b.c, select(global1.c.d >> (var_1 % vec2<u32>(32u)), reverseBits(var_1), vec2<bool>(true, true))), global1.b));
    return var_0.x;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.c.a.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(1261f)))), global1.a.b)));
    let var_1 = Struct_2(Struct_1(vec4<f32>(-179f, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(363f, global1.b.a.d, true))), -835f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(119f, var_0.x)) - _wgslsmith_f_op_f32(sign(-570f)))), global1.b.b, global1.c.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(175f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(315f, -1895f, true)) + -598f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_0.x)))))), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(~global1.c.c, ~global1.b.c), vec4<u32>(_wgslsmith_div_u32(global1.b.d.x, 0u), global1.c.d.x, ~global1.b.d.x, global1.c.d.x), global1.c.c << (global1.b.c % vec4<u32>(32u))), vec4<u32>(_wgslsmith_dot_vec4_u32(global1.b.c, vec4<u32>(global1.b.d.x, 4294967295u, global1.b.c.x, 20547u)) >> (~global1.c.c.x % 32u), global1.c.c.x, ~(global1.b.c.x >> (0u % 32u)), 1u)), ~global1.b.c.wz);
    var_0 = _wgslsmith_f_op_vec3_f32(-global1.a.a.xxw);
    var var_2 = 4294967295u;
    let var_3 = var_1.a;
    return var_1.a;
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: f32) -> Struct_1 {
    var var_0 = vec4<u32>(_wgslsmith_sub_u32(arg_1, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(arg_1, arg_0.c.d.x), arg_1 << (arg_1 % 32u)), global1.b.d | ~vec2<u32>(29628u, global1.b.c.x))), ~(~arg_1), abs(3087u) ^ (~max(0u, global1.b.d.x) ^ ~arg_1), ~global1.c.c.x);
    var var_1 = Struct_4(Struct_3(arg_0.c.a, Struct_2(Struct_1(_wgslsmith_div_vec4_f32(arg_0.a.a, vec4<f32>(arg_0.b.a.a.x, 279f, 1520f, -345f)), -430f, arg_0.a.a.wxx, -306f), arg_0.b.b, abs(vec4<u32>(20915u, 1u, global1.b.c.x, arg_1) | arg_0.b.c), ~(~vec2<u32>(1u, 27096u))), Struct_2(global1.a, vec3<f32>(_wgslsmith_f_op_f32(arg_2 + -480f), _wgslsmith_f_op_f32(max(arg_2, -851f)), 2328f), arg_0.b.c, _wgslsmith_sub_vec2_u32(~global1.b.c.wx, ~vec2<u32>(12322u, 13610u)))));
    let var_2 = Struct_2(func_1(), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1288f + -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -2446f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.a.c.x + arg_0.c.b.x))), arg_0.c.a.d))), _wgslsmith_mult_vec4_u32(vec4<u32>(~1u, ~var_0.x, 1u, _wgslsmith_clamp_u32(arg_0.b.c.x, global1.c.d.x, var_1.a.c.d.x)) >> (max(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1, 31191u, 26744u, var_1.a.c.c.x), vec4<u32>(var_1.a.b.c.x, global1.c.c.x, global1.b.d.x, 1u)), var_1.a.b.c) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(4294967295u, var_0.x, var_1.a.c.c.x, var_1.a.c.c.x)) << (arg_0.c.c % vec4<u32>(32u)), ~(arg_0.b.c << (var_1.a.c.c % vec4<u32>(32u))), vec4<u32>(var_1.a.b.d.x, firstTrailingBit(arg_1), arg_0.c.d.x | 26488u, 2720u & var_0.x))), var_1.a.b.d);
    var var_3 = arg_0;
    global0 = array<Struct_2, 8>();
    return func_1();
}

fn func_6(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> Struct_3 {
    let var_0 = 1u;
    global1 = Struct_3(func_5(Struct_3(global1.a, Struct_2(global1.c.a, _wgslsmith_f_op_vec3_f32(exp2(arg_2.c)), global1.c.c, func_4(vec3<bool>(arg_0, arg_0, true), vec4<i32>(u_input.a, 0i, 0i, -5145i), Struct_4(Struct_3(global1.b.a, Struct_2(Struct_1(arg_2.a, 1992f, arg_2.c, global1.c.a.a.x), arg_2.a.xzy, vec4<u32>(1u, global1.b.c.x, var_0, global1.b.c.x), vec2<u32>(42856u, global1.c.d.x)), global0[_wgslsmith_index_u32(global1.c.c.x, 8u)])))), global1.c), _wgslsmith_add_u32(_wgslsmith_mod_u32(global1.c.d.x, ~13760u), firstTrailingBit(global1.b.c.x)), _wgslsmith_f_op_f32(round(global1.a.c.x))), global1.b, global1.c);
    var var_1 = Struct_3(global1.a, global0[_wgslsmith_index_u32(0u, 8u)], global1.b);
    let var_2 = var_0;
    let var_3 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(arg_2.a + vec4<f32>(_wgslsmith_f_op_f32(step(global1.c.b.x, 841f)), _wgslsmith_f_op_f32(abs(-437f)), -900f, _wgslsmith_f_op_f32(1000f + arg_2.b))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-838f, 384f), global1.c.a.d, all(!vec4<bool>(true, arg_1, false, arg_0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_2.c, vec3<f32>(global1.b.b.x, -247f, -404f)))), -688f), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1.c.c.x, var_2), 8u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(((global1.c.c.x | 63782u) << (var_2 % 32u)) | _wgslsmith_dot_vec4_u32(global1.b.c, vec4<u32>(var_0, var_0, var_0, var_0) & global1.c.c), global1.c.d.x ^ var_2), 8u)]);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(!(!all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)))), abs(-1i) <= u_input.b.x, func_5(Struct_3(func_1(), global1.c, Struct_2(global1.c.a, _wgslsmith_div_vec3_f32(vec3<f32>(-3043f, -129f, 1103f), vec3<f32>(global1.c.a.a.x, global1.a.c.x, global1.c.a.d)), global1.b.c << (vec4<u32>(global1.c.c.x, 378u, 0u, global1.b.c.x) % vec4<u32>(32u)), vec2<u32>(1u, global1.b.d.x))), global1.c.c.x, global1.c.b.x));
    var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-193f, global1.c.b.x, _wgslsmith_f_op_f32(-313f * var_0.a.b), _wgslsmith_f_op_f32(-1364f * -593f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.b.x, global1.c.b.x, global1.a.c.x, var_0.b.b.x) * _wgslsmith_f_op_vec4_f32(-global1.c.a.a)))), _wgslsmith_f_op_f32(min(1556f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2347f - 1027f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(global1.a.b)), _wgslsmith_f_op_f32(global1.c.a.a.x + 1458f), global1.b.b.x)), var_0.c.b.x), func_6(~reverseBits(u_input.b.x) > _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(1i, u_input.a, 0i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 19781i, u_input.a), vec3<i32>(u_input.c, 1i, u_input.c))), -1281f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(641f + var_0.b.a.c.x)), Struct_1(global1.a.a, -431f, _wgslsmith_f_op_vec3_f32(sign(var_0.c.a.c)), -1038f)).c, var_0.c);
    var var_1 = vec2<bool>(true, true);
    var_1 = vec2<bool>(var_1.x, var_1.x);
    global0 = array<Struct_2, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.a.b, 1u, global1.c.a.a.xzz, global1.c.d.x);
}

