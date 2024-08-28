struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec4<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: array<vec3<f32>, 3>;

var<private> global2: Struct_1 = Struct_1(vec3<u32>(1u, 1u, 21109u), false, vec4<f32>(-2032f, 2462f, -1590f, -171f), 14399u);

var<private> global3: Struct_1 = Struct_1(vec3<u32>(44849u, 1u, 1u), false, vec4<f32>(302f, 769f, 980f, -1651f), 4294967295u);

var<private> global4: i32 = 2147483647i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> bool {
    var var_0 = Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(~min(vec3<u32>(18931u, arg_1.a.x, global3.d), vec3<u32>(74295u, 46647u, 1u)), ~(vec3<u32>(global3.d, global3.a.x, global2.d) & global2.a)), ~vec3<u32>(firstTrailingBit(u_input.c.x), countOneBits(arg_1.a.x), global3.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -444f))) + global2.c.x) < 618f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global2.c.x + global3.c.x), _wgslsmith_f_op_f32(1114f + global3.c.x), _wgslsmith_f_op_f32(global3.c.x - -245f), 1025f) * _wgslsmith_f_op_vec4_f32(-global3.c))), firstLeadingBit(max(u_input.b.x, abs(20874u >> (global3.d % 32u)))));
    let var_1 = arg_1;
    global4 = reverseBits(abs(u_input.a.x));
    var var_2 = Struct_1(_wgslsmith_clamp_vec3_u32(global3.a, u_input.b.wxx, select(vec3<u32>(~19905u, ~var_0.d, global3.a.x), (var_0.a | vec3<u32>(var_0.a.x, 43305u, 44051u)) & (var_0.a << (u_input.b.wyy % vec3<u32>(32u))), select(vec3<bool>(global3.b, false, false), vec3<bool>(false, true, var_1.b), arg_1.b))), any(select(select(select(vec3<bool>(global3.b, true, var_1.b), vec3<bool>(false, true, true), arg_1.b), !vec3<bool>(false, var_1.b, true), !vec3<bool>(false, global2.b, false)), !select(vec3<bool>(var_1.b, true, global2.b), vec3<bool>(global3.b, true, true), vec3<bool>(var_1.b, var_0.b, arg_1.b)), select(vec3<bool>(true, true, global3.b), !vec3<bool>(true, var_1.b, true), vec3<bool>(false, global3.b, global2.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.c - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(global2.c))))), 1u);
    var var_3 = (~(~(~var_0.a.x)) | firstLeadingBit(firstTrailingBit(abs(4294967295u)))) < (~7870u >> ((50304u << (var_1.a.x % 32u)) % 32u));
    return false;
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = !(!global2.b);
    let var_1 = Struct_1(~(~(~countOneBits(global2.a))), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(169f * global2.c.x) * global3.c.x)), Struct_1(vec3<u32>(16603u, global3.d, abs(0u)), true, vec4<f32>(_wgslsmith_f_op_f32(min(global3.c.x, -916f)), -187f, _wgslsmith_f_op_f32(arg_0.c.x - 1000f), 567f), _wgslsmith_add_u32(arg_0.d, ~1u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 339f, global2.c.x, arg_0.c.x)), _wgslsmith_f_op_vec4_f32(global2.c * arg_0.c)))))), global2.a.x);
    var var_2 = ~(~vec2<u32>(_wgslsmith_mult_u32(global3.a.x, arg_0.a.x) ^ _wgslsmith_sub_u32(global3.a.x, 20686u), ~firstTrailingBit(0u)));
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_1(~(~(~(~vec3<u32>(35398u, u_input.c.x, global2.a.x)))), any(select(vec2<bool>(arg_2.b, !arg_2.b), vec2<bool>(arg_0.b, select(arg_1.x, false, arg_2.b)), vec2<bool>(true, arg_1.x))), arg_3.c, arg_0.d);
    var var_1 = func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c.x), -2681f), 407f, _wgslsmith_f_op_f32(174f + -1082f) > global3.c.x)) + 1000f), arg_3);
    var var_2 = Struct_1(~(max(vec3<u32>(4294967295u, 88874u, global2.d), ~vec3<u32>(global2.d, var_0.a.x, 4294967295u)) << (reverseBits(global2.a) % vec3<u32>(32u))), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(803f, var_0.c.x, -659f, global3.c.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, -252f, arg_3.c.x, 998f))))), ~29417u);
    var var_3 = true;
    var_1 = true;
    return abs(_wgslsmith_mult_u32(~_wgslsmith_add_u32(0u | var_2.a.x, ~12328u), ~var_0.d));
}

