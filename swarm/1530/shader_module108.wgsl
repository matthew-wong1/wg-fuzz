struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31>;

var<private> global1: array<Struct_2, 16>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> f32 {
    global0 = array<Struct_2, 31>();
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-221f, -674f)))))));
    let var_1 = countOneBits(_wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_mod_i32(5728i, ~_wgslsmith_sub_i32(-23436i, 2225i)), -13732i));
    global0 = array<Struct_2, 31>();
    global0 = array<Struct_2, 31>();
    return _wgslsmith_f_op_f32(max(-770f, 187f));
}

fn func_2() -> Struct_2 {
    let var_0 = false;
    return Struct_2(Struct_1(countOneBits(7333u), max(select(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 2147483647i) >> (vec4<u32>(0u, 63536u, 4294967295u, 81951u) % vec4<u32>(32u)), vec4<i32>(u_input.a.x, 7966i, -1i, -71728i), var_0), -_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, 1i, 0i), vec4<i32>(-2821i, -1i, 2147483647i, 0i))), select(vec2<u32>(~31796u, 63610u), vec2<u32>(~13277u, 0u), var_0), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -977f)), 332f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-916f, _wgslsmith_f_op_f32(select(160f, 687f, var_0))), vec2<f32>(906f, _wgslsmith_f_op_f32(-341f - -1000f)))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_2 {
    global1 = array<Struct_2, 16>();
    var var_0 = arg_0;
    var_0 = func_2();
    global1 = array<Struct_2, 16>();
    let var_1 = _wgslsmith_add_vec4_u32(~(~(vec4<u32>(1u, var_0.a.c.x, arg_2.c.x, var_0.a.c.x) << (vec4<u32>(4294967295u, var_0.a.c.x, 1u, arg_3.x) % vec4<u32>(32u)))), abs(vec4<u32>(abs(arg_2.c.x), ~var_0.a.a, 1u, ~1u))) | _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_0.a.a, 1u, 51300u), ~vec4<u32>(0u, arg_3.x, 114138u, var_0.a.c.x)), vec4<u32>(~1u, reverseBits(85927u), arg_2.c.x, _wgslsmith_div_u32(arg_3.x, 0u))), vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_3.x, 1064u, 0u), vec4<u32>(var_0.a.a, arg_3.x, 64879u, 1u)), arg_3.x, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(1u, arg_0.a.c.x), 4294967295u & arg_0.a.c.x, arg_3.x), ~33507u));
    return global1[_wgslsmith_index_u32(~0u, 16u)];
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: f32, arg_3: vec3<bool>) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(~arg_0.a.c.x, 31u)];
    var_0 = Struct_2(Struct_1(~arg_0.a.a, ~func_3(arg_0, vec2<i32>(27407i, arg_0.a.b.x), arg_0.a, vec2<u32>(4294967295u, arg_0.a.a)).a.b ^ vec4<i32>(countOneBits(u_input.a.x), 12549i, u_input.a.x, -69290i | u_input.a.x), var_0.a.c, _wgslsmith_f_op_f32(sign(var_0.b.x))), arg_0.b);
    let var_1 = global1[_wgslsmith_index_u32(1u, 16u)];
    global1 = array<Struct_2, 16>();
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f - arg_0.a.d), -705f, true)) - arg_0.a.d) * _wgslsmith_f_op_f32(abs(arg_0.a.d))), var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-958f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2503f, _wgslsmith_f_op_f32(arg_1 + -637f)) * _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(abs(var_1.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1546f - _wgslsmith_f_op_f32(var_1.b.x * arg_1)))));
    return arg_0.a.c.x;
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: vec2<i32>, arg_3: vec3<i32>) -> Struct_1 {
    global1 = array<Struct_2, 16>();
    global0 = array<Struct_2, 31>();
    global0 = array<Struct_2, 31>();
    let var_0 = !(!(~_wgslsmith_mult_u32(0u, 0u) > arg_0.a.a));
    var var_1 = _wgslsmith_add_vec4_i32(~arg_0.a.b, _wgslsmith_div_vec4_i32(firstLeadingBit(arg_0.a.b), _wgslsmith_mod_vec4_i32(-arg_0.a.b >> (vec4<u32>(24895u, arg_0.a.c.x, 18063u, 4294967295u) % vec4<u32>(32u)), vec4<i32>(-2147483647i, arg_0.a.b.x << (34846u % 32u), 27042i, _wgslsmith_add_i32(arg_0.a.b.x, arg_0.a.b.x)))));
    return Struct_1(reverseBits(arg_1), firstTrailingBit(vec4<i32>(-1i) * -arg_0.a.b), vec2<u32>(14454u, ~arg_0.a.a), -1339f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(select(vec2<bool>(_wgslsmith_f_op_f32(func_1()) >= _wgslsmith_f_op_f32(-955f + 464f), false), vec2<bool>(any(vec2<bool>(true, true)), all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true)))), vec2<bool>(select(true, true, true), true)));
    let var_1 = func_5(global0[_wgslsmith_index_u32(33515u, 31u)], func_4(func_3(func_2(), (vec2<i32>(u_input.a.x, u_input.a.x) >> (vec2<u32>(56922u, 60252u) % vec2<u32>(32u))) | _wgslsmith_add_vec2_i32(u_input.a, u_input.a), func_2().a, ~(~vec2<u32>(0u, 27279u))), _wgslsmith_f_op_f32(-1559f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-396f)))), -663f, vec3<bool>(!(true & var_0), !(!var_0), var_0)), func_2().a.b.yx, ~abs(~select(vec3<i32>(1i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, 0i), vec3<bool>(var_0, var_0, false))));
    let var_2 = global0[_wgslsmith_index_u32(~3128u, 31u)];
    let var_3 = select(!vec2<bool>(true, var_1.b.x <= -10811i), select(select(vec2<bool>(all(vec3<bool>(var_0, false, true)), var_0), select(vec2<bool>(true, true), select(vec2<bool>(var_0, var_0), vec2<bool>(false, false), var_0), false), !(!vec2<bool>(var_0, var_0))), select(!vec2<bool>(true, var_0), !select(vec2<bool>(true, var_0), vec2<bool>(false, false), true), !(!vec2<bool>(var_0, var_0))), any(select(!vec4<bool>(false, var_0, var_0, false), vec4<bool>(true, true, true, true), var_0))), select(select(!select(vec2<bool>(var_0, true), vec2<bool>(true, false), true), !select(vec2<bool>(false, var_0), vec2<bool>(false, true), var_0), true), vec2<bool>(true, !(8562i <= var_1.b.x)), all(select(vec4<bool>(var_0, var_0, false, var_0), select(vec4<bool>(true, var_0, var_0, var_0), vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(false, var_0, false, var_0)), !vec4<bool>(true, false, var_0, false)))));
    let var_4 = var_1.b.wxw;
    var var_5 = ~(i32(-1i) * -_wgslsmith_div_i32(u_input.a.x, -8218i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(min(~_wgslsmith_div_vec3_u32(vec3<u32>(var_2.a.c.x, var_1.a, 1u), vec3<u32>(63865u, var_1.a, var_2.a.c.x)), ~vec3<u32>(var_2.a.c.x, var_1.c.x, 29082u)), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(select(vec3<u32>(var_2.a.c.x, 31312u, var_2.a.c.x), vec3<u32>(var_2.a.a, 25174u, 1u), vec3<bool>(false, false, true)), abs(vec3<u32>(var_2.a.a, 43175u, var_1.a))), ~vec3<u32>(124486u, 1u, 71593u)), firstLeadingBit(select(vec3<u32>(var_1.c.x, 20841u, var_2.a.a), ~vec3<u32>(var_2.a.a, 41729u, var_2.a.a), !vec3<bool>(var_3.x, true, var_0)))), 1i, _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, var_2.a.c.x, 47157u) | vec3<u32>(var_2.a.a, 45680u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(var_2.a.c.x, var_2.a.a, 4294967295u), vec3<u32>(12646u, 55372u, 0u))), ~(~vec3<u32>(var_1.c.x, 0u, var_1.c.x))), _wgslsmith_clamp_vec3_u32(vec3<u32>(~55089u, var_2.a.c.x, _wgslsmith_mod_u32(var_1.c.x, 3368u)), vec3<u32>(_wgslsmith_clamp_u32(var_1.c.x, var_2.a.c.x, 1u), 4294967295u ^ var_1.a, 21377u), ~vec3<u32>(var_2.a.c.x, var_1.c.x, 4294967295u))), ~var_1.b.x);
}

