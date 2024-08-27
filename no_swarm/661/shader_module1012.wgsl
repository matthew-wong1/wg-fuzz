struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<bool, 16> = array<bool, 16>(false, true, false, false, true, false, false, false, false, false, false, false, false, false, true, true);

var<private> global2: array<vec2<u32>, 26>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: bool) -> u32 {
    var var_0 = ~(~(u_input.c.xzx >> (select(vec3<u32>(u_input.e.x, 1u, u_input.d), vec3<u32>(71959u, 4294967295u, u_input.b.x), arg_2) % vec3<u32>(32u)))) << (firstTrailingBit(u_input.c.wzw) % vec3<u32>(32u));
    global0 = Struct_4(Struct_1(false, any(select(!vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 16u)], false, true), !vec4<bool>(true, true, arg_2, false), arg_1))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-915f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(316f)) + _wgslsmith_f_op_f32(f32(-1f) * -369f)))));
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(2099f)), -395f), _wgslsmith_f_op_f32(-320f * -499f)));
    var var_3 = arg_2;
    return 4294967295u | _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.c.x, var_0.x, u_input.b.x | ~u_input.c.x), max(select(reverseBits(u_input.e.xyy), vec3<u32>(15551u, 19206u, 1u), select(vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 16u)], false, global1[_wgslsmith_index_u32(var_0.x, 16u)]), vec3<bool>(true, true, true), vec3<bool>(global0.a.b, global1[_wgslsmith_index_u32(0u, 16u)], global0.a.a))), countOneBits(vec3<u32>(40031u, var_0.x, u_input.b.x))));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_3) -> bool {
    let var_0 = ~u_input.a.xw & -firstTrailingBit(_wgslsmith_add_vec2_i32(~vec2<i32>(arg_2.a, 2147483647i), -u_input.a.xx));
    let var_1 = vec3<u32>(81628u, u_input.d ^ ~u_input.e.x, _wgslsmith_mod_u32(firstTrailingBit(u_input.d), u_input.c.x));
    var var_2 = arg_2;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-431f - 1114f) * _wgslsmith_f_op_f32(ceil(653f)))))) * _wgslsmith_f_op_f32(1475f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_f_op_f32(abs(-583f))))));
    let var_4 = global2[_wgslsmith_index_u32(94594u, 26u)];
    return select(true, true, any(vec4<bool>(!(true || global0.a.a), false, global0.a.b, arg_0)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_3) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-637f, 184f, 1828f, 1662f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(661f, 256f, -463f, 432f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-307f, 181f, -209f, -211f)))))));
}

fn func_2() -> vec3<bool> {
    var var_0 = global0.a.b;
    var var_1 = _wgslsmith_mod_vec3_u32(u_input.e.wxx, u_input.c.wzy) | vec3<u32>(~(u_input.e.x ^ ~25333u), ~(u_input.d | 1u), _wgslsmith_sub_u32(u_input.c.x, ~(~u_input.d)));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(vec4<bool>(true, global0.a.a, true, false), Struct_1(true, func_3(global0.a.a, vec2<f32>(-629f, 923f), Struct_3(u_input.a.x, u_input.a.x, Struct_1(false, false), global0.a, u_input.a.x))), Struct_4(global0.a), Struct_3(-u_input.a.x, -u_input.a.x, global0.a, Struct_1(global1[_wgslsmith_index_u32(u_input.c.x, 16u)], global0.a.a), u_input.a.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1758f, -1514f, 234f, -1930f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1583f, -1009f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -975f) * -2998f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(714f - 473f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1252f - -198f), _wgslsmith_f_op_f32(floor(729f)))))));
    return select(select(!(!vec3<bool>(global1[_wgslsmith_index_u32(31987u, 16u)], false, global0.a.a)), select(select(select(vec3<bool>(global0.a.a, true, global1[_wgslsmith_index_u32(u_input.c.x, 16u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 16u)], global0.a.b), vec3<bool>(false, true, global0.a.b)), vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 16u)], global1[_wgslsmith_index_u32(0u, 16u)], false), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 16u)], false, true)), !select(vec3<bool>(global0.a.a, false, global0.a.a), vec3<bool>(global0.a.a, global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(var_1.x, 16u)]), false), -u_input.a.x <= 1i), global0.a.b), select(vec3<bool>(true, true, any(!vec2<bool>(true, global0.a.b))), vec3<bool>(!(!global0.a.b), !(u_input.a.x != 2147483647i), global0.a.a), select(select(vec3<bool>(true, false, global1[_wgslsmith_index_u32(1u, 16u)]), vec3<bool>(true, true, true), !vec3<bool>(true, global0.a.a, global0.a.b)), vec3<bool>(u_input.e.x < 0u, global0.a.a, true), true)), all(select(!vec4<bool>(true, false, global1[_wgslsmith_index_u32(var_1.x, 16u)], false), !vec4<bool>(false, global1[_wgslsmith_index_u32(var_1.x, 16u)], true, global1[_wgslsmith_index_u32(u_input.e.x, 16u)]), vec4<bool>(true, true, true, true))) & global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, var_1.x), 16u)]);
}

