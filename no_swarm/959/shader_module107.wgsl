struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(vec2<i32>(0i, 22469i), false, vec3<f32>(-933f, 676f, -514f)), Struct_2(vec2<i32>(-7260i, -40820i), false, vec3<f32>(259f, 797f, -1000f)), Struct_2(vec2<i32>(2147483647i, 2147483647i), false, vec3<f32>(-1499f, 949f, 216f)), Struct_2(vec2<i32>(-1i, 1i), true, vec3<f32>(-128f, 882f, 340f)), Struct_2(vec2<i32>(-11289i, i32(-2147483648)), true, vec3<f32>(-1378f, -1148f, 1027f)), Struct_2(vec2<i32>(0i, 0i), true, vec3<f32>(694f, 1001f, -663f)), Struct_2(vec2<i32>(-26908i, -21219i), false, vec3<f32>(1059f, -210f, -472f)), Struct_2(vec2<i32>(-14577i, 1i), false, vec3<f32>(-559f, 678f, 679f)), Struct_2(vec2<i32>(-18225i, 1i), true, vec3<f32>(101f, -825f, 1004f)), Struct_2(vec2<i32>(-58560i, i32(-2147483648)), true, vec3<f32>(887f, -271f, 1367f)), Struct_2(vec2<i32>(-3042i, 0i), false, vec3<f32>(-613f, -183f, 355f)), Struct_2(vec2<i32>(29043i, 65640i), false, vec3<f32>(658f, 322f, 652f)), Struct_2(vec2<i32>(-23074i, -1i), false, vec3<f32>(-1250f, 407f, 901f)), Struct_2(vec2<i32>(10424i, i32(-2147483648)), false, vec3<f32>(-282f, -457f, -1883f)), Struct_2(vec2<i32>(-71473i, 10693i), false, vec3<f32>(-793f, -990f, 629f)), Struct_2(vec2<i32>(6329i, -26956i), false, vec3<f32>(344f, 325f, -736f)), Struct_2(vec2<i32>(0i, i32(-2147483648)), true, vec3<f32>(-1201f, -413f, 660f)), Struct_2(vec2<i32>(-1i, -1i), false, vec3<f32>(762f, -136f, -1509f)), Struct_2(vec2<i32>(54954i, 50794i), false, vec3<f32>(865f, 688f, -1000f)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_1(~select(_wgslsmith_dot_vec4_u32(~vec4<u32>(23814u, 49198u, 21412u, 1u), min(vec4<u32>(4899u, 18215u, 4294967295u, 1u), vec4<u32>(4294967295u, 0u, 41969u, 4112u))), 1u, true), _wgslsmith_f_op_f32(f32(-1f) * -1436f));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.b), -253f));
    var var_2 = var_0;
    let var_3 = vec2<i32>(862i, abs(abs(-(~u_input.b.x))));
    global0 = array<Struct_2, 19>();
    return select(select(vec4<bool>((0u | var_2.a) == countOneBits(var_0.a), all(vec2<bool>(true, true)), any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true))), false), vec4<bool>(true, (var_2.a < 26034u) != all(vec3<bool>(true, true, true)), false, -317f >= _wgslsmith_f_op_f32(-var_1.x)), !vec4<bool>(var_0.a >= 59983u, true, true, true)), vec4<bool>(any(vec2<bool>(false, true)) | all(select(vec2<bool>(true, true), vec2<bool>(true, false), true)), true, true, 184f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-372f, -1643f)) - _wgslsmith_f_op_f32(select(-718f, -755f, false)))), false);
}

