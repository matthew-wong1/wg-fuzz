struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: f32,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1000f, 787f);

var<private> global1: array<Struct_3, 4>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: f32, arg_3: f32) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1302f * _wgslsmith_f_op_f32(f32(-1f) * -884f))));
    global1 = array<Struct_3, 4>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-975f, arg_3, 2235f, var_0))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_3, var_0, arg_2, arg_3))))))));
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> vec3<u32> {
    var var_0 = _wgslsmith_add_vec2_u32(u_input.a, ~abs(reverseBits(vec2<u32>(10734u, u_input.a.x))));
    var var_1 = Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(-1i, 15975i), vec2<i32>(arg_0.c.a.x, arg_0.c.a.x), -vec2<i32>(arg_0.c.a.x, arg_0.c.a.x)), _wgslsmith_sub_vec2_i32(arg_0.c.a, vec2<i32>(-2147483647i, arg_0.a.a.x))), arg_0.a.a), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(arg_0.c.b)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(430f, global0.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))) > _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) - 1000f));
    let var_3 = ~countOneBits(~(~(vec3<u32>(8790u, var_0.x, 4294967295u) << (vec3<u32>(u_input.a.x, 0u, 1u) % vec3<u32>(32u)))));
    let var_4 = Struct_2(arg_0.a.a.x, select(select(!select(vec3<bool>(false, arg_0.b, true), vec3<bool>(true, false, true), arg_0.b), select(vec3<bool>(var_2, false, arg_0.b), vec3<bool>(true, false, arg_0.b), !arg_0.b), !(!vec3<bool>(var_2, true, var_2))), !(!select(vec3<bool>(false, false, false), vec3<bool>(var_2, arg_0.b, true), false)), !vec3<bool>(true, var_2, !arg_0.b)), global0.x, var_3.x, false);
    return ~vec3<u32>(max(var_0.x, 0u), abs(arg_1 & ~24333u), 4294967295u);
}

fn func_1(arg_0: vec3<bool>, arg_1: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_2(vec2<i32>(-1i, arg_1), vec4<i32>(2147483647i, arg_1, arg_1, 2147483647i), -649f, -1095f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, -1015f) - vec4<f32>(global0.x, 347f, global0.x, 498f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 380f, global0.x, 1761f))))));
    global0 = _wgslsmith_f_op_vec2_f32(-var_0.wx);
    var var_1 = _wgslsmith_dot_vec3_u32(func_3(Struct_3(Struct_1(vec2<i32>(arg_1, arg_1), var_0.wyz), true, Struct_1(vec2<i32>(arg_1, -93080i), var_0.yzz)), ~17947u) & (~(~vec3<u32>(71513u, 944u, 4294967295u)) ^ (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 13851u, 1u), vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)) & (vec3<u32>(4294967295u, 44073u, u_input.a.x) | vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))), vec3<u32>(max(~(~42017u), reverseBits(u_input.a.x)), ~(u_input.a.x | 37811u) >> (((u_input.a.x >> (u_input.a.x % 32u)) ^ u_input.a.x) % 32u), u_input.a.x));
    let var_2 = u_input.a;
    global1 = array<Struct_3, 4>();
    return arg_1;
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: bool, arg_3: i32) -> Struct_2 {
    var var_0 = arg_2;
    var var_1 = Struct_3(Struct_1(arg_1.xw, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-927f, global0.x, _wgslsmith_f_op_f32(ceil(-974f))))), any(vec4<bool>(arg_3 < 1i, false, arg_2 == arg_2, all(vec2<bool>(arg_2, true)))), Struct_1(arg_1.yx, vec3<f32>(_wgslsmith_f_op_f32(1126f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), global0.x, -3089f)));
    let var_2 = countOneBits(u_input.a);
    global0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.a.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1951f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.c.b.xz, _wgslsmith_div_vec2_f32(vec2<f32>(var_1.a.b.x, global0.x), var_1.a.b.zy), !vec2<bool>(arg_2, true))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-397f, var_1.a.b.x)) + _wgslsmith_div_vec2_f32(var_1.c.b.xy, var_1.a.b.xx)))))));
    let var_3 = global1[_wgslsmith_index_u32(0u, 4u)];
    return Struct_2(~(-_wgslsmith_add_i32(arg_1.x, select(-1i, var_1.a.a.x, true))), !vec3<bool>(any(select(vec4<bool>(false, false, true, false), vec4<bool>(arg_2, false, false, var_3.b), vec4<bool>(var_1.b, var_3.b, true, true))), true, var_1.b), _wgslsmith_f_op_f32(895f * var_3.a.b.x), func_3(global1[_wgslsmith_index_u32(firstTrailingBit(reverseBits(1u)), 4u)], abs(_wgslsmith_clamp_u32(u_input.a.x, 4294967295u, u_input.a.x) << (u_input.a.x % 32u))).x, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    global1 = array<Struct_3, 4>();
    let var_1 = all(vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x))) > global0.x, true, true));
    let var_2 = func_4(_wgslsmith_add_u32(u_input.a.x, 1u), vec4<i32>(~func_1(vec3<bool>(var_1, var_1, false), firstTrailingBit(1i)), 1i, _wgslsmith_div_i32(-1713i, -_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 10011i, -34961i, -1i), vec4<i32>(-2147483647i, 56746i, 0i, 1i))), ~(i32(-1i) * -1i)), false, 7716i);
    var var_3 = vec3<u32>(~(~(15571u | u_input.a.x)), _wgslsmith_mult_u32(var_2.d, min(~1u, 11552u)), 16363u) & vec3<u32>(~func_3(Struct_3(Struct_1(vec2<i32>(var_2.a, var_2.a), vec3<f32>(var_2.c, var_2.c, var_2.c)), true, Struct_1(vec2<i32>(var_2.a, var_2.a), vec3<f32>(108f, var_2.c, var_2.c))), ~var_2.d).x, ~u_input.a.x, ~_wgslsmith_dot_vec2_u32(~u_input.a, ~u_input.a));
    var var_4 = Struct_1(-(~vec2<i32>(-48387i, -2147483647i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, 845f, global0.x), vec3<f32>(1212f, var_2.c, 1000f))))));
    let var_5 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(var_5, -_wgslsmith_sub_i32(42313i, 18193i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -637f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-701f * 927f)))), vec2<i32>(-1i) * -countOneBits(var_4.a), var_2.d);
}

