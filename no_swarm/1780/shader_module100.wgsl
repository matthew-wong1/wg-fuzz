struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(22823u, 724u, 25332u, 16304u);

var<private> global1: i32;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    return firstTrailingBit(_wgslsmith_dot_vec4_u32(arg_0.a ^ (countOneBits(vec4<u32>(arg_0.a.x, arg_0.b, arg_0.a.x, arg_0.a.x)) << (~arg_0.a % vec4<u32>(32u))), arg_0.a));
}

fn func_2() -> u32 {
    var var_0 = Struct_1(firstTrailingBit(vec4<u32>(35232u, func_3(Struct_1(vec4<u32>(0u, 54118u, 0u, 4294967295u), 41211u, 6505u, vec4<f32>(1780f, -387f, -401f, 100f))), 33865u, max(global0.x, global0.x))), (~global0.x & 70529u) | ~4294967295u, _wgslsmith_add_u32(~global0.x >> (_wgslsmith_clamp_u32(~37368u, min(71805u, 4294967295u), _wgslsmith_dot_vec3_u32(global0.yyw, global0.yww)) % 32u), global0.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(786f, 832f, -1491f, -518f) + vec4<f32>(822f, 207f, 997f, -259f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1069f, 2005f))), -478f, 869f, -655f)));
    let var_1 = vec4<bool>(!any(vec2<bool>(true, true)), abs(4294967295u) == var_0.b, true, false);
    let var_2 = Struct_1(firstLeadingBit(_wgslsmith_mod_vec4_u32(var_0.a, _wgslsmith_div_vec4_u32(var_0.a, var_0.a)) << (abs(vec4<u32>(88089u, global0.x, 1u, global0.x) ^ vec4<u32>(global0.x, 1u, 39067u, global0.x)) % vec4<u32>(32u))), ~abs(_wgslsmith_dot_vec3_u32(~global0.yxz, reverseBits(global0.wxy))), var_0.a.x, var_0.d);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(var_2.d.wx, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(227f, var_0.d.x)), _wgslsmith_f_op_vec2_f32(var_0.d.wx - var_0.d.yx)))))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1576f, _wgslsmith_f_op_f32(min(var_2.d.x, _wgslsmith_f_op_f32(max(534f, var_2.d.x))))))));
    global0 = ~vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(global0.x, 0u), var_2.a.x), abs(abs(68669u))), 1u, global0.x, ~select(1u, 4294967295u, false));
    return _wgslsmith_mod_u32(~9743u, ~var_0.a.x);
}

fn func_1() -> bool {
    global0 = vec4<u32>(~(~(4294967295u & ~global0.x)), firstTrailingBit(40231u), 0u, global0.x);
    var var_0 = Struct_1(countOneBits(~(countOneBits(vec4<u32>(global0.x, global0.x, global0.x, global0.x)) >> (vec4<u32>(0u, 81507u, 13194u, 4294967295u) % vec4<u32>(32u)))), global0.x, ~(~(~global0.x)) & reverseBits(1u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)));
    global0 = ~(~vec4<u32>(0u, var_0.b, _wgslsmith_add_u32(~61091u, func_2()), ~_wgslsmith_mod_u32(var_0.a.x, var_0.c)));
    var var_1 = Struct_1(select(~abs(select(vec4<u32>(0u, var_0.c, global0.x, 182u), var_0.a, vec4<bool>(false, true, false, true))), ~vec4<u32>(var_0.b, ~var_0.c, var_0.c >> (global0.x % 32u), func_2()), true), var_0.c, select(0u, 48003u, !all(vec4<bool>(true, false, false, true))) >> (~func_3(Struct_1(vec4<u32>(var_0.b, var_0.b, var_0.a.x, var_0.c), var_0.b, 0u, var_0.d)) % 32u), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(var_0.d, vec4<f32>(var_0.d.x, var_0.d.x, _wgslsmith_f_op_f32(-var_0.d.x), var_0.d.x))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(var_0.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-590f, -1468f, -2044f, -715f), _wgslsmith_f_op_vec4_f32(max(var_0.d, var_0.d)))))), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.d.x, -297f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -887f), -663f)), -211f), var_1.d), false));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec3<bool>(u_input.b.x == 19089i, false, func_1()), vec3<bool>(countOneBits(u_input.c.x) == ~u_input.c.x, any(select(vec2<bool>(false, true), vec2<bool>(false, false), false)), all(vec4<bool>(true, true, true, true))), true);
    var var_1 = Struct_1(~select(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global0.x, global0.x, global0.x), vec4<u32>(26108u, global0.x, 11032u, 66238u)), countOneBits(vec4<u32>(31420u, global0.x, 30812u, 13956u))), firstLeadingBit(vec4<u32>(global0.x, global0.x, global0.x, global0.x)), select(select(vec4<bool>(var_0.x, true, true, false), vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, true)), vec4<bool>(var_0.x, false, false, true), var_0.x)), 5865u, _wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(global0.xw, vec2<u32>(global0.x, global0.x)), ~global0.x), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-753f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1759f) + _wgslsmith_f_op_f32(-725f + -850f)), _wgslsmith_f_op_f32(trunc(673f)), 935f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-753f, -1071f, 852f, 1075f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(2411f, -372f, 2147f, -1067f) + vec4<f32>(-388f, -469f, 1383f, -471f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(247f, 1038f, 1538f, 2495f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(116f, 524f, -284f, -1334f) * vec4<f32>(559f, 1275f, 879f, 402f))), false)))));
    var var_2 = Struct_1(var_1.a, func_2(), 45069u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(2119f, 1000f, var_1.d.x, -1080f))) - var_1.d) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(622f, var_1.d.x, var_1.d.x, -2693f) + vec4<f32>(var_1.d.x, var_1.d.x, var_1.d.x, var_1.d.x)))))));
    var_1 = Struct_1(vec4<u32>(22853u, var_2.c, var_2.a.x, countOneBits(global0.x)), ~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(26655u, global0.x, 1089u), var_1.a.xyy), vec3<u32>(19789u, var_2.c, 9u)), countOneBits(var_2.a.xwy)), ~(~1u & (1u | global0.x)), vec4<f32>(_wgslsmith_f_op_f32(-var_2.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.x)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.d.x, 1752f))), var_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1889f)))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.d.yx * _wgslsmith_f_op_vec2_f32(-vec2<f32>(996f, var_2.d.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.d.x, var_2.d.x)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.d.yx - vec2<f32>(168f, var_2.d.x)) - vec2<f32>(var_1.d.x, 1000f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_2.d.ww, vec2<f32>(-1000f, var_1.d.x)))), var_0.x)))));
    let var_4 = Struct_1(~var_2.a, var_1.c, global0.x & (max(8788u | global0.x, ~var_2.b) ^ 1u), _wgslsmith_f_op_vec4_f32(var_1.d * var_1.d));
    let var_5 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(var_4.d.x, 1114f, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(var_1.b ^ _wgslsmith_add_u32(_wgslsmith_div_u32(11270u, 4294967295u), func_3(var_4))), vec4<u32>(74608u, 56414u, global0.x, var_1.b));
}

