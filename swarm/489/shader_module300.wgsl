struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec3<f32>(-618f, -735f, 897f), vec3<u32>(1u, 4294967295u, 43420u), 1i), Struct_1(vec3<f32>(600f, 1000f, -1473f), vec3<u32>(4294967295u, 138306u, 4294967295u), 1i), Struct_1(vec3<f32>(161f, 1944f, 564f), vec3<u32>(3558u, 28373u, 25594u), -11244i), Struct_1(vec3<f32>(2833f, 745f, -1000f), vec3<u32>(0u, 0u, 0u), -1i), Struct_1(vec3<f32>(-531f, 2025f, 692f), vec3<u32>(0u, 60710u, 1u), -1i), Struct_1(vec3<f32>(-1614f, -923f, 553f), vec3<u32>(31436u, 1u, 0u), 2147483647i), Struct_1(vec3<f32>(-1973f, -234f, -1370f), vec3<u32>(65864u, 88324u, 0u), 33831i), Struct_1(vec3<f32>(1129f, 1696f, -115f), vec3<u32>(4294967295u, 1u, 18105u), -36661i), Struct_1(vec3<f32>(-236f, -134f, 2369f), vec3<u32>(49463u, 62127u, 0u), 11811i), Struct_1(vec3<f32>(1434f, -481f, 407f), vec3<u32>(9197u, 2272u, 0u), 1i), Struct_1(vec3<f32>(-566f, 2034f, 248f), vec3<u32>(60066u, 1u, 7124u), -42410i), Struct_1(vec3<f32>(1000f, -1000f, 1262f), vec3<u32>(1u, 23599u, 1u), -56151i), Struct_1(vec3<f32>(-1199f, 574f, 2125f), vec3<u32>(41927u, 246u, 1u), 54407i), Struct_1(vec3<f32>(148f, -425f, 344f), vec3<u32>(68321u, 34165u, 4294967295u), 31507i));

var<private> global1: Struct_2 = Struct_2(i32(-2147483648), -1i, -1012f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> vec2<bool> {
    let var_0 = u_input.a.x;
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    let var_1 = Struct_2(abs(12021i), -_wgslsmith_add_i32(-global1.a, -1i), _wgslsmith_f_op_f32(-global1.c));
    var var_2 = abs(u_input.a.x);
    return select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(global1.c == var_1.c, true)), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), u_input.a.x > u_input.a.x), vec2<bool>(all(vec4<bool>(false, false, false, true)), all(vec4<bool>(true, false, false, true))), !select(vec2<bool>(true, false), vec2<bool>(false, true), false)), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true)), vec2<bool>(true, true)), vec2<bool>(true != !any(vec4<bool>(true, false, true, true)), true));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec2<i32>) -> bool {
    global0 = array<Struct_1, 14>();
    var var_0 = vec3<bool>(all(!select(!vec4<bool>(true, arg_0, false, true), select(vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(true, false, arg_0, true), vec4<bool>(arg_0, true, true, false)), arg_0)), any(!vec3<bool>(!arg_0, arg_0, arg_0 != arg_0)), !any(func_3()));
    global0 = array<Struct_1, 14>();
    let var_1 = Struct_2(~_wgslsmith_dot_vec3_i32(min(abs(vec3<i32>(global1.a, 39121i, 1i)), -vec3<i32>(-13225i, 14976i, global1.b)), vec3<i32>(reverseBits(2147483647i), _wgslsmith_div_i32(-1i, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.b, -2147483647i, 8205i, 4537i), vec4<i32>(arg_2.x, -31511i, arg_2.x, 15884i)))), _wgslsmith_dot_vec3_i32(~(~(vec3<i32>(32190i, 0i, global1.b) ^ vec3<i32>(1i, -15220i, -22952i))), max(-reverseBits(vec3<i32>(global1.a, global1.a, global1.a)), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_2.x, arg_2.x, global1.b), vec3<i32>(arg_2.x, global1.a, arg_2.x)) >> (~vec3<u32>(4294967295u, 20311u, u_input.a.x) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(abs(arg_1)));
    var var_2 = var_1;
    return arg_0;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec3<i32>) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(963f, global1.c, 1425f)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.c, 1227f, 723f), vec3<f32>(1000f, -1720f, global1.c)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c, -1000f, global1.c)), select(vec3<bool>(arg_0.x, true, false), !arg_0.yxw, !vec3<bool>(false, arg_0.x, arg_0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-493f, global1.c, global1.c)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c, global1.c, 2263f) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.c, arg_1.c, 107f))))), false)), (_wgslsmith_add_vec3_u32(~vec3<u32>(425u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 5717u)) >> (vec3<u32>(~60094u, u_input.a.x, ~u_input.a.x) % vec3<u32>(32u))) >> (_wgslsmith_add_vec3_u32(~vec3<u32>(15768u, 4294967295u, u_input.a.x), abs(vec3<u32>(u_input.a.x, u_input.a.x, 17739u)) | vec3<u32>(8763u, 71121u, u_input.a.x)) % vec3<u32>(32u)), arg_1.b);
    var var_1 = select(vec3<bool>((var_0.c < _wgslsmith_dot_vec3_i32(arg_2, arg_2)) || true, arg_0.x, arg_0.x), !vec3<bool>(arg_0.x, func_3().x, !all(arg_0)), !vec3<bool>(countOneBits(arg_2.x) > global1.a, all(arg_0.zyy), u_input.a.x >= 4294967295u));
    let var_2 = true;
    var_0 = Struct_1(var_0.a, ~_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(var_0.b, vec3<u32>(var_0.b.x, var_0.b.x, var_0.b.x)), vec3<u32>(0u, 1u, 1u)), -arg_1.b);
    var var_3 = 26964i;
    return Struct_2(_wgslsmith_add_i32(_wgslsmith_div_i32(var_0.c, abs(_wgslsmith_mult_i32(global1.b, 12249i))), arg_1.a), arg_2.x << (var_0.b.x % 32u), -826f);
}

