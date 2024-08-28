struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec4<bool>(true, true, false, true), vec2<u32>(20163u, 25187u), vec2<i32>(57491i, -68061i)), Struct_1(vec4<bool>(true, true, false, false), vec2<u32>(6694u, 0u), vec2<i32>(-18371i, -57532i)), Struct_1(vec4<bool>(false, true, true, false), vec2<u32>(93094u, 1u), vec2<i32>(-29261i, -3034i)), Struct_1(vec4<bool>(true, true, true, false), vec2<u32>(50u, 104679u), vec2<i32>(-2422i, 2147483647i)), Struct_1(vec4<bool>(false, true, true, false), vec2<u32>(26799u, 57385u), vec2<i32>(2147483647i, 10863i)), Struct_1(vec4<bool>(false, false, true, false), vec2<u32>(4294967295u, 18650u), vec2<i32>(1i, 2192i)), Struct_1(vec4<bool>(true, false, false, false), vec2<u32>(0u, 4294967295u), vec2<i32>(2147483647i, 2147483647i)), Struct_1(vec4<bool>(true, true, false, false), vec2<u32>(4294967295u, 0u), vec2<i32>(-1622i, -10423i)), Struct_1(vec4<bool>(true, false, false, true), vec2<u32>(99035u, 20353u), vec2<i32>(1i, 0i)), Struct_1(vec4<bool>(true, true, false, false), vec2<u32>(4294967295u, 0u), vec2<i32>(48252i, 0i)), Struct_1(vec4<bool>(true, false, true, true), vec2<u32>(764u, 20839u), vec2<i32>(-1i, 75758i)), Struct_1(vec4<bool>(false, false, true, true), vec2<u32>(1u, 1u), vec2<i32>(1i, 34606i)), Struct_1(vec4<bool>(true, false, false, true), vec2<u32>(4294967295u, 13102u), vec2<i32>(i32(-2147483648), 1i)), Struct_1(vec4<bool>(true, true, true, false), vec2<u32>(0u, 4294967295u), vec2<i32>(-1i, 41211i)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec2<u32> {
    var var_0 = global0[_wgslsmith_index_u32(4294967295u, 14u)];
    var_0 = Struct_1(vec4<bool>(any(select(select(arg_0.a.xyy, vec3<bool>(arg_0.a.x, true, false), arg_0.a.ywx), select(arg_0.a.xyz, arg_0.a.wxz, arg_0.a.x), all(vec4<bool>(false, var_0.a.x, arg_0.a.x, var_0.a.x)))), var_0.a.x, var_0.a.x, false), arg_0.b, select(var_0.c, -_wgslsmith_mod_vec2_i32(vec2<i32>(0i, u_input.a.x), vec2<i32>(arg_0.c.x, -13792i)) | (firstLeadingBit(u_input.a.yx) << (vec2<u32>(var_0.b.x, var_0.b.x) % vec2<u32>(32u))), select(!(!vec2<bool>(arg_0.a.x, arg_0.a.x)), !select(var_0.a.xz, vec2<bool>(arg_0.a.x, true), arg_0.a.x), vec2<bool>(!arg_0.a.x, -1045f != arg_1))));
    var var_1 = Struct_1(!arg_0.a, vec2<u32>(~(~5173u), var_0.b.x >> ((firstLeadingBit(var_0.b.x) << (_wgslsmith_mult_u32(var_0.b.x, 4294967295u) % 32u)) % 32u)), reverseBits(arg_0.c));
    var_0 = arg_0;
    var var_2 = vec2<i32>(arg_0.c.x, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.yy, var_1.c), vec2<i32>(56288i & u_input.a.x, _wgslsmith_add_i32(-arg_0.c.x, -86710i))));
    return var_0.b;
}

