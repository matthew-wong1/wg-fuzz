struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: vec3<bool>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = 1u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-202f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-932f, -374f, true)))));
    var_1 = -1612f;
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -911f), -571f))));
    var var_2 = u_input.b;
    return -186f;
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: vec4<i32>, arg_3: f32) -> vec3<bool> {
    let var_0 = ~vec3<i32>(-26291i, -(~firstLeadingBit(arg_2.x)), u_input.c);
    let var_1 = any(vec2<bool>(true, true));
    var var_2 = Struct_4(Struct_3(_wgslsmith_f_op_f32(func_3())), 0u);
    var var_3 = firstLeadingBit(-1i);
    var_3 = arg_2.x;
    return vec3<bool>(!((true != var_1) && var_1), false, all(vec3<bool>(true, var_1, !var_1)) || var_1);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec2<f32>) -> vec3<bool> {
    var var_0 = arg_1;
    let var_1 = Struct_2(774f, select(!vec3<bool>(true, true, arg_2.x == arg_1.a.a), select(vec3<bool>(true, true, true), func_2(-187f, reverseBits(vec4<i32>(u_input.a.x, -31078i, u_input.b.x, -40090i)), vec4<i32>(56945i, 2147483647i, -27363i, -2147483647i), _wgslsmith_f_op_f32(-arg_2.x)), firstLeadingBit(var_0.b) >= (var_0.b | var_0.b)), all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))) || all(vec2<bool>(true, true))), !(!vec3<bool>(all(vec4<bool>(false, true, false, false)), true, any(vec4<bool>(true, false, false, false)))), Struct_1(vec3<bool>(true, true, _wgslsmith_clamp_i32(-24258i, u_input.c, u_input.a.x) <= u_input.a.x), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.a.a, -1615f, 836f), vec3<f32>(arg_0.a, 248f, arg_0.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-257f, 573f, 779f))))), (vec3<i32>(-1i) * -vec3<i32>(39250i, u_input.a.x, u_input.a.x)) | _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, u_input.c, u_input.c), vec3<i32>(u_input.a.x, 1i, -20429i)), vec3<i32>(u_input.c, u_input.c, 1i) << (vec3<u32>(arg_1.b, var_0.b, 86674u) % vec3<u32>(32u))), vec2<i32>(0i, select(2147483647i, u_input.a.x, true)), vec3<bool>(any(vec3<bool>(false, false, false)), true, any(vec3<bool>(true, true, true)))), true);
    let var_2 = vec4<bool>(all(select(!func_2(arg_1.a.a, vec4<i32>(1i, 0i, -1i, var_1.d.c.x), vec4<i32>(u_input.a.x, u_input.a.x, var_1.d.d.x, -2147483647i), 293f).xy, var_1.d.e.zy, true)), false, var_1.b.x, all(select(select(!vec4<bool>(false, true, var_1.c.x, true), !vec4<bool>(false, var_1.d.a.x, var_1.d.e.x, var_1.c.x), var_1.e), vec4<bool>(var_1.b.x || var_1.e, var_1.b.x, !var_1.e, true), any(vec2<bool>(var_1.b.x, var_1.b.x)))));
    var var_3 = vec2<u32>(min(_wgslsmith_add_u32(1u, ~4294967295u), _wgslsmith_mult_u32(arg_1.b, _wgslsmith_dot_vec4_u32(vec4<u32>(20744u, arg_1.b, var_0.b, 0u), vec4<u32>(arg_1.b, var_0.b, 1u, 1u)))), arg_1.b) << ((vec2<u32>(27492u, var_0.b & countOneBits(5767u)) ^ abs(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(arg_1.b, 30661u, 31451u)), 94662u))) % vec2<u32>(32u));
    let var_4 = arg_1.a;
    return vec3<bool>(all(select(var_1.b.xx, func_2(var_0.a.a, vec4<i32>(2147483647i, var_1.d.c.x, u_input.b.x, u_input.b.x), vec4<i32>(24961i, 0i, var_1.d.d.x, u_input.c), 1000f).yy, !var_2.x)) & false, true, true);
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: i32, arg_3: vec3<u32>) -> Struct_3 {
    var var_0 = vec4<u32>(1u, 20784u, _wgslsmith_mult_u32(4294967295u, arg_0), arg_3.x);
    var var_1 = 291f;
    var_0 = vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.x, arg_0, 63086u), arg_3), ~arg_3.x), ~vec2<u32>(~21757u, ~var_0.x)), 1u, ~max(~arg_0, select(arg_0, arg_0, any(arg_1))), 4294967295u);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1441f)) + _wgslsmith_f_op_f32(f32(-1f) * -336f)) + _wgslsmith_div_f32(-1239f, 731f)), _wgslsmith_f_op_f32(f32(-1f) * -104f))));
    var var_3 = Struct_4(Struct_3(var_2.a), arg_3.x);
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(0u, select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), ~28977u > _wgslsmith_dot_vec2_u32(vec2<u32>(7849u, 56238u), vec2<u32>(11409u, 37040u))), vec3<bool>(true, true, true), vec3<bool>(false, any(func_1(Struct_3(170f), Struct_4(Struct_3(-214f), 66964u), vec2<f32>(-107f, 1000f))), func_1(Struct_3(-1376f), Struct_4(Struct_3(-1071f), 44738u), vec2<f32>(-195f, 294f)).x)), _wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, u_input.b.x, _wgslsmith_div_i32(u_input.b.x, u_input.b.x), _wgslsmith_div_i32(-11996i, 1i)), vec4<i32>(u_input.a.x, ~(-31302i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.b.x, u_input.c, u_input.b.x), vec4<i32>(0i, -1i, -8824i, 17575i)), -1i) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), ~select(~(~vec3<u32>(934u, 4294967295u, 4294967295u)), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(103059u, 1u, 0u), vec3<u32>(14465u, 26869u, 1473u)), vec3<u32>(4294967295u, 4294967295u, 1219u)), vec3<bool>(true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_u32(~1u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(9243u, 2613u)) % 32u), ~(~0u)), ~abs(vec3<u32>(896u, 1u, 98815u) >> (firstTrailingBit(vec3<u32>(0u, 0u, 0u)) % vec3<u32>(32u))));
}

