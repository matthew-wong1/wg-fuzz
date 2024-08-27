struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec3<i32>(0i, -1i, 7446i)), Struct_1(vec3<i32>(-42859i, -2635i, -42335i)), Struct_1(vec3<i32>(-1i, 10398i, -1i)), Struct_1(vec3<i32>(-1i, -38517i, 2147483647i)), Struct_1(vec3<i32>(i32(-2147483648), 45460i, -4501i)), Struct_1(vec3<i32>(1i, -1i, 41740i)), Struct_1(vec3<i32>(-41107i, 1i, -12750i)), Struct_1(vec3<i32>(-17202i, 0i, 1i)), Struct_1(vec3<i32>(0i, -21833i, -1i)), Struct_1(vec3<i32>(-30174i, -99948i, 2147483647i)), Struct_1(vec3<i32>(-18153i, -19054i, 0i)), Struct_1(vec3<i32>(-29005i, 0i, -42088i)), Struct_1(vec3<i32>(28448i, -1i, 1i)), Struct_1(vec3<i32>(-32824i, 42139i, -9145i)), Struct_1(vec3<i32>(2147483647i, 8975i, -16023i)), Struct_1(vec3<i32>(3356i, 1i, -8468i)), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, -31360i)), Struct_1(vec3<i32>(-58283i, i32(-2147483648), 0i)), Struct_1(vec3<i32>(44658i, 1i, i32(-2147483648))), Struct_1(vec3<i32>(29784i, 48140i, -1i)), Struct_1(vec3<i32>(2147483647i, 1816i, i32(-2147483648))), Struct_1(vec3<i32>(-11725i, -32942i, -2036i)), Struct_1(vec3<i32>(-11805i, 0i, -23506i)), Struct_1(vec3<i32>(-36506i, 1i, 1i)), Struct_1(vec3<i32>(10326i, 21701i, 2147483647i)), Struct_1(vec3<i32>(i32(-2147483648), 6645i, i32(-2147483648))), Struct_1(vec3<i32>(3961i, 2147483647i, 2147483647i)), Struct_1(vec3<i32>(0i, i32(-2147483648), 1324i)), Struct_1(vec3<i32>(1i, 0i, 43439i)), Struct_1(vec3<i32>(1i, 73i, 55540i)), Struct_1(vec3<i32>(0i, 27315i, 43618i)));

var<private> global1: array<f32, 23>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>) -> u32 {
    let var_0 = vec4<i32>(u_input.e.x, ~u_input.c.x << (~abs(1u) % 32u), -6943i, 22345i);
    var var_1 = _wgslsmith_clamp_vec3_i32(countOneBits(var_0.xww), vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(29066i, 23033i), vec2<i32>(u_input.c.x, 33591i)), arg_1.yz) & _wgslsmith_clamp_i32(~(-2832i), -26689i, _wgslsmith_clamp_i32(-30993i, u_input.e.x, arg_1.x)), countOneBits(arg_1.x), (0i ^ _wgslsmith_div_i32(0i, u_input.c.x)) >> ((_wgslsmith_clamp_u32(u_input.a.x, u_input.d, 21320u) | max(0u, 1u)) % 32u)), arg_1);
    let var_2 = u_input.b.x;
    var var_3 = Struct_1(~firstTrailingBit(vec3<i32>(-2147483647i, var_0.x, var_0.x) | vec3<i32>(var_0.x, 2147483647i, var_0.x)));
    global0 = array<Struct_1, 31>();
    return _wgslsmith_div_u32(max(var_2, var_2), firstLeadingBit(~(~min(4294967295u, 0u))));
}

