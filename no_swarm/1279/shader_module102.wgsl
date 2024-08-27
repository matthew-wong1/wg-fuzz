struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = Struct_2(arg_0.c, -reverseBits(firstLeadingBit(arg_0.b)) >> (1944u % 32u), arg_0.a, select(select(select(!arg_0.d, arg_0.d, arg_0.d.x), !select(arg_0.d, arg_0.d, arg_0.d.x), !select(arg_0.d, vec3<bool>(arg_0.d.x, arg_0.d.x, true), true)), vec3<bool>(false, true, true), !select(!vec3<bool>(arg_0.d.x, arg_0.d.x, true), arg_0.d, select(arg_0.d, arg_0.d, arg_0.d))));
    let var_1 = 1u;
    let var_2 = Struct_1(var_0.c.a);
    global0 = array<Struct_2, 29>();
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~0u, ~var_1), 29u)];
    return -arg_0.b;
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<bool>(false, (abs(-2147483647i) > u_input.a) == !((-17287i > u_input.a) | any(vec2<bool>(false, true))), true);
    var_0 = !(!vec3<bool>(!(!var_0.x), !(var_0.x || true), all(select(vec3<bool>(false, true, false), vec3<bool>(var_0.x, true, true), false))));
    let var_1 = ~_wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(-1467i, 1i), -u_input.a), -2147483647i, func_3(global0[_wgslsmith_index_u32(firstTrailingBit(1u), 29u)]));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1364f)))) - -665f)));
    var var_3 = countOneBits(-vec2<i32>(0i, 13639i));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.a))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a * var_2.a)) * 326f)));
}

fn func_4(arg_0: Struct_1) -> vec4<i32> {
    global0 = array<Struct_2, 29>();
    var var_0 = _wgslsmith_dot_vec4_i32(~(vec4<i32>(firstLeadingBit(u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -15913i), vec2<i32>(1i, u_input.a)), u_input.a, 1i) << (vec4<u32>(28414u, ~4294967295u, ~0u, 52581u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(vec4<i32>(firstTrailingBit(20039i), _wgslsmith_add_i32(u_input.a, 0i), 32066i, u_input.a) >> (vec4<u32>(0u, ~4294967295u, 1u, 1u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 26643i, u_input.a, -2147483647i), vec4<i32>(u_input.a, u_input.a, -30186i, u_input.a)), ~vec4<i32>(u_input.a, u_input.a, 28414i, -19017i)), vec4<i32>(u_input.a | -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(u_input.a, -37493i)), ~(-1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(0i, 795i))))));
    let var_1 = !vec4<bool>(!(~55180u > _wgslsmith_clamp_u32(0u, 11896u, 14104u)), 2147483647i == (min(-1i, 1i) ^ abs(u_input.a)), (_wgslsmith_dot_vec4_u32(vec4<u32>(25429u, 42762u, 0u, 1u), vec4<u32>(67493u, 4294967295u, 8055u, 0u)) & ~19032u) != ~(~4294967295u), true);
    let var_2 = vec2<u32>(~countOneBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 117965u, 8561u), vec4<u32>(1u, 46490u, 26026u, 0u))), 1u);
    var var_3 = select(!select(var_1.wyy, vec3<bool>(true, true, true), !vec3<bool>(var_1.x, var_1.x, var_1.x)), !var_1.xww, all(var_1.zxz));
    return _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -u_input.a, 43197i, abs(u_input.a)), ~(~vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i) >> (min(firstTrailingBit(vec4<u32>(631u, var_2.x, var_2.x, 54944u)), ~vec4<u32>(15102u, 61049u, 4294967295u, var_2.x)) % vec4<u32>(32u))));
}

