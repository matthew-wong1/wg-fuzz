struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-34593i));

var<private> global1: array<i32, 5> = array<i32, 5>(-18806i, -57580i, 3655i, 28421i, 0i);

var<private> global2: array<bool, 17> = array<bool, 17>(false, true, true, true, true, false, false, true, true, false, true, false, false, false, true, true, true);

var<private> global3: Struct_1 = Struct_1(-59278i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(357f))));
    global0 = arg_0;
    let var_1 = abs(global0.a.a) > -_wgslsmith_div_i32(~1i, abs(arg_0.a.a | 34115i));
    let var_2 = !(-abs(arg_0.a.a) > global1[_wgslsmith_index_u32(u_input.a.x, 5u)]) && false;
    global2 = array<bool, 17>();
    return countOneBits(-19503i);
}

fn func_2(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(abs(func_3(Struct_2(arg_2))), ~(~global0.a.a)), vec2<i32>(global3.a, global0.a.a));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(385f, _wgslsmith_f_op_f32(f32(-1f) * -525f), _wgslsmith_f_op_f32(select(1488f, -1189f, false))) + vec3<f32>(_wgslsmith_div_f32(130f, 546f), _wgslsmith_f_op_f32(-365f + -632f), -359f)))));
    global2 = array<bool, 17>();
    let var_3 = Struct_2(Struct_1(-48082i << (countOneBits(~u_input.a.x) % 32u)));
    return var_3;
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2, arg_3: vec3<u32>) -> u32 {
    global2 = array<bool, 17>();
    var var_0 = ~reverseBits(arg_3.x ^ ~_wgslsmith_add_u32(arg_3.x, u_input.a.x));
    let var_1 = all(!select(!(!vec3<bool>(global2[_wgslsmith_index_u32(13554u, 17u)], true, false)), !(!vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 17u)], true)), vec3<bool>(all(vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 17u)])), true, true)));
    var var_2 = vec4<u32>(17741u, u_input.a.x, arg_3.x, 0u);
    let var_3 = select(global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, arg_3.x, arg_3.x), ~var_2.wxz), 4294967295u), 17u)], any(select(vec4<bool>(global2[_wgslsmith_index_u32(~35054u, 17u)], true, !global2[_wgslsmith_index_u32(u_input.a.x, 17u)], true), !vec4<bool>(true, false, var_1, var_1), select(select(vec4<bool>(var_1, true, var_1, false), vec4<bool>(global2[_wgslsmith_index_u32(arg_3.x, 17u)], true, global2[_wgslsmith_index_u32(8974u, 17u)], true), vec4<bool>(true, false, var_1, global2[_wgslsmith_index_u32(8627u, 17u)])), !vec4<bool>(var_1, false, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, var_1, var_1, var_1), vec4<bool>(false, false, global2[_wgslsmith_index_u32(4670u, 17u)], false))))), ~_wgslsmith_sub_i32(28017i, ~arg_0.a.a) == abs(_wgslsmith_mult_i32(1i, reverseBits(25213i))));
    return 34838u;
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: bool, arg_3: bool) -> Struct_1 {
    let var_0 = u_input.a;
    global0 = Struct_2(global0.a);
    global1 = array<i32, 5>();
    global0 = Struct_2(Struct_1(~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, global1[_wgslsmith_index_u32(var_0.x, 5u)]) & vec2<i32>(-55286i, global3.a), select(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 5u)], 42437i), vec2<i32>(global3.a, global3.a), true))));
    let var_1 = vec3<u32>(firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(~4294967295u, var_0.x >> (34038u % 32u), countOneBits(1u)), reverseBits(var_0.x))), countOneBits(~_wgslsmith_mod_u32(25467u << (0u % 32u), var_0.x)), firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_add_u32(var_0.x, ~var_0.x), 31145u & (var_0.x | var_0.x))));
    return func_2(Struct_3(true, !(9958i < _wgslsmith_sub_i32(global0.a.a, -1i))), select(vec4<bool>(arg_2, (54037u <= var_0.x) | (arg_3 && arg_1), arg_1, arg_2), !(!vec4<bool>(arg_1, true, arg_1, arg_3)), select(select(!vec4<bool>(true, arg_3, true, arg_1), !vec4<bool>(false, false, arg_2, arg_2), true), select(select(vec4<bool>(true, global2[_wgslsmith_index_u32(57393u, 17u)], true, arg_2), vec4<bool>(arg_1, true, global2[_wgslsmith_index_u32(var_0.x, 17u)], arg_2), arg_3), !vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 17u)], false, false), arg_3), arg_2)), global0.a).a;
}

