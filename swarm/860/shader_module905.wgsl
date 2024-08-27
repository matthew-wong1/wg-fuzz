struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec3<u32>,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec2<f32>,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    let var_0 = 57857u;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(496f, 321f)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(259f - 340f) + _wgslsmith_f_op_f32(step(377f, 107f)))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1172f), _wgslsmith_f_op_f32(316f + -412f), false))))));
    return 48905i;
}

fn func_4(arg_0: i32) -> vec4<bool> {
    var var_0 = _wgslsmith_div_f32(-2004f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-320f, -461f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-2229f, 134f, false)))))) < -863f;
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-748f * -1120f)) - _wgslsmith_f_op_f32(f32(-1f) * -932f)) + -659f)));
    var var_1 = ~(-arg_0);
    let var_2 = Struct_2(~_wgslsmith_mod_vec3_u32(~reverseBits(vec3<u32>(u_input.a.x, 16620u, 0u)), select(abs(vec3<u32>(0u, 49261u, 18293u)), vec3<u32>(16507u, 1u, 0u), false)), u_input.a, Struct_1(!vec4<bool>(all(vec3<bool>(true, true, true)), all(vec4<bool>(false, true, false, false)), arg_0 < arg_0, arg_0 == arg_0), select(true, !(arg_0 <= 0i), true & select(false, true, true)), vec4<bool>(true, all(vec3<bool>(false, true, true)) || true, true, true)));
    var var_3 = var_2;
    return var_2.c.a;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<u32>) -> bool {
    var var_0 = Struct_3(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(-513f * 594f)), false)), 242f), Struct_2(~(~max(vec3<u32>(37495u, 1u, 1u), vec3<u32>(52176u, 0u, arg_1.x))), vec2<u32>(0u, firstLeadingBit(~u_input.a.x)), Struct_1(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true)), all(vec2<bool>(false, false)), func_4(func_3()))), ~(~select(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, u_input.a.x), vec3<u32>(u_input.a.x, 1u, 89762u)), ~vec3<u32>(0u, u_input.a.x, arg_1.x), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)))), !func_4(max(-28270i, -2147483647i)).x);
    var var_1 = Struct_4(var_0.b, (i32(-1i) * -func_3()) | _wgslsmith_div_i32(32975i, select(1i, 2147483647i, all(vec4<bool>(true, var_0.b.c.b, false, var_0.b.c.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(step(var_0.a.x, -1207f))), vec2<f32>(_wgslsmith_div_f32(1000f, -390f), var_0.a.x)) * vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x)))), Struct_2(var_0.c, min(~(vec2<u32>(47515u, 0u) | u_input.a), select(arg_1, vec2<u32>(1u, 1u), var_0.b.c.a.xz) >> (_wgslsmith_mod_vec2_u32(arg_1, vec2<u32>(var_0.c.x, var_0.c.x)) % vec2<u32>(32u))), Struct_1(select(!var_0.b.c.a, !var_0.b.c.c, true), 1000f > var_0.a.x, !(!vec4<bool>(var_0.d, false, true, var_0.b.c.b)))), Struct_1(!(!select(vec4<bool>(var_0.d, false, var_0.b.c.c.x, var_0.d), vec4<bool>(var_0.d, var_0.d, true, var_0.d), vec4<bool>(var_0.b.c.a.x, var_0.b.c.a.x, false, var_0.b.c.a.x))), true, vec4<bool>(true, any(var_0.b.c.c.ywy) & true, true, all(vec2<bool>(true, var_0.b.c.c.x)))));
    let var_2 = _wgslsmith_clamp_i32(var_1.b, -8379i | ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b, -2147483647i), firstTrailingBit(vec2<i32>(0i, var_1.b))), var_1.b);
    let var_3 = countOneBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(var_2, var_1.b, var_1.b, 0i)), vec4<i32>(reverseBits(12578i), var_2, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2147483647i, var_2), vec3<i32>(2147483647i, 7476i, -62463i)), -var_2)), _wgslsmith_sub_vec4_i32(~(vec4<i32>(-27232i, 2147483647i, 2147483647i, -1i) << (vec4<u32>(4294967295u, u_input.a.x, arg_1.x, var_1.a.b.x) % vec4<u32>(32u))), firstLeadingBit(vec4<i32>(-3478i, -1i, var_1.b, var_2))), vec4<i32>(-1i) * -abs(vec4<i32>(-30163i, 0i, var_2, var_2))));
    let var_4 = Struct_1(!select(var_1.e.c, vec4<bool>(true, var_1.d.c.a.x, var_2 == 1i, true), var_1.d.c.b), 1000f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-751f, arg_0.x)), _wgslsmith_f_op_f32(abs(322f))))), vec4<bool>(false, var_1.e.a.x, !all(vec3<bool>(var_0.b.c.c.x, var_0.d, true)), func_4(_wgslsmith_add_i32(var_2 | -55323i, var_2)).x));
    return (max(var_2, func_3()) > (~(var_1.b | var_2) << (firstLeadingBit(var_1.a.a.x) % 32u))) == var_4.a.x;
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec4<f32>, arg_3: bool) -> bool {
    global0 = -1441f;
    var var_0 = ~_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, 0i, 34904i), vec3<i32>(1i, 1i, 1i)) >> ((firstTrailingBit(u_input.a.x) >> (max(1u, 1u) % 32u)) % 32u), abs(-(~0i)));
    let var_1 = -vec2<i32>(1i, firstTrailingBit(func_3()));
    let var_2 = true;
    var var_3 = u_input.a.x;
    return arg_1 && all(vec4<bool>(arg_3, false, arg_3, all(arg_0.c.xx)));
}

