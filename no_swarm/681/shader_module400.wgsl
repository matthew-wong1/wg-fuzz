struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_2,
    d: Struct_2,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 21>;

var<private> global1: f32 = -1057f;

var<private> global2: array<bool, 20> = array<bool, 20>(false, true, false, true, true, true, true, true, false, true, false, false, true, true, false, false, true, false, true, false);

var<private> global3: vec3<u32> = vec3<u32>(4644u, 4294967295u, 58224u);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: f32) -> bool {
    let var_0 = Struct_1(select(reverseBits(~88929u), _wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global3.x), global3.yx), global3.x) ^ 2839u, global2[_wgslsmith_index_u32(u_input.a, 20u)]), !(!(!(!vec4<bool>(false, false, true, global2[_wgslsmith_index_u32(1u, 20u)])))), select(vec3<bool>(true, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u >> (global3.x % 32u), u_input.a), 20u)], false), select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 20u)], true), vec3<bool>(global2[_wgslsmith_index_u32(8977u, 20u)], false, true)), select(vec3<bool>(global2[_wgslsmith_index_u32(1u, 20u)], true, false), vec3<bool>(global2[_wgslsmith_index_u32(global3.x, 20u)], true, false), vec3<bool>(true, true, global2[_wgslsmith_index_u32(global3.x, 20u)])), all(vec2<bool>(false, true))), vec3<bool>(true, global2[_wgslsmith_index_u32(min(0u, u_input.a), 20u)], false), true), !global2[_wgslsmith_index_u32(select(max(global3.x, global3.x), 10060u, any(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 20u)], true, true))), 20u)]));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2 * -1000f))) - arg_2) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1155f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-2132f, 568f, true)), -1025f))))));
    var var_1 = vec4<i32>(-countOneBits(u_input.b), -_wgslsmith_sub_i32(-2147483647i & -arg_1.x, -_wgslsmith_mult_i32(arg_1.x, arg_1.x)), arg_1.x, u_input.b);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-245f))) * _wgslsmith_f_op_f32(-arg_2)) * arg_2);
    let var_3 = _wgslsmith_div_vec3_i32(min(arg_1, ~countOneBits(vec3<i32>(41819i, 0i, -60033i))), abs(arg_1)) ^ _wgslsmith_mult_vec3_i32(max(~var_1.xyy, arg_1), arg_1);
    return !(!(!global2[_wgslsmith_index_u32(reverseBits(global3.x), 20u)]));
}

fn func_2() -> i32 {
    global2 = array<bool, 20>();
    let var_0 = vec3<bool>(true, !(!(!global2[_wgslsmith_index_u32(~13737u, 20u)])), func_3(Struct_2(u_input.b), vec3<i32>(u_input.b, u_input.b, ~u_input.b), -981f));
    global0 = array<Struct_4, 21>();
    global1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-287f, 1353f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(617f, 1000f)))))));
    global3 = _wgslsmith_mod_vec3_u32(~abs(~(vec3<u32>(0u, 29009u, 1u) >> (vec3<u32>(51017u, global3.x, 37295u) % vec3<u32>(32u)))), vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 1u, global3.x, 109679u), ~vec4<u32>(global3.x, u_input.a, 46233u, global3.x)) >> (~(~u_input.a) % 32u), global3.x, global3.x));
    return -59308i;
}

fn func_4(arg_0: i32) -> Struct_2 {
    let var_0 = vec4<f32>(1075f, -998f, _wgslsmith_f_op_f32(-710f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1942f + -357f), _wgslsmith_f_op_f32(f32(-1f) * -647f))))), _wgslsmith_f_op_f32(select(649f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2113f - 1f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-904f, -1181f))))), all(vec4<bool>(global2[_wgslsmith_index_u32(global3.x, 20u)] | true, global2[_wgslsmith_index_u32(14220u | u_input.a, 20u)], true, global2[_wgslsmith_index_u32(u_input.a >> (global3.x % 32u), 20u)])))));
    global0 = array<Struct_4, 21>();
    global1 = _wgslsmith_f_op_f32(var_0.x - -2707f);
    let var_1 = global3.x;
    global1 = _wgslsmith_f_op_f32(select(340f, -267f, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(~24124u, max(global3.x, 65072u) << (4294967295u % 32u)), ~(~(~0u))), 20u)]));
    return Struct_2(3842i);
}

