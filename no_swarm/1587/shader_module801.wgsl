struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_3,
    d: Struct_2,
    e: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16>;

var<private> global1: array<Struct_3, 29>;

var<private> global2: vec3<bool>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec2<i32> {
    var var_0 = Struct_5(Struct_4(382f, Struct_1(_wgslsmith_dot_vec3_u32(countOneBits(u_input.a), u_input.a), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1734f, 330f, -1090f) + vec3<f32>(-1000f, 578f, 1425f)))), u_input.a.x, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-280f, 820f, 295f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-946f, 882f, -1000f)))))), Struct_3(Struct_1(~u_input.a.x, vec3<f32>(1f, 1f, 1f), u_input.a.x | 10275u, _wgslsmith_f_op_vec3_f32(vec3<f32>(467f, 1965f, -226f) * vec3<f32>(-411f, 432f, -600f)))), Struct_2(_wgslsmith_div_vec2_u32(~u_input.a.yx, u_input.a.xx), Struct_1(10612u, _wgslsmith_f_op_vec3_f32(vec3<f32>(-909f, -773f, -318f) + vec3<f32>(1226f, 1604f, -304f)), 0u, vec3<f32>(-1999f, -1217f, 730f)), vec2<bool>(!global2.x, global2.x)), firstTrailingBit(firstLeadingBit(u_input.a))), Struct_1(4294967295u, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-244f, -279f, 641f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1811f, -454f, -1000f)), vec3<f32>(102f, 553f, -559f))))), (u_input.a.x >> (~27525u % 32u)) >> (~1u % 32u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-100f, 1069f, -378f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))));
    var var_1 = global0[_wgslsmith_index_u32(~var_0.b.a, 16u)];
    return min(_wgslsmith_add_vec2_i32(abs(select(~u_input.b.xw, vec2<i32>(-2147483647i, u_input.b.x), vec2<bool>(true, global2.x))), -_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), abs(vec2<i32>(-6491i, u_input.b.x)))), vec2<i32>(u_input.b.x, (_wgslsmith_mult_i32(-52065i, 37960i) ^ -u_input.b.x) ^ select(u_input.b.x << (var_0.a.b.c % 32u), u_input.b.x, !var_0.a.d.c.x)));
}

fn func_2() -> Struct_3 {
    let var_0 = true;
    global0 = array<Struct_3, 16>();
    let var_1 = _wgslsmith_div_u32(~(~1u), u_input.a.x);
    var var_2 = _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(max(u_input.b.yy, firstLeadingBit(-vec2<i32>(25352i, 11422i))), select(_wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(u_input.b.x, -5642i)), func_3()), -(vec2<i32>(u_input.b.x, u_input.b.x) ^ u_input.b.wz), true)), -u_input.b.yz ^ ~_wgslsmith_add_vec2_i32(u_input.b.yw, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b.xy)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(649f, 1000f))) + -256f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1220f)) - -242f)))) - 893f);
    return Struct_3(Struct_1(~u_input.a.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-867f, 841f, -318f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-159f, 489f, 1808f) - vec3<f32>(-1308f, 178f, 140f))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(970f, 1265f, -946f) * vec3<f32>(-725f, -1740f, -305f))))), _wgslsmith_clamp_u32(u_input.a.x, var_1, ~1u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -649f)), _wgslsmith_div_f32(816f, _wgslsmith_f_op_f32(f32(-1f) * -841f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-426f * 287f))))));
}

fn func_1() -> f32 {
    global1 = array<Struct_3, 29>();
    var var_0 = u_input.a.x;
    let var_1 = vec4<f32>(827f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1426f - 181f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-348f, 1243f) * 182f), -1676f))), 1349f);
    let var_2 = func_2();
    var var_3 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -247f)) * var_2.a.d.x), func_2().a, func_2(), Struct_2(~_wgslsmith_add_vec2_u32(u_input.a.xz, ~u_input.a.yz), var_2.a, select(!vec2<bool>(global2.x, true), select(vec2<bool>(true, true), select(global2.xx, vec2<bool>(global2.x, global2.x), global2.x), global2.xy), global2.x)), u_input.a);
    return -1453f;
}

fn func_4(arg_0: f32, arg_1: f32) -> f32 {
    global0 = array<Struct_3, 16>();
    global0 = array<Struct_3, 16>();
    var var_0 = global2.zx;
    global2 = !select(vec3<bool>(true, all(select(vec3<bool>(global2.x, false, global2.x), vec3<bool>(global2.x, global2.x, false), vec3<bool>(true, false, false))), false), vec3<bool>(var_0.x, true, select(any(vec4<bool>(false, global2.x, false, false)), select(true, false, false), true)), select(vec3<bool>(u_input.b.x == u_input.b.x, !global2.x, all(global2.yx)), !select(vec3<bool>(true, global2.x, true), vec3<bool>(true, var_0.x, false), vec3<bool>(global2.x, false, false)), global2.x));
    let var_1 = u_input.b.x;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-3326f))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 29>();
    var var_0 = u_input.a;
    var var_1 = vec4<u32>(u_input.a.x, var_0.x, u_input.a.x, var_0.x);
    global2 = vec3<bool>(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(sign(-158f)))) > 669f, !all(vec4<bool>(global2.x, global2.x & true, true, all(vec4<bool>(true, true, global2.x, global2.x)))), true);
    let var_2 = Struct_5(Struct_4(_wgslsmith_f_op_f32(1513f * -420f), Struct_1(1u, vec3<f32>(_wgslsmith_div_f32(1210f, 179f), -408f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_1.x, 1u, u_input.a.x), vec4<u32>(var_1.x, var_1.x, var_0.x, u_input.a.x)) << (countOneBits(718u) % 32u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(397f, -289f, 297f) + vec3<f32>(-844f, 1000f, -930f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1546f, -826f, -332f) * vec3<f32>(-1515f, -224f, 1587f)))), func_2(), Struct_2(~firstLeadingBit(vec2<u32>(var_1.x, 0u)), func_2().a, !global2.zy), select(vec3<u32>(var_1.x, _wgslsmith_mult_u32(var_1.x, u_input.a.x), firstTrailingBit(var_1.x)), ~abs(u_input.a), global2.x)), Struct_1(1u, vec3<f32>(-2066f, 228f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2535f, -171f, global2.x)) * -384f)), ~26624u, func_2().a.d));
    let var_3 = var_2.b.b.zz;
    let var_4 = Struct_1(1u, _wgslsmith_f_op_vec3_f32(trunc(var_2.b.d)), ~_wgslsmith_mod_u32(var_2.b.a, ~1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-644f, var_3.x, var_2.b.d.x)))) - vec3<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(-var_2.b.b.x), _wgslsmith_f_op_f32(exp2(var_2.a.b.d.x))))));
    var var_5 = !vec3<bool>(false, any(!(!global2.yy)), !all(vec4<bool>(true, global2.x, false, global2.x)) & var_2.a.d.c.x);
    global0 = array<Struct_3, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(var_1.x, var_1.x, 65393u), u_input.a.zz & var_1.xw);
}

