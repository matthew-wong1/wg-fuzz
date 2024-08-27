struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: i32,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 16>;

var<private> global1: Struct_1;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> vec4<bool> {
    global0 = array<Struct_5, 16>();
    global1 = arg_1.d;
    global0 = array<Struct_5, 16>();
    let var_0 = global0[_wgslsmith_index_u32(arg_0, 16u)];
    global1 = arg_1.d;
    return vec4<bool>(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1075f - global1.c)) == 583f), true, false, false);
}

fn func_2(arg_0: f32) -> Struct_3 {
    global1 = Struct_1(max(u_input.b, 2147483647i), global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), -200f)) - global1.d), -1170f, !vec4<bool>(select(!global1.e.x, global1.e.x, global1.e.x && false), u_input.c != 1i, select(false, false, global1.e.x) != global1.e.x, !all(vec3<bool>(false, true, false))));
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2162f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 - arg_0)))), -1250f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(373f, arg_0)), 293f, _wgslsmith_f_op_f32(f32(-1f) * -117f), 1932f)));
    let var_1 = Struct_1(~u_input.b, global1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - global1.b)), _wgslsmith_f_op_f32(-2018f + var_0.x), !vec4<bool>(false, true, true, global1.e.x));
    let var_2 = var_1;
    var var_3 = Struct_1(var_2.a, 954f, 135f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-841f - _wgslsmith_div_f32(-553f, -124f))) * arg_0), select(vec4<bool>(false, global1.e.x, true, true), !select(var_2.e, func_3(1u, Struct_3(vec3<f32>(680f, var_0.x, global1.b), vec2<i32>(var_1.a, 44518i), global1.a, Struct_1(0i, -478f, 1000f, -212f, vec4<bool>(global1.e.x, false, global1.e.x, true)))), func_3(10412u, Struct_3(vec3<f32>(var_2.b, arg_0, var_0.x), u_input.a, global1.a, var_1))), vec4<bool>(true, false, !global1.e.x, true)));
    return Struct_3(var_0.zzx, vec2<i32>(firstLeadingBit(firstTrailingBit(var_3.a)) ^ 36946i, var_1.a), 1i, Struct_1(~var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -1568f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(591f)))), var_2.d, -717f, global1.e));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: vec4<u32>) -> Struct_1 {
    global0 = array<Struct_5, 16>();
    var var_0 = Struct_3(arg_1.a, vec2<i32>(~u_input.b, _wgslsmith_sub_i32(min(1i, _wgslsmith_div_i32(arg_1.b.x, 2147483647i)), -1i)), global1.a, arg_1.d);
    global1 = arg_1.d;
    let var_1 = 516f;
    global1 = Struct_1(global1.a, -407f, var_0.a.x, _wgslsmith_f_op_f32(-arg_2.x), select(arg_1.d.e, !var_0.d.e, vec4<bool>(false, true != global1.e.x, all(vec4<bool>(true, true, true, true)), func_2(-1526f).d.e.x)));
    return func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + _wgslsmith_f_op_f32(-1722f - arg_2.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(-var_1)))))))).d;
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: vec2<u32>) -> Struct_4 {
    let var_0 = _wgslsmith_mod_vec2_i32(u_input.a, u_input.a);
    global0 = array<Struct_5, 16>();
    let var_1 = -(~var_0.x);
    global1 = func_4(global0[_wgslsmith_index_u32(~24953u, 16u)], func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.c)))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d, global1.c, global1.b) * vec3<f32>(global1.b, 821f, 2321f)) * vec3<f32>(global1.b, -586f, -683f))))), vec4<u32>(~1u, ~4294967295u, arg_1.x, _wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_2.x, 96679u), arg_0)) | firstLeadingBit(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, 7140u, 1u), vec4<u32>(arg_1.x, 45491u, arg_2.x, arg_1.x)), ~vec4<u32>(61076u, arg_2.x, 0u, arg_2.x))));
    var var_2 = ~(~_wgslsmith_mod_vec4_i32(-abs(vec4<i32>(15978i, 0i, var_0.x, u_input.b)), abs(min(vec4<i32>(u_input.a.x, 43161i, 1i, -6990i), vec4<i32>(var_0.x, 59998i, global1.a, -18458i)))));
    return Struct_4(_wgslsmith_dot_vec2_i32(u_input.a, (var_0 & vec2<i32>(24684i, -27524i)) << (select(min(vec2<u32>(4294967295u, 1864u), arg_1.yy), vec2<u32>(arg_0, 4294967295u), select(global1.e.zy, vec2<bool>(global1.e.x, false), global1.e.x)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -903f), _wgslsmith_f_op_f32(f32(-1f) * -383f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global1.c)), _wgslsmith_f_op_f32(f32(-1f) * -440f)))), var_2.x);
}

