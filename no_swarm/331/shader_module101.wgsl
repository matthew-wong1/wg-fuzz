struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: Struct_2,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
    c: f32,
    d: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<bool>,
    c: vec4<i32>,
    d: Struct_4,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 20>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1124f, _wgslsmith_f_op_f32(ceil(927f))))), arg_0.d.x)));
    global0 = array<vec3<f32>, 20>();
    let var_1 = -1907i;
    let var_2 = -(~vec3<i32>(u_input.d, -(~(-59487i)), 1i));
    let var_3 = Struct_5(Struct_4(arg_0, _wgslsmith_clamp_vec2_u32(vec2<u32>(118854u, arg_0.c.a.a) & ~arg_0.b.xy, vec2<u32>(_wgslsmith_sub_u32(arg_0.c.a.a, arg_0.c.a.a), u_input.c), firstTrailingBit(max(vec2<u32>(u_input.b.x, 79963u), vec2<u32>(28498u, u_input.e.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * 1f))), arg_0.c.a.d), vec4<bool>(any(!(!arg_0.a)), !(var_0.x > 906f) | any(select(vec4<bool>(arg_0.c.a.b, arg_0.c.a.b, arg_1.x, arg_0.a.x), vec4<bool>(arg_0.c.a.b, arg_1.x, arg_1.x, arg_0.a.x), vec4<bool>(false, arg_1.x, false, arg_1.x))), arg_1.x && arg_1.x, false & any(select(vec4<bool>(arg_0.c.a.b, arg_1.x, true, true), vec4<bool>(true, false, arg_1.x, true), true))), -(~vec4<i32>(_wgslsmith_sub_i32(arg_0.c.a.c, -2147483647i), var_2.x, _wgslsmith_mult_i32(u_input.a.x, 35274i), abs(-8235i))), Struct_4(Struct_3(select(vec3<bool>(false, true, arg_0.a.x), !vec3<bool>(arg_0.a.x, arg_0.a.x, arg_1.x), select(vec3<bool>(arg_0.a.x, false, false), arg_0.a, arg_1.x)), countOneBits(_wgslsmith_mod_vec4_u32(arg_0.b, arg_0.b)), Struct_2(Struct_1(arg_0.c.a.a, false, var_1, var_0.x), -var_2.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1224f, var_0.x, -869f))), ~(~(~vec2<u32>(0u, u_input.b.x))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-462f)))), arg_0);
    return vec3<i32>(_wgslsmith_dot_vec2_i32(select(vec2<i32>(var_2.x, u_input.a.x), var_3.c.xz, false) >> (abs(vec2<u32>(4294967295u, 19982u)) % vec2<u32>(32u)), vec2<i32>(var_3.c.x, arg_0.c.b) ^ vec2<i32>(_wgslsmith_dot_vec4_i32(var_3.c, var_3.c), var_1)), i32(-1i) * -var_2.x, u_input.a.x);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: vec4<f32>) -> Struct_3 {
    global0 = array<vec3<f32>, 20>();
    let var_0 = u_input.a;
    let var_1 = vec3<bool>(true, true, true);
    var var_2 = _wgslsmith_mod_vec4_i32(-((arg_1 ^ arg_1) ^ arg_1), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(reverseBits(arg_1), arg_1), arg_1)) & arg_1;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), arg_2)))))));
    return Struct_3(vec3<bool>(countOneBits(2147483647i) > _wgslsmith_dot_vec3_i32(var_2.xxx & var_2.xwz, func_3(Struct_3(var_1, vec4<u32>(u_input.b.x, 1u, u_input.b.x, 0u), Struct_2(Struct_1(u_input.c, var_1.x, var_0.x, arg_2.x), var_2.x), global0[_wgslsmith_index_u32(0u, 20u)]), var_1.yx)), !var_1.x, !var_1.x), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, abs(1u | u_input.b.x), min(0u, 1u), abs(reverseBits(u_input.e.x))), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b.x, 1u, u_input.c, 4294967295u), vec4<u32>(0u, 23031u, u_input.c, u_input.e.x) << (vec4<u32>(159746u, u_input.c, u_input.e.x, 4294967295u) % vec4<u32>(32u)))), Struct_2(Struct_1(~u_input.e.x, var_1.x, var_0.x, var_3.x), min(2147483647i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(0i, var_0.x), ~2147483647i, abs(-2147483647i)))), vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(step(-1202f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1426f + var_3.x)))), -1000f));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_4) -> Struct_5 {
    return Struct_5(arg_3, select(!select(vec4<bool>(arg_3.a.c.a.b, arg_2.a.b, arg_3.a.c.a.b, true), select(vec4<bool>(arg_1.c.a.b, false, arg_3.a.c.a.b, arg_1.c.a.b), vec4<bool>(true, arg_2.a.b, true, true), vec4<bool>(arg_3.a.c.a.b, false, false, false)), select(vec4<bool>(false, arg_3.a.c.a.b, true, false), vec4<bool>(arg_2.a.b, false, false, false), true)), select(vec4<bool>(arg_2.a.b, false, arg_3.a.a.x, arg_1.c.a.b), vec4<bool>(all(arg_1.a), !arg_2.a.b, func_2(u_input.a, vec4<i32>(arg_2.a.c, -2147483647i, arg_2.b, arg_1.c.b), vec4<f32>(1557f, arg_2.a.d, arg_2.a.d, 118f)).a.x, false), false), !select(!vec4<bool>(true, arg_3.a.a.x, arg_1.a.x, arg_2.a.b), !vec4<bool>(arg_1.c.a.b, true, false, true), vec4<bool>(true, false, false, true))), _wgslsmith_add_vec4_i32(~vec4<i32>(arg_1.c.a.c, arg_3.a.c.a.c >> (arg_3.a.c.a.a % 32u), _wgslsmith_dot_vec2_i32(u_input.a, u_input.a), ~1i), vec4<i32>(_wgslsmith_mod_i32(arg_1.c.b, -1i), 0i, ~u_input.a.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.d, -35651i, 811i, -1i), vec4<i32>(-1i, u_input.a.x, 63191i, 25315i)))), arg_3, arg_3.a);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<i32>) -> Struct_4 {
    global0 = array<vec3<f32>, 20>();
    global0 = array<vec3<f32>, 20>();
    var var_0 = func_4(u_input.e, func_2(-firstLeadingBit(vec2<i32>(arg_1.x, arg_1.x)) >> (abs(min(u_input.b.yy, u_input.b.zz)) % vec2<u32>(32u)), arg_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(386f, arg_0.x, arg_0.x, arg_0.x)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.x, 734f, arg_0.x, arg_0.x)))))), Struct_2(func_2(-_wgslsmith_add_vec2_i32(u_input.a, u_input.a), ~min(arg_1, vec4<i32>(0i, -36468i, arg_1.x, u_input.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, -1905f, 725f, arg_0.x), vec4<f32>(-2148f, arg_0.x, arg_0.x, 1588f))))).c.a, 30670i), Struct_4(func_2(_wgslsmith_add_vec2_i32(~vec2<i32>(u_input.a.x, 0i), u_input.a), select(vec4<i32>(16821i, 1i, arg_1.x, arg_1.x) | arg_1, _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.x, 1i, arg_1.x, arg_1.x), arg_1), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), true)), vec4<f32>(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(2329f - -289f), func_2(arg_1.zx, arg_1, vec4<f32>(arg_0.x, arg_0.x, 322f, arg_0.x)).d.x)), vec2<u32>(45281u, 0u) | u_input.b.zz, arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -366f))));
    global0 = array<vec3<f32>, 20>();
    global0 = array<vec3<f32>, 20>();
    return var_0.d;
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: Struct_4) -> f32 {
    let var_0 = Struct_5(Struct_4(func_4(abs(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), u_input.b)), arg_2.a, arg_2.a.c, Struct_4(func_4(arg_2.a.b.zyz, Struct_3(vec3<bool>(false, arg_2.a.a.x, false), vec4<u32>(12613u, arg_2.a.b.x, u_input.b.x, 4294967295u), Struct_2(Struct_1(arg_2.a.b.x, true, 24693i, arg_2.a.d.x), -1i), vec3<f32>(1351f, arg_2.a.d.x, -262f)), Struct_2(arg_2.a.c.a, arg_0), arg_2).d.a, arg_2.a.b.xy >> (arg_2.b % vec2<u32>(32u)), _wgslsmith_f_op_f32(step(arg_1, arg_2.d)), _wgslsmith_f_op_f32(-arg_1))).e, ~func_1(_wgslsmith_div_vec3_f32(arg_2.a.d, arg_2.a.d), ~vec4<i32>(-29579i, arg_2.a.c.b, -33362i, -85463i)).a.b.yy, arg_1, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.d))), -634f, func_2(u_input.a, _wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.a.c.a.c, arg_2.a.c.a.c, -1i, -2147483647i), vec4<i32>(arg_0, -14342i, 0i, -86775i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1054f, 594f, arg_1, -242f) + vec4<f32>(356f, -642f, arg_1, arg_1))).a.x))), !(!vec4<bool>(true, true, select(true, arg_2.a.a.x, arg_2.a.c.a.b), u_input.b.x != u_input.c)), firstLeadingBit((vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, -2147483647i, 21657i, arg_2.a.c.b)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e.x, arg_2.b.x, arg_2.a.c.a.a, 0u), vec4<u32>(arg_2.a.c.a.a, 4294967295u, 0u, arg_2.b.x)) % vec4<u32>(32u))), Struct_4(func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(278f, 763f, arg_2.c))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.c, -2472f, -1236f) - arg_2.a.d)), vec4<i32>(u_input.d, u_input.a.x, countOneBits(12779i), ~u_input.a.x)).a, _wgslsmith_clamp_vec2_u32(vec2<u32>(31294u, ~1u), ~vec2<u32>(12329u, 4294967295u) >> (_wgslsmith_sub_vec2_u32(arg_2.b, arg_2.a.b.wx) % vec2<u32>(32u)), func_1(vec3<f32>(arg_2.d, arg_1, arg_2.d), vec4<i32>(1i, -2408i, 0i, -2147483647i)).a.b.wz), -1071f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_1, 1000f), arg_1, arg_2.a.c.a.b))), func_2((vec2<i32>(1i, 1081i) | _wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(arg_2.a.c.b, -2147483647i))) & u_input.a, ~vec4<i32>(1i, func_2(vec2<i32>(u_input.d, -2147483647i), vec4<i32>(-2147483647i, arg_0, -1i, 0i), vec4<f32>(arg_1, -146f, arg_2.d, arg_1)).c.b, arg_2.a.c.b, reverseBits(u_input.d)), vec4<f32>(_wgslsmith_f_op_f32(-arg_2.c), arg_2.d, _wgslsmith_f_op_f32(step(arg_2.d, func_2(u_input.a, vec4<i32>(u_input.a.x, arg_2.a.c.b, 0i, -1i), vec4<f32>(1000f, arg_2.d, -155f, 637f)).d.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(734f)), _wgslsmith_f_op_f32(-arg_1))))));
    var var_1 = arg_2.a.c.a.c;
    var var_2 = var_0.d.a.c;
    var_1 = reverseBits(-41308i);
    var_1 = 2147483647i;
    return _wgslsmith_div_f32(933f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -483f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1577f + 1681f)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(52220i, 1f, func_1(global0[_wgslsmith_index_u32(4294967295u, 20u)], vec4<i32>(0i, u_input.d, -4952i, -2147483647i))))), !(!all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false)))), false);
    let var_1 = select(!(!vec3<bool>(all(vec2<bool>(var_0.x, true)), any(vec2<bool>(var_0.x, false)), true)), select(vec3<bool>(var_0.x, func_2(vec2<i32>(u_input.a.x, 10225i), ~vec4<i32>(37512i, u_input.d, u_input.a.x, -18693i), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1700f, 772f, -1550f, 1009f) + vec4<f32>(2111f, 197f, 1071f, -2115f))).c.a.b, all(func_2(u_input.a, vec4<i32>(-32156i, -2147483647i, 0i, u_input.d), vec4<f32>(115f, -983f, -1000f, 1201f)).a)), !vec3<bool>(true, !var_0.x, var_0.x), select(func_1(vec3<f32>(219f, 278f, -730f), vec4<i32>(u_input.d, 0i, 16283i, u_input.d) >> (vec4<u32>(u_input.c, 45228u, u_input.c, u_input.c) % vec4<u32>(32u))).a.a, !(!vec3<bool>(var_0.x, var_0.x, var_0.x)), vec3<bool>(false, true, any(vec3<bool>(var_0.x, var_0.x, var_0.x))))), select(vec3<bool>(true, var_0.x, var_0.x), !func_2(u_input.a, vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x) | vec4<i32>(u_input.d, u_input.d, 2147483647i, u_input.d), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(795f, 974f, 1357f, -580f)))).a, true));
    var var_2 = 0i;
    var_0 = select(vec3<bool>(any(var_1), var_1.x, !var_0.x), var_1, var_1);
    var var_3 = !(!(!var_1.x));
    var_2 = i32(-1i) * -1i;
    let var_4 = vec2<bool>(var_0.x, true);
    var_0 = !vec3<bool>(true, (false || var_1.x) || true, var_4.x);
    let var_5 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-472f))));
    let x = u_input.a;
    s_output = StorageBuffer(max(~vec4<u32>(19424u, u_input.b.x, u_input.e.x, 1u), firstLeadingBit(~abs(vec4<u32>(18041u, 0u, u_input.c, 1u)))), var_5, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_5, _wgslsmith_f_op_f32(-var_5), var_5, _wgslsmith_f_op_f32(f32(-1f) * -733f)) + vec4<f32>(_wgslsmith_f_op_f32(sign(1349f)), var_5, _wgslsmith_f_op_f32(825f + var_5), -983f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_5, 943f, 281f, 407f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(699f, 764f, -612f, -1000f))))), u_input.a.x);
}

