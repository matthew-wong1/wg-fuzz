struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(min(arg_2.x, -1715f)), arg_1, u_input.d.x);
    let var_1 = ~var_0.c >> (var_0.b.x % 32u);
    let var_2 = _wgslsmith_add_vec2_i32(vec2<i32>(-1i, arg_0.x), vec2<i32>(~firstLeadingBit(_wgslsmith_add_i32(2147483647i, -5879i)), ~(~(~2147483647i))));
    let var_3 = _wgslsmith_f_op_f32(select(var_0.a, -780f, false)) != 806f;
    return var_0;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec4<bool> {
    let var_0 = max(abs(4294967295u), arg_0.c);
    let var_1 = Struct_1(-178f, _wgslsmith_div_vec2_u32(arg_1.b, ~vec2<u32>(~0u, 14692u)), u_input.d.x);
    let var_2 = arg_1.a;
    let var_3 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.a)))), var_2), reverseBits(select(abs(~u_input.d), _wgslsmith_add_vec2_u32(select(vec2<u32>(4294967295u, 1u), var_1.b, true), ~vec2<u32>(arg_2, var_1.b.x)), -u_input.b.x >= _wgslsmith_add_i32(u_input.b.x, 18261i))), 65134u);
    let var_4 = u_input.a;
    return select(select(vec4<bool>(true, select(false, true, true), true, true & (-102f < var_2)), select(vec4<bool>(any(vec3<bool>(true, false, false)), false, true, any(vec2<bool>(true, false))), vec4<bool>(true, true, true, all(vec4<bool>(false, false, true, false))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), false), vec4<bool>(true, true, true, true), true)), vec4<bool>(any(vec3<bool>(true, true, true)), true, all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), false)), true)), select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, true))), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), true)), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), true), select(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true)), vec4<bool>(select(true, false, true), true, true, -1088f < var_3.a), false)), select(vec4<bool>(all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), true)), true, _wgslsmith_f_op_f32(min(var_3.a, -1140f)) == -231f, true), select(select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), true), var_1.b.x >= 1u), vec4<bool>(true, true, select(false, true, false), all(vec3<bool>(true, false, false))), select(true, true, true)), !(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true)))));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = vec3<bool>(!(_wgslsmith_add_u32(~1u, u_input.a.x) < 1u), all(select(vec4<bool>(true, true, true, true), func_3(func_2(u_input.b, vec2<u32>(arg_1.c, arg_1.b.x), vec3<f32>(arg_0, -807f, arg_1.a)), func_2(u_input.b, arg_1.b, vec3<f32>(arg_0, arg_0, arg_0)), arg_1.b.x), vec4<bool>(false, u_input.b.x >= u_input.b.x, false, any(vec3<bool>(false, true, true))))), min(arg_1.c, 4294967295u) > 10297u);
    let var_1 = arg_2;
    var var_2 = u_input.b.x;
    var_2 = ~u_input.b.x;
    var_2 = u_input.b.x;
    return ~(-87444i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec4_i32(max(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(0i, u_input.b.x, u_input.b.x, 2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(9770i, u_input.b.x, u_input.b.x, 66140i), vec4<i32>(u_input.b.x, -2147483647i, 2147483647i, u_input.b.x))), vec4<i32>(7742i, func_1(359f, Struct_1(761f, u_input.d, 0u), Struct_1(529f, u_input.d, 65577u)), select(u_input.b.x, 2147483647i, false), u_input.b.x)), vec4<i32>(-2147483647i, 42770i >> (u_input.c % 32u), ~(-3215i), firstLeadingBit(-47345i & u_input.b.x))), vec4<i32>(reverseBits(0i), _wgslsmith_clamp_i32(~(-u_input.b.x), max(u_input.b.x, abs(u_input.b.x)), max(abs(0i), ~u_input.b.x)), u_input.b.x, -32121i));
    var var_1 = 2147483647i != countOneBits(_wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(30292i, var_0.x), _wgslsmith_dot_vec3_i32(var_0.wyy, var_0.zzw)), max(13870i, _wgslsmith_mult_i32(var_0.x, 1i))));
    let var_2 = all(!(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false))));
    var var_3 = ~var_0;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -373f)) * _wgslsmith_f_op_f32(f32(-1f) * -1161f)), countOneBits(~(~(~vec2<u32>(u_input.d.x, 0u)))), ~_wgslsmith_mult_u32(u_input.a.x, u_input.c ^ _wgslsmith_div_u32(u_input.d.x, 0u)));
    var var_5 = var_4;
    var var_6 = func_2(-vec2<i32>(firstTrailingBit(0i) >> (72728u % 32u), var_3.x), reverseBits(vec2<u32>(~var_4.c, _wgslsmith_dot_vec4_u32(vec4<u32>(6677u, 1u, u_input.d.x, var_5.c), vec4<u32>(u_input.a.x, var_4.b.x, var_4.b.x, 81267u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(989f, var_5.a, var_4.a)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1181f, -1045f, var_4.a))))));
    var var_7 = vec2<f32>(_wgslsmith_f_op_f32(-var_4.a), -275f);
    var_6 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(func_1(var_6.a, var_4, func_2(vec2<i32>(66088i, var_3.x), max(var_4.b, vec2<u32>(var_5.b.x, 34307u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_6.a, -1296f, -901f)))), i32(-1i) * -var_3.x, ~firstTrailingBit(var_0.x << (var_4.b.x % 32u))), select(firstTrailingBit(_wgslsmith_add_vec3_u32(u_input.a.yxy, vec3<u32>(0u, u_input.a.x, 1u))) & (~u_input.a.zyx << (abs(vec3<u32>(0u, var_5.c, 13326u)) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(~u_input.a.zzw, ~vec3<u32>(21390u, u_input.c, 7927u)), vec3<bool>(false, false, false)), vec2<i32>(u_input.b.x, u_input.b.x), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.a) * _wgslsmith_f_op_f32(select(-533f, -150f, var_2))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_5.a), var_7.x, !var_2)), -1495f), var_7.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_7.x, var_5.a), var_6.a))))));
}

