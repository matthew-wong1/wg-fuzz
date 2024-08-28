struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: vec2<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec4<u32>(37840u, 114063u, 4294967295u, 40216u), -717f, vec2<f32>(-586f, -240f)), Struct_1(vec4<u32>(15957u, 0u, 1u, 4294967295u), -847f, vec2<f32>(-232f, -539f)), Struct_1(vec4<u32>(47433u, 1u, 1u, 4294967295u), -220f, vec2<f32>(-1826f, -853f)), Struct_1(vec4<u32>(1u, 22291u, 81035u, 27999u), -1985f, vec2<f32>(-121f, 1547f)), Struct_1(vec4<u32>(4294967295u, 20062u, 21108u, 98712u), -162f, vec2<f32>(-1391f, 1193f)), Struct_1(vec4<u32>(0u, 0u, 31547u, 18861u), -2171f, vec2<f32>(-619f, -1231f)), Struct_1(vec4<u32>(10494u, 20340u, 0u, 4294967295u), 1700f, vec2<f32>(1000f, 710f)), Struct_1(vec4<u32>(46970u, 56458u, 4294967295u, 0u), -1124f, vec2<f32>(484f, -788f)), Struct_1(vec4<u32>(13769u, 7559u, 0u, 86225u), 790f, vec2<f32>(-1000f, 1063f)), Struct_1(vec4<u32>(22359u, 4294967295u, 32756u, 40272u), -748f, vec2<f32>(756f, 139f)), Struct_1(vec4<u32>(1u, 895u, 12802u, 1u), 215f, vec2<f32>(248f, 456f)), Struct_1(vec4<u32>(1u, 4294967295u, 0u, 0u), 1481f, vec2<f32>(-1000f, -684f)), Struct_1(vec4<u32>(0u, 49800u, 95441u, 18445u), 591f, vec2<f32>(458f, -124f)), Struct_1(vec4<u32>(98407u, 1u, 21681u, 6566u), 272f, vec2<f32>(294f, 443f)), Struct_1(vec4<u32>(48313u, 1u, 44098u, 54971u), -1174f, vec2<f32>(938f, 1603f)), Struct_1(vec4<u32>(4294967295u, 0u, 1u, 11015u), -293f, vec2<f32>(-1551f, -745f)));

var<private> global1: vec3<f32> = vec3<f32>(-563f, -821f, 1000f);

var<private> global2: Struct_5 = Struct_5(-64368i, vec2<bool>(true, false), Struct_2(Struct_1(vec4<u32>(0u, 0u, 0u, 20377u), 439f, vec2<f32>(303f, -1187f)), 40638u, vec2<f32>(-1674f, -1389f), Struct_1(vec4<u32>(58130u, 43948u, 13061u, 1u), 623f, vec2<f32>(-209f, 1948f))));

var<private> global3: bool;

