struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<u32>(1u, 21060u), vec4<bool>(false, true, true, false), true);

var<private> global1: vec2<f32>;

var<private> global2: array<vec3<i32>, 17>;

var<private> global3: array<vec3<u32>, 10> = array<vec3<u32>, 10>(vec3<u32>(4294967295u, 51423u, 0u), vec3<u32>(4294967295u, 4294967295u, 12241u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(1u, 53686u, 17192u), vec3<u32>(8761u, 51199u, 0u), vec3<u32>(1u, 4294967295u, 71659u), vec3<u32>(22351u, 29051u, 16706u), vec3<u32>(1u, 44407u, 1u), vec3<u32>(1u, 1u, 13226u), vec3<u32>(16444u, 39360u, 4294967295u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: f32) -> vec3<bool> {
    let var_0 = Struct_3(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.c, ~u_input.c), u_input.a), vec2<u32>(0u, 1u)), !(!select(!global0.b, vec4<bool>(global0.c, global0.c, global0.b.x, global0.c), global0.c)), true);
    var var_1 = !select(select(vec2<bool>(global0.c, true), !select(global0.b.xy, global0.b.zw, true), var_0.b.xz), select(select(!vec2<bool>(global0.b.x, var_0.c), vec2<bool>(true, var_0.c), global0.c), vec2<bool>(all(vec4<bool>(true, global0.c, false, var_0.b.x)), all(vec4<bool>(false, var_0.b.x, false, var_0.b.x))), true), select(vec2<bool>(u_input.b < 54001u, global0.c), select(vec2<bool>(global0.c, true), !global0.b.xz, vec2<bool>(var_0.c, var_0.c)), true));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.b.x)));
    global3 = array<vec3<u32>, 10>();
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.b.x - -270f), _wgslsmith_f_op_f32(var_2 * arg_3)))))));
    return global0.b.yyz;
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: vec3<i32>) -> i32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_sub_vec2_i32(-_wgslsmith_mod_vec2_i32(arg_3.yy, vec2<i32>(23614i, arg_3.x)), arg_3.xz), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(round(arg_1.x)), -219f, _wgslsmith_div_f32(-312f, -888f))))), ~abs(abs(~vec4<u32>(u_input.c.x, arg_2.x, 0u, 31283u))), !select(select(func_3(Struct_1(arg_3.xz, vec3<f32>(2687f, -1000f, arg_1.x)), Struct_1(arg_3.yz, arg_1.yxw), vec3<f32>(-2981f, -1679f, arg_1.x), -770f), select(vec3<bool>(global0.b.x, false, true), vec3<bool>(false, global0.c, global0.b.x), global0.c), select(global0.b.wzy, global0.b.xzx, global0.b.zzy)), !vec3<bool>(true, global0.c, true), global0.b.x), Struct_1(select(arg_3.zz, ~arg_3.xz, vec2<bool>(!global0.c, any(vec4<bool>(true, global0.b.x, global0.c, false)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-arg_1.zzx)))), Struct_1(reverseBits(vec2<i32>(-2147483647i, 16126i)) >> (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(90234u, 0u, 4294967295u, 7215u), vec4<u32>(1u, u_input.a, global0.a.x, arg_0)), 1u) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, -2367f)) - _wgslsmith_div_vec3_f32(vec3<f32>(-1822f, -948f, global1.x), vec3<f32>(arg_1.x, global1.x, -1000f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.wwx)))));
    return ~45761i;
}

fn func_4(arg_0: vec3<i32>) -> Struct_1 {
    global3 = array<vec3<u32>, 10>();
    let var_0 = !global0.b;
    let var_1 = 2147483647i;
    var var_2 = Struct_4(Struct_3(~(~vec2<u32>(global0.a.x, u_input.c.x)), global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - 402f)) == -970f), var_0.yxy);
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(step(global1.x, _wgslsmith_f_op_f32(-1000f - -1387f)))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1.x), 1215f)))));
    return Struct_1(_wgslsmith_mod_vec2_i32(arg_0.xy, arg_0.xx), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-940f * global1.x)), 179f, _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(986f, -972f, 495f), vec3<f32>(global1.x, global1.x, global1.x)))))))));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = func_4(-vec3<i32>(~(-31722i) & func_2(u_input.c.x, vec4<f32>(global1.x, global1.x, global1.x, global1.x), global0.a, vec3<i32>(-2147483647i, -63626i, -1i)), -14579i, 1i));
    global0 = Struct_3(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(~(u_input.c.zz >> (global0.a % vec2<u32>(32u))), u_input.c.xz), vec2<u32>(8146u, 54747u)), !select(select(vec4<bool>(arg_0.x, false, global0.c, true), vec4<bool>(true, true, arg_0.x, global0.b.x), true), !vec4<bool>(true, global0.b.x, arg_0.x, false), any(global0.b.xzw) || true), any(vec2<bool>(false, all(global0.b.xy))));
    var var_1 = Struct_1(reverseBits(-min(-var_0.a, var_0.a)), vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.b.x)), 569f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1625f)), _wgslsmith_f_op_f32(-global1.x))))));
    global2 = array<vec3<i32>, 17>();
    let var_2 = Struct_3(u_input.c.zy, !global0.b, arg_0.x);
    return Struct_1(var_0.a | max(vec2<i32>(-var_0.a.x, _wgslsmith_mod_i32(var_1.a.x, -577i)), var_1.a), vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-769f + var_0.b.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global0.b.wy);
    var var_1 = 50647u;
    var var_2 = Struct_2(var_0, vec4<u32>(u_input.b >> (~global0.a.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(~0u, ~u_input.c.x), u_input.c.xx), 94087u, u_input.c.x), !vec3<bool>(_wgslsmith_sub_i32(1i, var_0.a.x) >= var_0.a.x, !all(global0.b.wwz), global1.x > -853f), var_0, Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b) + vec3<f32>(var_0.b.x, var_0.b.x, 225f)))));
    global3 = array<vec3<u32>, 10>();
    let var_3 = global0.a.x;
    let var_4 = global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-2147483647i, -_wgslsmith_sub_i32(var_2.e.a.x, var_2.a.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b.xz) + _wgslsmith_f_op_vec2_f32(vec2<f32>(func_1(vec2<bool>(true, true)).b.x, _wgslsmith_f_op_f32(-var_0.b.x)) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, var_2.a.b.x)))))), ~vec2<u32>(max(61454u, global0.a.x), ~global0.a.x), _wgslsmith_sub_u32(_wgslsmith_add_u32(firstLeadingBit(u_input.a), var_2.b.x), _wgslsmith_mod_u32(var_2.b.x >> (~global0.a.x % 32u), countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 40597u, 24971u, 0u), vec4<u32>(var_2.b.x, 9407u, 1u, 65316u))))), ~firstTrailingBit(-vec3<i32>(-65429i, -1i, var_0.a.x) >> (~u_input.c % vec3<u32>(32u))));
}