fn func_2() -> u32 {
    let var_0 = Struct_1(vec4<bool>(!(-19670i >= _wgslsmith_div_i32(u_input.a.x, u_input.a.x)), true, !(!select(false, true, true)), true), (func_3(global0[_wgslsmith_index_u32(firstTrailingBit(0u), 14u)], _wgslsmith_f_op_f32(trunc(1191f))) | _wgslsmith_clamp_vec2_u32(~vec2<u32>(21039u, 1u), vec2<u32>(54372u, 4294967295u), ~vec2<u32>(1u, 4294967295u))) & vec2<u32>(~90504u & _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 54405u, 47956u), vec3<u32>(0u, 32375u, 8545u)), 1u), vec2<i32>(-10890i, 38157i));
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1400f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(2933f + -606f))), _wgslsmith_f_op_f32(f32(-1f) * -467f)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2009f, 762f, _wgslsmith_div_f32(869f, 908f)))))));
    var var_2 = Struct_1(var_0.a, firstTrailingBit(var_0.b), var_0.c);
    var var_3 = Struct_1(select(!(!var_0.a), !vec4<bool>(all(var_0.a), select(var_0.a.x, var_0.a.x, var_0.a.x), true, var_0.a.x), var_2.a), ~func_3(Struct_1(select(vec4<bool>(false, var_2.a.x, false, var_0.a.x), var_2.a, var_2.a.x), vec2<u32>(10285u, var_2.b.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(33752i, u_input.a.x), vec2<i32>(7296i, var_2.c.x), vec2<i32>(var_0.c.x, var_2.c.x))), -894f), select(vec2<i32>(-_wgslsmith_div_i32(var_0.c.x, var_0.c.x), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, -1i), vec2<i32>(var_2.c.x, -1i)), ~u_input.a.zx)), var_0.c, select(var_0.a.zx, !vec2<bool>(var_2.a.x, var_0.a.x), select(var_2.a.x, any(var_0.a), true))));
    let var_4 = Struct_1(!select(select(vec4<bool>(var_0.a.x, var_3.a.x, var_0.a.x, var_2.a.x), var_3.a, true), select(vec4<bool>(false, var_3.a.x, var_3.a.x, var_2.a.x), select(var_2.a, vec4<bool>(var_2.a.x, false, true, var_2.a.x), true), vec4<bool>(var_3.a.x, var_3.a.x, true, true)), var_0.a.x), ~_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.b.x, max(var_0.b.x, 1u)), ~vec2<u32>(20559u, var_0.b.x) << (~vec2<u32>(var_0.b.x, var_2.b.x) % vec2<u32>(32u))), ~vec2<i32>(_wgslsmith_add_i32(var_2.c.x, -2147483647i), ~var_2.c.x & ~var_3.c.x));
    return 78353u;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(abs(func_2()), 14u)];
    global0 = array<Struct_1, 14>();
    var var_1 = firstLeadingBit(~firstLeadingBit(arg_1.zwy));
    var_1 = arg_1.yww;
    var var_2 = ~u_input.a.x;
    return Struct_1(!vec4<bool>(!arg_0.x, firstTrailingBit(u_input.a.x) == _wgslsmith_mod_i32(32564i, u_input.a.x), all(var_0.a.wzx), any(var_0.a)), vec2<u32>(4294967295u, ~(~var_1.x)), abs(u_input.a.zy));
}

fn func_4(arg_0: Struct_1) -> vec4<bool> {
    return func_1(vec2<bool>(true, true), ~reverseBits(abs(vec4<u32>(arg_0.b.x, 29478u, arg_0.b.x, arg_0.b.x)) | ~vec4<u32>(1472u, arg_0.b.x, 0u, 0u))).a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    var var_0 = Struct_1(func_4(func_1(vec2<bool>(true, false), ~(~vec4<u32>(28047u, 0u, 12726u, 1u)))), vec2<u32>(select(func_3(Struct_1(vec4<bool>(false, false, false, false), vec2<u32>(13645u, 1u), vec2<i32>(-1i, u_input.a.x)), -759f).x, ~1u, true), 18255u) << (vec2<u32>(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(8250u, 1u, 0u), max(vec3<u32>(1u, 89186u, 1u), vec3<u32>(67329u, 4294967295u, 1u)))) % vec2<u32>(32u)), vec2<i32>(u_input.a.x, i32(-1i) * -18499i));
    let var_1 = Struct_1(!var_0.a, var_0.b, vec2<i32>(~(-abs(-1i)), min(-u_input.a.x, -_wgslsmith_sub_i32(u_input.a.x, u_input.a.x))));
    global0 = array<Struct_1, 14>();
    let var_2 = global0[_wgslsmith_index_u32(1u, 14u)];
    global0 = array<Struct_1, 14>();
    let var_3 = Struct_1(vec4<bool>(var_1.a.x, true, !(var_0.a.x & !var_1.a.x), 0i <= ~_wgslsmith_div_i32(109312i, var_1.c.x)), vec2<u32>(_wgslsmith_mult_u32(var_0.b.x, abs(abs(var_2.b.x))), ~firstTrailingBit(29980u)), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(~0i, -u_input.a.x), vec2<i32>(0i ^ var_1.c.x, -21818i), firstTrailingBit(~vec2<i32>(-19954i, var_2.c.x))));
    var var_4 = func_1(vec2<bool>(func_4(Struct_1(func_1(vec2<bool>(false, var_0.a.x), vec4<u32>(var_3.b.x, 0u, 4750u, var_0.b.x)).a, ~vec2<u32>(var_0.b.x, var_1.b.x), max(vec2<i32>(46324i, var_3.c.x), vec2<i32>(var_2.c.x, var_2.c.x)))).x, true), vec4<u32>(1u, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(57490u, 64144u)), var_0.b), 33896u, _wgslsmith_sub_u32(8590u, 0u) << (~(~var_1.b.x) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~var_0.b.x, 1u, _wgslsmith_add_u32(50549u, select(4294967295u, ~var_3.b.x, true))), abs(~(firstTrailingBit(vec4<u32>(4294967295u, var_4.b.x, var_4.b.x, var_1.b.x)) << (vec4<u32>(var_3.b.x, var_0.b.x, var_4.b.x, 66031u) % vec4<u32>(32u)))));
}

