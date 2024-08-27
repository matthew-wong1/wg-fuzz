struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: bool,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
    c: vec3<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 19> = array<Struct_4, 19>(Struct_4(vec2<i32>(-12300i, 81844i), false, vec3<bool>(true, false, true)), Struct_4(vec2<i32>(i32(-2147483648), 17697i), false, vec3<bool>(false, true, false)), Struct_4(vec2<i32>(35562i, -1i), true, vec3<bool>(false, true, true)), Struct_4(vec2<i32>(1i, -7362i), true, vec3<bool>(true, false, false)), Struct_4(vec2<i32>(-1i, -12216i), false, vec3<bool>(true, true, false)), Struct_4(vec2<i32>(-3597i, i32(-2147483648)), true, vec3<bool>(true, true, true)), Struct_4(vec2<i32>(10671i, -16539i), true, vec3<bool>(true, true, false)), Struct_4(vec2<i32>(1i, -61910i), true, vec3<bool>(false, true, true)), Struct_4(vec2<i32>(-5606i, 1i), false, vec3<bool>(true, true, false)), Struct_4(vec2<i32>(2147483647i, -1i), true, vec3<bool>(false, false, false)), Struct_4(vec2<i32>(-3251i, 1i), false, vec3<bool>(false, true, false)), Struct_4(vec2<i32>(34302i, 30220i), true, vec3<bool>(false, true, true)), Struct_4(vec2<i32>(i32(-2147483648), -28563i), true, vec3<bool>(false, false, true)), Struct_4(vec2<i32>(-1i, 1i), false, vec3<bool>(false, false, true)), Struct_4(vec2<i32>(-12466i, 281i), false, vec3<bool>(true, true, true)), Struct_4(vec2<i32>(-36463i, 1i), true, vec3<bool>(true, true, true)), Struct_4(vec2<i32>(-1i, -2745i), false, vec3<bool>(true, true, false)), Struct_4(vec2<i32>(2147483647i, i32(-2147483648)), false, vec3<bool>(true, false, false)), Struct_4(vec2<i32>(-28802i, -59016i), true, vec3<bool>(false, true, false)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec4<f32> {
    global0 = array<Struct_4, 19>();
    let var_0 = vec2<i32>(69254i, select(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, -2147483647i), _wgslsmith_mult_vec2_i32(u_input.c, vec2<i32>(1i, -1i))), _wgslsmith_sub_vec2_i32(u_input.b, min(vec2<i32>(u_input.d, u_input.b.x), vec2<i32>(u_input.c.x, -7962i)))), 2147483647i, true));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(158f + 1f));
    var var_2 = ~max((reverseBits(vec3<i32>(-1i, u_input.b.x, 1i)) >> (vec3<u32>(35054u, 37618u, 10216u) % vec3<u32>(32u))) >> (vec3<u32>(~1u, select(u_input.a, 22622u, true), 1u) % vec3<u32>(32u)), select(vec3<i32>(u_input.b.x, var_0.x, var_0.x), -vec3<i32>(u_input.d, var_0.x, -9667i), true) << (~(~vec3<u32>(u_input.a, u_input.a, 43539u)) % vec3<u32>(32u)));
    var var_3 = Struct_5(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-586f, 841f, -698f, -259f), vec4<f32>(1000f, 653f, 913f, 1119f)))), _wgslsmith_mod_u32(~u_input.a, reverseBits(u_input.a)) | 0u, false, vec2<i32>(~u_input.b.x, var_2.x), false), global0[_wgslsmith_index_u32(select(~4294967295u, 4294967295u, true), 19u)], Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(308f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-196f, -330f, false))), 209f, -1699f), u_input.a, true, vec2<i32>(-37351i, i32(-1i) * -var_0.x), false));
    return _wgslsmith_f_op_vec4_f32(var_3.a.a - _wgslsmith_f_op_vec4_f32(select(var_3.c.a, var_3.c.a, any(!select(vec3<bool>(true, var_3.c.e, var_3.c.e), var_3.b.c, var_3.c.c)))));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: i32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(sign(730f));
    let var_1 = Struct_5(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - var_0)), _wgslsmith_f_op_f32(-arg_0.b.a), var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.x)) * arg_1.x)), _wgslsmith_add_u32(u_input.a, 4294967295u), select(-2035f < _wgslsmith_f_op_f32(var_0 - arg_0.b.a), true, select(u_input.d >= arg_0.b.c.x, false, true)), -_wgslsmith_mult_vec2_i32(arg_0.b.c, vec2<i32>(arg_0.b.b.d.x, -1794i)), any(!vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.b.b.c))), global0[_wgslsmith_index_u32(u_input.a, 19u)], Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1128f, 584f, arg_0.b.b.a.x, -2463f))) - _wgslsmith_f_op_vec4_f32(func_3())) * arg_0.b.b.a), arg_0.b.b.b, any(select(select(vec3<bool>(arg_0.b.b.e, true, arg_0.a.x), arg_0.a, arg_0.a), select(arg_0.a, vec3<bool>(true, true, arg_0.b.b.e), vec3<bool>(arg_0.b.b.e, arg_0.a.x, false)), false)), arg_0.b.c, all(vec4<bool>(!arg_0.b.b.c, any(vec2<bool>(arg_0.b.b.c, arg_0.b.b.e)), !arg_0.b.b.c, any(vec3<bool>(true, true, arg_0.b.b.e))))));
    let var_2 = vec3<bool>((true != any(select(arg_0.a, var_1.b.c, arg_0.a))) || all(select(arg_0.a.xx, arg_0.a.zy, true)), true, var_1.a.e);
    var var_3 = Struct_3(select(select(select(arg_0.a, var_2, !var_1.b.c), !select(vec3<bool>(var_2.x, var_1.c.e, true), vec3<bool>(var_2.x, var_2.x, false), arg_0.b.b.c), all(select(vec4<bool>(true, false, false, arg_0.b.b.c), vec4<bool>(true, var_1.c.c, var_2.x, arg_0.a.x), vec4<bool>(arg_0.a.x, false, true, false)))), select(select(select(arg_0.a, vec3<bool>(arg_0.b.b.c, false, arg_0.b.b.e), arg_0.a), vec3<bool>(true, arg_0.a.x, false), false), !var_2, select(select(arg_0.a, var_2, vec3<bool>(false, var_2.x, var_1.b.b)), vec3<bool>(var_1.c.c, var_2.x, false), !vec3<bool>(true, true, arg_0.a.x))), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(4294967295u, 4294967295u, var_1.a.b)), vec3<u32>(u_input.a, var_1.c.b, 37863u)) > 17773u), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.x * var_1.a.a.x)))), arg_0.b.b, _wgslsmith_div_vec2_i32(vec2<i32>(-32051i, arg_2) & _wgslsmith_mult_vec2_i32(var_1.b.a, vec2<i32>(-5742i, var_1.c.d.x)), vec2<i32>(_wgslsmith_clamp_i32(var_1.b.a.x, 1i, arg_0.b.b.d.x), _wgslsmith_clamp_i32(var_1.b.a.x, arg_2, u_input.b.x)))));
    var var_4 = ~(arg_2 | 0i);
    return var_3.a.x;
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_4, arg_3: vec2<f32>) -> vec3<f32> {
    let var_0 = vec3<u32>(0u, 14862u, countOneBits(reverseBits(31521u)));
    global0 = array<Struct_4, 19>();
    let var_1 = vec3<u32>(31467u, 1u, _wgslsmith_dot_vec2_u32(~(~var_0.zy), var_0.zy) ^ 4294967295u);
    global0 = array<Struct_4, 19>();
    var var_2 = any(select(arg_2.c, select(select(arg_2.c, arg_2.c, false), vec3<bool>(arg_2.c.x, true, arg_2.c.x), !vec3<bool>(arg_2.b, false, true)), _wgslsmith_f_op_f32(round(-203f)) != _wgslsmith_f_op_f32(-arg_3.x))) != (_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_3.x, arg_3.x)), _wgslsmith_f_op_f32(arg_3.x - arg_3.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x - -662f))) <= -740f);
    return vec3<f32>(arg_3.x, arg_3.x, arg_3.x);
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_4(~u_input.a, ~_wgslsmith_add_u32(0u, 4294967295u), Struct_4(u_input.b, func_2(Struct_3(vec3<bool>(true, false, true), Struct_2(-897f, Struct_1(vec4<f32>(779f, 1758f, -1110f, 926f), 24868u, true, u_input.c, true), u_input.b)), vec2<f32>(739f, -1116f), 0i), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-760f, 1000f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-210f, 835f), vec2<f32>(2459f, 151f))))))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-688f, -331f, 133f), vec3<f32>(-1003f, 729f, 1059f)) * vec3<f32>(_wgslsmith_f_op_f32(trunc(-1253f)), -1000f, 1688f)))));
    var var_1 = vec2<bool>(true, !any(vec4<bool>(true, true, var_0.x > 1026f, true)));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-302f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1089f))))) < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2413f, 521f))) * _wgslsmith_div_f32(var_0.x, -285f))));
    var_2 = var_1.x;
    var var_3 = vec3<bool>(!(!any(vec2<bool>(var_1.x, var_1.x))), ~_wgslsmith_div_u32(u_input.a, ~u_input.a) <= ~u_input.a, true);
    return _wgslsmith_mod_u32(_wgslsmith_add_u32(countOneBits(u_input.a | firstTrailingBit(u_input.a)), _wgslsmith_clamp_u32(~reverseBits(u_input.a), u_input.a, ~u_input.a << (1u % 32u))), ~u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 19>();
    let var_0 = !all(vec4<bool>(true, select(any(vec3<bool>(false, true, false)), any(vec3<bool>(true, true, false)), true), all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true))), ~u_input.a != func_1()));
    let var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(103160u, u_input.a), 35625u) >> (~abs(vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)), ~select(~vec2<u32>(1u, 0u), abs(vec2<u32>(u_input.a, 72952u)), true)) > ~(select(u_input.a, u_input.a, var_0) << (27512u % 32u));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(func_3()), u_input.a, var_1, u_input.c, any(vec3<bool>(true, any(vec2<bool>(true, true)), select(true, !var_1, 2147483647i >= u_input.c.x))));
    global0 = array<Struct_4, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-393f, var_2.a.x), var_2.a.wx)))))));
}

