struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1() -> i32 {
    return -2147483647i & _wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x & (-3744i ^ u_input.b.x)), u_input.b.x, -1i);
}

fn func_3() -> f32 {
    let var_0 = vec2<bool>(true, true);
    var var_1 = Struct_1(true, _wgslsmith_sub_u32(44186u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d, 74790u), ~vec2<u32>(u_input.d, 4294967295u))) >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(118214u, 65369u, 4294967295u), firstLeadingBit(vec3<u32>(u_input.c.x, u_input.d, 20381u))) % 32u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -166f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-532f + 302f), _wgslsmith_f_op_f32(min(-770f, -1022f)), all(vec2<bool>(var_0.x, var_0.x)))))), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(~(-52485i), _wgslsmith_div_i32(30092i, u_input.b.x), 18019i), -u_input.b ^ (u_input.b & vec3<i32>(u_input.b.x, -24147i, u_input.b.x))), select(vec3<i32>(_wgslsmith_div_i32(1i, u_input.b.x), 0i, 28022i), u_input.b, vec3<bool>(true, !var_0.x, true))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1998f)), -189f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-637f)), 1169f)), true)))));
    var_1 = Struct_1(all(select(vec4<bool>(all(vec4<bool>(false, false, var_1.a, var_1.a)), true, true, !var_1.a), !vec4<bool>(true, var_0.x, var_0.x, false), any(select(vec2<bool>(var_0.x, var_0.x), var_0, false)))), ~u_input.c.x, _wgslsmith_div_f32(740f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.c, var_1.e)) + _wgslsmith_f_op_f32(f32(-1f) * -451f)))), _wgslsmith_sub_vec3_i32(var_1.d, vec3<i32>(u_input.b.x, i32(-1i) * -1i, var_1.d.x) >> (vec3<u32>(1u, _wgslsmith_sub_u32(u_input.c.x, 77514u), u_input.c.x) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-469f * -891f))));
    var_1 = Struct_1(false, 91093u, -616f, reverseBits(_wgslsmith_sub_vec3_i32(var_1.d, -u_input.b)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1239f * -224f), _wgslsmith_f_op_f32(trunc(1322f)))));
    let var_2 = 1i;
    return _wgslsmith_f_op_f32(trunc(var_1.e));
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: f32) -> Struct_2 {
    var var_0 = arg_2;
    let var_1 = vec4<bool>(-(~28023i) < u_input.b.x, ~firstTrailingBit(~1u) <= u_input.d, false, (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2))) != _wgslsmith_f_op_f32(-125f * arg_2)) & !arg_0);
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1427f))))));
    let var_3 = 369f;
    var_0 = _wgslsmith_div_f32(arg_2, arg_2);
    return Struct_2(Struct_1(true, u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(arg_2 + var_2))), abs(vec3<i32>(-1i, u_input.b.x, ~(-21104i))), var_2), Struct_1(any(var_1.yy) & (~arg_1.x > -u_input.b.x), ~u_input.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(abs(728f))), 368f)), firstLeadingBit(~arg_1.xyx << ((vec3<u32>(u_input.c.x, 9136u, 25912u) | vec3<u32>(u_input.c.x, u_input.a.x, u_input.a.x)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(min(469f, _wgslsmith_f_op_f32(-arg_2)))), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(~1i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, -1i, 1i, -39320i), vec4<i32>(arg_1.x, -1i, u_input.b.x, 13022i))), arg_1.yz), select(arg_1.ww, vec2<i32>(1i, firstLeadingBit(0i)), var_1.xx)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-1197f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-156f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1534f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(555f - _wgslsmith_f_op_f32(round(-2642f))), _wgslsmith_f_op_f32(f32(-1f) * -1068f))));
    let var_1 = Struct_3(func_1(), func_2(true, ~vec4<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-19973i, -17240i, 35219i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, -13462i, 0i)), 75512i, u_input.b.x | u_input.b.x), var_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3()), 798f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))));
    let var_2 = ~(~(~u_input.c.x | 72438u));
    let var_3 = vec2<bool>(true, !select(all(vec2<bool>(var_1.b.a.a, var_1.b.a.a)), !(3419u <= u_input.d), var_1.b.b.a));
    var var_4 = var_1.b.a.b;
    var var_5 = u_input.c;
    let var_6 = _wgslsmith_f_op_f32(var_1.b.a.c + _wgslsmith_f_op_f32(-var_1.c.x));
    let var_7 = !vec3<bool>(var_3.x, var_1.b.a.a, false);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_dot_vec4_i32(~(-vec4<i32>(51798i, -2147483647i, -45133i, u_input.b.x)), reverseBits(select(vec4<i32>(u_input.b.x, u_input.b.x, 9355i, -1i), vec4<i32>(u_input.b.x, u_input.b.x, 10442i, 2677i), true))), _wgslsmith_dot_vec2_i32(firstTrailingBit(~vec2<i32>(-1i, var_1.a)), ~vec2<i32>(7535i, var_1.a)), abs(abs(~u_input.b.x)), -2147483647i ^ abs(-var_1.a)));
}

