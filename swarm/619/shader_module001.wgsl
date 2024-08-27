struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec4<bool>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

var<private> global1: array<vec2<bool>, 13> = array<vec2<bool>, 13>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> bool {
    let var_0 = 31217u | ~reverseBits(u_input.d);
    var var_1 = vec3<i32>(_wgslsmith_sub_i32(-2234i, 0i), abs(_wgslsmith_clamp_i32(arg_2.a, arg_2.a, _wgslsmith_mult_i32(i32(-1i) * -3310i, arg_2.a))), -21263i);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1386f)));
    var var_3 = 82733u;
    var var_4 = true;
    return arg_0;
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> f32 {
    global1 = array<vec2<bool>, 13>();
    var var_0 = u_input.b.yy;
    var var_1 = Struct_1(-2147483647i, vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1322f * -2231f))), _wgslsmith_div_f32(-1147f, _wgslsmith_f_op_f32(f32(-1f) * -188f)))), -1575f), select(!(!arg_3.c), vec4<bool>(false, !any(vec4<bool>(true, true, arg_1, arg_1)), true, func_3(false, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_3.a, 20519i, arg_3.a), vec4<i32>(0i, -27743i, -39780i, u_input.a)), arg_3)), !arg_1), _wgslsmith_add_u32(_wgslsmith_sub_u32(var_0.x, _wgslsmith_mult_u32(var_0.x, select(u_input.b.x, 27715u, arg_2))), (4294967295u & abs(u_input.d)) & abs(u_input.d)));
    let var_2 = Struct_1(-global0[_wgslsmith_index_u32(var_0.x, 5u)], vec2<f32>(var_1.b.x, -758f), select(vec4<bool>(all(vec3<bool>(arg_2, false, var_1.c.x)) | true, all(arg_3.c), arg_2, func_3(!arg_2, ~30346i, arg_3)), !vec4<bool>(arg_3.b.x == 1000f, arg_0 > var_1.b.x, var_1.c.x, true), vec4<bool>(true, true, true, true || (arg_0 >= 891f))), u_input.d);
    let var_3 = Struct_1(global0[_wgslsmith_index_u32(countOneBits(var_1.d), 5u)], arg_3.b, !select(select(!vec4<bool>(arg_1, true, arg_2, true), arg_3.c, u_input.d == 29220u), select(select(arg_3.c, vec4<bool>(false, false, true, false), false), var_2.c, vec4<bool>(var_1.c.x, true, arg_3.c.x, arg_2)), !(!vec4<bool>(true, arg_3.c.x, var_1.c.x, arg_2))), 0u);
    return _wgslsmith_f_op_f32(347f + -384f);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>) -> u32 {
    let var_0 = arg_0.c.xxx;
    global0 = array<i32, 5>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(arg_0.b.x - -145f)), true, all(arg_0.c.ww), Struct_1(global0[_wgslsmith_index_u32(1u, 5u)], _wgslsmith_f_op_vec2_f32(-arg_1), select(arg_0.c, arg_0.c, vec4<bool>(true, var_0.x, true, false)), _wgslsmith_div_u32(13832u, 1u))))), _wgslsmith_div_f32(arg_1.x, arg_1.x));
    let var_2 = vec2<bool>(true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_1.x, arg_1.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x)))) < _wgslsmith_div_f32(-229f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.x)))));
    let var_3 = arg_0;
    return arg_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~u_input.c.x | global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(func_1(Struct_1(global0[_wgslsmith_index_u32(83726u, 5u)], vec2<f32>(-835f, 537f), vec4<bool>(true, false, false, true), u_input.b.x), vec2<f32>(-268f, -1000f)), u_input.b.x << (u_input.d % 32u)), _wgslsmith_mult_u32(max(u_input.d, 4294967295u), _wgslsmith_mult_u32(u_input.b.x, u_input.b.x))), 5u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1771f)), 178f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-168f, 603f)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1923f, 967f) + vec2<f32>(-459f, -714f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-137f, 1596f))), select(global1[_wgslsmith_index_u32(u_input.d, 13u)], vec2<bool>(true, true), true))))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec4<bool>(true, true, false, true)), select(true, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)), 69910u);
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, 1167f, -118f))))))));
    var var_2 = select(_wgslsmith_clamp_vec2_i32(-u_input.c, _wgslsmith_mod_vec2_i32(select(vec2<i32>(var_0.a, u_input.c.x), -vec2<i32>(u_input.c.x, 1i), !var_0.c.xz), select(vec2<i32>(global0[_wgslsmith_index_u32(var_0.d, 5u)], var_0.a), vec2<i32>(0i, 0i), var_0.c.xy) >> (~u_input.b.zy % vec2<u32>(32u))), u_input.c), select(u_input.c, u_input.c & firstLeadingBit(abs(u_input.c)), !global1[_wgslsmith_index_u32(var_0.d, 13u)]), select(var_0.c.x, var_0.c.x, var_0.c.x));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_0.b.x, _wgslsmith_f_op_f32(trunc(var_1.x))))))), var_1.x, -1785f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1723f, var_0.b.x))))));
    var var_4 = Struct_1(~(-24719i), var_3.xy, select(vec4<bool>(func_3(true, 2147483647i, var_0), true, !all(vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, true)), all(vec3<bool>(var_0.c.x, true, var_0.c.x))), var_0.c, var_0.c), reverseBits(var_0.d));
    var var_5 = _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(~var_2.x, -1i, global0[_wgslsmith_index_u32(1172u, 5u)], -var_2.x), ~_wgslsmith_div_vec4_i32(vec4<i32>(0i, 13713i, var_2.x, var_2.x), vec4<i32>(var_0.a, 1i, 57280i, -40101i)), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-6015i, 2147483647i, var_0.a, 2147483647i), vec4<i32>(u_input.c.x, var_4.a, 2147483647i, var_4.a)), vec4<i32>(1i, -2147483647i, -13732i, u_input.a))), -_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.a, 37467i, 2147483647i, -47588i), vec4<i32>(var_0.a, global0[_wgslsmith_index_u32(u_input.b.x, 5u)], -1i, -2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.a, 2147483647i, var_4.a, var_0.a), vec4<i32>(var_0.a, var_4.a, global0[_wgslsmith_index_u32(1u, 5u)], var_2.x)))), firstTrailingBit(~(~firstTrailingBit(vec4<i32>(1i, var_2.x, var_4.a, 0i)))));
    global1 = array<vec2<bool>, 13>();
    var var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer((29167u | ~(var_0.d << (var_4.d % 32u))) >> (min(~_wgslsmith_sub_u32(13179u, var_6.d), firstTrailingBit(1u) & _wgslsmith_clamp_u32(var_0.d, 14495u, 12954u)) % 32u));
}

