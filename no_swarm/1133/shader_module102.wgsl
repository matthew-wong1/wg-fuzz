struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> u32 {
    return abs(~51326u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec4<f32>) -> u32 {
    let var_0 = ~vec3<u32>(~abs(u_input.b), max(44972u, u_input.b), u_input.b);
    var var_1 = vec4<bool>(!all(!select(vec3<bool>(arg_0.a.x, true, true), vec3<bool>(false, true, arg_1.a.x), false)), true, any(select(!select(vec3<bool>(arg_0.a.x, arg_0.a.x, false), vec3<bool>(arg_0.a.x, true, arg_0.a.x), true), select(!vec3<bool>(arg_1.a.x, true, false), vec3<bool>(true, true, true), true), true)), true);
    let var_2 = arg_3.yxy;
    var_1 = vec4<bool>(-810f != arg_1.c, any(vec2<bool>(var_0.x != var_0.x, any(select(vec4<bool>(false, arg_0.a.x, false, false), vec4<bool>(true, true, var_1.x, false), arg_1.a.x)))), !(!arg_0.a.x), !(arg_0.c >= var_2.x));
    let var_3 = min(arg_2.x, 1i);
    return _wgslsmith_add_u32(arg_0.b, ~abs(~4294967295u));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: f32, arg_3: vec2<bool>) -> f32 {
    let var_0 = ~min(u_input.b, func_2());
    let var_1 = ~vec4<u32>(func_3(Struct_1(select(arg_3, arg_3, vec2<bool>(arg_1, true)), ~u_input.b, arg_2), Struct_1(select(arg_3, arg_3, arg_3.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 74957u), vec2<u32>(var_0, var_0)), _wgslsmith_f_op_f32(f32(-1f) * -232f)), min(vec4<i32>(u_input.a, -2147483647i, u_input.a, -22701i), vec4<i32>(-40369i, u_input.a, -2147483647i, u_input.a)) >> ((vec4<u32>(var_0, var_0, u_input.b, u_input.b) >> (vec4<u32>(4294967295u, 4294967295u, 1u, 19664u) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_2, arg_2, arg_2, 494f), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(811f, 104f, arg_2, 731f))))), ~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(23623u, var_0, var_0), vec3<u32>(24606u, u_input.b, u_input.b)), _wgslsmith_div_vec3_u32(vec3<u32>(51244u, u_input.b, u_input.b), vec3<u32>(67909u, u_input.b, 13943u))), u_input.b, select(u_input.b, func_2(), !arg_0));
    var var_2 = Struct_2(u_input.a ^ -1i, !(!(!vec4<bool>(arg_3.x, arg_3.x, arg_0, arg_1))), _wgslsmith_div_u32(30888u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, 27075u)), max(vec2<u32>(23155u, var_0), vec2<u32>(4294967295u, var_1.x))), var_0, var_0)), Struct_1(select(!(!vec2<bool>(arg_3.x, arg_3.x)), vec2<bool>(!arg_1, select(arg_1, false, arg_3.x)), arg_1 | true), _wgslsmith_mod_u32(u_input.b, u_input.b), -491f));
    var_2 = Struct_2(_wgslsmith_add_i32(var_2.a, 54373i), var_2.b, var_0, var_2.d);
    var var_3 = 406f;
    return _wgslsmith_f_op_f32(floor(1000f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1539f - 1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(false, u_input.a >= u_input.a, _wgslsmith_f_op_f32(-468f - -625f), vec2<bool>(true, true))) + 1000f)));
    let var_1 = var_0;
    var var_2 = (select(countOneBits(vec3<i32>(739i, u_input.a, u_input.a)), vec3<i32>(firstTrailingBit(14410i), u_input.a, _wgslsmith_mod_i32(-16028i, 10267i)), all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), false))) << (~vec3<u32>(u_input.b, 14196u >> (u_input.b % 32u), ~u_input.b) % vec3<u32>(32u))) << (_wgslsmith_div_vec3_u32(min(select(vec3<u32>(u_input.b, u_input.b, 72098u) | vec3<u32>(51478u, 71578u, 22572u), vec3<u32>(99203u, u_input.b, 4294967295u), true), vec3<u32>(14920u, 4294967295u, u_input.b)), vec3<u32>(_wgslsmith_sub_u32(abs(0u), select(94114u, 89652u, false)), 3639u, u_input.b)) % vec3<u32>(32u));
    var_2 = reverseBits(vec3<i32>(-11296i, _wgslsmith_sub_i32(-25646i << (u_input.b % 32u), ~(-2147483647i) & var_2.x), _wgslsmith_sub_i32(-1i, abs(~var_2.x))));
    var var_3 = vec4<i32>(u_input.a, -u_input.a, u_input.a, -2147483647i << (u_input.b % 32u));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(500f, -1000f, -420f) * vec3<f32>(var_0, -339f, 834f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(104f, -1034f, var_1))))));
    let var_5 = var_2.yz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(~vec4<i32>(-2147483647i, ~(-12709i), -7278i, abs(33175i)), vec4<i32>(var_3.x, reverseBits(var_5.x), var_2.x, -1i)), _wgslsmith_f_op_f32(1324f + var_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(669f, 1538f) * _wgslsmith_f_op_vec2_f32(-var_4.yy)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_4.x)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(func_1(true, true, _wgslsmith_f_op_f32(f32(-1f) * -2632f), vec2<bool>(true, true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-592f, 605f)))), _wgslsmith_f_op_f32(143f * _wgslsmith_f_op_f32(f32(-1f) * -841f))))));
}

