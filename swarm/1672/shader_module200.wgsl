struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 5> = array<vec2<f32>, 5>(vec2<f32>(1472f, 726f), vec2<f32>(808f, -1706f), vec2<f32>(-1927f, -1000f), vec2<f32>(137f, 1306f), vec2<f32>(-427f, 1881f));

var<private> global1: array<vec2<f32>, 7> = array<vec2<f32>, 7>(vec2<f32>(200f, 1223f), vec2<f32>(435f, 980f), vec2<f32>(-137f, 1325f), vec2<f32>(1000f, -288f), vec2<f32>(297f, 613f), vec2<f32>(439f, 692f), vec2<f32>(-756f, -2073f));

var<private> global2: array<Struct_2, 8>;

var<private> global3: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(8104i), Struct_1(1i), Struct_1(-25865i), Struct_1(-17771i), Struct_1(39301i), Struct_1(-610i), Struct_1(56102i), Struct_1(-5625i), Struct_1(2147483647i), Struct_1(i32(-2147483648)), Struct_1(23337i), Struct_1(10142i), Struct_1(i32(-2147483648)), Struct_1(i32(-2147483648)), Struct_1(797i), Struct_1(1i), Struct_1(-1i), Struct_1(851i), Struct_1(0i), Struct_1(10224i), Struct_1(24586i), Struct_1(-4223i), Struct_1(-50548i), Struct_1(1i), Struct_1(1i), Struct_1(-821i), Struct_1(0i), Struct_1(-21449i), Struct_1(1i), Struct_1(2147483647i), Struct_1(-38631i));

var<private> global4: Struct_2 = Struct_2(vec2<bool>(false, false), false, -29852i, Struct_1(1i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    let var_0 = u_input.d;
    var var_1 = global3[_wgslsmith_index_u32(1u, 31u)];
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(min(-1352f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2546f, _wgslsmith_f_op_f32(667f - -478f), !arg_1))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-800f, _wgslsmith_f_op_f32(-420f + -645f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1621f, -1064f))))))));
    global3 = array<Struct_1, 31>();
    var var_3 = global4.b;
    return global3[_wgslsmith_index_u32(52512u, 31u)];
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    global4 = global2[_wgslsmith_index_u32(~max(1u, ~83756u), 8u)];
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -220f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    let var_1 = true;
    var var_2 = global2[_wgslsmith_index_u32(~(reverseBits(_wgslsmith_mult_u32(~33546u, 1u)) >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 0u), firstTrailingBit(~vec2<u32>(0u, 0u))) % 32u)), 8u)];
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1516f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(870f - var_0) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0 * var_0), _wgslsmith_f_op_f32(497f * var_0))))) + 731f);
    return var_2.a;
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = func_1(Struct_1(~_wgslsmith_dot_vec2_i32(select(u_input.d.yy, vec2<i32>(-51518i, u_input.a), global4.a.x), vec2<i32>(1i, 1i))), true);
    var var_1 = vec4<f32>(-1691f, _wgslsmith_f_op_f32(223f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1150f)) - 517f)), -548f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-887f)))));
    global2 = array<Struct_2, 8>();
    global1 = array<vec2<f32>, 7>();
    let var_2 = Struct_2(!func_3(func_1(func_1(global3[_wgslsmith_index_u32(5529u, 31u)], false), arg_0), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a, var_0.a, u_input.c.x, global4.c), vec4<i32>(var_0.a, var_0.a, u_input.a, -36242i)) & _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 23617i, -1051i, u_input.a), vec4<i32>(-1i, u_input.d.x, var_0.a, -15961i)), Struct_1(1i), var_0), false, firstTrailingBit(-81811i), Struct_1(-var_0.a));
    return var_2;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    var var_0 = func_2(false);
    let var_1 = arg_0.d;
    global0 = array<vec2<f32>, 5>();
    var var_2 = var_0.c;
    let var_3 = true;
    return firstLeadingBit(_wgslsmith_mult_u32(~62533u, ~reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(92374u, 43953u, 55513u, 0u), vec4<u32>(1u, 9796u, 0u, 27258u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-(~(-_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(1i, 1i, u_input.a)))));
    global0 = array<vec2<f32>, 5>();
    let var_1 = global4.a;
    global3 = array<Struct_1, 31>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -729f));
    var var_3 = global4.d;
    var var_4 = global4.d;
    let var_5 = func_1(Struct_1(~26566i), select(all(vec4<bool>(all(global4.a), false, var_2 >= var_2, any(vec3<bool>(var_1.x, true, false)))), true, false));
    let var_6 = _wgslsmith_div_u32(~(~firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 92346u, 47425u, 1u), vec4<u32>(1u, 40429u, 27425u, 4294967295u)))), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1138f, -1101f, -1198f, 1319f) + vec4<f32>(var_2, -1900f, -711f, 162f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1628f, 1162f, var_2, 458f))) * vec4<f32>(_wgslsmith_f_op_f32(floor(var_2)), _wgslsmith_f_op_f32(select(var_2, var_2, true)), _wgslsmith_f_op_f32(min(var_2, var_2)), _wgslsmith_f_op_f32(min(var_2, -654f)))))), var_6, vec4<f32>(-1471f, _wgslsmith_f_op_f32(sign(var_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) * _wgslsmith_div_f32(var_2, var_2)), 1264f), vec3<u32>(4294967295u, func_4(func_2(var_1.x), Struct_2(global4.a, !var_1.x, var_0.a, var_0)), _wgslsmith_mult_u32(var_6, ~select(1505u, var_6, global4.b))));
}

