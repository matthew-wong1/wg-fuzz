struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4294967295u, vec3<u32>(33935u, 4294967295u, 35513u), 4294967295u, 1u);

var<private> global1: array<vec3<u32>, 11>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    var var_0 = all(vec4<bool>(true, true, true, true));
    var var_1 = Struct_1(max(~_wgslsmith_mult_u32(abs(u_input.b), ~u_input.b), ~arg_0.x), global1[_wgslsmith_index_u32(max(max(~countOneBits(global0.d), ~25707u), ~(~arg_0.x | ~global0.a)), 11u)], _wgslsmith_dot_vec2_u32(~global0.b.xz, abs(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.x, 31804u), select(global0.b.xz, vec2<u32>(u_input.a, 12711u), true)))), u_input.a);
    let var_2 = Struct_1(arg_0.x, var_1.b, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.d, 0u) ^ vec2<u32>(62266u, u_input.b), arg_0), 4294967295u) & 4294967295u, ~u_input.b);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-393f, 239f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(162f - 1000f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-1175f)))) + _wgslsmith_f_op_f32(f32(-1f) * -156f)));
    global1 = array<vec3<u32>, 11>();
    return var_1.d << (abs(arg_0.x) % 32u);
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(0u, 46508u), global0.b.yz << (global0.b.zx % vec2<u32>(32u))), _wgslsmith_add_vec2_u32(~global0.b.yy, ~vec2<u32>(global0.d, 85411u))), vec2<u32>(2422u, _wgslsmith_mod_u32(global0.c, u_input.b)) | (~vec2<u32>(u_input.b, 4294967295u) & global0.b.xz)), _wgslsmith_mult_vec3_u32(abs(~(~global1[_wgslsmith_index_u32(u_input.b, 11u)])), (~vec3<u32>(1u, global0.d, global0.c) | (vec3<u32>(global0.a, 0u, u_input.a) & global1[_wgslsmith_index_u32(global0.b.x, 11u)])) >> (vec3<u32>(~u_input.b, ~global0.a, ~4294967295u) % vec3<u32>(32u))), 45477u, 1u);
    var var_1 = Struct_1(~25659u, vec3<u32>(min(reverseBits(_wgslsmith_div_u32(0u, global0.b.x)), _wgslsmith_mult_u32(u_input.b, min(4294967295u, u_input.b))), func_3(var_0.b.xy) & ~65013u, u_input.b), global0.a, _wgslsmith_div_u32(abs(4294967295u), ~(func_3(global0.b.xx) & 1u)));
    let var_2 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(~(~arg_0), arg_0 | -2147483647i) >> (4294967295u % 32u), arg_0);
    let var_3 = Struct_1(select(~_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.b, var_1.c)), global0.b.zx), ~4294967295u, false), firstLeadingBit(global0.b << (~(~vec3<u32>(4294967295u, 51582u, global0.d)) % vec3<u32>(32u))), 4294967295u, _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, ~4294967295u), _wgslsmith_mod_vec2_u32(countOneBits(abs(var_0.b.zz)), vec2<u32>(_wgslsmith_div_u32(4294967295u, var_0.b.x), select(global0.b.x, 36856u, false)))));
    var var_4 = vec3<bool>(all(vec3<bool>(true, true, true)), var_2 != var_2, any(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true)));
    return Struct_1(firstTrailingBit(var_0.b.x), firstLeadingBit(abs(vec3<u32>(7659u, 0u, ~4294967295u))), countOneBits(4294967295u), 43555u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_1 {
    global0 = arg_0;
    var var_0 = func_2(1i);
    let var_1 = arg_1;
    let var_2 = func_2(_wgslsmith_div_i32(countOneBits(arg_2.x), _wgslsmith_add_i32(~(arg_2.x & arg_2.x), arg_2.x)));
    var_0 = arg_0;
    return Struct_1(~_wgslsmith_mod_u32(_wgslsmith_mod_u32(~u_input.a, ~var_2.a), 30112u), arg_0.b, ~(~_wgslsmith_mod_u32(_wgslsmith_add_u32(var_1.b.x, 4294967295u), ~arg_0.b.x)), ~arg_1.a);
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1054f, _wgslsmith_f_op_f32(-776f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(723f))))), -1494f));
    let var_1 = func_4(Struct_1(global0.d, global0.b, countOneBits(~global0.b.x), ~0u), func_2(-6016i), ~vec4<i32>(1i, 1i, 1i, 1i) >> ((vec4<u32>(~13181u, global0.a, 1u, global0.b.x) | (max(arg_0, arg_0) ^ (arg_0 ^ arg_0))) % vec4<u32>(32u)));
    global1 = array<vec3<u32>, 11>();
    global1 = array<vec3<u32>, 11>();
    let var_2 = u_input.a;
    return func_4(func_2(~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-27520i, -15109i))), Struct_1(global0.a, _wgslsmith_add_vec3_u32(~vec3<u32>(566u, u_input.b, var_2), ~(~global0.b)), 1u, reverseBits(58064u) & _wgslsmith_mult_u32(~4294967295u, min(4294967295u, var_1.a))), vec4<i32>(-1i, 2147483647i, -1i, _wgslsmith_add_i32(-firstTrailingBit(1i), -14364i)));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = true;
    var var_1 = arg_0.b.zy;
    var var_2 = global0.b.x | _wgslsmith_add_u32(1u, ~global0.d);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1 * vec4<f32>(-553f, arg_1.x, arg_1.x, -1126f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), arg_1)))) - arg_1)));
    var var_4 = vec3<i32>(countOneBits(_wgslsmith_div_i32(_wgslsmith_div_i32(0i, 15312i), 1i)) << (1u % 32u), 1i, firstTrailingBit(-_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), countOneBits(vec2<i32>(4340i, -22415i)))));
    return Struct_1(~361u, ~((~arg_0.b << (abs(vec3<u32>(39109u, 4294967295u, global0.a)) % vec3<u32>(32u))) << (vec3<u32>(func_2(1i).d, ~arg_0.c, ~7807u) % vec3<u32>(32u))), _wgslsmith_div_u32(_wgslsmith_add_u32(func_2(_wgslsmith_div_i32(-17407i, 40668i)).b.x, arg_0.b.x), (~u_input.a ^ ~16159u) ^ (22705u >> (countOneBits(7865u) % 32u))), ~min(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, var_1.x, var_1.x), vec3<u32>(u_input.b, 4294967295u, 1u))), max(49019u, _wgslsmith_add_u32(var_1.x, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(vec4<u32>(min(u_input.a, min(57851u, u_input.b)), ~max(39005u, 4294967295u), u_input.b, 0u)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-248f, -1000f, -720f, 899f))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-797f, -1700f, 1405f, 433f))))))));
    var var_1 = var_0;
    global0 = Struct_1(43708u, _wgslsmith_add_vec3_u32(global0.b, global0.b), ~(~func_4(func_1(vec4<u32>(18907u, global0.b.x, 1u, var_1.b.x)), Struct_1(8663u, global1[_wgslsmith_index_u32(u_input.a, 11u)], global0.b.x, u_input.b), firstTrailingBit(vec4<i32>(-2147483647i, -1i, 1i, -2147483647i))).b.x), 5129u);
    global1 = array<vec3<u32>, 11>();
    var var_2 = vec2<i32>(-14189i | _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(40290i, 12063i, -14662i), abs(-2147483647i), -17340i), vec3<i32>(2147483647i, ~(-53836i), ~(-1i))), firstTrailingBit(_wgslsmith_mod_i32(-2147483647i >> ((4294967295u & var_1.b.x) % 32u), ~8179i)));
    let var_3 = !vec4<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true))), true, true, true | !any(vec3<bool>(false, false, true)));
    var var_4 = func_2(countOneBits(_wgslsmith_sub_i32(var_2.x, 1i)));
    let var_5 = vec4<f32>(138f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1405f)), 1f)), 906f, -357f);
    var var_6 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_5.x, 557f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2825f - var_5.x) + _wgslsmith_f_op_f32(sign(-1342f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.x * _wgslsmith_f_op_f32(f32(-1f) * -1415f)))));
}

