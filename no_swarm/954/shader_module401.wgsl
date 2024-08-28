struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: u32,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(-3844i, i32(-2147483648), -61567i), vec3<i32>(1i, 26258i, -9363i), vec3<i32>(2147483647i, -5337i, 2147483647i), vec3<i32>(-1i, -6947i, -1i), vec3<i32>(4284i, 9306i, 1i), vec3<i32>(-68669i, -1i, -26533i), vec3<i32>(-1i, -1i, 1i), vec3<i32>(2147483647i, -34387i, -1682i), vec3<i32>(-16874i, i32(-2147483648), 49018i), vec3<i32>(-71713i, 18506i, -1394i), vec3<i32>(20655i, 2147483647i, 1i), vec3<i32>(-5212i, -20331i, i32(-2147483648)), vec3<i32>(1i, 47123i, 24153i), vec3<i32>(0i, -40000i, -1i), vec3<i32>(22163i, -1i, 50170i), vec3<i32>(i32(-2147483648), 10413i, 2147483647i), vec3<i32>(-32611i, -1i, -11387i), vec3<i32>(-1i, 16713i, 41059i), vec3<i32>(0i, 27577i, i32(-2147483648)), vec3<i32>(38659i, 0i, -15512i), vec3<i32>(-41716i, 1i, 10416i), vec3<i32>(-1i, 0i, -21459i), vec3<i32>(-23359i, 2147483647i, -1i), vec3<i32>(1i, 35793i, -37866i), vec3<i32>(9663i, i32(-2147483648), 0i), vec3<i32>(-1782i, -70785i, 1i), vec3<i32>(-13226i, 1i, -30058i), vec3<i32>(19536i, -1i, 2147483647i), vec3<i32>(-29410i, 9944i, 6923i), vec3<i32>(-20659i, i32(-2147483648), 57849i), vec3<i32>(0i, 1i, 31569i));

var<private> global1: array<vec2<bool>, 14>;

var<private> global2: array<vec2<u32>, 4>;

var<private> global3: Struct_2 = Struct_2(-1374f);