fn func_5(arg_0: Struct_4) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.c, u_input.b, 0i), vec3<i32>(global1.a, u_input.a.x, 0i)), _wgslsmith_mod_i32(1i, 6222i), reverseBits(0i), -(u_input.a.x >> (47140u % 32u)))), countOneBits(vec4<i32>(-31409i, ~countOneBits(u_input.a.x), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, 37905i, -9283i, 10240i), vec4<i32>(-5951i, u_input.c, arg_0.c, u_input.b) >> (vec4<u32>(1u, 1u, 0u, 1u) % vec4<u32>(32u))), arg_0.c)));
    let var_1 = ~(~_wgslsmith_div_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)));
    var var_2 = i32(-1i) * -2463i;
    global0 = array<Struct_5, 16>();
    global1 = Struct_1(global1.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b - -2053f)), true)), -123f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -790f))), arg_0.b)), 1851f), func_3(_wgslsmith_clamp_u32(~6040u, ~var_1.x, min(var_1.x, var_1.x) >> (~var_1.x % 32u)), Struct_3(vec3<f32>(arg_0.b, arg_0.b, _wgslsmith_f_op_f32(global1.b + global1.d)), -vec2<i32>(-1i, arg_0.c), countOneBits(_wgslsmith_add_i32(var_0.x, -2147483647i)), Struct_1(arg_0.c, _wgslsmith_f_op_f32(-arg_0.b), global1.d, 2983f, !vec4<bool>(false, false, global1.e.x, false)))));
    return Struct_1(_wgslsmith_dot_vec4_i32(select(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, arg_0.c, var_0.x, 1i), vec4<i32>(-2147483647i, arg_0.a, global1.a, 0i)), firstLeadingBit(vec4<i32>(-2787i, -43617i, arg_0.a, u_input.a.x))), vec4<i32>(u_input.c, u_input.a.x, var_0.x, u_input.b) & -vec4<i32>(global1.a, arg_0.a, global1.a, 9048i), !(false && global1.e.x)), reverseBits(reverseBits(~vec4<i32>(36190i, 55263i, -30362i, arg_0.a)))), global1.d, _wgslsmith_div_f32(-517f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b))), 2350f, !global1.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~51171u;
    global1 = func_5(func_1(var_0, ~_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0, 1u, 1u), vec3<u32>(var_0, var_0, var_0)), vec3<u32>(28401u, 59064u, var_0)), firstTrailingBit(vec2<u32>(4294967295u, var_0))));
    global1 = Struct_1(-_wgslsmith_sub_i32(-44681i, ~(-647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-920f, -446f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.c))), _wgslsmith_f_op_f32(-global1.b), func_4(Struct_5(~vec3<u32>(var_0, 0u, 4294967295u)), func_2(global1.d), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-117f, global1.d, global1.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-248f, global1.c, 1268f)))), !global1.e.wxy)), ~(~vec4<u32>(0u, 1u, 4294967295u, 72185u))).e);
    var var_1 = ~u_input.a.x;
    global0 = array<Struct_5, 16>();
    let var_2 = _wgslsmith_mult_i32(func_1(_wgslsmith_add_u32(53424u << (var_0 % 32u), ~41421u), ~_wgslsmith_div_vec3_u32(vec3<u32>(4511u, 1u, var_0), vec3<u32>(80612u, 118728u, var_0)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(var_0, 0u), vec2<u32>(4294967295u, var_0))).a << (var_0 % 32u), 2147483647i);
    let var_3 = global1.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~4294967295u)), max(-(vec4<i32>(u_input.a.x, -1i, 27651i, -19027i) << (abs(vec4<u32>(var_0, var_0, var_0, var_0)) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(~vec4<i32>(62i, -3774i, 7266i, 1i), vec4<i32>(50130i, var_2, -17969i, u_input.c), vec4<i32>(-1i, 50960i, -29416i, u_input.c) ^ vec4<i32>(u_input.a.x, u_input.b, -18755i, global1.a)) | countOneBits(vec4<i32>(0i, var_2, global1.a, -46044i))), -668f, max(-(~(-vec4<i32>(u_input.b, 22420i, -12606i, 2147483647i))), vec4<i32>(-(var_2 | 0i), u_input.b >> (35833u % 32u), global1.a, ~13675i | (var_2 >> (70436u % 32u)))));
}

