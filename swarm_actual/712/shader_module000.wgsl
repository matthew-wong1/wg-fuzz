struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: u32) -> vec3<bool> {
    var var_0 = false;
    var_0 = _wgslsmith_f_op_f32(1035f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -659f) * -754f), _wgslsmith_f_op_f32(sign(-602f)))) < -159f;
    var var_1 = all(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), true)), vec4<bool>(all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false))), all(vec3<bool>(false, false, true)), false, all(vec2<bool>(true, true))), any(vec3<bool>(true, false, true))));
    var_0 = true;
    var_0 = any(vec2<bool>(true, true));
    return !vec3<bool>(true, any(vec3<bool>(u_input.b > u_input.a.x, true, arg_2 >= 0u)), all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)))));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>) -> vec3<bool> {
    var var_0 = Struct_3(~_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 36016i, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.a.x, -64974i, u_input.b)), min(vec4<i32>(-1i, u_input.e.x, u_input.c.x, -25508i), vec4<i32>(-63717i, 636i, -1i, u_input.b))));
    var_0 = Struct_3(vec4<i32>(var_0.a.x, var_0.a.x, 1i, ~(-var_0.a.x)));
    let var_1 = _wgslsmith_clamp_vec4_i32(-_wgslsmith_mod_vec4_i32(abs(vec4<i32>(32342i, 2147483647i, 82818i, 13461i)), var_0.a ^ vec4<i32>(u_input.e.x, var_0.a.x, u_input.c.x, var_0.a.x)), firstTrailingBit(var_0.a) << ((firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.d.x, u_input.d.x, u_input.d.x), vec4<u32>(u_input.d.x, u_input.d.x, 1u, 4294967295u))) << (((vec4<u32>(38865u, 4294967295u, u_input.d.x, u_input.d.x) & vec4<u32>(u_input.d.x, 23932u, u_input.d.x, u_input.d.x)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(16186u, u_input.d.x, u_input.d.x, 9035u), vec4<u32>(u_input.d.x, 0u, 18540u, 78055u)) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(firstTrailingBit(~abs(vec4<i32>(var_0.a.x, 1i, 0i, u_input.e.x))), _wgslsmith_mod_vec4_i32(~var_0.a, ~(var_0.a << (vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 0u) % vec4<u32>(32u))))));
    let var_2 = Struct_1(true, u_input.a >> (reverseBits(firstLeadingBit(abs(u_input.d.xy))) % vec2<u32>(32u)), reverseBits(_wgslsmith_dot_vec3_u32(~u_input.d, abs(vec3<u32>(u_input.d.x, 0u, 0u) << (vec3<u32>(u_input.d.x, 19702u, 2148u) % vec3<u32>(32u))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(441f, -1694f)), 1000f)), _wgslsmith_f_op_f32(abs(arg_1.x))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-530f, -978f, arg_0)))))));
    let var_3 = ~var_0.a;
    return select(select(select(vec3<bool>(!var_2.a, 1i != var_1.x, var_2.a), vec3<bool>(false, false, false), func_3(vec4<u32>(u_input.d.x, 0u, var_2.c, u_input.d.x), var_2.c, countOneBits(u_input.d.x))), select(!vec3<bool>(var_2.a, false, true), !select(vec3<bool>(var_2.a, false, var_2.a), vec3<bool>(true, var_2.a, true), vec3<bool>(true, var_2.a, false)), true), !var_2.a), !(!vec3<bool>(var_3.x == -13197i, true, var_2.a)), false);
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: Struct_1) -> f32 {
    let var_0 = vec3<i32>(arg_1.b.b.x, -u_input.c.x, arg_1.b.b.x);
    var var_1 = arg_1;
    var var_2 = u_input.d;
    let var_3 = Struct_2(!(!(!func_2(580f, vec2<f32>(938f, 1189f)))), Struct_1(arg_3.a, countOneBits(u_input.e.zz) ^ -_wgslsmith_sub_vec2_i32(var_1.b.b, u_input.c.yy), var_2.x, _wgslsmith_div_vec3_f32(arg_1.b.d, var_1.b.d)));
    let var_4 = vec2<bool>(all(var_3.a.zx), !(!(!(false || arg_3.a))));
    return 1503f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(select((-403f != _wgslsmith_f_op_f32(sign(937f))) || false, any(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), true), vec4<bool>(true, false, false, true), true)), true && (_wgslsmith_f_op_f32(func_1(-1517f, Struct_2(vec3<bool>(false, false, true), Struct_1(true, vec2<i32>(-1i, u_input.a.x), u_input.d.x, vec3<f32>(-685f, 134f, 490f))), u_input.d.zy, Struct_1(true, u_input.e.zx, u_input.d.x, vec3<f32>(-664f, 286f, -300f)))) != 1059f)), true, true);
    var_0 = func_3(vec4<u32>(1u, _wgslsmith_mod_u32(u_input.d.x, _wgslsmith_sub_u32(u_input.d.x, 21494u)), u_input.d.x, 1u) | vec4<u32>(24312u, abs(~u_input.d.x), ~(~u_input.d.x), firstLeadingBit(~1u)), _wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(u_input.d, u_input.d)) | 6180u, u_input.d.x), 112054u & _wgslsmith_dot_vec2_u32(min(u_input.d.xx, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x), vec2<u32>(u_input.d.x, 0u))), abs(abs(vec2<u32>(u_input.d.x, u_input.d.x)))));
    var var_1 = var_0.x;
    var var_2 = min(i32(-1i) * -u_input.c.x, u_input.b << (u_input.d.x % 32u));
    var_2 = -73247i >> (~(~u_input.d.x) % 32u);
    var var_3 = Struct_1(false, ~(-(u_input.e.xy ^ _wgslsmith_sub_vec2_i32(u_input.e.yy, u_input.a))), ~select(1u << (0u % 32u), u_input.d.x, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f)))));
    var var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -1868f)), _wgslsmith_f_op_f32(-421f * _wgslsmith_f_op_f32(-var_3.d.x))))))));
    var_2 = (-1i << (var_3.c % 32u)) << (~_wgslsmith_mod_u32(21085u, var_3.c & select(84896u, 4294967295u, false)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(30292i);
}

