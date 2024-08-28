struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: i32,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: f32,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: i32,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(true, true, true));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    global0 = Struct_1(select(select(!global0.a, global0.a, true), vec3<bool>(!all(vec3<bool>(global0.a.x, true, global0.a.x)), true, true), false));
    let var_0 = Struct_3(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, 47841u, 29817u, 8749u)) | firstTrailingBit(vec4<u32>(0u, 52504u, 4294967295u, 4294967295u)), vec4<u32>(4294967295u, _wgslsmith_add_u32(1u, ~4294967295u), 1u, _wgslsmith_clamp_u32(399u, 0u, 0u) & 48806u)), select(select(vec4<bool>(true || global0.a.x, !global0.a.x, !global0.a.x, any(vec4<bool>(false, global0.a.x, true, true))), !vec4<bool>(false, true, global0.a.x, global0.a.x), true), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(global0.a.x, false, true, true), global0.a.x), true), !vec4<bool>(global0.a.x && global0.a.x, !global0.a.x, !global0.a.x, false)), -1861f);
    var var_1 = u_input.b;
    global0 = Struct_1(select(select(!vec3<bool>(global0.a.x, global0.a.x, global0.a.x), !select(global0.a, vec3<bool>(true, false, false), vec3<bool>(true, var_0.b.x, var_0.b.x)), !vec3<bool>(false, global0.a.x, global0.a.x)), !select(!global0.a, vec3<bool>(global0.a.x, false, true), var_0.b.x), any(global0.a)));
    let var_2 = !all(select(var_0.b, var_0.b, true || select(false, false, global0.a.x)));
    return _wgslsmith_add_i32(u_input.a & _wgslsmith_add_i32(u_input.a, u_input.c), u_input.b);
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = vec4<i32>(arg_0, -2147483647i, min(func_3(), func_3() >> (0u % 32u)) & ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 691i, u_input.b), countOneBits(vec3<i32>(arg_0, 17845i, arg_0))), _wgslsmith_dot_vec4_i32(firstLeadingBit(abs(vec4<i32>(u_input.a, u_input.a, arg_0, 1364i))) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 0u, 15468u, 25120u), ~vec4<u32>(1u, 4294967295u, 6952u, 0u), vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)), vec4<i32>(-(~u_input.c), 0i, u_input.b, u_input.a)));
    global0 = Struct_1(vec3<bool>(all(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), global0.a.x)), select(true, global0.a.x, true), true));
    var_0 = vec4<i32>(_wgslsmith_dot_vec3_i32(var_0.wxx, -min(-var_0.zzx, _wgslsmith_clamp_vec3_i32(var_0.yxx, var_0.zzx, vec3<i32>(-2147483647i, 1i, -2319i)))), -29030i, -select(abs(24919i | u_input.b), -1i, global0.a.x), u_input.a);
    let var_1 = _wgslsmith_sub_i32(var_0.x, ~(-max(~2147483647i, _wgslsmith_mod_i32(var_0.x, var_0.x))));
    let var_2 = Struct_3(39195u, !select(select(!vec4<bool>(global0.a.x, true, global0.a.x, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, global0.a.x, global0.a.x), global0.a.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -945f)))))));
    return Struct_2(var_2.b.x, !global0.a, ~(var_1 << (((var_2.a | var_2.a) >> (37235u % 32u)) % 32u)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool) -> Struct_4 {
    var var_0 = Struct_3(0u, arg_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(299f - _wgslsmith_f_op_f32(min(arg_1.c, arg_1.c))) + _wgslsmith_f_op_f32(min(arg_1.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.c)))))));
    let var_1 = Struct_3(_wgslsmith_clamp_u32(1u, arg_1.a, arg_1.a) & ~89652u, !(!(!select(arg_1.b, var_0.b, vec4<bool>(false, arg_1.b.x, arg_2, true)))), arg_1.c);
    var var_2 = vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.c, -arg_0.c, ~0i, _wgslsmith_mod_i32(u_input.a, 11604i)), reverseBits(reverseBits(vec4<i32>(-2147483647i, arg_0.c, 1i, -2147483647i))));
    var var_3 = func_2(u_input.c);
    let var_4 = 1i;
    return Struct_4(true, var_0.a, var_4 >> (_wgslsmith_mod_u32(78475u, var_1.a) % 32u), func_2(var_4), ~(~(~arg_1.a)));
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: f32, arg_3: vec4<i32>) -> i32 {
    let var_0 = any(!(!select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), select(arg_1, vec3<bool>(true, true, arg_1.x), false), arg_1.x)));
    var var_1 = Struct_3(_wgslsmith_dot_vec3_u32((vec3<u32>(1u, 1u, 1u) >> (~vec3<u32>(arg_0, arg_0, arg_0) % vec3<u32>(32u))) | ~(vec3<u32>(20210u, arg_0, 1742u) | vec3<u32>(arg_0, 1u, arg_0)), ~countOneBits(vec3<u32>(1u, arg_0, arg_0)) >> (vec3<u32>(arg_0, ~30832u, abs(21182u)) % vec3<u32>(32u))), select(vec4<bool>(arg_1.x, all(vec2<bool>(true, false)), var_0, !var_0), select(vec4<bool>(true, true, true, true), vec4<bool>(any(global0.a.zz), var_0 == global0.a.x, true, any(global0.a)), true), vec4<bool>(any(!arg_1), false, arg_2 <= -1452f, true)), arg_2);
    var var_2 = -1i;
    let var_3 = u_input.c;
    var var_4 = func_4(func_2(arg_3.x), Struct_3(3140u, var_1.b, var_1.c), !(var_1.b.x != all(select(global0.a.yz, vec2<bool>(arg_1.x, var_1.b.x), vec2<bool>(false, false)))));
    return var_4.d.c;
}

