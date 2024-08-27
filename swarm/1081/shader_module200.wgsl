struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: i32,
    d: vec3<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 27> = array<vec3<bool>, 27>(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true));

var<private> global1: vec4<u32> = vec4<u32>(1u, 0u, 23569u, 4294967295u);

var<private> global2: array<f32, 26> = array<f32, 26>(701f, 1094f, -483f, 416f, -1108f, 1772f, -512f, 367f, 316f, 597f, -469f, -450f, 828f, 1000f, 174f, -828f, -1227f, -121f, 2541f, -1000f, 362f, 1011f, -1826f, 1714f, -699f, 701f);

var<private> global3: array<vec4<i32>, 5>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: vec2<bool>, arg_3: Struct_2) -> vec4<f32> {
    var var_0 = vec3<u32>(1u, ~(~arg_3.d) | 1u, arg_3.d);
    var var_1 = Struct_4(arg_3, global2[_wgslsmith_index_u32(~select(countOneBits(u_input.e), _wgslsmith_clamp_u32(4294967295u, arg_1, arg_1), all(arg_3.b.b.yy)) ^ ~abs(13245u << (1u % 32u)), 26u)], Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3.a) + arg_3.a), arg_3.c, Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(-685i, u_input.b.x), vec2<i32>(u_input.a, arg_3.c.a.x)), !(!vec3<bool>(false, arg_3.c.d.x, true)), firstTrailingBit(13025i), !select(vec3<bool>(false, arg_3.c.d.x, arg_2.x), global0[_wgslsmith_index_u32(arg_3.d, 27u)], true), _wgslsmith_f_op_vec3_f32(select(arg_3.c.e, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.b.e.x, -1713f, arg_3.b.e.x)), arg_3.b.e.x < 310f))), countOneBits(global1.x)));
    let var_2 = var_1.c.b.e.x;
    let var_3 = Struct_3(Struct_1(vec2<i32>(~arg_3.b.c, _wgslsmith_mod_i32(-u_input.c.x, min(-2147483647i, -78938i))), !vec3<bool>(all(arg_3.b.d), false, 2931u <= arg_0.x), select(1i, 0i, !all(arg_3.c.d.xx)), !(!(!vec3<bool>(arg_2.x, arg_3.c.b.x, var_1.c.c.d.x))), arg_3.a.wzw), min(vec3<u32>(u_input.e, 0u, countOneBits(select(u_input.e, arg_0.x, false))), firstTrailingBit(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(0u, 0u, global1.x)), vec3<u32>(51456u, 13968u, 4294967295u) >> (vec3<u32>(45241u, 31012u, u_input.e) % vec3<u32>(32u))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(245f, var_1.a.a.x, any(var_1.c.b.b))) * 639f))));
    var_1 = Struct_4(arg_3, _wgslsmith_f_op_f32(trunc(617f)), Struct_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_3.c.e.x, -221f, -168f, -1506f), arg_3.a)) * var_1.c.a))), var_1.c.b, Struct_1(vec2<i32>(2147483647i, ~u_input.a), vec3<bool>(true, any(var_1.c.c.b), all(vec3<bool>(false, arg_3.b.d.x, arg_3.b.b.x))), var_1.a.c.c, select(!var_1.c.c.d, vec3<bool>(false, var_3.a.b.x, false), !arg_3.c.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(var_1.a.d, 26u)], var_1.a.a.x, var_1.c.b.e.x))), u_input.e));
    return var_1.c.a;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: vec2<bool>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(arg_1))));
    var var_1 = vec2<u32>(~_wgslsmith_clamp_u32(~reverseBits(4294967295u), ~(13628u << (u_input.e % 32u)), global1.x), u_input.e);
    let var_2 = vec4<i32>(u_input.a, abs(_wgslsmith_mod_i32(1i, ~arg_0.x)), u_input.b.x, 1i & -_wgslsmith_add_i32(~(-21726i), _wgslsmith_mult_i32(arg_0.x, arg_0.x)));
    let var_3 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_3(global1.wxz, var_1.x, vec2<bool>(arg_2.x, false), Struct_2(var_0, Struct_1(u_input.b.xx, vec3<bool>(true, arg_2.x, false), u_input.a, vec3<bool>(arg_2.x, arg_2.x, false), vec3<f32>(arg_1.x, 3801f, arg_1.x)), Struct_1(vec2<i32>(arg_0.x, 0i), vec3<bool>(arg_2.x, arg_2.x, arg_2.x), arg_0.x, vec3<bool>(false, arg_2.x, false), vec3<f32>(909f, 880f, var_0.x)), u_input.e))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1 * vec4<f32>(-140f, 416f, arg_1.x, 171f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1708f, -394f, 1747f, 1000f)))), arg_1), Struct_1(firstTrailingBit(_wgslsmith_mod_vec2_i32(min(var_2.yz, vec2<i32>(-2147483647i, u_input.c.x)), -var_2.wy)), select(select(vec3<bool>(arg_2.x, true, arg_2.x), !vec3<bool>(arg_2.x, true, false), !vec3<bool>(true, arg_2.x, true)), vec3<bool>(arg_2.x, arg_2.x, arg_2.x), global0[_wgslsmith_index_u32(u_input.e, 27u)]), var_2.x, global0[_wgslsmith_index_u32(firstTrailingBit(~28u), 27u)], arg_1.wwy), Struct_1(firstLeadingBit(abs(var_2.xw >> (global1.yy % vec2<u32>(32u)))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_add_u32(global1.x, 1u), 12324u), 27u)], 5877i, select(!select(global0[_wgslsmith_index_u32(6696u, 27u)], global0[_wgslsmith_index_u32(1u, 27u)], false), vec3<bool>(arg_2.x, true, arg_2.x), arg_2.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(arg_1.yxx)), _wgslsmith_f_op_vec4_f32(func_3(vec3<u32>(u_input.e, 4294967295u, 12372u), 0u, vec2<bool>(false, false), Struct_2(arg_1, Struct_1(u_input.c.zx, global0[_wgslsmith_index_u32(global1.x, 27u)], -1i, vec3<bool>(arg_2.x, false, arg_2.x), var_0.zyz), Struct_1(vec2<i32>(arg_0.x, arg_0.x), vec3<bool>(false, true, true), arg_0.x, vec3<bool>(arg_2.x, true, false), vec3<f32>(global2[_wgslsmith_index_u32(var_1.x, 26u)], arg_1.x, var_0.x)), 1u))).xwy)) + _wgslsmith_f_op_vec3_f32(-arg_1.zyz))), countOneBits(~605u));
    let var_4 = Struct_2(var_3.a, var_3.c, var_3.c, ~43722u);
    return Struct_4(Struct_2(var_3.a, Struct_1(abs(-vec2<i32>(var_2.x, 43652i)), var_4.b.b, firstTrailingBit(countOneBits(u_input.c.x)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(global1.xz, vec2<u32>(30443u, 1u), true), global1.zw), 27u)], _wgslsmith_f_op_vec3_f32(arg_1.wzw + _wgslsmith_f_op_vec3_f32(min(var_4.a.zzy, var_3.a.zzz)))), Struct_1(vec2<i32>(var_2.x, -1i), select(vec3<bool>(var_4.c.d.x, true, arg_2.x), var_4.b.b, var_4.c.d.x), max(35816i >> (u_input.e % 32u), _wgslsmith_sub_i32(-19516i, 3968i)), !var_4.b.d, var_0.www), reverseBits(_wgslsmith_mod_u32(var_1.x, 45109u) << (4294967295u % 32u))), _wgslsmith_f_op_f32(var_3.b.e.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2175f + 1000f))), Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(242f, -119f, -174f, -344f), var_0, vec4<bool>(false, false, var_4.b.d.x, false)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1) - _wgslsmith_f_op_vec4_f32(-var_4.a)), any(select(vec3<bool>(arg_2.x, var_4.b.b.x, true), var_3.c.d, var_3.b.d.x)))), var_4.c, Struct_1(var_3.b.a, !global0[_wgslsmith_index_u32(0u, 27u)], -(-1144i | var_4.b.a.x), select(select(var_4.c.b, var_4.c.d, vec3<bool>(false, var_4.c.d.x, var_3.b.b.x)), !vec3<bool>(true, var_3.b.b.x, false), var_4.b.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_4.c.e.x, arg_1.x, var_0.x), vec3<f32>(var_4.a.x, arg_1.x, -1651f))))), var_4.d));
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = func_2(arg_3.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-arg_3.e.x), 425f, _wgslsmith_f_op_f32(f32(-1f) * -796f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(arg_0.c.a * arg_0.a.a))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(arg_0.c.a, vec4<f32>(global2[_wgslsmith_index_u32(arg_0.a.d, 26u)], arg_0.a.b.e.x, arg_3.e.x, arg_0.b))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 26u)], -471f, arg_0.b, arg_3.e.x) * arg_0.c.a)), arg_0.a.a)), arg_0.a.c.b.xy).a;
    global0 = array<vec3<bool>, 27>();
    let var_1 = arg_0.a.a;
    global0 = array<vec3<bool>, 27>();
    global2 = array<f32, 26>();
    return func_2(u_input.c.xw & vec2<i32>(1i, -1i), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(77461u, 26u)], var_1.x), 731f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2844f - -232f) - _wgslsmith_f_op_f32(-var_0.b.e.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_1.x, -2088f)))), _wgslsmith_f_op_f32(min(511f, _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(arg_0.c.d, 26u)], 121f, true))))), vec4<f32>(-378f, global2[_wgslsmith_index_u32(43328u, 26u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(global1.wyz, 35620u, arg_0.a.b.d.zy, arg_0.a)).x), global2[_wgslsmith_index_u32(~(~4294967295u), 26u)]), vec4<bool>(select(true, true, arg_3.b.x), !arg_0.c.b.b.x | true, true, true))), var_0.b.b.yy).a;
}

