struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_2) -> f32 {
    global0 = array<Struct_2, 7>();
    var var_0 = -2877f;
    global0 = array<Struct_2, 7>();
    let var_1 = !any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    global0 = array<Struct_2, 7>();
    return _wgslsmith_div_f32(-1248f, arg_2);
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = false;
    global0 = array<Struct_2, 7>();
    global0 = array<Struct_2, 7>();
    let var_2 = _wgslsmith_div_vec3_u32(abs(~u_input.b.yyy), u_input.d);
    return arg_2;
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> bool {
    var var_0 = ~_wgslsmith_dot_vec4_u32(~u_input.b, countOneBits(u_input.b));
    let var_1 = arg_1.b;
    let var_2 = 10160i;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-145f, -603f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-725f * 456f))), _wgslsmith_mod_i32(-9660i, arg_0.x) != var_2)) * _wgslsmith_f_op_f32(f32(-1f) * -867f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-175f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-508f - 1000f), _wgslsmith_f_op_f32(select(-1073f, 306f, false)))))));
    let var_4 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(15283u, abs(max(u_input.c.x, 1u))), 7u)];
    return !(max(func_2(var_2, false, Struct_1(4294967295u, 9610u), var_1).b ^ 0u, ~abs(30207u)) < _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(reverseBits(u_input.b.wwy), u_input.c), 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 7>();
    global0 = array<Struct_2, 7>();
    global0 = array<Struct_2, 7>();
    global0 = array<Struct_2, 7>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(~u_input.b, u_input.b, _wgslsmith_f_op_f32(ceil(348f)), Struct_2(Struct_1(u_input.b.x, u_input.c.x), 13294u, 0i, -221f)))))), _wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(1223f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(279f)) + _wgslsmith_f_op_f32(f32(-1f) * -192f)))));
    var var_1 = select(vec4<u32>(firstLeadingBit(abs(~4294967295u)), u_input.b.x, abs(u_input.b.x), u_input.a), ~(~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, u_input.c.x), vec2<u32>(u_input.a, 24694u)), 0u, _wgslsmith_mult_u32(u_input.b.x, u_input.a), 59724u)), vec4<bool>(func_3(countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(9721i, 71403i), vec2<i32>(8530i, 1i), vec2<i32>(0i, -14969i))), func_2(1i, true, Struct_1(u_input.d.x, 68551u), 4497u)), !(any(vec4<bool>(true, false, true, true)) && any(vec2<bool>(true, false))), true, select(func_2(-18792i, false, Struct_1(4294967295u, u_input.c.x), u_input.c.x).b == ~0u, false, !(u_input.b.x != 48076u))));
    var var_2 = Struct_2(func_2(~_wgslsmith_clamp_i32(countOneBits(-2147483647i), reverseBits(-1i), ~4955i), true, func_2(-27132i, false, Struct_1(23307u, var_1.x), 76770u), reverseBits(0u)), _wgslsmith_mod_u32(_wgslsmith_div_u32(func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(-22587i, 1i, 11759i, 1i), vec4<i32>(-5569i, 2147483647i, -2147483647i, -1i)), true, Struct_1(20654u, var_1.x), var_1.x).b, u_input.b.x), ~var_1.x), -23131i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(f32(-1f) * -862f)) - -721f))));
    let var_3 = Struct_2(var_2.a, _wgslsmith_mod_u32(var_1.x, max(12138u ^ u_input.a, ~u_input.b.x) >> (((var_1.x & 0u) | (26007u >> (var_2.b % 32u))) % 32u)), 16810i, _wgslsmith_div_f32(var_2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -110f))))));
    let var_4 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_0.zx))))), var_3.d, var_3.d);
}

