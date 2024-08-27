struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec2<bool>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1>;

var<private> global1: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(375f, vec3<u32>(78132u, 0u, 4294967295u), vec2<bool>(false, true), vec2<i32>(1i, 1i)), Struct_1(-302f, vec3<u32>(0u, 4294967295u, 90386u), vec2<bool>(true, true), vec2<i32>(9983i, 6689i)), Struct_1(-350f, vec3<u32>(0u, 4294967295u, 24236u), vec2<bool>(true, false), vec2<i32>(-1i, 5182i)), Struct_1(-1000f, vec3<u32>(0u, 49252u, 26013u), vec2<bool>(false, false), vec2<i32>(95854i, -44113i)), Struct_1(-1157f, vec3<u32>(22495u, 1433u, 4294967295u), vec2<bool>(true, true), vec2<i32>(-29627i, 2147483647i)), Struct_1(232f, vec3<u32>(46766u, 17760u, 1u), vec2<bool>(false, false), vec2<i32>(2147483647i, -1i)), Struct_1(593f, vec3<u32>(69743u, 2905u, 95179u), vec2<bool>(false, false), vec2<i32>(0i, -56725i)), Struct_1(-493f, vec3<u32>(59771u, 31216u, 93126u), vec2<bool>(true, true), vec2<i32>(-16789i, 0i)), Struct_1(966f, vec3<u32>(4294967295u, 4294967295u, 1u), vec2<bool>(true, false), vec2<i32>(2147483647i, -422i)), Struct_1(-2010f, vec3<u32>(51622u, 18597u, 0u), vec2<bool>(true, true), vec2<i32>(2147483647i, -1i)));

var<private> global2: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = arg_2;
    var_0 = abs(abs(115582u));
    let var_1 = ~arg_0.x;
    let var_2 = ~(-_wgslsmith_mult_i32(0i, arg_0.x));
    var var_3 = false;
    return arg_3.b;
}

fn func_2(arg_0: vec4<u32>, arg_1: f32) -> u32 {
    let var_0 = -(~vec4<i32>(-(~u_input.c.x), 0i, u_input.c.x << (u_input.e.x % 32u), _wgslsmith_mod_i32(firstLeadingBit(0i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -66783i, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, -16105i, 1i, u_input.c.x)))));
    let var_1 = global1[_wgslsmith_index_u32(~(~11398u), 10u)];
    var var_2 = 0u;
    let var_3 = 18447u;
    var var_4 = global1[_wgslsmith_index_u32(abs(var_3), 10u)];
    return firstLeadingBit(abs(_wgslsmith_sub_u32(~26466u, arg_0.x | var_3) | max(countOneBits(6823u), var_1.b.x)));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -534f) * 1000f) + _wgslsmith_f_op_f32(f32(-1f) * -2028f)))), u_input.b.wyx, select(!(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 1u)], arg_1)), vec2<bool>(true, true), arg_1), firstLeadingBit(_wgslsmith_div_vec2_i32(arg_0.xx | vec2<i32>(arg_0.x, 12352i), u_input.c)));
    global0 = array<bool, 1>();
    global2 = ~0u;
    global2 = u_input.b.x;
    var var_1 = var_0;
    return ~arg_0.x << (22508u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 10>();
    global1 = array<Struct_1, 10>();
    global2 = ~_wgslsmith_div_u32(countOneBits(u_input.a.x), _wgslsmith_dot_vec3_u32(min(_wgslsmith_div_vec3_u32(u_input.a, u_input.b.zxz), func_1(vec3<i32>(u_input.c.x, 25996i, 0i), 2147483647i, u_input.a.x, Struct_1(-1156f, vec3<u32>(4294967295u, 0u, u_input.b.x), vec2<bool>(global0[_wgslsmith_index_u32(18387u, 1u)], global0[_wgslsmith_index_u32(u_input.e.x, 1u)]), vec2<i32>(u_input.c.x, u_input.c.x)))), vec3<u32>(~37342u, u_input.e.x, func_2(u_input.b, -793f))));
    let var_0 = (-(~vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)) << (reverseBits(vec3<u32>(select(u_input.d.x, u_input.d.x, global0[_wgslsmith_index_u32(1u, 1u)]), ~0u, u_input.b.x)) % vec3<u32>(32u))) & (vec3<i32>(-1i << (~u_input.b.x % 32u), -1i << (_wgslsmith_clamp_u32(u_input.b.x, 48446u, u_input.d.x) % 32u), func_3(vec4<i32>(u_input.c.x, -26243i, 60334i, u_input.c.x), any(vec2<bool>(global0[_wgslsmith_index_u32(0u, 1u)], false)))) | _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, u_input.c.x, -2147483647i), -vec3<i32>(0i, u_input.c.x, -2147483647i), vec3<i32>(u_input.c.x, 0i, u_input.c.x) << (vec3<u32>(0u, 81060u, u_input.e.x) % vec3<u32>(32u))), vec3<i32>(u_input.c.x & u_input.c.x, 1i >> (0u % 32u), _wgslsmith_mod_i32(u_input.c.x, 19939i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x, 21581i, 0i), vec3<i32>(14126i, u_input.c.x, -7708i), vec3<i32>(u_input.c.x, 0i, u_input.c.x)) | firstLeadingBit(vec3<i32>(u_input.c.x, u_input.c.x, 25417i))));
    let var_1 = u_input.d.x;
    var var_2 = ~vec3<i32>(u_input.c.x, var_0.x, var_0.x) >> (vec3<u32>(u_input.d.x, ~1u, _wgslsmith_sub_u32(var_1, 4294967295u) & var_1) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -434f) * _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-304f, 1009f) + -165f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-415f)))), _wgslsmith_clamp_i32(var_0.x, 2147483647i, u_input.c.x), ~(~1u), ~vec3<i32>(1i | -var_2.x, (23922i ^ u_input.c.x) << (var_1 % 32u), 0i ^ u_input.c.x), -299f);
}

