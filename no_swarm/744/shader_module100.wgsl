struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(Struct_1(vec3<i32>(0i, i32(-2147483648), -5664i), -577f, vec3<i32>(58082i, i32(-2147483648), 1i))), Struct_2(Struct_1(vec3<i32>(1i, 0i, 37240i), -1000f, vec3<i32>(-1i, 2147483647i, 2147483647i))));

var<private> global1: array<vec4<f32>, 2>;

var<private> global2: array<vec3<bool>, 10> = array<vec3<bool>, 10>(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false));

var<private> global3: array<vec2<i32>, 25>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<u32>) -> i32 {
    global0 = array<Struct_2, 2>();
    return -(~(-1i));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: i32, arg_3: f32) -> Struct_1 {
    return Struct_1(vec3<i32>(15207i, ~arg_2 ^ func_3(vec3<u32>(4294967295u, u_input.b, u_input.b)), _wgslsmith_mod_i32(2147483647i, -arg_2)), 467f, -select(max(vec3<i32>(-1i, -2147483647i, arg_2), arg_0.c), vec3<i32>(~0i, arg_0.a.x, arg_2), any(global2[_wgslsmith_index_u32(~u_input.c, 10u)])));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_3) -> Struct_3 {
    global2 = array<vec3<bool>, 10>();
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(global1[_wgslsmith_index_u32(~(~u_input.a), 2u)]));
    let var_1 = vec4<bool>(true, false, false, arg_0.x);
    var var_2 = arg_3;
    var var_3 = arg_1;
    return arg_3;
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    let var_0 = !select(select(!select(global2[_wgslsmith_index_u32(1851u, 10u)], vec3<bool>(false, true, true), true), select(global2[_wgslsmith_index_u32(4333u, 10u)], vec3<bool>(true, true, true), global2[_wgslsmith_index_u32(0u, 10u)]), !(!global2[_wgslsmith_index_u32(u_input.a, 10u)])), vec3<bool>(true == any(vec4<bool>(true, false, true, false)), reverseBits(-72284i) != ~arg_0.a, true), vec3<bool>(true, true, true));
    var var_1 = Struct_2(Struct_1(vec3<i32>(55119i, 0i, 2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -907f) * _wgslsmith_f_op_f32(f32(-1f) * -1917f))), firstLeadingBit(vec3<i32>(arg_0.a, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a, arg_0.a, arg_0.a, 48828i), vec4<i32>(arg_0.a, arg_0.a, 2147483647i, 19644i)), 2325i))));
    global0 = array<Struct_2, 2>();
    var_1 = Struct_2(Struct_1(-var_1.a.c, _wgslsmith_f_op_f32(trunc(var_1.a.b)), var_1.a.a & min(vec3<i32>(var_1.a.c.x, 1i, var_1.a.c.x), ~vec3<i32>(2147483647i, -7329i, arg_0.a))));
    global1 = array<vec4<f32>, 2>();
    return Struct_1(countOneBits(vec3<i32>(func_4(select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, false, var_0.x, true)), var_1.a, ~arg_0.a, Struct_3(-1i)).a, -5649i, var_1.a.a.x)), -132f, var_1.a.c);
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_2 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(-231f, -569f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1 * arg_1), -228f, false))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -846f) + -404f)));
    let var_1 = 42474i;
    var var_2 = global0[_wgslsmith_index_u32(2681u, 2u)];
    global1 = array<vec4<f32>, 2>();
    var var_3 = -((_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.a.a.x, -45456i, arg_0, arg_0), vec4<i32>(30296i, -2147483647i, var_2.a.a.x, -5349i)), _wgslsmith_div_vec4_i32(vec4<i32>(38183i, arg_0, 24008i, -28618i), vec4<i32>(-3535i, arg_0, -20673i, 1i))) | vec4<i32>(~1i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.a.c.x, var_1), var_2.a.a.zz), ~var_1, 43860i)) & firstLeadingBit(-vec4<i32>(-1i, var_2.a.c.x, var_2.a.a.x, 1i)));
    return Struct_2(func_5(func_4(vec4<bool>(true, true, true, true), func_2(var_2.a, global1[_wgslsmith_index_u32(u_input.c, 2u)], abs(var_2.a.a.x), var_0), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1, arg_0, 23794i, var_1), vec4<i32>(0i, 11146i, var_2.a.c.x, 639i)), -vec4<i32>(var_1, var_1, var_1, 2147483647i)), Struct_3(1i))));
}

fn func_6(arg_0: Struct_2) -> bool {
    global2 = array<vec3<bool>, 10>();
    var var_0 = vec4<f32>(-1021f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.b) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(func_1(2147483647i, -452f).a.b)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.a.b)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.b), arg_0.a.b), -1220f);
    let var_1 = max(firstLeadingBit(~vec4<u32>(24716u, 1u, ~u_input.d, ~u_input.d)), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(select(~vec4<u32>(17477u, 76087u, u_input.b, u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.a, 1u), vec4<u32>(37260u, 4294967295u, 86491u, 1u)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), false)), ~firstTrailingBit(vec4<u32>(86462u, u_input.b, 0u, u_input.a))), vec4<u32>(u_input.d, 118718u, 60217u ^ _wgslsmith_mod_u32(u_input.a, 1u), ~1u)));
    let var_2 = ~_wgslsmith_dot_vec4_u32(~max(var_1, ~vec4<u32>(var_1.x, u_input.e.x, 103588u, u_input.e.x)), vec4<u32>(min(~1u, firstLeadingBit(u_input.c)), var_1.x, var_1.x, ~select(29922u, 1u, true)));
    var var_3 = arg_0.a.c.x;
    return firstTrailingBit(arg_0.a.a.x << (~4294967295u % 32u)) > ~min(abs(func_3(var_1.xxz)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(arg_0.a.c.x, -44734i), 47594i));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<i32>, 25>();
    var var_0 = true;
    var_0 = !all(vec2<bool>(any(global2[_wgslsmith_index_u32(u_input.d, 10u)]), true)) && !func_6(func_1(~2147483647i, 723f));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1620f)))));
    global3 = array<vec2<i32>, 25>();
    global2 = array<vec3<bool>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(min(vec2<i32>(_wgslsmith_mult_i32(3891i, func_1(45381i, var_1).a.a.x), -23281i), global3[_wgslsmith_index_u32(0u, 25u)]), _wgslsmith_sub_u32(reverseBits(u_input.c), u_input.c << (u_input.b % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1, var_1))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, 995f)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(438f, var_1)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1650f, -1012f))))), u_input.b, func_4(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true)), all(vec2<bool>(true, false))), false), Struct_1(countOneBits(-vec3<i32>(2147483647i, 0i, 36668i)), func_2(Struct_1(vec3<i32>(0i, 1i, 34663i), 703f, vec3<i32>(21197i, 0i, -29852i)), vec4<f32>(var_1, var_1, -497f, 274f), ~17186i, _wgslsmith_f_op_f32(var_1 + 641f)).b, -func_1(-1i, var_1).a.c), ~1i, func_4(vec4<bool>(true, true, true, true), func_1(min(-2147483647i, 0i), _wgslsmith_f_op_f32(var_1 * var_1)).a, -(i32(-1i) * -2147483647i), Struct_3(reverseBits(2580i)))).a);
}

