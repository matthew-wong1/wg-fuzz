struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(43889u), Struct_1(2168u), Struct_1(23202u), Struct_1(46978u), Struct_1(4294967295u), Struct_1(0u), Struct_1(1u), Struct_1(0u), Struct_1(43532u), Struct_1(36210u), Struct_1(84929u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(7304u), Struct_1(4294967295u), Struct_1(1u), Struct_1(133417u), Struct_1(1u), Struct_1(1u), Struct_1(4294967295u), Struct_1(0u), Struct_1(0u), Struct_1(29189u), Struct_1(767u), Struct_1(61750u));

var<private> global1: array<vec3<i32>, 26>;

var<private> global2: vec2<i32>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> i32 {
    var var_0 = any(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)));
    var var_1 = global0[_wgslsmith_index_u32(58566u, 25u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -996f) * -120f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1215f)) * _wgslsmith_f_op_f32(f32(-1f) * -211f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-101f * 241f) + -1151f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-661f, -973f)))))))));
    var var_3 = abs(min(_wgslsmith_mult_u32(var_1.a, 9298u), 85496u));
    var var_4 = reverseBits(select(-1i, 14489i, true)) & -28949i;
    return max(min(_wgslsmith_clamp_i32(~1584i, global2.x, u_input.b), -global2.x), -72955i) | 36216i;
}

fn func_2() -> f32 {
    global2 = _wgslsmith_div_vec2_i32(~_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a.zz, vec2<i32>(global2.x, global2.x) | vec2<i32>(global2.x, -67562i)), ~vec2<i32>(-5616i, 1i)), u_input.a.xw);
    global2 = _wgslsmith_sub_vec2_i32(~(~vec2<i32>(i32(-1i) * -2147483647i, 2147483647i)), firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(max(u_input.b, -2147483647i), max(2147483647i, -1i)), u_input.a.wx)));
    var var_0 = Struct_1(17457u);
    global1 = array<vec3<i32>, 26>();
    let var_1 = Struct_2(true, func_3(), abs(~0i));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(258f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-858f)))), _wgslsmith_f_op_f32(max(-1190f, 1f)))));
}

fn func_1(arg_0: vec3<bool>) -> bool {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-653f - _wgslsmith_f_op_f32(step(546f, -2785f))) - 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), 796f);
    var var_1 = max(54844u, _wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(88813u, 48611u, 4294967295u), abs(33572u), select(10952u, 0u, false), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 74282u, 21558u, 27799u), vec4<u32>(87470u, 1u, 1u, 83724u))), ~select(vec4<u32>(1u, 64327u, 5509u, 86396u), vec4<u32>(15964u, 4294967295u, 1u, 13848u), false))));
    global2 = -firstTrailingBit(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(~u_input.a.zx, vec2<i32>(u_input.a.x, global2.x), -vec2<i32>(u_input.b, global2.x)), firstTrailingBit(u_input.a.xx) & u_input.a.xx));
    global0 = array<Struct_1, 25>();
    global1 = array<vec3<i32>, 26>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(!func_1(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true))), u_input.a.x, u_input.b);
    let var_1 = Struct_1(20964u);
    global0 = array<Struct_1, 25>();
    let var_2 = 1129f;
    var var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(244f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2, -968f, var_0.a)) * _wgslsmith_f_op_f32(f32(-1f) * -1484f)), var_2), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, 637f, -164f) + vec3<f32>(-155f, -153f, var_2))))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2, var_2, -1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, 1162f, 1518f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(750f, var_2, var_2))), vec3<f32>(var_2, -661f, 777f))));
    global1 = array<vec3<i32>, 26>();
    global0 = array<Struct_1, 25>();
    var var_4 = select(vec3<bool>(var_0.a, any(vec4<bool>(1252f <= var_2, all(vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a)), var_0.a, var_0.a)), all(!vec2<bool>(var_0.a, false))), vec3<bool>(var_0.b <= var_0.c, true, var_0.a), all(vec2<bool>((false & var_0.a) == all(vec2<bool>(var_0.a, var_0.a)), all(select(vec2<bool>(true, var_0.a), vec2<bool>(false, var_0.a), vec2<bool>(var_0.a, false))))));
    var var_5 = countOneBits(global2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_2()), var_1.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1594f, var_2, -405f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(920f, 636f, -483f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2, 1069f, -1000f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2, var_2, -374f), vec3<f32>(-959f, 1419f, -1137f))) * _wgslsmith_div_vec3_f32(vec3<f32>(var_2, var_2, -396f), vec3<f32>(var_3.x, -283f, var_2)))), vec3<bool>(var_0.a != false, any(var_4.xx), true))));
}

