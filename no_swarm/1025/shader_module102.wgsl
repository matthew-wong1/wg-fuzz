struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: f32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22> = array<f32, 22>(-404f, 1645f, 1210f, -535f, 1000f, -875f, -252f, -196f, 206f, -304f, -1036f, 243f, -839f, 757f, -1806f, 463f, 278f, -1432f, 629f, -338f, 1345f, -688f);

var<private> global1: array<Struct_4, 13>;

var<private> global2: vec3<u32>;

var<private> global3: u32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> u32 {
    var var_0 = Struct_5(Struct_1(firstLeadingBit(vec3<u32>(global2.x, global2.x, _wgslsmith_sub_u32(global2.x, 12715u))), 1i, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(~global2.x, 2783u), ~(global2.x & 0u)), 22u)], ~(vec2<u32>(global2.x, global2.x) | ~global2.xz)), false, max(-vec4<i32>(reverseBits(0i), -14019i, 1i, u_input.b.x ^ u_input.b.x), vec4<i32>(-u_input.a.x, -(0i << (1u % 32u)), -(u_input.b.x ^ u_input.a.x), u_input.a.x ^ abs(u_input.b.x))));
    var_0 = Struct_5(var_0.a, var_0.b, vec4<i32>(45257i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.b, 72831i, u_input.b.x), u_input.a << (vec3<u32>(global2.x, var_0.a.d.x, var_0.a.d.x) % vec3<u32>(32u))), -26607i), _wgslsmith_div_i32(abs(u_input.b.x) >> (29751u % 32u), var_0.a.b), firstTrailingBit(firstTrailingBit(~(-2147483647i)))));
    global0 = array<f32, 22>();
    let var_1 = Struct_4(!vec3<bool>(var_0.b, any(select(vec4<bool>(true, var_0.b, var_0.b, true), vec4<bool>(var_0.b, var_0.b, false, true), vec4<bool>(true, true, var_0.b, true))), !var_0.b));
    var var_2 = Struct_3(Struct_2(vec3<u32>(4294967295u, global2.x, max(~1u, var_0.a.d.x | var_0.a.d.x)), var_0.a, var_0.c.x), global2.x, -598f, vec3<u32>(45921u, select(1u, global2.x, !(!var_0.b)), firstTrailingBit(~(1u << (global2.x % 32u)))));
    return ~global2.x;
}

fn func_2(arg_0: u32, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = vec4<u32>(~(~_wgslsmith_add_u32(1u, global2.x)) & _wgslsmith_add_u32(~_wgslsmith_add_u32(global2.x, 57599u), 4294967295u), (func_3() | ~0u) | 35838u, _wgslsmith_add_u32(~arg_0, _wgslsmith_clamp_u32(~(~global2.x), ~firstLeadingBit(0u), 4294967295u)), 39385u | _wgslsmith_mod_u32(~arg_0 >> (~global2.x % 32u), arg_0));
    global1 = array<Struct_4, 13>();
    var_0 = min(firstLeadingBit(~vec4<u32>(0u, var_0.x, var_0.x, 8253u)) << ((vec4<u32>(global2.x << (global2.x % 32u), 1u, countOneBits(1u), func_3()) << (~reverseBits(vec4<u32>(0u, global2.x, global2.x, 0u)) % vec4<u32>(32u))) % vec4<u32>(32u)), ~(~(firstLeadingBit(vec4<u32>(arg_0, 33230u, 21459u, arg_0)) & firstLeadingBit(vec4<u32>(0u, var_0.x, 0u, global2.x)))));
    global2 = ~var_0.yww;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(2357f, global0[_wgslsmith_index_u32(var_0.x, 22u)])))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1141f)))));
    return Struct_1(~_wgslsmith_div_vec3_u32(abs(vec3<u32>(81479u, 0u, 0u)), vec3<u32>(var_0.x, func_3(), var_0.x)), i32(-1i) * -1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -848f)))) + _wgslsmith_f_op_f32(469f + 625f)), var_0.yx);
}

