struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: i32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7> = array<f32, 7>(2568f, -1296f, -1665f, -1000f, 1000f, -154f, -690f);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<u32>) -> vec2<bool> {
    global0 = array<f32, 7>();
    global0 = array<f32, 7>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1195f), vec2<bool>(all(vec2<bool>(true, true)), true), firstLeadingBit(countOneBits(u_input.b)) | arg_0.x, ~vec2<u32>(arg_1.x, ~u_input.d));
    var var_1 = Struct_1(-667f, select(!vec2<bool>(all(vec4<bool>(true, var_0.b.x, false, var_0.b.x)), true), !var_0.b, false), max(1i, ~var_0.c), _wgslsmith_mult_vec2_u32(abs(_wgslsmith_add_vec2_u32(arg_1, vec2<u32>(4812u, var_0.d.x) << (vec2<u32>(1u, 23053u) % vec2<u32>(32u)))), arg_1));
    var var_2 = Struct_1(global0[_wgslsmith_index_u32(0u, 7u)], select(var_0.b, select(vec2<bool>(true, true), select(!vec2<bool>(var_1.b.x, true), var_1.b, all(vec3<bool>(var_1.b.x, var_0.b.x, true))), !any(vec3<bool>(var_1.b.x, var_0.b.x, var_0.b.x))), var_0.b), -(~u_input.c) & -_wgslsmith_mult_i32(arg_0.x, var_1.c), vec2<u32>(_wgslsmith_mod_u32(u_input.d, abs(var_1.d.x)), arg_1.x) | ~arg_1);
    return vec2<bool>(any(!select(select(vec3<bool>(false, var_1.b.x, true), vec3<bool>(var_2.b.x, true, false), var_2.b.x), vec3<bool>(var_2.b.x, var_0.b.x, var_1.b.x), select(vec3<bool>(false, true, true), vec3<bool>(var_0.b.x, var_2.b.x, var_2.b.x), var_0.b.x))), var_0.b.x);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec3<i32>) -> f32 {
    let var_0 = _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(firstTrailingBit(-vec3<i32>(9435i, arg_2.x, -2147483647i) >> (vec3<u32>(11574u, u_input.d, 4294967295u) % vec3<u32>(32u))), arg_2), abs(~vec3<i32>(firstTrailingBit(arg_1.c), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.c, 38181i, u_input.b), arg_2), _wgslsmith_sub_i32(-18886i, u_input.c))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 157927u), 7u)], _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_0, arg_0), 7u)]))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, global0[_wgslsmith_index_u32(4294967295u, 7u)], arg_1.a)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0[_wgslsmith_index_u32(70882u, 7u)], global0[_wgslsmith_index_u32(u_input.d, 7u)], 3841f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-692f, arg_1.a, -482f)))))));
    let var_2 = global0[_wgslsmith_index_u32(32198u, 7u)];
    global0 = array<f32, 7>();
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: vec2<i32>) -> f32 {
    global0 = array<f32, 7>();
    let var_0 = arg_0;
    let var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 31627u), _wgslsmith_mult_vec2_u32(~var_0.d, vec2<u32>(4294967295u, 4294967295u)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-193f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1), -1668f))))), !select(select(var_0.b, !arg_0.b, true), vec2<bool>(arg_0.b.x, -332f >= arg_0.a), true), -1i, vec2<u32>(~1u, arg_0.d.x));
    global0 = array<f32, 7>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_0.d.x, var_1.x, arg_0.d.x), vec4<u32>(u_input.d, var_1.x, arg_2, 4294967295u)), 82227u), Struct_1(_wgslsmith_f_op_f32(-var_0.a), select(func_3(vec4<i32>(arg_0.c, -1i, -2853i, 1i), vec2<u32>(9545u, 1u)), arg_0.b, select(false, var_2.b.x, false)), -(38188i & var_2.c), max(vec2<u32>(4294967295u, arg_0.d.x), vec2<u32>(13379u, 0u))), select(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(-41824i, 1i, -69922i), vec3<i32>(0i, -17360i, var_2.c), vec3<i32>(arg_3.x, var_0.c, -2147483647i)), _wgslsmith_div_vec3_i32(vec3<i32>(arg_3.x, 19383i, -2147483647i), vec3<i32>(arg_3.x, var_0.c, var_2.c)), var_2.b.x), vec3<i32>(-9374i, var_2.c, -38354i) | (vec3<i32>(9676i, 0i, u_input.c) ^ vec3<i32>(arg_0.c, arg_3.x, -23761i)), vec3<bool>(var_0.b.x, true & var_2.b.x, all(vec3<bool>(false, true, true)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.a * global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d, 111212u), 7u)]), global0[_wgslsmith_index_u32(reverseBits(20852u), 7u)])) * _wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(max(-345f, _wgslsmith_f_op_f32(var_0.a - arg_1))))));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    return arg_0;
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: vec3<f32>) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(select(355f, arg_0.a, !(!arg_0.b.x))), arg_0.b, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.c, ~arg_0.c, ~0i, 1i), firstTrailingBit(firstLeadingBit(vec4<i32>(arg_0.c, u_input.a, arg_0.c, 1i)))), max(~(vec4<i32>(2147483647i, -8864i, u_input.c, 1i) ^ vec4<i32>(u_input.b, -650i, 54281i, arg_0.c)), ~_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -2147483647i, arg_0.c, arg_0.c), vec4<i32>(0i, 83449i, arg_0.c, u_input.a)))), vec2<u32>(4294967295u, u_input.d));
    let var_1 = -1000f;
    global0 = array<f32, 7>();
    let var_2 = firstLeadingBit(-_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, 16710i, var_0.c), -vec3<i32>(-2147483647i, 21385i, arg_0.c)), ~(-vec3<i32>(-25658i, 9442i, var_0.c))));
    global0 = array<f32, 7>();
    return select(arg_0.b, arg_0.b, select(func_3(select(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.c, -2147483647i, 0i, 0i), vec4<i32>(4363i, -1i, var_0.c, var_0.c)), firstLeadingBit(vec4<i32>(12633i, 29975i, u_input.c, 1i)), vec4<bool>(true, false, arg_0.b.x, var_0.b.x)), abs(_wgslsmith_sub_vec2_u32(arg_0.d, var_0.d))), var_0.b, arg_0.b));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: u32) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -730f), func_6(func_5(Struct_1(_wgslsmith_f_op_f32(func_2(Struct_1(arg_0, vec2<bool>(false, false), u_input.c, vec2<u32>(8523u, 4294967295u)), -219f, arg_2, vec2<i32>(u_input.b, u_input.c))), vec2<bool>(false, false), u_input.a | u_input.a, vec2<u32>(arg_2, u_input.d))), true, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(arg_2, 7u)], 145f, 2062f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.d, 7u)], -431f, arg_0) - vec3<f32>(arg_0, arg_0, global0[_wgslsmith_index_u32(arg_2, 7u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-583f, arg_0, -2302f) * vec3<f32>(arg_1, global0[_wgslsmith_index_u32(u_input.d, 7u)], -482f)) + vec3<f32>(-1599f, arg_0, global0[_wgslsmith_index_u32(0u, 7u)])), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true)))), 1i & -u_input.b, vec2<u32>(arg_2, ~arg_2));
    var var_1 = reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(var_0.c, 0i), abs(54950i)), _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, u_input.c) ^ vec2<i32>(-2147483647i, u_input.c), vec2<i32>(0i, -25292i) & vec2<i32>(1i, var_0.c)))) >> (~abs(vec2<u32>(var_0.d.x, arg_2) | (var_0.d >> (var_0.d % vec2<u32>(32u)))) % vec2<u32>(32u));
    let var_2 = -345f;
    global0 = array<f32, 7>();
    return var_1.x;
}

