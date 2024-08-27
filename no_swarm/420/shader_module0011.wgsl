struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(true, true, true, true, true, true, false, false, false, false, false, false, false, true, true, false, false, false, false, false, true, false, false, false, false, true, false, true, true, false, true, true);

var<private> global1: array<bool, 23> = array<bool, 23>(true, true, false, true, true, true, true, false, true, false, false, false, true, true, false, false, false, true, false, false, true, true, true);

var<private> global2: array<vec4<i32>, 10> = array<vec4<i32>, 10>(vec4<i32>(2147483647i, 0i, 0i, -1i), vec4<i32>(37661i, 18749i, 2147483647i, 2794i), vec4<i32>(-31043i, i32(-2147483648), 2147483647i, 1181i), vec4<i32>(2147483647i, 42158i, 30410i, 9407i), vec4<i32>(2147483647i, i32(-2147483648), -1i, 0i), vec4<i32>(2147483647i, -13098i, -33106i, 0i), vec4<i32>(25283i, -16927i, -1i, i32(-2147483648)), vec4<i32>(-25209i, 49278i, 2147483647i, -1i), vec4<i32>(-13463i, i32(-2147483648), -25492i, 28142i), vec4<i32>(2147483647i, -78986i, -13170i, -6528i));

var<private> global3: Struct_2;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = Struct_2(global3.a, global3.b, ~vec4<u32>(reverseBits(1u), ~10055u, ~0u, global3.b ^ global3.a) | global3.c, global3.d);
    let var_1 = vec2<u32>(min(~(~_wgslsmith_add_u32(1u, 41191u)), global3.c.x), var_0.b);
    var var_2 = Struct_2(~var_0.d.b, ~max(0u >> (firstTrailingBit(var_0.d.b) % 32u), var_1.x), var_0.c, Struct_1(~_wgslsmith_sub_u32(~19054u, countOneBits(global3.c.x)), abs(~global3.b)));
    global1 = array<bool, 23>();
    let var_3 = ~reverseBits(~(reverseBits(var_1.x) << (_wgslsmith_sub_u32(var_0.c.x, 1u) % 32u)));
    return 42588u;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: u32) -> vec4<i32> {
    var var_0 = (~0i >> (~(arg_0 | (arg_2 ^ arg_2)) % 32u)) & (-1i >> (arg_2 % 32u));
    let var_1 = global3.c.zyy;
    let var_2 = _wgslsmith_f_op_f32(trunc(1373f));
    let var_3 = 0u;
    var var_4 = vec4<u32>(~var_1.x, func_3(), abs(~4294967295u & ~var_1.x), ~var_1.x);
    return firstTrailingBit(vec4<i32>(i32(-1i) * -u_input.a.x, u_input.a.x, select(-u_input.a.x, firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-28210i, 992i, 9844i), vec3<i32>(1i, 0i, u_input.a.x))), all(vec4<bool>(false, global0[_wgslsmith_index_u32(var_1.x, 32u)], false, true))), firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), -2147483647i ^ u_input.a.x))));
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: vec4<bool>) -> vec4<i32> {
    global3 = Struct_2(~(abs(global3.a) | ~firstTrailingBit(global3.c.x)), global3.b, firstTrailingBit((_wgslsmith_add_vec4_u32(global3.c, global3.c) & global3.c) ^ ~(global3.c & vec4<u32>(9823u, 4294967295u, global3.a, 21742u))), global3.d);
    let var_0 = global3.b;
    let var_1 = -884f;
    let var_2 = global3.d;
    var var_3 = Struct_2(var_2.a, ~var_2.a, global3.c, global3.d);
    return vec4<i32>(1i, abs(arg_1.x), ~(~arg_0), 17913i);
}