fn func_5(arg_0: vec3<u32>, arg_1: f32, arg_2: i32, arg_3: Struct_3) -> Struct_4 {
    global0 = Struct_4(Struct_1(false, false));
    let var_0 = Struct_4(arg_3.d);
    var var_1 = _wgslsmith_mult_vec3_i32(abs(u_input.a.xyz), countOneBits(abs(u_input.a.wyw)));
    var var_2 = arg_1;
    let var_3 = ~abs(3888i);
    return Struct_4(Struct_1(any(select(vec2<bool>(true, true), vec2<bool>(var_0.a.a, true), vec2<bool>(global0.a.b, true))), any(!(!vec3<bool>(global1[_wgslsmith_index_u32(14128u, 16u)], var_0.a.a, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(~58847u, u_input.e.x, global1[_wgslsmith_index_u32(countOneBits(u_input.e.x), 16u)]) | 86315u;
    global0 = func_5(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, var_0) & ~vec2<u32>(69062u, var_0), u_input.c.ww), func_1(_wgslsmith_mult_vec2_i32(reverseBits(u_input.a.xw), min(u_input.a.zw, vec2<i32>(63560i, u_input.a.x))), false, !(!global1[_wgslsmith_index_u32(62208u, 16u)])), ~abs(abs(var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(758f * -1844f) + -211f)))), 1i, Struct_3(u_input.a.x | 1i, -32015i, Struct_1(any(func_2()), !all(vec4<bool>(global1[_wgslsmith_index_u32(54325u, 16u)], global1[_wgslsmith_index_u32(9724u, 16u)], false, global0.a.a))), global0.a, select(min(u_input.a.x, u_input.a.x) | min(-76590i, u_input.a.x), abs(u_input.a.x << (8508u % 32u)), (0i >> (u_input.c.x % 32u)) <= u_input.a.x)));
    let var_1 = -27835i;
    global2 = array<vec2<u32>, 26>();
    let var_2 = vec2<i32>(var_1, u_input.a.x >> (1u % 32u));
    global0 = func_5(u_input.e.yzw, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1143f)))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(558f, 432f), _wgslsmith_f_op_f32(ceil(-1475f))))))), var_1, Struct_3(select(_wgslsmith_clamp_i32(firstTrailingBit(u_input.a.x), max(var_1, u_input.a.x), ~(-1849i)), -abs(-12914i), true), firstLeadingBit(43295i), global0.a, Struct_1((4294967295u >> (u_input.c.x % 32u)) < var_0, !(!global1[_wgslsmith_index_u32(u_input.e.x, 16u)])), var_1));
    global0 = func_5(~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(38434u, u_input.d), ~vec2<u32>(1091u, u_input.e.x)), _wgslsmith_mult_u32(_wgslsmith_mod_u32(var_0, 0u), _wgslsmith_mod_u32(var_0, var_0)), _wgslsmith_mult_u32(var_0, ~42311u)), 691f, _wgslsmith_dot_vec4_i32(u_input.a, -vec4<i32>(var_2.x, 62573i, var_1, var_1)) ^ var_2.x, Struct_3(select(var_2.x, 46944i, true), 8454i, func_5(~(u_input.c.wwz << (u_input.e.wzw % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -300f)), u_input.a.x, Struct_3(57192i | var_1, _wgslsmith_div_i32(23587i, u_input.a.x), func_5(vec3<u32>(45657u, u_input.c.x, u_input.d), 899f, -39729i, Struct_3(2147483647i, u_input.a.x, global0.a, Struct_1(false, global0.a.a), var_2.x)).a, global0.a, 0i)).a, Struct_1(!global0.a.a, true), abs(countOneBits(27826i))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_u32(u_input.c.x, ~19823u, abs(var_0)), var_0);
}

