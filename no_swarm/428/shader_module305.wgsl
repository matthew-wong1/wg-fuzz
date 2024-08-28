struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec3<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: f32,
    d: Struct_3,
    e: bool,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 28>;

var<private> global1: vec3<bool>;

var<private> global2: vec2<u32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec4<i32> {
    global2 = vec2<u32>(u_input.d, min(_wgslsmith_mult_u32(global2.x, global2.x), ~(~min(4294967295u, global2.x))));
    var var_0 = arg_0.c.a.wyw;
    var var_1 = Struct_5(~u_input.e.wz);
    global0 = array<Struct_3, 28>();
    var_1 = Struct_5(u_input.b.zz);
    return arg_1.c.d;
}

fn func_2() -> Struct_1 {
    let var_0 = abs(_wgslsmith_mod_vec4_i32(reverseBits(countOneBits(vec4<i32>(u_input.e.x, 1i, -32422i, 2147483647i) >> (vec4<u32>(42284u, 39682u, 37050u, 0u) % vec4<u32>(32u)))), _wgslsmith_sub_vec4_i32(u_input.e & func_3(Struct_2(Struct_1(vec4<u32>(u_input.d, 56762u, 50435u, u_input.d), -376f, vec3<bool>(global1.x, false, false), vec4<i32>(-8849i, -11124i, 1i, 39004i)), vec4<bool>(true, true, true, true), Struct_1(vec4<u32>(u_input.c.x, 27037u, 73005u, u_input.d), -941f, vec3<bool>(global1.x, true, false), u_input.e), -1971f), Struct_2(Struct_1(vec4<u32>(5694u, u_input.a, u_input.c.x, 47788u), -1000f, vec3<bool>(false, false, true), vec4<i32>(u_input.b.x, 12970i, u_input.e.x, 2147483647i)), vec4<bool>(global1.x, false, global1.x, false), Struct_1(vec4<u32>(u_input.a, u_input.a, 18307u, global2.x), 1371f, vec3<bool>(false, false, global1.x), u_input.e), 886f)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.e.x, u_input.b.x), vec4<i32>(u_input.b.x, -1i, u_input.b.x, 12680i)))));
    var var_1 = global0[_wgslsmith_index_u32(u_input.d, 28u)];
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(round(var_1.d.b)), var_1.d.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_1.d.b)))), -1588f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.b - -1069f)));
    let var_3 = _wgslsmith_add_u32(26569u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(var_1.d.a.xwx, vec3<u32>(var_1.d.a.x, var_1.d.a.x, u_input.c.x)), _wgslsmith_clamp_u32(min(var_1.d.a.x, 7875u), abs(67740u), u_input.a)) ^ firstLeadingBit(~_wgslsmith_mod_u32(27058u, global2.x)));
    var var_4 = u_input.b >> (firstTrailingBit(~var_1.d.a.zyx) % vec3<u32>(32u));
    return var_1.d;
}

