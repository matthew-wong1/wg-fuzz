struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec4<i32>(-1864i, 1i, 5833i, i32(-2147483648)), vec4<f32>(176f, 1358f, 1022f, 817f)), Struct_1(vec4<i32>(-8191i, -2875i, -1i, 2147483647i), vec4<f32>(-484f, -1000f, 464f, -183f)), Struct_1(vec4<i32>(-1257i, -1i, 0i, -46398i), vec4<f32>(1757f, -198f, -2221f, -1195f)), Struct_1(vec4<i32>(-11454i, 7641i, i32(-2147483648), 2147483647i), vec4<f32>(602f, -609f, 478f, -175f)), Struct_1(vec4<i32>(0i, -10825i, 1i, 0i), vec4<f32>(907f, -1039f, 464f, -628f)), Struct_1(vec4<i32>(1i, 2147483647i, 71540i, 1i), vec4<f32>(-1385f, -1000f, 1772f, 1150f)), Struct_1(vec4<i32>(20776i, -12017i, 0i, 1i), vec4<f32>(-1365f, 123f, 1191f, 244f)), Struct_1(vec4<i32>(2147483647i, -24009i, -12516i, 23138i), vec4<f32>(-2108f, 351f, -814f, -670f)), Struct_1(vec4<i32>(0i, -14372i, 0i, -32450i), vec4<f32>(-1399f, 1000f, -721f, -845f)), Struct_1(vec4<i32>(-28949i, -12488i, i32(-2147483648), -9974i), vec4<f32>(-606f, -264f, 1510f, 1880f)), Struct_1(vec4<i32>(2147483647i, 1i, i32(-2147483648), -1i), vec4<f32>(792f, -241f, -1908f, 1351f)), Struct_1(vec4<i32>(-40715i, 1i, -73179i, 7971i), vec4<f32>(254f, 2042f, -1183f, -260f)), Struct_1(vec4<i32>(12337i, 1i, i32(-2147483648), -16013i), vec4<f32>(195f, 1000f, 1637f, 519f)), Struct_1(vec4<i32>(0i, -27233i, 7007i, -1i), vec4<f32>(109f, -893f, 742f, 1174f)));

var<private> global1: array<i32, 6>;

var<private> global2: vec3<i32> = vec3<i32>(30512i, 62716i, -61305i);

var<private> global3: array<vec2<bool>, 27> = array<vec2<bool>, 27>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true));

var<private> global4: Struct_1 = Struct_1(vec4<i32>(-24390i, -31884i, -1i, i32(-2147483648)), vec4<f32>(-304f, 553f, 1000f, -1000f));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> f32 {
    let var_0 = min(reverseBits(countOneBits(abs(u_input.a.xwx) | vec3<u32>(2040u, u_input.a.x, 17376u))), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, _wgslsmith_clamp_u32(countOneBits(57484u), _wgslsmith_mult_u32(arg_0.x, 24524u), u_input.a.x)), _wgslsmith_mult_vec3_u32(u_input.a.yzz, reverseBits(vec3<u32>(u_input.a.x, 1u, u_input.a.x)) & vec3<u32>(0u, arg_0.x, arg_0.x))));
    global1 = array<i32, 6>();
    var var_1 = ~reverseBits(min(firstLeadingBit(arg_1.a), vec4<i32>(~arg_1.a.x, global4.a.x, global2.x, 7990i)));
    let var_2 = global3[_wgslsmith_index_u32(u_input.a.x, 27u)];
    global2 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(arg_0.x, 6u)], arg_1.a.x), arg_1.a.wy) ^ (var_1.yz >> (vec2<u32>(u_input.a.x, 52978u) % vec2<u32>(32u))), countOneBits(var_1.ww)), _wgslsmith_div_i32(global4.a.x, global1[_wgslsmith_index_u32(~u_input.a.x, 6u)]), ~(~arg_3 | var_1.x)), ~(-(~vec3<i32>(global4.a.x, -1i, -42745i) ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -1i, global4.a.x), vec3<i32>(-13560i, -2288i, global2.x), vec3<i32>(global1[_wgslsmith_index_u32(25899u, 6u)], 1i, 15488i)))));
    return _wgslsmith_f_op_f32(floor(2339f));
}

