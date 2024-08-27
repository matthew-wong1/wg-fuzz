struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: u32 = 4294967295u;

var<private> global2: array<vec3<i32>, 29>;

var<private> global3: Struct_1 = Struct_1(vec2<i32>(0i, i32(-2147483648)), vec3<bool>(false, false, false), vec2<i32>(-16741i, -1i), vec4<i32>(i32(-2147483648), -23567i, -1i, 27215i), true);

var<private> global4: vec3<bool> = vec3<bool>(false, false, true);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> vec2<i32> {
    let var_0 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(~(~90859u), ~arg_1.a.x, 63476u, _wgslsmith_dot_vec3_u32(~arg_1.a, ~vec3<u32>(20828u, 4294967295u, 23380u))), vec4<u32>(31349u, (0u << (arg_1.a.x % 32u)) ^ (43807u >> (arg_1.a.x % 32u)), arg_1.a.x, 1u));
    global3 = Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(arg_0, -1053i), firstTrailingBit(u_input.b.x)) | ~(arg_2.c ^ arg_2.c), max(-(~global3.c), ~(vec2<i32>(arg_0, global3.c.x) >> (arg_1.a.xx % vec2<u32>(32u)))), -(~vec2<i32>(0i, -2147483647i))), vec3<bool>(global3.e, !all(vec2<bool>(arg_1.c.x, global4.x)), false && !(var_0.x <= 1u)), -u_input.b.zz, reverseBits(~arg_1.b.d), arg_2.e);
    var var_1 = Struct_3(arg_1, select(any(select(!vec3<bool>(global4.x, true, arg_1.c.x), select(vec3<bool>(arg_1.c.x, arg_1.c.x, true), vec3<bool>(true, false, arg_2.e), false), true)), true, _wgslsmith_f_op_f32(-global0.x) > -808f), (((u_input.a ^ -1i) << (_wgslsmith_sub_u32(15831u, var_0.x) % 32u)) & 2147483647i) | 1i);
    var var_2 = vec4<bool>(any(vec3<bool>(select(true, global3.e, true), 1i >= min(-64012i, u_input.a), global4.x)), any(!vec2<bool>(any(global3.b), global4.x)), false, 4294967295u <= arg_1.a.x);
    var var_3 = firstLeadingBit(arg_2.d.zy >> (vec2<u32>(24413u, ~_wgslsmith_div_u32(0u, var_1.a.a.x)) % vec2<u32>(32u)));
    return vec2<i32>(arg_0, ~max(u_input.b.x ^ firstTrailingBit(-1i), ~0i));
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    let var_0 = Struct_2(max(arg_0.ywy, ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(28507u, 4294967295u, 44820u), vec3<u32>(7999u, 4294967295u, arg_0.x)))), Struct_1(-func_3(_wgslsmith_sub_i32(u_input.c, 11932i), Struct_2(arg_0.wyz, Struct_1(u_input.b.zz, global3.b, global3.d.wy, vec4<i32>(-2147483647i, -1i, u_input.b.x, global3.d.x), global3.e), vec4<bool>(true, global4.x, true, true)), Struct_1(vec2<i32>(-32913i, -42405i), global3.b, global3.a, vec4<i32>(u_input.c, 27661i, global3.a.x, -20622i), global4.x)), !vec3<bool>(false, global3.e, any(vec3<bool>(global3.e, false, true))), u_input.b.yy, vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a, global3.c.x), -98196i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.a, -14007i) ^ vec3<i32>(-10541i, -1i, u_input.a), u_input.b), ~abs(12082i), _wgslsmith_div_i32(abs(global3.a.x), ~1i)), !(select(global3.b.x, true, global3.e) & false)), select(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(global3.e, global3.b.x, global4.x, global3.e), false)), select(vec4<bool>(!global3.e, !global3.e, true, select(global4.x, global4.x, false)), !vec4<bool>(global4.x, false, false, global4.x), any(vec4<bool>(global4.x, global4.x, global4.x, global3.e))), true));
    global4 = vec3<bool>(var_0.b.e, select(global3.e, all(global3.b.zy) | any(var_0.b.b), true), false);
    var var_1 = Struct_3(var_0, global3.e, _wgslsmith_div_i32(~(-2147483647i), select(_wgslsmith_mod_i32(u_input.c, -1i), global3.a.x, !all(vec2<bool>(global4.x, global3.b.x)))));
    global2 = array<vec3<i32>, 29>();
    var var_2 = 4294967295u;
    return ~1162u;
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> vec4<f32> {
    global0 = vec4<f32>(269f, -763f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -946f)), _wgslsmith_f_op_f32(exp2(global0.x)));
    global4 = vec3<bool>(!any(arg_0.a.c), true, false);
    let var_0 = -269f;
    var var_1 = -reverseBits(max(firstTrailingBit(vec2<i32>(arg_3.a.x, -48659i)), vec2<i32>(_wgslsmith_sub_i32(2147483647i, u_input.b.x), arg_3.d.x & u_input.c)));
    var var_2 = Struct_1(vec2<i32>(var_1.x, 3606i), select(global3.b, vec3<bool>(~arg_0.a.a.x <= arg_1, arg_2 != _wgslsmith_mod_u32(56329u, arg_2), !global3.e), global3.b), -reverseBits(-(~vec2<i32>(u_input.c, -24283i))), global3.d, arg_3.e);
    return _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-425f, global0.x), global0.x)), var_0, 1f)));
}