fn func_4(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: vec2<u32>) -> vec3<i32> {
    var var_0 = !vec4<bool>(arg_0.b, true, (select(-31210i, 0i, arg_0.b) ^ arg_1.x) == arg_0.c.x, global2.x >= max(1u, 472u));
    global3 = func_3();
    var var_1 = arg_0.a.d.x;
    var_1 = ~(~(~(arg_2.x << (arg_0.a.a.x % 32u)) & _wgslsmith_mod_u32(func_2(arg_0.a.a.x, vec3<bool>(var_0.x, arg_0.b, var_0.x)).a.x, 1u)));
    var_0 = select(select(vec4<bool>(true, false, arg_0.b, !(arg_0.b || arg_0.b)), !(!select(vec4<bool>(arg_0.b, false, arg_0.b, false), vec4<bool>(arg_0.b, var_0.x, var_0.x, true), arg_0.b)), all(!select(vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(var_0.x, arg_0.b, var_0.x, false), arg_0.b))), select(vec4<bool>(all(!vec4<bool>(arg_0.b, false, false, true)), true, true, !(!arg_0.b)), vec4<bool>(_wgslsmith_f_op_f32(round(arg_0.a.c)) >= _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 22u)] * 412f), false, arg_0.b, any(vec4<bool>(var_0.x, true, true, false))), arg_0.b != any(vec3<bool>(var_0.x, arg_0.b, true))), vec4<bool>(true == (_wgslsmith_sub_i32(-6085i, 42598i) < _wgslsmith_sub_i32(arg_0.a.b, u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.c) * -242f) >= -1112f, true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, var_0.x, true, true), any(vec3<bool>(false, var_0.x, true))))));
    return abs(min(arg_0.c.xwz, ~arg_0.c.wwx)) & vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.b.xz ^ vec2<i32>(arg_0.c.x, -2147483647i), vec2<i32>(arg_0.a.b, -14468i)), -2147483647i), u_input.b.x, _wgslsmith_mult_i32(countOneBits(_wgslsmith_mult_i32(0i, 2147483647i)), -14353i));
}

fn func_1(arg_0: Struct_4, arg_1: vec2<bool>) -> u32 {
    global3 = 2909u;
    var var_0 = _wgslsmith_sub_vec3_i32(func_4(Struct_5(func_2(~44274u, vec3<bool>(arg_1.x, false, arg_0.a.x)), arg_0.a.x, _wgslsmith_clamp_vec4_i32(vec4<i32>(-11592i, u_input.b.x, u_input.a.x, 1i), -vec4<i32>(u_input.b.x, 1i, 0i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.a.x, u_input.b.x, u_input.b.x) >> (vec4<u32>(4294967295u, 4294967295u, 4294967295u, 20724u) % vec4<u32>(32u)))), vec2<i32>(abs(u_input.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, -2147483647i, u_input.a.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -2147483647i)) >> (_wgslsmith_mult_u32(global2.x, global2.x) % 32u)), global2.xy), vec3<i32>(2147483647i, u_input.b.x << (func_2(firstTrailingBit(0u), arg_0.a).d.x % 32u), -u_input.b.x ^ _wgslsmith_sub_i32(~19023i, 0i)));
    global1 = array<Struct_4, 13>();
    var var_1 = 0u;
    let var_2 = -countOneBits(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, -63231i, u_input.a.x), vec4<i32>(u_input.b.x, 2147483647i, -18805i, u_input.a.x)), abs(u_input.b.x)), u_input.a.x, var_0.x, 1i));
    return _wgslsmith_sub_u32(firstTrailingBit(6088u), global2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global2.x;
    let var_0 = ~min(u_input.a.x, _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a.x, -7007i), u_input.a.x));
    let var_1 = ~(-_wgslsmith_mult_i32(-var_0, 1i) << ((2834u ^ func_1(Struct_4(vec3<bool>(false, false, false)), vec2<bool>(false, false))) % 32u));
    global2 = vec3<u32>(~(~275u), min(~30651u, global2.x), reverseBits(~_wgslsmith_mult_u32(~global2.x, global2.x)));
    global0 = array<f32, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(25847u, 22u)])) - global0[_wgslsmith_index_u32(~0u, 22u)])))), u_input.a.yx);
}