fn func_1(arg_0: i32, arg_1: vec4<f32>) -> vec4<bool> {
    let var_0 = ~vec4<i32>(arg_0, arg_0, u_input.a.x, u_input.a.x) | -vec4<i32>(52779i, countOneBits(-32846i), arg_0, u_input.a.x);
    var var_1 = ~_wgslsmith_add_vec4_i32(func_4(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, var_0.x, arg_0, 58082i), ~var_0), func_2(_wgslsmith_add_u32(0u, 5683u), global0[_wgslsmith_index_u32(global3.c.x >> (4294967295u % 32u), 32u)], countOneBits(global3.b)), vec4<bool>(global3.c.x < global3.b, global1[_wgslsmith_index_u32(~428u, 23u)], false, true)), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0, 9504i, arg_0, 0i), vec4<i32>(-14163i, 1i, arg_0, 0i)), -vec4<i32>(arg_0, 2147483647i, -2248i, -2147483647i)));
    var var_2 = ~(~vec3<u32>(~0u, ~50354u, global3.c.x) << (~vec3<u32>(abs(global3.d.b), 1u, ~global3.b) % vec3<u32>(32u)));
    let var_3 = global3.d;
    let var_4 = Struct_2(~(~var_3.b), _wgslsmith_mod_u32(firstLeadingBit(1u), ~(~89747u)), abs(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(global3.c, vec4<u32>(var_3.a, global3.d.a, var_2.x, 8638u)), vec4<u32>(1u, 10999u, var_2.x, 52556u)) ^ ~firstTrailingBit(global3.c)), Struct_1(var_2.x, ~(~34304u)));
    return select(select(!select(!vec4<bool>(true, global0[_wgslsmith_index_u32(var_3.b, 32u)], false, global1[_wgslsmith_index_u32(4294967295u, 23u)]), vec4<bool>(true, true, true, true), any(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 32u)], global1[_wgslsmith_index_u32(4294967295u, 23u)]))), select(vec4<bool>(global0[_wgslsmith_index_u32(~7207u, 32u)], true, global1[_wgslsmith_index_u32(1u, 23u)], false), !vec4<bool>(global1[_wgslsmith_index_u32(var_3.b, 23u)], true, true, global0[_wgslsmith_index_u32(global3.a, 32u)]), !vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 32u)], true, global1[_wgslsmith_index_u32(1u, 23u)])), !(!vec4<bool>(false, global1[_wgslsmith_index_u32(var_3.b, 23u)], false, global1[_wgslsmith_index_u32(var_2.x, 23u)]))), vec4<bool>(any(!select(vec4<bool>(global0[_wgslsmith_index_u32(27589u, 32u)], false, global1[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(10427u, 32u)]), vec4<bool>(false, false, global0[_wgslsmith_index_u32(3280u, 32u)], global0[_wgslsmith_index_u32(var_4.a, 32u)]), global1[_wgslsmith_index_u32(0u, 23u)])), !(global0[_wgslsmith_index_u32(var_4.a, 32u)] | false) & true, arg_1.x < -1306f, global1[_wgslsmith_index_u32(abs(17050u), 23u)]), !(!vec4<bool>(!global1[_wgslsmith_index_u32(var_2.x, 23u)], true, global1[_wgslsmith_index_u32(0u, 23u)] & global0[_wgslsmith_index_u32(4294967295u, 32u)], global1[_wgslsmith_index_u32(1u, 23u)])));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: vec3<f32>) -> u32 {
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(i32(-1i) * -36240i), firstTrailingBit(u_input.a.x)), vec2<i32>(u_input.a.x, ~(~(-u_input.a.x))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_2.x, arg_2.x, 174f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-298f, arg_2.x, -1214f, arg_2.x) - vec4<f32>(-2320f, arg_2.x, 231f, -1672f))))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-427f - 276f), _wgslsmith_f_op_f32(-218f + _wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, arg_2.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(209f, arg_2.x, true))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(196f))))))));
    let var_2 = _wgslsmith_dot_vec3_i32(-vec3<i32>(-(var_0 & 1i), func_4(u_input.a.x, -vec4<i32>(27764i, u_input.a.x, -2147483647i, -2147483647i), arg_1).x, -u_input.a.x), vec3<i32>(-30601i, -21676i, -_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(5031i, -47546i)), _wgslsmith_mod_i32(var_0, 40713i))));
    return global3.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1250f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1979f)), _wgslsmith_f_op_f32(round(352f))))) + -1731f));
    var var_1 = 705f;
    var_1 = var_0;
    global3 = Struct_2(1u, _wgslsmith_div_u32(func_5(vec2<bool>(global1[_wgslsmith_index_u32(abs(51091u), 23u)], any(vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 32u)]))), select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 23u)], false, global0[_wgslsmith_index_u32(4294967295u, 32u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(global3.d.a, 23u)], global1[_wgslsmith_index_u32(global3.b, 23u)], global1[_wgslsmith_index_u32(global3.c.x, 23u)]), true), func_1(u_input.a.x, vec4<f32>(-1000f, -714f, var_0, var_0)), !vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(global3.b, 23u)])), vec3<f32>(-172f, _wgslsmith_f_op_f32(exp2(var_0)), -251f)), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(60193u, 1u, global3.d.b), global3.c.wyw, global3.c.zyw), ~(~global3.c.yyy))), ~firstLeadingBit(~_wgslsmith_clamp_vec4_u32(global3.c, vec4<u32>(global3.b, 4294967295u, global3.c.x, global3.b), vec4<u32>(global3.a, global3.c.x, 37112u, 51467u))), Struct_1(_wgslsmith_mod_u32(_wgslsmith_sub_u32(40740u, ~global3.d.a), 0u), ~firstTrailingBit(~global3.b)));
    let var_2 = global3.d;
    let var_3 = select(!(!vec2<bool>(true, global0[_wgslsmith_index_u32(global3.c.x, 32u)] | false)), vec2<bool>(_wgslsmith_dot_vec3_u32(global3.c.wxz, _wgslsmith_add_vec3_u32(vec3<u32>(45852u, 4294967295u, global3.d.a), vec3<u32>(14133u, global3.d.a, global3.b))) >= global3.a, select(!(u_input.a.x > u_input.a.x), any(vec2<bool>(global0[_wgslsmith_index_u32(global3.b, 32u)], global0[_wgslsmith_index_u32(0u, 32u)])), false)), !(!select(vec2<bool>(true, true), !vec2<bool>(global0[_wgslsmith_index_u32(18593u, 32u)], global1[_wgslsmith_index_u32(var_2.b, 23u)]), true)));
    let var_4 = Struct_1(~global3.c.x, global3.b);
    let var_5 = Struct_1(4294967295u, var_2.b);
    global3 = Struct_2(1u, 4949u, global3.c, global3.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1309f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0, -1366f), _wgslsmith_f_op_f32(max(-785f, 1989f)), global1[_wgslsmith_index_u32(~global3.b, 23u)])), _wgslsmith_f_op_f32(-var_0)), -873f), vec3<u32>(~(func_5(var_3, vec4<bool>(global0[_wgslsmith_index_u32(var_5.a, 32u)], global1[_wgslsmith_index_u32(var_2.b, 23u)], var_3.x, var_3.x), vec3<f32>(1833f, -894f, var_0)) ^ 0u), 46792u, min(22517u, countOneBits(_wgslsmith_mod_u32(39238u, var_2.b)))), max(-1i, 1i));
}

