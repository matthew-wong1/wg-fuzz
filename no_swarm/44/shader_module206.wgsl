struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
    c: Struct_2,
    d: Struct_3,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: i32 = -23083i;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: vec3<i32>, arg_3: f32) -> u32 {
    global0 = arg_1;
    var var_0 = Struct_5(_wgslsmith_dot_vec4_i32(firstTrailingBit(-(vec4<i32>(11877i, arg_2.x, arg_2.x, u_input.e) ^ vec4<i32>(-1i, arg_2.x, arg_2.x, 73859i))), min(-vec4<i32>(0i, -28294i, arg_2.x, u_input.c), vec4<i32>(u_input.e, -1i, 2147483647i, 1i) | vec4<i32>(u_input.c, 1i, u_input.e, 0i)) >> (~(~vec4<u32>(300u, u_input.d, u_input.a.x, 0u)) % vec4<u32>(32u))));
    global1 = -1i;
    var var_1 = arg_2.xz << (vec2<u32>(_wgslsmith_mult_u32(reverseBits(1u), ~(~0u)), ~22463u) % vec2<u32>(32u));
    let var_2 = 4294967295u;
    return u_input.a.x;
}

fn func_2(arg_0: bool, arg_1: Struct_5, arg_2: i32) -> Struct_5 {
    global0 = vec3<f32>(-978f, global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -431f)) * -612f));
    var var_0 = Struct_4(-1i >> (_wgslsmith_add_u32(u_input.a.x, u_input.d) % 32u), vec3<u32>(reverseBits(_wgslsmith_clamp_u32(1u, ~u_input.d, u_input.a.x)), ~_wgslsmith_mult_u32(~41409u, _wgslsmith_div_u32(u_input.a.x, u_input.a.x)), func_3(arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, global0.x, global0.x))) + vec3<f32>(global0.x, global0.x, 330f)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.e, arg_2, arg_1.a) >> (vec3<u32>(u_input.a.x, u_input.a.x, u_input.d) % vec3<u32>(32u)), -vec3<i32>(27977i, arg_2, arg_1.a), ~vec3<i32>(1i, u_input.b, arg_2)), -1616f)), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(global0.yz * vec2<f32>(192f, 1535f)), select(!vec4<bool>(true, true, arg_0, arg_0), !vec4<bool>(arg_0, arg_0, arg_0, true), 67924i == arg_1.a), _wgslsmith_f_op_f32(global0.x + global0.x))), Struct_3(-2147483647i, vec2<bool>(arg_0, all(select(vec4<bool>(arg_0, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, arg_0, arg_0, arg_0))))));
    var var_1 = true;
    var var_2 = 1u;
    let var_3 = _wgslsmith_f_op_f32(max(global0.x, -1679f));
    return Struct_5(_wgslsmith_div_i32(~(arg_1.a ^ var_0.d.a), _wgslsmith_mult_i32(677i, _wgslsmith_mult_i32(arg_1.a, arg_2) << (~4294967295u % 32u))));
}

fn func_4(arg_0: Struct_5, arg_1: u32, arg_2: f32, arg_3: Struct_3) -> i32 {
    var var_0 = arg_3.b.x;
    var var_1 = arg_3;
    var var_2 = ~(~arg_1);
    var_2 = min(61280u, u_input.a.x);
    let var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, arg_2, 334f)) + vec3<f32>(164f, arg_2, arg_2)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, 1508f, arg_2), vec3<f32>(global0.x, global0.x, 461f), true)))))));
    return -reverseBits(u_input.c);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: vec3<f32>, arg_3: vec4<bool>) -> vec3<f32> {
    let var_0 = Struct_3(func_4(func_2(!arg_3.x, Struct_5(min(u_input.c, 33668i)), countOneBits(~arg_1.a)), firstLeadingBit(1u), -840f, Struct_3(arg_0.x, arg_3.wy)), !select(!(!vec2<bool>(arg_1.d.b.x, arg_3.x)), arg_3.xz, vec2<bool>(false | arg_3.x, all(arg_1.c.a.b.yw))));
    return vec3<f32>(arg_1.c.a.a.x, -702f, global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(889f, global0.x, global0.x))), vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(626f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-1023f - -1000f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(vec4<i32>(u_input.b, 1i, u_input.b, -24073i), Struct_4(u_input.b, vec3<u32>(u_input.d, u_input.a.x, u_input.d), Struct_2(Struct_1(vec2<f32>(315f, 840f), vec4<bool>(true, true, true, false), global0.x)), Struct_3(u_input.e, vec2<bool>(true, true))), vec3<f32>(1000f, global0.x, global0.x), vec4<bool>(false, false, false, true))))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-385f, _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(round(global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -333f)))));
    global1 = 0i;
    global1 = _wgslsmith_mod_i32(u_input.b, i32(-1i) * -(~1i));
    var var_0 = vec3<f32>(-1000f, 370f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))));
    let var_1 = select(vec4<bool>(all(vec4<bool>(true, true, true, true)), true, true, false), select(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), -1031f <= global0.x), vec4<bool>(true, true, true, true), true), false);
    var var_2 = var_1.wz;
    var var_3 = vec3<f32>(-514f, _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -543f)))))), 718f);
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(145f, var_0.x))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.xy) + var_0.yy)))));
    global0 = vec3<f32>(-1543f, _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1358f - var_3.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, abs(u_input.e >> (u_input.a.x % 32u)) & (-u_input.e >> (abs(firstTrailingBit(u_input.d)) % 32u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1105f, -961f, var_3.x, 965f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-680f, var_4.x, var_3.x, var_3.x) * vec4<f32>(var_0.x, global0.x, 341f, var_4.x))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 279f, var_0.x, global0.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-207f, global0.x, -1277f, -359f))))), all(!select(var_1, vec4<bool>(var_2.x, var_1.x, var_2.x, true), var_1)))));
}