fn func_7(arg_0: i32, arg_1: vec3<f32>, arg_2: vec4<u32>, arg_3: Struct_1) -> StorageBuffer {
    global0 = array<f32, 7>();
    let var_0 = arg_3.b.x;
    let var_1 = 272f;
    global0 = array<f32, 7>();
    var var_2 = any(select(vec3<bool>(select(all(vec3<bool>(false, var_0, arg_3.b.x)), all(vec4<bool>(arg_3.b.x, var_0, arg_3.b.x, arg_3.b.x)), false), arg_3.b.x && (false & var_0), false), vec3<bool>(all(arg_3.b), !(arg_3.d.x >= 4294967295u), any(!vec4<bool>(arg_3.b.x, arg_3.b.x, arg_3.b.x, var_0))), !select(!vec3<bool>(arg_3.b.x, var_0, true), !vec3<bool>(false, false, var_0), any(vec3<bool>(false, var_0, false)))));
    return StorageBuffer(~_wgslsmith_dot_vec3_u32(arg_2.yxz, countOneBits(abs(arg_2.wxx))), 13294u, ~_wgslsmith_mult_i32(arg_3.c, _wgslsmith_clamp_i32(firstTrailingBit(35612i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -42912i, arg_0, arg_0), vec4<i32>(37543i, u_input.a, -2147483647i, -24573i)), arg_3.c | -23786i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 7>();
    let x = u_input.a;
    s_output = func_7(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-717f * global0[_wgslsmith_index_u32(u_input.d, 7u)]))) + _wgslsmith_f_op_f32(f32(-1f) * -1441f)), _wgslsmith_f_op_f32(f32(-1f) * -1152f), u_input.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-584f, global0[_wgslsmith_index_u32(u_input.d, 7u)], 513f) * vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(u_input.d, 7u)], global0[_wgslsmith_index_u32(51663u, 7u)])) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1058f, global0[_wgslsmith_index_u32(u_input.d, 7u)], 297f))))), vec4<u32>((_wgslsmith_dot_vec2_u32(vec2<u32>(29831u, u_input.d), vec2<u32>(14371u, u_input.d)) | u_input.d) & u_input.d, u_input.d, ~(countOneBits(u_input.d) ^ 0u), _wgslsmith_div_u32(u_input.d, 1u)), Struct_1(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d, _wgslsmith_add_u32(0u, u_input.d)), 7u)]), vec2<bool>(func_5(Struct_1(1037f, vec2<bool>(true, true), u_input.a, vec2<u32>(u_input.d, 4294967295u))).c > u_input.b, true), -1i, countOneBits(~vec2<u32>(23733u, u_input.d) >> (abs(vec2<u32>(u_input.d, u_input.d)) % vec2<u32>(32u)))));
}

