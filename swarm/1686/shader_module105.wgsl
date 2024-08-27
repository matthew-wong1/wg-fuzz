struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec2<bool>,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: u32,
    d: vec2<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 28>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> bool {
    global0 = array<Struct_3, 28>();
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(9829u | _wgslsmith_div_u32(select(max(120617u, 18080u), 18233u, all(vec2<bool>(false, true))), 4294967295u), ~1u, ~19421u), 28u)];
    global0 = array<Struct_3, 28>();
    var var_1 = countOneBits(~(-u_input.a));
    let var_2 = var_0.a.wzy;
    return any(select(select(select(select(vec2<bool>(true, true), var_0.e.b.e, var_0.e.b.c), !vec2<bool>(var_0.e.a.a, var_0.e.b.c.x), any(vec3<bool>(true, false, false))), var_0.e.a.c, true), select(select(!var_0.e.a.c, !vec2<bool>(var_0.e.c, false), false), select(vec2<bool>(false, false), vec2<bool>(false, var_0.e.a.a), !var_0.e.b.e), var_0.e.c), vec2<bool>(any(vec3<bool>(false, true, var_0.e.b.a)), var_0.e.a.a)));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_5) -> vec2<bool> {
    global0 = array<Struct_3, 28>();
    var var_0 = Struct_4(arg_1.b.x, Struct_3(max(~arg_2.b.a, _wgslsmith_clamp_vec4_u32(abs(arg_2.b.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.d.b.x, 0u, arg_2.b.d.x, arg_2.a), vec4<u32>(50395u, 26600u, arg_2.c.a.b.x, arg_1.b.x), vec4<u32>(arg_2.c.b.b.x, 4294967295u, arg_2.a, arg_2.d.b.x)), abs(arg_2.b.a))), _wgslsmith_f_op_vec4_f32(trunc(arg_2.b.b)), 12710u, _wgslsmith_mod_vec2_u32(~vec2<u32>(arg_1.b.x, 1u), _wgslsmith_sub_vec2_u32(~arg_2.c.a.b, _wgslsmith_div_vec2_u32(arg_2.c.a.b, vec2<u32>(4294967295u, arg_2.a)))), arg_2.b.e), Struct_2(Struct_1(!arg_1.a, vec2<u32>(_wgslsmith_dot_vec2_u32(arg_2.b.a.zz, arg_2.c.a.b), ~255u), arg_3.b.xy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1192f - -1081f) + -793f), vec2<bool>(true, true)), Struct_1(false, vec2<u32>(~69095u, ~1u), !vec2<bool>(false, arg_3.b.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(arg_0.x, arg_2.c.a.d)))), select(vec2<bool>(true, arg_2.d.c.x), !arg_1.e, arg_1.e)), arg_2.d.a), arg_1);
    let var_1 = Struct_5(max(abs(arg_3.a), vec4<i32>(0i, 1i, _wgslsmith_mod_i32(firstLeadingBit(-13369i), -2147483647i), _wgslsmith_clamp_i32(arg_3.a.x, 0i, -u_input.b))), vec3<bool>(!(!arg_1.c.x) & arg_3.b.x, arg_2.c.a.a, false), -353f);
    global0 = array<Struct_3, 28>();
    let var_2 = arg_2.a & _wgslsmith_mod_u32(1u, ~arg_1.b.x);
    return vec2<bool>(var_0.d.c.x, false);
}

