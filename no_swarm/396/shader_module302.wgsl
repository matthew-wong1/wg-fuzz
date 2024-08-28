struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<f32, 14>;

var<private> global2: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(-1419f, -1000f, 911f), vec3<f32>(1000f, 221f, 260f), vec3<f32>(1347f, -1365f, 190f), vec3<f32>(-187f, 1000f, -353f), vec3<f32>(-794f, 450f, 125f), vec3<f32>(-1101f, 449f, 107f), vec3<f32>(1116f, 822f, 149f), vec3<f32>(-1294f, 1646f, 334f));

var<private> global3: array<i32, 27> = array<i32, 27>(0i, 34455i, -1i, 2147483647i, 2579i, 28029i, 2147483647i, 1776i, 1i, 501i, i32(-2147483648), 0i, 2058i, 1i, 26101i, 15322i, 1i, -11885i, 2147483647i, 0i, -9577i, -33096i, -17381i, 23291i, 1i, 59236i, -1i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(~65960u, 13233u), 14u)], -1167f)) == _wgslsmith_f_op_f32(-1000f - global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, _wgslsmith_clamp_u32(0u, ~4294967295u, reverseBits(126990u))), 14u)]);
    var var_1 = countOneBits(33675i) < firstLeadingBit(u_input.a);
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~(~1u), 14u)]), 810f, _wgslsmith_div_f32(-328f, 1410f)));
    var var_3 = Struct_1(1u, all(vec3<bool>(var_0 && true, false, -14922i >= -global3[_wgslsmith_index_u32(6417u, 27u)])), ~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global3[_wgslsmith_index_u32(4294967295u, 27u)], u_input.a, 2147483647i), ~vec4<i32>(20449i, -1i, -5689i, u_input.a)), u_input.a, max(15724i, firstTrailingBit(31574i)), 2147483647i));
    global1 = array<f32, 14>();
    return var_3.c.xx;
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = false;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1292f, global1[_wgslsmith_index_u32(4294967295u ^ arg_3.a, 14u)], arg_2.x, 1165f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(645f, -1594f, 1075f, global1[_wgslsmith_index_u32(3573u, 14u)])))))))));
    global0 = ~2147483647i;
    var var_2 = arg_0;
    var_0 = true;
    return vec4<bool>(arg_3.b, arg_3.b, false, arg_3.b);
}

fn func_5(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_1) -> u32 {
    var var_0 = arg_3.a;
    let var_1 = arg_3.c;
    global2 = array<vec3<f32>, 8>();
    let var_2 = abs(~(~_wgslsmith_mod_u32(0u, 65351u)));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(357f, global1[_wgslsmith_index_u32(arg_3.a, 14u)])), 1f)) * arg_1.zz);
    return ~select(1u, 4294967295u, arg_0.x);
}

