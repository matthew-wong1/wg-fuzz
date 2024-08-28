struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 26>;

var<private> global1: array<i32, 31>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = u_input.b;
    var var_1 = Struct_2(firstTrailingBit(-_wgslsmith_add_i32(min(-21842i, global1[_wgslsmith_index_u32(0u, 31u)]), ~0i)), vec4<f32>(_wgslsmith_div_f32(2031f, _wgslsmith_div_f32(-872f, 1965f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(494f - 1000f), _wgslsmith_f_op_f32(373f * -946f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(170f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1435f, -1467f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -824f))));
    let var_2 = vec2<bool>(any(!select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(true, false), false), all(vec3<bool>(false, false, true)))), 961f > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) + -2021f))));
    let var_3 = var_2.x;
    var var_4 = Struct_2(~_wgslsmith_mult_i32(~(i32(-1i) * -1i), global1[_wgslsmith_index_u32(~4294967295u, 31u)]), var_1.b);
    return ~0u;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b) ^ max(_wgslsmith_sub_u32(4294967295u, u_input.a), ~_wgslsmith_add_u32(u_input.a, 9596u)), 31u)], _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(895f, 118f, -1347f, -950f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-523f, -570f, 1213f, 303f))), vec4<f32>(_wgslsmith_f_op_f32(trunc(809f)), _wgslsmith_f_op_f32(1840f - 513f), _wgslsmith_f_op_f32(f32(-1f) * -606f), 1853f)))));
    var var_1 = !vec3<bool>(26757u >= u_input.a, true, false);
    var var_2 = u_input.b;
    var_2 = vec3<u32>(~(4294967295u & func_3()), 11570u, 9013u);
    let var_3 = var_0;
    return Struct_1(var_1.x, _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_3.a, 12321i, -57255i, -24056i), vec4<i32>(14492i, -2147483647i, 2147483647i, 7419i)), ~(vec4<i32>(48125i, var_3.a, -2628i, global1[_wgslsmith_index_u32(37228u, 31u)]) & vec4<i32>(-6557i, var_3.a, -1i, 21895i))) | (_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-36428i, var_0.a, var_0.a, 1i), vec4<i32>(var_0.a, 41938i, -19770i, 2147483647i)), vec4<i32>(2754i, var_0.a, var_0.a, var_0.a), vec4<i32>(var_0.a, 0i, var_3.a, -24750i)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(50096u, 1u, 4294967295u, u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, var_2.x, u_input.b.x, var_2.x), global0[_wgslsmith_index_u32(u_input.b.x, 26u)])) % vec4<u32>(32u))), true, any(!(!select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, true, true), false))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(!(!any(vec2<bool>(true, arg_0.c))), countOneBits(select(vec4<i32>(max(-8428i, arg_0.b.x), 1i, ~arg_0.b.x, 1i), _wgslsmith_mod_vec4_i32(select(arg_0.b, arg_0.b, vec4<bool>(arg_0.c, false, arg_0.a, true)), arg_0.b | arg_0.b), any(vec2<bool>(false, arg_0.a)) & arg_0.d)), all(vec4<bool>(true, true, true, false)), all(select(vec2<bool>(arg_0.d, all(vec4<bool>(false, arg_0.c, true, false))), !select(vec2<bool>(arg_0.d, arg_0.a), vec2<bool>(true, arg_0.d), vec2<bool>(false, arg_0.c)), true)));
    var var_1 = _wgslsmith_sub_i32(abs(-_wgslsmith_add_i32(abs(0i), global1[_wgslsmith_index_u32(u_input.b.x, 31u)] << (u_input.a % 32u))), 30747i);
    var var_2 = all(select(select(select(vec2<bool>(true, true), vec2<bool>(arg_0.d, var_0.d), vec2<bool>(false, arg_0.d)), select(select(vec2<bool>(false, arg_0.d), vec2<bool>(var_0.d, true), arg_0.c), vec2<bool>(true, true), true), select(select(vec2<bool>(var_0.d, true), vec2<bool>(arg_0.c, false), vec2<bool>(arg_0.d, false)), vec2<bool>(true, true), false)), select(!select(vec2<bool>(var_0.d, false), vec2<bool>(arg_0.c, arg_0.d), var_0.c), vec2<bool>(!var_0.a, false && arg_0.d), !(!vec2<bool>(false, arg_0.a))), vec2<bool>(~0u != (29272u << (u_input.a % 32u)), _wgslsmith_add_i32(-43194i, global1[_wgslsmith_index_u32(u_input.b.x, 31u)]) != ~var_0.b.x)));
    let var_3 = Struct_2(i32(-1i) * -15813i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1017f, 1769f, 342f, -1140f) + vec4<f32>(-506f, 436f, -443f, -1362f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(372f, -292f, 197f, 242f)), select(vec4<bool>(var_0.d, arg_0.d, var_0.c, var_0.a), vec4<bool>(false, true, arg_0.d, arg_0.a), var_0.a))))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2842f, 1043f, -1327f, -323f))))))));
    let var_4 = Struct_1(true, ~arg_0.b >> (abs(_wgslsmith_add_vec4_u32(abs(vec4<u32>(1u, 6485u, 4294967295u, 4294967295u)), global0[_wgslsmith_index_u32(1u, 26u)])) % vec4<u32>(32u)), all(!select(vec2<bool>(arg_0.a, var_0.a), select(vec2<bool>(var_0.a, arg_0.a), vec2<bool>(arg_0.a, arg_0.a), arg_0.d), true)), true);
    return func_2();
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = func_4(func_2());
    let var_1 = vec4<i32>(-58436i, ~global1[_wgslsmith_index_u32(~17074u, 31u)], global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_mult_u32(select(u_input.b.x, _wgslsmith_clamp_u32(u_input.a, 38011u, u_input.a), !var_0.c), ~1u), u_input.b.x), 31u)], ~func_4(func_4(func_2())).b.x);
    var var_2 = ~func_2().b.xxx;
    var var_3 = !arg_0.x;
    let var_4 = 11583i;
    return Struct_2(~arg_2.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(arg_2.b * _wgslsmith_f_op_vec4_f32(arg_2.b * arg_2.b))))));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    global0 = array<vec4<u32>, 26>();
    var var_0 = func_1(select(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec2<bool>(false, true)), true), (u_input.a < u_input.b.x) == true), vec4<bool>(true, true, true, true)), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), arg_0.b.x), Struct_2(-2147483647i, arg_0.b), arg_0.b);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, _wgslsmith_f_op_f32(-424f * var_0.b.x), var_0.b.x))));
    var var_2 = func_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - 1233f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(541f * var_0.b.x) + 152f)))), Struct_2(55723i, vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_0.b.x)))), _wgslsmith_f_op_f32(-var_0.b.x), 1000f, -1091f)), var_0.b);
    let var_3 = false;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(select(vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(36618u, 31u)] > global1[_wgslsmith_index_u32(82653u, 31u)]), vec4<bool>(false, false, 2147483647i == global1[_wgslsmith_index_u32(1u, 31u)], true), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-191f, 1025f) - vec2<f32>(-861f, -516f))), Struct_2(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(11935u, u_input.b.x)), 31u)], vec4<f32>(1085f, _wgslsmith_f_op_f32(-539f * 1387f), 1491f, -1883f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(268f, 1000f, -1459f, -1531f) * vec4<f32>(1087f, -551f, -1497f, 1225f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1162f, -704f, 747f, 1048f) - vec4<f32>(-1000f, -309f, -1000f, 656f)), true))));
    global0 = array<vec4<u32>, 26>();
    global0 = array<vec4<u32>, 26>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-564f)))), -289f, -289f, var_0.b.x));
    let var_2 = 1u;
    var var_3 = u_input.b.yy;
    var var_4 = func_2();
    var var_5 = Struct_2(~(-global1[_wgslsmith_index_u32(68591u, 31u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-244f, var_0.b.x, var_1.x, 1000f)) - _wgslsmith_f_op_vec4_f32(-var_0.b)))));
    let var_6 = min(_wgslsmith_sub_u32(~_wgslsmith_mod_u32(333u, ~var_3.x), _wgslsmith_mult_u32(min(var_2, 111101u), abs(var_3.x))), ~3837u >> (abs(_wgslsmith_mult_u32(1u, var_2 ^ 78471u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