fn func_2(arg_0: u32, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = !(!vec4<bool>(false, any(vec4<bool>(true, true, true, true)), min(u_input.e.x, -2147483647i) < ~29687i, true & (11073i != u_input.c.x)));
    var var_1 = u_input.b;
    var var_2 = global0[_wgslsmith_index_u32(func_3(arg_1.x, vec3<i32>(~u_input.e.x, -11393i, u_input.c.x)), 31u)];
    var var_3 = var_2.a;
    let var_4 = ~(~(_wgslsmith_add_vec4_u32(select(vec4<u32>(var_1.x, 1u, 1326u, 1u), vec4<u32>(1u, 51539u, arg_0, 1u), false), ~vec4<u32>(1u, 10850u, var_1.x, 1u)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(92016u, 56133u, arg_0, 16176u), vec4<u32>(12834u, var_1.x, 18499u, var_1.x)) % vec4<u32>(32u))));
    return Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(-u_input.e.x, ~var_3.x, 2147483647i), vec3<i32>(~(~(-2147483647i)), var_3.x, abs(var_3.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(var_3.x, i32(-1i) * -1i, select(u_input.e.x, -28803i, var_0.x)), -vec3<i32>(u_input.c.x, var_3.x, var_2.a.x))));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    var var_0 = func_2(u_input.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.d, 23u)], global1[_wgslsmith_index_u32(21817u, 23u)]), vec2<f32>(global1[_wgslsmith_index_u32(arg_0, 23u)], global1[_wgslsmith_index_u32(u_input.d, 23u)])) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1[_wgslsmith_index_u32(1u, 23u)], -1958f)))))));
    var var_1 = vec4<i32>(var_0.a.x, i32(-1i) * -58129i, -2147483647i, reverseBits(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.a.x, -2147483647i, var_0.a.x), vec3<i32>(u_input.c.x, 5695i, u_input.e.x)), 1i))) & vec4<i32>(~u_input.c.x, firstTrailingBit(-(2147483647i & var_0.a.x)), _wgslsmith_mod_i32(1746i, ~firstLeadingBit(u_input.c.x)), u_input.c.x);
    var_0 = global0[_wgslsmith_index_u32(~61814u, 31u)];
    var var_2 = _wgslsmith_f_op_f32(round(1077f));
    let var_3 = all(vec4<bool>(true, false, true, true));
    return func_2(4294967295u, vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(~4481u), 80901u), 23u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d, 23u)]))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0, 23u)] * global1[_wgslsmith_index_u32(7826u, 23u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0, 23u)] + 1305f))))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = firstTrailingBit(~u_input.b);
    var_0 = u_input.b;
    var_0 = vec3<u32>(_wgslsmith_sub_u32(countOneBits(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(0u, var_0.x, u_input.b.x)), u_input.b)), abs(~reverseBits(41974u))), _wgslsmith_add_u32(var_0.x, 47055u), ~u_input.b.x);
    let var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global1[_wgslsmith_index_u32(73629u, 23u)], global1[_wgslsmith_index_u32(5200u, 23u)]), vec3<f32>(-512f, global1[_wgslsmith_index_u32(4294967295u, 23u)], 339f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 23u)], global1[_wgslsmith_index_u32(var_0.x, 23u)], -601f))))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-500f, global1[_wgslsmith_index_u32(u_input.d, 23u)], global1[_wgslsmith_index_u32(1080u, 23u)]) + vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(var_0.x, 23u)]))) * vec3<f32>(-277f, global1[_wgslsmith_index_u32(var_0.x, 23u)], 335f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, global1[_wgslsmith_index_u32(var_0.x, 23u)], -462f))) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1673f, 535f, global1[_wgslsmith_index_u32(0u, 23u)])))))));
    return _wgslsmith_mult_vec3_u32(~vec3<u32>(~func_3(global1[_wgslsmith_index_u32(u_input.d, 23u)], vec3<i32>(23777i, -2147483647i, -2147483647i)), 1u, max(_wgslsmith_dot_vec3_u32(vec3<u32>(84164u, 4294967295u, u_input.b.x), u_input.b), var_0.x)), _wgslsmith_sub_vec3_u32(u_input.b >> (~_wgslsmith_sub_vec3_u32(u_input.b, u_input.b) % vec3<u32>(32u)), max(u_input.b >> (firstTrailingBit(vec3<u32>(u_input.b.x, 1u, 4294967295u)) % vec3<u32>(32u)), countOneBits(max(u_input.b, u_input.b)))));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: bool) -> vec2<bool> {
    var var_0 = min(~((72073u << (_wgslsmith_mod_u32(arg_0.x, 4294967295u) % 32u)) << (13483u % 32u)), _wgslsmith_mult_u32(_wgslsmith_mod_u32(0u, _wgslsmith_sub_u32(arg_0.x ^ 65870u, arg_0.x >> (arg_0.x % 32u))), max(_wgslsmith_dot_vec2_u32(~u_input.a, select(u_input.b.xx, vec2<u32>(arg_0.x, u_input.b.x), vec2<bool>(arg_1.x, arg_1.x))), ~abs(u_input.a.x))));
    let var_1 = min(20757u, _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 45687u), _wgslsmith_mult_vec2_u32(arg_0.xz, vec2<u32>(arg_0.x, arg_0.x))), select(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(38694u, arg_0.x, arg_0.x)), ~arg_0), 84299u, !arg_2)));
    global0 = array<Struct_1, 31>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(9386u >> (arg_0.x % 32u), 23u)], global1[_wgslsmith_index_u32(94u, 23u)])));
    global0 = array<Struct_1, 31>();
    return select(!vec2<bool>(all(vec4<bool>(true, false, true, arg_1.x)), arg_1.x && (u_input.e.x <= u_input.c.x)), !vec2<bool>(arg_2, arg_2), any(select(!vec4<bool>(false, arg_2, true, true), !vec4<bool>(false, arg_2, arg_1.x, true), false)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 31>();
    var var_0 = ~(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), ~vec2<u32>(1u, 0u)) & _wgslsmith_mult_u32(1u, u_input.a.x)) >> (4294967295u % 32u);
    let var_1 = u_input.a;
    var var_2 = !select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(false, true, true, true)), false), func_5(func_4(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.c.x, 2147483647i), vec3<i32>(u_input.c.x, u_input.c.x, 53212i)), func_1(var_1.x, true, global0[_wgslsmith_index_u32(var_1.x, 31u)])), select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true), any(vec4<bool>(true, true, false, false))), true));
    var var_3 = u_input.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -166f), -1453f)))) - global1[_wgslsmith_index_u32(~var_1.x, 23u)]), ~(~u_input.a >> (~u_input.b.xz % vec2<u32>(32u))) << ((countOneBits(u_input.a) | vec2<u32>(_wgslsmith_clamp_u32(0u, var_1.x, 89359u), ~var_1.x)) % vec2<u32>(32u)), u_input.c.x, _wgslsmith_dot_vec3_u32(~u_input.b, u_input.b), (((u_input.b & vec3<u32>(var_1.x, var_1.x, u_input.a.x)) >> (u_input.b % vec3<u32>(32u))) >> (u_input.b % vec3<u32>(32u))) | u_input.b);
}

