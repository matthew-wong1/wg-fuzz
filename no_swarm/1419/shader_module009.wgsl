struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, -9691i, 49737i, 0i);

var<private> global1: array<i32, 28> = array<i32, 28>(i32(-2147483648), 47973i, -123i, 1i, -15050i, -17650i, -11490i, -1i, 73858i, 37004i, -21527i, 1i, 2147483647i, 13649i, -1i, -30394i, 1i, 25517i, 924i, -1i, i32(-2147483648), i32(-2147483648), -18841i, i32(-2147483648), -1i, -1i, i32(-2147483648), 68095i);

var<private> global2: array<Struct_2, 24>;

var<private> global3: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(-2619f, vec4<u32>(1u, 21070u, 15461u, 4294967295u)), Struct_1(-710f, vec4<u32>(11198u, 23807u, 75856u, 4294967295u)), Struct_1(1313f, vec4<u32>(0u, 35844u, 1u, 11198u)), Struct_1(-1301f, vec4<u32>(4294967295u, 21676u, 1u, 4294967295u)), Struct_1(-882f, vec4<u32>(0u, 4294967295u, 8841u, 25071u)));

var<private> global4: array<Struct_2, 17>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec3<f32>) -> f32 {
    let var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(_wgslsmith_mult_i32(-2147483647i, global0.x), u_input.a), u_input.d.yw), vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.d.x, 1782i, global1[_wgslsmith_index_u32(0u, 28u)], 1i), u_input.d), firstTrailingBit(-1i)) | (vec2<i32>(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(u_input.c, 28u)], u_input.d.x), _wgslsmith_div_i32(-22058i, global0.x)) >> (arg_1.a.b.yw % vec2<u32>(32u))));
    global2 = array<Struct_2, 24>();
    global0 = ~(~abs(vec4<i32>(global1[_wgslsmith_index_u32(arg_1.a.b.x, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)] ^ global1[_wgslsmith_index_u32(u_input.c, 28u)], global1[_wgslsmith_index_u32(70534u, 28u)], var_0)));
    global1 = array<i32, 28>();
    global0 = _wgslsmith_mult_vec4_i32(u_input.d, u_input.d);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, 198f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(arg_2.x, arg_1.a.a)))))));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_2) -> u32 {
    var var_0 = arg_2;
    let var_1 = var_0.a.b.wz;
    global2 = array<Struct_2, 24>();
    var var_2 = -vec4<i32>(_wgslsmith_div_i32(~global0.x, _wgslsmith_sub_i32(2147483647i >> (arg_2.a.b.x % 32u), global0.x)), _wgslsmith_mult_i32(33479i, -global0.x >> ((var_1.x ^ arg_2.a.b.x) % 32u)), _wgslsmith_mult_i32(4891i, -(22087i | global0.x)), max(-46711i, (u_input.b & -7667i) | firstLeadingBit(-24558i)));
    global3 = array<Struct_1, 5>();
    return ~1u;
}

fn func_2(arg_0: Struct_2) -> u32 {
    global4 = array<Struct_2, 17>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.a + 3015f)), ~vec4<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(14145u, arg_0.a.b.x), u_input.e.x | u_input.e.x), func_4(arg_0.a.a, _wgslsmith_f_op_f32(func_3(-362f, Struct_2(arg_0.a, vec4<bool>(arg_0.c.x, arg_0.c.x, true, true), arg_0.b), vec3<f32>(1140f, 927f, arg_0.a.a))), Struct_2(Struct_1(-1000f, vec4<u32>(97239u, u_input.e.x, 1u, arg_0.a.b.x)), arg_0.c, arg_0.c)), ~min(1u, u_input.c), ~_wgslsmith_div_u32(5450u, 1u)));
    global3 = array<Struct_1, 5>();
    var var_1 = ~u_input.c;
    var var_2 = ~vec2<u32>(countOneBits(arg_0.a.b.x), 4294967295u);
    return 28254u;
}

