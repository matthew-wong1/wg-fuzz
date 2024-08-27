struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: bool,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 23> = array<vec4<bool>, 23>(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true));

var<private> global1: vec4<i32>;

var<private> global2: f32 = -1169f;

var<private> global3: Struct_2 = Struct_2(vec4<i32>(0i, 2256i, 0i, -59109i), Struct_1(vec3<u32>(1u, 58615u, 0u), false, vec3<f32>(1000f, -1000f, 527f), -1000f), false, vec2<bool>(true, true));

var<private> global4: array<Struct_2, 2>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -161f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.c.x)))), global3.b.d, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(250f)), -510f), _wgslsmith_f_op_f32(global3.b.d - 220f)))));
    let var_1 = global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(countOneBits(~vec4<u32>(43910u, 81194u, u_input.b, 24299u)), vec4<u32>(u_input.b, global3.b.a.x, u_input.b, 118219u) | (vec4<u32>(68670u, global3.b.a.x, global3.b.a.x, u_input.b) << (vec4<u32>(51851u, 0u, 1u, 30574u) % vec4<u32>(32u)))), vec4<u32>(u_input.b, 4294967295u, 1u, ~u_input.b)), 2u)];
    global0 = array<vec4<bool>, 23>();
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1561f), 938f, -1213f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3.b.d))), 547f, _wgslsmith_f_op_f32(var_1.b.d - var_0.x), 814f), vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global3.b.d))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-284f))))), !all(vec3<bool>(false, var_1.d.x, global3.c)))), global3.b.b));
    let var_3 = Struct_1(~_wgslsmith_mult_vec3_u32(vec3<u32>(34880u, var_1.b.a.x & 43248u, 4294967295u), _wgslsmith_clamp_vec3_u32(vec3<u32>(global3.b.a.x, 4294967295u, 0u), vec3<u32>(4294967295u, u_input.b, var_1.b.a.x), firstLeadingBit(vec3<u32>(global3.b.a.x, 26105u, 3305u)))), global3.d.x, var_1.b.c, -480f);
    return 4294967295u;
}

fn func_2() -> Struct_1 {
    global3 = global4[_wgslsmith_index_u32(func_3(), 2u)];
    global4 = array<Struct_2, 2>();
    var var_0 = vec4<u32>(41215u ^ firstTrailingBit(reverseBits(142079u)), 1u, ~u_input.b >> ((abs(abs(global3.b.a.x)) ^ select(~u_input.b, ~4294967295u, true)) % 32u), 1u);
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global3.b.d)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.b.c.x, global3.b.c.x)))));
    var var_2 = _wgslsmith_add_u32(21319u, global3.b.a.x);
    return Struct_1(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(global3.b.a, ~var_0.wwx, vec3<u32>(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, global3.b.a.x, global3.b.a.x), vec3<u32>(0u, u_input.b, u_input.b)), ~var_0.x)), select(~vec3<u32>(u_input.b, 32620u, 69124u), ~global3.b.a, vec3<bool>(true, true, var_1)) & _wgslsmith_clamp_vec3_u32(vec3<u32>(12712u, var_0.x, global3.b.a.x), vec3<u32>(global3.b.a.x, 2739u, 4294967295u) | global3.b.a, global3.b.a | vec3<u32>(u_input.b, global3.b.a.x, 11160u))), any(vec2<bool>(false, true)), global3.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.d)));
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: vec4<f32>) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(min(22656u, func_3() | _wgslsmith_add_u32(u_input.b, arg_2.b.a.x)), 23u)];
    global0 = array<vec4<bool>, 23>();
    var var_1 = _wgslsmith_dot_vec3_u32(arg_2.b.a, vec3<u32>(47814u & ~func_3(), ~(~_wgslsmith_sub_u32(arg_2.b.a.x, u_input.b)), 1u));
    global0 = array<vec4<bool>, 23>();
    let var_2 = select(~(min(vec4<u32>(u_input.b, global3.b.a.x, global3.b.a.x, 26089u), vec4<u32>(37775u, arg_2.b.a.x, 5036u, arg_0)) | ~vec4<u32>(44555u, arg_2.b.a.x, 1u, 0u)), vec4<u32>((13908u | arg_0) | 25273u, ~_wgslsmith_clamp_u32(1500u, arg_2.b.a.x, arg_0), 1u >> ((global3.b.a.x >> (u_input.b % 32u)) % 32u), u_input.b), !(!vec4<bool>(true, true, arg_2.d.x, false))) | vec4<u32>(arg_2.b.a.x, ~(41102u ^ ~arg_0), arg_0, global3.b.a.x);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -237f), _wgslsmith_f_op_f32(select(2439f, 1000f, false)), !var_0.x)))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -104f))))));
}

