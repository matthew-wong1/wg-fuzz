struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec4<bool>,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: Struct_2,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 486f;

var<private> global1: array<i32, 4> = array<i32, 4>(1i, -3642i, 2147483647i, 0i);

var<private> global2: array<Struct_2, 24>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec2<f32>) -> Struct_3 {
    global2 = array<Struct_2, 24>();
    let var_0 = 1u;
    global2 = array<Struct_2, 24>();
    let var_1 = _wgslsmith_f_op_f32(-arg_0.x);
    global2 = array<Struct_2, 24>();
    return Struct_3(arg_0.x, global2[_wgslsmith_index_u32(0u, 24u)]);
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(~(firstLeadingBit(u_input.b) >> (vec3<u32>(32769u, 16455u, 15805u) % vec3<u32>(32u))), vec3<u32>(u_input.b.x, abs(1u), _wgslsmith_dot_vec4_u32(~u_input.c, vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 3986u)))), _wgslsmith_add_vec3_u32(select(_wgslsmith_sub_vec3_u32(~vec3<u32>(1u, u_input.b.x, u_input.c.x), vec3<u32>(44738u, u_input.b.x, 10718u)), ~u_input.c.zxz, vec3<bool>(true, select(false, false, true), false)), _wgslsmith_sub_vec3_u32(vec3<u32>(abs(u_input.c.x), 92166u, _wgslsmith_mult_u32(u_input.b.x, 88457u)), vec3<u32>(66513u, 1u, u_input.c.x))));
    global1 = array<i32, 4>();
    var var_1 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(760f - 143f), -860f), func_2(vec2<f32>(475f, arg_0)).b.e.d)) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1349f, -384f))), arg_0)));
    var_1 = Struct_3(var_1.a, Struct_2(_wgslsmith_sub_i32(-firstTrailingBit(1i), global1[_wgslsmith_index_u32(u_input.c.x, 4u)]), min(abs(u_input.d.yyw ^ vec3<i32>(global1[_wgslsmith_index_u32(1u, 4u)], 8532i, 0i)), select(u_input.a.xyz | var_1.b.c.b, u_input.a.wzx, var_1.b.e.c.x)), Struct_1(var_1.b.c.a == false, vec3<i32>(-var_1.b.e.b.x, 35573i, reverseBits(var_1.b.c.b.x)), vec4<bool>(!var_1.b.e.c.x, !var_1.b.c.a, any(vec2<bool>(false, false)), false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, 501f)), _wgslsmith_f_op_f32(-arg_0)), var_1.b.b.x, Struct_1(var_1.b.e.a, var_1.b.c.b, vec4<bool>(!var_1.b.e.a, var_1.b.e.a, !var_1.b.c.c.x, all(vec4<bool>(var_1.b.c.a, false, false, var_1.b.e.c.x))), var_1.b.e.d, arg_0)));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_1.b.c.d)) - vec2<f32>(1988f, 1000f))).b.c.e), _wgslsmith_f_op_f32(1396f - _wgslsmith_f_op_f32(min(func_2(_wgslsmith_f_op_vec2_f32(-var_1.b.c.d)).b.c.e, _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0, arg_0), -1787f)))));
    return _wgslsmith_div_u32(4294967295u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 69148u, var_0.x, 0u) >> (u_input.c % vec4<u32>(32u)), ~vec4<u32>(1u, var_0.x, var_0.x, 66580u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, _wgslsmith_mult_u32(var_0.x, 15988u)), vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, u_input.e), reverseBits(4294967295u)), 51283u ^ (u_input.c.x << (u_input.b.x % 32u)))));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> u32 {
    var var_0 = !arg_2.a;
    global2 = array<Struct_2, 24>();
    let var_1 = arg_1.b;
    var var_2 = Struct_4(func_2(arg_1.d), abs(func_3(arg_1.d.x) << (1u % 32u)), func_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_2.e, arg_1.e))) + arg_1.d)))).b, false, arg_1.d);
    var_2 = Struct_4(var_2.a, ~countOneBits(13705u), Struct_2(1i, (select(vec3<i32>(u_input.a.x, var_2.a.b.a, global1[_wgslsmith_index_u32(arg_3, 4u)]), vec3<i32>(-13950i, arg_1.b.x, arg_1.b.x), vec3<bool>(arg_1.a, var_2.c.e.a, arg_0.x)) & _wgslsmith_add_vec3_i32(u_input.d.zzw, vec3<i32>(18843i, arg_1.b.x, var_1.x))) ^ _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.x, arg_2.b.x, 0i), vec3<i32>(-3746i, var_2.a.b.c.b.x, 33836i)), vec3<i32>(29757i, var_1.x, var_2.a.b.a)), Struct_1(any(vec4<bool>(arg_2.c.x, false, true, arg_2.c.x)), var_1, !func_2(vec2<f32>(908f, -820f)).b.c.c, var_2.c.e.d, 3080f), ~2147483647i, arg_1), arg_3 > u_input.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(919f, -452f)) - var_2.a.b.e.d))));
    return arg_3;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: f32) -> Struct_4 {
    let var_0 = arg_2;
    var var_1 = _wgslsmith_sub_u32(min(firstLeadingBit(~(34889u | u_input.e)), ~30626u), abs(abs(firstTrailingBit(1u)) >> (69225u % 32u)));
    global2 = array<Struct_2, 24>();
    var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.c.zx, _wgslsmith_add_vec2_u32(~u_input.b.xx, select(u_input.b.zx, vec2<u32>(1u, 0u), vec2<bool>(arg_0.c.c.x, true)))), ~u_input.b.xz) | (countOneBits(~28936u << (countOneBits(arg_1) % 32u)) | 4294967295u);
    var_1 = u_input.b.x;
    return Struct_4(Struct_3(var_0, arg_0), u_input.b.x, Struct_2(-20913i << (~4294967295u % 32u), arg_0.e.b, func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(400f, var_0))).b.e, min(~860i, 22716i), arg_0.e), any(vec3<bool>(4294967295u <= select(arg_1, arg_1, arg_0.c.c.x), true, _wgslsmith_f_op_f32(-arg_2) != arg_2)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, arg_0.c.e) + vec2<f32>(-837f, arg_0.c.e)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(295f, -596f)), arg_0.e.a && true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1161f, arg_0.e.d.x)) + vec2<f32>(-1077f, arg_0.e.e))) - vec2<f32>(834f, _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(1203f * arg_2)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_div_u32(~(~u_input.e), ~1u), ~_wgslsmith_sub_u32(76000u, 1u));
    var var_1 = func_4(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_1(vec4<bool>(true, true, true, true), Struct_1(true, vec3<i32>(-1i, u_input.a.x, 50207i), vec4<bool>(false, false, true, true), vec2<f32>(-852f, -1588f), 1000f), Struct_1(false, u_input.d.xxz, vec4<bool>(false, true, false, true), vec2<f32>(543f, 228f), 845f), ~u_input.b.x), u_input.e ^ firstTrailingBit(u_input.e)) & ~(~(~4294967295u)), 24u)], ~u_input.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(149f, -791f, false)))));
    var var_2 = true;
    var_0 = 55783u;
    var var_3 = ~var_1.b << (var_1.b % 32u);
    let var_4 = Struct_4(var_1.a, ~var_1.b, Struct_2(var_1.a.b.c.b.x, _wgslsmith_sub_vec3_i32(min(vec3<i32>(-77212i, u_input.a.x, 0i), -vec3<i32>(var_1.a.b.e.b.x, -2147483647i, 4738i)), u_input.a.xzw), func_4(Struct_2(u_input.a.x, var_1.c.b, var_1.c.e, _wgslsmith_mod_i32(1i, 21999i), func_4(global2[_wgslsmith_index_u32(0u, 24u)], 30459u, 988f).a.b.c), ~abs(var_1.b), var_1.a.a).a.b.e, global1[_wgslsmith_index_u32(~var_1.b, 4u)], Struct_1(!var_1.a.b.c.a, _wgslsmith_sub_vec3_i32(abs(vec3<i32>(global1[_wgslsmith_index_u32(u_input.e, 4u)], 0i, global1[_wgslsmith_index_u32(66907u, 4u)])), -var_1.c.b), var_1.c.e.c, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.c.c.d.x, var_1.e.x))))), _wgslsmith_f_op_f32(-var_1.c.c.e))), all(var_1.a.b.c.c.yyx), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.a.b.e.e, 507f))));
    var var_5 = vec3<i32>(41729i >> (_wgslsmith_dot_vec3_u32(u_input.c.yxz, ~vec3<u32>(1u, 22547u, u_input.c.x)) % 32u), reverseBits(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(~u_input.e, 4u)], _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(~0u, 4u)], var_4.c.a & -10139i))), abs(u_input.a.x >> (~4294967295u % 32u)));
    var var_6 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-810f, -410f), var_4.a.b.e.d) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1479f), var_1.e.x)) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -668f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.a.b.e.e - -1000f), _wgslsmith_f_op_f32(-var_1.c.c.d.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.e - vec2<f32>(var_4.c.e.d.x, var_4.e.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_sub_u32(var_4.b, u_input.c.x), 1u), vec3<f32>(_wgslsmith_f_op_f32(-var_6.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_1.e.x)), func_2(var_1.c.e.d).b.c.e, var_4.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_4.e.x)))), _wgslsmith_f_op_f32(-1968f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a.a))))), vec2<i32>(_wgslsmith_mod_i32(~var_4.a.b.b.x, -var_4.a.b.a >> (1u % 32u)), abs(_wgslsmith_add_i32(var_5.x << (24055u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(17140i, -313i, u_input.d.x, var_1.a.b.d), vec4<i32>(0i, 1i, -25095i, 17730i))))));
}

