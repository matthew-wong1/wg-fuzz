struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_3, arg_3: bool) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -955f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-499f, _wgslsmith_f_op_f32(-1166f * arg_2.a.a.c.x)) - -118f)));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> f32 {
    let var_0 = ~arg_2;
    let var_1 = vec3<i32>(~countOneBits(_wgslsmith_sub_i32(firstTrailingBit(25337i), -1i)), ~u_input.b & -firstTrailingBit(u_input.b), u_input.b);
    global0 = arg_3;
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_div_f32(-300f, 1306f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-506f)), -814f)) == _wgslsmith_f_op_f32(-arg_3.b), arg_1, arg_3.c);
    let var_2 = false;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0, 981f, Struct_3(Struct_2(arg_3), u_input.a), true))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1843f))))), _wgslsmith_f_op_f32(sign(-1029f))))));
}

fn func_1() -> vec4<u32> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(1i, 1929f, 1u, Struct_1(global0.a, global0.b, vec4<f32>(global0.b, -719f, 1590f, 1496f)))), _wgslsmith_f_op_f32(sign(1066f))) >= _wgslsmith_f_op_f32(ceil(global0.c.x)), _wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b, 773f))), _wgslsmith_f_op_vec4_f32(-global0.c)));
    global0 = var_0.a;
    var var_1 = var_0.a;
    var var_2 = ~select(~vec3<u32>(1u, 1u, 1u), vec3<u32>(~_wgslsmith_clamp_u32(0u, 5468u, 50904u), 24839u, ~_wgslsmith_mult_u32(0u, 7395u)), !(!vec3<bool>(false, var_0.a.a, global0.a)));
    let var_3 = reverseBits(u_input.b);
    return max(~_wgslsmith_mod_vec4_u32(~(~vec4<u32>(var_2.x, 4294967295u, 4294967295u, var_2.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(29340u, var_2.x, 56326u, var_2.x), vec4<u32>(var_2.x, var_2.x, 96588u, 893u) & vec4<u32>(26980u, var_2.x, var_2.x, 40896u))), _wgslsmith_sub_vec4_u32(~countOneBits(vec4<u32>(0u, 0u, var_2.x, 0u)) << ((~vec4<u32>(var_2.x, 65962u, var_2.x, var_2.x) >> (~vec4<u32>(16670u, 25919u, 0u, 50256u) % vec4<u32>(32u))) % vec4<u32>(32u)), max(vec4<u32>(4294967295u, ~var_2.x, _wgslsmith_clamp_u32(1u, var_2.x, var_2.x), var_2.x), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, 1u, var_2.x), vec4<u32>(var_2.x, var_2.x, 0u, 4294967295u)), vec4<u32>(43762u, var_2.x, 27871u, var_2.x) >> (vec4<u32>(var_2.x, var_2.x, 4294967295u, 32903u) % vec4<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(_wgslsmith_add_u32(0u, 0u & firstLeadingBit(select(21930u, 6973u, false))), 48789u << (select(~(~7426u), 1u, true) % 32u), 38699u, ~(~9648u >> (abs(_wgslsmith_dot_vec4_u32(vec4<u32>(2134u, 35436u, 1u, 1u), vec4<u32>(0u, 46311u, 38920u, 1u))) % 32u)));
    var_0 = vec4<u32>(max(var_0.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, var_0.x, var_0.x, 100008u) ^ func_1(), ~vec4<u32>(12610u, var_0.x, var_0.x, 60732u) ^ vec4<u32>(var_0.x, var_0.x, 1u, var_0.x))), var_0.x, var_0.x, var_0.x);
    let var_1 = global0.c.zz;
    var_0 = abs(~vec4<u32>(~(~14860u), var_0.x, ~(var_0.x ^ var_0.x), countOneBits(var_0.x)));
    let var_2 = vec3<bool>(global0.a, true, !(any(vec4<bool>(false, global0.a, global0.a, true)) == global0.a));
    var_0 = vec4<u32>(~(~36401u), max(_wgslsmith_clamp_u32(1u, ~countOneBits(4294967295u), 4294967295u), _wgslsmith_add_u32(0u, var_0.x)), _wgslsmith_mod_u32(func_1().x, 4294967295u), max(~_wgslsmith_mult_u32(var_0.x, var_0.x), ~36093u));
    let var_3 = var_0.xyz;
    let var_4 = Struct_1(!(false && all(var_2.zz)) && var_2.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.b, _wgslsmith_f_op_f32(global0.c.x - 1323f), true))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(func_2(-1i, _wgslsmith_f_op_f32(-2107f - -732f), var_0.x, Struct_1(global0.a, -495f, global0.c))), -1054f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -628f)))));
    global0 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(global0.b, _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(func_1(), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(var_3.x, 12421u, var_3.x, 1u) & select(vec4<u32>(var_3.x, var_3.x, 4294967295u, var_0.x), vec4<u32>(var_0.x, 50875u, var_3.x, var_3.x), vec4<bool>(false, true, global0.a, true)), reverseBits(firstLeadingBit(vec4<u32>(1u, 0u, 7079u, var_3.x)))), ~abs(vec4<u32>(51575u, 4294967295u, 26609u, 24128u)) << (select(vec4<u32>(1u, var_0.x, var_3.x, 0u), vec4<u32>(var_0.x, var_0.x, var_0.x, 96813u), vec4<bool>(var_4.a, true, true, global0.a)) % vec4<u32>(32u))), var_4.c.yx, var_0.x);
}

