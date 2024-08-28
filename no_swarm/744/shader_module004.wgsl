struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_1(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true), !select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, false, any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))))), !(!select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true))));
    let var_1 = 16275u;
    return ~u_input.b;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1) -> f32 {
    return 757f;
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(func_4(func_3(), Struct_1(vec4<bool>(false, true, false, true), vec2<bool>(false, false)))), _wgslsmith_f_op_f32(f32(-1f) * -1264f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -1268f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-320f - -204f)), _wgslsmith_f_op_f32(abs(-269f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(629f, -573f, 238f, 424f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1792f, 1000f, -945f, 990f)))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(trunc(-382f)), var_0.x, 241f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1452f, var_0.x, -997f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, 1023f, 2925f), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, 797f, var_0.x), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)), vec4<bool>(true, true, true, true)))))), var_0.x < _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-813f * var_0.x))));
    let var_1 = -_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(abs(vec4<i32>(11645i, 7773i, -2147483647i, 18030i)), abs(vec4<i32>(u_input.c.x, u_input.d.x, u_input.d.x, -13203i))), max(~vec4<i32>(u_input.d.x, u_input.c.x, u_input.c.x, u_input.d.x), ~vec4<i32>(1i, u_input.d.x, 34055i, u_input.d.x))) << (vec4<u32>(u_input.b.x, ~(~(~91546u)), _wgslsmith_add_u32(u_input.b.x, ~u_input.a), min(countOneBits(47715u & u_input.b.x), ~(arg_0 | 4294967295u))) % vec4<u32>(32u));
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(7898u, ~u_input.a, 79569u, arg_0), vec4<u32>(_wgslsmith_sub_u32(9796u, arg_0), ~(~_wgslsmith_dot_vec2_u32(u_input.b.zz, vec2<u32>(u_input.b.x, u_input.b.x))), u_input.b.x, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0, u_input.a, arg_0, 0u) & vec4<u32>(1u, 52671u, u_input.a, 37584u), ~vec4<u32>(20014u, 104528u, u_input.a, 13620u)), countOneBits(vec4<u32>(4294967295u, 4294967295u, u_input.a, 7647u)))));
    var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-1624f, var_0.x), _wgslsmith_f_op_f32(-var_0.x), -1504f, _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 1000f, 726f, var_0.x), vec4<f32>(1022f, 1144f, var_0.x, -2749f)))))))));
    return Struct_1(!vec4<bool>(false, false, true, _wgslsmith_f_op_f32(-var_0.x) != _wgslsmith_f_op_f32(-var_0.x)), select(select(vec2<bool>(true, any(vec3<bool>(false, true, true))), vec2<bool>(true, true), false), select(vec2<bool>(true, 101f == var_0.x), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(false, false), vec2<bool>(true, true), false), true), true), false));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: i32) -> vec4<bool> {
    let var_0 = func_2(abs(_wgslsmith_mod_u32(u_input.b.x, select(u_input.b.x, abs(1u), arg_1))));
    let var_1 = vec3<i32>(-1i) * -vec3<i32>(firstLeadingBit(-2147483647i), min(_wgslsmith_add_i32(arg_2, u_input.c.x), arg_2), arg_2);
    var var_2 = vec3<i32>(~arg_0, ~_wgslsmith_mod_i32(2147483647i, 2147483647i), ~10134i);
    var var_3 = _wgslsmith_add_vec2_i32(vec2<i32>(abs(1i), min(~var_1.x, arg_0) >> (func_3().x % 32u)), vec2<i32>(-38007i, 0i));
    var_3 = ~var_2.zx;
    return vec4<bool>(var_0.a.x, true, true, any(var_0.a.xy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(false, !select(true, any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true)), true), !(!any(vec2<bool>(true, true))), (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1431f))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1420f - 1377f) - _wgslsmith_f_op_f32(sign(760f)))) | false);
    let var_1 = Struct_1(select(!func_1(u_input.d.x, true, -38970i), !select(select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(true, false, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false)), !vec4<bool>(false, var_0.x, true, false), vec4<bool>(var_0.x, var_0.x, var_0.x, true)), select(!(!vec4<bool>(var_0.x, var_0.x, true, var_0.x)), vec4<bool>(var_0.x, true, true, var_0.x & var_0.x), !var_0.x)), select(vec2<bool>(!(var_0.x & true), select(false, all(var_0.xww), var_0.x)), !vec2<bool>(var_0.x, true), !var_0.xy));
    var_0 = func_1(u_input.d.x, var_1.a.x, 25850i & u_input.d.x);
    var var_2 = vec4<bool>(var_1.a.x, var_1.b.x, any(var_1.a), !(!var_1.a.x));
    let var_3 = 14843u;
    var_0 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.d.x, 1i, firstTrailingBit(_wgslsmith_mod_i32(1i, -9521i) ^ _wgslsmith_mult_i32(u_input.d.x, 0i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1055f + -337f), 612f, _wgslsmith_f_op_f32(1000f + 918f), _wgslsmith_f_op_f32(-618f + -145f)))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-364f, -194f))))), _wgslsmith_f_op_f32(min(828f, 1f)), 1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1461f + 868f))))), select(max(-(~vec4<i32>(-1i, u_input.d.x, u_input.c.x, u_input.d.x)), select(vec4<i32>(u_input.c.x, -2147483647i, u_input.c.x, u_input.d.x), vec4<i32>(-2147483647i, u_input.d.x, u_input.c.x, u_input.d.x), true)), _wgslsmith_mod_vec4_i32(countOneBits(min(vec4<i32>(-40115i, u_input.c.x, 1i, -44254i), vec4<i32>(-20294i, 0i, u_input.d.x, 101468i))), ~(~vec4<i32>(1i, 6673i, -7670i, u_input.d.x))), !vec4<bool>(false, u_input.b.x < 43601u, false, func_1(-16878i, var_1.b.x, u_input.d.x).x)));
}

