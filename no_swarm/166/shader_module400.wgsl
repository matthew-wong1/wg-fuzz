struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<u32>,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec4<f32>,
    b: f32,
    c: bool,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<f32>,
    d: vec2<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_5, 18>;

var<private> global2: array<u32, 14>;

var<private> global3: vec2<bool>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1() -> vec2<u32> {
    var var_0 = global0.xwz;
    let var_1 = abs(_wgslsmith_mod_i32(-51594i, _wgslsmith_add_i32(select(-40866i >> (u_input.d % 32u), u_input.b.x >> (1u % 32u), false), 2147483647i << (_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(u_input.c.x, 14u)], global2[_wgslsmith_index_u32(30619u, 14u)], 5793u), u_input.c) % 32u))));
    global1 = array<Struct_5, 18>();
    let var_2 = _wgslsmith_sub_vec2_i32(vec2<i32>(-u_input.b.x, var_1), u_input.b.zx);
    var var_3 = ~71957u;
    return select(u_input.c.yx, abs(~vec2<u32>(u_input.d, ~u_input.c.x)), all(global0.wxy));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1107f, -677f, 667f, -279f)))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(190f + -1038f), _wgslsmith_f_op_f32(146f + 440f), -2536f, _wgslsmith_div_f32(825f, 2007f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-762f, -1482f, -1255f, 224f))))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1609f, 1044f, 1282f, -1568f) + vec4<f32>(956f, -560f, 866f, 519f)) * vec4<f32>(116f, 1215f, 1000f, 1136f)) * _wgslsmith_div_vec4_f32(vec4<f32>(1444f, 682f, -105f, -257f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(555f, -1000f, 444f, 494f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(247f, -821f, -561f, 307f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1483f, 340f, -304f, -189f), vec4<f32>(-398f, -1196f, -965f, -1563f))))))));
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, 2375f, var_0.x, var_0.x), vec4<f32>(-1280f, var_0.x, 656f, 180f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(994f, -1016f, var_0.x, var_0.x) * vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -2120f, 780f, var_0.x)))), abs(~(-vec4<i32>(12301i, u_input.a, 1i, u_input.b.x))), firstLeadingBit(vec4<u32>(u_input.c.x, func_1().x, firstTrailingBit(global2[_wgslsmith_index_u32(4294967295u, 14u)]), u_input.c.x)), 59433u), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.x, 964f))), vec4<u32>(1u, 27383u, 8082u, 54745u << (~4294967295u % 32u)), _wgslsmith_clamp_i32(abs(u_input.a), max(-2147483647i, u_input.b.x), u_input.a));
    var var_2 = var_1.c.x;
    var var_3 = var_1.c.x;
    var var_4 = min(-_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.b << (vec3<u32>(global2[_wgslsmith_index_u32(8124u, 14u)], 0u, 10268u) % vec3<u32>(32u)), ~vec3<i32>(-569i, 27680i, -1i)), _wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(54236i, u_input.b.x, u_input.b.x)), vec3<i32>(0i, -17779i, u_input.a))), _wgslsmith_mod_i32(~_wgslsmith_add_i32(-11130i | u_input.b.x, ~16589i), _wgslsmith_mod_i32(4392i, var_1.a.b.x)));
    return ~var_1.c.x;
}

fn func_4(arg_0: Struct_3) -> vec2<bool> {
    let var_0 = firstTrailingBit(arg_0.a.c.yzx);
    var var_1 = vec3<bool>(false, arg_0.a.a.x <= _wgslsmith_f_op_f32(sign(arg_0.b.x)), true);
    global1 = array<Struct_5, 18>();
    let var_2 = arg_0.a;
    var_1 = vec3<bool>(1000f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.b.x * 765f))) - _wgslsmith_f_op_f32(-1483f + _wgslsmith_div_f32(arg_0.b.x, arg_0.a.a.x))), all(select(select(vec3<bool>(false, true, false), vec3<bool>(global3.x, global0.x, var_1.x), global0.yxx), select(vec3<bool>(false, global0.x, global3.x), vec3<bool>(false, var_1.x, global0.x), global0.x), vec3<bool>(false, false, false))) || !(_wgslsmith_sub_u32(u_input.d, 1u) >= 0u), arg_0.a.a.x > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-179f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    return global0.yw;
}

fn func_2() -> u32 {
    global3 = func_4(Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -663f, 782f, -985f), vec4<f32>(791f, 1265f, -1057f, 502f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1026f, 780f, 1638f, 1000f))), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.b.x, 59116i), ~vec4<i32>(2147483647i, 1i, u_input.b.x, -1i)), ~(~vec4<u32>(u_input.c.x, 19220u, global2[_wgslsmith_index_u32(u_input.c.x, 14u)], 38415u)), func_3() ^ u_input.c.x), vec2<f32>(_wgslsmith_f_op_f32(364f + _wgslsmith_f_op_f32(f32(-1f) * -1007f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-180f, -1677f, global3.x)), _wgslsmith_f_op_f32(abs(-803f)))), abs(reverseBits(~vec4<u32>(36250u, 4294967295u, 42734u, u_input.c.x))), _wgslsmith_mult_i32(-37517i & (u_input.b.x | u_input.a), -abs(u_input.a))));
    let var_0 = Struct_1(vec4<f32>(867f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(184f)) + -357f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(371f - -1639f)) - 224f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-371f, -246f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2278f, 1918f)), select(true, true, false)))), _wgslsmith_add_vec4_i32(select(vec4<i32>(-29774i, -1i, u_input.a, 20072i) << (vec4<u32>(u_input.c.x, 10436u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d, 14u)], 14u)], 1u) % vec4<u32>(32u)), vec4<i32>(10507i, u_input.b.x, u_input.a, u_input.b.x), global3.x), ~(-vec4<i32>(u_input.b.x, 1i, -12879i, u_input.a))) << (vec4<u32>(60622u, u_input.c.x, _wgslsmith_dot_vec2_u32(~u_input.c.zx, u_input.c.yz), reverseBits(_wgslsmith_mult_u32(33630u, 0u))) % vec4<u32>(32u)), countOneBits(vec4<u32>(_wgslsmith_clamp_u32(u_input.c.x, 63007u, 0u) >> (0u % 32u), ~_wgslsmith_sub_u32(16040u, 15791u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.d, 3068u, 30038u), _wgslsmith_add_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(1u, 14u)], 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 14u)], 14u)], u_input.c.x), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 14u)], 14u)], global2[_wgslsmith_index_u32(u_input.d, 14u)], u_input.c.x, u_input.c.x))), ~2948u)), u_input.c.x << (~(~u_input.c.x) % 32u));
    let var_1 = func_1().x;
    let var_2 = u_input.b.x;
    global2 = array<u32, 14>();
    return min(_wgslsmith_dot_vec3_u32(u_input.c, max(~(~var_0.c.xwz), select(~var_0.c.wwx, u_input.c, !global3.x))), var_0.c.x);
}

