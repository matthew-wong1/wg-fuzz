struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: u32,
    d: vec4<u32>,
    e: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
    b: f32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<i32> = vec2<i32>(-1i, 16525i);

var<private> global2: array<Struct_2, 32>;

var<private> global3: Struct_3 = Struct_3(vec2<f32>(-967f, -251f));

var<private> global4: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: f32) -> vec3<bool> {
    var var_0 = _wgslsmith_add_vec4_u32(min(~vec4<u32>(arg_0, 9172u, arg_0, 64193u), vec4<u32>(93304u, 0u, 23439u, arg_0)) | vec4<u32>(~4294967295u, arg_0, arg_0, arg_0), firstTrailingBit(~(vec4<u32>(0u, 71268u, 0u, 0u) & vec4<u32>(arg_0, 0u, arg_0, 17395u)))) & ~reverseBits(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, 4294967295u, arg_0, 4294967295u), vec4<u32>(arg_0, 0u, 1u, arg_0), vec4<u32>(arg_0, 0u, arg_0, arg_0)), ~vec4<u32>(arg_0, 2163u, arg_0, 50724u), vec4<bool>(true, true, true, true)));
    let var_1 = Struct_4(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(86126u & arg_0, 1u) & 4294967295u, 32u)], vec3<bool>(select(!all(vec4<bool>(true, true, false, true)), true, any(select(vec2<bool>(true, false), vec2<bool>(true, false), false))), _wgslsmith_f_op_f32(-global3.a.x) > _wgslsmith_f_op_f32(f32(-1f) * -417f), false), ~38664u, vec4<u32>(~arg_0, _wgslsmith_sub_u32(arg_0 >> (_wgslsmith_div_u32(1u, var_0.x) % 32u), _wgslsmith_div_u32(2232u, arg_0) >> (~4294967295u % 32u)), 4294967295u | var_0.x, 1u), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global3.a, vec2<f32>(-1000f, 867f))))));
    var_0 = select(firstLeadingBit(vec4<u32>(arg_0, _wgslsmith_div_u32(~arg_0, ~1u), _wgslsmith_div_u32(49327u, var_0.x), 38343u | (var_0.x << (arg_0 % 32u)))), ~_wgslsmith_sub_vec4_u32(var_1.d, var_1.d), !(!vec4<bool>(global1.x >= u_input.a.x, var_1.b.x, !var_1.b.x, false)));
    let var_2 = -1i;
    global4 = firstTrailingBit(1u);
    return !var_1.b;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec3<u32>) -> Struct_3 {
    var var_0 = arg_1.b.xy;
    global4 = arg_0;
    global2 = array<Struct_2, 32>();
    var var_1 = Struct_5(arg_2.zy, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-268f + _wgslsmith_f_op_f32(arg_1.d + global3.a.x)) * global3.a.x))), select(select(arg_1.b, !vec3<bool>(var_0.x, true, arg_1.b.x), arg_1.b.x), vec3<bool>(any(arg_1.b), true, var_0.x), select(select(!arg_1.c, func_3(12371u, 403f), vec3<bool>(arg_1.b.x, false, false)), vec3<bool>(false, true, var_0.x), vec3<bool>(true, true, true))));
    let var_2 = global2[_wgslsmith_index_u32(~(~(~8774u)), 32u)];
    return Struct_3(arg_1.a);
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_3, arg_3: Struct_3) -> vec2<u32> {
    var var_0 = (arg_0 == abs(~(arg_0 >> (0u % 32u)))) || !any(select(!vec4<bool>(arg_1, true, false, arg_1), !vec4<bool>(arg_1, arg_1, false, arg_1), select(vec4<bool>(true, arg_1, false, arg_1), vec4<bool>(true, true, arg_1, arg_1), vec4<bool>(arg_1, true, false, arg_1))));
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_3.a - _wgslsmith_f_op_vec2_f32(vec2<f32>(-192f, -1187f) * arg_2.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.a)), !(!arg_1)))));
    global1 = vec2<i32>(u_input.a.x, -21884i);
    var var_2 = min(71470u, arg_0) ^ arg_0;
    let var_3 = ~abs(~(~vec4<u32>(arg_0, arg_0, arg_0, 4294967295u) | ~vec4<u32>(arg_0, 4294967295u, 4294967295u, 4294967295u)));
    return var_3.yx;
}

