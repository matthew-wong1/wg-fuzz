struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<bool>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32 = -34915i;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    global1 = _wgslsmith_add_i32(26278i, arg_0);
    let var_0 = countOneBits(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(u_input.a, 4294967295u)) & 4294967295u));
    global1 = global0.b.x;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f))) - -777f);
    let var_2 = 529f;
    return select(arg_0, -arg_2.b.x, false);
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = 1i;
    let var_1 = !global0.c;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1178f, -589f)), vec2<f32>(1361f, _wgslsmith_f_op_f32(f32(-1f) * -161f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(213f, 703f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-600f, -136f) - vec2<f32>(604f, -648f))))));
    let var_3 = Struct_1(_wgslsmith_div_vec2_i32(reverseBits(_wgslsmith_add_vec2_i32(global0.b.yx << (vec2<u32>(1u, 44406u) % vec2<u32>(32u)), u_input.d)), global0.b.zz), global0.b, var_1, global0.c.x, u_input.d.x);
    global1 = -58882i;
    return 0u;
}

fn func_1(arg_0: vec4<f32>, arg_1: u32) -> vec2<bool> {
    global1 = _wgslsmith_mult_i32(((i32(-1i) * -global0.e) >> (~arg_1 % 32u)) | _wgslsmith_clamp_i32(-_wgslsmith_sub_i32(-17200i, -1i), global0.a.x & 0i, global0.b.x), 1i);
    let var_0 = abs(func_3(firstTrailingBit(func_2(u_input.c, vec2<bool>(true, global0.c.x), Struct_1(u_input.d, vec3<i32>(2147483647i, u_input.b, u_input.b), global0.c, false, -31144i), Struct_1(global0.a, vec3<i32>(0i, u_input.d.x, global0.b.x), vec2<bool>(global0.d, false), false, 2147483647i))))) & arg_1;
    global1 = ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.e, 2147483647i, u_input.d.x, global0.e) >> (vec4<u32>(0u, arg_1, arg_1, 12850u) % vec4<u32>(32u)), vec4<i32>(u_input.b, global0.e, u_input.d.x, u_input.c)), vec4<i32>(_wgslsmith_mult_i32(0i, -2147483647i), 2147483647i, ~(-64751i), u_input.d.x)), u_input.d.x, _wgslsmith_dot_vec4_i32(-firstTrailingBit(vec4<i32>(-2147483647i, global0.e, 1i, u_input.b)), min(-vec4<i32>(global0.e, -2147483647i, 13778i, -11197i), min(vec4<i32>(-29181i, global0.a.x, u_input.d.x, u_input.c), vec4<i32>(-1i, 19189i, -1i, global0.e)))));
    var var_1 = ~firstTrailingBit(select(~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.a, 11179u), vec3<u32>(u_input.a, arg_1, var_0)), select(~vec3<u32>(arg_1, var_0, 41990u), reverseBits(vec3<u32>(u_input.a, u_input.a, 61768u)), any(vec2<bool>(global0.c.x, false))), !(!vec3<bool>(true, global0.d, global0.c.x))));
    return vec2<bool>(global0.c.x, any(vec2<bool>(false, global0.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(-vec4<i32>(-39050i, global0.e, _wgslsmith_clamp_i32(-1i, 0i << (u_input.a % 32u), global0.e), firstTrailingBit(reverseBits(global0.e))));
    let var_1 = var_0.x <= -18861i;
    global0 = Struct_1(vec2<i32>(1i, 1i << (u_input.a % 32u)), -var_0.yyx >> (max(vec3<u32>(u_input.a | u_input.a, ~49555u, ~u_input.a), ~(~vec3<u32>(u_input.a, u_input.a, u_input.a))) % vec3<u32>(32u)), select(!(!global0.c), func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2257f, 1032f, -385f, -281f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-2387f, 987f, -522f, -813f) + vec4<f32>(1943f, -1491f, 309f, 568f))), 0u), func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(427f, 818f, 256f, -224f) - vec4<f32>(380f, 519f, 375f, 630f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1174f, 446f, -1798f, -1122f), vec4<f32>(-332f, -267f, 549f, -216f), vec4<bool>(false, var_1, global0.c.x, true)))), _wgslsmith_div_u32(u_input.a, 1u))), global0.c.x, func_2(abs(_wgslsmith_sub_i32(u_input.c << (u_input.a % 32u), -727i)), !(!(!vec2<bool>(false, var_1))), Struct_1(vec2<i32>(min(u_input.c, var_0.x), ~global0.b.x), _wgslsmith_sub_vec3_i32(~global0.b, vec3<i32>(global0.b.x, var_0.x, -2147483647i) | vec3<i32>(-36148i, -18371i, u_input.b)), vec2<bool>(true, var_1), global0.d, -1i), Struct_1(vec2<i32>(var_0.x, 2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, var_0.x, var_0.x), global0.b), global0.c, true, func_2(global0.a.x, global0.c, Struct_1(var_0.yw, var_0.ywy, vec2<bool>(global0.d, var_1), true, global0.a.x), Struct_1(vec2<i32>(u_input.c, global0.e), vec3<i32>(-23732i, var_0.x, var_0.x), vec2<bool>(true, var_1), false, var_0.x)))));
    let var_2 = 139f;
    global1 = firstTrailingBit(global0.a.x);
    let var_3 = Struct_1(vec2<i32>(~(-25563i), _wgslsmith_add_i32(-1i, var_0.x)), var_0.zzw, vec2<bool>(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-173f, -482f, var_2, -822f)))), _wgslsmith_clamp_u32(~u_input.a, ~17081u, u_input.a)).x, any(vec2<bool>(true, true))), _wgslsmith_add_i32(_wgslsmith_div_i32(~u_input.b, 2147483647i), -1i) == (abs(var_0.x) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), select(vec2<u32>(0u, 37930u), vec2<u32>(99767u, u_input.a), global0.c)) % 32u)), 9014i);
    var var_4 = global0.e;
    let var_5 = abs(2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(firstLeadingBit(firstLeadingBit(-var_0.x)), var_5));
}

