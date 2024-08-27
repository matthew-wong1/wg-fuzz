struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec3<bool>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
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

var<private> global0: array<bool, 21> = array<bool, 21>(false, true, false, false, false, false, false, false, false, true, true, false, false, true, false, false, false, true, true, false, false);

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: vec3<i32> = vec3<i32>(0i, -21255i, -25103i);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: Struct_1) -> f32 {
    global1 = arg_1;
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-238f * arg_2.a)), arg_0, !arg_2.c, arg_2.d);
    global1 = !(!(!select(select(arg_1, vec2<bool>(false, false), vec2<bool>(true, arg_2.d)), var_0.c.xy, vec2<bool>(true, true))));
    var var_1 = arg_2;
    var var_2 = var_0.b.yyx ^ _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(~global2.x, _wgslsmith_mod_i32(44438i, 1i)), -u_input.b, -(~arg_0.x)), vec3<i32>(-18930i, -_wgslsmith_mult_i32(1i, -19309i), 0i));
    return _wgslsmith_div_f32(arg_2.a, 360f);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: vec2<f32>, arg_3: bool) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1533f)))), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, abs(u_input.b), firstLeadingBit(u_input.b), -13126i << (_wgslsmith_clamp_u32(u_input.a, 1u, 1u) % 32u)), -abs(max(vec4<i32>(-34869i, -9753i, global2.x, global2.x), vec4<i32>(global2.x, -1i, 0i, 0i)))), select(select(select(vec3<bool>(global1.x, true, arg_1.x), !arg_1, select(arg_3, true, arg_1.x)), vec3<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 21u)], global1.x, arg_1.x, arg_1.x)), any(arg_1.yz), arg_3), !arg_1), !arg_1, _wgslsmith_add_u32(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), vec4<u32>(22u, 4294967295u, u_input.a, u_input.a))) != u_input.a), !any(select(vec3<bool>(arg_3, global0[_wgslsmith_index_u32(21904u, 21u)], false), arg_1, arg_1)));
    var var_1 = ~vec2<i32>(u_input.b, min(~select(var_0.b.x, -2147483647i, false), u_input.b));
    let var_2 = arg_3;
    global0 = array<bool, 21>();
    let var_3 = countOneBits(1i);
    return ~(_wgslsmith_dot_vec2_u32(select(_wgslsmith_div_vec2_u32(vec2<u32>(47524u, 0u), vec2<u32>(56130u, 76988u)), abs(vec2<u32>(6257u, 4294967295u)), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 21u)])), ~countOneBits(vec2<u32>(u_input.a, 67384u))) << (u_input.a % 32u));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec4<i32>) -> vec4<i32> {
    let var_0 = !arg_0.c;
    var var_1 = vec2<bool>(arg_0.c.x, global1.x);
    var var_2 = Struct_1(_wgslsmith_div_f32(-1126f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -674f) * arg_0.a))), arg_2, var_0, true);
    var_1 = vec2<bool>(var_1.x, true);
    var var_3 = func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.a)) * var_2.a), 441f) * vec2<f32>(870f, _wgslsmith_f_op_f32(func_3(vec4<i32>(var_2.b.x, arg_0.b.x, -33917i, 1i), vec2<bool>(var_1.x, false), Struct_1(var_2.a, vec4<i32>(global2.x, global2.x, -2147483647i, global2.x), arg_0.c, var_0.x))))), !(!vec3<bool>(false & var_0.x, true, var_0.x && true)), vec2<f32>(-862f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.a))))), var_1.x);
    return max(_wgslsmith_mult_vec4_i32(reverseBits(-var_2.b), vec4<i32>(-1i, ~2147483647i, ~(-35492i), _wgslsmith_sub_i32(abs(-2147483647i), 0i))), ~countOneBits(arg_0.b) | vec4<i32>((0i | arg_0.b.x) ^ countOneBits(30925i), var_2.b.x, firstLeadingBit(arg_0.b.x), arg_0.b.x));
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = u_input.a;
    global1 = vec2<bool>(global1.x, !global0[_wgslsmith_index_u32(countOneBits(69912u), 21u)]);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(842f * 492f) + _wgslsmith_f_op_f32(-216f + -362f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))))), _wgslsmith_add_vec4_i32(~_wgslsmith_mod_vec4_i32(func_2(Struct_1(2529f, vec4<i32>(u_input.b, -14271i, 8197i, arg_0), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 21u)], false), global0[_wgslsmith_index_u32(0u, 21u)]), u_input.a, vec4<i32>(-2147483647i, global2.x, global2.x, u_input.b)), vec4<i32>(50417i, 1i, 1i, 0i) & vec4<i32>(global2.x, 2147483647i, global2.x, arg_0)), min(-vec4<i32>(-19366i, global2.x, u_input.b, -8488i) | _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, global2.x, 39443i, arg_0), vec4<i32>(u_input.b, -13604i, arg_0, global2.x)), select(vec4<i32>(global2.x, -1i, u_input.b, -10861i), vec4<i32>(u_input.b, global2.x, -2610i, arg_0), false) ^ firstLeadingBit(vec4<i32>(global2.x, global2.x, 1848i, -2147483647i)))), vec3<bool>(global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(~(~max(1u, 1u)), 21u)], global1.x), any(!vec2<bool>(global1.x, !global1.x)));
    var var_2 = var_1;
    let var_3 = min(firstLeadingBit(vec3<i32>(~(-38501i), global2.x, -1i)), vec3<i32>(1i, 1i, min(1i, u_input.b)));
    return abs(_wgslsmith_sub_i32(_wgslsmith_add_i32(~26959i, -32041i), var_2.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f - 437f)))))));
    global2 = vec3<i32>(-8893i, -firstTrailingBit(func_1(_wgslsmith_mult_i32(-17397i, 8165i))), func_1(_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.b, -global2.x), firstLeadingBit(~31644i))));
    global2 = _wgslsmith_sub_vec3_i32(firstTrailingBit(~(~(-vec3<i32>(-83994i, 29471i, 60392i)))), -vec3<i32>(min(-u_input.b, -1i), -2147483647i, 20090i));
    global2 = _wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(-8734i, ~global2.x, -1i)) & _wgslsmith_mod_vec3_i32(vec3<i32>(abs(global2.x), 0i, global2.x ^ u_input.b), select(vec3<i32>(global2.x, -7716i, 34383i) | vec3<i32>(7481i, -1i, u_input.b), firstTrailingBit(vec3<i32>(u_input.b, u_input.b, u_input.b)), select(vec3<bool>(global1.x, true, true), vec3<bool>(true, true, true), false))), -vec3<i32>(firstLeadingBit(-8778i) | _wgslsmith_dot_vec2_i32(vec2<i32>(-26076i, u_input.b), global2.yx), _wgslsmith_mult_i32(0i ^ u_input.b, u_input.b), -_wgslsmith_clamp_i32(-934i, -16952i, u_input.b)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-559f - -2009f))), !(!any(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 21u)], global1.x, false, false))))), firstTrailingBit(vec4<i32>(~firstTrailingBit(u_input.b), firstTrailingBit(-55743i), _wgslsmith_mod_i32(28517i, _wgslsmith_mod_i32(global2.x, 2902i)), global2.x)), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 21u)], !any(vec4<bool>(false, true, false, global1.x)), _wgslsmith_f_op_f32(floor(-888f)) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(354f + -1000f), 1000f)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(54969u, u_input.a) >> (~4294967295u % 32u), 14300u), u_input.a, 33222u), 21u)]);
    global2 = -(vec3<i32>(1i, abs(var_1.b.x), 2147483647i) | ~vec3<i32>(2147483647i, 0i, _wgslsmith_mult_i32(global2.x, var_1.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(var_1.a + -326f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) - var_1.a)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1629f, var_1.a), vec2<f32>(416f, -1000f))))), select(!(!vec2<bool>(global1.x, var_1.c.x)), !(!var_1.c.zx), true))));
}

