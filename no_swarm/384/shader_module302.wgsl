struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1949f;

var<private> global1: array<u32, 16> = array<u32, 16>(0u, 41385u, 16458u, 1u, 10700u, 0u, 79043u, 668u, 45908u, 1u, 55886u, 1u, 1u, 25584u, 0u, 129923u);

var<private> global2: bool;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: u32) -> i32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.x)))) + _wgslsmith_f_op_f32(arg_1.x + arg_1.x)), select(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), all(vec3<bool>(true, false, true))), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false)), vec2<bool>(!any(vec3<bool>(false, true, false)), false)), Struct_1(firstLeadingBit(~0u), vec3<u32>(_wgslsmith_mod_u32(~global1[_wgslsmith_index_u32(1u, 16u)], min(arg_2, 0u)), ~arg_2 & ~0u, min(1u, 4294967295u)), abs(-max(vec4<i32>(29405i, 1i, 1i, 1987i), vec4<i32>(-2147483647i, -1i, -37196i, -2147483647i))), vec4<i32>(~0i, 1i, ~24351i, -22149i), arg_1.x));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-943f * -1534f), vec2<bool>(true, true), Struct_1(0u, (reverseBits(vec3<u32>(4294967295u, 31445u, global1[_wgslsmith_index_u32(arg_0, 16u)])) | _wgslsmith_div_vec3_u32(vec3<u32>(arg_2, 54252u, 1u), vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 16u)], global1[_wgslsmith_index_u32(69892u, 16u)], 38210u))) << (countOneBits(vec3<u32>(u_input.a, var_0.c.b.x, arg_2)) % vec3<u32>(32u)), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(var_0.c.c, reverseBits(vec4<i32>(var_0.c.c.x, var_0.c.c.x, var_0.c.d.x, -5330i))), (vec4<i32>(-11389i, 1i, var_0.c.c.x, var_0.c.c.x) >> (vec4<u32>(19773u, 64890u, 0u, 8116u) % vec4<u32>(32u))) | vec4<i32>(46326i, -8190i, var_0.c.c.x, var_0.c.d.x)), ~(~var_0.c.c) << (max(~vec4<u32>(global1[_wgslsmith_index_u32(1u, 16u)], 30517u, global1[_wgslsmith_index_u32(4294967295u, 16u)], arg_0), firstLeadingBit(vec4<u32>(53092u, var_0.c.b.x, 2005u, global1[_wgslsmith_index_u32(0u, 16u)]))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(2028f)), _wgslsmith_f_op_f32(-var_0.c.e)))));
    return ~(-1i);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<f32>) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(arg_0.e * _wgslsmith_f_op_f32(sign(arg_0.e))), vec2<bool>(false, true), Struct_1(_wgslsmith_add_u32(1u, _wgslsmith_mult_u32(1u, ~4294967295u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), arg_0.a, ~arg_0.a), _wgslsmith_add_vec3_u32(arg_1, reverseBits(vec3<u32>(4294967295u, arg_0.a, global1[_wgslsmith_index_u32(0u, 16u)]))), _wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(12363u, global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(1u, 16u)])), ~vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 16u)], 4294967295u, 4294967295u), vec3<u32>(arg_0.a, 1u, 12397u))), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 2147483647i), -arg_0.d.zy), arg_0.c.x, arg_0.c.x, _wgslsmith_mod_i32(_wgslsmith_sub_i32(arg_0.c.x, -42546i), arg_0.d.x)), vec4<i32>(min(0i >> (0u % 32u), 1i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(17270i, arg_0.d.x), vec2<i32>(1i, 0i)), arg_0.d.x, -2147483647i & func_3(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 16u)], vec4<f32>(1263f, arg_2.x, 1202f, -695f), 4294967295u)), arg_2.x));
    global2 = -41283i > _wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(-1647i), -2147483647i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.c.x, -49569i, -10597i, 7745i), vec4<i32>(var_0.c.d.x, arg_0.d.x, arg_0.d.x, -1i))), var_0.c.d.wz);
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, arg_2.x, 1827f, 505f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1591f, -746f, -448f, var_0.a) - vec4<f32>(var_0.c.e, arg_0.e, -140f, -947f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(979f, 312f, 1765f, var_0.a))) - vec4<f32>(589f, var_0.a, -1053f, var_0.a)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-567f, arg_2.x, arg_0.e, var_0.c.e)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2.x, arg_0.e, -573f, arg_0.e)))), var_0.b.x))));
    let var_2 = var_0.b.x;
    let var_3 = -17834i;
    return Struct_2(arg_0.e, select(var_0.b, var_0.b, select(select(select(vec2<bool>(var_0.b.x, var_0.b.x), var_0.b, var_0.b), !var_0.b, var_0.b), select(!var_0.b, !vec2<bool>(false, var_0.b.x), arg_2.x < -727f), select(vec2<bool>(false, var_0.b.x), !var_0.b, !vec2<bool>(var_0.b.x, var_0.b.x)))), arg_0);
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> bool {
    global1 = array<u32, 16>();
    return func_2(arg_1.c, _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.b.x, 6825u), vec3<u32>(u_input.b.x, 0u, arg_1.c.b.x)) ^ ~arg_1.c.b, firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.c.a, 1u, u_input.b.x), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 16u)], 16u)], 74283u, 1u) ^ vec3<u32>(arg_1.c.b.x, 66223u, 57212u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(func_2(arg_1.c, arg_1.c.b, vec3<f32>(arg_1.c.e, 166f, arg_1.a)).a, -855f, -1540f)))).b.x;
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec4<f32>) -> vec4<i32> {
    global0 = -1028f;
    global1 = array<u32, 16>();
    let var_0 = all(vec2<bool>(true, !arg_1.b.x | arg_0.x));
    var var_1 = arg_3.x;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1083f))));
    return (_wgslsmith_sub_vec4_i32(arg_1.c.d, vec4<i32>(63165i & arg_1.c.d.x, abs(-22987i), ~arg_1.c.c.x, _wgslsmith_add_i32(2147483647i, arg_1.c.c.x))) | _wgslsmith_mult_vec4_i32(~vec4<i32>(arg_1.c.c.x, -1i, 7793i, -53008i), _wgslsmith_clamp_vec4_i32(arg_1.c.c ^ arg_1.c.d, -vec4<i32>(-41749i, 1i, -43604i, arg_1.c.d.x), _wgslsmith_clamp_vec4_i32(arg_1.c.c, arg_1.c.c, arg_1.c.d)))) ^ _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(arg_1.c.d, arg_1.c.d, countOneBits(vec4<i32>(-41171i, 2147483647i, 14146i, arg_1.c.d.x))) ^ firstTrailingBit(firstTrailingBit(vec4<i32>(0i, -18094i, 0i, 57890i))), arg_1.c.d);
}

