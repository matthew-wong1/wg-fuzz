struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: Struct_1,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, false, true);

var<private> global1: i32 = 23140i;

var<private> global2: i32 = -1i;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: vec4<bool>, arg_3: Struct_3) -> i32 {
    let var_0 = Struct_4(~min(select(vec4<u32>(18387u, 1u, arg_0.x, arg_0.x), abs(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 41268u)), all(vec2<bool>(arg_3.a.x, global0.x))), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.x, 4294967295u, u_input.b.x, arg_0.x), vec4<u32>(4294967295u, 26059u, arg_0.x, u_input.b.x), abs(vec4<u32>(14022u, 14378u, 83286u, u_input.b.x)))));
    let var_1 = Struct_1(false, all(select(arg_2, select(vec4<bool>(true, false, false, false), arg_2, vec4<bool>(true, global0.x, global0.x, true)), global0.x)) & global0.x, vec4<i32>(u_input.a.x, min(-1i, u_input.a.x), 1i, firstLeadingBit(-1i)), select(var_0.a, vec4<u32>(~(~u_input.b.x), _wgslsmith_mult_u32(firstTrailingBit(0u), ~var_0.a.x), u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(56107u, 41367u), vec2<u32>(arg_0.x, u_input.b.x)) & 4294967295u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.x - arg_1.x))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))));
    var var_2 = var_0;
    global1 = firstTrailingBit(60481i);
    var_2 = Struct_4(~var_0.a);
    return ~_wgslsmith_dot_vec3_i32((vec3<i32>(-51366i, u_input.a.x, -1i) & ~vec3<i32>(u_input.a.x, u_input.a.x, var_1.c.x)) ^ u_input.a.wwy, vec3<i32>(u_input.a.x, 1i, u_input.a.x));
}

fn func_2(arg_0: bool, arg_1: vec3<i32>) -> Struct_4 {
    let var_0 = Struct_1(true && select(arg_0 || any(global0.zx), select(20631u, 19597u, arg_0) > (32427u ^ u_input.b.x), true), all(select(!vec3<bool>(global0.x, global0.x, false), global0.yzx, arg_0)), vec4<i32>(u_input.a.x, _wgslsmith_mod_i32(countOneBits(u_input.a.x) >> (u_input.b.x % 32u), func_3(vec2<u32>(u_input.b.x, 0u), vec2<f32>(-115f, -307f), vec4<bool>(true, false, arg_0, false), Struct_3(vec2<bool>(global0.x, false)))), firstTrailingBit(-36475i), i32(-1i) * -2147483647i), ~((select(vec4<u32>(3135u, u_input.b.x, 0u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 0u, 4294967295u), vec4<bool>(global0.x, false, global0.x, true)) ^ firstTrailingBit(vec4<u32>(64163u, 0u, u_input.b.x, u_input.b.x))) >> (reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 49707u, 4294967295u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 67872u, u_input.b.x))) % vec4<u32>(32u))));
    var var_1 = Struct_3(global0.xw);
    global0 = select(vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1175f)) != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-490f)), _wgslsmith_f_op_f32(f32(-1f) * -1343f), any(global0.xwz))), false, global0.x, all(global0.wy) == global0.x), !select(!(!vec4<bool>(global0.x, false, true, false)), vec4<bool>(all(vec3<bool>(var_1.a.x, false, true)), !global0.x, true, global0.x), true), vec4<bool>(true, true, true, true));
    var var_2 = vec4<bool>(var_1.a.x, true, true, false);
    global0 = select(!(!(!vec4<bool>(var_2.x, false, true, false))), !vec4<bool>(var_2.x, arg_0, var_2.x, all(select(global0.ww, vec2<bool>(global0.x, var_2.x), global0.yy))), !(!(!select(vec4<bool>(false, arg_0, false, true), vec4<bool>(global0.x, false, global0.x, false), vec4<bool>(var_2.x, var_1.a.x, global0.x, arg_0)))));
    return Struct_4(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(var_0.d, var_0.d, var_0.d), vec4<u32>(_wgslsmith_dot_vec3_u32(~u_input.b, vec3<u32>(85076u, u_input.b.x, var_0.d.x) >> (vec3<u32>(var_0.d.x, var_0.d.x, 4294967295u) % vec3<u32>(32u))), u_input.b.x, (4294967295u >> (var_0.d.x % 32u)) << (var_0.d.x % 32u), _wgslsmith_sub_u32(~u_input.b.x, 52526u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(0u, var_0.d.x, u_input.b.x, var_0.d.x), _wgslsmith_clamp_vec4_u32(var_0.d, ~var_0.d, vec4<u32>(var_0.d.x, var_0.d.x, 0u, var_0.d.x) >> (vec4<u32>(15626u, 76498u, u_input.b.x, var_0.d.x) % vec4<u32>(32u))))));
}