fn func_2() -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(0u, 14u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * global4.b.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(vec4<u32>(0u, 31040u, u_input.a.x, u_input.a.x), Struct_1(var_0.a, vec4<f32>(global4.b.x, global4.b.x, -1476f, 1171f)), true, 2147483647i)), 556f, true))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b.zw) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4.b.yy) + var_0.b.yw))));
    let var_2 = Struct_1(-firstLeadingBit(vec4<i32>(i32(-1i) * -73798i, _wgslsmith_mod_i32(var_0.a.x, 1i), global2.x & global1[_wgslsmith_index_u32(u_input.a.x, 6u)], _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, 1i, global2.x), var_0.a.xxx))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-893f + _wgslsmith_f_op_f32(-var_1.x)) + _wgslsmith_f_op_f32(1269f * _wgslsmith_f_op_f32(-global4.b.x))), 953f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.b.x)) * 157f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1503f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + -156f)) * _wgslsmith_f_op_f32(step(var_0.b.x, _wgslsmith_f_op_f32(-var_1.x))))));
    var var_3 = var_2;
    global2 = _wgslsmith_sub_vec3_i32(vec3<i32>(-_wgslsmith_clamp_i32(var_3.a.x, global4.a.x, select(-102008i, var_2.a.x, false)), global1[_wgslsmith_index_u32(4294967295u, 6u)], _wgslsmith_add_i32(6720i, _wgslsmith_mod_i32(var_3.a.x, _wgslsmith_dot_vec2_i32(var_2.a.xz, var_3.a.zz)))), abs(-global4.a.wxz) | firstLeadingBit(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_3.a.x, -16085i), var_0.a.xz), var_0.a.x, global1[_wgslsmith_index_u32(1u, 6u)])));
    return Struct_1(abs(-_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(var_3.a, var_2.a), vec4<i32>(var_0.a.x, var_0.a.x, global4.a.x, 0i))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(var_3.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1370f, 1987f, var_0.b.x, var_3.b.x)))))));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<bool>, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = global4.a.yz;
    global4 = func_2();
    let var_1 = true;
    var_0 = global4.a.zw;
    let var_2 = _wgslsmith_mult_i32(~(-20127i), -6196i);
    return Struct_1(firstTrailingBit(arg_0.a), arg_0.b);
}

fn func_1() -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(~u_input.a.x, 14u)];
    var var_1 = _wgslsmith_f_op_f32(floor(-878f));
    let var_2 = global0[_wgslsmith_index_u32(0u >> (firstTrailingBit(4294967295u) % 32u), 14u)];
    global1 = array<i32, 6>();
    let var_3 = func_4(func_2(), u_input.a.x, !global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.a.x, u_input.a.x, u_input.a.x), 27u)], _wgslsmith_f_op_vec3_f32(ceil(global4.b.wxy)));
    return Struct_1(vec4<i32>(8173i, firstTrailingBit(firstLeadingBit(global1[_wgslsmith_index_u32(4294967295u, 6u)])) >> (~(~0u) % 32u), ~49473i, countOneBits(_wgslsmith_add_i32(global4.a.x, 0i))), _wgslsmith_f_op_vec4_f32(-var_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * 1000f) + _wgslsmith_f_op_f32(1000f + func_2().b.x)))), _wgslsmith_f_op_f32(1342f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(u_input.a, Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global2.x, var_0.a.x, global4.a.x), vec4<f32>(global4.b.x, global4.b.x, global4.b.x, 2395f)), true, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 6u)])), -1726f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * -2266f));
    let x = u_input.a;
    s_output = StorageBuffer(global4.a.wzw, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * -290f)))), select(u_input.a.x, ~_wgslsmith_clamp_u32(47017u, u_input.a.x, 4294967295u) >> (u_input.a.x % 32u), true), 1343f);
}

