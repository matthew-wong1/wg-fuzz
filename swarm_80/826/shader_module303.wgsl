struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec2<u32>, 6>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: vec2<i32>, arg_3: vec3<f32>) -> f32 {
    global0 = Struct_3(arg_3.x, vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0.b.x, 0u), global0.b.ywx) << (arg_0 % 32u), _wgslsmith_mod_u32(1u, u_input.a.x), _wgslsmith_mod_u32(countOneBits(_wgslsmith_sub_u32(arg_0, 4294967295u)), abs(reverseBits(global0.b.x))), 1u ^ ~arg_0));
    var var_0 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1693f), global0.b);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-353f, var_0.a))), arg_3.zz, true)) + arg_3.zy) - _wgslsmith_f_op_vec2_f32(trunc(arg_1)));
    let var_2 = ~u_input.b.x;
    var var_3 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_0.a, arg_1.x))))))), _wgslsmith_clamp_vec4_u32(max(select(u_input.b, vec4<u32>(u_input.b.x, 1u, var_2, global0.b.x), vec4<bool>(true, true, true, true)), ~global0.b), vec4<u32>(~(~var_0.b.x), reverseBits(var_0.b.x), arg_0, ~_wgslsmith_clamp_u32(4294967295u, var_0.b.x, 0u)), ~vec4<u32>(reverseBits(42459u), 0u, 65972u << (var_2 % 32u), 1u)));
    return -413f;
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global0.b.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(-125f, 1160f) - vec2<f32>(global0.a, -925f)), ~vec2<i32>(31954i, u_input.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, global0.a, 1007f) + vec3<f32>(global0.a, -138f, -336f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1355f)) + global0.a)), global0.a) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)));
    global1 = array<vec2<u32>, 6>();
    var var_1 = Struct_3(284f, _wgslsmith_add_vec4_u32(vec4<u32>(1u, ~min(global0.b.x, 1u), 26394u, _wgslsmith_mod_u32(u_input.b.x, u_input.a.x)), ~(global0.b ^ select(u_input.b, vec4<u32>(77594u, u_input.d.x, u_input.a.x, 0u), vec4<bool>(true, false, false, false)))));
    let var_2 = Struct_2(vec4<u32>((~global0.b.x | abs(global0.b.x)) & ~firstLeadingBit(11754u), global0.b.x, 1u, 15988u), _wgslsmith_clamp_vec4_i32(vec4<i32>(-u_input.c, max(-50037i, u_input.c), ~_wgslsmith_sub_i32(1i, u_input.c), u_input.c), reverseBits(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, u_input.c, -1i, -1i), vec4<i32>(-1i, 1i, 2147483647i, u_input.c))), vec4<i32>(u_input.c, abs(_wgslsmith_mod_i32(-2147483647i, u_input.c)), -56543i, _wgslsmith_mult_i32(u_input.c, u_input.c))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(415f, var_1.a, -1000f)) * vec3<f32>(var_1.a, 331f, global0.a))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(select(var_1.a, 854f, true))), _wgslsmith_f_op_f32(sign(var_0.x)))), firstTrailingBit(9444u)));
    let var_3 = -vec3<i32>(firstLeadingBit(~(~u_input.c)), -2563i, _wgslsmith_add_i32(0i, 2844i));
    return Struct_3(_wgslsmith_f_op_f32(-global0.a), var_2.a);
}

fn func_1() -> f32 {
    global1 = array<vec2<u32>, 6>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(global0.a * global0.a), -555f, 247f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-635f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * -217f))));
    let var_1 = func_2();
    var var_2 = -1i;
    global1 = array<vec2<u32>, 6>();
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * global0.a) > _wgslsmith_f_op_f32(func_1());
    global0 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(global0.a, -499f);
}