fn func_5(arg_0: i32) -> vec3<u32> {
    let var_0 = _wgslsmith_sub_vec2_u32(~vec2<u32>(28396u, 0u), ~abs(vec2<u32>(~1u, 4294967295u)));
    var var_1 = 58596u;
    let var_2 = Struct_1(func_2(max(~firstTrailingBit(u_input.b), 26678i)).b);
    global0 = var_2;
    var_1 = var_0.x;
    return firstLeadingBit(~vec3<u32>(var_0.x, ~1u, 42693u & var_0.x));
}

fn func_6(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec2_u32(min(abs(max(~arg_0.zy, ~vec2<u32>(arg_0.x, arg_2.x))), ~arg_0.yz), reverseBits(min(vec2<u32>(~20778u, ~arg_2.x), ~arg_0.zy & reverseBits(vec2<u32>(arg_0.x, arg_2.x)))));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * -564f) + arg_1.x), -2189f));
    var_0 = arg_0.x;
    var_1 = -270f;
    var_0 = arg_2.x;
    return Struct_1(select(vec3<bool>(true, !(1u > arg_2.x), all(vec3<bool>(true, global0.a.x, global0.a.x))), global0.a, global0.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(~func_5(func_1(_wgslsmith_clamp_u32(1u, 68055u, 35018u), global0.a, _wgslsmith_f_op_f32(f32(-1f) * -473f), _wgslsmith_div_vec4_i32(vec4<i32>(-5836i, 2147483647i, u_input.c, 0i), vec4<i32>(30653i, 27934i, u_input.c, u_input.b)))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-590f + -563f), _wgslsmith_f_op_f32(floor(-754f)))))), -552f, _wgslsmith_f_op_f32(411f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1542f))))), 1240f), vec2<u32>(0u, abs(~1u)) << (~vec2<u32>(31736u, func_4(Struct_2(false, vec3<bool>(false, true, true), -2147483647i), Struct_3(26890u, vec4<bool>(global0.a.x, global0.a.x, true, true), 1238f), true).e) % vec2<u32>(32u)));
    global0 = Struct_1(!vec3<bool>(global0.a.x || global0.a.x, global0.a.x, global0.a.x));
    global0 = func_6(~(~vec3<u32>(func_5(1i).x, abs(0u), 1u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(907f, 1116f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-190f, 1391f), -497f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1125f, -1000f)) - _wgslsmith_f_op_f32(-675f + -1352f))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(368f, 1000f, 1487f, 230f), vec4<f32>(-626f, 552f, 621f, 117f)))))), ~vec2<u32>(1u, 1u));
    global0 = Struct_1(vec3<bool>(true, any(select(vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global0.a.x), vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global0.a.x), vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global0.a.x))) || func_6(vec3<u32>(0u, 17649u, 14654u), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-678f, -250f, -1000f, 2830f))), ~vec2<u32>(0u, 0u)).a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1714f + 546f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1051f)))));
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(269f, -209f))) * _wgslsmith_f_op_f32(max(726f, _wgslsmith_div_f32(1982f, 234f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(244f + -1149f)) * 1f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1264f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(901f + 213f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(u_input.c, min(2147483647i, i32(-1i) * -1i)), vec3<u32>(1u, 1u, 1u), 1u);
}

