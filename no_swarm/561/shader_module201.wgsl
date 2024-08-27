struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: vec4<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
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

var<private> global0: array<f32, 30>;

var<private> global1: vec2<i32> = vec2<i32>(-12540i, 16416i);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_5, arg_1: i32) -> vec2<i32> {
    var var_0 = Struct_1(vec3<u32>(28457u, _wgslsmith_mod_u32(arg_0.b.c.x & countOneBits(arg_0.a.d.a.x), min(~42438u, u_input.a)), 19194u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(1820f)), _wgslsmith_f_op_f32(-arg_0.a.b.b.x), -570f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(0u, 30u)], 1601f, global0[_wgslsmith_index_u32(11140u, 30u)]) - vec3<f32>(global0[_wgslsmith_index_u32(43868u, 30u)], 977f, arg_0.a.a))))), select(arg_0.b.d.x, arg_0.b.d.x, true));
    let var_1 = _wgslsmith_f_op_f32(-638f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.a) * 1f)))) <= _wgslsmith_f_op_f32(floor(-248f));
    var_0 = Struct_1(abs(~vec3<u32>(var_0.a.x, firstLeadingBit(arg_0.a.d.a.x), ~u_input.a)), _wgslsmith_f_op_vec3_f32(-var_0.b), -948f > arg_0.a.e.b.x);
    let var_2 = arg_0.a.b;
    global1 = -_wgslsmith_mod_vec2_i32(vec2<i32>(~max(arg_0.b.b, -11632i), firstLeadingBit(1i)), _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(firstLeadingBit(u_input.c), countOneBits(u_input.d.zy)), u_input.d.xz));
    return _wgslsmith_mult_vec2_i32(u_input.d.xx, u_input.d.yz);
}