fn func_5(arg_0: u32, arg_1: vec3<f32>, arg_2: vec3<i32>, arg_3: bool) -> Struct_3 {
    let var_0 = Struct_5(vec4<f32>(arg_1.x, arg_1.x, _wgslsmith_f_op_f32(-arg_1.x), 161f), -1013f, global3.x, _wgslsmith_mod_vec2_i32(-_wgslsmith_add_vec2_i32(-vec2<i32>(-1i, u_input.a), arg_2.yz & u_input.b.zx), abs(select(u_input.b.zy, u_input.b.yz, !vec2<bool>(true, global3.x)))));
    var var_1 = u_input.a;
    var var_2 = ~(-((arg_2 | max(vec3<i32>(-16934i, 0i, -2147483647i), arg_2)) >> (~(vec3<u32>(u_input.c.x, 42901u, 25773u) | vec3<u32>(arg_0, 95060u, u_input.c.x)) % vec3<u32>(32u))));
    global1 = array<Struct_5, 18>();
    var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(0i, _wgslsmith_sub_i32(-1i, u_input.a), max(0i, ~var_2.x)), var_2.x, _wgslsmith_add_i32(_wgslsmith_mult_i32(countOneBits(var_0.d.x), _wgslsmith_mod_i32(0i, var_2.x)), _wgslsmith_mult_i32(9903i, var_2.x))), abs(arg_2));
    return Struct_3(Struct_1(var_0.a, vec4<i32>(select(-2147483647i, max(u_input.a, -1i), all(vec2<bool>(false, global3.x))), var_2.x, 0i, firstLeadingBit(~var_2.x)), vec4<u32>(~9034u, 1063u >> (global2[_wgslsmith_index_u32(0u, 14u)] % 32u), 1u, arg_0) | (vec4<u32>(arg_0, 22581u, arg_0, arg_0) | (vec4<u32>(u_input.c.x, 83488u, 36181u, 40114u) | vec4<u32>(4294967295u, 46235u, global2[_wgslsmith_index_u32(1u, 14u)], u_input.c.x))), 36588u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a.xz) * var_0.a.xy), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(max(arg_0, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d, 14u)], 14u)]), u_input.d, 18990u, abs(arg_0)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.d, 4294967295u, 4294967295u) >> (vec4<u32>(u_input.c.x, 4294967295u, global2[_wgslsmith_index_u32(4294967295u, 14u)], global2[_wgslsmith_index_u32(4294967295u, 14u)]) % vec4<u32>(32u)), ~vec4<u32>(arg_0, u_input.d, u_input.c.x, u_input.d))), vec4<u32>(24415u, 35717u, u_input.c.x, arg_0 ^ arg_0)), -60676i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(~abs(u_input.c));
    let var_1 = func_1();
    let var_2 = func_5((28713u << (abs(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 0u), var_0.yz)) % 32u)) | func_2(), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1144f, 1298f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1f, _wgslsmith_div_f32(194f, 1205f)))), _wgslsmith_f_op_f32(-490f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -862f) - _wgslsmith_f_op_f32(-1179f - 347f)))), firstTrailingBit(_wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a, u_input.a, u_input.b.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(15356i, u_input.a, u_input.a) << (var_0 % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(u_input.b, u_input.b)))), global0.x);
    var var_3 = 1024u;
    global3 = global0.zz;
    let var_4 = func_5(~(~(~(~var_1.x))), _wgslsmith_f_op_vec3_f32(-var_2.a.a.zyw), u_input.b, true).a;
    let var_5 = global2[_wgslsmith_index_u32(abs(var_0.x & _wgslsmith_sub_u32(var_0.x << (38993u % 32u), countOneBits(global2[_wgslsmith_index_u32(u_input.d, 14u)] | 4294967295u))), 14u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_2.a.a + vec4<f32>(var_2.b.x, var_2.b.x, var_2.a.a.x, var_2.b.x)), vec4<f32>(var_4.a.x, var_4.a.x, var_2.a.a.x, -601f), select(vec4<bool>(true, true, false, global3.x), vec4<bool>(false, global3.x, global3.x, global3.x), true))))), 1i, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1764f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.a.x) + -483f), _wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(769f * var_2.a.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a.x, 1126f, -1365f, var_4.a.x))))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-652f * _wgslsmith_f_op_f32(-var_2.b.x)), _wgslsmith_f_op_f32(var_2.b.x * 502f)))), -u_input.b.xx);
}