fn func_1(arg_0: f32, arg_1: i32) -> vec3<bool> {
    var var_0 = _wgslsmith_dot_vec4_i32(firstTrailingBit(func_4(func_2())), -(~((vec4<i32>(u_input.a, u_input.a, -1i, u_input.a) | vec4<i32>(-2031i, u_input.a, arg_1, u_input.a)) & -vec4<i32>(arg_1, -16875i, arg_1, -17629i))));
    var var_1 = ~vec2<u32>(25235u, 1u);
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(167f - -965f))))), abs(arg_1), Struct_1(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(927f, -2813f))))), select(vec3<bool>(select(false, all(vec2<bool>(false, true)), 0u >= var_1.x), var_1.x <= firstLeadingBit(4294967295u), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), vec3<bool>(true, false, false)), var_1.x != _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1.x, 41159u), vec3<u32>(var_1.x, var_1.x, 4294967295u))), u_input.a == ~20727i));
    var_0 = -_wgslsmith_add_i32(u_input.a, var_2.b) & -4015i;
    let var_3 = abs(firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(88014u, 6373u), ~vec2<u32>(39803u, var_1.x)))) >> (vec2<u32>(reverseBits(_wgslsmith_mod_u32(0u, 4294967295u) << (_wgslsmith_add_u32(var_1.x, 53455u) % 32u)), ~1u) % vec2<u32>(32u));
    return select(vec3<bool>(!(!any(var_2.d.yz)), var_2.d.x, all(select(select(vec3<bool>(true, false, var_2.d.x), vec3<bool>(var_2.d.x, var_2.d.x, var_2.d.x), var_2.d), select(vec3<bool>(true, var_2.d.x, var_2.d.x), var_2.d, vec3<bool>(true, false, true)), var_2.d.x))), !select(var_2.d, select(var_2.d, vec3<bool>(false, var_2.d.x, var_2.d.x), var_2.d.x & var_2.d.x), vec3<bool>(all(vec4<bool>(var_2.d.x, var_2.d.x, var_2.d.x, var_2.d.x)), var_2.d.x, var_2.d.x)), vec3<bool>(!(true || (var_3.x >= var_3.x)), true, select(!(var_2.d.x && var_2.d.x), true, all(var_2.d))));
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> vec4<u32> {
    global0 = array<Struct_2, 29>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.a + arg_2.a), arg_2.a, arg_1)) + 411f)));
    let var_1 = _wgslsmith_mod_u32(29340u, 18530u);
    global0 = array<Struct_2, 29>();
    var var_2 = global0[_wgslsmith_index_u32(var_1, 29u)];
    return _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 52047u, firstTrailingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4896u, 0u, 4294967295u), vec3<u32>(arg_0, var_1, arg_0)), vec3<u32>(38907u, var_1, arg_0))), (firstLeadingBit(26545u) & arg_0) & _wgslsmith_mult_u32(_wgslsmith_div_u32(var_1, 12117u), arg_0)), vec4<u32>(1u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_0, arg_0, arg_0), vec4<u32>(15546u, 4294967295u, 4294967295u, var_1)), ~arg_0), 0u, ~40547u) ^ _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1, var_1, arg_0, var_1), vec4<u32>(arg_0, 4294967295u, 0u, var_1)), vec4<u32>(var_1, var_1, 9090u, var_1)), select(vec4<u32>(var_1, var_1, var_1, 1u) & vec4<u32>(56629u, 2509u, arg_0, 37064u), vec4<u32>(1u, var_1, var_1, 1u), select(vec4<bool>(var_2.d.x, true, var_2.d.x, true), vec4<bool>(arg_1, true, true, var_2.d.x), false))));
}

fn func_6(arg_0: vec4<u32>) -> Struct_1 {
    global0 = array<Struct_2, 29>();
    let var_0 = firstTrailingBit(~max(~vec4<i32>(-75116i, 0i, -6986i, 10889i), vec4<i32>(1i, max(-1i, u_input.a), 37256i, -1664i)));
    var var_1 = global0[_wgslsmith_index_u32(31096u, 29u)];
    var_1 = global0[_wgslsmith_index_u32(106091u, 29u)];
    let var_2 = reverseBits(1i);
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(4294967295u, any(func_1(-759f, u_input.a)), func_2(), ~u_input.a >> ((abs(1u) ^ firstTrailingBit(3187u)) % 32u)));
    let var_1 = ~0i;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, var_0.a) * var_0.a), _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1221f) + -255f), -178f);
    let var_3 = func_2();
    let var_4 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(~18560u, 20286u), ~(~max(13719u, 25789u)), 1u, func_5(min(_wgslsmith_add_u32(75502u, 76006u), ~4294967295u), true, Struct_1(_wgslsmith_f_op_f32(abs(-605f))), -62732i).x), vec4<u32>(35878u, 16125u, 1u, ~reverseBits(~46923u)));
    global0 = array<Struct_2, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a) * var_0.a), var_3.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(782f, var_2.x, true))))), vec3<f32>(_wgslsmith_f_op_f32(-var_3.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.a + var_2.x), var_2.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_3.a)))), !vec3<bool>(true, false, var_4 > var_4))), vec3<f32>(145f, -200f, var_0.a), ~firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(44109u, 95543u), vec2<u32>(var_4, var_4), vec2<u32>(0u, 70896u))) | ~vec2<u32>(~var_4, var_4));
}

