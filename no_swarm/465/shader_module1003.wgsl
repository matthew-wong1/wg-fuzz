struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<i32>,
    d: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    let var_0 = Struct_3(firstTrailingBit(~(~vec3<u32>(51276u, 0u, 13894u))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-747f, -1186f, 1407f)), vec3<f32>(645f, -1136f, 497f)) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-686f, 266f, 1000f)))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(1049f - 714f), -521f, _wgslsmith_f_op_f32(f32(-1f) * -277f)), vec3<f32>(_wgslsmith_f_op_f32(522f + -126f), 626f, 1f), false)), any(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(526f, -1645f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1061f, 2014f)), -501f)), -1897f))));
    global0 = true;
    global0 = true | (all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))) || all(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_0.b.yz)));
    global0 = any(vec4<bool>(true, true, any(vec4<bool>(true, true, true, true)), (13435u >> (var_0.a.x % 32u)) > 1u)) != all(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false))));
    return 39037u ^ var_0.a.x;
}

fn func_2() -> u32 {
    let var_0 = u_input.e;
    return ~_wgslsmith_dot_vec4_u32(vec4<u32>(func_3(), ~4294967295u, select(0u, 66249u, false), ~1u) >> ((_wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, 52006u, 56144u), vec4<u32>(4294967295u, 53809u, 9743u, 33987u)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(1u, ~1u, reverseBits(11265u), 2323u));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_1 {
    global0 = arg_0.d.x;
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -365f);
    global0 = arg_3.d.x | !arg_0.d.x;
    var_0 = 229f;
    global0 = select(false, !(_wgslsmith_f_op_f32(arg_0.c - _wgslsmith_f_op_f32(min(101f, arg_0.c))) == 950f), arg_3.d.x);
    return Struct_1(2670u, vec2<u32>(arg_1.a.x, ~_wgslsmith_clamp_u32(0u, arg_0.a & 0u, func_2())), arg_1.b.x, select(select(!arg_3.d, select(select(vec2<bool>(false, arg_0.d.x), arg_0.d, arg_0.d), arg_0.d, !arg_0.d.x), select(!arg_3.d, select(arg_0.d, arg_0.d, arg_0.d.x), arg_3.b.x != arg_3.b.x)), arg_0.d, arg_0.d));
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_1) -> bool {
    global0 = arg_2.d.x;
    global0 = !arg_2.d.x;
    let var_0 = ~1u;
    var var_1 = vec4<u32>(21682u, 18422u, _wgslsmith_dot_vec3_u32(~(~min(vec3<u32>(var_0, var_0, arg_2.a), vec3<u32>(0u, arg_2.a, 1u))), vec3<u32>(arg_2.a, ~4294967295u << (min(var_0, 82686u) % 32u), _wgslsmith_dot_vec3_u32(max(vec3<u32>(arg_2.a, 5047u, var_0), vec3<u32>(51092u, 27443u, var_0)), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.b.x, var_0, 1u), vec3<u32>(67678u, arg_2.b.x, 1u))))), _wgslsmith_div_u32(arg_2.b.x, 0u));
    var var_2 = _wgslsmith_div_f32(arg_2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1428f * arg_2.c) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-286f)))));
    return any(select(select(vec4<bool>(43006u == arg_2.a, !arg_2.d.x, 1u >= var_0, true), select(select(vec4<bool>(true, arg_2.d.x, false, arg_2.d.x), vec4<bool>(false, false, true, arg_0), vec4<bool>(arg_2.d.x, arg_0, arg_2.d.x, false)), select(vec4<bool>(true, arg_0, true, arg_2.d.x), vec4<bool>(true, false, true, arg_2.d.x), vec4<bool>(arg_2.d.x, arg_2.d.x, arg_2.d.x, true)), true), !select(vec4<bool>(false, false, arg_2.d.x, false), vec4<bool>(arg_2.d.x, true, arg_0, true), arg_2.d.x)), !select(select(vec4<bool>(arg_2.d.x, true, arg_2.d.x, arg_0), vec4<bool>(arg_0, arg_0, false, false), vec4<bool>(true, arg_0, arg_0, false)), !vec4<bool>(true, arg_0, true, false), select(vec4<bool>(arg_0, arg_0, arg_2.d.x, arg_2.d.x), vec4<bool>(false, false, arg_2.d.x, arg_0), true)), false));
}