fn func_4(arg_0: Struct_4) -> Struct_1 {
    var var_0 = arg_0.a.x;
    global2 = -reverseBits(u_input.a.x);
    var var_1 = Struct_1(any(vec2<bool>(!all(global0.xxz), true)), (-u_input.a.x | -2147483647i) > (i32(-1i) * -(~u_input.a.x)), _wgslsmith_clamp_vec4_i32(~firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -46068i)), -u_input.a, u_input.a), countOneBits(vec4<u32>(~abs(arg_0.a.x), 23685u, _wgslsmith_div_u32(reverseBits(u_input.b.x), ~arg_0.a.x), ~(~u_input.b.x))));
    global2 = max(-2147483647i, i32(-1i) * -_wgslsmith_mult_i32(var_1.c.x, 12426i));
    let var_2 = arg_0.a.x;
    return Struct_1(global0.x, !any(vec3<bool>(var_1.b, all(vec4<bool>(false, global0.x, var_1.b, false)), global0.x)), ~(_wgslsmith_mult_vec4_i32(u_input.a & vec4<i32>(1i, var_1.c.x, 2147483647i, var_1.c.x), ~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -49791i)) << (~(~var_1.d) % vec4<u32>(32u))), arg_0.a);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: u32, arg_3: bool) -> Struct_1 {
    global1 = -u_input.a.x;
    let var_0 = vec3<bool>(arg_0.c.a, true, !arg_3);
    global1 = i32(-1i) * -4452i;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-109f)) - _wgslsmith_f_op_f32(step(805f, 910f))), _wgslsmith_f_op_f32(741f + -1684f), true))) - _wgslsmith_f_op_f32(f32(-1f) * -2328f));
    var var_2 = u_input.b.x;
    return func_4(Struct_4(vec4<u32>(arg_2, ~_wgslsmith_mod_u32(4294967295u, u_input.b.x), u_input.b.x, firstLeadingBit(53576u))));
}

fn func_1() -> vec2<f32> {
    var var_0 = Struct_2(_wgslsmith_mod_u32(u_input.b.x, _wgslsmith_div_u32(~(~u_input.b.x), _wgslsmith_mult_u32(~4294967295u, 0u >> (0u % 32u)))), u_input.b, func_5(Struct_2(~u_input.b.x & _wgslsmith_mult_u32(u_input.b.x, 1u), vec3<u32>(u_input.b.x, select(6176u, 25863u, true), min(u_input.b.x, 12229u)), func_4(func_2(global0.x, u_input.a.yyw)), u_input.a.x, -47933i), Struct_3(select(!vec2<bool>(global0.x, global0.x), select(global0.wz, vec2<bool>(global0.x, global0.x), global0.x), all(vec3<bool>(true, false, global0.x)))), abs(func_2(false, vec3<i32>(1433i, 1i, u_input.a.x)).a.x | (4294967295u >> (1u % 32u))), false), ~(-u_input.a.x) ^ 1i, _wgslsmith_mod_i32(~_wgslsmith_mod_i32(_wgslsmith_add_i32(-69375i, 1i), countOneBits(u_input.a.x)), u_input.a.x));
    var var_1 = Struct_3(global0.yw);
    var var_2 = Struct_3(var_1.a);
    let var_3 = func_2(func_4(Struct_4(vec4<u32>(select(29871u, 1u, true), var_0.a, ~43054u, firstTrailingBit(u_input.b.x)))).b, vec3<i32>(u_input.a.x >> (~_wgslsmith_sub_u32(u_input.b.x, var_0.c.d.x) % 32u), u_input.a.x, _wgslsmith_clamp_i32(var_0.d, _wgslsmith_add_i32(u_input.a.x, var_0.e), -(~u_input.a.x))));
    let var_4 = 27074i;
    return _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-622f, _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2271f - -162f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2425f, _wgslsmith_f_op_f32(round(-863f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 55221i;
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1())) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1608f, 1285f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(2896f, 1511f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-894f + var_0.x), _wgslsmith_div_f32(var_0.x, var_0.x)), vec2<f32>(_wgslsmith_div_f32(var_0.x, -652f), -798f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(730f, -816f))) - _wgslsmith_f_op_vec2_f32(func_1()).x), 1000f), u_input.a.yy);
}

