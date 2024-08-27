struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: u32 = 14562u;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec3<f32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2.x, 1304f, arg_2.x), vec3<f32>(872f, arg_2.x, arg_2.x)))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, arg_2.x, 440f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 1450f, arg_2.x), vec3<f32>(-792f, 1017f, -1395f), arg_0.d)))))))));
    let var_1 = arg_0.b;
    global1 = 3895u;
    return ~u_input.d.x;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> f32 {
    global1 = (~u_input.a.x >> (~_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a.x, 35780u), select(4294967295u, 4294967295u, arg_0.a)) % 32u)) >> (max(_wgslsmith_div_u32(~(~0u), 1u), ~(countOneBits(u_input.e.x) & u_input.a.x)) % 32u);
    global0 = _wgslsmith_div_i32(~u_input.b.x, -55490i);
    var var_0 = select(!(!arg_2.e), select(arg_0.e, select(select(!vec2<bool>(arg_2.b, true), arg_2.e, vec2<bool>(false, arg_2.c)), vec2<bool>(arg_0.b, true), arg_2.e.x), select(arg_0.d.yy, arg_2.d.xx, all(select(vec3<bool>(true, false, arg_2.d.x), vec3<bool>(arg_0.d.x, arg_2.b, false), arg_2.d)))), true);
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(abs(-1436f))));
    global0 = ~u_input.c.x;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(855f))))), arg_1.x));
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_dot_vec4_u32(~(~vec4<u32>(27789u, u_input.a.x, 7490u, 4294967295u)), ~(vec4<u32>(u_input.a.x, u_input.a.x, 33898u, 4294967295u) | vec4<u32>(0u, 86971u, u_input.a.x, 0u)) << (~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e.x, u_input.a.x, u_input.e.x, 42199u), vec4<u32>(u_input.e.x, 4294967295u, u_input.e.x, 15955u), vec4<u32>(4294967295u, 4294967295u, 51243u, 4294967295u)) % vec4<u32>(32u))) >> (_wgslsmith_div_u32(~firstLeadingBit(u_input.a.x | 108424u), ~1u) % 32u);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(false, true, false, vec3<bool>(false, false, false), vec2<bool>(true, false)), vec3<f32>(-1408f, 1012f, -1564f), Struct_1(false, false, true, vec3<bool>(true, false, true), vec2<bool>(false, true)))) + -352f), -1855f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-437f - -574f) * _wgslsmith_div_f32(310f, 1198f))))));
    var_1 = _wgslsmith_f_op_f32(abs(1f));
    var var_2 = Struct_1(!all(vec3<bool>(true, true, true)) || true, true, true, !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), all(vec2<bool>(true, true))), all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false))), !select(select(vec2<bool>(true, true), vec2<bool>(true, false), any(vec4<bool>(false, true, false, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, false)));
    return abs(u_input.e.x >> (_wgslsmith_add_u32(max(var_0, 1u) | ~23463u, _wgslsmith_clamp_u32(var_0, u_input.e.x, 12837u) ^ ~u_input.e.x) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_sub_i32(reverseBits(_wgslsmith_mult_i32(func_1(Struct_1(false, false, true, vec3<bool>(true, false, true), vec2<bool>(false, false)), vec4<u32>(1u, u_input.a.x, u_input.a.x, 4294967295u), vec3<f32>(2794f, -750f, -201f)), -28591i)), u_input.d.x);
    let var_0 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(40240u, u_input.a.x), func_2()) >> (_wgslsmith_mult_u32(_wgslsmith_mod_u32(var_0, u_input.e.x), 47508u) % 32u), 4294967295u >> (reverseBits(var_0) % 32u), ~1u, 54601u), -2215f, _wgslsmith_f_op_f32(f32(-1f) * -2028f), -1000f, firstTrailingBit(abs(u_input.b.x)));
}

