struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: u32, arg_3: Struct_3) -> vec3<bool> {
    let var_0 = arg_3.c;
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1352f, 871f) - vec2<f32>(639f, 1615f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -822f))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(ceil(-501f)), 1f))))));
    let var_2 = vec3<i32>(1i, -arg_3.d, u_input.d);
    var var_3 = arg_3.c;
    var_3 = var_0;
    return vec3<bool>(false, false, all(vec2<bool>(any(select(vec2<bool>(false, arg_3.a), vec2<bool>(arg_3.a, arg_3.a), arg_3.a)), arg_3.a)));
}

fn func_3() -> vec2<bool> {
    var var_0 = vec2<u32>(u_input.b, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(0u, u_input.b), _wgslsmith_add_vec2_u32(max(vec2<u32>(45615u, 8009u), vec2<u32>(u_input.c, u_input.c)), ~vec2<u32>(0u, u_input.b))), ~vec2<u32>(u_input.b, u_input.c) ^ (~vec2<u32>(u_input.b, 0u) >> ((vec2<u32>(4294967295u, 79656u) >> (vec2<u32>(4294967295u, u_input.c) % vec2<u32>(32u))) % vec2<u32>(32u)))));
    let var_1 = Struct_1(_wgslsmith_mod_i32(62529i, -_wgslsmith_dot_vec3_i32(select(vec3<i32>(7218i, u_input.d, 0i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.d), vec3<bool>(true, true, true)), vec3<i32>(u_input.d, u_input.a.x, u_input.a.x))));
    var var_2 = !(!(var_1.a != u_input.d) & true);
    var var_3 = -526f;
    let var_4 = var_1;
    return vec2<bool>(true, false);
}

fn func_4(arg_0: Struct_4) -> i32 {
    return _wgslsmith_div_i32(i32(-1i) * -2147483647i, countOneBits(u_input.a.x));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: f32, arg_3: vec4<u32>) -> vec4<i32> {
    let var_0 = arg_1.wx;
    var var_1 = Struct_3(!any(select(vec3<bool>(true, false, true), func_2(Struct_2(vec4<u32>(arg_3.x, 4294967295u, arg_3.x, u_input.b)), vec4<i32>(arg_0.x, u_input.a.x, arg_0.x, u_input.a.x), u_input.b, Struct_3(false, u_input.c, Struct_1(-8826i), 23551i)), false)), ~0u | u_input.b, Struct_1(select(~u_input.a.x, -_wgslsmith_sub_i32(-1i, 45344i), true)), func_4(Struct_4(func_3(), _wgslsmith_dot_vec3_i32(max(arg_0, vec3<i32>(8724i, 29765i, 37054i)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, arg_0.x, 1i), vec3<i32>(arg_0.x, 25470i, arg_0.x))))));
    var_1 = Struct_3(true, reverseBits(~(abs(u_input.b) >> (4294967295u % 32u))), Struct_1(_wgslsmith_mod_i32(2147483647i, arg_0.x)), 15102i ^ (_wgslsmith_add_i32(_wgslsmith_clamp_i32(1i, -1i, 2147483647i), arg_0.x) & countOneBits(reverseBits(var_1.d))));
    var var_2 = select(select(!(!vec2<bool>(var_1.a, false)), vec2<bool>(var_1.a, false), func_3()), vec2<bool>(!(!all(vec4<bool>(var_1.a, var_1.a, var_1.a, true))), var_1.a), func_3());
    var var_3 = vec2<bool>(!(!(!(false != var_2.x))), all(select(!select(vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(false, false, var_2.x)), !(!vec3<bool>(var_2.x, var_1.a, var_1.a)), !(!vec3<bool>(true, var_1.a, var_1.a)))));
    return firstTrailingBit(vec4<i32>(-16593i, 37669i, firstTrailingBit(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.a.x, arg_0.x, arg_0.x), arg_0.x, 1i)), -44399i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    var var_1 = ~(((-vec4<i32>(u_input.a.x, u_input.d, 14047i, 40086i) & _wgslsmith_clamp_vec4_i32(vec4<i32>(-21135i, u_input.a.x, u_input.d, -38671i), vec4<i32>(u_input.a.x, u_input.a.x, 10592i, 23612i), vec4<i32>(u_input.a.x, 1i, -2147483647i, -1i))) | func_1(vec3<i32>(u_input.a.x, 46757i, u_input.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(595f, -1323f, 747f, 1853f)), _wgslsmith_f_op_f32(ceil(-100f)), vec4<u32>(50257u, 4294967295u, u_input.b, u_input.b) >> (vec4<u32>(53031u, 97053u, 45737u, u_input.b) % vec4<u32>(32u)))) << (~_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.c, u_input.c), vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.c)), select(vec4<u32>(u_input.c, 1u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.c, 0u, 0u), true)) % vec4<u32>(32u)));
    var var_2 = (u_input.d << (u_input.c % 32u)) != u_input.d;
    var var_3 = -16027i;
    var var_4 = Struct_2(~_wgslsmith_add_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(36781u, u_input.b, 76911u, 5041u), vec4<u32>(112739u, u_input.b, u_input.b, 4294967295u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(73699u, 30324u, u_input.c, u_input.b), ~vec4<u32>(90637u, u_input.c, u_input.c, 7663u), ~vec4<u32>(11496u, u_input.c, 0u, u_input.b))));
    let var_5 = false;
    var var_6 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(887f * -1039f)))), -218f, all(vec3<bool>(any(vec2<bool>(true, var_5)), var_5, all(vec2<bool>(var_5, var_5))))))));
    var_6 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(709f + 316f))) + _wgslsmith_f_op_f32(max(-238f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(699f)), _wgslsmith_f_op_f32(floor(-327f)), true)))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.c));
}

