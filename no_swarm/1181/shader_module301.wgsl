struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: i32,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec2<u32>, arg_1: i32) -> i32 {
    global0 = array<u32, 2>();
    return 24775i;
}

fn func_2(arg_0: i32) -> Struct_2 {
    global0 = array<u32, 2>();
    global0 = array<u32, 2>();
    return Struct_2(vec4<bool>(true, any(vec2<bool>(true, true)), false, any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), Struct_1(vec3<bool>(true, false, true), 0i, _wgslsmith_clamp_i32(2147483647i, -1i, u_input.c), -33688i));
}

fn func_3(arg_0: f32) -> Struct_2 {
    var var_0 = any(select(vec3<bool>(true, select(true, true, true), false), func_2(u_input.a.x).a.wwy, !func_2(u_input.c).b.a));
    var var_1 = Struct_1(!select(vec3<bool>(true, true, func_2(0i).a.x), vec3<bool>(true, true, true), true | (35830u > global0[_wgslsmith_index_u32(0u, 2u)])), -u_input.c ^ ~(u_input.c >> (4294967295u % 32u)), countOneBits(1i | ~u_input.c), i32(-1i) * -1i);
    var_1 = func_2(-reverseBits(func_1(vec2<u32>(1580u, u_input.b), 2147483647i))).b;
    let var_2 = var_1.a.x;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-677f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -527f))) + _wgslsmith_f_op_f32(abs(arg_0))));
    return Struct_2(vec4<bool>(any(vec3<bool>(true, true, true)), all(select(func_2(u_input.c).a, select(vec4<bool>(false, true, false, true), vec4<bool>(var_1.a.x, var_1.a.x, false, var_1.a.x), vec4<bool>(true, true, false, var_1.a.x)), var_1.a.x)), ~_wgslsmith_sub_i32(var_1.b, var_1.c) == _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, var_1.d, u_input.a.x), vec3<i32>(var_1.d, u_input.a.x, u_input.c)), ~(-37101i)), all(var_1.a)), Struct_1(var_1.a, _wgslsmith_mod_i32(-_wgslsmith_add_i32(-1i, 32928i), -2584i), 2147483647i, ~_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a.x, -61380i)), firstTrailingBit(u_input.a))));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec2<i32>) -> Struct_3 {
    var var_0 = arg_0.a;
    var var_1 = func_2(arg_1).b.a.x;
    var var_2 = var_0.a.x & all(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 2u)] >= 3951u, !arg_0.a.a.x, all(vec2<bool>(false, false))));
    var var_3 = arg_0.a;
    let var_4 = Struct_1(!func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-666f * -459f))).a.www, arg_2.x, -reverseBits(-17897i), 2147483647i);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_3(func_2(min(func_1(vec2<u32>(global0[_wgslsmith_index_u32(79311u, 2u)], 32812u), u_input.a.x), u_input.c)), ~(~(~u_input.b)), u_input.a.x, ~(-(u_input.c & u_input.a.x)), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -605f)))), 31687i, u_input.a);
    var_0 = func_4(Struct_3(Struct_2(!(!var_0.a.a), Struct_1(select(vec3<bool>(var_0.a.b.a.x, false, var_0.e.a.x), vec3<bool>(false, true, true), var_0.a.b.a), -1i, _wgslsmith_clamp_i32(20846i, 2147483647i, u_input.a.x), func_3(1000f).b.c)), _wgslsmith_dot_vec2_u32(min(vec2<u32>(4294967295u, u_input.b) | vec2<u32>(4294967295u, var_0.b), _wgslsmith_sub_vec2_u32(vec2<u32>(45153u, u_input.b), vec2<u32>(4294967295u, u_input.b))), ~(~vec2<u32>(var_0.b, 90147u))), u_input.c, -1i ^ -var_0.a.b.b, Struct_2(vec4<bool>(var_0.a.a.x, !var_0.e.b.a.x, func_4(Struct_3(var_0.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 2u)], 2u)], -23508i, 12134i, var_0.a), -41342i, vec2<i32>(2147483647i, u_input.a.x)).a.a.x, false), Struct_1(select(vec3<bool>(var_0.a.a.x, var_0.e.a.x, var_0.e.b.a.x), var_0.a.a.zyz, vec3<bool>(var_0.e.a.x, var_0.a.b.a.x, false)), _wgslsmith_add_i32(var_0.e.b.d, -2210i), u_input.a.x, var_0.d))), var_0.e.b.d, -countOneBits(firstLeadingBit(u_input.a)) & vec2<i32>(-2147483647i, -2147483647i));
    var_0 = Struct_3(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(701f - -1799f))), firstTrailingBit(_wgslsmith_dot_vec4_u32(min(vec4<u32>(global0[_wgslsmith_index_u32(0u, 2u)], 51595u, 13369u, global0[_wgslsmith_index_u32(u_input.b, 2u)]), vec4<u32>(0u, var_0.b, 4294967295u, var_0.b)), max(vec4<u32>(60536u, 7201u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.b, 2u)], 2u)], 2u)]), vec4<u32>(25199u, 1881u, 1u, 37514u))) & u_input.b), var_0.e.b.c, _wgslsmith_dot_vec4_i32(select(vec4<i32>(var_0.d, var_0.d, _wgslsmith_mult_i32(var_0.d, -2147483647i), var_0.e.b.c), countOneBits(vec4<i32>(17493i, -20041i, var_0.e.b.d, u_input.c)), var_0.a.a), reverseBits(abs(~vec4<i32>(var_0.d, 40294i, 0i, 2147483647i)))), var_0.a);
    var_0 = Struct_3(Struct_2(var_0.a.a, Struct_1(vec3<bool>(true, var_0.a.a.x, any(vec3<bool>(var_0.e.a.x, false, true))), func_4(Struct_3(Struct_2(var_0.e.a, var_0.e.b), 4294967295u, -1i, -23613i, Struct_2(vec4<bool>(var_0.e.a.x, var_0.e.a.x, false, false), var_0.e.b)), 2286i, vec2<i32>(var_0.a.b.d, -1i)).e.b.c >> (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global0[_wgslsmith_index_u32(1u, 2u)]), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.b, 2u)], 2u)], 2u)], 9172u)) % 32u), min(u_input.c, _wgslsmith_div_i32(-2652i, 742i)), -14708i)), _wgslsmith_add_u32(reverseBits(global0[_wgslsmith_index_u32(~u_input.b, 2u)]), _wgslsmith_mod_u32(func_4(Struct_3(var_0.e, var_0.b, -14398i, u_input.c, Struct_2(vec4<bool>(var_0.a.b.a.x, var_0.a.b.a.x, var_0.e.b.a.x, false), Struct_1(var_0.a.b.a, -2147483647i, u_input.a.x, var_0.e.b.b))), -u_input.a.x, select(u_input.a, vec2<i32>(-45250i, u_input.a.x), false)).b, _wgslsmith_mult_u32(countOneBits(4294967295u), var_0.b))), _wgslsmith_dot_vec2_i32(-_wgslsmith_mult_vec2_i32(u_input.a << (vec2<u32>(u_input.b, 5318u) % vec2<u32>(32u)), vec2<i32>(-2147483647i, -2147483647i)), u_input.a), var_0.d, func_2(u_input.a.x));
    var var_1 = select(select(var_0.a.b.a.zz, !(!(!var_0.a.a.xw)), var_0.a.a.zy), vec2<bool>(true, var_0.e.a.x), all(func_3(500f).a.yy) & !any(!vec3<bool>(true, true, var_0.a.b.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(449f, 1000f)), -1488f)) * -184f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(527f, 870f, 508f), vec3<f32>(-991f, -1589f, -763f))))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-930f, 1000f, 1617f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-188f))))), _wgslsmith_f_op_f32(564f * -2461f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(2357f, -1357f)), -1025f)))), min(firstLeadingBit(26292u), 0u | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~27897u, 2u)], 2u)]));
}