fn func_1() -> vec4<f32> {
    let var_0 = -1301f;
    var var_1 = -u_input.c;
    var_1 = 1i;
    let var_2 = 489f;
    var_1 = 1i;
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_4(Struct_3(Struct_2(vec3<u32>(10533u, 0u, 1u), Struct_1(vec2<i32>(41569i, u_input.b.x), vec3<bool>(global4.x, global3.b.x, false), u_input.b.zx, global3.d, true), vec4<bool>(false, true, false, global3.e)), false, -20164i), func_2(vec4<u32>(20340u, 41230u, 21378u, 1u)), ~16785u, Struct_1(vec2<i32>(global3.d.x, u_input.a), global3.b, vec2<i32>(u_input.b.x, global3.d.x), global3.d, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, var_0, global0.x, global0.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, -1000f, 227f, var_2) + vec4<f32>(1883f, global0.x, var_0, var_2))), global3.e)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, 1000f, 293f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, var_0, var_0, 1344f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2181f, global0.x, 1000f, 469f))), global3.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, var_2, global0.x, 739f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, global0.x, global0.x, 1754f) - vec4<f32>(1462f, 1000f, -498f, -168f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_0, 1270f, 518f)))))));
}

fn func_5(arg_0: vec3<f32>, arg_1: u32, arg_2: vec4<f32>, arg_3: Struct_2) -> f32 {
    let var_0 = arg_3;
    global1 = ~countOneBits(~_wgslsmith_clamp_u32(~0u, select(4294967295u, arg_1, global4.x), ~1u));
    var var_1 = _wgslsmith_div_i32(i32(-1i) * -22259i, firstTrailingBit(~global3.c.x));
    return _wgslsmith_f_op_f32(-572f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_3(Struct_2(arg_3.a, arg_3.b, arg_3.c), true, -2147483647i | global3.a.x), _wgslsmith_dot_vec3_u32(var_0.a, firstLeadingBit(vec3<u32>(0u, 4294967295u, var_0.a.x))), firstLeadingBit(~48410u), Struct_1(~u_input.b.zx, global3.b, vec2<i32>(global3.c.x, 2735i), arg_3.b.d, arg_3.b.b.x))).x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec3_f32(ceil(global0.zwx)), min(_wgslsmith_mult_u32(0u, abs(21067u)), _wgslsmith_mult_u32(min(3156u, 119669u), 8584u)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1367f, -1610f, global0.x, -287f), vec4<f32>(-109f, -1517f, -681f, 791f), global3.e)), vec4<f32>(global0.x, global0.x, global0.x, global0.x), !global4.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1958f, 830f, 523f)), _wgslsmith_f_op_vec4_f32(func_1())))), Struct_2(~vec3<u32>(34331u, 0u, 1u), Struct_1(global3.d.yy, !global3.b, vec2<i32>(2147483647i, -1i) ^ vec2<i32>(global3.c.x, u_input.a), vec4<i32>(u_input.c, 1i, -2147483647i, 7072i), false), select(!vec4<bool>(true, global3.b.x, false, global4.x), !vec4<bool>(true, global3.e, global3.e, global3.b.x), true)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global0.x, global0.x))) + _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(select(-1981f, _wgslsmith_f_op_f32(global0.x - 1826f), !global4.x)))), 746f <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(237f - 1089f), -985f)))), global0.x);
    var var_1 = 4294967295u <= func_2(~vec4<u32>(~1u, firstLeadingBit(4294967295u), ~1u, min(11490u, 1u)));
    var var_2 = countOneBits(vec2<u32>(1u, 1u));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-1923f)), -999f, -1476f, _wgslsmith_f_op_f32(f32(-1f) * -354f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, var_0.x, 1000f, 1924f), vec4<f32>(global0.x, global0.x, var_0.x, global0.x))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, var_0.x, 1727f, global0.x))))))));
    global0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(237f)) + 324f), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(226f - _wgslsmith_f_op_f32(round(1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_3(Struct_2(vec3<u32>(55175u, var_2.x, 4294967295u), Struct_1(vec2<i32>(u_input.b.x, -48496i), vec3<bool>(global3.e, global3.e, true), vec2<i32>(global3.a.x, -11030i), vec4<i32>(global3.a.x, -14591i, -45202i, global3.c.x), true), vec4<bool>(true, global3.b.x, false, global3.e)), global3.b.x, u_input.b.x), 0u, 0u >> (var_2.x % 32u), Struct_1(vec2<i32>(global3.d.x, global3.d.x), global3.b, vec2<i32>(global3.a.x, 1i), global3.d, global4.x))).x + 868f))));
    let var_3 = any(!select(global4.xy, global4.xy, true)) || true;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec3<u32>(var_2.x, _wgslsmith_mult_u32(~var_2.x, 1u), var_2.x)), vec4<i32>(global3.a.x, 1i << (~var_2.x % 32u), -firstLeadingBit(-43538i), _wgslsmith_mod_i32(~u_input.c, _wgslsmith_mod_i32(1i, select(-2147483647i, 38696i, global3.b.x)))), -u_input.b, -385f);
}