fn func_1() -> Struct_2 {
    let var_0 = (u_input.b >> (9472u % 32u)) > 2147483647i;
    var var_1 = -(~_wgslsmith_clamp_i32(-u_input.b, u_input.b, u_input.b) ^ u_input.b);
    let var_2 = func_4(_wgslsmith_sub_i32(func_2(), _wgslsmith_mult_i32(max(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 1i), vec2<i32>(u_input.b, u_input.b)), u_input.b << (1u % 32u)), u_input.b)));
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1090f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1525f + 502f))), 168f)))));
    global1 = _wgslsmith_f_op_f32(-var_3);
    return var_2;
}

fn func_5(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: Struct_3) -> Struct_4 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(global3.x >> (arg_2.b.x % 32u), 1u, 1u)), vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b.x, 0u, u_input.a, 4294967295u), vec4<u32>(32288u, arg_2.b.x, global3.x, arg_2.a.a)), 1u, 50421u)), _wgslsmith_mod_u32(abs(35531u), reverseBits(4294967295u))), 21u)];
    global3 = arg_2.b;
    var var_1 = arg_2.a.c;
    var_1 = select(!arg_2.a.c, select(vec3<bool>(global2[_wgslsmith_index_u32(min(~u_input.a, _wgslsmith_mod_u32(global3.x, arg_2.b.x)), 20u)], false, any(arg_2.a.b)), arg_2.a.c, !vec3<bool>(all(vec4<bool>(arg_2.a.c.x, global2[_wgslsmith_index_u32(4294967295u, 20u)], global2[_wgslsmith_index_u32(global3.x, 20u)], arg_2.a.c.x)), false || var_1.x, 1038f != arg_2.e.x)), true);
    global1 = arg_0.x;
    return global0[_wgslsmith_index_u32(58484u, 21u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-251f, -1117f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-668f, 944f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-776f, -647f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1543f, -1149f) - vec2<f32>(-745f, 2233f)))), !(!select(vec2<bool>(true, true), vec2<bool>(global2[_wgslsmith_index_u32(global3.x, 20u)], global2[_wgslsmith_index_u32(4294967295u, 20u)]), global2[_wgslsmith_index_u32(31171u, 20u)])))), ~_wgslsmith_div_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.b, 0i), vec3<i32>(1i, 48136i, 2147483647i)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 3091i, u_input.b), vec3<i32>(-7931i, -1i, -2147483647i))), Struct_3(Struct_1(1u, !(!vec4<bool>(global2[_wgslsmith_index_u32(0u, 20u)], true, global2[_wgslsmith_index_u32(global3.x, 20u)], global2[_wgslsmith_index_u32(global3.x, 20u)])), select(vec3<bool>(true, global2[_wgslsmith_index_u32(global3.x, 20u)], true), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 20u)], global2[_wgslsmith_index_u32(global3.x, 20u)], false), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 20u)], global2[_wgslsmith_index_u32(82u, 20u)], false))), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(global3.x, u_input.a, global3.x)), ~vec3<u32>(u_input.a, 7215u, global3.x)), func_1(), Struct_2(1i), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1950f, _wgslsmith_f_op_f32(ceil(-851f)), 460f, -1000f) + vec4<f32>(_wgslsmith_f_op_f32(265f - 1527f), 921f, 1000f, _wgslsmith_f_op_f32(f32(-1f) * -333f)))));
    global3 = vec3<u32>(_wgslsmith_add_u32(~_wgslsmith_mult_u32(1u, 4294967295u), 1u), 4294967295u, _wgslsmith_sub_u32(~global3.x, abs(~global3.x))) >> (vec3<u32>(_wgslsmith_mult_u32(~1u, global3.x), global3.x, firstLeadingBit(countOneBits(32215u))) % vec3<u32>(32u));
    var var_1 = u_input.a;
    var var_2 = vec2<u32>(63089u, u_input.a) & global3.yy;
    var_2 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(76370u, select(var_2.x, u_input.a, false), global3.x), u_input.a, ~u_input.a), abs(select(vec3<u32>(global3.x, 4294967295u, var_2.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, var_2.x, u_input.a), vec3<u32>(0u, 4294967295u, 58354u), vec3<u32>(var_2.x, var_2.x, u_input.a)), select(vec3<bool>(true, global2[_wgslsmith_index_u32(global3.x, 20u)], global2[_wgslsmith_index_u32(54608u, 20u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(44385u, 20u)], global2[_wgslsmith_index_u32(1u, 20u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 20u)], false, true))))), ~(~u_input.a));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(147f, -213f)) * -328f);
    let var_3 = Struct_4(var_0.a);
    var_1 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-1592f, _wgslsmith_f_op_f32(round(1462f))));
}

