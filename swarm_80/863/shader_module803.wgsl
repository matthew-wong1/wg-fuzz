struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

var<private> global1: array<Struct_2, 31>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2) -> vec3<i32> {
    global1 = array<Struct_2, 31>();
    global1 = array<Struct_2, 31>();
    var var_0 = global1[_wgslsmith_index_u32((_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.c, 4294967295u, 4294967295u) ^ ~vec3<u32>(arg_0.a.c, 4294967295u, u_input.a), abs(~vec3<u32>(4294967295u, 64028u, 20332u))) ^ _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0.a.c, u_input.a, 1u, 15771u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, arg_0.a.d), vec4<u32>(arg_0.a.c, 1219u, 26416u, u_input.a))), select(~vec4<u32>(0u, u_input.a, arg_0.a.d, arg_0.a.d), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, arg_0.a.c, 1187u, u_input.a), vec4<u32>(4294967295u, 19720u, 1u, arg_0.a.d)), all(vec2<bool>(true, false))))) & ~(~u_input.a), 31u)];
    let var_1 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(firstLeadingBit(arg_0.a.b.x) << ((72467u >> (1u % 32u)) % 32u), 2147483647i, arg_0.a.b.x), _wgslsmith_clamp_vec3_i32(select(var_0.a.b, vec3<i32>(57268i, 2147483647i, u_input.b.x), vec3<bool>(false, false, true)), u_input.b, _wgslsmith_mult_vec3_i32(vec3<i32>(53565i, -33849i, 2147483647i), _wgslsmith_div_vec3_i32(arg_0.a.b, var_0.a.b)))), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(1i ^ var_0.a.a, 2206i & arg_0.a.b.x), 91776i), reverseBits(var_0.a.a), ~arg_0.a.b.x ^ ~arg_0.a.a), 43763u, u_input.a);
    var var_2 = Struct_2(Struct_1(var_1.a, max(var_1.b, select(_wgslsmith_clamp_vec3_i32(var_0.a.b, u_input.b, vec3<i32>(2147483647i, arg_0.a.a, 30765i)), max(vec3<i32>(-1i, var_0.a.a, -3430i), var_0.a.b), vec3<bool>(true, true, true))), u_input.a, select(0u, _wgslsmith_add_u32(min(arg_0.a.c, var_1.c), var_0.a.c), firstLeadingBit(arg_0.a.a) > (var_1.a << (22809u % 32u)))));
    return ~countOneBits(~(-var_1.b));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> vec4<f32> {
    global1 = array<Struct_2, 31>();
    global1 = array<Struct_2, 31>();
    var var_0 = vec3<u32>(0u & arg_1.a.d, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(max(countOneBits(vec4<u32>(1u, u_input.a, 64256u, 14755u)), vec4<u32>(u_input.a, arg_3.a.c, 1u, 5245u) >> (vec4<u32>(4294967295u, arg_1.a.c, 23991u, arg_3.a.c) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(select(vec4<u32>(arg_3.a.d, arg_3.a.d, 0u, arg_1.a.c), vec4<u32>(arg_1.a.c, u_input.a, u_input.a, u_input.a), false), vec4<u32>(u_input.a, 1u, arg_3.a.d, 1u) | vec4<u32>(arg_3.a.c, 128603u, u_input.a, 4294967295u))), reverseBits(abs(vec4<u32>(14249u, u_input.a, 32897u, 4294967295u))) ^ select(~vec4<u32>(arg_1.a.c, u_input.a, arg_1.a.c, 15566u), ~vec4<u32>(u_input.a, 4294967295u, 209u, 52815u), vec4<bool>(true, false, false, true))), _wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_div_vec3_u32(~vec3<u32>(1529u, 40826u, u_input.a), vec3<u32>(4294967295u, 0u, u_input.a) & vec3<u32>(4294967295u, 34770u, arg_3.a.d))), firstLeadingBit(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, arg_3.a.d, arg_3.a.c), vec3<u32>(1u, u_input.a, arg_1.a.d)))));
    var var_1 = Struct_2(arg_1.a);
    let var_2 = arg_1.a;
    return _wgslsmith_f_op_vec4_f32(-arg_0);
}