fn func_1(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = ~(~(~(u_input.e.x >> (_wgslsmith_clamp_u32(u_input.e.x, arg_0.b.x, 9222u) % 32u))));
    global4 = array<Struct_2, 17>();
    var var_1 = global4[_wgslsmith_index_u32(var_0, 17u)];
    let var_2 = global1[_wgslsmith_index_u32(func_2(global2[_wgslsmith_index_u32(0u, 24u)]), 28u)];
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1.a.b.x, var_0), 24u)];
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_3.a.a, var_3.a.a, 369f)))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = vec3<bool>(true, all(vec3<bool>(!(arg_1.b.x > u_input.c), all(vec3<bool>(true, false, true)), true)), !all(vec3<bool>(true, true, false)));
    let var_1 = ~vec2<u32>(_wgslsmith_clamp_u32(0u, ~(13074u << (u_input.e.x % 32u)), ~4294967295u), _wgslsmith_clamp_u32(~(~arg_1.b.x), u_input.c, u_input.e.x));
    let var_2 = select((vec4<i32>(1i, u_input.d.x, global0.x, ~2147483647i) >> (_wgslsmith_add_vec4_u32(~arg_1.b, arg_1.b >> (vec4<u32>(0u, 29144u, arg_1.b.x, 11891u) % vec4<u32>(32u))) % vec4<u32>(32u))) << (abs(_wgslsmith_sub_vec4_u32(arg_1.b, vec4<u32>(0u, 1u, u_input.e.x, 26702u) | vec4<u32>(u_input.e.x, 71590u, var_1.x, var_1.x))) % vec4<u32>(32u)), vec4<i32>(-12820i, i32(-1i) * -1i, 0i ^ _wgslsmith_dot_vec4_i32(u_input.d, u_input.d), global1[_wgslsmith_index_u32(arg_1.b.x, 28u)] >> (4294967295u % 32u)), true);
    var var_3 = !(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.a)) - arg_1.a))) >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)))));
    let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(-481f)), ~(~vec4<u32>(12179u, 1u, 44076u, 4294967295u)) ^ vec4<u32>(_wgslsmith_dot_vec3_u32(arg_1.b.wwx, arg_1.b.xxz), ~var_1.x, ~var_1.x, 63542u)), select(!select(vec4<bool>(false, false, true, var_0.x), !vec4<bool>(true, false, var_0.x, false), var_0.x || var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x), !(var_0.x != var_0.x)), !vec4<bool>(!(var_0.x || var_0.x), all(!vec2<bool>(var_0.x, false)), -753f != _wgslsmith_f_op_f32(ceil(195f)), any(!var_0.xy)));
    return Struct_2(global3[_wgslsmith_index_u32(var_4.a.b.x, 5u)], vec4<bool>(true, true, ~(global0.x | -2147483647i) < _wgslsmith_sub_i32(~(-1i), global1[_wgslsmith_index_u32(4294967295u, 28u)] & 11583i), !(1521f >= _wgslsmith_f_op_vec3_f32(func_1(Struct_1(1000f, vec4<u32>(4294967295u, 4964u, u_input.c, arg_1.b.x)))).x)), var_4.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(Struct_1(-650f, ~vec4<u32>(111641u, 0u, u_input.e.x, u_input.c))))), global3[_wgslsmith_index_u32(27707u | (1u & ~_wgslsmith_mult_u32(1u, u_input.e.x)), 5u)]);
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-902f, _wgslsmith_f_op_f32(sign(var_0.a.a)), _wgslsmith_f_op_f32(-var_0.a.a), _wgslsmith_f_op_f32(f32(-1f) * -305f)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.a, 162f, -574f, var_0.a.a), vec4<f32>(-984f, var_0.a.a, -393f, var_0.a.a)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-617f, var_0.a.a, -568f, var_0.a.a)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(182f, var_0.a.a, var_0.a.a, var_0.a.a) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.a, var_0.a.a, var_0.a.a, var_0.a.a) * vec4<f32>(var_0.a.a, 2019f, var_0.a.a, -445f))), true))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1715f, _wgslsmith_f_op_f32(select(var_0.a.a, 751f, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1089f)), var_0.a.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a.a), var_0.a.a, true)), 360f, true || (16332i <= global0.x))))));
    var var_2 = vec4<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(f32(-1f) * -452f)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-647f)), _wgslsmith_f_op_f32(f32(-1f) * -903f)));
    let var_3 = func_5(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(660f)))), 510f, 347f), Struct_1(var_1.x, ~max(countOneBits(var_0.a.b), abs(var_0.a.b)))).a;
    let var_4 = func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.zzw - var_2.wzx), _wgslsmith_f_op_vec3_f32(var_2.xyw * var_2.yyx)))), Struct_1(var_1.x, var_3.b)).a;
    var var_5 = var_0.a;
    var var_6 = var_0.b.zzz;
    var var_7 = -abs(select(abs(firstLeadingBit(vec4<i32>(u_input.d.x, 39842i, 0i, global0.x))), abs(select(vec4<i32>(global1[_wgslsmith_index_u32(var_0.a.b.x, 28u)], u_input.d.x, u_input.d.x, 70999i), u_input.d, var_6.x)), var_0.b));
    var var_8 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a)) + 290f), var_1, _wgslsmith_f_op_f32(min(-1037f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, -600f) + -267f) + var_4.a))), i32(-1i) * -firstLeadingBit(global0.x), _wgslsmith_mod_vec4_u32(~vec4<u32>(21350u, 4294967295u, var_5.b.x, 4294967295u), var_8.b) >> (~abs(_wgslsmith_div_vec4_u32(var_0.a.b, var_8.b)) % vec4<u32>(32u)));
}

