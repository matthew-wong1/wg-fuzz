struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15>;

var<private> global1: array<Struct_5, 8> = array<Struct_5, 8>(Struct_5(Struct_2(Struct_1(vec3<u32>(44494u, 4294967295u, 1u), vec2<i32>(i32(-2147483648), 2147483647i), vec3<i32>(i32(-2147483648), -1i, -42787i))), -295f), Struct_5(Struct_2(Struct_1(vec3<u32>(49953u, 4294967295u, 0u), vec2<i32>(453i, 2147483647i), vec3<i32>(i32(-2147483648), -1i, -1i))), 719f), Struct_5(Struct_2(Struct_1(vec3<u32>(0u, 1051u, 4294967295u), vec2<i32>(-1i, -6717i), vec3<i32>(0i, -1i, 0i))), 296f), Struct_5(Struct_2(Struct_1(vec3<u32>(0u, 11506u, 0u), vec2<i32>(-31455i, -27331i), vec3<i32>(1i, 9845i, -36383i))), -180f), Struct_5(Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 54548u), vec2<i32>(2147483647i, 45501i), vec3<i32>(0i, 0i, 29405i))), -351f), Struct_5(Struct_2(Struct_1(vec3<u32>(39087u, 45587u, 74447u), vec2<i32>(-41426i, -1i), vec3<i32>(2147483647i, i32(-2147483648), 18156i))), 694f), Struct_5(Struct_2(Struct_1(vec3<u32>(3806u, 68539u, 18283u), vec2<i32>(14414i, 7064i), vec3<i32>(-33561i, 2147483647i, 63459i))), -427f), Struct_5(Struct_2(Struct_1(vec3<u32>(39701u, 0u, 28921u), vec2<i32>(0i, -35301i), vec3<i32>(19502i, -24040i, -1i))), 1713f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32) -> vec4<f32> {
    let var_0 = ~vec3<u32>(firstTrailingBit(arg_0), 0u, countOneBits(_wgslsmith_add_u32(28797u, ~arg_0)));
    var var_1 = _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(65848u, var_0.x), 15u)]));
    var var_2 = 31792i;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-344f)));
    var_2 = u_input.a;
    return vec4<f32>(var_3, _wgslsmith_f_op_f32(sign(275f)), 539f, _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(arg_0, 15u)], global0[_wgslsmith_index_u32(arg_0, 15u)])));
}

fn func_2(arg_0: f32, arg_1: Struct_4, arg_2: Struct_2, arg_3: f32) -> vec4<f32> {
    let var_0 = Struct_2(arg_2.a);
    return _wgslsmith_f_op_vec4_f32(func_3(arg_2.a.a.x));
}

fn func_1(arg_0: u32, arg_1: u32) -> vec4<i32> {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(29949u, 15u)]) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1, 15u)])))), Struct_4(vec2<u32>(1u, ~arg_0), 1i), Struct_2(Struct_1(vec3<u32>(55803u, arg_1, arg_0) ^ vec3<u32>(29945u, arg_1, arg_1), vec2<i32>(2147483647i, -17189i), ~vec3<i32>(-17433i, u_input.a, 0i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(13519u, 15u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0, 4294967295u), 15u)])))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(arg_1, 15u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1867f - global0[_wgslsmith_index_u32(arg_1, 15u)])), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(6814u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, arg_1, arg_0, arg_1), vec4<u32>(0u, arg_0, 0u, 0u)), _wgslsmith_mod_u32(arg_1, 1u)), 15u)], 378f)));
    return vec4<i32>(~_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(min(u_input.b, vec2<i32>(-14940i, 35951i)), u_input.b), firstLeadingBit(~39112i)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -1i, u_input.c.x, select(0i, u_input.d, true)) & reverseBits(-vec4<i32>(u_input.d, 0i, u_input.a, 1i)), _wgslsmith_add_vec4_i32(-vec4<i32>(0i, u_input.c.x, u_input.c.x, u_input.c.x), firstTrailingBit(vec4<i32>(18760i, u_input.c.x, u_input.a, u_input.b.x)))), _wgslsmith_div_i32(u_input.d, u_input.d), -12019i);
}

