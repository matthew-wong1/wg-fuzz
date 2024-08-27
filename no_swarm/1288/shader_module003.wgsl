struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: i32,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 14> = array<vec4<f32>, 14>(vec4<f32>(-896f, -451f, 742f, -2152f), vec4<f32>(-1171f, 1710f, -2055f, 1000f), vec4<f32>(359f, 997f, -671f, -128f), vec4<f32>(-791f, 502f, 779f, 1000f), vec4<f32>(327f, -1776f, -381f, 330f), vec4<f32>(1523f, -786f, 959f, -113f), vec4<f32>(498f, 916f, 282f, 278f), vec4<f32>(1000f, 1188f, 959f, 259f), vec4<f32>(1076f, -1643f, -444f, 246f), vec4<f32>(193f, -736f, -1000f, 718f), vec4<f32>(-2073f, 753f, 2037f, -343f), vec4<f32>(-1000f, -922f, 175f, 1000f), vec4<f32>(1643f, -202f, -248f, 253f), vec4<f32>(-148f, 293f, 1000f, 492f));

var<private> global1: u32;

var<private> global2: array<vec3<i32>, 5>;

var<private> global3: Struct_3;

var<private> global4: vec4<u32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_1) -> bool {
    var var_0 = arg_0.ywx;
    global3 = Struct_3(Struct_2(Struct_1(select(_wgslsmith_div_i32(0i, arg_2.a), select(28479i, 0i, global3.b.a.d), arg_2.d), false, ~(~arg_1.c.c), true, 1u), true, 4294967295u), Struct_2(Struct_1(-firstTrailingBit(1i), true, arg_1.c.c, !any(vec4<bool>(arg_1.c.b, true, true, true)), arg_2.e << ((0u | global4.x) % 32u)), any(!vec2<bool>(true, global3.c.a.d)), 24909u), global3.a);
    let var_1 = arg_2.a;
    global0 = array<vec4<f32>, 14>();
    global3 = Struct_3(global3.a, Struct_2(global3.c.a, select(true, all(select(vec4<bool>(arg_1.c.a.b, true, true, false), vec4<bool>(false, global3.b.b, arg_1.b.a.b, arg_1.c.b), global3.c.a.d)), select(any(vec2<bool>(true, arg_1.c.a.d)), global3.b.a.b, -15831i >= arg_2.a)), ~1u << (global3.a.a.c % 32u)), Struct_2(Struct_1(_wgslsmith_mod_i32(~arg_2.a, 2147483647i), true, 4294967295u, _wgslsmith_f_op_f32(var_0.x + 1353f) < arg_0.x, u_input.c.x), !arg_2.d, _wgslsmith_dot_vec3_u32(abs(global4.wwy >> (vec3<u32>(4329u, 0u, arg_1.c.a.c) % vec3<u32>(32u))), ~global4.ywz | firstLeadingBit(global4.xyx))));
    return (arg_1.c.a.d | (~(i32(-1i) * -2147483647i) != arg_1.b.a.a)) || (-25135i != -_wgslsmith_dot_vec4_i32(-vec4<i32>(-51898i, arg_1.a.a.a, var_1, var_1), ~vec4<i32>(arg_2.a, 32004i, var_1, arg_1.c.a.a)));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: i32) -> Struct_3 {
    var var_0 = global3.a.b;
    let var_1 = !(!vec3<bool>(!func_3(global0[_wgslsmith_index_u32(4294967295u, 14u)], Struct_3(Struct_2(global3.a.a, false, 1u), Struct_2(Struct_1(1i, global3.b.b, global3.a.c, false, 4294967295u), global3.b.b, u_input.c.x), global3.b), Struct_1(0i, global3.a.a.b, 27331u, global3.b.b, 4294967295u)), select(global3.b.b, !global3.b.a.d, global3.c.b), !all(vec2<bool>(true, global3.a.b))));
    var var_2 = select(-global2[_wgslsmith_index_u32(1u, 5u)], _wgslsmith_div_vec3_i32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(26470u, 25257u), 5u)], _wgslsmith_mod_vec3_i32(global2[_wgslsmith_index_u32(global4.x, 5u)], ~vec3<i32>(3255i, arg_2, -13544i)) & vec3<i32>(-1i, ~arg_2, 0i)), vec3<bool>(var_1.x || true, !select(true, true, any(vec3<bool>(true, false, global3.a.b))), global3.b.a.b && (all(vec2<bool>(var_1.x, global3.a.a.b)) || true)));
    var var_3 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -1530f)))), Struct_3(Struct_2(global3.b.a, var_1.x, global3.a.c), Struct_2(Struct_1(7234i, global3.c.b, 0u, !global3.b.b, global4.x), var_1.x, firstLeadingBit(1u)), Struct_2(Struct_1(-1i, true, select(45800u, 38944u, var_1.x), var_1.x, _wgslsmith_add_u32(arg_0, u_input.b)), true | (u_input.b >= global3.b.a.c), ~_wgslsmith_add_u32(u_input.a.x, arg_0))), select(arg_1, 16658i, any(var_1.zy)), Struct_3(Struct_2(global3.a.a, false, ~_wgslsmith_mult_u32(u_input.b, global4.x)), Struct_2(Struct_1(max(13742i, -50176i), var_1.x, 1u, global3.c.b & true, arg_0), all(select(var_1.zz, vec2<bool>(var_1.x, false), true)), global4.x), Struct_2(Struct_1(_wgslsmith_div_i32(arg_2, arg_1), true, 1u, !var_1.x, global4.x), var_1.x, u_input.c.x)), global3.b);
    var var_4 = Struct_4(var_3.a, Struct_3(Struct_2(Struct_1(0i, var_3.d.b.a.b, countOneBits(0u), var_3.d.a.b, firstLeadingBit(4294967295u)), true, ~29543u), Struct_2(global3.b.a, all(select(vec3<bool>(false, false, true), vec3<bool>(false, var_1.x, global3.a.b), var_1.x)), max(firstLeadingBit(58220u), 35734u)), Struct_2(var_3.e.a, var_3.b.b.a.d, 75963u)), -10711i, Struct_3(global3.a, global3.b, Struct_2(Struct_1(var_3.c, all(var_1), 4294967295u, func_3(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], Struct_3(global3.c, Struct_2(var_3.b.c.a, true, arg_0), global3.b), global3.a.a), 0u), 1i >= var_2.x, reverseBits(_wgslsmith_add_u32(20243u, 1u)))), global3.b);
    return Struct_3(var_3.d.b, global3.b, Struct_2(var_3.e.a, all(select(var_1.zz, !var_1.xy, vec2<bool>(true, true))), ~(~global3.b.c)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: u32) -> Struct_2 {
    return func_2(42620u, _wgslsmith_dot_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(32046i, -1i), vec2<i32>(-25253i, 13606i)) & -(vec2<i32>(arg_1.d.c.a.a, arg_1.b.c.a.a) << (vec2<u32>(global4.x, 42820u) % vec2<u32>(32u))), -reverseBits(firstTrailingBit(vec2<i32>(arg_1.e.a.a, 2147483647i)))), abs(firstLeadingBit(2147483647i))).c;
}

