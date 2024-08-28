struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 1u);

var<private> global1: f32;

var<private> global2: array<Struct_1, 1>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = true;
    global0 = u_input.b;
    return global2[_wgslsmith_index_u32(66882u, 1u)];
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<i32>) -> u32 {
    let var_0 = Struct_2(func_1(-1029f));
    let var_1 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2144f), _wgslsmith_div_f32(961f, -1029f))))));
    let var_2 = var_0;
    let var_3 = vec4<i32>(58736i, -_wgslsmith_mod_i32(1i, _wgslsmith_add_i32(3938i, 36670i)), var_0.a.b.x, _wgslsmith_mod_i32(var_2.a.b.x, -17032i));
    var var_4 = var_1;
    return 60983u;
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec4<bool>, arg_3: u32) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1354f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -678f) + _wgslsmith_f_op_f32(select(-1409f, 646f, arg_2.x))), _wgslsmith_f_op_f32(f32(-1f) * -143f)))));
    let var_1 = vec2<i32>(-1i) * -(-vec2<i32>(arg_0.a.b.x, arg_0.a.b.x) | vec2<i32>(-1i, arg_0.a.b.x | -1431i));
    var_0 = 1156f;
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-849f + -199f) - _wgslsmith_f_op_f32(398f - -1835f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(152f)) - _wgslsmith_f_op_f32(max(918f, -893f))))))));
    var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, 194f) * vec2<f32>(864f, var_2.x)))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(636f)), _wgslsmith_f_op_f32(var_2.x * var_2.x)) * vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), var_2.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(trunc(1115f))) + vec2<f32>(_wgslsmith_f_op_f32(-2044f + var_2.x), _wgslsmith_f_op_f32(var_2.x * -1552f)))), arg_2.x));
    return StorageBuffer(~(select(arg_0.a.c.x, abs(arg_1), false) << (_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(arg_0.a.c, vec4<u32>(arg_3, arg_1, 37960u, arg_0.a.c.x)), select(u_input.a.x, global0.x, arg_0.a.a.x)) % 32u)), vec4<u32>(u_input.b.x, 0u, ~_wgslsmith_sub_u32(func_1(174f).c.x, 1869u), arg_3), vec3<u32>(arg_3 >> (18134u % 32u), u_input.a.x, _wgslsmith_dot_vec4_u32(~arg_0.a.c << (~vec4<u32>(4294967295u, arg_0.a.c.x, 1u, u_input.a.x) % vec4<u32>(32u)), abs(vec4<u32>(arg_3, arg_3, 4294967295u, u_input.b.x)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.x + var_2.x)))), 471f), _wgslsmith_div_vec2_i32(~(-abs(arg_0.a.b.xz)), -vec2<i32>(arg_0.a.b.x, var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_add_vec2_u32(~(~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 8929u) << (u_input.a % vec2<u32>(32u)), vec2<u32>(u_input.a.x, u_input.a.x) | vec2<u32>(u_input.a.x, 4294967295u))), firstTrailingBit(~(~(~u_input.a))));
    let var_0 = Struct_2(global2[_wgslsmith_index_u32(global0.x, 1u)]);
    var var_1 = func_1(-502f);
    let x = u_input.a;
    s_output = func_3(Struct_2(var_0.a), _wgslsmith_clamp_u32(~var_1.c.x, abs(1u), 0u), !(!select(vec4<bool>(false, var_1.a.x, var_1.a.x, true), select(vec4<bool>(var_1.a.x, var_0.a.a.x, var_0.a.a.x, var_0.a.a.x), vec4<bool>(false, false, true, false), var_0.a.a.x), !vec4<bool>(true, var_1.a.x, var_0.a.a.x, false))), func_2(var_1.c, vec3<i32>(-25178i, var_0.a.b.x, var_0.a.b.x)));
}

