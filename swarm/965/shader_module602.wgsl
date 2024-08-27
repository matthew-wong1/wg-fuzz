struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: array<vec4<i32>, 4> = array<vec4<i32>, 4>(vec4<i32>(-83975i, -30712i, 2147483647i, 4169i), vec4<i32>(-61375i, 6924i, 1i, -1i), vec4<i32>(i32(-2147483648), 24139i, 0i, -13230i), vec4<i32>(65421i, -7355i, -6296i, 1i));

var<private> global2: vec2<i32>;

var<private> global3: Struct_4;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec4<bool>) -> u32 {
    global1 = array<vec4<i32>, 4>();
    let var_0 = arg_2.e;
    var var_1 = ~(~61249u ^ max(~(~54104u), arg_2.a.x));
    var var_2 = Struct_4(_wgslsmith_add_i32(0i, -_wgslsmith_dot_vec3_i32(select(vec3<i32>(-1i, -2147483647i, 1i), u_input.d, false), ~global3.d.ywz)), arg_2.b.zzz, countOneBits(_wgslsmith_div_i32(min(_wgslsmith_sub_i32(2147483647i, 9738i), var_0.c.x), u_input.d.x)), _wgslsmith_sub_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(global2.x, -49065i, arg_2.c, -1i), vec4<i32>(1i, var_0.c.x, u_input.c, global3.a)), vec4<i32>(abs(1i), var_0.c.x << (4294967295u % 32u), u_input.c, countOneBits(25679i))) << (arg_2.b % vec4<u32>(32u)));
    global0 = array<Struct_1, 8>();
    return var_2.b.x;
}

fn func_3(arg_0: vec2<i32>) -> i32 {
    let var_0 = ~vec3<u32>(8546u, global3.b.x, u_input.e.x);
    var var_1 = global0[_wgslsmith_index_u32(39478u, 8u)];
    var var_2 = vec3<i32>(var_1.c.x, countOneBits(~var_1.c.x << (~0u % 32u)), ~reverseBits(~abs(2147483647i)));
    var var_3 = Struct_1(_wgslsmith_clamp_i32(-select(var_1.c.x, 63563i, true), ~2796i, var_1.c.x) > (-(-2147483647i >> (var_0.x % 32u)) ^ abs(max(-53064i, 24593i))), -186f, -firstTrailingBit(~(vec2<i32>(39296i, arg_0.x) & var_2.yy)));
    let var_4 = !(!select(vec4<bool>(any(vec3<bool>(var_1.a, var_1.a, false)), var_3.a, var_1.a, var_1.a && true), vec4<bool>(var_3.a, any(vec2<bool>(false, var_3.a)), false == var_3.a, false), !(!var_3.a)));
    return ~abs(countOneBits(var_1.c.x));
}

