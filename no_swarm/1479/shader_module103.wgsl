struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16>;

var<private> global1: array<f32, 20>;

var<private> global2: Struct_1 = Struct_1(770f);

var<private> global3: vec2<u32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(arg_0.a)))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(global3.x, 16u)])));
    var var_2 = var_1;
    var var_3 = arg_1;
    var_2 = arg_2;
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> vec4<i32> {
    global2 = func_2(arg_2, any(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), ~(-34011i) >= ~u_input.c)), func_2(arg_2, true, arg_2));
    var var_0 = func_2(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.a - 1052f), _wgslsmith_f_op_f32(floor(563f))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~u_input.b.x, 16u)] + _wgslsmith_div_f32(arg_2.a, global1[_wgslsmith_index_u32(global3.x, 20u)]))))), true, Struct_1(arg_2.a));
    var_0 = arg_0;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-167f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.a - 629f), arg_2.a)))) * _wgslsmith_f_op_f32(select(-436f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global3.x, 16u)] + 555f))), any(vec4<bool>(true, true, true, true))))));
    global1 = array<f32, 20>();
    return vec4<i32>(abs(firstTrailingBit(u_input.c)), ~(-u_input.c & _wgslsmith_div_i32(u_input.a, 2147483647i)), _wgslsmith_div_i32(21884i, _wgslsmith_dot_vec2_i32(~vec2<i32>(-17291i, -2147483647i), firstTrailingBit(vec2<i32>(36606i, u_input.a)))), _wgslsmith_dot_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(-10157i, -2147483647i)), _wgslsmith_sub_vec2_i32(~vec2<i32>(30681i, -1i), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(30453i, u_input.c))))) & (vec4<i32>(-_wgslsmith_div_i32(u_input.a, -27750i), i32(-1i) * -59754i, u_input.c, 1i >> (~global3.x % 32u)) ^ _wgslsmith_clamp_vec4_i32(firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.c, u_input.a, 2147483647i), vec4<i32>(-2147483647i, u_input.c, u_input.a, u_input.c))), -select(vec4<i32>(u_input.a, 0i, 33943i, u_input.a), vec4<i32>(0i, 1i, u_input.c, 2147483647i), vec4<bool>(true, false, false, false)), -firstLeadingBit(vec4<i32>(u_input.c, -1i, u_input.c, u_input.c))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec4_i32(firstLeadingBit(func_3(Struct_1(1443f), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 0u, 51730u, 5710u), vec4<u32>(global3.x, 28861u, 4294967295u, 1u), vec4<u32>(0u, 1u, 4294967295u, 0u)), func_2(Struct_1(-282f), false, Struct_1(global1[_wgslsmith_index_u32(u_input.b.x, 20u)]))) | firstTrailingBit(~vec4<i32>(-2147483647i, u_input.c, 1i, u_input.a))), vec4<i32>(abs(-u_input.c), 18580i, u_input.a & ~31377i, u_input.a), select(~_wgslsmith_mod_vec4_i32(vec4<i32>(-14099i, -1i, -1i, 1i), -vec4<i32>(u_input.c, u_input.c, 2147483647i, -33074i)), vec4<i32>(-2147483647i & firstTrailingBit(u_input.c), firstTrailingBit(-5789i), 35323i, abs(u_input.c)), vec4<bool>(any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false))), all(vec3<bool>(false, false, false)) != false, true, false)));
    let var_1 = u_input.b.x;
    let var_2 = Struct_1(-1330f);
    var var_3 = var_2;
    var var_4 = _wgslsmith_f_op_f32(-var_2.a);
    return func_2(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1390f - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 16u)]))))), any(vec2<bool>(false, true)), Struct_1(-1556f));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec3<bool>, arg_3: f32) -> Struct_1 {
    var var_0 = Struct_1(global2.a);
    let var_1 = _wgslsmith_clamp_vec4_i32(reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1, arg_1, -1i, 21395i), _wgslsmith_mod_vec4_i32(vec4<i32>(35023i, u_input.a, -14936i, u_input.a), vec4<i32>(arg_1, 2147483647i, -42258i, u_input.c)), -vec4<i32>(2147483647i, arg_1, -2147483647i, arg_1))), max(vec4<i32>(11164i, u_input.c, -28442i, -6138i) >> (vec4<u32>(global3.x, 0u, 4294967295u, 48978u) % vec4<u32>(32u)), ~(~vec4<i32>(-21878i, 4612i, u_input.a, arg_1))), func_3(Struct_1(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(global3.x, 20u)], -397f)), reverseBits(max(vec4<u32>(23785u, global3.x, 4294967295u, 1u), vec4<u32>(u_input.b.x, global3.x, 4294967295u, 1u))), func_1())) >> (_wgslsmith_mult_vec4_u32(firstTrailingBit(select(vec4<u32>(1u, global3.x, 11700u, 41109u), _wgslsmith_mod_vec4_u32(vec4<u32>(22707u, global3.x, u_input.b.x, global3.x), vec4<u32>(global3.x, u_input.b.x, 29651u, global3.x)), select(vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), vec4<bool>(false, arg_2.x, arg_2.x, false), vec4<bool>(arg_2.x, false, false, false)))), reverseBits(reverseBits(vec4<u32>(11530u, 7082u, global3.x, 1u) | vec4<u32>(21613u, 38432u, u_input.b.x, u_input.b.x)))) % vec4<u32>(32u));
    let var_2 = var_0.a;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1479f, -1086f, 1025f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(673f, var_0.a, arg_0.a)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, global0[_wgslsmith_index_u32(22865u, 16u)], 1000f) + vec3<f32>(global0[_wgslsmith_index_u32(1u, 16u)], -1254f, global2.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, 2140f, -760f) + vec3<f32>(704f, -971f, 212f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(540f, -2026f, 1757f)))));
    var_0 = arg_0;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 16>();
    let var_0 = Struct_1(_wgslsmith_div_f32(2743f, 1f));
    var var_1 = -453f;
    let var_2 = func_4(func_1(), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, ~(~(-238i)), 3396i, u_input.a & -26642i), vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(34549i, -34078i), u_input.c, ~u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -2147483647i, -2147483647i) ^ vec3<i32>(u_input.a, u_input.c, u_input.c), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, 76935i, u_input.c), vec3<i32>(1i, u_input.a, 2147483647i))), -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(57550i, 1i), vec2<i32>(2147483647i, -19848i)) << (u_input.b.x % 32u))), vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))), true, true), 333f);
    var_1 = -1078f;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-801f))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(61459u, 20u)], global1[_wgslsmith_index_u32(7766u, 20u)]) * vec2<f32>(var_2.a, global0[_wgslsmith_index_u32(4294967295u, 16u)])) * _wgslsmith_f_op_vec2_f32(vec2<f32>(847f, 131f) * vec2<f32>(843f, global1[_wgslsmith_index_u32(0u, 20u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2445f, global1[_wgslsmith_index_u32(113961u, 20u)]), vec2<f32>(global2.a, -1614f), true))))) * vec2<f32>(-1096f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1376f, global1[_wgslsmith_index_u32(u_input.b.x, 20u)]))) * -554f)));
    let var_4 = var_0;
    var var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~48136i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-719f)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(-176f, -545f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global3.x, 20u)])), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(global3.x, 16u)])), _wgslsmith_f_op_f32(var_2.a * 656f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(636f, 1678f, 1354f))))), min(firstLeadingBit(u_input.b.xz), countOneBits(~countOneBits(vec2<u32>(96215u, 51605u)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_5.a), 479f) + _wgslsmith_f_op_f32(trunc(178f))));
}

