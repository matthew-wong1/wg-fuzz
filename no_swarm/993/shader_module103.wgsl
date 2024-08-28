struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec2<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: i32) -> vec2<u32> {
    let var_0 = Struct_1(~(~vec4<u32>(57574u, u_input.c.x, u_input.b.x, 4294967295u) | ~(vec4<u32>(0u, 4294967295u, arg_0, 48276u) ^ vec4<u32>(arg_0, arg_0, arg_0, 4696u))), ~u_input.e.yyx ^ (_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, u_input.d.x, arg_2), vec3<i32>(arg_2, -24999i, arg_2), u_input.e.www | vec3<i32>(2147483647i, u_input.e.x, 14556i)) << (u_input.b % vec3<u32>(32u))), vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -118f) + _wgslsmith_f_op_f32(f32(-1f) * -1702f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-324f - 246f)))), vec2<f32>(1000f, 143f), select(vec3<bool>(false, !(!arg_1.x), true), select(!vec3<bool>(false, arg_1.x, false), !vec3<bool>(false, arg_1.x, arg_1.x), !vec3<bool>(arg_1.x, arg_1.x, false)), any(!select(vec3<bool>(true, true, false), vec3<bool>(arg_1.x, true, arg_1.x), vec3<bool>(arg_1.x, true, arg_1.x)))));
    let var_1 = var_0.c.x;
    return vec2<u32>(~(~_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, var_0.a.x), var_0.a.xx))), u_input.c.x);
}

fn func_3(arg_0: f32) -> vec2<bool> {
    var var_0 = 71498u;
    let var_1 = vec2<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.b.x, 0u, u_input.b.x, 0u)) << (countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 81613u, 41540u, 64557u), vec4<u32>(132u, u_input.b.x, 1u, 11479u))) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(70484u, 0u, ~1u, u_input.c.x ^ 52942u), select(reverseBits(vec4<u32>(u_input.c.x, 18639u, 44201u, 4294967295u)), vec4<u32>(63532u, 0u, 0u, u_input.c.x) >> (vec4<u32>(4294967295u, 0u, 104162u, 1705u) % vec4<u32>(32u)), vec4<bool>(true, true, true, true)))), _wgslsmith_mult_u32(u_input.c.x, _wgslsmith_mult_u32(u_input.b.x, 4113u)));
    var var_2 = _wgslsmith_div_vec3_i32(u_input.a | ~(vec3<i32>(u_input.d.x, u_input.e.x, -1i) ^ _wgslsmith_div_vec3_i32(u_input.a, u_input.d.zwz)), u_input.e.zyw);
    let var_3 = ~var_2.x;
    var_0 = _wgslsmith_dot_vec4_u32(~(~vec4<u32>(abs(var_1.x), func_2(0u, vec2<bool>(true, true), 39433i).x, ~var_1.x, _wgslsmith_mult_u32(0u, var_1.x))), select(select(vec4<u32>(0u & u_input.c.x, 1u, ~u_input.c.x, 4294967295u), abs(vec4<u32>(u_input.b.x, 36433u, 1u, 5951u)), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), true)), reverseBits(~vec4<u32>(u_input.c.x, u_input.b.x, 4294967295u, u_input.c.x) >> (vec4<u32>(4294967295u, 60253u, 4294967295u, 82228u) % vec4<u32>(32u))), !vec4<bool>(u_input.b.x < u_input.b.x, select(false, false, false), false, true)));
    return select(vec2<bool>(select(false, -11954i < _wgslsmith_add_i32(var_3, -69857i), u_input.a.x != var_3), false), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true), false)), vec2<bool>(!any(vec4<bool>(true, true, true, false)), true)), true);
}

fn func_1() -> bool {
    var var_0 = select(select(_wgslsmith_add_vec2_u32(vec2<u32>(~u_input.c.x, 0u), max(reverseBits(u_input.b.zx), vec2<u32>(4294967295u, 15728u))), countOneBits(~u_input.c) >> (vec2<u32>(u_input.b.x, ~1u) % vec2<u32>(32u)), true), ~select(func_2(~24353u, vec2<bool>(true, true), u_input.d.x), ~firstTrailingBit(vec2<u32>(1u, 1u)), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false))), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), func_3(1365f), vec2<bool>(true, true)), vec2<bool>(true, true)));
    let var_1 = Struct_2(Struct_1(vec4<u32>(4294967295u, ~1u, abs(abs(40929u)), _wgslsmith_div_u32(func_2(u_input.b.x, vec2<bool>(true, false), 1i).x, func_2(24841u, vec2<bool>(true, true), 1i).x)), -min(vec3<i32>(u_input.e.x, -12014i, u_input.a.x) >> (vec3<u32>(var_0.x, u_input.b.x, 12369u) % vec3<u32>(32u)), vec3<i32>(u_input.e.x, u_input.a.x, u_input.e.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(201f, -208f, 809f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1129f, 2235f, -214f)))) - vec3<f32>(1f, 1f, 1f)), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1728f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(237f)) - _wgslsmith_f_op_f32(-180f - 291f))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true)))), !all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true))) & true, ~_wgslsmith_mod_vec4_u32(vec4<u32>(19024u, 52229u, 27268u, u_input.c.x) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(36326u, var_0.x, 1u, 1u), vec4<u32>(var_0.x, 91143u, 2642u, 0u)) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, u_input.b.x, 1143u), vec4<u32>(var_0.x, 33129u, var_0.x, 32328u))));
    let var_2 = ~(~func_2(62040u, func_3(-1032f), -56424i));
    var_0 = ~vec2<u32>(var_1.c.x, 67650u);
    var_0 = select(~vec2<u32>(countOneBits(var_2.x), ~countOneBits(4294967295u)), min(vec2<u32>(~func_2(var_1.a.a.x, vec2<bool>(var_1.b, var_1.a.e.x), 13196i).x, var_0.x), ~reverseBits(u_input.c)), var_1.a.e.yy);
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_1();
    var var_1 = vec2<u32>(4294967295u, select(_wgslsmith_mod_u32(u_input.b.x, 1u), 0u, (0i << (0u % 32u)) != _wgslsmith_clamp_i32(30159i, 46191i, -2147483647i))) | vec2<u32>(~(~(~0u)), ~9911u);
    var_1 = u_input.c;
    var var_2 = reverseBits(_wgslsmith_add_u32(~(~abs(var_1.x)), 1u));
    var var_3 = -u_input.a.x;
    let var_4 = select(u_input.c.x, reverseBits(~u_input.b.x & ~88519u), true) <= _wgslsmith_sub_u32(u_input.c.x, var_1.x >> (83478u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(-countOneBits(vec2<i32>(0i, -12486i)), u_input.e.xy, u_input.a.yz >> (~vec2<u32>(14090u, 83051u) % vec2<u32>(32u))), u_input.b, -u_input.e.zzz);
}

