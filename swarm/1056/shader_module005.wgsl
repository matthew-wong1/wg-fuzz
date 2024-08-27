struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 32>;

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(-1423f, vec2<f32>(-746f, -380f)), Struct_1(1247f, vec2<f32>(-689f, 1474f)), Struct_1(1000f, vec2<f32>(447f, -566f)), Struct_1(-421f, vec2<f32>(454f, 694f)));

var<private> global2: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: u32) -> u32 {
    let var_0 = -1i;
    return _wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(0u, _wgslsmith_add_u32(arg_0, ~109302u)), u_input.c), 47385u);
}

fn func_3(arg_0: Struct_3) -> vec4<u32> {
    global1 = array<Struct_1, 4>();
    global0 = array<vec3<bool>, 32>();
    global0 = array<vec3<bool>, 32>();
    let var_0 = Struct_1(arg_0.a.c, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1000f, arg_0.a.c), vec2<f32>(arg_0.a.c, arg_0.a.c)))), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.c), -166f), ~arg_0.a.b.x != _wgslsmith_sub_u32(arg_0.a.b.x, 4294967295u))));
    let var_1 = min(u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, 2147483647i, u_input.e, 2147483647i), vec4<i32>(1i, u_input.e, -1i, u_input.a.x)), i32(-1i) * -2147483647i), _wgslsmith_add_vec2_i32(vec2<i32>(-13437i, -2147483647i), vec2<i32>(u_input.e, u_input.a.x)))) >> (_wgslsmith_dot_vec3_u32(~(max(vec3<u32>(49272u, arg_0.a.b.x, arg_0.a.b.x), vec3<u32>(arg_0.a.b.x, 116228u, 1u)) | vec3<u32>(arg_0.a.b.x, 0u, 100983u)), vec3<u32>(6541u, 4294967295u, arg_0.a.b.x)) % 32u);
    return ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a.b.x, 1u & arg_0.a.b.x, 27570u, 1u), vec4<u32>(arg_0.a.b.x, _wgslsmith_div_u32(u_input.d.x, u_input.d.x), ~70763u, reverseBits(0u))) >> (vec4<u32>(arg_0.a.b.x, firstLeadingBit(_wgslsmith_div_u32(u_input.d.x >> (arg_0.a.b.x % 32u), _wgslsmith_mod_u32(112362u, 82349u))), arg_0.a.b.x, min(~0u >> (~arg_0.a.b.x % 32u), ~arg_0.a.b.x)) % vec4<u32>(32u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> vec4<i32> {
    let var_0 = ~vec2<u32>(_wgslsmith_add_u32(~arg_1.b.x, 4294967295u), func_1(firstTrailingBit(66432u)) | _wgslsmith_mod_u32(~arg_1.b.x, arg_1.b.x));
    global0 = array<vec3<bool>, 32>();
    global2 = array<vec4<bool>, 32>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.x, -408f));
    var var_2 = vec3<u32>(abs(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b.x, 0u, u_input.c, 14655u), arg_1.b))), func_3(Struct_3(Struct_2(!arg_1.a, vec4<u32>(u_input.c, 0u, 1u, 1u), _wgslsmith_f_op_f32(f32(-1f) * -609f)))).x, ~countOneBits(1u));
    return countOneBits(-vec4<i32>(~max(u_input.e, -28054i), u_input.b, min(0i, -44916i) << (u_input.d.x % 32u), -(u_input.e << (u_input.c % 32u))));
}

fn func_2() -> Struct_3 {
    global1 = array<Struct_1, 4>();
    global2 = array<vec4<bool>, 32>();
    let var_0 = global1[_wgslsmith_index_u32(~u_input.d.x, 4u)];
    var var_1 = -vec4<i32>(reverseBits(~36439i), (1772i >> (u_input.d.x % 32u)) << (~45540u % 32u), ~(-4531i), _wgslsmith_mult_i32(-9895i, u_input.b)) & func_4(Struct_1(var_0.b.x, vec2<f32>(var_0.b.x, -113f)), Struct_2(vec2<bool>(true, true), ~vec4<u32>(u_input.c, 22175u, 11126u, u_input.d.x) >> (func_3(Struct_3(Struct_2(vec2<bool>(true, true), vec4<u32>(35858u, u_input.d.x, u_input.d.x, u_input.d.x), var_0.a))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(max(var_0.b.x, _wgslsmith_f_op_f32(-var_0.b.x)))));
    var_1 = select(_wgslsmith_mult_vec4_i32(-vec4<i32>(var_1.x, 1i, -37336i, var_1.x), firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.e, var_1.x, -2147483647i), vec4<i32>(var_1.x, -2147483647i, var_1.x, -2147483647i)))), vec4<i32>(0i, ~var_1.x, 2147483647i, -(~var_1.x)), all(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)))) >> (countOneBits(select(~(~vec4<u32>(1u, u_input.c, 41148u, 29802u)), (vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x) >> (vec4<u32>(0u, u_input.d.x, u_input.c, u_input.c) % vec4<u32>(32u))) & vec4<u32>(u_input.c, u_input.d.x, 28692u, u_input.c), !global2[_wgslsmith_index_u32(~u_input.c, 32u)])) % vec4<u32>(32u));
    return Struct_3(Struct_2(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, true)), vec2<bool>(false, true)), abs(~(vec4<u32>(u_input.d.x, u_input.c, u_input.d.x, 4294967295u) | vec4<u32>(8739u, u_input.c, u_input.d.x, 63459u))), 1275f));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = reverseBits(u_input.a.x);
    global0 = array<vec3<bool>, 32>();
    global0 = array<vec3<bool>, 32>();
    var var_2 = func_2().a;
    return Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -370f)) * 1939f), _wgslsmith_f_op_f32(abs(-1000f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    let var_1 = 51633u;
    var var_2 = func_5(global1[_wgslsmith_index_u32(max(93u, _wgslsmith_add_u32(func_1(var_1), ~firstLeadingBit(1u))), 4u)], func_2(), func_2());
    var var_3 = global1[_wgslsmith_index_u32(u_input.d.x << (~var_1 % 32u), 4u)];
    var var_4 = Struct_1(var_3.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1530f + -581f)), _wgslsmith_f_op_f32(abs(-128f)))));
    let var_5 = Struct_3(func_2().a);
    let var_6 = var_5.a.a;
    global0 = array<vec3<bool>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a.zy, u_input.a.yx), ~u_input.e, u_input.b) << (u_input.d % vec3<u32>(32u)), -firstTrailingBit(~(vec4<i32>(-2147483647i, 1i, 0i, u_input.e) & vec4<i32>(0i, 35593i, u_input.e, 50075i))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-303f, _wgslsmith_f_op_f32(abs(var_4.b.x)), _wgslsmith_f_op_f32(-var_5.a.c)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.b.x, 1034f, 1108f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.a, 1000f, -1567f)), func_2().a.a.x)))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(445f - 831f), _wgslsmith_f_op_f32(-513f - 986f))), _wgslsmith_f_op_f32(f32(-1f) * -961f), _wgslsmith_f_op_f32(-1385f * 1474f)))), select(~_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.b, 2147483647i), vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.e)), _wgslsmith_mod_i32(u_input.a.x, u_input.b)), ~2147483647i, var_5.a.a.x));
}