fn func_1() -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(select(-525f, _wgslsmith_f_op_f32(f32(-1f) * -1402f), func_5(Struct_1(vec4<bool>(true, true, true, true), true, vec4<bool>(all(vec2<bool>(false, true)), func_2(vec2<f32>(-141f, -1103f), u_input.a), any(vec3<bool>(false, false, false)), false)), func_4(abs(~(-6176i))).x, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1047f + -322f), _wgslsmith_f_op_f32(sign(-321f)), _wgslsmith_f_op_f32(-3025f - 446f), 421f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1454f, 1153f, 848f, 787f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1102f, -1295f, 1000f, -571f)))), true)));
    let var_0 = vec4<u32>(4678u & (1u ^ ~u_input.a.x), u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x << (1532u % 32u), 1u, 42626u, 90316u), ~_wgslsmith_div_vec4_u32(vec4<u32>(40502u, 0u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 23203u)) ^ vec4<u32>(abs(70551u), abs(37459u), 45388u, u_input.a.x)), ~firstTrailingBit(u_input.a.x >> (u_input.a.x % 32u)) & u_input.a.x);
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1520f, 957f)))));
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1343f)) + _wgslsmith_f_op_f32(f32(-1f) * -618f))) + 390f)));
    var_1 = _wgslsmith_div_f32(-481f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1429f * 1829f)))))));
    return Struct_2(firstTrailingBit(abs(vec3<u32>(max(var_0.x, var_0.x), u_input.a.x, ~u_input.a.x))), u_input.a, Struct_1(select(select(func_4(12970i), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false))), select(vec4<bool>(true, true, true, true), func_4(80740i), vec4<bool>(true, false, false, false)), vec4<bool>(true, var_0.x != 8816u, true, func_4(0i).x)), false, func_4(_wgslsmith_clamp_i32(-25470i, 25729i, _wgslsmith_div_i32(2147483647i, -21764i)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1830f;
    let var_0 = all(!vec4<bool>(false, 10794u > u_input.a.x, true, true)) | !(true | any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false))));
    var var_1 = ~u_input.a.x;
    let var_2 = func_1();
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1340f + 1604f)) + -182f)), -778f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -574f));
}

