struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: Struct_2,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-114f, 1000f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec3<i32>, arg_3: vec2<u32>) -> f32 {
    var var_0 = max(arg_0.d.x, arg_0.a);
    var_0 = arg_0.d.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, arg_1, global0.x)))));
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), var_1.x)), global0.x) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(var_1.x + -993f), _wgslsmith_f_op_f32(arg_0.b.x * 272f)))))));
    let var_2 = ~vec4<u32>(~(~arg_3.x) & ~1u, arg_0.c.x, ~select(arg_0.c.x & u_input.a.x, u_input.a.x & arg_0.c.x, false), 42067u);
    return 757f;
}

fn func_2(arg_0: f32) -> bool {
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-686f)))), arg_0));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1061f * 710f) - _wgslsmith_f_op_f32(arg_0 + -288f)))), _wgslsmith_div_f32(-266f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0.x)), -597f) - 1576f)));
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(3383i, vec2<f32>(-298f, global0.x), vec3<u32>(u_input.a.x, 0u, u_input.a.x), vec4<i32>(2147483647i, 27016i, 65645i, 20879i)), 124f, -vec3<i32>(-2686i, 2147483647i, 2147483647i), vec2<u32>(0u, 1u))))), -1225f);
    global0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1228f), -110f), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1323f, -641f)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1958f, arg_0), vec2<f32>(-1079f, arg_0)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, arg_0) * vec2<f32>(-708f, global0.x)), vec2<f32>(-1028f, -1164f))))), any(vec2<bool>(u_input.a.x != max(23547u, u_input.a.x), true))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), -1267f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-190f, arg_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1363f, global0.x) - vec2<f32>(414f, global0.x)))), _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), vec2<f32>(arg_0, global0.x))) - vec2<f32>(2177f, _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(func_3(Struct_1(0i, vec2<f32>(global0.x, 629f), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-15850i, 2359i, 2147483647i, -2147483647i)), global0.x, vec3<i32>(-1i, 17065i, -10241i), u_input.a)))))));
    return any(select(vec4<bool>(false, all(vec2<bool>(false, false)) & any(vec3<bool>(false, false, false)), true, all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false))), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), true), vec4<bool>(any(vec2<bool>(false, false)), true, false, select(false, false, false)), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, any(vec3<bool>(true, true, false)), false), vec4<bool>(false, arg_0 < global0.x, true, select(false, true, false)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_3) -> Struct_2 {
    let var_0 = arg_1.d;
    let var_1 = !select(select(vec4<bool>(false, true, func_2(global0.x), all(vec2<bool>(false, arg_1.c.a))), vec4<bool>(all(vec4<bool>(arg_1.c.a, true, arg_1.c.a, true)), all(vec4<bool>(false, arg_1.c.a, arg_1.c.a, true)), arg_1.c.a, -24491i < var_0.a), !select(vec4<bool>(arg_1.c.a, true, arg_1.c.a, true), vec4<bool>(false, arg_1.c.a, arg_1.c.a, false), false)), select(select(select(vec4<bool>(arg_1.c.a, false, arg_1.c.a, arg_1.c.a), vec4<bool>(true, arg_1.c.a, false, true), false), select(vec4<bool>(arg_1.c.a, true, false, false), vec4<bool>(arg_1.c.a, true, false, false), false), true), select(select(vec4<bool>(false, arg_1.c.a, true, true), vec4<bool>(arg_1.c.a, arg_1.c.a, true, false), vec4<bool>(arg_1.c.a, true, false, arg_1.c.a)), vec4<bool>(false, arg_1.c.a, arg_1.c.a, false), true), select(vec4<bool>(false, true, true, arg_1.c.a), select(vec4<bool>(arg_1.c.a, true, arg_1.c.a, true), vec4<bool>(arg_1.c.a, arg_1.c.a, false, false), vec4<bool>(arg_1.c.a, arg_1.c.a, arg_1.c.a, false)), select(vec4<bool>(arg_1.c.a, arg_1.c.a, true, arg_1.c.a), vec4<bool>(false, arg_1.c.a, arg_1.c.a, arg_1.c.a), vec4<bool>(arg_1.c.a, arg_1.c.a, true, arg_1.c.a)))), select(vec4<bool>(true, true, true, arg_1.c.a), !select(vec4<bool>(false, arg_1.c.a, arg_1.c.a, arg_1.c.a), vec4<bool>(true, false, arg_1.c.a, arg_1.c.a), vec4<bool>(false, true, false, true)), !(!vec4<bool>(true, arg_1.c.a, arg_1.c.a, arg_1.c.a))));
    let var_2 = arg_1.d;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-873f * -890f));
    var var_4 = arg_1.c;
    return Struct_2(any(vec4<bool>(true, !all(var_1.xzw), countOneBits(arg_0.x) == (var_0.d.x ^ 21720i), true)), ~var_4.b);
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: bool) -> f32 {
    let var_0 = countOneBits(max(arg_1.d.d.x, -arg_1.e.x) << (u_input.a.x % 32u)) ^ abs(2147483647i);
    global0 = arg_2.yy;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.b.x) - 949f);
    var var_2 = vec2<bool>(arg_0, !arg_1.c.a || all(!select(vec4<bool>(true, true, false, arg_3), vec4<bool>(arg_1.c.a, arg_1.c.a, true, true), arg_1.c.a)));
    var var_3 = i32(-1i) * -arg_1.e.x;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-691f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.d.b.x), arg_1.d.b.x))), arg_1.d.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(func_4(true, Struct_3(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), vec4<u32>(24866u, u_input.a.x, u_input.a.x, 26898u) ^ ~vec4<u32>(59211u, 12514u, 10450u, 14692u), func_1(vec4<i32>(1i, 1i, 1i, 1i), Struct_3(1u, vec4<u32>(0u, 0u, 52505u, 13502u), Struct_2(true, vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x)), Struct_1(-34059i, vec2<f32>(-269f, global0.x), vec3<u32>(u_input.a.x, 85175u, 1679u), vec4<i32>(-30733i, 2147483647i, 2147483647i, 2147483647i)), vec2<i32>(-2147483647i, 9266i))), Struct_1(-36265i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -1175f)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 15786u), vec3<u32>(0u, u_input.a.x, 41546u)), vec4<i32>(37186i, 3978i, -1i, 1i)), _wgslsmith_mod_vec2_i32(~vec2<i32>(-1i, -8363i), -vec2<i32>(2147483647i, 1i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(-global0.x))), any(!select(vec2<bool>(true, true), vec2<bool>(true, false), false)))), global0.x);
    let var_0 = func_1(vec4<i32>(-2147483647i, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(42965i, -2147483647i), vec2<i32>(0i, -19335i)), abs(-13737i)) & _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-14324i, -14387i), vec2<i32>(20118i, 30066i)), ~48613i), i32(-1i) * -1i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(5222i, -9917i), vec2<i32>(-22029i, 0i)) << (~func_1(vec4<i32>(-21073i, 1i, -76099i, 31784i), Struct_3(8369u, vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), Struct_2(false, vec4<u32>(0u, 4294967295u, 1u, u_input.a.x)), Struct_1(-27432i, vec2<f32>(-898f, -1209f), vec3<u32>(57166u, u_input.a.x, u_input.a.x), vec4<i32>(941i, -2147483647i, 1i, -2147483647i)), vec2<i32>(-2414i, 1i))).b.x % 32u)), Struct_3(u_input.a.x, _wgslsmith_mult_vec4_u32(select(func_1(vec4<i32>(1i, -2147483647i, -2147483647i, -1180i), Struct_3(u_input.a.x, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), Struct_2(true, vec4<u32>(20990u, 40114u, u_input.a.x, 18505u)), Struct_1(-37176i, vec2<f32>(730f, global0.x), vec3<u32>(40077u, u_input.a.x, u_input.a.x), vec4<i32>(6882i, -47937i, -2147483647i, 29987i)), vec2<i32>(0i, -24048i))).b, select(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(66843u, u_input.a.x, 17624u, 6752u), true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true)), vec4<u32>(u_input.a.x, ~u_input.a.x, select(14542u, u_input.a.x, true), u_input.a.x)), Struct_2(_wgslsmith_add_u32(u_input.a.x, u_input.a.x) != 4294967295u, ~(~vec4<u32>(u_input.a.x, u_input.a.x, 1u, 1u))), Struct_1(abs(firstTrailingBit(-3854i)), vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(-56336i, vec2<f32>(525f, global0.x), vec3<u32>(2145u, 1u, u_input.a.x), vec4<i32>(1i, -1i, -2147483647i, 1238i)), global0.x, vec3<i32>(1i, 0i, -2147483647i), u_input.a)), _wgslsmith_f_op_f32(trunc(601f))), reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 22672u), vec3<u32>(u_input.a.x, u_input.a.x, 5919u))), vec4<i32>(~1i, 1i, -6385i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 55210i), vec2<i32>(2147483647i, 1i)))), abs(_wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(-26196i, -21183i)), vec2<i32>(1i, 1i)))));
    let var_1 = vec2<bool>(false, all(!(!vec2<bool>(var_0.a, true))));
    var var_2 = Struct_3(~u_input.a.x, ~var_0.b, func_1(vec4<i32>(min(-2147483647i, abs(-2420i)), ~8071i, _wgslsmith_mod_i32(-1400i, 1i), 15395i), Struct_3(1u, _wgslsmith_add_vec4_u32(firstTrailingBit(var_0.b), select(vec4<u32>(u_input.a.x, u_input.a.x, 51287u, var_0.b.x), vec4<u32>(0u, var_0.b.x, var_0.b.x, u_input.a.x), var_0.a)), var_0, Struct_1(_wgslsmith_div_i32(31267i, -2147483647i), _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, -858f), vec2<f32>(497f, 1595f)), ~var_0.b.wzw, _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -1i, 47808i, -52012i), vec4<i32>(2147483647i, 32777i, 15354i, -7675i))), _wgslsmith_add_vec2_i32(select(vec2<i32>(45498i, 68099i), vec2<i32>(0i, -1i), true), vec2<i32>(-2147483647i, 1i)))), Struct_1((i32(-1i) * -74389i) >> (u_input.a.x % 32u), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1389f, global0.x), vec2<f32>(global0.x, global0.x), var_1)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -216f))))), var_0.b.zxw, _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, -1679i, -1i, 1i) << (var_0.b % vec4<u32>(32u)), abs(vec4<i32>(-346i, 0i, 0i, 0i))), ~vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(16530i, 22424i, -26422i, 1050i))), ~max(vec2<i32>(1i, 1i), max(vec2<i32>(1i, 1i), vec2<i32>(6691i, 0i))));
    var var_3 = _wgslsmith_sub_u32(var_2.a, var_2.b.x);
    var_2 = Struct_3(var_2.d.c.x, _wgslsmith_mult_vec4_u32(firstLeadingBit(~var_2.c.b), vec4<u32>(_wgslsmith_sub_u32(14062u, u_input.a.x) & select(u_input.a.x, u_input.a.x, false), 75184u, max(var_0.b.x | 42910u, u_input.a.x), 4294967295u)), var_2.c, Struct_1(0i, var_2.d.b, ~vec3<u32>(1u, var_2.d.c.x, reverseBits(var_0.b.x)), -firstLeadingBit(var_2.d.d)), var_2.e);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(87i >> (u_input.a.x % 32u))), _wgslsmith_f_op_f32(func_3(var_2.d, _wgslsmith_f_op_f32(max(433f, -465f)), vec3<i32>(~max(var_2.d.a, var_2.d.a), ~reverseBits(-2147483647i), _wgslsmith_mult_i32(-28202i, var_2.d.d.x)), firstTrailingBit(vec2<u32>(~0u, ~1u)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-681f, 671f, global0.x, 951f)))))), ~var_2.b);
}

