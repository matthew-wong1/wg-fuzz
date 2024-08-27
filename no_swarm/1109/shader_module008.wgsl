struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_5 {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13>;

var<private> global1: array<vec4<f32>, 7>;

var<private> global2: array<vec3<bool>, 24> = array<vec3<bool>, 24>(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true));

var<private> global3: Struct_4;

var<private> global4: vec4<u32> = vec4<u32>(4294967295u, 4294967295u, 10266u, 4294967295u);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec3<i32>) -> Struct_2 {
    var var_0 = ~(i32(-1i) * -global3.e.e.x);
    var var_1 = ~firstLeadingBit(~u_input.b);
    global1 = array<vec4<f32>, 7>();
    var var_2 = arg_1;
    let var_3 = arg_3.x;
    return global0[_wgslsmith_index_u32(~abs(_wgslsmith_div_u32(~reverseBits(global3.e.c), u_input.b.x >> (110562u % 32u))), 13u)];
}

fn func_3() -> Struct_2 {
    var var_0 = max(_wgslsmith_sub_i32(-1i, -global3.e.e.x), 0i) | (abs(global3.e.a.x) >> (_wgslsmith_div_u32(16656u, 16869u) % 32u));
    global3 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(361f))))), _wgslsmith_f_op_f32(-514f * global3.d.a)), global3.b >> (global3.b % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.c) * vec4<f32>(global3.c.x, _wgslsmith_f_op_f32(exp2(global3.e.b)), -1957f, _wgslsmith_f_op_f32(exp2(global3.e.b))))), Struct_2(_wgslsmith_f_op_f32(-global3.c.x)), Struct_1(global3.e.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.d.a)), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-2691f + 786f))))), u_input.b.x, 1022f, global3.e.e));
    let var_1 = Struct_5(u_input.b, 16375u, _wgslsmith_f_op_f32(f32(-1f) * -1172f), func_2(~(~_wgslsmith_div_vec3_i32(global3.e.e.zwy, global3.e.e.zyw)), func_2(global3.e.e.xwy, Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1115f)), Struct_3(global3.e), global3.e.e.zxz), Struct_3(global3.e), global3.e.e.xzx), global3.a.x);
    var var_2 = ~(~u_input.b.x);
    var var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global3.c.wy, global3.c.zw, 1u >= ~u_input.b.x))), vec2<u32>(global3.e.c, ~global4.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c, global3.a.x, global3.c.x, global3.d.a) * vec4<f32>(-1000f, global3.d.a, 1145f, var_1.d.a)) - _wgslsmith_div_vec4_f32(vec4<f32>(987f, 679f, global3.a.x, -182f), vec4<f32>(var_1.c, -1301f, var_1.d.a, 306f))), vec4<f32>(-1000f, _wgslsmith_div_f32(global3.c.x, global3.d.a), 1257f, _wgslsmith_f_op_f32(-global3.a.x))))), global3.d, global3.e);
    return func_2(_wgslsmith_clamp_vec3_i32(var_3.e.e.wyz, vec3<i32>(-31765i << (_wgslsmith_mod_u32(1u, global3.e.c) % 32u), -55532i | firstTrailingBit(-40968i), 22604i), _wgslsmith_clamp_vec3_i32(firstTrailingBit(global3.e.e.zzz), var_3.e.e.yyw, vec3<i32>(_wgslsmith_div_i32(0i, 2147483647i), i32(-1i) * -29414i, abs(-1i)))), Struct_2(_wgslsmith_f_op_f32(327f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e)))), Struct_3(global3.e), reverseBits(-vec3<i32>(global3.e.e.x, -1i, -47687i)) & max(firstTrailingBit(vec3<i32>(global3.e.e.x, 8732i, global3.e.e.x)), select(reverseBits(global3.e.e.xwx), vec3<i32>(-11304i, 0i, 7519i), true)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_5, arg_3: vec2<u32>) -> vec4<u32> {
    global4 = vec4<u32>(1u, 38246u & _wgslsmith_mult_u32(_wgslsmith_clamp_u32(44762u, _wgslsmith_sub_u32(11659u, 7413u), arg_2.b), global4.x), (_wgslsmith_add_u32(select(u_input.b.x, global4.x, true), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 69650u, 24791u, 32620u), vec4<u32>(0u, 21777u, 20407u, global4.x))) << (12699u % 32u)) ^ 17483u, ~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(global4.xx, arg_3), vec2<u32>(5776u, 1u)) >> (~0u % 32u));
    var var_0 = Struct_2(_wgslsmith_f_op_f32(step(func_3().a, -1313f)));
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(global3.c.zyx));
    var var_2 = Struct_3(Struct_1(vec2<i32>(-2147483647i, -(arg_1.e.e.x | global3.e.e.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.d.a), var_0.a)))), ~select(arg_2.a.x, arg_3.x, true), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1049f)), _wgslsmith_f_op_f32(f32(-1f) * -1929f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * -1000f)))), -firstTrailingBit(reverseBits(global3.e.e))));
    var_2 = Struct_3(arg_1.e);
    return max(firstTrailingBit(~u_input.b), ~(~vec4<u32>(45797u, u_input.a.x, 0u, 4294967295u))) & vec4<u32>(~4294967295u, arg_3.x, arg_3.x, ~_wgslsmith_sub_u32(~u_input.a.x, 1u));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: vec4<i32>) -> Struct_5 {
    var var_0 = arg_2.x;
    var var_1 = Struct_5(u_input.b, ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(u_input.b.x, global4.x)), firstLeadingBit(_wgslsmith_sub_u32(63500u, u_input.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-604f + _wgslsmith_f_op_f32(-arg_1.x)) - -159f), _wgslsmith_f_op_f32(max(-1198f, global3.d.a))), func_2(-(arg_2.ywy | vec3<i32>(-14856i, global3.e.a.x, 3104i)), global3.d, Struct_3(global3.e), vec3<i32>(reverseBits(1i), arg_2.x, 1i)), global3.a.x);
    var_0 = ~abs(-abs(~arg_0.x));
    let var_2 = Struct_4(vec2<f32>(global3.e.d, _wgslsmith_f_op_f32(-var_1.e)), ~u_input.b.yw, vec4<f32>(_wgslsmith_f_op_f32(select(202f, -1000f, true)), -720f, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_div_f32(-336f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))), Struct_2(global3.a.x), global3.e);
    var_1 = Struct_5(func_4(var_2, Struct_4(vec2<f32>(_wgslsmith_f_op_f32(var_2.a.x + 2445f), 687f), var_1.a.zy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global3.c, vec4<f32>(var_1.d.a, 1000f, 306f, 1088f)))), global3.d, Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_2.x, -2147483647i), arg_0), _wgslsmith_f_op_f32(-271f * 661f), ~125335u, _wgslsmith_f_op_f32(abs(var_2.a.x)), _wgslsmith_add_vec4_i32(global3.e.e, vec4<i32>(global3.e.a.x, var_2.e.a.x, -1i, var_2.e.e.x)))), Struct_5(vec4<u32>(0u, 1u, 0u, select(23747u, 4294967295u, true)), min(global3.b.x, min(23724u, 4294967295u)), var_2.d.a, func_3(), -728f), select(var_1.a.xz, vec2<u32>(17434u, 4170u), true)), 65530u, global3.e.d, func_3(), -521f);
    return Struct_5(u_input.b, ~0u, _wgslsmith_f_op_f32(-234f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global3.a.x * -1599f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_1.c))))))), func_3(), 1f);
}