var<private> global4: Struct_2;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: u32, arg_3: Struct_2) -> f32 {
    global2 = Struct_5(2147483647i, select(vec2<bool>(false || all(vec3<bool>(global2.b.x, global2.b.x, global2.b.x)), false), select(vec2<bool>(false, all(global2.b)), select(select(vec2<bool>(global2.b.x, global2.b.x), vec2<bool>(true, true), vec2<bool>(global2.b.x, false)), global2.b, global2.b), global2.b), vec2<bool>(any(vec3<bool>(true, true, global2.b.x)), _wgslsmith_f_op_f32(-global4.d.c.x) == _wgslsmith_f_op_f32(round(-650f)))), Struct_2(Struct_1(arg_3.a.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1721f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-190f, -383f) - vec2<f32>(arg_1.c.b, -1663f))))), _wgslsmith_dot_vec4_u32(select(global4.a.a, ~vec4<u32>(global2.c.a.a.x, arg_2, arg_3.a.a.x, arg_1.a), true), ~u_input.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global2.c.a.c.x, 1000f)))), Struct_1(vec4<u32>(reverseBits(global2.c.a.a.x), _wgslsmith_add_u32(0u, 35508u), ~arg_1.c.a.x, 1u), -232f, vec2<f32>(_wgslsmith_f_op_f32(global2.c.c.x + -969f), _wgslsmith_f_op_f32(-arg_0.x)))));
    global2 = Struct_5(global2.a | global2.a, !select(!(!global2.b), !vec2<bool>(global2.b.x, global2.b.x), any(select(vec4<bool>(true, global2.b.x, false, true), vec4<bool>(global2.b.x, true, true, false), true))), Struct_2(global4.d, ~1u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1233f, global4.a.c.x), arg_1.c.c, global2.b)))), _wgslsmith_f_op_vec2_f32(trunc(arg_3.c))), global4.a));
    global4 = arg_3;
    global0 = array<Struct_1, 16>();
    global1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-464f, -1578f, global2.c.d.c.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-163f, arg_3.a.b, -1040f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global4.c.x, arg_0.x, global1.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(832f, global1.x, 441f)))))), _wgslsmith_f_op_vec3_f32(trunc(arg_1.b.zww))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0 * vec3<f32>(-425f, arg_3.c.x, 510f))) + vec3<f32>(1f, _wgslsmith_f_op_f32(arg_3.d.b + -1712f), _wgslsmith_f_op_f32(804f * 921f)))), select(vec3<bool>(false, global2.b.x, global2.b.x), vec3<bool>(true, any(select(vec4<bool>(global2.b.x, false, global2.b.x, true), vec4<bool>(global2.b.x, global2.b.x, false, global2.b.x), vec4<bool>(global2.b.x, true, true, false))), global2.a < (global2.a >> (global2.c.d.a.x % 32u))), select(vec3<bool>(any(vec3<bool>(true, global2.b.x, global2.b.x)), true, any(global2.b)), select(select(vec3<bool>(global2.b.x, global2.b.x, global2.b.x), vec3<bool>(global2.b.x, false, global2.b.x), true), vec3<bool>(true, global2.b.x, false), vec3<bool>(false, false, global2.b.x)), any(select(vec3<bool>(global2.b.x, global2.b.x, false), vec3<bool>(true, true, global2.b.x), vec3<bool>(global2.b.x, global2.b.x, false)))))));
    return _wgslsmith_f_op_f32(-arg_0.x);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: bool, arg_3: vec4<u32>) -> Struct_4 {
    global0 = array<Struct_1, 16>();
    var var_0 = any(vec4<bool>(reverseBits(global2.a) != global2.a, true, any(vec4<bool>(global2.b.x, arg_2, global2.b.x, arg_2)) & true, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -442f) * _wgslsmith_f_op_f32(-1000f - 978f)) == _wgslsmith_f_op_f32(-global1.x)));
    var var_1 = global2.c.d;
    var var_2 = vec3<f32>(-978f, 1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(168f, 1287f, arg_1.a.b))) + _wgslsmith_div_vec3_f32(vec3<f32>(722f, -879f, 287f), vec3<f32>(var_1.c.x, arg_1.d.c.x, -1000f))), Struct_4(0u ^ global2.c.d.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, global4.a.c.x, global4.c.x, -229f)), Struct_1(global4.d.a, var_1.c.x, var_1.c), Struct_3(vec4<u32>(4294967295u, 4294967295u, var_1.a.x, var_1.a.x), global2.c.d.c.x)), arg_1.a.a.x, Struct_2(global4.a, u_input.a.x, var_1.c, global4.d))))));
    let var_3 = vec4<bool>(!arg_2, !(true && global2.b.x), false, select(false, false, arg_2));
    return Struct_4(var_1.a.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1127f + global1.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.c.c.x))), _wgslsmith_f_op_f32(var_2.x * var_1.c.x)) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(313f, global2.c.c.x, global2.c.d.b, global2.c.c.x), vec4<f32>(880f, global4.d.c.x, global2.c.a.c.x, arg_1.d.c.x), var_3))), vec4<f32>(_wgslsmith_f_op_f32(select(645f, -570f, false)), _wgslsmith_div_f32(1280f, 2342f), 1702f, 1000f)))), Struct_1(select(_wgslsmith_sub_vec4_u32(var_1.a, vec4<u32>(arg_1.d.a.x, u_input.b.x, 1u, 4294967295u)), arg_1.a.a, vec4<bool>(false, false, true, global2.b.x)) ^ arg_3, global4.a.c.x, _wgslsmith_f_op_vec2_f32(global1.xx + _wgslsmith_f_op_vec2_f32(-global4.c))), Struct_3(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.a.x, 64499u, var_1.a.x, ~1u), _wgslsmith_add_vec4_u32(arg_3, global4.d.a) << (~arg_1.d.a % vec4<u32>(32u))), _wgslsmith_f_op_f32(-var_2.x)));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: i32, arg_3: bool) -> Struct_3 {
    let var_0 = func_2(-vec4<i32>(global2.a, arg_2, _wgslsmith_add_i32(~arg_2, 1616i), 1i), global2.c, any(vec3<bool>(all(vec2<bool>(false, arg_3)), any(vec4<bool>(arg_3, global2.b.x, true, global2.b.x)), false)) && !(4294967295u == _wgslsmith_mod_u32(global4.b, 57240u)), vec4<u32>(global2.c.b, ~arg_0.c.a.x, ~41619u, _wgslsmith_mod_u32(min(global2.c.b, countOneBits(8954u)), ~31149u))).d.b;
    let var_1 = -2453i;
    global2 = Struct_5(0i, global2.b, Struct_2(func_2(~countOneBits(vec4<i32>(-42035i, -1i, global2.a, 1i)), global2.c, _wgslsmith_clamp_u32(u_input.a.x, 0u, 0u) < 18149u, abs(vec4<u32>(1u, 74081u, 0u, global4.b) >> (vec4<u32>(4294967295u, 52867u, global4.d.a.x, 1u) % vec4<u32>(32u)))).c, 0u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(882f, global4.d.c.x))), vec2<f32>(_wgslsmith_f_op_f32(-global2.c.a.b), -1483f)), global2.c.d));
    let var_2 = global2.c.c.x;
    let var_3 = arg_1;
    return arg_0.d;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_2) -> vec3<f32> {
    global4 = Struct_2(func_2(~max(vec4<i32>(global2.a, 4169i, global2.a, global2.a), vec4<i32>(global2.a, global2.a, global2.a, global2.a)) >> ((global4.d.a | vec4<u32>(970u, 51501u, 0u, global2.c.d.a.x)) % vec4<u32>(32u)), global2.c, false, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x ^ arg_0.a.x, arg_1.c.a.x ^ 61631u, firstLeadingBit(45595u), _wgslsmith_sub_u32(arg_1.a, 4294967295u)), (vec4<u32>(u_input.a.x, 0u, 5437u, 0u) ^ arg_0.a) ^ global2.c.a.a)).c, ~func_4(func_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, global2.a, global2.a, global2.a), vec4<i32>(-86935i, global2.a, global2.a, 11255i), vec4<i32>(global2.a, global2.a, global2.a, global2.a)), Struct_2(global4.a, 5580u, vec2<f32>(global2.c.c.x, 1054f), global4.a), !global2.b.x, global4.d.a), _wgslsmith_f_op_vec4_f32(trunc(arg_1.b)), 10646i, true).a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global4.c.x, arg_2.c.x), vec2<f32>(arg_0.b, 906f), false)))))), Struct_1(select(vec4<u32>(~63585u, func_4(arg_1, arg_1.b, global2.a, global2.b.x).a.x, arg_2.d.a.x, 60741u), u_input.b, false), 1202f, arg_2.d.c));
    var var_0 = func_2(vec4<i32>(-1i, 1i, _wgslsmith_add_i32(~(-37673i), global2.a & global2.a) << (~(~u_input.a.x) % 32u), _wgslsmith_add_i32(firstLeadingBit(global2.a) & abs(-45687i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-37458i, -1i, global2.a), vec3<i32>(global2.a, global2.a, 30888i)))), Struct_2(func_2(firstTrailingBit(-vec4<i32>(0i, global2.a, 2147483647i, global2.a)), Struct_2(func_2(vec4<i32>(global2.a, -9357i, 2147483647i, global2.a), arg_2, global2.b.x, vec4<u32>(u_input.a.x, 0u, arg_0.a.x, arg_2.b)).c, abs(0u), arg_1.b.wy, Struct_1(vec4<u32>(global4.b, 62352u, arg_1.c.a.x, arg_1.c.a.x), -1143f, global4.d.c)), all(select(global2.b, vec2<bool>(true, global2.b.x), global2.b)), abs(~global4.d.a)).c, 63549u, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_2.a.c.x)), arg_0.b), -325f), func_2(vec4<i32>(global2.a, 1i, ~100195i, global2.a), Struct_2(Struct_1(vec4<u32>(arg_0.a.x, arg_0.a.x, 11393u, global4.b), arg_1.c.c.x, global4.a.c), ~4294967295u, vec2<f32>(-1455f, global2.c.d.c.x), Struct_1(vec4<u32>(1u, 43024u, arg_1.c.a.x, arg_1.c.a.x), -715f, global4.c)), all(select(vec4<bool>(global2.b.x, true, global2.b.x, true), vec4<bool>(false, false, global2.b.x, global2.b.x), vec4<bool>(true, false, false, false))), global2.c.d.a).c), any(vec3<bool>(global2.b.x, global2.b.x, global2.b.x)), arg_2.d.a);
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.d.b, -1015f, arg_1.d.b))))) - var_0.b.zyz), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_1.b.xwy)) * var_0.b.xzz)));
    let var_1 = true;
    var var_2 = global2.b.x;
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(141f, -174f, arg_2.c.x) + var_0.b.zwx))))));
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(func_4(func_2(-vec4<i32>(global2.a, global2.a, 0i, -1i), Struct_2(Struct_1(vec4<u32>(arg_0.b, u_input.b.x, global4.a.a.x, global2.c.d.a.x), -1000f, global4.d.c), 4294967295u, vec2<f32>(global1.x, global1.x), Struct_1(global2.c.a.a, 1562f, vec2<f32>(1252f, global4.d.b))), true, global4.d.a & global2.c.a.a), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1871f, global2.c.c.x, 1539f, global1.x) + vec4<f32>(243f, -1319f, arg_0.c.x, 1950f)), vec4<f32>(global1.x, global1.x, -803f, global2.c.d.c.x), true)), global2.a, all(vec3<bool>(true, global2.b.x, false))), func_2(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, global2.a, global2.a, global2.a), vec4<i32>(global2.a, -13331i, global2.a, -47172i)), vec4<i32>(3286i, 2147483647i, global2.a, global2.a)), arg_0, false == !global2.b.x, vec4<u32>(11594u, arg_0.b, ~15558u, ~global4.a.a.x)), global2.c)) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-472f, -2671f, 1000f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -1893f, 2287f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1709f, -1542f, -292f), vec3<f32>(579f, 1010f, 2223f), true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -579f, -206f) * vec3<f32>(100f, global4.d.b, global4.d.c.x))))))));
    var var_0 = global2.a;
    var var_1 = _wgslsmith_mod_vec2_u32(global4.d.a.zw, global2.c.d.a.zz);
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(346f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(331f - 660f) + _wgslsmith_f_op_f32(-global2.c.a.b)), _wgslsmith_f_op_f32(global2.c.c.x * global1.x)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec3_f32(func_5(func_2(vec4<i32>(-27412i, -2603i, 19594i, global2.a), global2.c, global2.b.x, global4.a.a).d, func_2(vec4<i32>(global2.a, -1i, 0i, global2.a), Struct_2(Struct_1(arg_0.a.a, 1000f, vec2<f32>(global4.c.x, 582f)), var_1.x, arg_0.a.c, Struct_1(vec4<u32>(global4.b, var_1.x, arg_0.b, global2.c.d.a.x), -641f, vec2<f32>(1582f, 248f))), true, global2.c.a.a), arg_0)).x)), _wgslsmith_f_op_f32(-func_2(vec4<i32>(global2.a, global2.a, -2147483647i, global2.a), arg_0, global2.b.x || global2.b.x, min(vec4<u32>(1u, var_1.x, u_input.a.x, 34806u), vec4<u32>(global2.c.a.a.x, global2.c.b, u_input.b.x, var_1.x))).d.b), _wgslsmith_f_op_f32(global2.c.d.c.x * var_2.x), -410f));
    return Struct_3(abs(_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_0.a.a.x, 0u, global2.c.d.a.x, global4.b), firstLeadingBit(arg_0.d.a)) ^ arg_0.a.a), _wgslsmith_f_op_f32(-var_2.x));
}