fn func_1(arg_0: Struct_4) -> Struct_3 {
    let var_0 = any(!vec4<bool>(arg_0.b.x <= ~1u, false, true, false));
    global2 = abs(~reverseBits(~firstLeadingBit(vec2<i32>(0i, arg_0.c))));
    var var_1 = _wgslsmith_clamp_vec3_u32(global3.b, vec3<u32>(u_input.e.x << (~global3.b.x % 32u), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, arg_0.b.x, arg_0.b.x, 10045u), vec4<u32>(4294967295u, global3.b.x, global3.b.x, 4294967295u)) >> ((global3.b.x | 41268u) % 32u), 1u), ~abs(firstLeadingBit(global3.b.x))), (vec3<u32>(_wgslsmith_mult_u32(1u, 29370u), _wgslsmith_div_u32(global3.b.x, global3.b.x), 7973u >> (arg_0.b.x % 32u)) ^ vec3<u32>(firstTrailingBit(1u), func_2(true, vec2<i32>(u_input.c, -1i), Struct_2(global3.b.zz, vec4<u32>(arg_0.b.x, 1u, 0u, arg_0.b.x), arg_0.d.x, vec4<f32>(-886f, -156f, -2907f, 3247f), global0[_wgslsmith_index_u32(0u, 8u)]), vec4<bool>(false, false, false, true)), ~42592u)) ^ global3.b);
    var_1 = vec3<u32>(90571u, (77934u & var_1.x) << (23462u % 32u), var_1.x);
    global3 = Struct_4(func_3(firstLeadingBit(arg_0.d.xw)), vec3<u32>(_wgslsmith_div_u32(~reverseBits(u_input.a.x), _wgslsmith_mod_u32(arg_0.b.x, _wgslsmith_mult_u32(7806u, 7740u))), global3.b.x ^ select(1u, 67927u, select(var_0, false, true)), _wgslsmith_add_u32(~global3.b.x, arg_0.b.x) >> (var_1.x % 32u)), -1i, global3.d);
    return Struct_3(vec4<bool>(var_0, true, arg_0.b.x < _wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_1.x, var_1.x), ~4294967295u, 56847u), false));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> vec4<bool> {
    var var_0 = arg_0.e.c;
    let var_1 = func_1(Struct_4(u_input.c, global3.b, -51684i & _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(global3.d.xy, u_input.d.yy), i32(-1i) * -43479i), vec4<i32>(-1i) * -min(global3.d, vec4<i32>(-31456i, var_0.x, arg_0.e.c.x, 7897i))));
    var var_2 = Struct_4(_wgslsmith_sub_i32(_wgslsmith_mult_i32(var_0.x, _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(14372i, 26848i, arg_0.c)) >> ((66089u | u_input.e.x) % 32u)), global2.x), vec3<u32>(firstTrailingBit(45703u) >> (global3.b.x % 32u), _wgslsmith_div_u32(~0u, _wgslsmith_dot_vec2_u32(global3.b.zz >> (vec2<u32>(26531u, u_input.e.x) % vec2<u32>(32u)), vec2<u32>(arg_0.b.x, 0u))), ~_wgslsmith_mod_u32(~global3.b.x, countOneBits(4294967295u))), ~_wgslsmith_add_i32(reverseBits(u_input.b.x), -reverseBits(2147483647i)), abs(vec4<i32>(arg_0.e.c.x, _wgslsmith_div_i32(abs(0i), arg_0.e.c.x), 0i, countOneBits(2147483647i))));
    var var_3 = Struct_1(false | arg_1.a.x, -252f, vec2<i32>(countOneBits(i32(-1i) * -2147483647i), global2.x));
    let var_4 = -399f;
    return select(!arg_1.a, arg_1.a, select(var_1.a, select(select(vec4<bool>(arg_1.a.x, arg_0.e.a, var_3.a, false), func_1(Struct_4(var_2.a, vec3<u32>(var_2.b.x, 56667u, u_input.a.x), -2147483647i, var_2.d)).a, any(var_1.a.yxy)), vec4<bool>(47042i != var_2.a, arg_0.e.a, !arg_0.e.a, any(vec4<bool>(var_1.a.x, false, var_1.a.x, var_1.a.x))), !var_1.a), vec4<bool>(!select(arg_1.a.x, true, arg_1.a.x), select(true, var_3.a, true) & arg_0.e.a, !any(var_1.a.yxz), true)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_div_u32(global3.b.x, ~u_input.a.x);
    var var_1 = firstTrailingBit(~select(select(vec3<u32>(0u, u_input.e.x, 55861u), global3.b, true), _wgslsmith_mod_vec3_u32(vec3<u32>(28846u, global3.b.x, 81048u), global3.b), any(vec2<bool>(true, arg_1.a))));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.b), arg_1.b)), 782f, 772f), _wgslsmith_div_vec4_f32(vec4<f32>(-328f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(942f)) - _wgslsmith_f_op_f32(-arg_1.b)), 565f, arg_1.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2201f, arg_1.b, arg_1.b, 1000f)))))), arg_0.a.x));
    global0 = array<Struct_1, 8>();
    let var_3 = 1i;
    return Struct_2(~var_1.xy, ~(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 55825u, var_1.x), vec4<u32>(global3.b.x, 0u, 19682u, var_1.x)) | countOneBits(vec4<u32>(0u, 31946u, 0u, u_input.e.x))) << (firstTrailingBit(countOneBits(vec4<u32>(1u, 35009u, 12122u, 14417u)) ^ ~vec4<u32>(u_input.e.x, 4294967295u, var_1.x, var_1.x)) % vec4<u32>(32u)), global3.a, _wgslsmith_f_op_vec4_f32(var_2 * _wgslsmith_div_vec4_f32(var_2, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 819f, arg_1.b, -251f)))))), Struct_1(false, var_2.x, _wgslsmith_add_vec2_i32(-abs(arg_1.c), vec2<i32>(-2147483647i, global3.d.x) >> (_wgslsmith_mult_vec2_u32(u_input.a.yy, var_1.xz) % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(firstLeadingBit(global2.x ^ -4744i), ~vec3<u32>(u_input.e.x, ~0u, 4130u), u_input.c, global1[_wgslsmith_index_u32(~min(_wgslsmith_add_u32(u_input.e.x, global3.b.x), max(38160u, u_input.a.x)) ^ 7713u, 4u)]);
    var var_1 = func_5(Struct_3(func_4(Struct_2(u_input.e | vec2<u32>(global3.b.x, 2091u), select(vec4<u32>(12874u, 4294967295u, var_0.b.x, 2549u), vec4<u32>(4294967295u, 32233u, 39153u, 42124u), vec4<bool>(false, true, true, true)), reverseBits(global3.c), vec4<f32>(1000f, 285f, 560f, -224f), Struct_1(false, 342f, vec2<i32>(var_0.c, global2.x))), func_1(Struct_4(var_0.a, vec3<u32>(20227u, 45190u, u_input.a.x), var_0.a, global3.d)))), Struct_1(any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(round(776f)), vec2<i32>(_wgslsmith_clamp_i32(~global2.x, -2147483647i, 1i), -17412i >> (u_input.a.x % 32u))));
    global1 = array<vec4<i32>, 4>();
    let var_2 = func_5(func_1(var_0), func_5(Struct_3(vec4<bool>(var_1.e.a, var_1.e.a | var_1.e.a, false, true)), var_1.e).e);
    global0 = array<Struct_1, 8>();
    var var_3 = 4294967295u;
    var_1 = func_5(Struct_3(vec4<bool>(all(func_4(var_2, Struct_3(vec4<bool>(var_2.e.a, var_2.e.a, true, var_2.e.a)))), var_0.b.x < ~var_0.b.x, func_4(Struct_2(var_0.b.xy, vec4<u32>(global3.b.x, var_1.a.x, var_1.b.x, 4294967295u), global3.a, vec4<f32>(var_1.d.x, 397f, 420f, 404f), Struct_1(var_1.e.a, var_2.e.b, vec2<i32>(global2.x, u_input.c))), Struct_3(vec4<bool>(var_1.e.a, true, var_2.e.a, var_2.e.a))).x, !all(vec4<bool>(false, false, false, false)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d.x * 834f) * var_1.e.b) < -1036f, var_2.d.x, -countOneBits(select(vec2<i32>(31201i, -27263i), vec2<i32>(-1i, global3.a), var_2.e.a))));
    var var_4 = ~global3.b;
    var_3 = var_1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.e.c, var_1.e.b);
}

