struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_2;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = Struct_5(Struct_3(u_input.c.zx, vec2<bool>(arg_0, ~u_input.c.x > firstTrailingBit(1i)), ~(~(~u_input.a.zy)), u_input.c.x, Struct_1(arg_0)), Struct_1(false));
    var var_1 = _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(min(~vec3<u32>(global1.c.x, global1.c.x, 114362u), vec3<u32>(39476u, 4294967295u, var_0.a.c.x)), global1.c), ~(~vec3<u32>(u_input.a.x, 1u, u_input.a.x)) ^ ~u_input.a), min(abs(vec3<u32>(25665u, var_0.a.c.x, 29922u)) >> (vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.c.x, global1.c.x, 0u, 0u), vec4<u32>(var_0.a.c.x, 4294967295u, 1u, u_input.b)), min(global1.c.x, 1u), 25827u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(u_input.a, global1.c)));
    var var_2 = select(global1.c.x, 4294967295u, var_0.a.e.a);
    var_2 = firstTrailingBit(var_0.a.c.x);
    global1 = Struct_2(_wgslsmith_f_op_f32(min(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1491f))))), vec2<f32>(-609f, _wgslsmith_f_op_f32(max(-317f, 1f))), firstTrailingBit(_wgslsmith_div_vec3_u32(~vec3<u32>(var_0.a.c.x, 22109u, u_input.a.x), countOneBits(u_input.a))), 1u);
    return var_0.b;
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: u32, arg_3: Struct_1) -> f32 {
    var var_0 = Struct_4(arg_3);
    let var_1 = Struct_2(-2813f, _wgslsmith_div_vec2_f32(vec2<f32>(-1206f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x))), _wgslsmith_f_op_vec2_f32(round(global1.b))), global1.c, max(_wgslsmith_div_u32(reverseBits(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, arg_2), global1.c.yx) << (countOneBits(1u) % 32u)), select(_wgslsmith_mod_u32(0u, 1u), 38610u, (arg_3.a || true) | select(false, arg_1.x, var_0.a.a))));
    var var_2 = u_input.c.xx;
    var var_3 = abs(_wgslsmith_mult_vec3_u32(~vec3<u32>(_wgslsmith_mult_u32(arg_2, var_1.d), 60522u, 21383u), ~countOneBits(countOneBits(u_input.a))));
    let var_4 = var_1.b.x;
    return var_1.b.x;
}

fn func_1(arg_0: Struct_5, arg_1: Struct_5, arg_2: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(!(!(!vec3<bool>(true, arg_1.a.e.a, arg_0.a.e.a))), select(!(!vec3<bool>(false, arg_0.a.e.a, false)), vec3<bool>(arg_0.a.e.a, all(arg_0.a.b), all(vec4<bool>(arg_1.a.b.x, true, arg_1.b.a, arg_1.a.e.a))), false), ~0u, func_2(any(!vec4<bool>(arg_1.b.a, arg_0.b.a, arg_1.b.a, arg_1.a.b.x))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2, 669f))) + global1.b.x)));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(114f, -674f, _wgslsmith_f_op_f32(global1.a - -478f), -208f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.a, 644f, global1.b.x, global1.a))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1305f, global1.a, global1.a, 151f) * vec4<f32>(global1.a, global1.b.x, global1.b.x, global1.b.x))) + vec4<f32>(global1.b.x, 154f, _wgslsmith_f_op_f32(global1.b.x + global1.a), global1.b.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(599f, global1.b.x, 1000f, global1.a))))))));
    var var_1 = _wgslsmith_mod_i32(reverseBits(u_input.c.x | (-2147483647i & u_input.c.x)), _wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.c.x, -1i), u_input.c.x), -1i)) & u_input.c.x;
    var_1 = u_input.c.x;
    var_1 = -2147483647i;
    var var_2 = global1.c.yz;
    var var_3 = Struct_1(false);
    var var_4 = -countOneBits(reverseBits(vec4<i32>(-69893i, _wgslsmith_mod_i32(u_input.c.x, 39078i), func_1(Struct_5(Struct_3(vec2<i32>(-17543i, u_input.c.x), vec2<bool>(var_3.a, false), vec2<u32>(u_input.b, 56222u), 26177i, Struct_1(var_3.a)), Struct_1(var_3.a)), Struct_5(Struct_3(u_input.c.yy, vec2<bool>(var_3.a, false), vec2<u32>(0u, 1u), u_input.c.x, Struct_1(false)), Struct_1(var_3.a)), 886f), -1007i)));
    let var_5 = vec4<bool>(true, select(false, var_3.a, false & any(vec4<bool>(var_3.a, false, false, false))) == false, true, all(select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), var_3.a), vec2<bool>(var_3.a, false), select(vec2<bool>(false, true), vec2<bool>(true, var_3.a), false)), vec2<bool>(true, true), true)));
    let var_6 = global1.c.zz;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.c.x, 2147483647i, u_input.c.x));
}