fn func_1(arg_0: vec4<i32>) -> Struct_3 {
    var var_0 = Struct_2(func_5(abs(global1[_wgslsmith_index_u32(func_4(Struct_2(global0.a), ~0i, func_2(Struct_3(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], global2[_wgslsmith_index_u32(0u, 17u)]), vec4<bool>(true, true, false, false), Struct_1(0i)), _wgslsmith_mod_vec3_u32(u_input.a, u_input.a)), 5u)]), global2[_wgslsmith_index_u32(4294967295u, 17u)], true, false));
    let var_1 = ~select(_wgslsmith_clamp_vec2_u32(vec2<u32>(max(1u, u_input.a.x), ~u_input.a.x), select(vec2<u32>(3478u, 19272u), vec2<u32>(u_input.a.x, u_input.a.x), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], global2[_wgslsmith_index_u32(u_input.a.x, 17u)])), select(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yx, global2[_wgslsmith_index_u32(u_input.a.x, 17u)])), vec2<u32>(1u, select(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), u_input.a.x, select(true, false, true))), (u_input.a.x > 23702u) && false);
    var var_2 = 23488u << (select(reverseBits(firstTrailingBit(1u)), 0u, false) % 32u);
    let var_3 = Struct_2(global0.a);
    var var_4 = Struct_1(~(~(~8875i)));
    return Struct_3(any(select(vec4<bool>(!global2[_wgslsmith_index_u32(4294967295u, 17u)], false | global2[_wgslsmith_index_u32(var_1.x, 17u)], !global2[_wgslsmith_index_u32(var_1.x, 17u)], false), vec4<bool>(all(vec2<bool>(false, global2[_wgslsmith_index_u32(76274u, 17u)])), false, false, global2[_wgslsmith_index_u32(22581u, 17u)] || global2[_wgslsmith_index_u32(36556u, 17u)]), select(select(vec4<bool>(false, global2[_wgslsmith_index_u32(var_1.x, 17u)], global2[_wgslsmith_index_u32(var_1.x, 17u)], true), vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 17u)], true, global2[_wgslsmith_index_u32(0u, 17u)]), false), !vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 17u)], true, global2[_wgslsmith_index_u32(var_1.x, 17u)]), select(vec4<bool>(true, true, global2[_wgslsmith_index_u32(34433u, 17u)], global2[_wgslsmith_index_u32(var_1.x, 17u)]), vec4<bool>(global2[_wgslsmith_index_u32(var_1.x, 17u)], global2[_wgslsmith_index_u32(4294967295u, 17u)], true, true), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], false, true, false))))), select(any(select(vec4<bool>(true, false, true, global2[_wgslsmith_index_u32(638u, 17u)]), vec4<bool>(global2[_wgslsmith_index_u32(34983u, 17u)], global2[_wgslsmith_index_u32(4294967295u, 17u)], global2[_wgslsmith_index_u32(u_input.a.x, 17u)], false), vec4<bool>(global2[_wgslsmith_index_u32(35395u, 17u)], false, true, global2[_wgslsmith_index_u32(4294967295u, 17u)]))), false, any(select(vec4<bool>(global2[_wgslsmith_index_u32(31345u, 17u)], false, global2[_wgslsmith_index_u32(var_1.x, 17u)], global2[_wgslsmith_index_u32(38552u, 17u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], global2[_wgslsmith_index_u32(u_input.a.x, 17u)], global2[_wgslsmith_index_u32(26619u, 17u)], true), true))) & any(select(!vec3<bool>(global2[_wgslsmith_index_u32(var_1.x, 17u)], global2[_wgslsmith_index_u32(u_input.a.x, 17u)], true), vec3<bool>(false, true, true), global2[_wgslsmith_index_u32(~27336u, 17u)])));
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: Struct_3) -> StorageBuffer {
    global1 = array<i32, 5>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1509f, 1325f, 281f) - vec3<f32>(467f, 493f, 1770f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-262f, -1098f, -162f) * vec3<f32>(1000f, 995f, 1000f)), any(vec3<bool>(false, true, true)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1742f, 1988f, -798f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1616f, 448f, -856f) + vec3<f32>(1258f, -1000f, 1000f))))));
    global2 = array<bool, 17>();
    let var_1 = func_5(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(26309u, arg_0.x, 4294967295u, 4294967295u), arg_0)), max(0u, u_input.a.x)), 5u)], func_1(~(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, global1[_wgslsmith_index_u32(74414u, 5u)], global3.a, global1[_wgslsmith_index_u32(0u, 5u)]), vec4<i32>(2147483647i, global0.a.a, global0.a.a, -1i)) ^ reverseBits(vec4<i32>(global1[_wgslsmith_index_u32(arg_0.x, 5u)], global1[_wgslsmith_index_u32(arg_0.x, 5u)], global0.a.a, 38443i)))).a, _wgslsmith_div_u32(~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), _wgslsmith_add_u32(u_input.a.x, u_input.a.x | 0u)) <= u_input.a.x, all(vec2<bool>(true || select(global2[_wgslsmith_index_u32(10221u, 17u)], arg_2.b, global2[_wgslsmith_index_u32(arg_0.x, 17u)]), arg_2.a)));
    global1 = array<i32, 5>();
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, var_0.x, -809f), vec3<f32>(-1000f, var_0.x, var_0.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(2478f, -1000f, -367f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_0))), select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], arg_1.b, true), vec3<bool>(arg_2.b, false, false), !vec3<bool>(false, arg_1.a, false)))) - var_0), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(184f, _wgslsmith_f_op_f32(round(var_0.x))) + _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(round(2034f)))), _wgslsmith_f_op_f32(var_0.x - -874f)), global3.a, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 76352u, 1u, 4294967295u), arg_0), firstTrailingBit(4294967295u), ~min(5793u, 13387u)) << ((27533u | arg_0.x) % 32u), 5u)], ~_wgslsmith_div_vec4_u32(vec4<u32>(1u, arg_0.x, ~4294967295u, u_input.a.x), arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(~select(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, 4294967295u), select(vec4<u32>(0u, 72308u, 37516u, u_input.a.x), vec4<u32>(0u, u_input.a.x, 41527u, u_input.a.x), true)), abs(~vec4<u32>(24795u, 18274u, 0u, 0u)), select(!vec4<bool>(global2[_wgslsmith_index_u32(49395u, 17u)], false, global2[_wgslsmith_index_u32(u_input.a.x, 17u)], false), vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 17u)], true, false), true)), func_1(-reverseBits(vec4<i32>(global3.a, 2792i, -2147483647i, global1[_wgslsmith_index_u32(0u, 5u)])) & -vec4<i32>(global0.a.a, global0.a.a, 8427i, -7897i)), Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, func_4(Struct_2(Struct_1(global3.a)), 0i, Struct_2(Struct_1(-5897i)), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), u_input.a.x), ~vec3<u32>(22540u, 4294967295u, u_input.a.x)), 17u)], true));
}

