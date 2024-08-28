struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec3<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<f32>) -> bool {
    let var_0 = false;
    let var_1 = 4294967295u;
    let var_2 = Struct_2(!(firstTrailingBit(~arg_0.x) < _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<i32>(arg_0.x, -34566i, 35872i, arg_0.x))), arg_0, !((true & (true || var_0)) && true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-160f)))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d * arg_1.x) + _wgslsmith_f_op_f32(-var_2.d)) + arg_1.x), -1000f, var_2.d, 556f));
    var var_4 = Struct_1(_wgslsmith_mod_u32(countOneBits(var_1), firstLeadingBit(1u)), select(vec2<bool>(false, var_2.c), vec2<bool>((arg_0.x & -39230i) == arg_0.x, true), 2755f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), vec3<bool>(all(vec3<bool>(0i >= var_2.b.x, var_0, true)), false, true), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_1))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2.d, 134f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(658f, 2554f))), !(!(!vec2<bool>(var_0, false))))));
    return true;
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    let var_0 = Struct_2(false, _wgslsmith_mult_vec4_i32(vec4<i32>(-countOneBits(1i), _wgslsmith_dot_vec2_i32(-vec2<i32>(-44494i, -52925i), ~vec2<i32>(42106i, 44961i)), _wgslsmith_dot_vec2_i32(vec2<i32>(3595i, -1i) << (vec2<u32>(22442u, u_input.b.x) % vec2<u32>(32u)), reverseBits(vec2<i32>(-8610i, -23864i))), _wgslsmith_sub_i32(~(-43527i), firstLeadingBit(-34157i))), vec4<i32>(abs(-73429i), select(1i, max(-2133i, 1i), select(arg_0.x, arg_0.x, arg_0.x)), 0i, 29257i)), arg_0.x, _wgslsmith_f_op_f32(-624f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(223f - 770f))))));
    let var_1 = select(!vec4<bool>(true, func_3(vec4<i32>(2147483647i, -2147483647i, var_0.b.x, -69420i), vec2<f32>(var_0.d, 932f)) & true, all(arg_0.zz) | all(vec3<bool>(var_0.c, arg_0.x, true)), !(u_input.b.x < 24613u)), !vec4<bool>(var_0.c, all(arg_0.yy), !(!arg_0.x), u_input.a <= u_input.b.x), vec4<bool>(false, any(vec3<bool>(true, any(vec3<bool>(false, true, true)), var_0.c)), false, var_0.c));
    var var_2 = Struct_1(~(~(~_wgslsmith_add_u32(43553u, 1u))), var_1.zz, !vec3<bool>(arg_0.x == any(var_1), !func_3(var_0.b, vec2<f32>(657f, var_0.d)), func_3(var_0.b, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.d, var_0.d), vec2<f32>(-255f, 1117f), true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(var_0.d * var_0.d)) + vec2<f32>(var_0.d, 875f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, var_0.d)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d, var_0.d) - vec2<f32>(1000f, 1135f)), !var_1.x)))));
    var var_3 = var_0;
    var var_4 = select(~(~vec4<u32>(var_2.a, firstLeadingBit(u_input.a), 53101u, 1u)), vec4<u32>(~var_2.a, _wgslsmith_mult_u32(~reverseBits(4294967295u), u_input.b.x & countOneBits(4294967295u)), var_2.a, u_input.b.x), false);
    return var_0;
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = 0u;
    let var_1 = func_2(vec3<bool>(true, true, true));
    var var_2 = 1u;
    var var_3 = Struct_2(false, abs(reverseBits(vec4<i32>(-1i, abs(var_1.b.x), var_1.b.x, var_1.b.x))), 17820u == min(arg_0, countOneBits(1u)), -1783f);
    let var_4 = var_1.a;
    return var_1;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: f32, arg_3: Struct_2) -> bool {
    var var_0 = func_2(select(select(select(select(vec3<bool>(false, true, arg_3.c), vec3<bool>(false, arg_3.a, false), true), vec3<bool>(arg_3.c, true, true), arg_0.c && true), vec3<bool>(arg_0.a, !arg_0.a, arg_3.a), vec3<bool>(false, func_2(vec3<bool>(true, false, arg_0.c)).a, all(vec2<bool>(arg_0.c, false)))), select(!select(vec3<bool>(arg_0.a, false, arg_3.c), vec3<bool>(arg_3.c, arg_0.c, arg_0.c), vec3<bool>(true, true, false)), select(select(vec3<bool>(false, arg_0.c, false), vec3<bool>(true, true, arg_0.c), arg_3.a), select(vec3<bool>(arg_0.c, false, false), vec3<bool>(arg_0.c, arg_3.c, false), vec3<bool>(false, false, false)), false), select(!vec3<bool>(false, false, arg_0.a), !vec3<bool>(true, arg_3.a, arg_3.c), !arg_0.c)), !(!(!vec3<bool>(false, true, arg_0.a)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)))) + _wgslsmith_f_op_f32(-arg_3.d)));
    var var_2 = vec4<bool>(!select(all(vec2<bool>(true, false)), arg_0.c, arg_0.c) && all(!vec3<bool>(false, var_0.c, true)), func_1(1u).a, !(!arg_0.a), false);
    var_2 = vec4<bool>(false, !(~(~4294967295u) < ~(70007u << (u_input.a % 32u))), false | var_2.x, false);
    let var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.b.x, 1u, firstLeadingBit(~1u), 14016u), vec4<u32>(firstLeadingBit(1u), arg_1.x, ~0u, arg_1.x));
    return select(!(func_2(vec3<bool>(var_2.x, arg_3.a, false)).b.x > min(_wgslsmith_sub_i32(-1i, arg_0.b.x), ~(-63168i))), var_0.a, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~38364u;
    var var_1 = !vec3<bool>(func_4(func_1(var_0 >> (var_0 % 32u)), u_input.b.xz, 1000f, Struct_2(true, func_1(var_0).b, true, _wgslsmith_f_op_f32(f32(-1f) * -1012f))), true, true);
    var var_2 = 0u;
    var var_3 = !func_1(1u & ~u_input.b.x).c;
    var var_4 = select(select(select(vec2<bool>(func_4(Struct_2(var_1.x, vec4<i32>(9458i, 2147483647i, -24417i, 58698i), var_1.x, 606f), vec2<u32>(u_input.b.x, 46714u), 118f, Struct_2(false, vec4<i32>(-24130i, -1i, -1i, 1i), var_1.x, -766f)), true), var_1.yy, all(select(var_1.xz, var_1.zz, vec2<bool>(var_1.x, var_1.x)))), !select(select(var_1.zy, var_1.zz, true), select(vec2<bool>(false, true), var_1.yz, var_1.zx), vec2<bool>(true, var_1.x)), var_1.yy), !(!var_1.xx), vec2<bool>(func_1(~4294967295u).a & !(!var_1.x), true));
    var var_5 = max(~max(1u, ~(~65754u)), var_0);
    let var_6 = Struct_1(4294967295u, vec2<bool>(true, var_4.x), select(select(vec3<bool>(false, true, var_1.x), !(!vec3<bool>(var_1.x, false, true)), vec3<bool>(func_1(u_input.a).a, false || var_4.x, var_1.x)), !(!(!vec3<bool>(true, var_4.x, true))), select(!select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(true, var_4.x, var_1.x), vec3<bool>(true, false, var_4.x)), vec3<bool>(true, var_1.x, var_1.x), select(select(vec3<bool>(var_1.x, false, var_4.x), vec3<bool>(false, true, false), var_1.x), vec3<bool>(var_1.x, false, false), vec3<bool>(false, false, var_4.x)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-849f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1236f, -1000f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(vec4<i32>(~1i, 1i, ~(-60463i), -1448i)), ~1u, _wgslsmith_f_op_f32(-1555f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_6.d.x))))));
}

