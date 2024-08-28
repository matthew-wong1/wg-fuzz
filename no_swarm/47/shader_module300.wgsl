struct Struct_1 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, 37912u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: f32) -> f32 {
    let var_0 = 127f;
    var var_1 = arg_0.x;
    let var_2 = vec3<u32>(~(~_wgslsmith_sub_u32(1u, 0u)) << (_wgslsmith_mult_u32(4294967295u, ~firstTrailingBit(4363u)) % 32u), u_input.a & (0u | global0.b), u_input.a);
    global0 = Struct_1(global0.b <= u_input.b.x, ~1u);
    var_1 = arg_0.x;
    return var_0;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = arg_0;
    var var_0 = 4294967295u;
    let var_1 = ~u_input.c >> (~global0.b % 32u);
    global0 = Struct_1(all(vec3<bool>(true, false && arg_0.a, !(!arg_0.a))), 1u);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(127f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-543f + 607f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-728f + 229f), _wgslsmith_f_op_f32(func_3(vec4<bool>(true, arg_0.a, arg_0.a, arg_1.a), Struct_1(false, 4294967295u), 168f)))), _wgslsmith_f_op_f32(f32(-1f) * -350f)))));
    return Struct_1(all(vec2<bool>(true, all(!vec2<bool>(global0.a, true)))), 60945u);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec4<u32>) -> f32 {
    let var_0 = ~_wgslsmith_mult_u32(arg_1.b, ~firstTrailingBit(1u) >> (func_2(Struct_1(true, 4294967295u), func_2(arg_1, Struct_1(arg_1.a, u_input.a))).b % 32u));
    var var_1 = Struct_1(all(vec4<bool>(any(select(vec4<bool>(false, false, false, true), vec4<bool>(arg_1.a, arg_1.a, true, arg_1.a), vec4<bool>(true, arg_1.a, false, global0.a))), !all(vec2<bool>(global0.a, global0.a)), false, true)), reverseBits(~_wgslsmith_mult_u32(_wgslsmith_div_u32(15952u, 15049u), 1u)));
    global0 = Struct_1(!global0.a, abs(arg_1.b));
    global0 = Struct_1(false && global0.a, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_3.x), vec2<u32>(~0u, 4294967295u)), ~0u));
    let var_2 = min(_wgslsmith_dot_vec3_u32(~min(firstLeadingBit(vec3<u32>(global0.b, arg_3.x, var_1.b)), ~arg_3.wzw), _wgslsmith_div_vec3_u32(~vec3<u32>(var_0, var_1.b, 1u), ~select(arg_3.zyw, arg_3.wxx, vec3<bool>(var_1.a, true, true)))), reverseBits(reverseBits(~abs(var_1.b))));
    return _wgslsmith_f_op_f32(f32(-1f) * -100f);
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(-2496f, _wgslsmith_f_op_f32(func_4(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, 0i, 38596i), vec3<i32>(1i, u_input.c, u_input.c)), func_2(Struct_1(true, global0.b), Struct_1(true, 10259u)), ~vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(global0.b, 1u, 0u, global0.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-843f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1231f - 1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -137f) + _wgslsmith_f_op_f32(141f - -641f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-860f)), -199f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -449f), _wgslsmith_f_op_f32(trunc(-1691f)), -901f)), vec3<f32>(1f, 1f, 1f), true))));
    var var_1 = Struct_1(!(true && !(global0.a && global0.a)), countOneBits(4294967295u));
    return Struct_1(!all(vec4<bool>(false, var_1.a, false, any(vec4<bool>(true, true, var_1.a, var_1.a)))), ~(~(~1u) ^ u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    let var_1 = func_1();
    var var_2 = !(!all(select(vec4<bool>(true, true, false, var_1.a), select(vec4<bool>(true, var_1.a, false, global0.a), vec4<bool>(var_1.a, global0.a, true, var_1.a), vec4<bool>(var_1.a, false, true, false)), !vec4<bool>(global0.a, global0.a, true, global0.a))));
    var var_3 = 5531i;
    var var_4 = -abs(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(12030i, u_input.c)), select(vec2<i32>(u_input.c, u_input.c) | vec2<i32>(32469i, 2147483647i), firstLeadingBit(vec2<i32>(u_input.c, u_input.c)), var_1.b == 2223u)));
    var var_5 = func_1();
    var_4 = ~_wgslsmith_sub_vec2_i32(abs(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, var_4.x), vec2<i32>(u_input.c, u_input.c)), -vec2<i32>(1i, u_input.c))), firstLeadingBit(-select(vec2<i32>(u_input.c, 2147483647i), vec2<i32>(-1i, 1i), true)));
    var var_6 = select(max(12145i, ~(-10795i)), 2147483647i, 1589i < var_4.x);
    let var_7 = Struct_1(!var_1.a != (~(~27252u) != countOneBits(min(global0.b, u_input.b.x))), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-700f, -1029f, -1206f, 1736f)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1034f, 1135f, 702f, -522f)))))))), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(26512u, var_1.b), vec2<u32>(465u, var_7.b)), ~(~787u)) & global0.b, firstTrailingBit(~abs(_wgslsmith_sub_vec3_u32(vec3<u32>(var_5.b, var_1.b, var_1.b), vec3<u32>(var_7.b, global0.b, 1u)))));
}