fn func_2() -> bool {
    var var_0 = !(!vec4<bool>(select(true, true, true), true, _wgslsmith_f_op_f32(f32(-1f) * -573f) >= global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(64350u, 50179u, 4294967295u), 14u)], false));
    let var_1 = -vec2<i32>(global3[_wgslsmith_index_u32(func_5(func_4(func_3(), 1u, _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 14u)], global1[_wgslsmith_index_u32(0u, 14u)]) - vec2<f32>(global1[_wgslsmith_index_u32(0u, 14u)], global1[_wgslsmith_index_u32(45992u, 14u)])), Struct_1(4294967295u, var_0.x, vec4<i32>(-11335i, -1877i, global3[_wgslsmith_index_u32(44309u, 27u)], 1i))), global2[_wgslsmith_index_u32(~0u, 8u)], max(select(-28275i, u_input.a, var_0.x), -u_input.a), Struct_1(13738u, var_0.x || var_0.x, ~vec4<i32>(global3[_wgslsmith_index_u32(131027u, 27u)], 8976i, 2147483647i, u_input.a))), 27u)], u_input.a);
    var var_2 = _wgslsmith_mult_u32(10922u, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)) & ~reverseBits(abs(0u)));
    var var_3 = Struct_1(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(30247u, 4294967295u), ~vec2<u32>(54960u, 49654u)), _wgslsmith_add_u32(15073u, firstLeadingBit(0u))), !(!(!var_0.x) == var_0.x), -abs(-vec4<i32>(u_input.a, u_input.a, -1i, global3[_wgslsmith_index_u32(60253u, 27u)])));
    let var_4 = 1f;
    return any(vec2<bool>(var_0.x, true));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool) -> vec3<f32> {
    global2 = array<vec3<f32>, 8>();
    let var_0 = 4294967295u;
    let var_1 = 672f;
    global1 = array<f32, 14>();
    let var_2 = !select(vec3<bool>(true, var_0 != arg_0.x, true), !vec3<bool>(true || arg_1, func_2(), false), !(!select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(false, true, arg_1), true)));
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1))), -212f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(31824u, arg_0.x, arg_0.x, 60281u)), 14u)]))))));
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<bool>) -> i32 {
    let var_0 = vec2<i32>(1i, arg_1.c.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 14u)]), _wgslsmith_f_op_f32(arg_0.x + 283f), -901f, _wgslsmith_f_op_f32(f32(-1f) * -1594f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(71051u, 14u)])), arg_0.x, all(vec3<bool>(arg_2.x, arg_2.x, true)))), 1018f, global1[_wgslsmith_index_u32(~abs(arg_1.a), 14u)])))));
    let var_2 = Struct_1(func_5(select(vec4<bool>(false, arg_1.b, false, all(arg_2)), !vec4<bool>(arg_1.b, true, arg_1.b, arg_1.b), arg_1.b), _wgslsmith_f_op_vec3_f32(ceil(global2[_wgslsmith_index_u32(arg_1.a, 8u)])), u_input.a, Struct_1(_wgslsmith_mult_u32(arg_1.a ^ 4294967295u, abs(arg_1.a)), !(u_input.a == u_input.a), min(-vec4<i32>(-37624i, 5915i, arg_1.c.x, u_input.a), _wgslsmith_mod_vec4_i32(arg_1.c, arg_1.c)))), arg_2.x, vec4<i32>(var_0.x, 2147483647i, 18510i, -_wgslsmith_mod_i32(max(u_input.a, var_0.x), ~var_0.x)));
    var var_3 = ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(abs(8097u), var_2.a, 0u), abs(vec3<u32>(0u, var_2.a, var_2.a) ^ vec3<u32>(arg_1.a, var_2.a, var_2.a))));
    let var_4 = -global3[_wgslsmith_index_u32(1u, 27u)];
    return 11516i;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 27>();
    global0 = ~func_6(_wgslsmith_f_op_vec3_f32(func_1(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(0u, 0u, 39187u)), _wgslsmith_dot_vec2_u32(vec2<u32>(39155u, 5142u), vec2<u32>(0u, 23272u)), ~57706u, 1u), (-1644i <= global3[_wgslsmith_index_u32(4294967295u, 27u)]) | true)), Struct_1(~1u, true, countOneBits(vec4<i32>(0i, u_input.a, 1i, u_input.a))), vec2<bool>(true, true));
    global3 = array<i32, 27>();
    let var_0 = Struct_1(0u, !all(vec3<bool>(true, all(vec3<bool>(true, false, true)), true)), vec4<i32>(max(global3[_wgslsmith_index_u32(22150u, 27u)], i32(-1i) * -14870i), ~(1i | global3[_wgslsmith_index_u32(21969u, 27u)]), -func_3().x << (0u % 32u), _wgslsmith_add_i32(u_input.a, 26811i)));
    let var_1 = firstLeadingBit(reverseBits(_wgslsmith_clamp_vec2_u32(~(~vec2<u32>(30312u, var_0.a)), reverseBits(vec2<u32>(var_0.a, var_0.a)), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.a, 34024u) >> (vec2<u32>(4294967295u, 66611u) % vec2<u32>(32u)), ~vec2<u32>(var_0.a, 1u)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1120f)));
    let var_3 = true;
    global2 = array<vec3<f32>, 8>();
    let var_4 = !vec3<bool>(true, var_0.b, !var_3);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-1602f, 480f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(step(var_2, -800f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(19205u, 14u)] - -828f), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(4294967295u, 14u)])))) + var_2)), global2[_wgslsmith_index_u32(29018u, 8u)], -198f, ~vec3<i32>(21569i, _wgslsmith_div_i32(~var_0.c.x, u_input.a << (var_1.x % 32u)), firstLeadingBit(u_input.a)));
}