fn func_2(arg_0: i32) -> bool {
    global0 = array<Struct_3, 28>();
    var var_0 = vec2<bool>(true, true);
    let var_1 = Struct_1(any(!(!vec3<bool>(true, var_0.x, var_0.x))), max(select(reverseBits(vec2<u32>(1u, 1u)), vec2<u32>(~15443u, 55683u << (1u % 32u)), !all(vec4<bool>(var_0.x, false, false, var_0.x))), vec2<u32>(1u, 1u)), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-373f, -1000f, -270f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-349f, -1572f, 2092f) - vec3<f32>(663f, 299f, 834f))))), Struct_1(!var_0.x, ~vec2<u32>(1u, 1u), !select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, true), vec2<bool>(false, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -710f)), !select(vec2<bool>(true, false), vec2<bool>(true, true), false)), Struct_4(~min(1u, 1u), global0[_wgslsmith_index_u32(14170u << (_wgslsmith_div_u32(12287u, 6305u) % 32u), 28u)], Struct_2(Struct_1(true, vec2<u32>(66085u, 1u), vec2<bool>(var_0.x, true), 253f, vec2<bool>(var_0.x, false)), Struct_1(true, vec2<u32>(4294967295u, 1u), vec2<bool>(true, true), -807f, vec2<bool>(var_0.x, var_0.x)), func_3()), Struct_1(var_0.x, select(vec2<u32>(1u, 1181u), vec2<u32>(180u, 98304u), var_0.x), !vec2<bool>(true, var_0.x), _wgslsmith_f_op_f32(round(801f)), vec2<bool>(false, true))), Struct_5(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, arg_0), vec2<i32>(-16030i, -6471i)), -arg_0, -59538i >> (0u % 32u), _wgslsmith_mult_i32(-1i, arg_0)), select(select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, var_0.x, var_0.x), false), vec3<bool>(var_0.x, false, true), select(vec3<bool>(var_0.x, true, false), vec3<bool>(false, false, false), var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -896f) - _wgslsmith_div_f32(-244f, -1000f)))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1291f)))))), select(vec2<bool>(true, true), vec2<bool>(!var_0.x != true, any(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, true, var_0.x), var_0.x))), all(vec3<bool>(all(vec3<bool>(var_0.x, var_0.x, var_0.x)), true, var_0.x))));
    var var_2 = min(max(reverseBits(vec4<u32>(var_1.b.x, 36198u, 8528u, var_1.b.x)), min(vec4<u32>(4294967295u, 4294967295u, 0u, 0u) & vec4<u32>(var_1.b.x, var_1.b.x, 1u, 84363u), ~vec4<u32>(var_1.b.x, var_1.b.x, 41199u, var_1.b.x))), vec4<u32>(0u, 32635u, 1u, select(_wgslsmith_sub_u32(var_1.b.x, 81865u), max(var_1.b.x, var_1.b.x), all(vec4<bool>(true, var_0.x, true, false))))) & max(~vec4<u32>(var_1.b.x, _wgslsmith_add_u32(var_1.b.x, var_1.b.x), ~var_1.b.x, 41815u), _wgslsmith_add_vec4_u32(vec4<u32>(var_1.b.x, 15315u, var_1.b.x, var_1.b.x) | firstLeadingBit(vec4<u32>(var_1.b.x, 4294967295u, var_1.b.x, var_1.b.x)), firstLeadingBit(vec4<u32>(4657u, 9326u, 9470u, 4294967295u) ^ vec4<u32>(var_1.b.x, 1614u, 4294967295u, 89148u))));
    let var_3 = var_1.a;
    return func_4(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(673f, -487f, 354f) * vec3<f32>(var_1.d, var_1.d, -1738f))))), var_1, Struct_4(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 28u)], Struct_2(Struct_1(true, min(vec2<u32>(var_2.x, 1u), var_1.b), vec2<bool>(false, var_0.x), -336f, vec2<bool>(var_1.c.x, var_1.a)), var_1, var_0.x), Struct_1(false, abs(~vec2<u32>(6143u, var_2.x)), !var_1.c, var_1.d, select(!var_1.e, !var_1.e, vec2<bool>(false, false)))), Struct_5(vec4<i32>(-2147483647i, abs(-42853i), _wgslsmith_sub_i32(firstLeadingBit(arg_0), reverseBits(u_input.b)), arg_0), vec3<bool>(all(vec3<bool>(false, false, var_0.x)) || (var_1.b.x >= var_2.x), all(!vec4<bool>(var_1.a, var_3, true, false)), !var_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1542f), _wgslsmith_f_op_f32(min(-304f, _wgslsmith_f_op_f32(select(var_1.d, var_1.d, var_0.x))))))).x;
}

