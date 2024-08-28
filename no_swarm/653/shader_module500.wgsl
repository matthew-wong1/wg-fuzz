struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: Struct_2,
    d: f32,
}

struct Struct_5 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<u32>, 3>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: Struct_4) -> i32 {
    global1 = array<vec4<u32>, 3>();
    var var_0 = Struct_5(arg_0.d, _wgslsmith_f_op_f32(f32(-1f) * -1708f));
    var var_1 = min(firstLeadingBit(_wgslsmith_mult_vec2_u32(select(arg_0.b, _wgslsmith_sub_vec2_u32(arg_0.b, vec2<u32>(0u, 1u)), vec2<bool>(false, false)), countOneBits(vec2<u32>(43301u, arg_0.b.x)))), arg_0.b);
    var var_2 = abs(_wgslsmith_clamp_i32(i32(-1i) * -(arg_0.c.a.a & 1i), _wgslsmith_mult_i32(-26829i, _wgslsmith_dot_vec2_i32(u_input.a.zz, ~u_input.a.xx)), _wgslsmith_div_i32(0i, _wgslsmith_sub_i32(~global0.a, _wgslsmith_div_i32(2147483647i, u_input.b)))));
    let var_3 = any(vec3<bool>(false, true || any(vec3<bool>(true, true, true)), !any(vec2<bool>(true, true))));
    return _wgslsmith_div_i32(29093i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -10917i, _wgslsmith_clamp_i32(-15291i, -2513i, 2147483647i), -global0.a, global0.a >> (1u % 32u)), vec4<i32>(12963i, arg_0.c.c.a & arg_0.a, arg_0.c.a.a, 1i)));
}

fn func_3(arg_0: Struct_5, arg_1: i32, arg_2: bool, arg_3: u32) -> Struct_5 {
    var var_0 = Struct_3(!vec4<bool>(any(!vec2<bool>(false, arg_2)), arg_2, arg_2, arg_2), Struct_2(Struct_1(-28122i), _wgslsmith_f_op_f32(abs(arg_0.b)), Struct_1(u_input.b), _wgslsmith_sub_i32(u_input.b, global0.a)), abs(-58031i), Struct_1(arg_1), Struct_1(u_input.c));
    let var_1 = ~abs(-_wgslsmith_clamp_vec3_i32(u_input.a, vec3<i32>(global0.a, -2147483647i, 29558i), vec3<i32>(var_0.c, 6232i, 1i))) & vec3<i32>(-9684i, firstLeadingBit(1i), _wgslsmith_div_i32(firstTrailingBit(select(arg_1, u_input.c, false)), var_0.b.a.a));
    var var_2 = Struct_3(!(!vec4<bool>(var_0.a.x, any(vec4<bool>(true, false, arg_2, false)), true, arg_2)), Struct_2(Struct_1(1i), 148f, Struct_1(37263i), 1i), 15389i, var_0.b.a, Struct_1(abs(~countOneBits(arg_1))));
    let var_3 = _wgslsmith_clamp_vec3_i32(-_wgslsmith_mult_vec3_i32(-(~var_1), _wgslsmith_mult_vec3_i32(-vec3<i32>(34348i, 10203i, 31161i), u_input.a)), u_input.a, firstLeadingBit(var_1));
    var var_4 = -(~(~vec3<i32>(~var_0.e.a, 27738i, var_3.x)));
    return Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.b * _wgslsmith_f_op_f32(var_0.b.b - -472f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f - arg_0.b), var_2.b.b)), -1102f)));
}

fn func_1(arg_0: Struct_3) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.b, arg_0.b.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(466f, -678f) + vec2<f32>(arg_0.b.b, -613f)))), vec2<f32>(_wgslsmith_f_op_f32(arg_0.b.b * arg_0.b.b), arg_0.b.b)))) - vec2<f32>(_wgslsmith_div_f32(-518f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.b.b)))), 479f));
    var var_1 = func_3(Struct_5(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(673f)), _wgslsmith_f_op_f32(sign(var_0.x)), !arg_0.a.x)), var_0.x), -_wgslsmith_mult_i32(global0.a, func_2(Struct_4(arg_0.d.a, vec2<u32>(58614u, 4294967295u), arg_0.b, 856f)) & _wgslsmith_sub_i32(0i, global0.a)), !arg_0.a.x, 1u);
    return ~_wgslsmith_clamp_i32(u_input.b, ~arg_0.d.a, -43730i ^ u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(_wgslsmith_sub_i32(func_1(Struct_3(vec4<bool>(false, true, true, true), Struct_2(Struct_1(2147483647i), 421f, Struct_1(14377i), 6906i), 56613i, Struct_1(0i), Struct_1(u_input.c))), global0.a)), 336f, Struct_1(global0.a), u_input.b);
    global1 = array<vec4<u32>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(906f, -974f, 1069f, var_0.b) + vec4<f32>(1497f, -1167f, -830f, var_0.b)))))), max(_wgslsmith_dot_vec4_u32(vec4<u32>(~18233u, ~52819u, abs(5354u), abs(1u)), ~(~global1[_wgslsmith_index_u32(3476u, 3u)])), ~(~_wgslsmith_div_u32(18413u, 1u))), abs(_wgslsmith_add_i32(46166i, _wgslsmith_clamp_i32(1i, u_input.a.x, var_0.c.a)) & var_0.c.a), abs(~global1[_wgslsmith_index_u32(3586u, 3u)]), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_0.b)))));
}

