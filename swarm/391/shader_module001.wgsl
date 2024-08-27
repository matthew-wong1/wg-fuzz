struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5>;

var<private> global1: array<f32, 23> = array<f32, 23>(1378f, -749f, 338f, 274f, -132f, 1101f, 617f, 185f, -697f, -196f, -100f, -751f, 1962f, 1174f, -565f, -2074f, 945f, 1146f, -782f, 322f, 740f, -711f, -1229f);

var<private> global2: u32;

var<private> global3: f32 = -1775f;

var<private> global4: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: bool) -> vec3<bool> {
    var var_0 = arg_0.c;
    var var_1 = arg_0.a;
    var var_2 = _wgslsmith_f_op_vec2_f32(exp2(arg_0.b.yx));
    return vec3<bool>(!var_1.x || false, true, all(!vec3<bool>(true, !var_1.x, arg_2)));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: vec4<i32>) -> f32 {
    global1 = array<f32, 23>();
    global2 = u_input.a;
    var var_0 = Struct_1(arg_2, global4.x, min(min(vec2<u32>(u_input.d, ~35162u), reverseBits(vec2<u32>(u_input.b, 8215u) >> (vec2<u32>(u_input.d, u_input.c) % vec2<u32>(32u)))), ~vec2<u32>(6128u, u_input.a)));
    var var_1 = Struct_1(vec4<i32>(var_0.a.x, -2556i, i32(-1i) * -arg_2.x, var_0.a.x), var_0.b, var_0.c);
    var var_2 = global0[_wgslsmith_index_u32(select(23200u, var_0.c.x, any(select(func_1(Struct_2(vec3<bool>(true, global4.x, true), arg_1, vec4<i32>(var_1.a.x, var_1.a.x, 38068i, var_0.a.x), var_1.a.x, arg_0), ~0u, global4.x & global4.x).zz, func_1(global0[_wgslsmith_index_u32(var_1.c.x, 5u)], var_1.c.x, true).xy, all(select(vec3<bool>(var_0.b, true, true), vec3<bool>(true, global4.x, global4.x), var_1.b))))), 5u)];
    return _wgslsmith_div_f32(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c.x, var_0.c.x, ~8588u), ~countOneBits(vec3<u32>(0u, 1u, 0u))), 23u)], _wgslsmith_f_op_f32(-541f * global1[_wgslsmith_index_u32(~u_input.c, 23u)]));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: u32) -> vec2<bool> {
    var var_0 = !arg_0.a;
    var_0 = arg_0.a;
    var var_1 = _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(countOneBits(_wgslsmith_mod_u32(u_input.d, 1985u)), 0u, ~arg_3, _wgslsmith_div_u32(arg_3, 1u))), vec4<u32>(39210u, u_input.c, abs(~u_input.d), 1u));
    var var_2 = arg_0;
    let var_3 = arg_0.c.zzz;
    return select(vec2<bool>(false, true), vec2<bool>(-2147483647i <= ((i32(-1i) * -26707i) >> (firstTrailingBit(77573u) % 32u)), var_2.a.x), global4.xz);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> bool {
    let var_0 = global0[_wgslsmith_index_u32(select(~select(65394u, 1u, arg_0.b) ^ 12575u, ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, arg_2.c.x), 39788u), false) | 4294967295u, 5u)];
    var var_1 = arg_2;
    var var_2 = select(func_4(Struct_2(!(!var_0.a), vec3<f32>(_wgslsmith_f_op_f32(-262f + var_0.b.x), _wgslsmith_f_op_f32(floor(-1131f)), _wgslsmith_f_op_f32(func_3(350f, vec3<f32>(var_0.e, global1[_wgslsmith_index_u32(19936u, 23u)], var_0.e), var_0.c))), vec4<i32>(countOneBits(arg_2.a.x), arg_2.a.x, ~arg_2.a.x, 3279i), 0i, global1[_wgslsmith_index_u32(abs(~arg_0.c.x), 23u)]), _wgslsmith_f_op_vec3_f32(-var_0.b), var_0.a, _wgslsmith_dot_vec2_u32(var_1.c, vec2<u32>(min(1u, arg_0.c.x), max(u_input.c, 15020u)))), var_0.a.zy, global4.yx);
    var var_3 = all(vec2<bool>(697f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.b.x, var_0.b.x)) * var_0.b.x), !var_2.x));
    var var_4 = min(~(~arg_1), arg_2.c.x);
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_f32(sign(-1038f));
    let var_0 = Struct_2(select(vec3<bool>((global4.x || global4.x) && true, select(global4.x, !global4.x, global4.x), all(vec3<bool>(true, true, true))), func_1(Struct_2(select(vec3<bool>(false, false, true), vec3<bool>(true, false, global4.x), global4.x), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(105f, -485f, global1[_wgslsmith_index_u32(u_input.d, 23u)]), vec3<f32>(-886f, -169f, 342f))), ~vec4<i32>(8949i, 5448i, -52081i, 1i), -24868i, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 23u)])), ~_wgslsmith_clamp_u32(u_input.b, 44471u, 0u), !all(vec4<bool>(global4.x, global4.x, false, false))), select(select(!vec3<bool>(global4.x, false, global4.x), select(vec3<bool>(false, false, true), vec3<bool>(global4.x, global4.x, global4.x), vec3<bool>(global4.x, global4.x, false)), func_1(Struct_2(vec3<bool>(global4.x, global4.x, false), vec3<f32>(212f, global1[_wgslsmith_index_u32(u_input.c, 23u)], 1137f), vec4<i32>(-47685i, 0i, -1i, 0i), -1i, -415f), 0u, global4.x)), select(vec3<bool>(false, global4.x, true), !vec3<bool>(global4.x, global4.x, true), func_1(global0[_wgslsmith_index_u32(367u, 5u)], 12943u, false).x), select(vec3<bool>(false, false, false), vec3<bool>(global4.x, global4.x, global4.x), !vec3<bool>(true, global4.x, true)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -333f))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(min(abs(1u), _wgslsmith_add_u32(21198u, 7109u)), 23u)])), vec4<i32>(1i, -26498i, -67270i, 1i), -69980i << (~(~abs(u_input.d)) % 32u), global1[_wgslsmith_index_u32(countOneBits(~4294967295u), 23u)]);
    global4 = !var_0.a;
    var var_1 = select(vec4<bool>(true, var_0.a.x, !var_0.a.x, select(var_0.a.x, var_0.a.x, true)), select(vec4<bool>(true == !var_0.a.x, global4.x, select(global4.x | false, false, 39751i >= var_0.d), select(true, false, global4.x) != true), vec4<bool>(func_2(Struct_1(vec4<i32>(2147483647i, 1i, var_0.c.x, 41990i), global4.x, vec2<u32>(u_input.b, u_input.b)), 1u, Struct_1(var_0.c, var_0.a.x, vec2<u32>(u_input.c, 0u)), var_0.a.x) && global4.x, !(29769i == var_0.d), func_2(Struct_1(vec4<i32>(var_0.d, -1i, var_0.c.x, var_0.c.x), true, vec2<u32>(u_input.c, u_input.b)), 1u, Struct_1(var_0.c, global4.x, vec2<u32>(u_input.a, u_input.c)), select(global4.x, var_0.a.x, var_0.a.x)), (15861i | var_0.c.x) >= 1i), select(!select(vec4<bool>(var_0.a.x, global4.x, true, false), vec4<bool>(true, true, true, false), global4.x), !vec4<bool>(var_0.a.x, true, global4.x, true), !(!vec4<bool>(true, global4.x, var_0.a.x, var_0.a.x)))), var_0.a.x || true);
    global1 = array<f32, 23>();
    global2 = _wgslsmith_add_u32(4818u, u_input.b);
    let var_2 = u_input.c << (firstLeadingBit(4294967295u) % 32u);
    var var_3 = Struct_1(countOneBits(vec4<i32>(~var_0.d, ~var_0.d, var_0.d, -12846i)) ^ vec4<i32>(max(var_0.c.x, reverseBits(var_0.d)), 5872i, i32(-1i) * -var_0.c.x, var_0.c.x), true, _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(49568u, var_2), ~vec2<u32>(var_2, 4294967295u)), vec2<u32>(u_input.c, 1u)) & ~vec2<u32>(u_input.c, u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-310f - -543f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_div_f32(1000f, var_0.e))), var_0.b.zz, _wgslsmith_dot_vec2_u32(~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_3.c.x, 42539u), vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.c, u_input.d))), ~reverseBits(vec2<u32>(0u, 0u))));
}

