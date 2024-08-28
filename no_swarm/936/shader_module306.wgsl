struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 11> = array<vec3<f32>, 11>(vec3<f32>(134f, 985f, -630f), vec3<f32>(-1254f, 1000f, 1405f), vec3<f32>(-160f, -1043f, -964f), vec3<f32>(-1811f, 658f, 428f), vec3<f32>(-870f, -125f, -1000f), vec3<f32>(1621f, 792f, 453f), vec3<f32>(-220f, 2450f, -855f), vec3<f32>(345f, 386f, -314f), vec3<f32>(206f, -422f, 1302f), vec3<f32>(-750f, 1422f, -251f), vec3<f32>(658f, -484f, -406f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> vec3<u32> {
    let var_0 = _wgslsmith_sub_u32(u_input.b.x, firstLeadingBit(~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 53507u, u_input.b.x, u_input.b.x), vec4<u32>(4294967295u, 1u, u_input.b.x, 0u)), ~vec4<u32>(u_input.b.x, 30482u, 0u, 13708u))));
    global0 = array<vec3<f32>, 11>();
    global0 = array<vec3<f32>, 11>();
    let var_1 = 1i;
    global0 = array<vec3<f32>, 11>();
    return u_input.b >> (_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(var_0, var_0, 0u)), ~reverseBits(vec3<u32>(49303u, var_0, 62296u))), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, 4294967295u), var_0), abs(46240u), _wgslsmith_sub_u32(29351u & var_0, ~24175u))) % vec3<u32>(32u));
}

