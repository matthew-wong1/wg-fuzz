struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    var var_0 = 0i << ((~arg_0.b << (4294967295u % 32u)) % 32u);
    var var_1 = _wgslsmith_f_op_vec2_f32(arg_1.a.zz * vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(860f - _wgslsmith_div_f32(arg_2.c.x, _wgslsmith_f_op_f32(-arg_1.a.x)))));
    var_0 = -6791i;
    var var_2 = arg_0;
    let var_3 = Struct_2(vec3<bool>(-_wgslsmith_clamp_i32(0i, -1i, u_input.a) != ~_wgslsmith_mult_i32(1i, u_input.a), true, any(select(arg_2.a, vec3<bool>(false, true, arg_0.a.x), var_2.a.x)) != arg_2.a.x), arg_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(727f, arg_0.c.x, 645f, arg_2.c.x), _wgslsmith_f_op_vec4_f32(round(var_2.c)), false))))));
    return 1u;
}

fn func_2() -> u32 {
    let var_0 = any(vec2<bool>(true, u_input.b.x > -(u_input.a << (u_input.c % 32u))));
    var var_1 = Struct_2(select(select(!select(vec3<bool>(var_0, false, false), vec3<bool>(false, var_0, false), vec3<bool>(true, false, var_0)), !vec3<bool>(var_0, true, var_0), true), vec3<bool>(var_0, var_0, var_0), (any(vec4<bool>(var_0, var_0, var_0, true)) || (0i <= u_input.b.x)) || !(!var_0)), ~(~abs(func_3(Struct_2(vec3<bool>(true, var_0, var_0), u_input.c, vec4<f32>(661f, 938f, -315f, 1000f)), Struct_1(vec4<f32>(-869f, -1737f, 265f, 1612f), vec4<f32>(-771f, -635f, -259f, 1185f)), Struct_2(vec3<bool>(true, true, var_0), u_input.c, vec4<f32>(-1650f, -166f, -305f, -2056f))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2080f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(719f + -134f), _wgslsmith_f_op_f32(round(-2384f)))), -345f, 1f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-460f, -767f, -108f, -492f) * vec4<f32>(-1790f, -780f, -1303f, 3153f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(256f, 630f, 692f, 249f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2839f, -1564f, 529f, 1132f)))))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_1.c))), var_1.c);
    let var_3 = Struct_2(var_1.a, 0u, vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b.x - var_2.b.x), _wgslsmith_f_op_f32(-478f + -973f)), -526f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-935f, _wgslsmith_f_op_f32(var_1.c.x * var_2.b.x)))), var_1.c.x, -685f));
    var_1 = var_3;
    return ~(~firstLeadingBit(0u));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> bool {
    var var_0 = Struct_2(vec3<bool>(!all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -172f), true)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -829f) - 823f), !all(vec4<bool>(true, true, false, false)) || true), 14634u, vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_div_f32(2496f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_3.b.x)), -1000f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-214f, _wgslsmith_f_op_f32(-arg_3.b.x)) * arg_3.a.x)));
    var_0 = Struct_2(var_0.a, 27417u, var_0.c);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_3.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -943f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.b.x + arg_3.b.x) - var_0.c.x)))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_3.b.wwx + _wgslsmith_f_op_vec3_f32(-arg_3.b.xxy)))));
    var var_2 = arg_3;
    return false;
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-267f, -439f))), _wgslsmith_f_op_f32(select(1027f, 549f, false)), -229f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1194f * 110f) - _wgslsmith_f_op_f32(step(1195f, 1420f))), _wgslsmith_f_op_f32(f32(-1f) * -1829f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1961f))), _wgslsmith_div_f32(586f, _wgslsmith_div_f32(-501f, -793f)))), vec4<bool>(true, func_4(438f, -2147483647i, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, u_input.c)), func_2()), Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(265f, 307f, -723f, 1000f), vec4<f32>(-281f, -1639f, 464f, 1000f), true)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1117f, -2904f, -1535f, 374f))))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), -2147483647i != firstTrailingBit(-u_input.b.x))));
    let var_1 = vec3<bool>(true, !all(vec3<bool>(true, true, true)), true);
    let var_2 = vec4<i32>(max(6438i, -2147483647i), min(_wgslsmith_dot_vec2_i32(select(-u_input.b, abs(vec2<i32>(u_input.b.x, 2147483647i)), !var_1.zx), u_input.b), u_input.a), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(-(~vec3<i32>(u_input.a, u_input.a, u_input.a)), vec3<i32>(u_input.b.x, 6897i ^ u_input.b.x, _wgslsmith_mult_i32(1i, -2147483647i))), vec3<i32>(u_input.a << (4294967295u % 32u), ~u_input.a, _wgslsmith_div_i32(-2147483647i, u_input.a)) >> (~(~vec3<u32>(17643u, 1u, 0u)) % vec3<u32>(32u))), u_input.a);
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))))))), _wgslsmith_f_op_f32(ceil(var_0.x)));
    let var_4 = _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, -28385i, select(u_input.a, u_input.a, var_1.x), _wgslsmith_mult_i32(var_2.x, var_2.x)), -vec4<i32>(-2147483647i, -2147483647i, 0i, u_input.b.x)), vec4<i32>(-1i, 2147483647i, 30239i, _wgslsmith_dot_vec4_i32(-vec4<i32>(var_2.x, var_2.x, u_input.b.x, -1i), vec4<i32>(u_input.a, u_input.a, u_input.b.x, 2147483647i)))), vec4<i32>(_wgslsmith_div_i32(select(var_2.x, var_2.x, var_1.x), firstTrailingBit(-2147483647i)), -_wgslsmith_mod_i32(1i, -1414i), _wgslsmith_dot_vec4_i32(vec4<i32>(7156i, 1i, u_input.b.x, 2147483647i), firstTrailingBit(vec4<i32>(var_2.x, var_2.x, u_input.b.x, var_2.x))), _wgslsmith_sub_i32(-22277i, u_input.b.x << (4294967295u % 32u))) | (vec4<i32>(-1i, -u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -27721i), var_2.zy), u_input.a << (20201u % 32u)) << (~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 0u, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)) % vec4<u32>(32u))));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - -1366f) + -1000f)) - _wgslsmith_f_op_f32(round(var_0.x))), _wgslsmith_f_op_f32(sign(297f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c >= _wgslsmith_mod_u32(4753u, ~_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.c, u_input.c)), ~vec2<u32>(u_input.c, u_input.c)));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-133f - _wgslsmith_f_op_f32(floor(-1345f))))));
    let var_2 = true;
    let var_3 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1000f, var_1, var_1, var_1)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1, var_1, var_1, -817f))), vec4<f32>(960f, var_1, var_1, -169f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, -412f, var_1, 830f) + vec4<f32>(-981f, var_1, -1027f, var_1)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-204f, 781f, 155f, 1173f))))), vec4<f32>(_wgslsmith_f_op_f32(min(var_1, _wgslsmith_f_op_f32(func_1()))), var_1, 1699f, _wgslsmith_f_op_f32(step(-385f, _wgslsmith_f_op_f32(select(-1467f, _wgslsmith_f_op_f32(round(var_1)), var_2))))));
    var var_4 = _wgslsmith_mod_i32(_wgslsmith_div_i32(-(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(24904i, u_input.b.x, u_input.a, 29144i))), -u_input.b.x), abs(0i));
    var_4 = 1i;
    let var_5 = vec2<f32>(var_3.a.x, _wgslsmith_f_op_f32(var_1 - var_3.a.x));
    var var_6 = !var_0;
    let var_7 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.b.x, 502f, 976f), var_3.b.xxx, true))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_5.x), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-var_3.b.x)) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 342f, 573f)), vec3<f32>(var_1, -679f, var_1)))), var_2)), vec3<f32>(_wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.x) + 1339f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -807f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(var_3.b.x * _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, 458f) + _wgslsmith_f_op_f32(var_3.b.x + -163f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1001f + 1958f) - _wgslsmith_div_f32(982f, var_7.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_7.x * 1072f))))), _wgslsmith_f_op_f32(var_7.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.a.x, var_7.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b.x) * _wgslsmith_f_op_f32(-var_1)))), var_3.a.x), 4294967295u, u_input.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_7.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_7.x * var_5.x))), _wgslsmith_f_op_f32(var_7.x - _wgslsmith_f_op_f32(exp2(var_1))), -482f)));
}

