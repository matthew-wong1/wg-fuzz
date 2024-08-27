struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec4<u32>,
    d: bool,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: i32,
    d: vec3<bool>,
    e: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 13>;

var<private> global1: array<i32, 11> = array<i32, 11>(-1i, 2147483647i, i32(-2147483648), i32(-2147483648), i32(-2147483648), 8552i, 14374i, -19013i, 4724i, 1i, 0i);

var<private> global2: array<i32, 14> = array<i32, 14>(31934i, -11270i, 1i, i32(-2147483648), 0i, i32(-2147483648), i32(-2147483648), -10663i, 45475i, -58161i, 31987i, 2147483647i, 2147483647i, 21716i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    let var_0 = firstLeadingBit(reverseBits(select(vec4<u32>(u_input.e.x, 36004u, u_input.e.x, 59246u) & ~vec4<u32>(0u, u_input.e.x, 120412u, u_input.b), vec4<u32>(0u, 1u, 4294967295u, 37823u) ^ ~vec4<u32>(u_input.e.x, u_input.b, 48670u, u_input.e.x), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))));
    var var_1 = _wgslsmith_clamp_vec2_i32(-select(vec2<i32>(max(-2147483647i, -17824i), ~global1[_wgslsmith_index_u32(u_input.e.x, 11u)]), vec2<i32>(firstLeadingBit(1i), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.e.x, 0u, var_0.x), 14u)]), vec2<bool>(true, true)), _wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(2147483647i, 32682i), vec2<i32>(75015i, global2[_wgslsmith_index_u32(u_input.e.x, 14u)]) | _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, u_input.d), vec2<i32>(global2[_wgslsmith_index_u32(u_input.b, 14u)], global1[_wgslsmith_index_u32(var_0.x, 11u)]))) ^ vec2<i32>(~select(global1[_wgslsmith_index_u32(27312u, 11u)], u_input.d, true), _wgslsmith_div_i32(global1[_wgslsmith_index_u32(~u_input.e.x, 11u)], i32(-1i) * -41088i)), vec2<i32>(abs(~_wgslsmith_div_i32(2147483647i, -19576i)), global2[_wgslsmith_index_u32(firstTrailingBit(max(reverseBits(0u), 52768u << (1u % 32u))), 14u)]));
    var var_2 = Struct_2(1i, var_0 >> ((_wgslsmith_sub_vec4_u32(~var_0, var_0) >> (var_0 % vec4<u32>(32u))) % vec4<u32>(32u)), Struct_1(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(315f, -636f, 2213f, -1000f), vec4<f32>(593f, 655f, 1203f, 2644f)))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f)))), vec3<i32>((-2147483647i ^ u_input.a) & ~0i, var_1.x, 54459i), u_input.e.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1937f, -1750f) + vec2<f32>(1000f, -550f))))));
    global0 = array<Struct_4, 13>();
    global2 = array<i32, 14>();
    return max(_wgslsmith_add_u32(var_2.b.x, _wgslsmith_sub_u32(~_wgslsmith_clamp_u32(u_input.e.x, u_input.e.x, 60221u), _wgslsmith_add_u32(firstLeadingBit(u_input.e.x), 22627u))), ~(u_input.e.x << ((~var_0.x << (~0u % 32u)) % 32u)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>) -> u32 {
    let var_0 = Struct_2(-32284i, _wgslsmith_mult_vec4_u32(vec4<u32>(~u_input.e.x & u_input.e.x, _wgslsmith_add_u32(~45729u, u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.e.x, u_input.b), arg_1), 68866u), ~arg_1), arg_0.c);
    let var_1 = true;
    let var_2 = vec4<u32>(reverseBits(_wgslsmith_sub_u32(u_input.e.x, 78092u) | ~_wgslsmith_sub_u32(79611u, arg_1.x)), ~(arg_1.x | 8845u), 4294967295u, max(_wgslsmith_mult_u32(func_3(), max(reverseBits(0u), 4294967295u | u_input.b)), _wgslsmith_div_u32(arg_1.x, countOneBits(arg_0.b.x))));
    let var_3 = arg_0.c.e.x;
    var var_4 = Struct_3(var_0, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1681f), -113f, var_3, 1000f), arg_0.c.a, !(!vec4<bool>(var_1, var_1, var_1, false)))))), var_2, all(select(!select(vec4<bool>(var_1, var_1, false, false), vec4<bool>(var_1, false, var_1, var_1), true), select(vec4<bool>(true, true, true, true), !vec4<bool>(var_1, var_1, var_1, var_1), false), !(!var_1))));
    return ~select(~(~_wgslsmith_add_u32(arg_1.x, 27476u)), 4294967295u, true);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_1 {
    global1 = array<i32, 11>();
    let var_0 = Struct_5(arg_2.c, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_1.x, 4294967295u), 13u)], arg_1, vec4<i32>(~23399i, 0i, -_wgslsmith_mod_i32(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(41568u, 14u)], 2147483647i), 0i), ~u_input.d));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -650f);
    global2 = array<i32, 14>();
    let var_2 = _wgslsmith_dot_vec2_u32(abs(~vec2<u32>(4294967295u, _wgslsmith_div_u32(1u, arg_0.x))), arg_0.zy);
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1556f, var_1, -392f, -1000f))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1, var_0.b.a, 756f, 436f)))) - var_0.a.a)), var_0.a.a, _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(var_0.a.c, vec3<i32>(2147483647i, -18568i, 15865i)) << (~u_input.e % vec3<u32>(32u)), reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, var_0.b.c, -56269i), var_0.d.wxz))), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, -global2[_wgslsmith_index_u32(24214u, 14u)], firstTrailingBit(u_input.c)), max(vec3<i32>(5831i, -5080i, global1[_wgslsmith_index_u32(var_0.c.x, 11u)]), arg_2.c.c))), ~_wgslsmith_mult_u32(var_2, firstLeadingBit(9729u)), vec2<f32>(_wgslsmith_f_op_f32(round(-403f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(exp2(var_1)))))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> vec4<u32> {
    global2 = array<i32, 14>();
    return select(~(~vec4<u32>(arg_1.d, reverseBits(1u), 1u, 0u)), ~(~vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, 40528u)) >> (~vec4<u32>(~4294967295u, arg_0.d | 0u, u_input.b, arg_1.d) % vec4<u32>(32u)), false);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: u32) -> vec4<u32> {
    return func_5(arg_2, func_4(vec4<u32>(40044u, abs(1u), countOneBits(35275u), arg_3 ^ _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 4294967295u, 0u), vec4<u32>(arg_2.d, 0u, 0u, u_input.e.x))), abs(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.d, u_input.b, u_input.b), u_input.e), _wgslsmith_mod_u32(62388u, arg_2.d), u_input.e.x, func_2(Struct_2(global1[_wgslsmith_index_u32(arg_3, 11u)], vec4<u32>(1u, 67461u, u_input.b, 27242u), arg_2), vec4<u32>(0u, arg_2.d, 1u, 1u)))), Struct_2(u_input.d, ~abs(vec4<u32>(u_input.b, 15513u, arg_2.d, u_input.b)), arg_2)), Struct_2(-2147483647i, _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(arg_3, arg_3, 0u, 0u)), min(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, u_input.b, u_input.e.x), vec4<u32>(10035u, arg_2.d, u_input.e.x, u_input.b)), _wgslsmith_add_vec4_u32(vec4<u32>(29777u, arg_2.d, arg_2.d, 1u), vec4<u32>(1u, arg_3, arg_2.d, 0u)))), arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b <= u_input.b;
    let var_1 = Struct_2(global1[_wgslsmith_index_u32(select(4294967295u, 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1270f)) == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-177f + -613f)))), 11u)], select(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.e.x, 4294967295u), vec4<u32>(u_input.b, u_input.e.x, u_input.e.x, u_input.e.x)), ~vec4<u32>(u_input.b, u_input.b, u_input.e.x, 10467u)) | ((vec4<u32>(u_input.b, u_input.e.x, u_input.b, 4294967295u) & vec4<u32>(22043u, 4294967295u, 4294967295u, u_input.e.x)) >> (abs(vec4<u32>(u_input.e.x, u_input.b, u_input.b, u_input.b)) % vec4<u32>(32u))), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(245f, 989f)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, u_input.c), vec2<i32>(global1[_wgslsmith_index_u32(u_input.e.x, 11u)], global1[_wgslsmith_index_u32(u_input.e.x, 11u)]), vec2<i32>(0i, u_input.a)), Struct_1(vec4<f32>(659f, -1643f, -1349f, -994f), vec4<f32>(-1000f, -896f, -448f, 911f), vec3<i32>(global2[_wgslsmith_index_u32(52959u, 14u)], 2147483647i, global1[_wgslsmith_index_u32(u_input.e.x, 11u)]), 62757u, vec2<f32>(-564f, -1000f)), 21211u) ^ ~(~vec4<u32>(u_input.b, 0u, u_input.e.x, u_input.e.x)), false), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(104f, 111f, 808f, 143f), vec4<f32>(1828f, -1454f, 1511f, 1045f)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1220f, -541f, -1609f, -422f)), vec4<f32>(302f, 1000f, -2432f, -806f), !vec4<bool>(var_0, var_0, true, var_0)))), vec4<f32>(432f, _wgslsmith_f_op_f32(f32(-1f) * -596f), 436f, 759f), (-vec3<i32>(-34352i, -2147483647i, global2[_wgslsmith_index_u32(u_input.b, 14u)]) & vec3<i32>(global1[_wgslsmith_index_u32(16090u, 11u)], global1[_wgslsmith_index_u32(0u, 11u)], 2147483647i)) ^ ~abs(vec3<i32>(2147483647i, u_input.d, global1[_wgslsmith_index_u32(u_input.e.x, 11u)])), ~firstTrailingBit(u_input.e.x), vec2<f32>(219f, 1199f)));
    global0 = array<Struct_4, 13>();
    let var_2 = _wgslsmith_sub_i32(var_1.a, func_4(var_1.b, min(vec4<u32>(1u, ~var_1.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(7822u, 44178u), vec2<u32>(var_1.c.d, 0u)), u_input.e.x), vec4<u32>(u_input.b, _wgslsmith_mult_u32(u_input.e.x, u_input.e.x), reverseBits(4294967295u), u_input.e.x)), Struct_2(-global2[_wgslsmith_index_u32(~0u, 14u)], min(var_1.b, var_1.b) << (var_1.b % vec4<u32>(32u)), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(var_1.c.b)), var_1.c.a, vec3<i32>(-37782i, var_1.a, -2147483647i), _wgslsmith_sub_u32(u_input.b, u_input.b), vec2<f32>(-1504f, var_1.c.e.x)))).c.x);
    global0 = array<Struct_4, 13>();
    let var_3 = ~vec4<u32>((u_input.b | u_input.b) >> (56369u % 32u), abs(~1u), ~55838u ^ ~u_input.b, ~0u) & vec4<u32>(u_input.b, _wgslsmith_mult_u32(27913u, min(1u, ~var_1.b.x)), reverseBits(_wgslsmith_sub_u32(u_input.b, u_input.b ^ 1u)), 4294967295u);
    let var_4 = Struct_4(_wgslsmith_f_op_f32(var_1.c.a.x * _wgslsmith_f_op_f32(f32(-1f) * -784f)), ~(func_5(Struct_1(vec4<f32>(802f, var_1.c.a.x, var_1.c.e.x, var_1.c.a.x), var_1.c.a, vec3<i32>(u_input.d, var_2, 7940i), var_3.x, vec2<f32>(var_1.c.e.x, -406f)), func_4(vec4<u32>(0u, 106148u, var_3.x, u_input.e.x), vec4<u32>(105032u, u_input.b, 101381u, var_1.c.d), var_1), var_1).x & _wgslsmith_dot_vec3_u32(abs(var_1.b.zyx), func_1(vec2<f32>(var_1.c.b.x, 632f), var_1.c.c.yy, Struct_1(var_1.c.b, vec4<f32>(284f, var_1.c.e.x, 441f, var_1.c.b.x), var_1.c.c, 0u, vec2<f32>(var_1.c.e.x, var_1.c.e.x)), 0u).wwy)), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 73111u), 11u)], select(select(vec3<bool>(1u < var_3.x, !var_0, !var_0), vec3<bool>(true | var_0, 51753i > var_1.c.c.x, var_1.b.x != 4294967295u), !vec3<bool>(var_0, true, false)), vec3<bool>(true, false, true), vec3<bool>(false, true, var_0)), func_4(~vec4<u32>(0u | var_1.c.d, 4294967295u, ~var_3.x, ~0u), ~func_1(var_1.c.e, vec2<i32>(-20866i, 6008i), func_4(vec4<u32>(0u, u_input.b, 43403u, u_input.e.x), vec4<u32>(0u, 33150u, var_3.x, u_input.e.x), var_1), ~39859u), var_1).d);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.b.zy, var_1.c.a.yy);
}