fn func_2() -> Struct_2 {
    global0 = array<vec3<f32>, 11>();
    global0 = array<vec3<f32>, 11>();
    let var_0 = !(!vec4<bool>(true, any(vec3<bool>(false, true, true)) & true, any(vec2<bool>(true, true)), any(vec2<bool>(true, true))));
    global0 = array<vec3<f32>, 11>();
    let var_1 = 1434f;
    return Struct_2(countOneBits(~vec2<u32>(7188u, 4560u)) | ~reverseBits(vec2<u32>(u_input.b.x, u_input.b.x)), Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(var_1 * -630f), 1000f))), func_3(any(vec4<bool>(false, true, true, var_0.x))), var_0.ww, vec3<u32>(u_input.b.x, 92955u, _wgslsmith_mult_u32(4294967295u, u_input.b.x)), 13646i), vec2<u32>(22791u, 44734u), Struct_1(vec2<f32>(-1852f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -587f) - _wgslsmith_f_op_f32(var_1 * var_1))), ~u_input.b, !select(!vec2<bool>(false, var_0.x), select(var_0.ww, vec2<bool>(var_0.x, var_0.x), false), select(var_0.wy, var_0.wy, true)), u_input.b, u_input.c));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>) -> Struct_1 {
    global0 = array<vec3<f32>, 11>();
    var var_0 = select(vec4<bool>(false, func_2().d.c.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(4225u, u_input.b.x), arg_0.a) <= ~u_input.b.x, false), select(select(select(select(vec4<bool>(arg_0.d.c.x, false, false, arg_0.d.c.x), vec4<bool>(arg_0.d.c.x, arg_0.d.c.x, arg_0.b.c.x, true), vec4<bool>(false, true, false, arg_0.b.c.x)), vec4<bool>(false, false, false, arg_0.b.c.x), vec4<bool>(arg_0.b.c.x, true, true, false)), !(!vec4<bool>(false, arg_0.d.c.x, arg_0.b.c.x, arg_0.b.c.x)), select(!vec4<bool>(false, true, arg_0.b.c.x, true), vec4<bool>(true, true, true, arg_0.b.c.x), any(vec4<bool>(true, false, arg_0.b.c.x, false)))), !(!(!vec4<bool>(arg_0.b.c.x, arg_0.d.c.x, arg_0.b.c.x, true))), true), !select(!(!vec4<bool>(arg_0.d.c.x, arg_0.b.c.x, arg_0.d.c.x, true)), vec4<bool>(arg_0.d.c.x, arg_0.d.c.x, arg_0.d.c.x, true), !vec4<bool>(false, true, arg_0.d.c.x, false)));
    var var_1 = select(!select(vec3<bool>(all(vec3<bool>(arg_0.d.c.x, false, arg_0.b.c.x)), any(vec2<bool>(true, true)), var_0.x && true), vec3<bool>(any(arg_0.d.c), any(vec4<bool>(false, true, false, false)), true), vec3<bool>(var_0.x & var_0.x, var_0.x, true)), select(!var_0.wyz, vec3<bool>(arg_0.d.c.x, all(vec2<bool>(true, arg_0.d.c.x)), var_0.x), !(!vec3<bool>(true, arg_0.b.c.x, true))), true);
    var var_2 = func_2().d;
    var var_3 = ~_wgslsmith_mod_i32(arg_0.b.e, 23693i);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-var_2.a), max(firstTrailingBit(vec3<u32>(4294967295u & u_input.b.x, ~71730u, _wgslsmith_dot_vec4_u32(vec4<u32>(58176u, arg_0.c.x, u_input.b.x, 0u), vec4<u32>(0u, 1u, 1u, 0u)))), vec3<u32>(abs(var_2.b.x), _wgslsmith_clamp_u32(49893u | u_input.b.x, _wgslsmith_div_u32(arg_0.a.x, var_2.b.x), _wgslsmith_add_u32(var_2.d.x, 3062u)), 85384u)), vec2<bool>(any(!(!var_0.wyw)), var_0.x), u_input.b, -62074i);
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2423f + 220f))), _wgslsmith_f_op_f32(trunc(arg_2.b.a.x)))));
    var var_1 = func_4(func_2(), vec3<u32>(u_input.b.x, arg_2.c.x, ~71965u));
    let var_2 = _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-330f)) + _wgslsmith_f_op_f32(-462f + arg_1)), _wgslsmith_f_op_f32(-func_2().b.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -461f))));
    var var_3 = 21516i;
    var_1 = Struct_1(arg_2.b.a, ~(~arg_2.d.b), func_4(func_2(), vec3<u32>(_wgslsmith_add_u32(4294967295u, var_1.d.x), u_input.b.x, arg_2.c.x)).c, ~var_1.b, _wgslsmith_sub_i32(-1i, abs(_wgslsmith_mod_i32(u_input.c, -1i))));
    return Struct_3(arg_2, var_1.a, Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_1.a))), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, var_1.d.x, 0u), select(vec3<u32>(10503u, 0u, u_input.b.x), vec3<u32>(1u, 12176u, 43374u), vec3<bool>(false, arg_0, var_1.c.x))), vec3<u32>(80652u, func_4(Struct_2(var_1.b.xz, arg_2.d, var_1.d.zx, Struct_1(arg_2.d.a, var_1.d, var_1.c, vec3<u32>(arg_2.a.x, 1u, 1u), -1i)), arg_2.b.d).b.x, u_input.b.x)), arg_2.d.c, _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(38337u, u_input.b.x), 1u, _wgslsmith_sub_u32(var_1.d.x, 15114u)), func_2().d.b), -1i), vec4<f32>(207f, 486f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1000f)))), 527f));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_3) -> vec2<f32> {
    global0 = array<vec3<f32>, 11>();
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.d.x)) + _wgslsmith_f_op_f32(-arg_2.a.b.a.x))), arg_1.b.x, arg_1.b.x) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d.x * arg_1.c.a.x) + arg_1.b.x), _wgslsmith_f_op_f32(round(arg_2.a.d.a.x)), arg_1.c.a.x));
    var var_1 = arg_1.a;
    var_1 = arg_1.a;
    global0 = array<vec3<f32>, 11>();
    return _wgslsmith_f_op_vec2_f32(sign(var_0.xx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-55405i);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_5(vec3<i32>(u_input.e, var_0, var_0) >> (vec3<u32>(32617u, 0u, 4294967295u) % vec3<u32>(32u)), Struct_3(Struct_2(vec2<u32>(u_input.b.x, u_input.b.x), Struct_1(vec2<f32>(971f, 790f), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec2<bool>(true, false), vec3<u32>(u_input.b.x, u_input.b.x, 17580u), var_0), vec2<u32>(u_input.b.x, u_input.b.x), Struct_1(vec2<f32>(-580f, 481f), vec3<u32>(20657u, 1u, u_input.b.x), vec2<bool>(false, false), vec3<u32>(112342u, u_input.b.x, 4294967295u), -1i)), vec2<f32>(-1940f, -1327f), Struct_1(vec2<f32>(-1064f, -1000f), vec3<u32>(u_input.b.x, 3631u, u_input.b.x), vec2<bool>(true, true), u_input.b, -13811i), vec4<f32>(1369f, 1905f, 371f, -598f)), func_1(false, -901f, Struct_2(u_input.b.zx, Struct_1(vec2<f32>(-959f, -588f), u_input.b, vec2<bool>(false, true), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.d.x), u_input.b.xx, Struct_1(vec2<f32>(-762f, 730f), vec3<u32>(0u, u_input.b.x, 10494u), vec2<bool>(false, false), u_input.b, -21122i))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-768f, -290f) - vec2<f32>(1623f, 757f)))))), ~(~u_input.b), vec2<bool>(false || ((-1533i << (u_input.b.x % 32u)) >= u_input.c), any(vec4<bool>(true, true, true, true))), select(~firstLeadingBit(vec3<u32>(u_input.b.x, 14519u, 6030u) | vec3<u32>(53502u, u_input.b.x, u_input.b.x)), func_4(func_2(), ~u_input.b).d, vec3<bool>(true, !all(vec3<bool>(true, false, false)), true)), reverseBits(~u_input.a));
    var var_2 = func_1(all(!(!vec4<bool>(var_1.c.x, true, var_1.c.x, false))) && ((var_1.e ^ select(var_1.e, -28522i, true)) >= select(1i, ~23046i, var_1.c.x & true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1001f), 1000f, !func_4(func_1(var_1.c.x, 1000f, Struct_2(vec2<u32>(0u, var_1.b.x), Struct_1(var_1.a, u_input.b, vec2<bool>(false, var_1.c.x), vec3<u32>(var_1.d.x, 13741u, 82937u), var_0), vec2<u32>(u_input.b.x, 4294967295u), var_1)).a, _wgslsmith_mod_vec3_u32(var_1.d, vec3<u32>(var_1.b.x, 80318u, u_input.b.x))).c.x)), Struct_2(~max(countOneBits(vec2<u32>(u_input.b.x, var_1.b.x)), firstTrailingBit(vec2<u32>(33570u, 1u))), var_1, firstTrailingBit(~vec2<u32>(var_1.d.x, var_1.d.x)) & ~_wgslsmith_mult_vec2_u32(u_input.b.zz, vec2<u32>(var_1.d.x, var_1.b.x)), var_1));
    let var_3 = _wgslsmith_f_op_vec4_f32(floor(var_2.d));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(~51962i, 1i)), min(var_2.c.d.xx, _wgslsmith_mult_vec2_u32(var_1.b.xy, ~_wgslsmith_mult_vec2_u32(vec2<u32>(3482u, u_input.b.x), vec2<u32>(var_2.a.c.x, var_2.a.d.b.x)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(var_2.d.wzx)))));
}

