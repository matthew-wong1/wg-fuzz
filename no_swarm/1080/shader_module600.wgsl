struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: Struct_3,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(2147483647i, -16458i));

var<private> global1: i32;

var<private> global2: array<Struct_2, 10>;

var<private> global3: array<bool, 9> = array<bool, 9>(true, true, true, false, false, true, false, true, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1000f)))), 1f) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(628f, 505f))) * vec2<f32>(1000f, -702f))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))))), false));
    let var_1 = -global0.a.x;
    let var_2 = _wgslsmith_div_i32(u_input.c, -89213i) | global0.a.x;
    return _wgslsmith_sub_i32(~var_2, var_2);
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = all(!vec2<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 9u)], any(vec2<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 9u)]))));
    global0 = Struct_1(global0.a);
    let var_1 = ~select(arg_0.x, 1u, true);
    global1 = ~(-func_3());
    var var_2 = any(select(select(vec2<bool>(true, true), select(!vec2<bool>(global3[_wgslsmith_index_u32(18870u, 9u)], false), vec2<bool>(global3[_wgslsmith_index_u32(0u, 9u)], false), select(vec2<bool>(global3[_wgslsmith_index_u32(var_1, 9u)], false), vec2<bool>(true, false), true)), global3[_wgslsmith_index_u32(~(~arg_0.x), 9u)]), select(!(!vec2<bool>(global3[_wgslsmith_index_u32(arg_0.x, 9u)], true)), !vec2<bool>(global3[_wgslsmith_index_u32(31661u, 9u)], global3[_wgslsmith_index_u32(arg_0.x, 9u)]), any(select(vec4<bool>(global3[_wgslsmith_index_u32(86230u, 9u)], false, true, global3[_wgslsmith_index_u32(arg_0.x, 9u)]), vec4<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 9u)], global3[_wgslsmith_index_u32(25997u, 9u)], global3[_wgslsmith_index_u32(u_input.b.x, 9u)], true), false))), true));
    return Struct_1(~(~(~(~global0.a))));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: Struct_4, arg_3: i32) -> Struct_3 {
    global0 = func_2(~vec3<u32>(22973u, 22543u, 26889u) << ((vec3<u32>(~20542u, 11105u >> (u_input.b.x % 32u), ~u_input.b.x) ^ vec3<u32>(reverseBits(4294967295u), 66589u, _wgslsmith_dot_vec3_u32(vec3<u32>(1453u, arg_2.d.x, 17796u), vec3<u32>(0u, arg_2.b, 93555u)))) % vec3<u32>(32u)));
    global3 = array<bool, 9>();
    global1 = ~_wgslsmith_clamp_i32(_wgslsmith_div_i32(-(i32(-1i) * -57042i), -global0.a.x), _wgslsmith_mod_i32(arg_2.c.c.a.x, 47509i), -31444i);
    global1 = -2147483647i;
    global2 = array<Struct_2, 10>();
    return Struct_3(arg_2.a.d, !vec2<bool>(any(select(vec4<bool>(global3[_wgslsmith_index_u32(arg_2.b, 9u)], false, true, arg_0), vec4<bool>(false, global3[_wgslsmith_index_u32(arg_2.d.x, 9u)], true, global3[_wgslsmith_index_u32(u_input.b.x, 9u)]), arg_2.c.b.x)), true), func_2(vec3<u32>(~u_input.b.x, 49209u, 1u)), Struct_2(974f, func_2(~(~vec3<u32>(57878u, 31079u, 4294967295u))), arg_1.c));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    var var_0 = vec3<i32>(i32(-1i) * -(arg_0.a.b.a.x >> (1u % 32u)), firstTrailingBit(i32(-1i) * -(~(-2147483647i))), _wgslsmith_mod_i32((global0.a.x | -20340i) << (reverseBits(1133u) % 32u), select(firstTrailingBit(arg_0.a.c.a.x), global0.a.x, arg_0.b.x)));
    var var_1 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1074f - -656f)) >= _wgslsmith_f_op_f32(min(1869f, arg_0.a.a)), Struct_2(arg_0.d.a, Struct_1(-arg_0.c.a >> (u_input.b % vec2<u32>(32u))), Struct_1(arg_0.c.a >> (~u_input.b % vec2<u32>(32u)))), Struct_4(arg_0, u_input.b.x, Struct_3(func_1(false, func_1(global3[_wgslsmith_index_u32(u_input.b.x, 9u)], Struct_2(2293f, arg_0.a.c, Struct_1(vec2<i32>(global0.a.x, var_0.x))), Struct_4(arg_0, 52931u, arg_0, vec2<u32>(4294967295u, u_input.b.x)), 0i).a, Struct_4(arg_0, 11525u, arg_0, u_input.b), max(u_input.c, 0i)).a, arg_0.b, Struct_1(var_0.yx), func_1(global3[_wgslsmith_index_u32(u_input.b.x & 0u, 9u)], func_1(true, global2[_wgslsmith_index_u32(u_input.b.x, 10u)], Struct_4(Struct_3(arg_0.a, vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.b.x, 9u)]), Struct_1(vec2<i32>(-1i, 0i)), global2[_wgslsmith_index_u32(u_input.b.x, 10u)]), 69932u, arg_0, u_input.b), 987i).a, Struct_4(arg_0, 1u, Struct_3(Struct_2(arg_0.a.a, arg_0.a.c, arg_0.c), vec2<bool>(false, false), Struct_1(vec2<i32>(global0.a.x, u_input.a)), Struct_2(arg_0.a.a, arg_0.c, arg_0.d.c)), vec2<u32>(u_input.b.x, u_input.b.x)), -2147483647i).d), vec2<u32>(1u, u_input.b.x)), abs(0i)).a;
    var var_2 = vec3<bool>(true, !any(vec3<bool>(global3[_wgslsmith_index_u32(~19996u, 9u)], all(vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 9u)], false, arg_0.b.x, true)), all(vec2<bool>(true, false)))), all(!vec3<bool>(false, !arg_0.b.x, false)));
    var var_3 = func_2(~vec3<u32>(u_input.b.x, ~52969u, 0u));
    let var_4 = _wgslsmith_sub_u32(~_wgslsmith_clamp_u32(40386u, ~4294967295u, u_input.b.x) & firstTrailingBit(~791u), _wgslsmith_dot_vec2_u32(u_input.b, select(_wgslsmith_mult_vec2_u32(vec2<u32>(48620u, 1u), u_input.b), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(19068u, u_input.b.x)), arg_0.b) >> (u_input.b % vec2<u32>(32u))));
    return arg_0.c;
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> vec2<i32> {
    global0 = Struct_1(vec2<i32>(-61205i, ~(-24220i) >> ((1u >> ((53737u ^ u_input.b.x) % 32u)) % 32u)));
    let var_0 = _wgslsmith_dot_vec4_i32(~min(~_wgslsmith_div_vec4_i32(vec4<i32>(-11439i, arg_0.a.x, 8945i, 2147483647i), vec4<i32>(arg_0.a.x, arg_0.a.x, u_input.a, 1i)), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, arg_0.a.x, arg_0.a.x, arg_0.a.x), vec4<i32>(arg_0.a.x, -1i, -1i, 52634i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-12104i, -36350i, global0.a.x, u_input.c), vec4<i32>(71916i, arg_0.a.x, -1i, u_input.a)))), vec4<i32>(_wgslsmith_add_i32(u_input.a, _wgslsmith_mod_i32(select(1i, arg_0.a.x, global3[_wgslsmith_index_u32(u_input.b.x, 9u)]), -25345i)), -2147483647i, _wgslsmith_mult_i32(_wgslsmith_div_i32(global0.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a, u_input.c, u_input.a), vec4<i32>(2147483647i, 1i, arg_0.a.x, -2147483647i))), _wgslsmith_div_i32(_wgslsmith_div_i32(arg_0.a.x, arg_0.a.x), arg_0.a.x)), min(u_input.c, 2147483647i)));
    var var_1 = countOneBits(~vec3<u32>(u_input.b.x, 47156u, u_input.b.x));
    return _wgslsmith_mult_vec2_i32(vec2<i32>(~var_0, _wgslsmith_add_i32(max(_wgslsmith_dot_vec3_i32(vec3<i32>(20610i, 0i, 2042i), vec3<i32>(global0.a.x, -1i, arg_0.a.x)), ~arg_0.a.x), arg_0.a.x)), select(arg_0.a, _wgslsmith_sub_vec2_i32(vec2<i32>(4270i, 37311i), global0.a), true) ^ (vec2<i32>(firstTrailingBit(u_input.c), ~global0.a.x) >> (~reverseBits(vec2<u32>(4294967295u, var_1.x)) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 9>();
    global0 = Struct_1(_wgslsmith_mod_vec2_i32(func_5(func_4(func_1(global3[_wgslsmith_index_u32(3477u, 9u)], Struct_2(-318f, Struct_1(global0.a), Struct_1(vec2<i32>(global0.a.x, 36167i))), Struct_4(Struct_3(Struct_2(109f, Struct_1(vec2<i32>(19390i, 2147483647i)), Struct_1(vec2<i32>(global0.a.x, u_input.a))), vec2<bool>(global3[_wgslsmith_index_u32(0u, 9u)], false), Struct_1(global0.a), global2[_wgslsmith_index_u32(u_input.b.x, 10u)]), u_input.b.x, Struct_3(global2[_wgslsmith_index_u32(u_input.b.x, 10u)], vec2<bool>(true, true), Struct_1(global0.a), Struct_2(341f, Struct_1(vec2<i32>(-2147483647i, global0.a.x)), Struct_1(vec2<i32>(1i, 2147483647i)))), u_input.b), global0.a.x)), select(global3[_wgslsmith_index_u32(u_input.b.x, 9u)], true, !global3[_wgslsmith_index_u32(u_input.b.x, 9u)])), ~vec2<i32>(abs(-29142i), 5605i)));
    var var_0 = func_1(true, global2[_wgslsmith_index_u32(max(u_input.b.x, 1u), 10u)], Struct_4(Struct_3(global2[_wgslsmith_index_u32(u_input.b.x, 10u)], vec2<bool>(true, true), Struct_1(-vec2<i32>(u_input.c, -1951i)), func_1(false, Struct_2(-1000f, Struct_1(vec2<i32>(-33880i, u_input.a)), Struct_1(vec2<i32>(49265i, 0i))), Struct_4(Struct_3(global2[_wgslsmith_index_u32(80333u, 10u)], vec2<bool>(global3[_wgslsmith_index_u32(41875u, 9u)], false), Struct_1(vec2<i32>(u_input.c, u_input.a)), Struct_2(-374f, Struct_1(global0.a), Struct_1(vec2<i32>(global0.a.x, u_input.c)))), 54466u, Struct_3(global2[_wgslsmith_index_u32(0u, 10u)], vec2<bool>(false, true), Struct_1(global0.a), Struct_2(681f, Struct_1(vec2<i32>(-2147483647i, 42789i)), Struct_1(vec2<i32>(global0.a.x, u_input.a)))), u_input.b), u_input.c).a), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(u_input.b.x, 4294967295u), ~62047u), vec2<u32>(4294967295u, u_input.b.x) << (select(u_input.b, vec2<u32>(4294967295u, 9432u), vec2<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 9u)], true)) % vec2<u32>(32u))), func_1(u_input.b.x <= _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 85905u, 70804u), vec3<u32>(1u, u_input.b.x, 0u)), global2[_wgslsmith_index_u32(u_input.b.x, 10u)], Struct_4(func_1(global3[_wgslsmith_index_u32(0u, 9u)], Struct_2(304f, Struct_1(vec2<i32>(global0.a.x, 0i)), Struct_1(global0.a)), Struct_4(Struct_3(global2[_wgslsmith_index_u32(u_input.b.x, 10u)], vec2<bool>(true, global3[_wgslsmith_index_u32(1u, 9u)]), Struct_1(global0.a), Struct_2(-3134f, Struct_1(vec2<i32>(u_input.a, u_input.a)), Struct_1(global0.a))), 43480u, Struct_3(Struct_2(740f, Struct_1(global0.a), Struct_1(vec2<i32>(global0.a.x, 2147483647i))), vec2<bool>(true, false), Struct_1(vec2<i32>(u_input.a, u_input.a)), Struct_2(-1197f, Struct_1(global0.a), Struct_1(global0.a))), vec2<u32>(228u, u_input.b.x)), 9474i), countOneBits(u_input.b.x), Struct_3(global2[_wgslsmith_index_u32(u_input.b.x, 10u)], vec2<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 9u)], global3[_wgslsmith_index_u32(u_input.b.x, 9u)]), Struct_1(global0.a), Struct_2(-305f, Struct_1(vec2<i32>(u_input.c, u_input.c)), Struct_1(vec2<i32>(2147483647i, -1425i)))), u_input.b), ~(-7081i)), ~_wgslsmith_div_vec2_u32(~vec2<u32>(22923u, u_input.b.x), firstLeadingBit(vec2<u32>(1u, u_input.b.x)))), global0.a.x).c;
    let var_1 = u_input.b.x;
    let var_2 = Struct_4(Struct_3(global2[_wgslsmith_index_u32(u_input.b.x, 10u)], func_1(~(-21038i) != -u_input.a, Struct_2(_wgslsmith_f_op_f32(-268f + 295f), func_2(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)), Struct_1(global0.a)), Struct_4(func_1(global3[_wgslsmith_index_u32(u_input.b.x, 9u)], Struct_2(-1763f, Struct_1(vec2<i32>(u_input.c, var_0.a.x)), Struct_1(vec2<i32>(-16868i, var_0.a.x))), Struct_4(Struct_3(Struct_2(595f, Struct_1(var_0.a), Struct_1(var_0.a)), vec2<bool>(global3[_wgslsmith_index_u32(var_1, 9u)], global3[_wgslsmith_index_u32(var_1, 9u)]), Struct_1(global0.a), global2[_wgslsmith_index_u32(62296u, 10u)]), 17062u, Struct_3(global2[_wgslsmith_index_u32(3098u, 10u)], vec2<bool>(global3[_wgslsmith_index_u32(1606u, 9u)], global3[_wgslsmith_index_u32(1u, 9u)]), Struct_1(vec2<i32>(var_0.a.x, -2147483647i)), global2[_wgslsmith_index_u32(u_input.b.x, 10u)]), u_input.b), u_input.c), min(var_1, 89279u), Struct_3(Struct_2(829f, Struct_1(vec2<i32>(-16644i, -2147483647i)), Struct_1(global0.a)), vec2<bool>(false, global3[_wgslsmith_index_u32(var_1, 9u)]), Struct_1(var_0.a), global2[_wgslsmith_index_u32(18529u, 10u)]), ~u_input.b), var_0.a.x).b, Struct_1(~(var_0.a >> (u_input.b % vec2<u32>(32u)))), global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.b.x, ~u_input.b.x), 10u)]), u_input.b.x, func_1(true, global2[_wgslsmith_index_u32(~7428u, 10u)], Struct_4(Struct_3(global2[_wgslsmith_index_u32(0u, 10u)], func_1(global3[_wgslsmith_index_u32(1u, 9u)], Struct_2(1622f, Struct_1(vec2<i32>(var_0.a.x, 30914i)), Struct_1(var_0.a)), Struct_4(Struct_3(global2[_wgslsmith_index_u32(var_1, 10u)], vec2<bool>(global3[_wgslsmith_index_u32(5705u, 9u)], global3[_wgslsmith_index_u32(u_input.b.x, 9u)]), Struct_1(global0.a), global2[_wgslsmith_index_u32(4294967295u, 10u)]), 1u, Struct_3(Struct_2(614f, Struct_1(vec2<i32>(-1i, -1i)), Struct_1(vec2<i32>(-8034i, -2147483647i))), vec2<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 9u)], true), Struct_1(vec2<i32>(global0.a.x, var_0.a.x)), global2[_wgslsmith_index_u32(4294967295u, 10u)]), vec2<u32>(2996u, var_1)), global0.a.x).b, Struct_1(vec2<i32>(global0.a.x, 2147483647i)), global2[_wgslsmith_index_u32(var_1, 10u)]), (var_1 | u_input.b.x) ^ 4294967295u, func_1(!global3[_wgslsmith_index_u32(var_1, 9u)], global2[_wgslsmith_index_u32(68071u, 10u)], Struct_4(Struct_3(Struct_2(-399f, Struct_1(vec2<i32>(var_0.a.x, -2147483647i)), Struct_1(vec2<i32>(global0.a.x, -1i))), vec2<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 9u)]), Struct_1(vec2<i32>(global0.a.x, var_0.a.x)), global2[_wgslsmith_index_u32(65208u, 10u)]), 4294967295u, Struct_3(global2[_wgslsmith_index_u32(var_1, 10u)], vec2<bool>(false, global3[_wgslsmith_index_u32(var_1, 9u)]), Struct_1(var_0.a), global2[_wgslsmith_index_u32(var_1, 10u)]), vec2<u32>(var_1, 68598u)), func_2(vec3<u32>(46549u, u_input.b.x, 22431u)).a.x), vec2<u32>(43187u, ~67417u)), _wgslsmith_dot_vec4_i32(select(-vec4<i32>(global0.a.x, var_0.a.x, -16834i, var_0.a.x), vec4<i32>(-15565i, global0.a.x, var_0.a.x, 17799i), true), -(vec4<i32>(var_0.a.x, 38918i, -57026i, -16926i) ^ vec4<i32>(var_0.a.x, -29027i, global0.a.x, u_input.c)))), ~countOneBits(~abs(u_input.b)));
    let var_3 = !any(vec4<bool>(func_1(true, var_2.a.a, var_2, var_0.a.x).b.x, func_1(true, Struct_2(-1241f, Struct_1(vec2<i32>(-15433i, global0.a.x)), var_2.a.c), var_2, 43400i).b.x, true, true)) & all(!vec2<bool>(false, all(var_2.a.b)));
    let var_4 = max(firstLeadingBit(u_input.b.x), ~var_2.b) ^ 1u;
    let var_5 = ~select(var_2.d, ~vec2<u32>(_wgslsmith_sub_u32(var_1, u_input.b.x), 4294967295u), var_2.c.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(~(-func_5(Struct_1(var_0.a), true).x), _wgslsmith_add_i32(-25955i >> (~var_4 % 32u), ~1i), -global0.a.x), vec2<i32>(func_2(select(vec3<u32>(56352u, 4803u, var_1), vec3<u32>(4294967295u, 8280u, var_1), false) & vec3<u32>(var_5.x, var_4, var_2.d.x)).a.x, global0.a.x), -2956i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.d.a, var_2.c.d.a)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.c.d.a, 197f))), var_3))))));
}