fn func_1() -> vec4<u32> {
    var var_0 = func_5(vec2<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))), func_4(2147483647i, func_2(Struct_1(global1[_wgslsmith_index_u32(u_input.b.x, 16u)], vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(0u, 16u)], 33666u), vec4<i32>(-2147483647i, 2147483647i, 3923i, -2147483647i), vec4<i32>(2147483647i, 2147483647i, -12260i, -2147483647i), -937f), vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(u_input.a, 16u)], 33294u), vec3<f32>(1439f, -1035f, -1347f)))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec2<bool>(false, true), func_2(Struct_1(26766u, vec3<u32>(global1[_wgslsmith_index_u32(1u, 16u)], 0u, 12520u), vec4<i32>(2147483647i, -50795i, 1i, -1i), vec4<i32>(53049i, 1i, -1i, -2147483647i), 306f), vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 16u)], 0u, 12037u) & vec3<u32>(0u, 1928u, global1[_wgslsmith_index_u32(1u, 16u)]), vec3<f32>(418f, 338f, 917f)).c), reverseBits(abs(select(vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 16u)], 16u)], 25281u), vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 16u)], 1u, 1u), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1043f, 656f, -1000f, -299f), vec4<f32>(-818f, -926f, 1001f, -1079f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2356f, -202f, 1179f, -809f))))) >> (vec4<u32>(~min(_wgslsmith_div_u32(u_input.a, u_input.a), ~u_input.b.x), reverseBits(31545u), ~reverseBits(max(u_input.b.x, 28322u)), _wgslsmith_mod_u32(reverseBits(55381u), 1u)) % vec4<u32>(32u));
    global1 = array<u32, 16>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1773f)) - 299f), func_2(Struct_1(~65278u, select(vec3<u32>(1u, u_input.a, 95681u), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)], 17000u, 0u), vec3<bool>(false, false, false)), -vec4<i32>(-2147483647i, -1i, 1856i, -2147483647i), ~vec4<i32>(55949i, var_0.x, -15677i, -8130i), _wgslsmith_f_op_f32(f32(-1f) * -1634f)), firstLeadingBit(vec3<u32>(4294967295u, 28116u, 0u)), vec3<f32>(_wgslsmith_f_op_f32(-1005f * 1051f), 1f, 1239f)).a, 1f));
    var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1008f))) * _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(259f, 1000f, -785f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(216f, 275f, var_1.x))) * vec3<f32>(_wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(ceil(var_1.x)), _wgslsmith_f_op_f32(-1775f - 784f))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1769f, var_1.x, var_1.x)))))))));
    var var_2 = _wgslsmith_f_op_f32(-655f + _wgslsmith_f_op_f32(-var_1.x));
    return vec4<u32>(abs(countOneBits(~reverseBits(1u))), 0u & global1[_wgslsmith_index_u32(u_input.a, 16u)], 0u ^ global1[_wgslsmith_index_u32(u_input.a, 16u)], _wgslsmith_dot_vec4_u32(vec4<u32>(70268u, 1u, 4294967295u, _wgslsmith_mod_u32(0u, global1[_wgslsmith_index_u32(60548u, 16u)]) & u_input.a), vec4<u32>(firstLeadingBit(~38143u), _wgslsmith_add_u32(21352u, u_input.a), ~19507u, ~select(u_input.a, u_input.a, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(firstLeadingBit(abs(global1[_wgslsmith_index_u32(firstLeadingBit(~1u), 16u)])), ~(~(~vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 16u)], 4294967295u, 45368u))), vec4<i32>(-18570i, _wgslsmith_div_i32((-24587i >> (global1[_wgslsmith_index_u32(0u, 16u)] % 32u)) >> (_wgslsmith_div_u32(53515u, 21772u) % 32u), -53824i), -(1i | _wgslsmith_dot_vec3_i32(vec3<i32>(-17864i, 0i, -1i), vec3<i32>(-2147483647i, -2147483647i, -57521i))), ~(-2147483647i)), ~(~(-vec4<i32>(-2937i, -12726i, 0i, -12748i))) << (func_1() % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -343f) + 388f));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -426f));
    global1 = array<u32, 16>();
    var var_1 = -_wgslsmith_mod_i32(-20733i, -6885i);
    var_1 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_0.c.x, var_0.d.x << (_wgslsmith_sub_u32(0u, abs(global1[_wgslsmith_index_u32(28946u, 16u)])) % 32u)));
}