fn func_1(arg_0: f32, arg_1: vec3<f32>) -> vec3<u32> {
    var var_0 = Struct_2(func_2(), !vec4<bool>(all(select(vec3<bool>(false, global1.x, false), vec3<bool>(true, false, true), vec3<bool>(true, true, global1.x))), !(!global1.x), true, global1.x), func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-887f - _wgslsmith_f_op_f32(-471f * _wgslsmith_f_op_f32(arg_0 * -1354f)))));
    var var_1 = vec4<bool>(any(vec3<bool>(true, any(var_0.b), false)), any(vec3<bool>(all(vec4<bool>(false, global1.x, var_0.c.c.x, var_0.b.x)), true, false)) && false, var_0.a.c.x | true, global1.x);
    let var_2 = _wgslsmith_div_i32(countOneBits(_wgslsmith_mult_i32(34003i, u_input.b.x)), ~(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, 2147483647i), -vec2<i32>(var_0.a.d.x, 28861i)) & abs(_wgslsmith_div_i32(var_0.c.d.x, var_0.a.d.x))));
    let var_3 = Struct_4(max(u_input.b.x, 25520i), ~20679i < _wgslsmith_mult_i32(firstTrailingBit(-11552i), u_input.e.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(func_2().b, var_0.c.b))), Struct_3(u_input.e.x, _wgslsmith_dot_vec2_i32(~u_input.e.yx, firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(var_2, 20030i), var_0.a.d.zx))), ~u_input.e.x, func_2()), var_0.a.c.x);
    var var_4 = global0[_wgslsmith_index_u32(54089u, 28u)];
    return var_4.d.a.wzw;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: Struct_5) -> Struct_2 {
    global1 = vec3<bool>((true || (arg_0.x > 4294967295u)) | arg_1.x, func_2().c.x, u_input.d != reverseBits(0u));
    var var_0 = Struct_3(_wgslsmith_clamp_i32(func_3(Struct_2(func_2(), vec4<bool>(true, true, true, true), Struct_1(vec4<u32>(u_input.a, 4294967295u, arg_0.x, 0u), -110f, arg_1, vec4<i32>(1i, u_input.e.x, -2147483647i, -43735i)), _wgslsmith_div_f32(786f, 1954f)), Struct_2(Struct_1(vec4<u32>(1u, arg_0.x, 52098u, 40097u), 646f, arg_1, vec4<i32>(22863i, -972i, arg_2.a.x, arg_2.a.x)), vec4<bool>(true, arg_1.x, false, true), Struct_1(vec4<u32>(u_input.c.x, 4294967295u, arg_0.x, 0u), 1107f, vec3<bool>(false, false, false), u_input.e), -1700f)).x, firstTrailingBit(firstLeadingBit(min(u_input.b.x, -31287i))), abs(arg_2.a.x)), 0i, _wgslsmith_mult_i32(-1i, (_wgslsmith_add_i32(u_input.e.x, u_input.e.x) & abs(arg_2.a.x)) << (_wgslsmith_mod_u32(1u, ~1u) % 32u)), func_2());
    var_0 = global0[_wgslsmith_index_u32(u_input.c.x, 28u)];
    global1 = vec3<bool>(var_0.d.c.x, !var_0.d.c.x, any(select(var_0.d.c, var_0.d.c, global1.x)));
    var var_1 = arg_2.a.x;
    return Struct_2(func_2(), select(vec4<bool>(all(vec4<bool>(var_0.d.c.x, global1.x, false, true)), !all(var_0.d.c.zz), var_0.d.c.x, !arg_1.x), !vec4<bool>(!global1.x, true, true || arg_1.x, true), global1.x), var_0.d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-842f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_0.d.b))))))));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec3<u32>) -> Struct_5 {
    var var_0 = _wgslsmith_sub_u32(_wgslsmith_add_u32(89081u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(~arg_2.x, 1u), 1u)), 1u);
    let var_1 = 1u;
    let var_2 = Struct_3(21126i, -_wgslsmith_clamp_i32(firstLeadingBit(arg_1.a.d.x), _wgslsmith_add_i32(arg_1.a.d.x, u_input.e.x), -u_input.e.x) | u_input.e.x, arg_1.c.d.x, Struct_1(vec4<u32>(~arg_2.x >> (~0u % 32u), 15804u, 1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, arg_0.x), arg_1.c.a.zz)), arg_1.c.b, vec3<bool>(!arg_1.a.c.x, true, !any(vec3<bool>(arg_1.a.c.x, global1.x, false))), vec4<i32>(-978i, firstTrailingBit(arg_1.a.d.x & arg_1.c.d.x), i32(-1i) * -2147483647i, func_3(Struct_2(arg_1.a, arg_1.b, Struct_1(vec4<u32>(u_input.d, 0u, 6574u, 0u), 292f, arg_1.a.c, vec4<i32>(1i, -2147483647i, -82980i, 2147483647i)), 2188f), Struct_2(arg_1.a, arg_1.b, Struct_1(arg_1.c.a, arg_1.d, arg_1.b.wyz, vec4<i32>(u_input.b.x, 2147483647i, 2147483647i, u_input.e.x)), arg_1.a.b)).x)));
    var var_3 = var_2.d.d;
    let var_4 = vec4<u32>(~func_4(arg_2, !select(vec3<bool>(arg_1.c.c.x, global1.x, true), vec3<bool>(var_2.d.c.x, false, true), arg_1.a.c), Struct_5(vec2<i32>(var_3.x, -14050i))).c.a.x, global2.x >> (~_wgslsmith_div_u32(arg_2.x, select(117392u, 73281u, arg_1.b.x)) % 32u), firstLeadingBit(func_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_2.d.b)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.d.b, 922f, -432f), vec3<f32>(var_2.d.b, 507f, 416f)))).x), ~var_2.d.a.x);
    return Struct_5(arg_1.c.d.xy);
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_5) -> Struct_1 {
    let var_0 = -1i;
    let var_1 = u_input.b.x;
    var var_2 = 0u;
    global1 = select(func_2().c, func_2().c, arg_0);
    global1 = func_2().c;
    return Struct_1(~func_2().a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-535f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-285f, 750f, global1.x)) * _wgslsmith_f_op_f32(floor(-267f)))), arg_0, _wgslsmith_div_vec4_i32(~(-vec4<i32>(var_0, 0i, var_0, var_1)) >> (~(~vec4<u32>(4294967295u, 4294967295u, u_input.d, 35895u)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_0) >> (u_input.c % vec2<u32>(32u)), vec2<i32>(-1i, arg_1.a.x) << (vec2<u32>(global2.x, global2.x) % vec2<u32>(32u))), 1i, 29185i << ((global2.x << (global2.x % 32u)) % 32u), -select(0i, var_0, global1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec4<bool>(true, all(select(!vec4<bool>(true, true, true, global1.x), vec4<bool>(true, false, global1.x, global1.x), global1.x)), true, false || !select(false, global1.x, global1.x)));
    let var_1 = func_6(select(vec3<bool>(global1.x, !global1.x, false), vec3<bool>(all(!vec4<bool>(false, global1.x, global1.x, false)), !(-49599i == u_input.b.x), all(vec2<bool>(global1.x, global1.x)) || any(vec4<bool>(false, false, false, global1.x))), !vec3<bool>(global1.x | false, any(vec3<bool>(global1.x, global1.x, global1.x)), any(vec4<bool>(global1.x, global1.x, global1.x, true)))), func_5(u_input.c ^ (abs(vec2<u32>(1u, global2.x)) & ~u_input.c), func_4(~func_1(1085f, vec3<f32>(1495f, 921f, -423f)), vec3<bool>(true & global1.x, true, global1.x && false), Struct_5(reverseBits(u_input.e.wy))), ~select(~vec3<u32>(u_input.c.x, u_input.c.x, global2.x), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 1u, 20807u), vec3<u32>(51477u, 0u, u_input.c.x)), select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(false, global1.x, global1.x), vec3<bool>(false, global1.x, global1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(func_6(select(var_1.c, vec3<bool>(true, true, true), vec3<bool>(false, false, global1.x)), func_5(u_input.c, Struct_2(Struct_1(var_1.a, var_1.b, vec3<bool>(false, var_1.c.x, global1.x), vec4<i32>(-63206i, -1i, -2147483647i, -13543i)), vec4<bool>(true, false, var_1.c.x, false), var_1, -675f), vec3<u32>(u_input.c.x, var_1.a.x, u_input.a))).b, 175f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1304f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(633f, 439f, var_1.b))))), countOneBits(vec3<u32>(u_input.c.x, u_input.c.x, _wgslsmith_dot_vec3_u32(var_1.a.xzx, vec3<u32>(global2.x, u_input.c.x, 1u)))), vec4<f32>(_wgslsmith_f_op_f32(var_1.b + var_1.b), _wgslsmith_f_op_f32(238f - _wgslsmith_f_op_f32(func_6(vec3<bool>(true, true, false), Struct_5(var_1.d.wy)).b + 178f)), 1206f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.b)))), var_1.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1160f, _wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(select(var_1.b, _wgslsmith_f_op_f32(trunc(var_1.b)), true)), _wgslsmith_f_op_f32(-328f + var_1.b))));
}