fn func_2() -> vec4<bool> {
    let var_0 = 30181u;
    return !func_3();
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = vec3<bool>(true, !(!any(vec2<bool>(true, true))), all(vec3<bool>(false, any(func_2()), true)));
    var var_1 = func_2();
    global0 = array<Struct_2, 19>();
    let var_2 = var_1.x;
    let var_3 = 0u;
    return Struct_1(~1825u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.x))));
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    global0 = array<Struct_2, 19>();
    let var_0 = vec4<u32>(arg_1.a, ~arg_1.a, ~arg_1.a, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, arg_1.a & 45033u, 38140u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(13780u, arg_1.a, arg_1.a, 4294967295u), vec4<u32>(4294967295u, 73209u, 4294967295u, arg_1.a))), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.a, arg_1.a, 1u, arg_1.a), vec4<u32>(arg_1.a, 27724u, arg_1.a, 65979u), vec4<u32>(arg_1.a, arg_1.a, 0u, arg_1.a)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 1253f, arg_1.b, 2522f) - vec4<f32>(arg_1.b, arg_1.b, 434f, 2159f)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2038f, arg_1.b)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(173f + 1191f), _wgslsmith_f_op_f32(select(871f, arg_1.b, false)))), -169f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) + -1000f))));
    var var_2 = min(_wgslsmith_div_i32(10379i, ~u_input.a.x) | ((i32(-1i) * -u_input.a.x) | -3796i), u_input.a.x);
    let var_3 = abs(vec4<u32>(abs(arg_1.a), arg_1.a, ~arg_1.a, ~arg_1.a | 1u));
    return Struct_1(reverseBits(arg_1.a), arg_1.b);
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    global0 = array<Struct_2, 19>();
    global0 = array<Struct_2, 19>();
    global0 = array<Struct_2, 19>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(24802u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(1u, arg_0.a), arg_0.a, ~arg_0.a), abs(abs(vec3<u32>(1u, arg_0.a, 4294967295u))))), 19u)];
    global0 = array<Struct_2, 19>();
    return global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(firstTrailingBit(arg_0.a), ~_wgslsmith_dot_vec4_u32(vec4<u32>(25871u, arg_0.a, arg_0.a, 1u), vec4<u32>(arg_0.a, 67485u, arg_0.a, 10548u))), 19u)];
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = arg_1.a.x;
    global0 = array<Struct_2, 19>();
    global0 = array<Struct_2, 19>();
    var var_1 = Struct_1(1u, -1047f);
    let var_2 = !func_3().zwy;
    return func_5(Struct_1(select(_wgslsmith_mod_u32(var_1.a, 4294967295u >> (var_1.a % 32u)), var_1.a, !func_5(Struct_1(var_1.a, arg_1.c.x)).b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.b))), _wgslsmith_f_op_f32(arg_1.c.x + _wgslsmith_f_op_f32(1000f * arg_1.c.x)))));
}

fn func_7(arg_0: u32, arg_1: Struct_2) -> f32 {
    let var_0 = Struct_1(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -705f));
    let var_1 = arg_0;
    var var_2 = func_6(_wgslsmith_sub_vec3_i32(u_input.b, -vec3<i32>(-arg_1.a.x, _wgslsmith_sub_i32(arg_1.a.x, -2147483647i), _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(0i, arg_1.a.x, u_input.a.x)))), Struct_2(arg_1.a, false, func_6(_wgslsmith_add_vec3_i32(vec3<i32>(43789i, u_input.a.x, u_input.a.x), vec3<i32>(arg_1.a.x, arg_1.a.x, arg_1.a.x)), global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(17583u, 0u, var_0.a, 49527u), vec4<u32>(1u, arg_0, 37495u, var_1))), 19u)]).c));
    var var_3 = vec3<u32>(_wgslsmith_add_u32(var_1, ~var_0.a), _wgslsmith_mult_u32(~(~var_1), reverseBits(4294967295u)), ~(~select(arg_0, 12135u, false))) >> (abs(~(~vec3<u32>(1u, 0u, arg_0))) % vec3<u32>(32u));
    let var_4 = var_2.b;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.c.x * var_2.c.x), _wgslsmith_f_op_f32(min(var_2.c.x, var_0.b)), true)))) - -1759f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_7(~(~2490u), func_6(u_input.b, func_5(func_4(_wgslsmith_f_op_f32(f32(-1f) * -520f), func_1(vec4<f32>(1000f, 227f, 1000f, -576f)))))));
    var var_1 = false;
    var var_2 = select(all(vec3<bool>(func_5(Struct_1(1u, var_0)).b, true, 1162f != _wgslsmith_f_op_f32(round(-693f)))), any(!vec2<bool>(true, all(vec2<bool>(true, false)))), true);
    global0 = array<Struct_2, 19>();
    var_1 = true;
    var_2 = all(func_2().ww);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(var_0 + 138f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0, var_0)) + var_0))), abs(vec2<i32>(u_input.a.x, _wgslsmith_sub_i32(1i, -34319i))));
}