var<private> global4: array<bool, 31> = array<bool, 31>(true, false, true, true, true, false, true, true, true, false, false, true, true, false, false, true, false, true, true, true, true, true, false, false, false, false, false, false, false, true, false);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec3<f32> {
    var var_0 = u_input.b ^ 407u;
    let var_1 = u_input.b;
    let var_2 = Struct_4(Struct_2(global3.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-494f)) + _wgslsmith_f_op_f32(f32(-1f) * -100f)), global3.a)), ~u_input.b);
    var var_3 = !select(select(select(select(vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 31u)], false, true), vec3<bool>(false, global4[_wgslsmith_index_u32(59535u, 31u)], false), vec3<bool>(true, global4[_wgslsmith_index_u32(31717u, 31u)], global4[_wgslsmith_index_u32(23057u, 31u)])), vec3<bool>(true, true, true), select(vec3<bool>(false, false, global4[_wgslsmith_index_u32(4997u, 31u)]), vec3<bool>(true, global4[_wgslsmith_index_u32(72441u, 31u)], false), vec3<bool>(true, global4[_wgslsmith_index_u32(3546u, 31u)], true))), select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, global4[_wgslsmith_index_u32(var_2.c, 31u)])), vec3<bool>(false, true, global4[_wgslsmith_index_u32(u_input.b, 31u)]), !vec3<bool>(true, false, global4[_wgslsmith_index_u32(12192u, 31u)])), global4[_wgslsmith_index_u32(u_input.b, 31u)]), !vec3<bool>(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 0u), global2[_wgslsmith_index_u32(var_2.c, 4u)]), 31u)], global4[_wgslsmith_index_u32(var_2.c, 31u)], all(vec2<bool>(true, false))), select(select(vec3<bool>(global4[_wgslsmith_index_u32(var_1, 31u)], true, global4[_wgslsmith_index_u32(17819u, 31u)]), !vec3<bool>(global4[_wgslsmith_index_u32(58314u, 31u)], true, false), vec3<bool>(true, true, global4[_wgslsmith_index_u32(u_input.b, 31u)])), select(select(vec3<bool>(true, false, true), vec3<bool>(global4[_wgslsmith_index_u32(50688u, 31u)], global4[_wgslsmith_index_u32(4294967295u, 31u)], true), global4[_wgslsmith_index_u32(u_input.b, 31u)]), vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 31u)], true, global4[_wgslsmith_index_u32(0u, 31u)]), all(vec2<bool>(true, true))), vec3<bool>(global4[_wgslsmith_index_u32(29056u, 31u)] || global4[_wgslsmith_index_u32(0u, 31u)], any(global1[_wgslsmith_index_u32(6480u, 14u)]), false)));
    global3 = Struct_2(var_2.a.a);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1083f, _wgslsmith_f_op_f32(max(global3.a, _wgslsmith_f_op_f32(-var_2.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2141f, 612f)))) * vec3<f32>(614f, _wgslsmith_f_op_f32(round(-455f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(2389f)), 376f)))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b, var_2.a.a, global3.a)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-737f, global3.a, 1234f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a, -1000f, global3.a))))));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(1706f + 384f), _wgslsmith_div_f32(global3.a, _wgslsmith_f_op_f32(1037f + -249f)), _wgslsmith_f_op_f32(global3.a - -1018f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global3.a, 1928f), 1000f, _wgslsmith_div_f32(-441f, global3.a))))));
    var var_1 = countOneBits(firstTrailingBit(~vec4<u32>(u_input.b, 12405u, 4294967295u, u_input.b)));
    var var_2 = !any(vec4<bool>(global4[_wgslsmith_index_u32(81325u, 31u)], countOneBits(39773u) >= abs(var_1.x), any(!vec3<bool>(true, global4[_wgslsmith_index_u32(u_input.b, 31u)], global4[_wgslsmith_index_u32(u_input.b, 31u)])), global4[_wgslsmith_index_u32(982u, 31u)] | (global4[_wgslsmith_index_u32(9334u, 31u)] && true)));
    var_0 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(step(-763f, 292f)), _wgslsmith_f_op_f32(global3.a + 935f));
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(409f, 465f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a - 1930f))), _wgslsmith_f_op_f32(trunc(-1000f)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1338f)));
}

