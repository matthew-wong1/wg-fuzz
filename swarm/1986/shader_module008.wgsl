struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec2<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> f32 {
    return _wgslsmith_f_op_f32(min(-931f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2151f + 1000f))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3) -> vec4<i32> {
    global0 = 100662u;
    var var_0 = Struct_3(arg_0.c);
    var var_1 = !select(select(vec4<bool>(true, true, true, select(false, true, true)), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), false), all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)))), vec4<bool>(arg_1.a.a.x < arg_2.a.a.x, (0i >> (arg_1.a.b % 32u)) < abs(arg_1.a.d.x), true, true), true);
    var var_2 = vec4<u32>(81660u, ~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, arg_0.c.b, arg_0.c.b), vec3<u32>(arg_2.a.b, arg_2.a.b, var_0.a.b)), _wgslsmith_div_vec3_u32(~vec3<u32>(arg_2.a.b, 157599u, 0u), ~vec3<u32>(43467u, arg_2.a.b, arg_0.c.b))), ~(~(abs(var_0.a.b) >> (max(35246u, arg_1.a.b) % 32u))), reverseBits(1u));
    var_2 = vec4<u32>(_wgslsmith_mod_u32(max(firstLeadingBit(0u), ~arg_1.a.b), 72715u), ~arg_2.a.b, _wgslsmith_mult_u32(arg_0.c.b, 14532u), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.x, 27170u, 4294967295u, 44887u), vec4<u32>(arg_2.a.b, 8398u, 23684u, 0u), vec4<u32>(arg_2.a.b, 65474u, 4294967295u, var_2.x)), vec4<u32>(var_2.x, 84682u, arg_2.a.b, var_0.a.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(37651u, 36476u, arg_1.a.b, 0u), vec4<u32>(4294967295u, arg_1.a.b, arg_2.a.b, var_0.a.b), vec4<u32>(arg_1.a.b, 16435u, 22640u, 1153u))), min(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.c.b, arg_2.a.b, 4294967295u, var_0.a.b), vec4<u32>(var_2.x, arg_0.c.b, 7970u, arg_2.a.b)), max(vec4<u32>(var_2.x, var_0.a.b, 64579u, 0u), vec4<u32>(arg_0.c.b, 28536u, 4294967295u, var_0.a.b))), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, var_0.a.b, 19124u), vec4<u32>(arg_1.a.b, arg_0.c.b, arg_1.a.b, arg_0.c.b)) ^ ~vec4<u32>(1u, 4294967295u, arg_1.a.b, 0u)), abs(vec4<u32>(~var_0.a.b, ~31477u, min(arg_2.a.b, arg_2.a.b), arg_0.c.b))));
    return firstTrailingBit(select(vec4<i32>(min(var_0.a.d.x, u_input.a.x), 0i, arg_2.a.d.x, -arg_1.a.d.x), u_input.a, vec4<bool>(var_1.x && var_1.x, true, true, var_1.x | var_1.x)) >> (~(~(~vec4<u32>(var_2.x, var_0.a.b, arg_1.a.b, arg_2.a.b))) % vec4<u32>(32u)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<f32>) -> vec2<f32> {
    let var_0 = !(!((true && any(vec4<bool>(true, false, false, true))) & true));
    let var_1 = Struct_2(arg_0.x, u_input.a.xxw, Struct_1(arg_1, ~4294967295u, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(round(arg_0.x))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -596f), _wgslsmith_f_op_f32(trunc(2079f)))), func_3(Struct_2(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_mod_vec3_i32(u_input.a.yyy, vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i)), Struct_1(vec2<f32>(-521f, arg_1.x), 5791u, vec2<f32>(262f, arg_1.x), u_input.a), u_input.a.x), Struct_3(Struct_1(arg_0.zz, 56455u, vec2<f32>(-1358f, arg_0.x), u_input.a)), Struct_3(Struct_1(arg_0.ww, 7599u, arg_0.yy, u_input.a)))), abs(0i));
    var var_2 = Struct_2(-283f, var_1.c.d.ywy, var_1.c, i32(-1i) * -2147483647i);
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-var_1.c.a.x), -411f)))), 28524u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1464f + _wgslsmith_f_op_f32(ceil(1000f)))), var_1.c.c.x), u_input.a);
    var_2 = var_1;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(393f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1000f, 958f)), -313f, true))), arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(894f, -299f), vec2<f32>(-648f, -176f)))), ~(~(~(~0u))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(955f, 1776f, 1000f, 1000f) - vec4<f32>(834f, 1392f, 143f, 1430f)))), vec2<f32>(_wgslsmith_f_op_f32(select(-801f, 242f, true)), _wgslsmith_f_op_f32(sign(-396f))))))), countOneBits(vec4<i32>(firstLeadingBit(_wgslsmith_clamp_i32(u_input.a.x, -1i, u_input.a.x)), u_input.a.x, ~func_3(Struct_2(1166f, u_input.a.xzy, Struct_1(vec2<f32>(1000f, 274f), 1u, vec2<f32>(937f, -887f), vec4<i32>(u_input.a.x, -3970i, u_input.a.x, u_input.a.x)), 2147483647i), Struct_3(Struct_1(vec2<f32>(845f, 1224f), 4294967295u, vec2<f32>(375f, -450f), u_input.a)), Struct_3(Struct_1(vec2<f32>(467f, 421f), 1u, vec2<f32>(1015f, 204f), u_input.a))).x, u_input.a.x)));
    let var_2 = all(vec4<bool>(true, true, false & (true == (1626f > var_1.a.x)), false));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.a.x), var_1.c.x)))), var_1.d.zww, Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.c.x, _wgslsmith_f_op_f32(ceil(1378f))))), ~(~4294967295u), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.c.x * var_1.c.x), -401f) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.c.x, var_1.a.x)))), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-2147483647i, u_input.a.x), min(72447i, -71268i), 1i, u_input.a.x), _wgslsmith_add_vec4_i32(-vec4<i32>(var_1.d.x, 3983i, var_1.d.x, 0i), -var_1.d))), firstLeadingBit(u_input.a.x));
    let var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 1u), reverseBits(countOneBits(vec2<u32>(1u, 74475u))), vec2<u32>(4294967295u, 4294967295u) | reverseBits(vec2<u32>(var_1.b, 1u))), _wgslsmith_add_vec2_u32(~vec2<u32>(39854u, var_1.b), ~vec2<u32>(var_3.c.b, var_1.b) & vec2<u32>(1u, 1u)), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(var_1.b, var_3.c.b)), _wgslsmith_add_vec2_u32(abs(vec2<u32>(var_3.c.b, var_1.b)), vec2<u32>(var_1.b, 1u) << (vec2<u32>(var_3.c.b, var_1.b) % vec2<u32>(32u))))), var_3.c.d.xwx, _wgslsmith_dot_vec4_u32(~(~select(vec4<u32>(var_1.b, var_3.c.b, 2997u, var_3.c.b), vec4<u32>(var_1.b, 26859u, var_1.b, 62544u), true)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(var_1.b, var_3.c.b)), ~44890u, _wgslsmith_clamp_u32(var_1.b, var_1.b, 75234u), var_3.c.b >> (var_1.b % 32u)) << (((vec4<u32>(var_3.c.b, var_1.b, var_3.c.b, 8843u) & vec4<u32>(var_1.b, var_3.c.b, var_1.b, var_1.b)) ^ ~vec4<u32>(var_3.c.b, var_1.b, 30321u, var_3.c.b)) % vec4<u32>(32u))));
}