fn func_5(arg_0: vec4<bool>, arg_1: bool, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_3(reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), firstLeadingBit(vec3<u32>(1u, 1u, 1u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-954f)), _wgslsmith_f_op_f32(abs(-1414f)), _wgslsmith_f_op_f32(ceil(576f)))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1386f, 754f, -678f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -400f, -1576f)), arg_0.xxx))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(193f * 173f), _wgslsmith_f_op_f32(floor(-137f))))), _wgslsmith_f_op_f32(-1633f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-978f, -511f)))))));
    global0 = !all(vec2<bool>(true, true));
    var var_1 = func_1(func_1(func_1(Struct_1(var_0.a.x >> (var_0.a.x % 32u), abs(vec2<u32>(var_0.a.x, var_0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -2011f), select(arg_0.ww, arg_0.xz, false)), var_0, ~(~vec4<i32>(arg_2.x, arg_2.x, 42737i, u_input.b)), func_1(Struct_1(var_0.a.x, var_0.a.zx, 777f, arg_0.wz), Struct_3(vec3<u32>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<f32>(-976f, 858f, var_0.c), -484f), firstLeadingBit(vec4<i32>(u_input.a.x, u_input.d, arg_2.x, arg_2.x)), func_1(Struct_1(var_0.a.x, vec2<u32>(var_0.a.x, var_0.a.x), -445f, arg_0.zz), Struct_3(var_0.a, vec3<f32>(747f, 1793f, var_0.c), var_0.c), vec4<i32>(arg_2.x, u_input.d, 1i, u_input.e.x), Struct_1(var_0.a.x, vec2<u32>(var_0.a.x, 81345u), var_0.c, vec2<bool>(true, arg_0.x))))), var_0, max(~_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 1i, -27305i, 14757i), vec4<i32>(-7993i, -1532i, arg_2.x, u_input.c)), -_wgslsmith_div_vec4_i32(vec4<i32>(1i, 2147483647i, arg_2.x, arg_2.x), vec4<i32>(-24991i, -2147483647i, u_input.e.x, -31135i))), func_1(Struct_1(var_0.a.x, vec2<u32>(var_0.a.x, 26881u) << (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-var_0.b.x), select(vec2<bool>(false, arg_0.x), vec2<bool>(arg_0.x, arg_0.x), true)), Struct_3(var_0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, var_0.b.x, -1000f) + var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -1440f)), _wgslsmith_mod_vec4_i32(select(vec4<i32>(-3594i, 37139i, u_input.b, arg_2.x), vec4<i32>(-15044i, u_input.d, arg_2.x, -8434i), true), vec4<i32>(23966i, 64130i, arg_2.x, -1i)), Struct_1(var_0.a.x, var_0.a.yz, var_0.b.x, vec2<bool>(true, false)))), var_0, _wgslsmith_div_vec4_i32(firstTrailingBit(~(~vec4<i32>(2147483647i, u_input.b, arg_2.x, u_input.d))), abs(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, u_input.c, 31062i, arg_2.x), vec4<i32>(u_input.d, u_input.e.x, arg_2.x, 1i))))), Struct_1(_wgslsmith_mod_u32(~4294967295u, 1u), vec2<u32>(1u, 0u), _wgslsmith_f_op_f32(-var_0.b.x), select(func_1(func_1(Struct_1(1u, vec2<u32>(45286u, var_0.a.x), var_0.c, arg_0.yy), var_0, vec4<i32>(15078i, arg_2.x, 11814i, 0i), Struct_1(var_0.a.x, vec2<u32>(0u, 0u), var_0.b.x, vec2<bool>(arg_0.x, arg_1))), var_0, vec4<i32>(-41419i, 1i, 0i, arg_2.x), Struct_1(9907u, vec2<u32>(var_0.a.x, 1u), var_0.c, arg_0.xy)).d, select(vec2<bool>(true, true), arg_0.xy, select(vec2<bool>(false, arg_1), vec2<bool>(arg_1, arg_0.x), vec2<bool>(arg_1, arg_1))), arg_0.zw)));
    var_1 = Struct_1(~(11808u | ~var_0.a.x), _wgslsmith_add_vec2_u32(vec2<u32>(var_1.b.x | var_1.b.x, ~84992u) << (_wgslsmith_mult_vec2_u32(var_1.b, select(vec2<u32>(var_1.b.x, var_1.b.x), vec2<u32>(var_0.a.x, var_1.a), vec2<bool>(var_1.d.x, true))) % vec2<u32>(32u)), firstTrailingBit(~vec2<u32>(var_0.a.x, var_0.a.x) & var_1.b)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.c))), !func_1(Struct_1(_wgslsmith_mult_u32(var_0.a.x, var_0.a.x), var_0.a.yy >> (vec2<u32>(99111u, 4294967295u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(353f * var_1.c), !var_1.d), Struct_3(var_0.a ^ var_0.a, _wgslsmith_f_op_vec3_f32(ceil(var_0.b)), _wgslsmith_f_op_f32(var_1.c - var_0.c)), vec4<i32>(_wgslsmith_sub_i32(0i, arg_2.x), arg_2.x, arg_2.x, abs(1i)), func_1(func_1(Struct_1(42177u, var_1.b, 283f, var_1.d), var_0, vec4<i32>(13686i, -21009i, -24069i, arg_2.x), Struct_1(1u, vec2<u32>(4347u, 4294967295u), var_1.c, arg_0.zx)), Struct_3(vec3<u32>(1u, 4294967295u, var_0.a.x), var_0.b, 901f), vec4<i32>(u_input.b, u_input.a.x, u_input.e.x, u_input.d), func_1(Struct_1(0u, vec2<u32>(11097u, var_0.a.x), 2004f, vec2<bool>(arg_0.x, false)), var_0, vec4<i32>(2147483647i, arg_2.x, 0i, u_input.e.x), Struct_1(var_0.a.x, vec2<u32>(73439u, 1719u), var_1.c, var_1.d)))).d);
    let var_2 = _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c + var_0.c) + _wgslsmith_f_op_f32(var_1.c * var_1.c)), -1093f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(179f - 230f)))));
    return Struct_1(_wgslsmith_add_u32(max(func_3(), 0u), func_3()), var_1.b, _wgslsmith_f_op_f32(-337f + _wgslsmith_f_op_f32(var_1.c - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.c))))), vec2<bool>(false, 13874i > (u_input.c & arg_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<u32>(5675u, 1u, _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(18413u, 13526u, 0u), vec3<u32>(21182u, 37565u, 0u)), vec3<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(10420u, 48559u, 14667u), vec3<u32>(19868u, 4294967295u, 38442u)), 44780u)), ~abs(1u));
    global0 = true;
    global0 = any(vec2<bool>(true, true)) || true;
    let var_1 = func_5(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_4(true, -vec3<i32>(1i, u_input.a.x, u_input.c), func_1(Struct_1(38419u, var_0.zw, -211f, vec2<bool>(false, true)), Struct_3(vec3<u32>(0u, 85775u, 1u), vec3<f32>(1189f, 1000f, 162f), -876f), vec4<i32>(u_input.d, 0i, u_input.e.x, -5527i), Struct_1(var_0.x, var_0.wx, -1000f, vec2<bool>(false, true))))), func_1(Struct_1(_wgslsmith_dot_vec4_u32(~var_0, _wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 456u, 15484u, 15235u), var_0)), _wgslsmith_sub_vec2_u32(vec2<u32>(2887u, var_0.x), vec2<u32>(var_0.x, 0u)) | vec2<u32>(var_0.x, var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(650f + 241f)), select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), any(vec3<bool>(false, true, true)))), Struct_3(var_0.zxz, vec3<f32>(_wgslsmith_f_op_f32(round(-1450f)), 1f, -701f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -708f) * 877f)), vec4<i32>(-u_input.c >> (~52914u % 32u), _wgslsmith_sub_i32(~(-14272i), 1i), ~firstLeadingBit(u_input.e.x), u_input.e.x), func_1(func_1(Struct_1(0u, vec2<u32>(var_0.x, var_0.x), 1276f, vec2<bool>(false, false)), Struct_3(vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<f32>(705f, 115f, 900f), 889f), vec4<i32>(u_input.e.x, 26646i, -35447i, u_input.a.x), Struct_1(var_0.x, var_0.wx, -513f, vec2<bool>(false, true))), Struct_3(~var_0.wzy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-296f, 273f, 468f)), 1371f), vec4<i32>(-u_input.d, _wgslsmith_add_i32(u_input.d, u_input.d), i32(-1i) * -1i, u_input.d << (var_0.x % 32u)), Struct_1(var_0.x ^ 12325u, var_0.yz, _wgslsmith_div_f32(2663f, -1097f), vec2<bool>(true, true)))).d.x, -max(vec3<i32>(-1i) * -vec3<i32>(-1i, u_input.c, u_input.c), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, u_input.d, 50437i), max(vec3<i32>(1i, u_input.c, u_input.a.x), vec3<i32>(u_input.a.x, u_input.d, u_input.c)), firstLeadingBit(vec3<i32>(13267i, -23929i, u_input.a.x)))));
    global0 = func_1(Struct_1(~(~abs(16526u)), var_1.b, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -230f)), var_1.d), Struct_3(vec3<u32>(var_1.b.x, _wgslsmith_clamp_u32(0u, 1u, var_0.x), var_1.b.x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, var_1.c, var_1.c)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.c, var_1.c, 909f), vec3<f32>(var_1.c, var_1.c, var_1.c), vec3<bool>(var_1.d.x, var_1.d.x, var_1.d.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1594f, 553f))))), -1837f), max(~(-vec4<i32>(-2147483647i, -13031i, u_input.b, u_input.d)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 1i, u_input.d, -2147483647i), vec4<i32>(u_input.d, 43871i, u_input.a.x, u_input.e.x))) | abs(-select(vec4<i32>(u_input.e.x, 22757i, 1i, u_input.e.x), vec4<i32>(1i, 1i, 37882i, -32382i), vec4<bool>(var_1.d.x, var_1.d.x, true, var_1.d.x))), var_1).d.x;
    let var_2 = Struct_4(Struct_2(func_1(Struct_1(var_0.x, vec2<u32>(4294967295u, 1u), func_5(vec4<bool>(true, var_1.d.x, false, false), var_1.d.x, vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x)).c, !var_1.d), Struct_3(var_0.wxz ^ vec3<u32>(1u, var_0.x, var_1.a), vec3<f32>(var_1.c, -1278f, 843f), _wgslsmith_f_op_f32(floor(-184f))), firstLeadingBit(vec4<i32>(u_input.d, u_input.b, 0i, -1029i)), var_1), _wgslsmith_f_op_f32(f32(-1f) * -1144f), firstTrailingBit(u_input.a), all(!select(vec4<bool>(var_1.d.x, var_1.d.x, true, true), vec4<bool>(false, false, var_1.d.x, var_1.d.x), vec4<bool>(true, false, true, true)))), _wgslsmith_clamp_u32(firstLeadingBit(var_0.x), var_1.a, var_0.x));
    var var_3 = -var_2.a.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(min(-vec3<i32>(var_2.a.c.x, 1i, 2147483647i), vec3<i32>(15209i, u_input.a.x, 31731i) | vec3<i32>(-4313i, u_input.d, -1727i)), vec3<i32>(i32(-1i) * -35025i, -12775i, abs(2147483647i))) & (~(-2147483647i) << (_wgslsmith_sub_u32(_wgslsmith_div_u32(var_2.a.a.b.x, var_0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b, 1u, 6338u), var_0.wxz)) % 32u)), ~(~var_0.yw), _wgslsmith_dot_vec3_i32(reverseBits((vec3<i32>(-17098i, var_2.a.c.x, var_2.a.c.x) << (vec3<u32>(var_1.a, var_0.x, 7234u) % vec3<u32>(32u))) & (vec3<i32>(-1i, 59626i, u_input.c) & vec3<i32>(-1i, -2147483647i, 5846i))), reverseBits(~abs(vec3<i32>(-2147483647i, -1460i, 37599i)))), var_1.c);
}