fn func_5(arg_0: Struct_5, arg_1: vec3<i32>, arg_2: vec2<i32>) -> Struct_5 {
    global4 = arg_0.a;
    global3 = Struct_4(global3.a, ~_wgslsmith_mult_vec2_u32(~(vec2<u32>(arg_0.b, global4.x) ^ arg_0.a.zx), _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(arg_0.a.xz, u_input.b.zz), global3.b, arg_0.a.zw)), _wgslsmith_f_op_vec4_f32(select(global1[_wgslsmith_index_u32(0u, 7u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, func_3().a, 575f, 599f)), vec4<bool>(false, false, true, true))), arg_0.d, global3.e);
    var var_0 = _wgslsmith_f_op_f32(-arg_0.e);
    global1 = array<vec4<f32>, 7>();
    global2 = array<vec3<bool>, 24>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 13>();
    var var_0 = func_5(func_1(min(global3.e.a, ~vec2<i32>(2147483647i, global3.e.e.x)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-408f, global3.a.x)))))), global3.e.e), vec3<i32>(global3.e.a.x & (i32(-1i) * -global3.e.a.x), firstLeadingBit(~(-global3.e.a.x)), -(global3.e.a.x | (global3.e.e.x << (14486u % 32u)))), ~(~vec2<i32>(global3.e.a.x, 2147483647i)) | global3.e.a);
    global1 = array<vec4<f32>, 7>();
    global0 = array<Struct_2, 13>();
    let var_1 = -1i == ~(~global3.e.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.a, select(global3.e.e.xz ^ abs(vec2<i32>(7880i, global3.e.a.x)), vec2<i32>(1i, -1i << (var_0.b % 32u)) << (vec2<u32>(_wgslsmith_clamp_u32(4294967295u, global3.b.x, 50168u), 4294967295u) % vec2<u32>(32u)), !vec2<bool>(all(vec4<bool>(var_1, true, false, false)), !var_1)), -151f, _wgslsmith_dot_vec3_i32(-global3.e.e.wyy, -(~(~vec3<i32>(global3.e.e.x, global3.e.e.x, global3.e.a.x)))), ~vec2<u32>(4294967295u << (~u_input.a.x % 32u), func_4(Struct_4(global3.a, global3.b, global3.c, Struct_2(2227f), Struct_1(vec2<i32>(global3.e.e.x, global3.e.a.x), global3.e.b, var_0.b, -166f, global3.e.e)), Struct_4(vec2<f32>(global3.a.x, var_0.c), vec2<u32>(global3.b.x, 0u), global3.c, global0[_wgslsmith_index_u32(4294967295u, 13u)], Struct_1(vec2<i32>(-466i, 2147483647i), var_0.e, var_0.a.x, var_0.e, global3.e.e)), func_5(Struct_5(vec4<u32>(1u, 1u, global4.x, 1u), u_input.a.x, -599f, global0[_wgslsmith_index_u32(u_input.b.x, 13u)], 170f), global3.e.e.wzw, vec2<i32>(2147483647i, -40386i)), vec2<u32>(global4.x, u_input.a.x) ^ vec2<u32>(u_input.b.x, 6457u)).x));
}