fn func_1(arg_0: Struct_1) -> vec3<u32> {
    global0 = array<Struct_1, 25>();
    var var_0 = Struct_1(_wgslsmith_div_vec3_u32(global2.a, arg_0.a), arg_0.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-628f, -1205f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.c.x * 1209f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-158f + 634f), _wgslsmith_f_op_f32(ceil(global2.c.x))), 166f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-401f)), global2.c.x, -1420f, arg_0.c.x) - vec4<f32>(_wgslsmith_div_f32(-2111f, 1637f), _wgslsmith_f_op_f32(min(-1081f, 2695f)), _wgslsmith_f_op_f32(-global2.c.x), -1807f))), global2.a.x);
    global0 = array<Struct_1, 25>();
    let var_1 = 4294967295u;
    var var_2 = arg_0;
    return ~_wgslsmith_div_vec3_u32(~var_2.a, vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(55320u, arg_0.a.x, 4294967295u, 64638u), u_input.b), _wgslsmith_mult_u32(0u, u_input.c.x), 17469u)) << (_wgslsmith_div_vec3_u32(vec3<u32>(func_4(arg_0, vec4<bool>(var_0.b, false, true, true), func_2(Struct_1(vec3<u32>(38284u, 0u, 4294967295u), arg_0.b, vec4<f32>(var_2.c.x, global3.c.x, -1986f, global2.c.x), global2.d), true), global0[_wgslsmith_index_u32(1u, 25u)]), func_4(Struct_1(global3.a, false, vec4<f32>(-1690f, -131f, -1000f, var_2.c.x), 16968u), select(vec4<bool>(false, true, false, var_0.b), vec4<bool>(var_0.b, var_0.b, var_2.b, var_2.b), global2.b), Struct_1(global2.a, false, vec4<f32>(var_0.c.x, 606f, var_0.c.x, 328f), var_1), global0[_wgslsmith_index_u32(reverseBits(49550u), 25u)]), abs(firstTrailingBit(1u))), func_2(Struct_1(u_input.c.wwy >> (vec3<u32>(var_0.a.x, 22188u, 55711u) % vec3<u32>(32u)), var_0.b && true, _wgslsmith_f_op_vec4_f32(var_0.c - vec4<f32>(global3.c.x, global2.c.x, var_2.c.x, -1608f)), 57252u), true).a) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b.x, 4294967295u, global3.a.x), _wgslsmith_mult_vec3_u32(global3.a, abs(global3.a))), ~func_1(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, global3.a.x), 25u)]))), 25u)];
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global3.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.c.x, global2.c.x))))));
    var_1 = var_0.c.x;
    let var_2 = _wgslsmith_mult_i32(-_wgslsmith_clamp_i32(u_input.a.x, abs(-1i), -4750i), -_wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.a.x, u_input.a.x, 1i), u_input.a), u_input.a | u_input.a)) >= abs(_wgslsmith_sub_i32(u_input.a.x, ~select(u_input.a.x, -1i, true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-1029f, _wgslsmith_f_op_f32(f32(-1f) * -199f)), firstTrailingBit(u_input.a.x), _wgslsmith_f_op_f32(round(-1914f)), _wgslsmith_mod_u32(max(1u, 4294967295u), _wgslsmith_div_u32(global2.a.x, global3.d)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global2.c.x - _wgslsmith_f_op_f32(f32(-1f) * -1115f)), _wgslsmith_div_f32(-1063f, -864f)) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0.c.yy + vec2<f32>(-1000f, -425f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1028f, 1000f)), select(vec2<bool>(var_2, var_2), vec2<bool>(global3.b, global3.b), vec2<bool>(true, false))))))));
}