fn func_6(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: u32) -> f32 {
    global0 = array<Struct_1, 16>();
    let var_0 = _wgslsmith_f_op_f32(650f - global1.x);
    var var_1 = countOneBits(firstTrailingBit(countOneBits(vec3<i32>(global2.a >> (33410u % 32u), ~(-1i), countOneBits(34725i)))));
    let var_2 = reverseBits(u_input.b);
    let var_3 = global2.c;
    return global2.c.a.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 47550u;
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-global4.c.x), _wgslsmith_f_op_f32(f32(-1f) * -327f), -544f);
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(max(1000f, global2.c.c.x)), _wgslsmith_div_f32(-282f, global1.x))))));
    let var_1 = ~global2.a;
    global4 = Struct_2(Struct_1(~select(_wgslsmith_div_vec4_u32(vec4<u32>(global4.d.a.x, 50318u, u_input.b.x, u_input.a.x), global4.d.a), ~vec4<u32>(u_input.b.x, 0u, u_input.b.x, 0u), select(vec4<bool>(true, false, false, global2.b.x), vec4<bool>(global2.b.x, global2.b.x, global2.b.x, true), vec4<bool>(global2.b.x, true, global2.b.x, false))), _wgslsmith_f_op_f32(func_6(Struct_4(global4.a.a.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1353f, 513f, 1907f, global2.c.d.b) - vec4<f32>(-306f, global1.x, 141f, global1.x)), Struct_1(vec4<u32>(1u, 78491u, 51482u, u_input.b.x), global1.x, vec2<f32>(global2.c.a.b, global1.x)), func_1(Struct_2(global0[_wgslsmith_index_u32(global4.a.a.x, 16u)], 12358u, global4.d.c, Struct_1(vec4<u32>(global2.c.d.a.x, global4.d.a.x, u_input.a.x, u_input.a.x), global1.x, global2.c.d.c)))), global2.b, 20012u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global2.c.a.c, _wgslsmith_f_op_vec2_f32(-global4.d.c), vec2<bool>(false, true))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1216f, global4.a.c.x)))), func_1(Struct_2(func_2(vec4<i32>(-2147483647i, var_1, 2147483647i, 1i), Struct_2(Struct_1(global2.c.d.a, 387f, vec2<f32>(-361f, global2.c.a.b)), global2.c.a.a.x, vec2<f32>(1000f, global4.d.c.x), Struct_1(global2.c.a.a, global1.x, global4.c)), all(global2.b), u_input.b).c, ~_wgslsmith_sub_u32(129842u, u_input.a.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global4.a.c - vec2<f32>(global1.x, global4.d.b)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(683f, 395f)))), func_2(vec4<i32>(-33129i, var_1, var_1, 82730i), Struct_2(global4.d, global4.a.a.x, global4.c, Struct_1(vec4<u32>(global2.c.b, 1u, 4294967295u, 27645u), global4.a.c.x, vec2<f32>(1032f, -208f))), global2.b.x, ~vec4<u32>(u_input.a.x, global4.b, global4.b, u_input.b.x)).c)).a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global4.a.c, global2.c.d.c)), Struct_1(countOneBits(~(u_input.b | vec4<u32>(global4.d.a.x, global2.c.b, u_input.b.x, 1991u))), global2.c.c.x, _wgslsmith_f_op_vec2_f32(global4.a.c * _wgslsmith_f_op_vec2_f32(-vec2<f32>(602f, global1.x)))));
    global4 = Struct_2(Struct_1(~func_4(Struct_4(u_input.a.x, vec4<f32>(global1.x, 466f, global1.x, global4.d.b), global0[_wgslsmith_index_u32(0u, 16u)], Struct_3(global2.c.a.a, global2.c.d.b)), vec4<f32>(global1.x, -1376f, -1070f, global4.c.x), 2147483647i, global2.b.x).a ^ _wgslsmith_mod_vec4_u32(global4.d.a, select(vec4<u32>(1u, global4.b, 4294967295u, 35319u), u_input.b, vec4<bool>(global2.b.x, global2.b.x, false, true))), global1.x, vec2<f32>(_wgslsmith_f_op_f32(global1.x * -1083f), global1.x)), 52886u, global1.xx, func_2(_wgslsmith_sub_vec4_i32((vec4<i32>(22556i, -37529i, global2.a, -35420i) << (global4.d.a % vec4<u32>(32u))) << (global4.a.a % vec4<u32>(32u)), firstTrailingBit(select(vec4<i32>(29627i, 21364i, var_1, -2147483647i), vec4<i32>(8701i, var_1, global2.a, 2147483647i), vec4<bool>(false, true, global2.b.x, true)))), Struct_2(Struct_1(global4.a.a, _wgslsmith_f_op_f32(global1.x + -1635f), vec2<f32>(global2.c.c.x, 1260f)), global2.c.b, global1.yy, func_2(vec4<i32>(global2.a, global2.a, 50062i, var_1), global2.c, !global2.b.x, firstTrailingBit(vec4<u32>(global2.c.a.a.x, 0u, global2.c.a.a.x, 0u))).c), all(vec3<bool>(select(false, global2.b.x, global2.b.x), any(global2.b), all(vec4<bool>(global2.b.x, true, global2.b.x, global2.b.x)))), vec4<u32>(global4.b, ~global4.d.a.x, global2.c.d.a.x, _wgslsmith_mod_u32(0u, u_input.a.x) | func_4(Struct_4(global4.d.a.x, vec4<f32>(1000f, global2.c.a.c.x, global4.c.x, global1.x), Struct_1(vec4<u32>(1u, 4294967295u, global4.a.a.x, 8201u), global1.x, global4.a.c), Struct_3(vec4<u32>(global4.d.a.x, 1u, 35092u, u_input.b.x), global2.c.d.b)), vec4<f32>(-352f, global2.c.d.c.x, -1000f, global4.a.c.x), -1i, true).a.x)).c);
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_mult_vec3_i32(vec3<i32>(global2.a, -2147483647i, -1i), vec3<i32>(-18276i, global2.a, var_1)), ~(vec3<i32>(-57500i, global2.a, var_1) & vec3<i32>(-1i, 2147483647i, global2.a)), select(!vec3<bool>(true, global2.b.x, false), select(vec3<bool>(true, false, global2.b.x), vec3<bool>(true, false, global2.b.x), global2.b.x), true)) << (~firstTrailingBit(func_1(global2.c).a.wzz) % vec3<u32>(32u)), 13335i, 40674u, -vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, -2147483647i, var_1), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, global2.a, global2.a), vec3<i32>(29359i, -21295i, 50201i))), -var_1, 25034i), _wgslsmith_f_op_vec2_f32(-global4.d.c));
}