fn func_1(arg_0: vec4<u32>) -> vec4<u32> {
    var var_0 = -706f;
    var var_1 = _wgslsmith_f_op_f32(func_2());
    var var_2 = abs(u_input.a);
    return firstTrailingBit(select(arg_0, arg_0, any(vec2<bool>(global4[_wgslsmith_index_u32(countOneBits(arg_0.x), 31u)], global4[_wgslsmith_index_u32(countOneBits(69648u), 31u)]))));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_2, arg_3: vec4<i32>) -> Struct_2 {
    global0 = array<vec3<i32>, 31>();
    global4 = array<bool, 31>();
    var var_0 = _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, ~(-1i), 0i, arg_3.x & arg_3.x), firstTrailingBit(vec4<i32>(2147483647i, 1i, -13524i, -18630i)), vec4<i32>(arg_3.x, 3631i, ~(-15793i), arg_3.x)), countOneBits(-vec4<i32>(arg_3.x, arg_3.x, arg_3.x, arg_3.x) ^ -arg_3)) | vec4<i32>(-_wgslsmith_mod_i32(2147483647i, ~arg_3.x), u_input.a, -2474i, arg_3.x >> (select(0u ^ u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(u_input.b, 1u)), true) % 32u));
    let var_1 = !vec3<bool>(global4[_wgslsmith_index_u32(~47003u, 31u)], false | !global4[_wgslsmith_index_u32(~1u, 31u)], true);
    var var_2 = -690f;
    return Struct_2(_wgslsmith_f_op_f32(floor(-1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_4(Struct_3(func_1(vec4<u32>(reverseBits(48013u), 1u, _wgslsmith_div_u32(32032u, 4294967295u), u_input.b)), Struct_1(-u_input.a >= u_input.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-418f - global3.a), global3.a)), ~24180u, ~func_1(vec4<u32>(34972u, 4294967295u, 4294967295u, u_input.b)).x, vec2<f32>(_wgslsmith_f_op_f32(global3.a + 753f), global3.a)), all(global1[_wgslsmith_index_u32(u_input.b, 14u)]), Struct_1(global4[_wgslsmith_index_u32(0u, 31u)], _wgslsmith_f_op_f32(f32(-1f) * -1351f), 63926u, u_input.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a, global3.a)) - _wgslsmith_div_vec2_f32(vec2<f32>(219f, global3.a), vec2<f32>(-1111f, global3.a)))), Struct_1(true && global4[_wgslsmith_index_u32(1u, 31u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a * global3.a)), u_input.b, max(9446u, _wgslsmith_mult_u32(u_input.b, u_input.b)), vec2<f32>(_wgslsmith_f_op_f32(-603f - 322f), _wgslsmith_f_op_f32(-global3.a)))), false, Struct_2(_wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(ceil(global3.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a - -251f) * global3.a))), max(-(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 43384i, u_input.a, 61548i), vec4<i32>(17640i, 2147483647i, -2147483647i, 53236i)) & -vec4<i32>(-2147483647i, 1i, 19247i, u_input.a)), vec4<i32>(reverseBits(-27504i), u_input.a, _wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(u_input.b, 31u)], vec3<i32>(33280i, 0i, 2147483647i)), 0i)));
    var var_0 = Struct_4(func_4(Struct_3(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 8289u), vec4<u32>(u_input.b, 34097u, 0u, u_input.b), vec4<u32>(34615u, u_input.b, 9896u, 33265u)), Struct_1(0u == u_input.b, 1f, 1u >> (u_input.b % 32u), 0u >> (1u % 32u), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(291f, 749f)))), global4[_wgslsmith_index_u32(u_input.b, 31u)], Struct_1(all(vec4<bool>(true, false, true, global4[_wgslsmith_index_u32(u_input.b, 31u)])), -1154f, 3147u, ~1u, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global3.a, -370f)))), Struct_1(!global4[_wgslsmith_index_u32(u_input.b, 31u)], _wgslsmith_f_op_f32(global3.a + global3.a), _wgslsmith_sub_u32(26927u, u_input.b), u_input.b, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global3.a, global3.a))))), global4[_wgslsmith_index_u32(9537u, 31u)], Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -631f)), _wgslsmith_mod_vec4_i32(vec4<i32>(firstTrailingBit(12378i), u_input.a, -u_input.a, 1i), select(~vec4<i32>(u_input.a, 26001i, u_input.a, u_input.a), -vec4<i32>(u_input.a, u_input.a, u_input.a, 1i), vec4<bool>(global4[_wgslsmith_index_u32(u_input.b, 31u)], false, false, global4[_wgslsmith_index_u32(u_input.b, 31u)])))), 1000f, u_input.b);
    let var_1 = ~vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(82911u, 69835u, var_0.c), select(vec3<u32>(57930u, u_input.b, 1u), vec3<u32>(1u, 4294967295u, 24036u), global4[_wgslsmith_index_u32(45798u, 31u)])), ~(~vec3<u32>(var_0.c, u_input.b, 39379u))), var_0.c, var_0.c);
    var var_2 = !(!vec2<bool>(any(vec2<bool>(true, false)), true));
    let var_3 = -abs(-(~(~vec2<i32>(2147483647i, -10901i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, -2312f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(934f, 168f, global4[_wgslsmith_index_u32(1u, 31u)])), 1400f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2())))))), var_3.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2129f, 258f)) - vec2<f32>(global3.a, -194f)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1643f, 200f)), _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, global3.a), vec2<f32>(global3.a, 449f)), vec2<bool>(true, true)))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(797f, 182f)))))), vec2<i32>(var_3.x, var_3.x));
}

