struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12> = array<i32, 12>(48346i, -1i, i32(-2147483648), 1i, 28255i, i32(-2147483648), 2147483647i, 3871i, 2147483647i, 61673i, 1i, -1481i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: i32) -> bool {
    let var_0 = vec4<bool>(true && (_wgslsmith_div_i32(1i, global0[_wgslsmith_index_u32(~63241u, 12u)]) <= (abs(37790i) | -arg_1)), !((false && any(vec4<bool>(true, true, false, true))) & false), false, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(select(-833f, 221f, false))) + 404f) < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2230f))), 1100f, all(vec2<bool>(false, false)) && any(vec2<bool>(true, false)))));
    let var_1 = -2147483647i;
    global0 = array<i32, 12>();
    var var_2 = Struct_1(var_0.x, 4217u, _wgslsmith_mult_u32(0u, ~(~_wgslsmith_clamp_u32(1u, 18627u, 4294967295u))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1490f)), -1000f)), _wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(f32(-1f) * -1240f)));
    let var_3 = Struct_1(any(vec3<bool>(any(!var_0.yw), 6064i > u_input.b, select(!var_0.x, true, true))), var_2.b, var_2.c, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_2.d.x, var_2.d.x), -1353f, 1f)))));
    return var_2.a;
}

fn func_2(arg_0: u32, arg_1: vec3<u32>) -> bool {
    let var_0 = !func_3(abs(~global0[_wgslsmith_index_u32(4294967295u, 12u)]), u_input.c);
    var var_1 = true;
    let var_2 = Struct_1(func_3(~global0[_wgslsmith_index_u32(arg_0, 12u)], global0[_wgslsmith_index_u32(min(7012u, min(arg_0, _wgslsmith_sub_u32(arg_0, arg_0))), 12u)]), _wgslsmith_mult_u32(select(arg_1.x | 4294967295u, arg_0, var_0) | 10601u, 46978u), 89948u << (~arg_0 % 32u), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(887f, 774f, -1397f))))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.d.yx));
    global0 = array<i32, 12>();
    return var_0;
}

fn func_1(arg_0: vec2<bool>, arg_1: f32) -> f32 {
    let var_0 = Struct_1(func_2(0u, ~vec3<u32>(0u, ~1u, 4294967295u)), reverseBits(~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 9393u, 0u, 1u), firstTrailingBit(vec4<u32>(20623u, 1u, 9724u, 1u)))), 6969u, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, -193f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-885f, arg_1, arg_1))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1767f, arg_1, arg_1)), vec3<f32>(arg_1, arg_1, arg_1)))))));
    var var_1 = 4294967295u;
    global0 = array<i32, 12>();
    let var_2 = ~(max(vec2<u32>(~4294967295u, var_0.b), vec2<u32>(var_0.b, _wgslsmith_clamp_u32(80423u, 4294967295u, var_0.c))) >> (_wgslsmith_add_vec2_u32(~vec2<u32>(var_0.c, 1u), ~vec2<u32>(1u, 4294967295u)) % vec2<u32>(32u)));
    var var_3 = !(!(!vec4<bool>(false && var_0.a, var_0.a, true, true)));
    return 416f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 12>();
    global0 = array<i32, 12>();
    let var_0 = vec3<f32>(-1073f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec2<bool>(false, true), -536f)) - _wgslsmith_f_op_f32(f32(-1f) * -233f)))), _wgslsmith_f_op_f32(f32(-1f) * -585f));
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(-187f, var_0.x, var_0.x, var_0.x), vec4<f32>(-226f, var_0.x, 1092f, var_0.x)), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1151f, -1000f, var_0.x, var_0.x))) + vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(-700f, var_0.x), _wgslsmith_f_op_f32(var_0.x - var_0.x), -673f))))));
    var var_2 = Struct_1(~_wgslsmith_mult_u32(4294967295u, _wgslsmith_mod_u32(1u, 4294967295u)) > firstTrailingBit(1u), firstTrailingBit(0u), 1u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1903f), _wgslsmith_f_op_f32(var_0.x - -1186f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(380f))))));
    global0 = array<i32, 12>();
    var var_3 = countOneBits(min(reverseBits(vec4<i32>(u_input.b, u_input.c, u_input.d ^ -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(u_input.c, global0[_wgslsmith_index_u32(10433u, 12u)])))), abs(_wgslsmith_add_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(14151u, 12u)], 16524i, global0[_wgslsmith_index_u32(var_2.b, 12u)], global0[_wgslsmith_index_u32(var_2.b, 12u)]), vec4<i32>(0i, -7349i, global0[_wgslsmith_index_u32(var_2.c, 12u)], global0[_wgslsmith_index_u32(1u, 12u)])) >> (vec4<u32>(var_2.b, 4294967295u, 54281u, 69427u) % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~_wgslsmith_clamp_vec4_i32(vec4<i32>(var_3.x, global0[_wgslsmith_index_u32(var_2.c, 12u)], 48485i, -1i) << (vec4<u32>(var_2.c, 1u, var_2.b, var_2.b) % vec4<u32>(32u)), ~vec4<i32>(var_3.x, u_input.a, 45425i, var_3.x), ~vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(var_2.b, 12u)], global0[_wgslsmith_index_u32(var_2.b, 12u)], var_3.x))), var_2.c);
}