fn func_1() -> i32 {
    global1 = func_4(vec4<bool>(!func_2(true, global1.c, vec2<i32>(global1.a, -2147483647i)) | true, true, (_wgslsmith_div_u32(u_input.a.x, u_input.a.x) | 4294967295u) >= _wgslsmith_clamp_u32(u_input.a.x, ~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 1u), vec4<u32>(4294967295u, 22130u, 4294967295u, 14854u))), any(vec2<bool>(true, true))), Struct_2(global1.b, -2147483647i & global1.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(global1.c))))), ~_wgslsmith_div_vec3_i32(~(~vec3<i32>(0i, global1.b, -2147483647i)), _wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(global1.b, global1.b, -885i)), firstLeadingBit(vec3<i32>(global1.b, global1.b, global1.a)))));
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-143f, 1110f, 836f)));
    var var_1 = u_input.a.x == ~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 52309u, 4294967295u), vec4<u32>(17259u, u_input.a.x, 4294967295u, 1u))));
    let var_2 = _wgslsmith_mod_i32(-1i, _wgslsmith_clamp_i32(-global1.a, ~(-(13954i ^ global1.b)), firstTrailingBit(global1.a)));
    var var_3 = !select(vec4<bool>(true, true, true, true), !vec4<bool>(u_input.a.x <= u_input.a.x, true, all(vec2<bool>(true, false)), true), vec4<bool>(true, !select(true, false, false), true, false));
    return ~_wgslsmith_div_i32(var_2, -(~var_2)) << (u_input.a.x % 32u);
}

fn func_5(arg_0: vec2<bool>, arg_1: u32, arg_2: vec2<i32>) -> Struct_2 {
    let var_0 = func_4(!vec4<bool>(true, arg_0.x, true, 6584u != u_input.a.x), func_4(select(select(!vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), select(vec4<bool>(arg_0.x, true, arg_0.x, true), vec4<bool>(false, true, true, arg_0.x), vec4<bool>(true, arg_0.x, true, false)), !vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x)), select(!vec4<bool>(arg_0.x, false, true, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(true, true, true, true)), func_3().x), func_4(vec4<bool>(arg_0.x || arg_0.x, any(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x)), all(vec4<bool>(arg_0.x, arg_0.x, true, false)), arg_0.x), func_4(!vec4<bool>(arg_0.x, false, arg_0.x, true), func_4(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), Struct_2(-2147483647i, -51387i, global1.c), vec3<i32>(-9668i, arg_2.x, global1.b)), abs(vec3<i32>(18805i, arg_2.x, -27387i))), ~vec3<i32>(arg_2.x, global1.b, global1.a)), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(18432i, 13983i, global1.b), vec3<i32>(18172i, 44406i, -2147483647i)), vec3<i32>(1i, 1i, 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(10989i, arg_2.x, 2075i), vec3<i32>(global1.a, arg_2.x, arg_2.x))), min(_wgslsmith_div_vec3_i32(vec3<i32>(global1.b, 2147483647i, arg_2.x), vec3<i32>(18059i, arg_2.x, arg_2.x)), ~vec3<i32>(-4839i, global1.b, 2147483647i)))), abs(vec3<i32>(_wgslsmith_clamp_i32(arg_2.x & 42454i, select(arg_2.x, 0i, true), 0i), _wgslsmith_dot_vec2_i32(vec2<i32>(global1.b, 0i), max(vec2<i32>(global1.a, -23146i), arg_2)), _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_2.x, 0i, global1.b), vec3<i32>(arg_2.x, global1.b, 27741i) & vec3<i32>(global1.a, -15193i, -31595i)))));
    global0 = array<Struct_1, 14>();
    let var_1 = min(vec3<i32>(20856i, -global1.b, (var_0.b ^ -arg_2.x) ^ min(0i, arg_2.x)), -vec3<i32>(_wgslsmith_mult_i32(func_4(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), Struct_2(422i, var_0.b, var_0.c), vec3<i32>(global1.b, global1.b, -13509i)).a, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_0.a, global1.b, -7387i), vec4<i32>(global1.b, -22616i, global1.b, arg_2.x))), func_1(), arg_2.x));
    let var_2 = arg_0.x;
    let var_3 = ~vec2<i32>(-_wgslsmith_clamp_i32(~1i, global1.b >> (arg_1 % 32u), var_1.x), arg_2.x);
    return var_0;
}

