struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec4<bool>,
    c: bool,
}

struct Struct_5 {
    a: vec2<f32>,
    b: i32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    let var_0 = abs(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(abs(arg_0.x), 1u << (arg_0.x % 32u)), arg_0.x << (arg_0.x % 32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.x, max(arg_0.x, arg_0.x)), _wgslsmith_clamp_vec2_u32(arg_0, vec2<u32>(arg_0.x, 0u), arg_0) | (vec2<u32>(arg_0.x, 65719u) ^ arg_0))));
    var var_1 = Struct_1(29853i, 4294967295u, false);
    var var_2 = arg_0.x;
    var var_3 = vec3<bool>(false, var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1134f)))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f + -231f)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1975f))));
    var var_4 = Struct_1(_wgslsmith_add_i32(abs(var_1.a), abs(countOneBits(2147483647i ^ var_1.a))), 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-693f))))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(701f * 1002f))));
    return reverseBits(47508u << ((var_0 ^ _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, 5187u, var_0, arg_0.x), vec4<u32>(var_4.b, var_4.b, 20106u, var_1.b)), vec4<u32>(0u, var_1.b, var_0, var_1.b))) % 32u));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: bool) -> Struct_4 {
    var var_0 = Struct_1(1i, ~firstLeadingBit(_wgslsmith_sub_u32(~39346u, func_3(vec2<u32>(90261u, 0u)))), false);
    var var_1 = Struct_1(6182i, var_0.b, false);
    var_1 = Struct_1(var_0.a, ~1u, !(true && !select(var_0.c, true, false)));
    var var_2 = var_1.b;
    var var_3 = Struct_1(1i, 23096u << (((func_3(vec2<u32>(var_0.b, 0u)) & var_0.b) & (var_1.b | ~1u)) % 32u), !(!select(all(vec2<bool>(false, var_0.c)), any(vec2<bool>(true, var_1.c)), false)));
    return Struct_4(var_1.b, vec4<bool>(true, false, arg_2, var_3.c), ~_wgslsmith_clamp_u32(58749u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.b, var_1.b, var_1.b), vec3<u32>(var_0.b, 25354u, var_0.b)), 0u) <= ~1u);
}

fn func_4(arg_0: Struct_4) -> vec2<i32> {
    let var_0 = abs(_wgslsmith_add_vec4_u32(~vec4<u32>(arg_0.a, 1u, 1u, 87625u) & ((vec4<u32>(18834u, arg_0.a, arg_0.a, arg_0.a) ^ vec4<u32>(36158u, arg_0.a, 52946u, arg_0.a)) << (countOneBits(vec4<u32>(arg_0.a, 0u, arg_0.a, 1u)) % vec4<u32>(32u))), countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.a, arg_0.a, 4294967295u, 59713u) | vec4<u32>(arg_0.a, 13744u, 19189u, 879u), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.a, arg_0.a, 4294967295u, 0u), vec4<u32>(arg_0.a, 5173u, arg_0.a, 8439u))))));
    var var_1 = Struct_4(_wgslsmith_sub_u32(4294967295u & arg_0.a, 4294967295u), arg_0.b, false);
    var var_2 = _wgslsmith_div_i32(~u_input.a.x, i32(-1i) * -(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x) | select(-2285i, -43675i, var_1.c)));
    var var_3 = countOneBits(select(u_input.a.yy, -reverseBits(vec2<i32>(u_input.a.x, 2147483647i)), select(true, arg_0.b.x, !arg_0.b.x)));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(448f))));
    return firstTrailingBit(vec2<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_3.x, 0i), _wgslsmith_div_vec2_i32(vec2<i32>(1i, u_input.a.x), vec2<i32>(u_input.a.x, -33479i))), -(~vec2<i32>(u_input.a.x, u_input.a.x)))));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_3) -> bool {
    var var_0 = Struct_5(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.b, _wgslsmith_f_op_f32(-arg_1.a.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1.a.b, arg_1.a.b)))))), _wgslsmith_dot_vec2_i32(func_4(func_2(true, u_input.a.x, arg_1.b.c)), _wgslsmith_mod_vec2_i32(u_input.a.ww, _wgslsmith_mod_vec2_i32(~u_input.a.xz, ~vec2<i32>(-23953i, -2147483647i)))), arg_0.xz);
    let var_1 = abs(min(select(vec4<i32>(_wgslsmith_div_i32(20995i, 15994i), ~arg_1.b.a, _wgslsmith_clamp_i32(u_input.a.x, 20362i, var_0.b), -1i), reverseBits(u_input.a), false), reverseBits(-(u_input.a | u_input.a))));
    var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_0.a))), _wgslsmith_sub_i32(countOneBits(arg_1.b.a) << ((var_0.c.x & arg_1.a.a) % 32u), u_input.a.x) | ~53157i, firstTrailingBit(~(~(~vec2<u32>(arg_1.b.b, var_0.c.x)))));
    var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1020f, _wgslsmith_f_op_f32(-arg_1.a.b)))), _wgslsmith_mult_i32(-var_0.b, _wgslsmith_mult_i32(~(-9817i), ~min(-1i, 13115i))), var_0.c);
    return all(select(!vec4<bool>(855f <= arg_1.a.b, arg_1.b.c, arg_1.b.c, arg_1.b.c), !(!vec4<bool>(arg_1.b.c, arg_1.b.c, arg_1.b.c, false)), !(!(!vec4<bool>(false, arg_1.b.c, arg_1.b.c, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(~(~0u), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(true, true)), true, all(vec4<bool>(true, false, false, false)), true), true || func_1(vec4<u32>(44605u, 0u, 65383u, 33822u), Struct_3(Struct_2(48760u, -1000f), Struct_1(-4167i, 0u, false)))), select(func_2(func_1(vec4<u32>(28481u, 13773u, 28404u, 1u), Struct_3(Struct_2(1u, -2009f), Struct_1(0i, 1u, true))), 1i, any(vec3<bool>(false, false, true))).b, vec4<bool>(true, true, true, true), func_2(true, 40142i, true).b)), true);
    let var_1 = Struct_3(Struct_2(~var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(126f, 1731f, true)) - _wgslsmith_f_op_f32(ceil(172f))) + -495f)), Struct_1(min(u_input.a.x, max(select(5616i, u_input.a.x, var_0.c), u_input.a.x & u_input.a.x)), var_0.a, var_0.b.x));
    var_0 = func_2(var_0.c, u_input.a.x, var_1.b.c);
    var var_2 = var_1.a.b;
    var_0 = Struct_4(~((~4294967295u >> (_wgslsmith_add_u32(1u, 1u) % 32u)) >> (_wgslsmith_mod_u32(var_1.b.b, ~var_1.b.b) % 32u)), select(select(vec4<bool>(true, true | var_1.b.c, true | var_0.c, func_2(var_1.b.c, 22693i, true).c), var_0.b, !(!vec4<bool>(true, true, var_1.b.c, true))), var_0.b, var_0.b), (64301u | ~(1u ^ var_0.a)) != max(var_0.a, countOneBits(~var_1.b.b)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(min(~vec3<u32>(var_1.b.b, 20751u, 11564u), select(vec3<u32>(var_1.b.b, var_0.a, var_0.a), vec3<u32>(0u, var_1.a.a, 1u), var_1.b.c))) >> (vec3<u32>(var_1.b.b, 0u, var_0.a) % vec3<u32>(32u)), max(~(-10408i), var_1.b.a));
}