fn func_1() -> bool {
    var var_0 = func_4(func_2(vec2<i32>(u_input.a, u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.e, 26u)], global2[_wgslsmith_index_u32(1u, 26u)], 274f, 1368f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-897f, global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(u_input.e, 26u)], 669f) - vec4<f32>(global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)], global2[_wgslsmith_index_u32(u_input.e, 26u)], -875f)))), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), true)), -u_input.a, vec3<i32>(_wgslsmith_sub_i32(select(_wgslsmith_div_i32(u_input.a, u_input.a), u_input.a, true), _wgslsmith_div_i32(27113i, countOneBits(u_input.b.x))), u_input.b.x, min(u_input.b.x, ~(-u_input.b.x))), func_2(u_input.c.yy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(308f, global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(u_input.e, 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)]) - vec4<f32>(global2[_wgslsmith_index_u32(global1.x, 26u)], global2[_wgslsmith_index_u32(u_input.e, 26u)], 968f, 803f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-125f, 415f, -845f, 1000f) * vec4<f32>(1415f, global2[_wgslsmith_index_u32(1u, 26u)], 1632f, global2[_wgslsmith_index_u32(23539u, 26u)])))), vec2<bool>((-1i < u_input.c.x) || func_2(u_input.b.zy, vec4<f32>(866f, -447f, global2[_wgslsmith_index_u32(global1.x, 26u)], global2[_wgslsmith_index_u32(36443u, 26u)]), vec2<bool>(false, true)).a.c.d.x, select(true, true, true))).c.c);
    var var_1 = !vec3<bool>(all(select(select(vec2<bool>(var_0.b.d.x, true), vec2<bool>(true, true), var_0.c.b.x), func_2(u_input.b.xy, vec4<f32>(var_0.c.e.x, 1000f, var_0.c.e.x, -1870f), var_0.b.d.yz).c.c.d.zz, vec2<bool>(var_0.b.b.x, var_0.c.d.x))), var_0.c.b.x, false);
    let var_2 = abs(-global3[_wgslsmith_index_u32(_wgslsmith_div_u32(global1.x, var_0.d), 5u)]);
    global3 = array<vec4<i32>, 5>();
    var var_3 = Struct_4(func_2(func_2(min(min(var_2.zx, var_0.b.a), vec2<i32>(-2147483647i, u_input.d)), _wgslsmith_f_op_vec4_f32(min(var_0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(-331f, global2[_wgslsmith_index_u32(0u, 26u)], -507f, 1099f) + var_0.a))), !vec2<bool>(var_0.b.d.x, true)).a.b.a, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_0.a)) * _wgslsmith_f_op_vec4_f32(step(var_0.a, vec4<f32>(1144f, global2[_wgslsmith_index_u32(var_0.d, 26u)], var_0.c.e.x, var_0.b.e.x)))))), !var_0.c.d.zx).a, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(413u, 1u), 26u)], Struct_2(vec4<f32>(-387f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-407f + global2[_wgslsmith_index_u32(u_input.e, 26u)])), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.e, 26u)] + -1031f))), global2[_wgslsmith_index_u32(1u, 26u)]), func_2(u_input.b.xz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-338f, global2[_wgslsmith_index_u32(1u, 26u)], var_0.a.x, -815f) + var_0.a)), var_0.c.d.xy).c.b, Struct_1(vec2<i32>(func_4(Struct_4(Struct_2(var_0.a, var_0.c, Struct_1(var_2.xw, vec3<bool>(false, false, true), var_0.b.a.x, vec3<bool>(var_0.c.d.x, var_0.b.b.x, true), var_0.a.wyz), 0u), -537f, Struct_2(var_0.a, Struct_1(var_2.zy, vec3<bool>(var_0.c.d.x, true, var_0.c.d.x), var_0.c.c, vec3<bool>(var_0.b.b.x, true, var_0.b.d.x), vec3<f32>(-399f, var_0.b.e.x, global2[_wgslsmith_index_u32(var_0.d, 26u)])), var_0.b, var_0.d)), -42518i, vec3<i32>(2147483647i, var_0.c.c, 1i), var_0.c).b.c, 17517i), var_0.b.b, func_2(var_2.zz & var_2.wy, _wgslsmith_f_op_vec4_f32(var_0.a + var_0.a), !var_0.c.d.zz).a.b.c, !(!global0[_wgslsmith_index_u32(1u, 27u)]), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b.e) + _wgslsmith_f_op_vec3_f32(vec3<f32>(404f, var_0.c.e.x, -1022f) + var_0.b.e))), 1u));
    return !var_3.a.c.b.x;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec3<i32>) -> Struct_4 {
    let var_0 = func_4(func_2(~min(vec2<i32>(arg_0.a.x, u_input.a), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c.x, 14999i), vec2<i32>(-19956i, 19790i))), vec4<f32>(690f, global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(26693u, 3760u), 26u)], 1000f, global2[_wgslsmith_index_u32(func_4(Struct_4(Struct_2(vec4<f32>(892f, -742f, 124f, arg_0.e.x), Struct_1(vec2<i32>(arg_0.c, 437i), vec3<bool>(arg_0.d.x, true, arg_0.d.x), -3029i, vec3<bool>(arg_0.b.x, arg_0.d.x, arg_0.b.x), vec3<f32>(global2[_wgslsmith_index_u32(57391u, 26u)], -831f, -1704f)), arg_0, 1u), global2[_wgslsmith_index_u32(4294967295u, 26u)], Struct_2(vec4<f32>(-491f, arg_0.e.x, global2[_wgslsmith_index_u32(u_input.e, 26u)], 923f), Struct_1(vec2<i32>(u_input.a, arg_1), vec3<bool>(false, true, false), -1095i, vec3<bool>(true, arg_0.b.x, arg_0.d.x), vec3<f32>(global2[_wgslsmith_index_u32(global1.x, 26u)], global2[_wgslsmith_index_u32(u_input.e, 26u)], global2[_wgslsmith_index_u32(global1.x, 26u)])), arg_0, global1.x)), _wgslsmith_dot_vec3_i32(arg_2, u_input.c.zxy), u_input.b, Struct_1(arg_2.xy, global0[_wgslsmith_index_u32(8779u, 27u)], -23244i, arg_0.d, vec3<f32>(global2[_wgslsmith_index_u32(0u, 26u)], -803f, arg_0.e.x))).d, 26u)]), !(!arg_0.d.xy)), _wgslsmith_div_i32(15940i, 1i), _wgslsmith_mod_vec3_i32(-vec3<i32>(arg_1, i32(-1i) * -10541i, ~(-23397i)), u_input.b), arg_0).b.b;
    global2 = array<f32, 26>();
    let var_1 = ~(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.x, 47689u, 1u, 4294967295u), vec4<u32>(5841u, global1.x, 33299u, 0u), vec4<u32>(40502u, 4294967295u, u_input.e, global1.x))) ^ ((vec4<u32>(u_input.e, global1.x, 84579u, global1.x) & vec4<u32>(4294967295u, global1.x, 4294967295u, 4294967295u)) & (vec4<u32>(49686u, u_input.e, u_input.e, global1.x) & vec4<u32>(4294967295u, global1.x, u_input.e, u_input.e)))) >> (_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 29821u, 25308u, global1.x), vec4<u32>(global1.x, global1.x, 0u, global1.x)), (vec4<u32>(global1.x, u_input.e, global1.x, u_input.e) & vec4<u32>(4294967295u, 24002u, 1u, 0u)) | abs(vec4<u32>(0u, global1.x, 0u, 47077u))), firstLeadingBit(vec4<u32>(14387u, 1u, _wgslsmith_sub_u32(u_input.e, global1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 61194u, 16452u, global1.x), vec4<u32>(u_input.e, u_input.e, 0u, global1.x))))) % vec4<u32>(32u));
    let var_2 = func_2((select(arg_0.a, arg_2.xx, !var_0.x) << (vec2<u32>(~u_input.e, abs(4294967295u)) % vec2<u32>(32u))) ^ arg_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_0.e.x, global2[_wgslsmith_index_u32(global1.x, 26u)], arg_0.e.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e.x, 1067f, arg_0.e.x, 465f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-539f, 1885f, global2[_wgslsmith_index_u32(1712u, 26u)], arg_0.e.x)), any(vec4<bool>(var_0.x, false, arg_0.b.x, var_0.x)) & func_1()))), !arg_0.b.yx).c.c;
    global2 = array<f32, 26>();
    return Struct_4(func_4(func_2(abs(arg_0.a), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1590f, global2[_wgslsmith_index_u32(global1.x, 26u)], arg_0.e.x, arg_0.e.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e.x, 876f, 222f, -622f) + vec4<f32>(-1907f, 425f, global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(0u, 26u)])))), var_0.xx), u_input.d, ~u_input.c.xyw, Struct_1(~_wgslsmith_add_vec2_i32(vec2<i32>(-1i, 1370i), vec2<i32>(arg_1, arg_2.x)), vec3<bool>(all(vec3<bool>(false, var_0.x, false)), true, arg_0.e.x < -2397f), 1i, vec3<bool>(true, !var_2.d.x, !arg_0.b.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(arg_0.e)), _wgslsmith_f_op_vec3_f32(-var_2.e), true)))), _wgslsmith_div_f32(var_2.e.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(u_input.e, 26u)])) + arg_0.e.x), _wgslsmith_div_f32(func_4(Struct_4(Struct_2(vec4<f32>(global2[_wgslsmith_index_u32(var_1.x, 26u)], arg_0.e.x, arg_0.e.x, -757f), var_2, arg_0, u_input.e), global2[_wgslsmith_index_u32(var_1.x, 26u)], Struct_2(vec4<f32>(-1461f, 675f, -973f, arg_0.e.x), Struct_1(u_input.c.zx, vec3<bool>(false, var_2.d.x, true), -5791i, global0[_wgslsmith_index_u32(1u, 27u)], vec3<f32>(global2[_wgslsmith_index_u32(0u, 26u)], var_2.e.x, -620f)), var_2, 4294967295u)), u_input.a, vec3<i32>(u_input.d, -14164i, -1i), var_2).c.e.x, _wgslsmith_f_op_f32(449f - arg_0.e.x)))), Struct_2(func_2(var_2.a, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1014f, global2[_wgslsmith_index_u32(var_1.x, 26u)], arg_0.e.x, arg_0.e.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(508f, global2[_wgslsmith_index_u32(4294967295u, 26u)], 385f, 1328f), vec4<f32>(global2[_wgslsmith_index_u32(30781u, 26u)], 1009f, 610f, -1109f), true)))), vec2<bool>(false, true != var_2.d.x)).a.a, Struct_1(-select(arg_0.a, vec2<i32>(u_input.c.x, var_2.a.x), false), !var_0, select(-arg_0.c, -1i, var_2.d.x), vec3<bool>(func_1(), var_0.x, !arg_0.d.x), vec3<f32>(func_2(u_input.b.xx, vec4<f32>(arg_0.e.x, arg_0.e.x, arg_0.e.x, 938f), vec2<bool>(var_2.b.x, arg_0.b.x)).c.c.e.x, -881f, -1094f)), var_2, _wgslsmith_add_u32(~var_1.x, abs(_wgslsmith_clamp_u32(56764u, 23369u, global1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 18733u;
    let var_1 = firstLeadingBit(-u_input.c.x << (~(~0u) % 32u)) & abs(u_input.c.x);
    let var_2 = func_5(Struct_1(select(-select(vec2<i32>(2147483647i, u_input.b.x), u_input.c.yx, vec2<bool>(false, true)), ~vec2<i32>(u_input.a, 24487i), vec2<bool>(false, false)), vec3<bool>(all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), false)), func_1(), false), var_1 & (_wgslsmith_div_i32(2147483647i, -1i) << (_wgslsmith_dot_vec3_u32(global1.wwy, vec3<u32>(0u, 20486u, 14823u)) % 32u)), vec3<bool>(true, false, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 26u)], 1858f, global2[_wgslsmith_index_u32(0u, 26u)]))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 26u)], 199f, global2[_wgslsmith_index_u32(global1.x, 26u)]) + vec3<f32>(-1749f, 1000f, -981f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2[_wgslsmith_index_u32(global1.x, 26u)], global2[_wgslsmith_index_u32(6908u, 26u)], global2[_wgslsmith_index_u32(global1.x, 26u)])))))), ~(-(~max(var_1, 0i))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1, u_input.b.x, -2147483647i, u_input.d) << (_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.e, u_input.e, 5411u), vec4<u32>(8207u, u_input.e, u_input.e, 16419u)) % vec4<u32>(32u)), vec4<i32>(1i, ~(-8976i), firstTrailingBit(var_1), abs(var_1))), func_2(vec2<i32>(~var_1, var_1), vec4<f32>(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(u_input.e, 26u)])), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(21847u, 26u)]), _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(85695u, 26u)], global2[_wgslsmith_index_u32(51759u, 26u)])), global2[_wgslsmith_index_u32(func_4(Struct_4(Struct_2(vec4<f32>(global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)], global2[_wgslsmith_index_u32(global1.x, 26u)], 2090f), Struct_1(vec2<i32>(u_input.c.x, var_1), vec3<bool>(true, false, false), u_input.a, global0[_wgslsmith_index_u32(49639u, 27u)], vec3<f32>(-2338f, -1000f, 208f)), Struct_1(vec2<i32>(-2147483647i, var_1), global0[_wgslsmith_index_u32(0u, 27u)], -73955i, global0[_wgslsmith_index_u32(var_0, 27u)], vec3<f32>(global2[_wgslsmith_index_u32(u_input.e, 26u)], 763f, -875f)), u_input.e), 1775f, Struct_2(vec4<f32>(514f, global2[_wgslsmith_index_u32(1u, 26u)], -1403f, -985f), Struct_1(vec2<i32>(u_input.a, 1i), vec3<bool>(false, false, true), 1i, global0[_wgslsmith_index_u32(4294967295u, 27u)], vec3<f32>(826f, global2[_wgslsmith_index_u32(var_0, 26u)], global2[_wgslsmith_index_u32(global1.x, 26u)])), Struct_1(vec2<i32>(2147483647i, var_1), vec3<bool>(false, false, true), 1i, global0[_wgslsmith_index_u32(u_input.e, 27u)], vec3<f32>(global2[_wgslsmith_index_u32(99962u, 26u)], 656f, 1077f)), global1.x)), u_input.a, vec3<i32>(u_input.b.x, var_1, -2147483647i), Struct_1(u_input.b.zx, vec3<bool>(true, true, false), -2147483647i, vec3<bool>(true, false, true), vec3<f32>(-177f, -639f, 886f))).d, 26u)]), vec2<bool>(true, true)).a.c.c, var_1));
    let var_3 = vec2<bool>(any(vec4<bool>(any(!vec4<bool>(var_2.c.c.b.x, true, false, true)), !(var_2.a.b.b.x && false), true | select(true, var_2.c.c.b.x, var_2.c.b.d.x), var_2.c.b.d.x)), var_2.c.c.d.x);
    var var_4 = func_4(Struct_4(func_5(var_2.a.c, var_2.c.b.a.x, vec3<i32>(var_2.a.c.c, -var_1, firstLeadingBit(u_input.a))).a, _wgslsmith_f_op_f32(max(var_2.c.c.e.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-184f)))))), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-549f, var_2.a.c.e.x, -284f, -485f), vec4<f32>(var_2.b, global2[_wgslsmith_index_u32(var_0, 26u)], global2[_wgslsmith_index_u32(82540u, 26u)], global2[_wgslsmith_index_u32(var_2.a.d, 26u)]))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, 903f, var_2.c.c.e.x, 1217f))), var_2.c.c, var_2.a.b, 41557u)), func_4(func_5(var_2.a.c, reverseBits(1i ^ var_1), vec3<i32>(~u_input.b.x, _wgslsmith_mod_i32(var_1, var_2.c.b.c), u_input.d)), u_input.b.x, ~(~abs(vec3<i32>(8989i, var_1, var_2.a.b.a.x))), var_2.c.b).b.c, u_input.b, Struct_1(-(vec2<i32>(-46525i, 0i) | var_2.c.b.a), select(select(var_2.c.b.d, vec3<bool>(true, true, true), func_5(var_2.a.c, var_2.c.c.a.x, u_input.b).a.c.b), func_4(Struct_4(var_2.a, -293f, Struct_2(vec4<f32>(global2[_wgslsmith_index_u32(32615u, 26u)], 642f, var_2.c.c.e.x, global2[_wgslsmith_index_u32(84644u, 26u)]), Struct_1(u_input.b.zx, var_2.a.c.d, u_input.c.x, vec3<bool>(false, var_2.a.b.b.x, var_3.x), vec3<f32>(-405f, global2[_wgslsmith_index_u32(4294967295u, 26u)], global2[_wgslsmith_index_u32(var_0, 26u)])), var_2.c.c, global1.x)), -u_input.b.x, u_input.b, var_2.a.c).c.d, vec3<bool>(func_5(var_2.a.c, 2147483647i, u_input.c.zwy).c.b.b.x, select(var_3.x, var_3.x, true), false)), ~(-4968i) << (~_wgslsmith_mod_u32(33326u, global1.x) % 32u), vec3<bool>(true & any(var_2.c.c.d.xy), var_3.x, false), _wgslsmith_f_op_vec3_f32(vec3<f32>(918f, -1150f, var_2.b) + _wgslsmith_f_op_vec3_f32(var_2.a.c.e - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2[_wgslsmith_index_u32(global1.x, 26u)], var_2.c.a.x, var_2.b)))))));
    global3 = array<vec4<i32>, 5>();
    var var_5 = Struct_3(func_4(Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(var_4.a * var_4.a), func_2(vec2<i32>(-2147483647i, u_input.c.x), vec4<f32>(241f, var_2.a.b.e.x, global2[_wgslsmith_index_u32(16407u, 26u)], -179f), var_4.b.d.yz).a.b, Struct_1(u_input.b.zy, var_4.c.b, 2147483647i, var_4.c.d, vec3<f32>(var_4.c.e.x, global2[_wgslsmith_index_u32(var_0, 26u)], 1000f)), 1u), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 26u)] + global2[_wgslsmith_index_u32(72028u, 26u)]), var_2.a), -21936i, vec3<i32>(0i, 2147483647i, -2147483647i), func_2(abs(reverseBits(vec2<i32>(var_2.c.c.a.x, 42956i))), var_2.c.a, func_2(var_2.c.c.a, vec4<f32>(1000f, var_2.b, 1110f, 631f), var_3).a.b.d.xy).c.c).c, _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(min(global1.yzy, global1.yzz) | select(vec3<u32>(var_0, 0u, 54119u), vec3<u32>(0u, var_0, 4294967295u), vec3<bool>(false, var_4.b.d.x, var_2.a.b.d.x)), ~global1.wyx, select(vec3<u32>(var_4.d, 1u, 22655u), vec3<u32>(1u, u_input.e, 44201u) >> (global1.yxx % vec3<u32>(32u)), -1320f != global2[_wgslsmith_index_u32(0u, 26u)])), _wgslsmith_div_vec3_u32(global1.wyw, global1.xyy), _wgslsmith_mod_vec3_u32(global1.wzz, global1.yzw)), func_5(Struct_1(vec2<i32>(32255i, ~(-3694i)), var_2.a.c.b, -func_2(vec2<i32>(9496i, var_1), vec4<f32>(var_2.c.c.e.x, var_4.b.e.x, 3090f, global2[_wgslsmith_index_u32(1u, 26u)]), var_2.c.c.b.xz).c.c.a.x, func_2(u_input.b.xz, var_4.a, var_4.b.d.xz).a.b.d, var_4.a.wwx), var_2.a.c.a.x, vec3<i32>(2147483647i, 4561i, min(u_input.c.x, 51934i))).b);
    var_4 = Struct_2(var_4.a, var_2.c.b, var_4.b, ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(var_4.d, 1u, 1u), reverseBits(vec3<u32>(global1.x, u_input.e, var_2.a.d)), !var_5.a.d.x), abs(var_5.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(~(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_0, global1.x, global1.x), vec4<u32>(var_5.b.x, 1u, var_5.b.x, global1.x)) >> (min(vec4<u32>(0u, 46440u, 34555u, var_5.b.x), vec4<u32>(4294967295u, 57943u, 39171u, 0u)) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(vec4<u32>(var_5.b.x & u_input.e, var_2.c.d, 1u, ~var_5.b.x), ~vec4<u32>(72704u, global1.x, var_5.b.x, 4294967295u))), ~max(vec2<i32>(_wgslsmith_mult_i32(-38633i, u_input.b.x), i32(-1i) * -1i), _wgslsmith_add_vec2_i32(var_2.a.b.a, firstTrailingBit(var_4.b.a))));
}