fn func_1(arg_0: i32) -> i32 {
    let var_0 = func_4(func_2(u_input.c.x ^ 4294967295u, abs(-8321i), arg_0), Struct_4(_wgslsmith_f_op_f32(abs(-992f)), func_2(global4.x, arg_0, 1i), i32(-1i) * -62329i, func_2(global4.x, abs(-1071i), 1i), Struct_2(func_2(min(u_input.a.x, global3.a.a.e), 19874i, arg_0).c.a, !global3.a.b, global4.x)), 73368u);
    let var_1 = func_2(0u, abs(~_wgslsmith_sub_i32(arg_0 << (1u % 32u), arg_0)), 1i).c.a;
    global2 = array<vec3<i32>, 5>();
    return (i32(-1i) * -min(2147483647i >> (0u % 32u), 24037i)) | (_wgslsmith_mult_i32(-var_0.a.a | 8711i, arg_0) & firstTrailingBit(-16507i));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: vec2<f32>, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = max(11695i, 2147483647i) & -_wgslsmith_sub_i32(arg_3.a, firstLeadingBit(_wgslsmith_dot_vec3_i32(arg_1.zxz, vec3<i32>(global3.b.a.a, -30855i, arg_1.x))));
    global4 = ~vec4<u32>(54181u, global3.c.a.c, 0u, arg_0.x);
    global4 = _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(47336u, arg_0.x, global3.c.a.c, u_input.b)), _wgslsmith_div_vec4_u32(vec4<u32>(21276u, global3.a.c, arg_3.c, 49922u), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_3.e, 39180u, 30200u, 18748u), vec4<u32>(u_input.a.x, global4.x, global3.a.c, global4.x), vec4<u32>(12413u, global4.x, global4.x, global3.b.a.e)))) | vec4<u32>(1u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(global4.yzz, vec3<u32>(4294967295u, arg_3.e, 0u)), global4.wyy), 0u, select(~4294967295u, ~4294967295u, arg_3.b)), countOneBits(firstLeadingBit(abs(firstLeadingBit(vec4<u32>(4294967295u, 4294967295u, 1u, arg_3.c))))));
    var var_1 = func_2(_wgslsmith_mod_u32(u_input.a.x >> (_wgslsmith_dot_vec3_u32(global4.wwz, ~vec3<u32>(4294967295u, arg_0.x, 1u)) % 32u), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(27637u, u_input.b), vec2<u32>(4294967295u, arg_0.x)), abs(u_input.b))), -global3.b.a.a, 2147483647i ^ ((arg_1.x | arg_1.x) >> (func_2(u_input.b, _wgslsmith_mod_i32(arg_1.x, var_0), -arg_1.x).b.c % 32u)));
    global0 = array<vec4<f32>, 14>();
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, 1000f) * _wgslsmith_f_op_f32(floor(308f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x * -174f) - _wgslsmith_f_op_f32(f32(-1f) * -678f)), arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + _wgslsmith_f_op_f32(abs(1902f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_5(~(vec2<u32>(1u, ~0u) >> (vec2<u32>(_wgslsmith_mult_u32(22555u, u_input.a.x), 1u) % vec2<u32>(32u))), _wgslsmith_mult_vec4_i32(~vec4<i32>(~global3.b.a.a, 2147483647i, -17840i, -global3.a.a.a), vec4<i32>(_wgslsmith_mult_i32(global3.a.a.a, func_1(-2147483647i)), global3.b.a.a, global3.a.a.a, abs(global3.b.a.a))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(590f, 791f) + vec2<f32>(-1552f, -419f)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1062f, -440f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-509f, -209f), vec2<f32>(897f, -1000f))))), vec2<bool>(true, true))))), global3.a.a));
    let var_1 = 2147483647i;
    let var_2 = -(firstTrailingBit(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global4.zw, max(vec2<u32>(u_input.c.x, 4294967295u), global4.ww)), 5u)]) ^ global2[_wgslsmith_index_u32(global3.a.a.c, 5u)]);
    var var_3 = _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-153f, _wgslsmith_f_op_f32(floor(var_0.x))))));
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1114f, -1006f, var_0.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, var_0.x, var_0.x, 622f))))) - _wgslsmith_f_op_vec4_f32(-var_0))));
    global4 = min(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(2601u, global4.x, global4.x), vec3<u32>(15333u, global4.x, global4.x)) >> (global4.x % 32u), max(~(~1u), 11626u), _wgslsmith_add_u32(_wgslsmith_add_u32(17778u, global3.c.a.e), _wgslsmith_mod_u32(global4.x, global3.b.a.c)) ^ 14685u, 0u), vec4<u32>(~global4.x, global3.a.a.e >> ((u_input.a.x ^ global3.c.a.e) % 32u), 0u | countOneBits(u_input.b), _wgslsmith_dot_vec3_u32(~vec3<u32>(10700u, global4.x, 11604u), abs(_wgslsmith_div_vec3_u32(global4.yzz, vec3<u32>(global4.x, global3.a.a.e, 9341u))))));
    var var_5 = _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, max(_wgslsmith_div_u32(14381u, min(u_input.c.x, 0u)), global3.a.a.e), countOneBits(4294967295u), _wgslsmith_mult_u32(~global3.b.a.c << (1u % 32u), ~1u)), (vec4<u32>(~global3.a.a.c, global4.x, 970u | global4.x, ~1u) | _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(u_input.b, global4.x, 8989u, 46221u)), vec4<u32>(1u, global4.x, global3.c.a.c, 31071u) & vec4<u32>(u_input.a.x, 35338u, 0u, global3.c.a.c))) & abs(~(~vec4<u32>(global4.x, global4.x, 4294967295u, global3.a.a.c))));
    var var_6 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

