struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec3<f32>,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec4<u32>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec4<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 6>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: Struct_1) -> vec3<f32> {
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a), arg_0.c);
}

fn func_3() -> vec3<f32> {
    global0 = array<Struct_3, 6>();
    global0 = array<Struct_3, 6>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1706f - -1278f), _wgslsmith_f_op_f32(570f + 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1117f)), _wgslsmith_f_op_f32(f32(-1f) * -568f)))), true, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-740f, -195f, -1462f) * vec3<f32>(-833f, -804f, -1145f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, -1000f, 794f))))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(575f, 199f, 1051f), vec3<f32>(-593f, 776f, -2184f), vec3<bool>(false, false, false)))))), vec3<f32>(_wgslsmith_f_op_f32(trunc(-161f)), _wgslsmith_f_op_f32(abs(-605f)), 674f)), vec4<i32>(-1i, 2147483647i, max(-_wgslsmith_mod_i32(u_input.b.x, -2147483647i), ~reverseBits(2147483647i)), 0i), all(!select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true))));
    let var_1 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_0.a))), var_0.e, _wgslsmith_f_op_vec3_f32(exp2(var_0.a)), var_0.d, !(!var_0.e)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, -334f, 1239f, -235f) - vec4<f32>(var_0.c.x, 307f, -216f, -290f))))), u_input.b.x, vec4<u32>(_wgslsmith_sub_u32(71259u, select(4294967295u, u_input.c, true)), 1u, u_input.c, _wgslsmith_mod_u32(0u, ~u_input.d.x)), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_0.a + var_0.c))), var_0.c.x > 683f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(460f, -190f, 1000f) - var_0.c) - var_0.a), reverseBits(min(vec4<i32>(var_0.d.x, var_0.d.x, 12057i, 2147483647i), vec4<i32>(-48904i, var_0.d.x, var_0.d.x, 52028i))), !var_0.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(899f, var_0.c.x, 426f, var_0.c.x), vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, 1427f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1827f, var_0.a.x, -1136f, var_0.c.x)))))));
    let var_2 = !(!vec3<bool>(all(vec4<bool>(var_0.e, var_0.b, var_1.a.a.e, false)), false, select(true, any(vec2<bool>(var_0.e, var_0.b)), true)));
    return var_1.a.a.a;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec2<f32>) -> Struct_4 {
    let var_0 = Struct_4(arg_1, -1i, firstTrailingBit(u_input.d), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(Struct_1(arg_1.b.zxx, true, arg_1.a.c, arg_1.a.d, arg_1.a.b)))), arg_1.a.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()), arg_1.a.c), _wgslsmith_clamp_vec4_i32(arg_1.a.d, ~vec4<i32>(1i, arg_1.a.d.x, -57339i, arg_1.a.d.x), vec4<i32>(u_input.b.x, arg_0.x, 0i, arg_0.x)), arg_1.a.e), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1.b.x - 1079f), _wgslsmith_f_op_f32(-arg_1.a.a.x), _wgslsmith_f_op_f32(min(-478f, 1109f)), _wgslsmith_f_op_f32(floor(arg_2.x))) + _wgslsmith_f_op_vec4_f32(step(arg_1.b, vec4<f32>(1000f, -292f, arg_1.b.x, 483f))))));
    let var_1 = var_0.c.wyw;
    let var_2 = arg_1.a;
    var var_3 = vec3<f32>(-1005f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-arg_2.x));
    var var_4 = 4294967295u;
    return var_0;
}

fn func_4(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: f32, arg_3: Struct_3) -> vec3<bool> {
    let var_0 = Struct_2(arg_0.d.a, arg_0.a.b);
    var var_1 = arg_3;
    var var_2 = arg_0;
    var_2 = arg_0;
    var var_3 = 1i;
    return !(!vec3<bool>(~(-2147483647i) > select(arg_0.d.a.d.x, -38924i, arg_3.b.a.e), true, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, -9891i, u_input.b.x), vec3<i32>(1i, u_input.b.x, u_input.b.x) & vec3<i32>(u_input.b.x, 45165i, u_input.b.x)), vec3<i32>(~(-23050i), i32(-1i) * -18264i, 35335i << (0u % 32u))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1024f, 1000f, 176f) * vec3<f32>(948f, 1221f, -1000f)), true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(822f, 1827f, -1570f)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, -23815i, 2147483647i)), select(true, true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2000f, 1531f, -340f, 411f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1442f, 111f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(698f, 470f)))), vec2<bool>(u_input.d.x <= 68785u, false)))), -u_input.b, 733f, global0[_wgslsmith_index_u32(abs(1u) & ~countOneBits(u_input.a), 6u)]);
    var_0 = vec3<bool>(~(_wgslsmith_sub_u32(u_input.d.x, u_input.a) ^ 29319u) >= 63528u, true, !(!select(true, any(vec2<bool>(true, true)), var_0.x)));
    global0 = array<Struct_3, 6>();
    var_0 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-761f, -1562f)) * 1538f)) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(227f))))), !all(select(!vec4<bool>(var_0.x, true, false, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), var_0.x)), var_0.x);
    let var_1 = func_1(-vec3<i32>(countOneBits(1i), 1i << (countOneBits(68753u) % 32u), 0i), Struct_2(func_1(~(~vec3<i32>(-7252i, u_input.b.x, -45233i)), Struct_2(func_1(vec3<i32>(u_input.b.x, u_input.b.x, -76048i), Struct_2(Struct_1(vec3<f32>(1034f, -1000f, 380f), var_0.x, vec3<f32>(-1389f, -114f, -782f), vec4<i32>(u_input.b.x, u_input.b.x, 1i, u_input.b.x), true), vec4<f32>(1000f, -1249f, 1000f, -1487f)), vec2<f32>(1000f, 365f)).a.a, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-892f, 636f, -128f, -801f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1718f, -1733f))).a.a, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(225f, 164f, 741f, -1205f)), u_input.d.x != 26339u)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, -1149f, 488f, 1281f), vec4<f32>(940f, -988f, -1202f, -154f)))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -435f), vec2<f32>(1000f, 738f)))))).a;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(var_1.a.d.zyz, Struct_2(func_1(var_1.a.d.xxx, Struct_2(var_1.a, var_1.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, -176f))).d.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, 2511f, -782f, var_1.a.c.x))), _wgslsmith_f_op_vec2_f32(-var_1.b.yx)).c.wzx, var_1.a.d.xwy);
}