fn func_4(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_3(10645i, Struct_2(Struct_1(vec3<u32>(~20697u, ~1u, ~22939u), -(u_input.c << (vec2<u32>(1u, 60429u) % vec2<u32>(32u))), _wgslsmith_clamp_vec3_i32(-vec3<i32>(0i, -3929i, arg_0.x), -vec3<i32>(u_input.c.x, arg_0.x, -1i), vec3<i32>(40569i, u_input.a, arg_0.x) ^ vec3<i32>(-27587i, arg_0.x, u_input.d)))), !(!vec4<bool>(false, true, true, all(vec2<bool>(false, false)))), Struct_2(Struct_1(select(~vec3<u32>(0u, 4294967295u, 1u), select(vec3<u32>(0u, 67814u, 25009u), vec3<u32>(82980u, 7006u, 34316u), false), true), abs(arg_0), _wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(15831i, 0i, 62042i)), firstLeadingBit(vec3<i32>(arg_0.x, -29150i, arg_0.x))))));
    let var_1 = firstTrailingBit(vec4<i32>(1i, 2147483647i, arg_0.x, max(arg_0.x, _wgslsmith_dot_vec4_i32(min(vec4<i32>(-23404i, var_0.b.a.c.x, u_input.d, u_input.c.x), vec4<i32>(1i, 42856i, 24804i, 1i)), max(vec4<i32>(arg_0.x, -10120i, 9271i, var_0.b.a.c.x), vec4<i32>(arg_0.x, 0i, arg_0.x, var_0.b.a.c.x))))));
    var var_2 = firstTrailingBit(_wgslsmith_mult_i32(-2147483647i, reverseBits(_wgslsmith_sub_i32(var_0.b.a.c.x, var_0.a)))) >> (_wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.d.a.a.x, 4294967295u), ~var_0.b.a.a)), ~abs(var_0.b.a.a.x | 81126u)) % 32u);
    var_2 = (var_1.x << (~var_0.d.a.a.x % 32u)) & _wgslsmith_div_i32(~abs(var_1.x), var_1.x);
    let var_3 = var_0.d.a;
    return Struct_1(var_3.a, -(~arg_0), vec3<i32>(40601i, var_0.d.a.c.x, select(0i, var_1.x & select(var_3.c.x, u_input.b.x, false), all(!vec2<bool>(true, var_0.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_4(vec2<i32>(0i, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, u_input.a, u_input.b.x, u_input.c.x), func_1(15550u, 64959u)))));
    global1 = array<Struct_5, 8>();
    let var_1 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.a.a.x, 15u)] + -149f);
    global1 = array<Struct_5, 8>();
    global0 = array<f32, 15>();
    var var_2 = Struct_1(~reverseBits(vec3<u32>(var_0.a.a.x, 154852u, var_0.a.a.x) & _wgslsmith_add_vec3_u32(var_0.a.a, var_0.a.a)), u_input.b, abs(vec3<i32>(var_0.a.c.x, u_input.d, -_wgslsmith_mod_i32(u_input.b.x, 8169i))));
    var var_3 = vec4<i32>(var_2.b.x, -select(~_wgslsmith_div_i32(6409i, 2147483647i), -2147483647i, all(vec4<bool>(true, true, true, true))), var_2.b.x, _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.b.x, -var_2.c.x), firstLeadingBit(var_2.c.x)));
    var var_4 = (vec3<i32>(var_2.b.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(11475i, 11207i, var_2.c.x, 29451i), vec4<i32>(var_3.x, -40022i, var_3.x, 0i)), 1i) << (~abs(vec3<u32>(var_2.a.x, 4294967295u, var_2.a.x)) % vec3<u32>(32u))) & var_0.a.c;
    var var_5 = Struct_5(Struct_2(func_4(var_2.b)), -1425f);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1f, _wgslsmith_f_op_f32(-var_5.b), _wgslsmith_div_f32(var_5.b, var_1)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(var_5.b, var_1)), var_5.b)), countOneBits(-reverseBits(var_0.a.c.zx)), select(var_2.a.zy, vec2<u32>(var_0.a.a.x, reverseBits(~var_2.a.x)), vec2<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.c.x, -42683i, -13379i, -1i), vec4<i32>(var_4.x, 7467i, -46063i, u_input.d)) < 0i, -439f != _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(var_2.a.x, 15u)])))));
}