fn func_2(arg_0: vec4<f32>) -> vec2<u32> {
    global0 = arg_0.x;
    global1 = array<Struct_2, 31>();
    let var_0 = vec3<bool>(all(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), false), true)), false, false);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0)) + _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-372f, _wgslsmith_div_f32(arg_0.x, 484f), _wgslsmith_div_f32(arg_0.x, 994f), _wgslsmith_f_op_f32(1450f - arg_0.x)))), Struct_2(Struct_1(~u_input.b.x, -vec3<i32>(u_input.b.x, u_input.b.x, 31432i), u_input.a, u_input.a)), u_input.b.x << (abs(u_input.a) % 32u), Struct_2(Struct_1(u_input.b.x, func_3(global1[_wgslsmith_index_u32(53684u, 31u)]), abs(u_input.a), 1u)))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(arg_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(-527f, arg_0.x, -1189f, var_1.x) - arg_0))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 662f, var_1.x, _wgslsmith_f_op_f32(-var_1.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0 - arg_0) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, arg_0.x, arg_0.x, 1000f)))))));
    return _wgslsmith_mult_vec2_u32(~(~(~(~vec2<u32>(3479u, 29833u)))), ~(vec2<u32>(~58054u, select(68945u, 4294967295u, var_0.x)) ^ _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 68131u), vec2<u32>(0u, 1u)), ~vec2<u32>(1u, 1543u))));
}

fn func_1(arg_0: f32) -> i32 {
    let var_0 = (_wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, u_input.a) >> (~vec2<u32>(8239u, 19090u) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.a), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 50674u), vec2<u32>(u_input.a, 4294967295u))), select(max(vec2<u32>(u_input.a, 4989u), vec2<u32>(0u, u_input.a)), _wgslsmith_sub_vec2_u32(vec2<u32>(16334u, u_input.a), vec2<u32>(47866u, u_input.a)), vec2<bool>(true, true))) & countOneBits(firstLeadingBit(vec2<u32>(1u, u_input.a)))) << (~func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-846f, arg_0, arg_0, 2948f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(637f, 1928f, arg_0, arg_0)))) % vec2<u32>(32u));
    var var_1 = abs(vec4<i32>(u_input.b.x << (~u_input.a % 32u), -(~0i), 16238i, u_input.b.x << (1u % 32u)));
    var_1 = _wgslsmith_sub_vec4_i32(-select(~vec4<i32>(u_input.b.x, u_input.b.x, 1i, -24456i), ~vec4<i32>(var_1.x, 10762i, 2147483647i, u_input.b.x), true), vec4<i32>(_wgslsmith_mult_i32(i32(-1i) * -44638i, -16701i), 28869i, ~(var_1.x ^ u_input.b.x), i32(-1i) * -var_1.x) >> (countOneBits(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, var_0.x, 6616u, var_0.x), vec4<u32>(0u, 1u, 934u, 1u))) % vec4<u32>(32u)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(2389f, 439f), _wgslsmith_f_op_f32(1397f + 236f))))));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.x, var_0.x), 31u)];
    return -1i;
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: f32) -> Struct_2 {
    global0 = arg_2;
    var var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a, 4294967295u) & vec2<u32>(u_input.a, 90079u)) << ((max(vec2<u32>(u_input.a, u_input.a), vec2<u32>(89413u, 27305u)) >> (vec2<u32>(12383u, 1u) % vec2<u32>(32u))) % vec2<u32>(32u)), ~vec2<u32>(u_input.a, u_input.a) | (vec2<u32>(u_input.a, 1u) | ~vec2<u32>(u_input.a, 51659u))), 31u)];
    global0 = 1246f;
    global1 = array<Struct_2, 31>();
    var_0 = Struct_2(Struct_1(var_0.a.b.x, vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(-45399i, var_0.a.b.x, arg_1, u_input.b.x), vec4<i32>(u_input.b.x, 72259i, -2147483647i, 25293i)), -1i, arg_1), ~(~4337u), firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_sub_u32(83279u, u_input.a), ~u_input.a))));
    return Struct_2(var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -228f;
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-864f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-689f)) * -315f))));
    let var_1 = ~vec4<i32>(reverseBits(u_input.b.x), -_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), u_input.b.x << (u_input.a % 32u)), 2147483647i & _wgslsmith_clamp_i32(u_input.b.x, -u_input.b.x, -16879i), ~(select(u_input.b.x, -16517i, true) >> (~0u % 32u)));
    let var_2 = -vec4<i32>(abs(~u_input.b.x) >> (firstTrailingBit(u_input.a) % 32u), u_input.b.x, 54928i, max(firstLeadingBit(abs(u_input.b.x)), var_1.x));
    let var_3 = abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, ~u_input.a), min(vec3<u32>(17555u, u_input.a, u_input.a), ~vec3<u32>(u_input.a, u_input.a, 4294967295u)))) | ~u_input.a;
    var var_4 = func_5(true, func_1(_wgslsmith_f_op_f32(f32(-1f) * -558f)), _wgslsmith_f_op_f32(select(620f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -499f) + _wgslsmith_f_op_f32(-1f)), select(true, true, true) | !(u_input.a >= var_3))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1288f))))), 798f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-882f, _wgslsmith_div_f32(-1110f, 138f)) + 146f)));
}