fn func_1() -> bool {
    global0 = array<Struct_3, 28>();
    var var_0 = Struct_1(select(all(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), true, all(vec4<bool>(true, true, true, true))), ~vec2<u32>(4294967295u, max(1u, 17403u)) & _wgslsmith_sub_vec2_u32(abs(vec2<u32>(1u, 1u)), select(~vec2<u32>(38790u, 4294967295u), vec2<u32>(0u, 149106u), true)), !(!select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, true), true)), _wgslsmith_f_op_f32(-1208f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(191f)) - 2042f)), select(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))), !(!select(vec2<bool>(false, false), vec2<bool>(true, false), true)), vec2<bool>(!any(vec2<bool>(false, true)), func_2(_wgslsmith_sub_i32(u_input.b, u_input.b)))));
    let var_1 = Struct_4(0u, Struct_3(vec4<u32>(abs(var_0.b.x), var_0.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(30300u, 4294967295u, 4294967295u), vec3<u32>(1u, var_0.b.x, var_0.b.x)), abs(var_0.b.x)) & vec4<u32>(countOneBits(var_0.b.x), 4294967295u, 17335u, _wgslsmith_add_u32(21135u, var_0.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, 753f, -1168f, 248f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(327f, 235f, var_0.d, 246f) - vec4<f32>(1293f, -813f, var_0.d, var_0.d))))), _wgslsmith_add_u32(~(~var_0.b.x), var_0.b.x), select(_wgslsmith_sub_vec2_u32(select(vec2<u32>(var_0.b.x, 0u), var_0.b, var_0.a), vec2<u32>(33095u, var_0.b.x) | var_0.b), ~(vec2<u32>(4294967295u, 30143u) << (var_0.b % vec2<u32>(32u))), var_0.e.x), Struct_2(Struct_1(false, ~var_0.b, !vec2<bool>(var_0.e.x, var_0.e.x), var_0.d, !var_0.e), Struct_1(true, _wgslsmith_mod_vec2_u32(vec2<u32>(0u, var_0.b.x), vec2<u32>(var_0.b.x, 4294967295u)), vec2<bool>(var_0.c.x, true), _wgslsmith_f_op_f32(1000f + var_0.d), vec2<bool>(true, var_0.e.x)), 4294967295u >= var_0.b.x)), Struct_2(Struct_1(!(!var_0.c.x), _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(49288u, var_0.b.x), vec2<u32>(47630u, 1u)), ~var_0.b), vec2<bool>(!var_0.a, select(var_0.e.x, true, var_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1257f * -147f) * _wgslsmith_f_op_f32(-var_0.d)), vec2<bool>(false, true)), Struct_1(true, ~vec2<u32>(1u, var_0.b.x), vec2<bool>(var_0.c.x, true), 267f, func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1125f, 249f, 163f)), Struct_1(false, var_0.b, var_0.c, 419f, vec2<bool>(false, false)), Struct_4(1u, Struct_3(vec4<u32>(var_0.b.x, 104266u, var_0.b.x, var_0.b.x), vec4<f32>(466f, 2097f, var_0.d, var_0.d), var_0.b.x, vec2<u32>(var_0.b.x, var_0.b.x), Struct_2(Struct_1(var_0.a, vec2<u32>(var_0.b.x, var_0.b.x), var_0.c, -1121f, var_0.e), Struct_1(var_0.e.x, vec2<u32>(var_0.b.x, var_0.b.x), vec2<bool>(false, var_0.e.x), -255f, vec2<bool>(var_0.c.x, var_0.c.x)), true)), Struct_2(Struct_1(false, var_0.b, var_0.e, var_0.d, vec2<bool>(var_0.e.x, false)), Struct_1(var_0.c.x, var_0.b, var_0.e, var_0.d, vec2<bool>(var_0.a, false)), true), Struct_1(true, vec2<u32>(36085u, 4294967295u), var_0.e, var_0.d, vec2<bool>(true, false))), Struct_5(vec4<i32>(u_input.a, u_input.a, 60719i, 12923i), vec3<bool>(true, false, var_0.a), 724f))), false), Struct_1(var_0.a, _wgslsmith_clamp_vec2_u32(var_0.b, countOneBits(vec2<u32>(4294967295u, var_0.b.x)), vec2<u32>(countOneBits(var_0.b.x), ~var_0.b.x)), select(var_0.e, var_0.c, !var_0.c.x | (false && var_0.a)), var_0.d, var_0.c));
    var_0 = var_1.d;
    var var_2 = _wgslsmith_mod_i32(~_wgslsmith_clamp_i32(-1i, reverseBits(-u_input.a), 4855i), -(~0i));
    return all(select(select(select(select(vec4<bool>(var_0.c.x, false, var_1.b.e.c, var_0.c.x), vec4<bool>(true, false, var_0.e.x, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, var_0.a, var_1.d.a, var_1.d.e.x)), select(vec4<bool>(false, var_0.c.x, var_0.e.x, true), vec4<bool>(true, var_0.c.x, true, true), all(vec2<bool>(var_1.c.a.a, false))), var_0.c.x), select(!select(vec4<bool>(false, var_1.b.e.c, var_0.c.x, var_1.b.e.b.a), vec4<bool>(var_1.c.b.e.x, var_0.c.x, var_1.b.e.c, false), vec4<bool>(false, var_1.c.a.a, true, var_0.e.x)), !(!vec4<bool>(true, true, var_0.c.x, var_0.e.x)), select(false, true, true)), vec4<bool>(any(vec4<bool>(true, var_1.b.e.c, var_0.a, true)) && true, !any(vec2<bool>(var_1.b.e.c, var_1.b.e.c)), true, var_1.c.c || true)));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: Struct_5, arg_3: u32) -> Struct_2 {
    var var_0 = any(!vec4<bool>((1i == arg_2.a.x) && (arg_0.x && true), false, !func_3(), arg_0.x));
    let var_1 = Struct_3((vec4<u32>(countOneBits(arg_3), _wgslsmith_sub_u32(arg_3, arg_3), arg_3, _wgslsmith_div_u32(4294967295u, arg_3)) << (_wgslsmith_add_vec4_u32(vec4<u32>(99235u, 0u, arg_3, arg_3), vec4<u32>(53803u, 25869u, 17813u, arg_3) | vec4<u32>(arg_3, arg_3, 1u, 1u)) % vec4<u32>(32u))) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(~arg_3, ~arg_3, countOneBits(23628u), countOneBits(arg_3)), abs(~vec4<u32>(5585u, arg_3, 4294967295u, 4294967295u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(-1000f, 2047f), _wgslsmith_f_op_f32(f32(-1f) * -1246f), _wgslsmith_f_op_f32(floor(1000f)), arg_2.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-926f, -1644f, arg_2.c, arg_2.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c, -805f, -125f, arg_2.c))))), vec4<bool>(true, arg_0.x, func_2(_wgslsmith_dot_vec3_i32(arg_1.zwx, vec3<i32>(49611i, -27509i, arg_1.x))), arg_2.b.x))), 4294967295u, ~abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_3, arg_3), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 51604u), vec2<u32>(arg_3, arg_3)), ~vec2<u32>(arg_3, arg_3))), Struct_2(Struct_1(arg_2.a.x != -u_input.b, min(countOneBits(vec2<u32>(16962u, 75606u)), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(50094u, arg_3))), vec2<bool>(arg_1.x > 1669i, true), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2.c + arg_2.c))), func_4(_wgslsmith_div_vec3_f32(vec3<f32>(2965f, 413f, arg_2.c), vec3<f32>(arg_2.c, arg_2.c, 1000f)), Struct_1(false, vec2<u32>(0u, arg_3), arg_0.xz, arg_2.c, vec2<bool>(arg_0.x, false)), Struct_4(arg_3, global0[_wgslsmith_index_u32(arg_3, 28u)], Struct_2(Struct_1(false, vec2<u32>(4294967295u, arg_3), arg_2.b.yz, 672f, vec2<bool>(arg_0.x, arg_2.b.x)), Struct_1(arg_0.x, vec2<u32>(arg_3, 4294967295u), arg_0.xz, -2306f, vec2<bool>(arg_2.b.x, false)), false), Struct_1(arg_0.x, vec2<u32>(0u, 14287u), arg_0.zx, arg_2.c, vec2<bool>(arg_2.b.x, arg_2.b.x))), Struct_5(vec4<i32>(0i, arg_1.x, 2147483647i, u_input.b), vec3<bool>(arg_2.b.x, arg_0.x, arg_2.b.x), 1552f))), Struct_1(true, _wgslsmith_div_vec2_u32(~vec2<u32>(arg_3, 0u), ~vec2<u32>(11522u, 48656u)), vec2<bool>(true, true), -191f, select(arg_2.b.zz, arg_0.yz, arg_2.b.x)), true));
    global0 = array<Struct_3, 28>();
    var_0 = arg_0.x | (var_1.e.c || arg_0.x);
    var var_2 = _wgslsmith_clamp_i32(-11822i, -min(_wgslsmith_div_i32(u_input.a, 61503i & arg_1.x), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(arg_2.a.wzw, vec3<i32>(arg_1.x, arg_2.a.x, -87i)), max(-27235i, u_input.a))), select(_wgslsmith_add_i32(firstLeadingBit(arg_2.a.x), u_input.b), arg_2.a.x, true));
    return var_1.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(!vec3<bool>(func_1(), true, true), _wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(61902i, -2147483647i, u_input.b, u_input.a)) & ~select(vec4<i32>(u_input.a, 29831i, 1i, -2147483647i), vec4<i32>(u_input.b, u_input.b, u_input.b, 12171i), true), min(min(-vec4<i32>(u_input.b, u_input.b, u_input.b, 0i), vec4<i32>(u_input.a, u_input.a, 2147483647i, -11548i)), -vec4<i32>(24151i, 1i, u_input.b, u_input.a) << (~vec4<u32>(19354u, 4294967295u, 71106u, 45751u) % vec4<u32>(32u)))), Struct_5(vec4<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(0i, 15596i), firstLeadingBit(vec2<i32>(u_input.b, u_input.b))), _wgslsmith_sub_i32(u_input.a, -1i) ^ u_input.b, -2147483647i, -_wgslsmith_mult_i32(u_input.b, u_input.a)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(any(vec2<bool>(true, true)), true, true), vec3<bool>(true, func_1(), true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1751f + 257f))))), 7464u);
    global0 = array<Struct_3, 28>();
    let var_1 = u_input.a;
    let var_2 = 0u;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.d + -1320f))));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_3, var_3), vec2<f32>(var_3, var_0.a.d))), vec2<f32>(var_3, 1146f)))));
    var var_5 = 1i;
    var_5 = _wgslsmith_add_i32(1i << ((func_5(!vec3<bool>(var_0.c, true, true), firstTrailingBit(vec4<i32>(var_1, u_input.b, var_1, u_input.b)), Struct_5(vec4<i32>(u_input.a, 1i, var_1, var_1), vec3<bool>(true, var_0.b.e.x, var_0.b.a), var_0.b.d), abs(0u)).a.b.x >> (~(var_2 | var_0.a.b.x) % 32u)) % 32u), -2147483647i);
    global0 = array<Struct_3, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(max(countOneBits(_wgslsmith_mult_i32(var_1, 48225i)), u_input.a), ~(-abs(var_1)), 50786i >> (var_2 % 32u)), ~vec2<i32>(min(min(1i, 66074i), 0i), max(var_1, -27703i)), func_5(!(!vec3<bool>(var_0.c, var_0.a.c.x, var_0.a.a)), max(~vec4<i32>(-82657i, u_input.b, 60276i, u_input.a) << (_wgslsmith_div_vec4_u32(vec4<u32>(var_2, 0u, var_2, var_2), vec4<u32>(1u, 28909u, var_2, var_0.b.b.x)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(60482i, u_input.a, 16267i, 2147483647i), firstLeadingBit(vec4<i32>(24240i, var_1, -2147483647i, -42657i)))), Struct_5(vec4<i32>(countOneBits(u_input.a), min(u_input.b, u_input.b), 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.a), vec2<i32>(0i, 81577i))), vec3<bool>(true, var_0.b.a, any(var_0.a.e)), _wgslsmith_f_op_f32(abs(-881f))), ~(~(4294967295u << (var_0.a.b.x % 32u)))).b.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-226f))))), _wgslsmith_add_i32(u_input.b, ~_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1, var_1), vec2<i32>(var_1, var_1)), u_input.a)));
}