fn func_5(arg_0: Struct_5, arg_1: vec4<f32>, arg_2: Struct_4) -> Struct_5 {
    let var_0 = Struct_5(~vec2<u32>(arg_2.d.x, _wgslsmith_div_u32(arg_0.a.x, 4294967295u) | arg_0.a.x), _wgslsmith_f_op_f32(arg_2.e.a.x * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec3<bool>(arg_0.c.x, global3.a.x > global3.a.x, arg_0.b >= _wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(step(-2026f, arg_1.x)), all(vec4<bool>(true, arg_2.a.c.x, arg_2.b.x, false))))));
    let var_1 = _wgslsmith_clamp_vec4_u32(((countOneBits(vec4<u32>(35324u, 0u, 44983u, 4294967295u)) | arg_2.d) << (~vec4<u32>(arg_0.a.x, 11343u, 15166u, 1u) % vec4<u32>(32u))) >> (((arg_2.d | ~arg_2.d) << (firstLeadingBit(vec4<u32>(arg_2.c, var_0.a.x, 12104u, arg_2.c)) % vec4<u32>(32u))) % vec4<u32>(32u)), select(arg_2.d, min(~vec4<u32>(var_0.a.x, arg_2.c, arg_0.a.x, 0u), vec4<u32>(0u, 29780u, 4294967295u, 70141u)) << ((_wgslsmith_mod_vec4_u32(vec4<u32>(20864u, 16287u, 4294967295u, var_0.a.x), arg_2.d) ^ firstLeadingBit(vec4<u32>(25709u, arg_2.d.x, var_0.a.x, var_0.a.x))) % vec4<u32>(32u)), vec4<bool>(arg_0.c.x, var_0.c.x != (true || arg_2.b.x), !var_0.c.x, ~1u >= ~arg_2.d.x)), ~(vec4<u32>(4294967295u, var_0.a.x, 4294967295u, ~arg_0.a.x) & arg_2.d));
    global1 = reverseBits(vec2<i32>(_wgslsmith_div_i32(~(-23126i), u_input.a.x), 1i));
    var var_2 = vec4<i32>(37849i, _wgslsmith_mod_i32(-3876i, -(2147483647i ^ _wgslsmith_mod_i32(-2147483647i, u_input.a.x))), _wgslsmith_mult_i32(global1.x, global1.x ^ ~select(global1.x, u_input.a.x, false)), 1i);
    var var_3 = var_1 << ((_wgslsmith_div_vec4_u32(vec4<u32>(var_0.a.x, 0u, ~1u, _wgslsmith_mult_u32(58961u, var_0.a.x)), ~arg_2.d) ^ arg_2.d) % vec4<u32>(32u));
    return arg_0;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<bool>) -> Struct_5 {
    return func_5(Struct_5(select(~(~vec2<u32>(8956u, 0u)), func_4(1u, false, Struct_3(global3.a), func_2(14133u, Struct_1(vec2<f32>(arg_0.a.x, -1101f), vec3<bool>(arg_1.x, arg_1.x, arg_0.c.x), arg_1, arg_0.b), vec3<u32>(11287u, 35101u, 4294967295u), vec3<u32>(51069u, 0u, 30965u))), any(!vec3<bool>(true, arg_0.c.x, arg_1.x))), arg_0.b, select(select(arg_1, vec3<bool>(true, arg_1.x, true), vec3<bool>(true, arg_0.c.x, false)), vec3<bool>(arg_1.x, arg_0.c.x, any(vec4<bool>(true, false, arg_0.c.x, false))), !arg_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1860f, -1414f, _wgslsmith_f_op_f32(-global3.a.x), 1f)), Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a)), _wgslsmith_f_op_f32(exp2(global3.a.x)), func_3(4294967295u, 3014f).xx), vec3<bool>(-13666i != global1.x, all(vec2<bool>(false, arg_0.c.x)), arg_1.x), ~(_wgslsmith_mult_u32(1u, 4294967295u) >> (1u % 32u)), vec4<u32>(max(1u, ~1u), ~1u, ~(~21397u), _wgslsmith_mult_u32(~4294967295u, reverseBits(22739u))), Struct_3(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1373f, global3.a.x)))))));
}

