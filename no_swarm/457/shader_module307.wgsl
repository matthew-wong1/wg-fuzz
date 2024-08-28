struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2>;

var<private> global1: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> bool {
    global0 = array<i32, 2>();
    var var_0 = ~(select(abs(vec2<i32>(27284i, global0[_wgslsmith_index_u32(u_input.a.x, 2u)])) | _wgslsmith_mult_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(global0[_wgslsmith_index_u32(15908u, 2u)], 28112i)), select(vec2<i32>(0i, global0[_wgslsmith_index_u32(u_input.a.x, 2u)]), _wgslsmith_clamp_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], 1i), vec2<i32>(global0[_wgslsmith_index_u32(24594u, 2u)], 0i), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 2u)], 0i)), vec2<bool>(true, true)), false) & -(vec2<i32>(global0[_wgslsmith_index_u32(40179u, 2u)], global0[_wgslsmith_index_u32(29746u, 2u)]) << (vec2<u32>(u_input.a.x, 99817u) % vec2<u32>(32u))));
    var_0 = _wgslsmith_sub_vec2_i32(-vec2<i32>(-17429i, -15434i), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 2u)] ^ abs(_wgslsmith_add_i32(3823i, global0[_wgslsmith_index_u32(8883u, 2u)])), ~(-(i32(-1i) * -1i))));
    let var_1 = Struct_2(select(!(!select(vec2<bool>(false, false), vec2<bool>(false, true), true)), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(false, !all(vec2<bool>(true, true)))), -_wgslsmith_mult_vec2_i32(vec2<i32>(-14815i, _wgslsmith_mult_i32(var_0.x, -1i)), max(firstLeadingBit(vec2<i32>(global0[_wgslsmith_index_u32(0u, 2u)], var_0.x)), -vec2<i32>(-1325i, 0i))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(203f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-328f - -621f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -867f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1826f + 969f)))))), select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), select(true, false, true))), vec3<bool>(true, any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true))), true), all(vec4<bool>(true, true, true, true))));
    return select(true, var_1.a.x, var_1.a.x);
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2) -> vec3<bool> {
    global1 = 4294967295u;
    let var_0 = _wgslsmith_add_i32(arg_2.b.x, abs(reverseBits(_wgslsmith_mult_i32(arg_1.b.x, 1i))));
    var var_1 = ~arg_0;
    global0 = array<i32, 2>();
    let var_2 = Struct_3(1i);
    return !vec3<bool>(arg_2.a.x, func_3(), !(!arg_1.d.x));
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_1(global0[_wgslsmith_index_u32(~(~select(0u, firstLeadingBit(u_input.a.x), any(vec4<bool>(false, true, false, false)))), 2u)], func_4(u_input.a.x, Struct_2(vec2<bool>(u_input.a.x <= u_input.a.x, true), _wgslsmith_sub_vec2_i32(~vec2<i32>(2147483647i, -1i), firstTrailingBit(vec2<i32>(global0[_wgslsmith_index_u32(46428u, 2u)], global0[_wgslsmith_index_u32(u_input.a.x, 2u)]))), vec3<f32>(arg_1, -308f, arg_1), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true))), Struct_2(vec2<bool>(true, func_3()), vec2<i32>(global0[_wgslsmith_index_u32(1u, 2u)], _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(u_input.a.x, 2u)], global0[_wgslsmith_index_u32(u_input.a.x, 2u)])), vec3<f32>(514f, arg_1, -281f), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false))), _wgslsmith_f_op_f32(984f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(floor(-666f))), arg_0.x)), select(vec4<bool>(any(vec3<bool>(true, true, false)), -1i > global0[_wgslsmith_index_u32(reverseBits(61702u), 2u)], true, false), vec4<bool>(false, all(func_4(46379u, Struct_2(vec2<bool>(true, false), vec2<i32>(28776i, global0[_wgslsmith_index_u32(1u, 2u)]), vec3<f32>(arg_0.x, -695f, -2234f), vec3<bool>(true, true, true)), Struct_2(vec2<bool>(true, false), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 2u)], global0[_wgslsmith_index_u32(u_input.a.x, 2u)]), vec3<f32>(-1295f, arg_1, -592f), vec3<bool>(false, false, false)))), any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true)), true), true));
    var var_1 = _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(-(~(~vec3<i32>(var_0.a, 22717i, 2147483647i))), _wgslsmith_sub_vec3_i32(~(-vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], 48606i, global0[_wgslsmith_index_u32(13369u, 2u)])), -vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(u_input.a.x, 2u)]) ^ ~vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 2u)], -2147483647i, var_0.a))), 0i);
    var var_2 = !any(!func_4(u_input.a.x ^ u_input.a.x, Struct_2(vec2<bool>(false, var_0.d.x), vec2<i32>(global0[_wgslsmith_index_u32(10258u, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)]), vec3<f32>(arg_1, 727f, var_0.c), vec3<bool>(var_0.d.x, false, true)), Struct_2(var_0.d.yy, vec2<i32>(var_0.a, global0[_wgslsmith_index_u32(u_input.a.x, 2u)]), vec3<f32>(773f, 1142f, -772f), var_0.d.wyw)));
    return var_0;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec3<f32>) -> u32 {
    global0 = array<i32, 2>();
    var var_0 = vec2<u32>(select(19641u, u_input.a.x, !arg_1.d.x), _wgslsmith_dot_vec2_u32(min(~firstTrailingBit(u_input.a), vec2<u32>(_wgslsmith_clamp_u32(39673u, u_input.a.x, 4294967295u), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x))), u_input.a));
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1634f))))), arg_1.c, 118f)));
    global1 = _wgslsmith_sub_u32(var_0.x, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(~u_input.a.x, ~var_0.x, 4294967295u | var_0.x, ~var_0.x), vec4<u32>(var_0.x, 0u, countOneBits(var_0.x), var_0.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, u_input.a.x, var_0.x, 29513u), ~vec4<u32>(32637u, 4294967295u, var_0.x, 4294967295u), reverseBits(vec4<u32>(7232u, 38490u, 0u, 0u)))), vec4<u32>(_wgslsmith_div_u32(46831u, _wgslsmith_add_u32(var_0.x, 59562u)), var_0.x, ~_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), u_input.a.x)));
    var var_2 = firstLeadingBit(arg_2.a);
    return ~(~abs(82650u));
}

