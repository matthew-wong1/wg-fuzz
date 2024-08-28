struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15> = array<i32, 15>(1i, -6431i, 2147483647i, 55275i, 1i, 34067i, -5765i, 1i, 19408i, 37620i, -1i, 29205i, 0i, 6009i, 0i);

var<private> global1: Struct_2;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> vec4<f32> {
    global1 = arg_1;
    var var_0 = Struct_3(arg_1, arg_0, global1.c.b, -reverseBits(vec3<i32>(u_input.c, 15964i, u_input.a) << (vec3<u32>(0u, global1.a, 0u) % vec3<u32>(32u))));
    let var_1 = vec3<f32>(-208f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-110f, 684f))) + _wgslsmith_f_op_f32(round(arg_1.c.a))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.c.b.x))), _wgslsmith_f_op_f32(arg_1.c.c - _wgslsmith_f_op_f32(var_0.b.c.b.x - arg_0.c.c)), !(1i <= u_input.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.b.x)));
    let var_2 = !vec4<bool>(any(select(vec3<bool>(arg_0.b, arg_2.d, true), vec3<bool>(true, true, true), arg_2.d)), all(!select(vec3<bool>(arg_0.b, arg_0.c.d, arg_0.b), vec3<bool>(false, false, arg_0.b), true)), true, arg_1.b);
    var_0 = Struct_3(arg_1, arg_0, arg_2.b, vec3<i32>(0i | _wgslsmith_mod_i32(select(-22218i, var_0.d.x, true), ~(-1i)), max(var_0.d.x, reverseBits(27444i)), ~firstLeadingBit(~16788i)));
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1709f * 595f), arg_1.c.c)), -604f, -1448f, 1f))));
}

fn func_2() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global1.c.b.yx - global1.c.b.xw)));
    let var_1 = Struct_1(-1000f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_2(4294967295u, global1.b, Struct_1(global1.c.a, global1.c.b, var_0.x, global1.b)), Struct_2(7694u, global1.c.d, global1.c), global1.c))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-439f, 854f) - global1.c.a)))), true | !(global1.c.d || false));
    let var_2 = firstTrailingBit(vec2<u32>(~(~_wgslsmith_div_u32(0u, u_input.b.x)), u_input.b.x));
    let var_3 = false;
    global0 = array<i32, 15>();
    return select(!select(!(!vec4<bool>(global1.b, true, true, true)), vec4<bool>(var_1.d, true, true, any(vec2<bool>(true, true))), vec4<bool>(false | var_3, true, !var_1.d, global1.b)), !select(vec4<bool>(!var_3, false, !var_3, true), !select(vec4<bool>(false, global1.c.d, false, var_1.d), vec4<bool>(false, false, var_1.d, var_1.d), global1.c.d), (u_input.c <= 47244i) | select(var_3, true, var_1.d)), max(~global0[_wgslsmith_index_u32(global1.a, 15u)], 0i) > countOneBits(-17478i));
}