fn func_6(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    var var_0 = vec3<f32>(arg_0.c, _wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-615f * _wgslsmith_f_op_f32(-arg_3.a.x))));
    global1 = func_5(select(arg_1.zz, !vec2<bool>(func_3().x, func_2(true, global1.c, vec2<i32>(arg_2.c, arg_0.a))), vec2<bool>(true, select(arg_3.c != -23461i, arg_1.x, false))), ~_wgslsmith_add_u32(arg_3.b.x, _wgslsmith_add_u32(4294967295u, arg_2.b.x)), firstTrailingBit(select(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.a, arg_3.c, 31860i, 23350i), vec4<i32>(2147483647i, arg_3.c, -56517i, arg_3.c)), ~arg_2.c), vec2<i32>(reverseBits(-29920i), global1.b), select(!arg_1.xw, func_3(), arg_2.b.x == 63283u))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1357f) * _wgslsmith_f_op_f32(step(var_0.x, 723f))))), global1.c);
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(30871u, min(_wgslsmith_clamp_u32(~u_input.a.x, max(u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), u_input.a.x), _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a.x ^ u_input.a.x, u_input.a.x), ~_wgslsmith_add_u32(12039u, 13971u))), ~u_input.a.x);
    global1 = Struct_2(~_wgslsmith_dot_vec3_i32(max(vec3<i32>(8366i, -4606i, 12961i), select(vec3<i32>(global1.b, 9187i, -10972i), vec3<i32>(-8635i, global1.a, global1.b), false)), ~(vec3<i32>(0i, -29946i, global1.b) << (vec3<u32>(58611u, 46696u, 1659u) % vec3<u32>(32u)))), firstTrailingBit(reverseBits(global1.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(global1.c, 388f)))))));
    global1 = func_6(func_5(!vec2<bool>(all(vec2<bool>(true, false)), true), ~_wgslsmith_mod_u32(4294967295u, u_input.a.x) << (u_input.a.x % 32u), vec2<i32>(global1.a, func_1())), vec4<bool>(!any(func_3()), all(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), all(select(vec2<bool>(false, false), func_3(), true)), select(false, any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))), ~(-1i) != global1.b)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(968f, global1.c, global1.c)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(673f, -1263f, 808f), vec3<f32>(global1.c, global1.c, global1.c)))))), ~var_0, 2147483647i), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1133f, global1.c, global1.c) + vec3<f32>(-760f, global1.c, -580f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c, 977f, global1.c)))), ~(~(vec3<u32>(u_input.a.x, 24617u, u_input.a.x) >> (var_0 % vec3<u32>(32u)))), global1.b));
    global1 = Struct_2(global1.a, -global1.a, 1289f);
    global0 = array<Struct_1, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(max(abs(firstLeadingBit(vec2<i32>(1451i, global1.a))), ~vec2<i32>(global1.a, global1.a))), (select(firstLeadingBit(vec4<u32>(4294967295u, 3731u, 40396u, 34131u)), ~vec4<u32>(0u, u_input.a.x, 95700u, 9522u), vec4<bool>(true, false, false, false)) | (abs(vec4<u32>(4294967295u, u_input.a.x, 0u, u_input.a.x)) | firstTrailingBit(vec4<u32>(0u, 0u, 11348u, 7331u)))) >> (select(firstTrailingBit(vec4<u32>(var_0.x, 1u, 0u, var_0.x)), select(~vec4<u32>(0u, 0u, u_input.a.x, u_input.a.x), select(vec4<u32>(var_0.x, u_input.a.x, 28992u, u_input.a.x), vec4<u32>(0u, var_0.x, u_input.a.x, var_0.x), true), true), true) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(60938u, u_input.a.x, var_0.x, 0u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 38760u, 32216u, 16334u), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, 27962u, 33582u), vec4<u32>(var_0.x, u_input.a.x, var_0.x, 1u))), vec4<u32>(0u, 26249u, ~var_0.x, ~24990u)), abs(firstTrailingBit(vec4<u32>(u_input.a.x, 30411u, 22142u, u_input.a.x)))));
}