fn func_6(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_5) -> i32 {
    global3 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1.x, global3.a.x))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.x, -328f), vec2<f32>(-1566f, global3.a.x), arg_2.c.xy))))));
    global1 = vec2<i32>(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), global1.x);
    global1 = u_input.a.yy;
    global1 = firstLeadingBit(-(vec2<i32>(-2147483647i, 18995i) ^ u_input.a.zx));
    var var_0 = !select(!select(select(vec4<bool>(arg_2.c.x, arg_2.c.x, arg_2.c.x, true), vec4<bool>(arg_2.c.x, false, arg_2.c.x, true), vec4<bool>(arg_2.c.x, true, arg_2.c.x, arg_2.c.x)), vec4<bool>(arg_2.c.x, arg_2.c.x, arg_2.c.x, arg_2.c.x), vec4<bool>(arg_2.c.x, false, arg_2.c.x, arg_2.c.x)), vec4<bool>(arg_2.c.x, all(select(vec3<bool>(arg_2.c.x, arg_2.c.x, true), arg_2.c, arg_2.c.x)), !(!arg_2.c.x), !all(arg_2.c.xy)), vec4<bool>(arg_2.c.x, _wgslsmith_f_op_f32(-100f - arg_2.b) < func_5(Struct_5(arg_2.a, 793f, arg_2.c), arg_1, Struct_4(Struct_2(arg_1.xyy, 307f, vec2<bool>(true, arg_2.c.x)), vec3<bool>(true, arg_2.c.x, false), arg_0, vec4<u32>(32809u, 18109u, arg_0, 3620u), Struct_3(vec2<f32>(arg_2.b, 1000f)))).b, arg_2.c.x, arg_2.c.x));
    return ~u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<i32>(_wgslsmith_mult_i32(func_6(50259u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.x, global3.a.x, global3.a.x, global3.a.x))), func_1(global2[_wgslsmith_index_u32(1u, 32u)], select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false))), global1.x), -2083i);
    global0 = firstLeadingBit(~reverseBits(~u_input.a.x));
    var var_0 = global2[_wgslsmith_index_u32(1u ^ _wgslsmith_div_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), countOneBits(vec3<u32>(32972u, 11420u, 0u)))), 32u)];
    let var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-830f + _wgslsmith_f_op_f32(-global3.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.a.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -687f), _wgslsmith_f_op_f32(abs(global3.a.x)), true))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-110f, global3.a.x, var_0.a.x), vec3<f32>(var_0.a.x, var_1.a.x, var_0.a.x)) * vec3<f32>(var_1.a.x, 101f, 586f))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_0.a)), _wgslsmith_f_op_vec3_f32(var_0.a + var_0.a))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1168f * var_2.x), _wgslsmith_div_f32(782f, var_2.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.a.x)) + _wgslsmith_f_op_f32(948f * global3.a.x))), _wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3.a.x, var_2.x)) + -935f)), _wgslsmith_f_op_f32(step(-1116f, _wgslsmith_f_op_f32(max(var_2.x, var_2.x)))), -2353f));
    var var_4 = _wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(7597i, -1928i, 1i, 1i | _wgslsmith_add_i32(u_input.a.x & u_input.a.x, i32(-1i) * -45210i)));
    var var_5 = func_1(global2[_wgslsmith_index_u32(9995u, 32u)], !vec3<bool>(var_0.c.x, true, func_5(func_5(Struct_5(vec2<u32>(1u, 1u), -1804f, vec3<bool>(true, true, false)), vec4<f32>(754f, global3.a.x, var_1.a.x, var_3.x), Struct_4(Struct_2(vec3<f32>(var_1.a.x, var_0.a.x, -119f), var_1.a.x, vec2<bool>(var_0.c.x, false)), vec3<bool>(true, var_0.c.x, var_0.c.x), 1u, vec4<u32>(103933u, 4294967295u, 0u, 1u), var_1)), vec4<f32>(124f, var_2.x, 1000f, 575f), Struct_4(Struct_2(vec3<f32>(784f, 131f, 238f), var_3.x, var_0.c), vec3<bool>(var_0.c.x, false, var_0.c.x), 42288u, vec4<u32>(34450u, 5113u, 0u, 0u), var_1)).c.x));
    var var_6 = Struct_2(_wgslsmith_f_op_vec3_f32(-var_0.a), var_1.a.x, var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i << (var_5.a.x % 32u), -_wgslsmith_mult_i32(~var_4.x, _wgslsmith_mod_i32(u_input.a.x, global1.x)), max(firstLeadingBit(_wgslsmith_sub_i32(15318i, global1.x)), ~firstLeadingBit(1i))), 1000f, vec4<i32>(min(1i, u_input.a.x), ~_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x)), _wgslsmith_add_vec3_i32(vec3<i32>(1i, var_4.x, global1.x), vec3<i32>(0i, global1.x, 2147483647i))), 30545i, _wgslsmith_clamp_i32(93810i, i32(-1i) * -2147483647i, 2147483647i) >> (max(~var_5.a.x, var_5.a.x) % 32u)));
}