fn func_1() -> i32 {
    global0 = array<i32, 2>();
    global0 = array<i32, 2>();
    var var_0 = (abs(firstLeadingBit(~vec3<i32>(-2147483647i, -2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 2u)]))) >> (~vec3<u32>(~u_input.a.x, ~u_input.a.x, ~u_input.a.x) % vec3<u32>(32u))) >> (vec3<u32>(u_input.a.x >> (reverseBits(u_input.a.x) % 32u), _wgslsmith_mod_u32(func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1335f, -1222f)), func_2(vec2<f32>(-209f, -1000f), -882f), Struct_3(-9462i), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-2029f, 1000f, -1085f), vec3<f32>(1139f, -1000f, -678f)))), ~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), min(4294967295u, 15489u)) % vec3<u32>(32u));
    global1 = 129240u;
    var var_1 = !(!((func_2(vec2<f32>(1714f, 1695f), -455f).c > _wgslsmith_f_op_f32(-336f + 448f)) && true));
    return global0[_wgslsmith_index_u32(u_input.a.x, 2u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 2>();
    var var_0 = vec4<i32>(global0[_wgslsmith_index_u32(29843u, 2u)], _wgslsmith_mod_i32(func_1() << (4294967295u % 32u), _wgslsmith_mod_i32(_wgslsmith_add_i32(~14493i, 0i), func_1())), -2147483647i, global0[_wgslsmith_index_u32(~(~(~1u)), 2u)]);
    var var_1 = true;
    let var_2 = Struct_3(-(-31519i & var_0.x));
    var var_3 = -1335f;
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1636f + -629f)) + 1371f)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(806f - 267f), 1243f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(5162i, 2147483647i, func_2(vec2<f32>(_wgslsmith_f_op_f32(886f * 1343f), -165f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1589f * 769f), func_2(vec2<f32>(521f, 1748f), -769f).c)).a, 2147483647i), abs(vec4<i32>(_wgslsmith_sub_i32(var_2.a, 5194i), _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(u_input.a.x, 2u)], -1i, -2147483647i), global0[_wgslsmith_index_u32(0u, 2u)], -var_2.a) | select(~vec4<i32>(var_0.x, var_2.a, global0[_wgslsmith_index_u32(u_input.a.x, 2u)], global0[_wgslsmith_index_u32(11477u, 2u)]), select(vec4<i32>(var_2.a, -13464i, -49873i, 0i), vec4<i32>(-1i, var_0.x, -39501i, -4863i), vec4<bool>(true, false, true, true)), func_2(vec2<f32>(-995f, -2213f), -1000f).d)));
    var var_4 = reverseBits(~(~abs(vec4<u32>(4294967295u, u_input.a.x, 0u, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-2253f, 571f), vec2<f32>(-1009f, -714f)))))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, 1000f))))));
}

