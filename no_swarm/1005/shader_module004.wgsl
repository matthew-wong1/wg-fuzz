struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1() -> u32 {
    return ~(~u_input.a.x);
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: vec3<i32>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -753f) - _wgslsmith_f_op_f32(trunc(1f)));
    var var_1 = arg_2;
    let var_2 = ~(-arg_1.x);
    let var_3 = Struct_2(u_input.a.x, Struct_1(~max(-vec3<i32>(var_2, -40551i, -20982i), _wgslsmith_add_vec3_i32(arg_1, arg_2)), ~(vec3<u32>(u_input.a.x, u_input.a.x, 115357u) << (vec3<u32>(38287u, 46194u, u_input.a.x) % vec3<u32>(32u))) & select(~vec3<u32>(u_input.a.x, 66349u, 4294967295u), vec3<u32>(u_input.a.x, 21992u, u_input.a.x), vec3<bool>(true, true, true)), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(4294967295u, u_input.a.x, 1u, 4294967295u)), vec4<u32>(61555u, u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), select(11496u, 47490u, false)), (vec4<u32>(1694u, 61333u, 88095u, 0u) & vec4<u32>(u_input.a.x, 14899u, u_input.a.x, 0u)) ^ ~vec4<u32>(u_input.a.x, 0u, u_input.a.x, 33658u)), true));
    let var_4 = select(true, var_3.b.d, all(vec2<bool>(var_3.b.d & var_3.b.d, !var_3.b.d))) | (abs(_wgslsmith_sub_i32(-17044i & arg_1.x, firstTrailingBit(-2147483647i))) >= -26227i);
    return ~reverseBits(abs(vec4<u32>(_wgslsmith_div_u32(0u, var_3.b.b.x), ~1u, var_3.b.c.x, 1u ^ u_input.a.x)));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = arg_1.b;
    var var_2 = func_3(2147483647i, ~vec3<i32>(~max(var_1.a.x, var_0.b.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_1.a.x), -var_1.a.xx), var_1.a.x), vec3<i32>(-2147483647i, -18003i, abs(var_1.a.x)));
    var var_3 = -2032f;
    var var_4 = var_0.a;
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = i32(-1i) * -_wgslsmith_clamp_i32(36495i, -77029i, -2147483647i);
    let var_1 = Struct_1(vec3<i32>(0i, _wgslsmith_mult_i32(-var_0 >> (~u_input.a.x % 32u), 1i), _wgslsmith_clamp_i32(var_0, ~1i, max(var_0, var_0 | var_0))), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(90401u, u_input.a.x, u_input.a.x)), ~vec3<u32>(u_input.a.x, 809u, 37901u)), ~(~vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)), ~vec3<u32>(u_input.a.x, u_input.a.x, 4225u)), abs(select(~vec3<u32>(u_input.a.x, 48830u, u_input.a.x), abs(vec3<u32>(26350u, 63696u, 93940u)), true))), vec4<u32>(1u, _wgslsmith_add_u32(21253u, ~func_1()), u_input.a.x, 1804u), true || (countOneBits(1494i) < firstTrailingBit(abs(1i))));
    let var_2 = ~var_1.b;
    var var_3 = firstLeadingBit(_wgslsmith_sub_i32(var_0, var_0));
    var var_4 = Struct_2(var_2.x, func_2(select(vec3<bool>(var_1.d, all(vec2<bool>(var_1.d, false)), var_1.d && var_1.d), select(select(vec3<bool>(var_1.d, false, true), vec3<bool>(var_1.d, true, true), false), !vec3<bool>(var_1.d, var_1.d, var_1.d), var_1.d | false), true), Struct_2(_wgslsmith_mod_u32(~u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, var_2.x)), var_1)));
    let var_5 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1054f * 1481f), _wgslsmith_f_op_f32(step(-2055f, 1962f)))), _wgslsmith_div_f32(418f, _wgslsmith_f_op_f32(-1000f + 1088f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-241f, -1776f)) * _wgslsmith_f_op_f32(-713f * 268f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1026f * 1448f), _wgslsmith_f_op_f32(-1155f + 416f))))));
    var_4 = Struct_2(4294967295u, func_2(vec3<bool>(false, var_4.b.d, true), Struct_2(func_2(!vec3<bool>(false, var_4.b.d, var_1.d), Struct_2(0u, Struct_1(vec3<i32>(31587i, -2147483647i, var_1.a.x), var_1.c.www, vec4<u32>(u_input.a.x, 4294967295u, var_2.x, 27528u), false))).c.x, var_4.b)));
    var_4 = Struct_2(_wgslsmith_add_u32(~(~_wgslsmith_add_u32(1u, var_2.x)), ~_wgslsmith_dot_vec2_u32(var_2.yz, vec2<u32>(1u, 8956u))), func_2(!(!select(vec3<bool>(var_1.d, false, var_1.d), vec3<bool>(false, true, var_1.d), true)), Struct_2(func_2(vec3<bool>(var_4.b.d, false, var_4.b.d), Struct_2(4294967295u, var_4.b)).c.x, func_2(vec3<bool>(true, true, var_1.d), Struct_2(u_input.a.x, Struct_1(vec3<i32>(var_0, -40626i, 19589i), vec3<u32>(28937u, 1u, 4294967295u), var_1.c, var_4.b.d))))));
    let var_6 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(var_6.a.yz, ~(-var_6.a.x), var_4.b.a.zz, var_2.yz ^ func_2(!select(vec3<bool>(var_4.b.d, true, true), vec3<bool>(true, var_6.d, true), vec3<bool>(var_1.d, var_6.d, var_4.b.d)), Struct_2(_wgslsmith_add_u32(var_6.b.x, var_6.c.x), Struct_1(var_6.a, vec3<u32>(var_6.c.x, 4294967295u, 0u), var_4.b.c, var_6.d))).b.zz, vec4<i32>(var_1.a.x, _wgslsmith_mod_i32(2147483647i, _wgslsmith_add_i32(35823i, var_1.a.x) >> (_wgslsmith_div_u32(26288u, 18806u) % 32u)), reverseBits((i32(-1i) * -3852i) << (var_2.x % 32u)), var_4.b.a.x));
}

