struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(57876u, 44990u), vec3<i32>(-508i, -1i, 1i), vec4<f32>(305f, -1094f, 986f, 109f));

var<private> global1: Struct_1 = Struct_1(vec2<u32>(0u, 6774u), vec3<i32>(-20063i, 1i, 0i), vec4<f32>(-481f, -149f, -636f, 1000f));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    global1 = Struct_1(abs(vec2<u32>(abs(_wgslsmith_dot_vec2_u32(global0.a, vec2<u32>(global1.a.x, 48443u))), global1.a.x)), vec3<i32>(-select(global0.b.x, global1.b.x, true) << (firstLeadingBit(~global0.a.x) % 32u), u_input.a.x, 2147483647i), global1.c);
    return Struct_1(min(~u_input.b, global1.a), _wgslsmith_mod_vec3_i32(firstLeadingBit(~vec3<i32>(global1.b.x, 2147483647i, global0.b.x)), global0.b), vec4<f32>(_wgslsmith_f_op_f32(-1375f - global1.c.x), _wgslsmith_f_op_f32(max(-1578f, 1230f)), 110f, -173f));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: Struct_1) -> vec3<f32> {
    let var_0 = func_2();
    var var_1 = Struct_1(global0.a, vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.b.x, 1i, 2147483647i, global1.b.x), _wgslsmith_div_vec4_i32(vec4<i32>(global1.b.x, arg_3.b.x, -1i, -13986i), vec4<i32>(0i, 7995i, 512i, 1i))), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, global0.b.x, -11022i), vec4<i32>(2147483647i, 37473i, 38719i, 1i)), ~(var_0.b.x >> (global0.a.x % 32u))), -2147483647i, ~global1.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.c.x, global1.c.x, -622f, 1717f)))) + vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(round(900f)), global1.c.x, arg_3.c.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -127f, -110f, -876f) - vec4<f32>(var_0.c.x, var_0.c.x, global1.c.x, var_0.c.x)) * vec4<f32>(317f, -691f, arg_3.c.x, arg_0.x)) * _wgslsmith_f_op_vec4_f32(trunc(arg_3.c)))));
    global0 = var_0;
    var var_2 = true | (_wgslsmith_mod_u32(arg_3.a.x ^ select(30345u, 17027u, arg_2.x), ~(~global0.a.x)) <= 1u);
    global0 = func_2();
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c.wzx), vec3<f32>(_wgslsmith_f_op_f32(-var_0.c.x), arg_3.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))));
}

fn func_1(arg_0: Struct_1) -> i32 {
    global1 = func_2();
    let var_0 = vec3<bool>(true, true, true);
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(global0.c.zzz - _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec4_f32(ceil(arg_0.c)), _wgslsmith_mult_vec3_i32(-arg_0.b, -vec3<i32>(-49071i, 0i, -53239i)), !(!vec4<bool>(true, var_0.x, true, true)), arg_0)))));
    let var_2 = func_2();
    let var_3 = ~vec4<u32>(~arg_0.a.x, func_2().a.x, 6539u, reverseBits(0u));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(reverseBits(vec2<u32>(firstTrailingBit(21693u), 21255u) & ~vec2<u32>(257u, 4294967295u)), vec3<i32>(-1i) * -vec3<i32>(~(-1i), func_1(Struct_1(vec2<u32>(global0.a.x, 0u), vec3<i32>(global1.b.x, global0.b.x, global1.b.x), vec4<f32>(global0.c.x, global1.c.x, global0.c.x, global1.c.x))), u_input.a.x >> (0u % 32u)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.c.x)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(644f, 616f)), _wgslsmith_f_op_f32(global0.c.x - 245f), true))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(730f, global1.c.x) + global1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(546f, -238f)) + 163f)), _wgslsmith_f_op_f32(global1.c.x + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(958f - global1.c.x))))));
    let var_1 = ~8567u;
    var var_2 = false;
    var var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_div_f32(var_0.c.x, -865f))))));
    var_2 = false;
    var_2 = false;
    let var_4 = _wgslsmith_f_op_vec4_f32(-global0.c);
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, max(global0.a.x | 4294967295u, min(~11471u, _wgslsmith_sub_u32(global0.a.x, 37300u)) >> (_wgslsmith_add_u32(37123u ^ var_0.a.x, ~0u) % 32u)));
}