fn func_2(arg_0: vec4<u32>) -> vec3<bool> {
    var var_0 = firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec2_i32(min(u_input.d.xx ^ vec2<i32>(u_input.b, global1.x), vec2<i32>(2147483647i, u_input.d.x)), func_3(Struct_5(Struct_2(120f, Struct_1(vec3<u32>(8173u, arg_0.x, u_input.a), vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(arg_0.x, 30u)]), true), vec4<u32>(4294967295u, arg_0.x, u_input.a, 46175u), Struct_1(arg_0.yzy, vec3<f32>(162f, global0[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(arg_0.x, 30u)]), false), Struct_1(vec3<u32>(1u, u_input.a, 4294967295u), vec3<f32>(-2981f, 128f, -876f), true)), Struct_4(global0[_wgslsmith_index_u32(32547u, 30u)], -1i, vec4<u32>(u_input.a, 50574u, 4294967295u, 0u), vec4<bool>(true, true, true, true))), 1i)), -44466i, _wgslsmith_sub_i32(0i, abs(1i)), u_input.b));
    let var_1 = Struct_1(~max(_wgslsmith_add_vec3_u32(countOneBits(arg_0.zyw), arg_0.wwz), countOneBits(countOneBits(arg_0.yzx))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-1000f, 615f), global0[_wgslsmith_index_u32(arg_0.x, 30u)], global0[_wgslsmith_index_u32(1u, 30u)]))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), false)));
    global1 = var_0.zx;
    var var_2 = Struct_1(firstTrailingBit(firstLeadingBit(reverseBits(var_1.a))), _wgslsmith_div_vec3_f32(var_1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -290f, var_1.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-744f - global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 92740u, u_input.a, arg_0.x), arg_0), 30u)])) < var_1.b.x);
    var var_3 = var_0.yy;
    return select(select(!vec3<bool>(all(vec4<bool>(true, true, true, true)), any(vec3<bool>(var_2.c, false, false)), true), select(select(select(vec3<bool>(true, false, var_1.c), vec3<bool>(false, var_1.c, false), vec3<bool>(var_1.c, true, false)), select(vec3<bool>(true, var_1.c, var_2.c), vec3<bool>(false, var_1.c, var_1.c), var_2.c), !var_1.c), !vec3<bool>(true, true, var_1.c), select(!vec3<bool>(false, var_2.c, false), !vec3<bool>(var_1.c, true, false), all(vec2<bool>(false, false)))), vec3<bool>(!any(vec2<bool>(true, var_2.c)), !(1i > var_3.x), !var_2.c)), !select(!(!vec3<bool>(false, var_1.c, var_1.c)), select(!vec3<bool>(true, true, var_1.c), select(vec3<bool>(false, var_1.c, var_1.c), vec3<bool>(false, var_2.c, false), vec3<bool>(true, true, var_1.c)), vec3<bool>(var_2.c, true, var_2.c)), (-1i >= var_3.x) & all(vec2<bool>(true, var_2.c))), vec3<bool>(!all(!vec3<bool>(var_1.c, true, var_2.c)), true, !(_wgslsmith_sub_u32(66016u, arg_0.x) <= 17537u)));
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = vec3<bool>(_wgslsmith_div_i32(2147483647i, u_input.d.x) > reverseBits(global1.x), !(!(any(vec3<bool>(false, true, true)) && true)), all(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))));
    global1 = countOneBits(u_input.c);
    var_0 = !func_2(firstTrailingBit(max(vec4<u32>(1u, arg_0, arg_0, 9915u) << (vec4<u32>(4294967295u, arg_0, 1u, 11040u) % vec4<u32>(32u)), ~vec4<u32>(u_input.a, arg_0, u_input.a, arg_0))));
    var var_1 = 18943i;
    var var_2 = select(var_0.zz, select(!(!var_0.xz), vec2<bool>((-1i != u_input.b) & (u_input.c.x < 2147483647i), true), vec2<bool>(false, true)), vec2<bool>(var_0.x, true));
    return -430f;
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    global0 = array<f32, 30>();
    global1 = vec2<i32>(global1.x, ~(-firstLeadingBit(countOneBits(u_input.d.x))));
    var var_0 = func_2(arg_0.c);
    var var_1 = arg_0;
    global1 = -vec2<i32>(global1.x, _wgslsmith_mod_i32(~(-10128i), 36300i)) | (vec2<i32>(0i, firstLeadingBit(-15680i)) >> (_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.a) >> (var_1.c.ww % vec2<u32>(32u)), vec2<u32>(u_input.a, 1u)), vec2<u32>(firstTrailingBit(var_1.d.a.x), _wgslsmith_mod_u32(u_input.a, 29955u))) % vec2<u32>(32u)));
    return Struct_1(~(~firstTrailingBit(arg_0.c.xxx)), arg_0.b.b, true);
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec2<bool>) -> StorageBuffer {
    let var_0 = vec4<bool>(arg_2.x, max(-(~u_input.b), global1.x) < ~max(i32(-1i) * -12807i, u_input.d.x), false, true);
    global1 = -vec2<i32>(1i, 1i);
    var var_1 = arg_1.c;
    let var_2 = arg_1.b.xy;
    let var_3 = Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * arg_1.b.x) * _wgslsmith_f_op_f32(738f * var_2.x)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1172u, 30u)]), 793f))), func_4(Struct_2(1000f, arg_1, ~vec4<u32>(arg_0, 1u, 5548u, 1u), func_4(Struct_2(1484f, arg_1, vec4<u32>(15557u, u_input.a, 0u, 1u), Struct_1(arg_1.a, arg_1.b, true), Struct_1(arg_1.a, arg_1.b, arg_2.x))), arg_1)), ~(vec4<u32>(u_input.a, arg_0, 0u, arg_1.a.x) & ~vec4<u32>(4294967295u, 15369u, arg_0, 4294967295u)), Struct_1(max(~arg_1.a, vec3<u32>(arg_0, arg_0, u_input.a) << (arg_1.a % vec3<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(-1000f * var_2.x), var_2.x, _wgslsmith_f_op_f32(var_2.x - 866f)), true), arg_1), false, Struct_2(arg_1.b.x, arg_1, vec4<u32>(_wgslsmith_mod_u32(1u, arg_0) ^ arg_1.a.x, ~abs(arg_0), ~1u, u_input.a), func_4(Struct_2(-397f, arg_1, abs(vec4<u32>(0u, 7457u, arg_0, 0u)), arg_1, func_4(Struct_2(arg_1.b.x, arg_1, vec4<u32>(arg_0, 27970u, arg_1.a.x, 30249u), Struct_1(vec3<u32>(arg_0, u_input.a, arg_0), arg_1.b, arg_1.c), arg_1)))), arg_1));
    return StorageBuffer(36611u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(29719u, func_4(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.a)) - -559f), Struct_1(vec3<u32>(u_input.a, 39199u, 0u) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(495f, global0[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)])), true), ~vec4<u32>(4294967295u, u_input.a, 69679u, 33648u) & (vec4<u32>(u_input.a, u_input.a, 0u, u_input.a) ^ vec4<u32>(1u, 4294967295u, u_input.a, u_input.a)), Struct_1(~vec3<u32>(26040u, u_input.a, u_input.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(34496u, 30u)], global0[_wgslsmith_index_u32(7242u, 30u)], global0[_wgslsmith_index_u32(21244u, 30u)]) - vec3<f32>(global0[_wgslsmith_index_u32(0u, 30u)], 224f, 419f)), true), Struct_1(vec3<u32>(u_input.a, u_input.a, 0u), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(20273u, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)], -1467f) + vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 30u)], 171f, global0[_wgslsmith_index_u32(0u, 30u)])), true))), vec2<bool>(func_4(Struct_2(global0[_wgslsmith_index_u32(u_input.a ^ 4294967295u, 30u)], func_4(Struct_2(-1538f, Struct_1(vec3<u32>(0u, 1u, u_input.a), vec3<f32>(global0[_wgslsmith_index_u32(0u, 30u)], 2015f, global0[_wgslsmith_index_u32(45472u, 30u)]), false), vec4<u32>(0u, u_input.a, u_input.a, 1u), Struct_1(vec3<u32>(u_input.a, u_input.a, 1u), vec3<f32>(1000f, global0[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(0u, 30u)]), false), Struct_1(vec3<u32>(21218u, u_input.a, 46704u), vec3<f32>(-894f, global0[_wgslsmith_index_u32(16977u, 30u)], 1309f), true))), ~vec4<u32>(4294967295u, u_input.a, 1u, u_input.a), Struct_1(vec3<u32>(1u, u_input.a, u_input.a), vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)], 1022f), true), Struct_1(vec3<u32>(1u, u_input.a, u_input.a), vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)], -2984f), true))).c, true));
}