fn func_1(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.a, global1.c.a, 1000f, global1.c.a)), vec4<f32>(global1.c.c, 1000f, 900f, -418f), global1.c.d)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, _wgslsmith_f_op_f32(trunc(552f)), _wgslsmith_f_op_f32(-var_0.x))))));
    var var_2 = !func_2();
    var var_3 = !vec4<bool>(global1.b, all(var_2.zwy), true, all(vec4<bool>(arg_0.x > 4294967295u, false, true | var_2.x, all(var_2.zz))));
    let var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * -1437f), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -442f) * var_0.x), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(max(var_0.x, -686f)))));
    return Struct_2(_wgslsmith_clamp_u32(~global1.a >> (0u % 32u), arg_0.x, max(~1u, arg_0.x)), true | any(vec4<bool>(true, select(global1.c.d, true, false), true, !var_3.x)), global1.c);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_2, arg_3: u32) -> u32 {
    var var_0 = all(vec4<bool>(arg_1.b, !func_1(countOneBits(u_input.b)).b, false, !(!any(arg_0.xx))));
    global0 = array<i32, 15>();
    var var_1 = Struct_2(~_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(0u, global1.a, 4294967295u, 4294967295u)) | firstTrailingBit(vec4<u32>(u_input.b.x, u_input.b.x, arg_2.a, 44695u)), vec4<u32>(~43864u, _wgslsmith_add_u32(4294967295u, u_input.b.x), arg_3, _wgslsmith_div_u32(global1.a, 1u))), global1.b, func_1(_wgslsmith_add_vec4_u32(~u_input.b >> (vec4<u32>(3006u, u_input.b.x, u_input.b.x, arg_3) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global1.a, global1.a, global1.a, 69997u), u_input.b), ~u_input.b))).c);
    var_0 = !(-firstTrailingBit(0i) > global0[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(~u_input.b.x, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b))), 15u)]);
    var var_2 = _wgslsmith_dot_vec3_i32(select(_wgslsmith_sub_vec3_i32(-vec3<i32>(1i, 7438i, 2672i), countOneBits(vec3<i32>(u_input.c, global0[_wgslsmith_index_u32(44255u, 15u)], 26783i))) << (_wgslsmith_add_vec3_u32(vec3<u32>(arg_3, 1u, 13297u), ~u_input.b.wzy) % vec3<u32>(32u)), ~firstTrailingBit(-vec3<i32>(-25827i, u_input.c, 2147483647i)), true), min(firstLeadingBit(countOneBits(vec3<i32>(u_input.a, 5685i, u_input.d.x))) << (u_input.b.wyz % vec3<u32>(32u)), -_wgslsmith_add_vec3_i32(~vec3<i32>(-34611i, 0i, u_input.c), vec3<i32>(u_input.a, u_input.d.x, 2147483647i))));
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 15>();
    global0 = array<i32, 15>();
    let var_0 = global1.c.b;
    var var_1 = ~(~func_4(!(!vec3<bool>(true, false, global1.b)), Struct_2(global1.a, false, Struct_1(-488f, vec4<f32>(var_0.x, var_0.x, 1231f, -217f), global1.c.b.x, true)), func_1(~vec4<u32>(64473u, 35979u, 1u, global1.a)), select(1u, u_input.b.x, false)));
    let var_2 = _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(1336i, 17451i, u_input.a), vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 15u)], global0[_wgslsmith_index_u32(global1.a, 15u)], 15138i)), u_input.c, u_input.a), -(~abs(vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(global1.a, 15u)], u_input.d.x)))), _wgslsmith_add_vec3_i32(~vec3<i32>(-2147483647i, u_input.a, -101051i), -abs(vec3<i32>(0i, u_input.a, -36281i))));
    let var_3 = Struct_2(_wgslsmith_clamp_u32(func_4(vec3<bool>(global1.c.d & false, true, false), Struct_2(~29115u, true, global1.c), Struct_2(_wgslsmith_mod_u32(34274u, u_input.b.x), true, func_1(u_input.b).c), firstLeadingBit(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x))), u_input.b.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(max(u_input.b.yw, u_input.b.yx), vec2<u32>(global1.a, global1.a)), _wgslsmith_mod_u32(4294967295u, _wgslsmith_clamp_u32(u_input.b.x, 0u, u_input.b.x)))), !global1.b, Struct_1(2424f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, var_0.x, global1.c.a, -476f), global1.c.b)))), 2442f, any(vec3<bool>(!global1.b, false & global1.c.d, global1.c.d))));
    let var_4 = _wgslsmith_div_vec2_f32(var_0.ww, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-246f, _wgslsmith_f_op_vec4_f32(func_3(Struct_2(var_3.a, false, Struct_1(743f, vec4<f32>(206f, -964f, -292f, 1152f), 1105f, false)), func_1(vec4<u32>(u_input.b.x, 1798u, u_input.b.x, 6806u)), global1.c)).x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.c.c * var_4.x)))), -1390f), ~var_3.a, _wgslsmith_mult_i32(countOneBits(46170i), max(0i, 1i)), var_0.x, 4294967295u);
}