fn func_5(arg_0: bool, arg_1: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(792f, arg_1, global3.b.d, arg_1), vec4<f32>(global3.b.d, 866f, arg_1, 766f)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x + global3.b.c.x), _wgslsmith_f_op_f32(var_0.x - 900f), _wgslsmith_f_op_f32(min(global3.b.c.x, var_0.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b.d, global3.b.c.x, -470f, -1341f) + vec4<f32>(var_0.x, arg_1, 633f, -970f)))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -593f), _wgslsmith_f_op_f32(-var_0.x), var_0.x) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(694f, -552f, -766f, 1573f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b.c.x, global3.b.d, arg_1, -1137f) - vec4<f32>(-612f, -1250f, -355f, var_0.x)), any(vec4<bool>(true, false, false, arg_0)))))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))) * _wgslsmith_div_f32(-927f, _wgslsmith_f_op_f32(-136f + var_0.x))), var_0.x)));
    let var_1 = Struct_2(~_wgslsmith_add_vec4_i32(firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, global1.x, global3.a.x, -1i), vec4<i32>(10927i, global3.a.x, -10281i, -1i))), firstTrailingBit(-global3.a)), Struct_1(global3.b.a, !arg_0, global3.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.b.c.x), global3.b.c.x)))), select(global3.b.b, select(any(select(vec2<bool>(true, false), vec2<bool>(true, global3.c), global3.d)), !(u_input.a != u_input.c), any(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), global3.d))), true), select(vec2<bool>(arg_0, false), global3.d, !arg_0));
    global3 = Struct_2(firstLeadingBit(-abs(_wgslsmith_mod_vec4_i32(var_1.a, var_1.a))), func_2(), true, global3.d);
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2196f, global3.b.d, 134f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x)))));
    return var_0.x;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(func_5(global3.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_clamp_u32(u_input.b, firstTrailingBit(global3.b.a.x), ~global3.b.a.x), global3.d, Struct_2(global3.a ^ global3.a, func_2(), true, !global3.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.b.d, 529f, -1419f, global3.b.d)))))))));
    let var_1 = func_2();
    global3 = global4[_wgslsmith_index_u32(global3.b.a.x, 2u)];
    var var_2 = var_1;
    let var_3 = func_2();
    return Struct_1(var_1.a, true, global3.b.c, func_2().c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4[_wgslsmith_index_u32(57614u, 2u)];
    let var_1 = func_1();
    global3 = global4[_wgslsmith_index_u32(~firstLeadingBit(~(~(~1u))), 2u)];
    let var_2 = Struct_1(~vec3<u32>(~var_1.a.x, firstLeadingBit(var_0.b.a.x), _wgslsmith_clamp_u32(20178u, 35225u, 27672u)) >> (~abs(var_1.a) % vec3<u32>(32u)), var_0.c, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b.c)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.b.d, 1312f, var_0.b.c.x))))))), _wgslsmith_f_op_f32(-var_0.b.d));
    let var_3 = Struct_1(vec3<u32>(func_1().a.x, var_1.a.x, ~firstLeadingBit(1u) ^ ~firstLeadingBit(var_2.a.x)), true & any(vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(584f, -140f, global3.b.c.x), _wgslsmith_f_op_vec3_f32(-var_1.c)))))), global3.b.d);
    var var_4 = (func_2().a.x <= ~41820u) || true;
    global2 = 570f;
    let x = u_input.a;
    s_output = StorageBuffer(325f, vec3<f32>(var_0.b.d, func_2().d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.b.c.x, 1634f) * _wgslsmith_f_op_f32(floor(var_0.b.c.x))))), ~select(vec2<u32>(u_input.b, _wgslsmith_mult_u32(29706u, u_input.b)), var_0.b.a.yx, false));
}

