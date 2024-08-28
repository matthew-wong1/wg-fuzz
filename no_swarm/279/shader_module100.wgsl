struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_3, 8>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_3) -> vec3<bool> {
    global0 = -arg_1.c;
    global0 = abs(~(-(arg_2.c >> (68280u % 32u))) & 2147483647i);
    var var_0 = max(select(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, arg_1.a.b.x, arg_2.a.b.x), vec3<u32>(u_input.c, arg_1.a.b.x, arg_1.a.b.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 55015u, arg_2.a.b.x), vec3<u32>(20489u, arg_2.a.b.x, arg_1.a.b.x) >> (vec3<u32>(arg_2.a.b.x, 3802u, 56270u) % vec3<u32>(32u))), vec3<bool>(false, true, 27666u <= arg_1.a.b.x)) ^ vec3<u32>(arg_1.a.b.x, abs(~u_input.b), ~(~0u)), vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(1u, u_input.c | 6495u), ~u_input.c, ~abs(29153u)), _wgslsmith_mult_u32(~(4294967295u ^ arg_1.a.b.x), reverseBits(countOneBits(arg_1.a.b.x))), 0u));
    var_0 = max(vec3<u32>(107740u, reverseBits(4294967295u), arg_2.a.b.x), min(vec3<u32>(14326u, 98302u, u_input.c), max(~vec3<u32>(arg_2.a.b.x, 16920u, arg_1.a.b.x), countOneBits(vec3<u32>(var_0.x, 55317u, 1u))) >> (select(~vec3<u32>(arg_1.a.b.x, arg_1.a.b.x, u_input.b), vec3<u32>(arg_1.a.b.x, 4294967295u, u_input.c), select(vec3<bool>(arg_1.a.a.x, true, arg_2.a.a.x), vec3<bool>(arg_2.a.d, true, arg_1.a.d), vec3<bool>(arg_1.a.a.x, arg_2.a.d, arg_2.a.a.x))) % vec3<u32>(32u))));
    var var_1 = true;
    return !(!select(!(!vec3<bool>(arg_2.a.a.x, true, true)), vec3<bool>(false, arg_2.a.d, true), !(!vec3<bool>(arg_1.a.d, true, arg_2.a.d))));
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_2 {
    global1 = array<Struct_3, 8>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-679f * _wgslsmith_f_op_f32(-arg_0))))));
    let var_1 = 1u;
    global0 = firstTrailingBit(-2147483647i);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 422f, _wgslsmith_div_f32(arg_0, 721f)))) - vec3<f32>(-300f, arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_0)), -1193f)));
    return Struct_2(Struct_1(!select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(true, true)), ~vec2<u32>(firstTrailingBit(18911u), 3916u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.x * var_2.x)))), false), !func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(272f, 1077f, -943f) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(165f, -474f, arg_0)))), global1[_wgslsmith_index_u32(~u_input.c, 8u)], Struct_3(Struct_1(vec2<bool>(true, false), vec2<u32>(u_input.c, var_1), arg_0, false), 101f, u_input.a.x & -1i, var_2.x)), 59142i, _wgslsmith_div_i32(-u_input.a.x ^ -u_input.a.x, select(firstLeadingBit(-1i), _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.a.x, arg_1), u_input.a.x), true)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec2<i32>) -> u32 {
    var var_0 = func_2(-1079f, -63288i);
    global1 = array<Struct_3, 8>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-771f, var_0.a.c, 1608f))))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(trunc(-884f)), -1987f, -679f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(242f, arg_0.a.c, -1773f))) + vec3<f32>(_wgslsmith_f_op_f32(-108f + arg_0.a.c), 2076f, -638f)), !all(!vec4<bool>(var_0.a.d, false, arg_0.a.d, var_0.a.a.x)))));
    var var_2 = Struct_2(func_2(_wgslsmith_f_op_f32(trunc(arg_0.a.c)), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(arg_2.x, 1i, -1i, arg_0.c)), vec4<i32>(6872i, select(1i, -2147483647i, var_0.a.d), arg_0.d & var_0.d, abs(1i)))).a, arg_0.b, ~arg_0.d, -firstTrailingBit(-42249i));
    var var_3 = var_1.x;
    return ~arg_1.x;
}

fn func_1() -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 8u)];
    global0 = var_0.c;
    let var_1 = vec3<bool>(func_4(func_2(_wgslsmith_f_op_f32(179f * 690f), var_0.c), vec4<u32>(33834u, 58215u, 0u << (u_input.b % 32u), ~4608u), _wgslsmith_add_vec2_i32(abs(vec2<i32>(var_0.c, u_input.a.x)), vec2<i32>(0i, var_0.c))) < 2157u, !func_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, 1159f, var_0.d)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, var_0.d, -450f) * vec3<f32>(var_0.a.c, var_0.b, 189f)), !vec3<bool>(var_0.a.a.x, true, var_0.a.a.x))), Struct_3(var_0.a, var_0.a.c, reverseBits(var_0.c), var_0.a.c), Struct_3(var_0.a, _wgslsmith_f_op_f32(exp2(var_0.a.c)), max(var_0.c, var_0.c), _wgslsmith_f_op_f32(floor(-1226f)))).x, var_0.a.a.x | var_0.a.d);
    return ~62694u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~firstLeadingBit(vec2<u32>(u_input.b, func_1()));
    let var_1 = ~1i;
    let var_2 = Struct_2(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(778f, -762f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1818f - 1404f))), 0i).a, func_3(vec3<f32>(1f, 1f, 1f), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.x, 15309u) | vec3<u32>(var_0.x, u_input.b, u_input.b), _wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.c, u_input.b) << (vec3<u32>(var_0.x, 41894u, 4294967295u) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(15053u, 64026u, u_input.c), vec3<u32>(var_0.x, u_input.b, u_input.c)))), 8u)], Struct_3(func_2(-1104f, 0i << (var_0.x % 32u)).a, -1000f, 17975i, -822f)), var_1, -2147483647i);
    var var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -270f), 1997f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.c, 840f) * vec2<f32>(var_2.a.c, 185f))))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-232f, -1351f)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1421f)) + 1091f), var_2.a.c))));
    let var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, _wgslsmith_clamp_vec3_u32(~abs(~vec3<u32>(55798u, 12613u, 4294967295u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, var_0.x >> (var_2.a.b.x % 32u), 0u), select(~vec3<u32>(132530u, 0u, 98786u), abs(vec3<u32>(1u, 0u, u_input.b)), vec3<bool>(true, true, true)), abs(~vec3<u32>(0u, 12612u, 1u))), firstLeadingBit(countOneBits(~vec3<u32>(1u, 4112u, u_input.b)))), 215f);
}

