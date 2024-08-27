struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22>;

var<private> global1: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(vec2<i32>(24901i, 1136i)), Struct_2(vec2<i32>(11577i, -31357i)), Struct_2(vec2<i32>(1i, -1i)));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = arg_0;
    var var_1 = arg_0;
    global0 = array<f32, 22>();
    global1 = array<Struct_2, 3>();
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(778f, -1000f, arg_0.c, -744f)))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1639f)), -723f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 22u)]), var_0.c, _wgslsmith_f_op_f32(292f + _wgslsmith_f_op_f32(-1260f * arg_0.c)))))));
    return false;
}

fn func_2() -> Struct_3 {
    var var_0 = !all(vec4<bool>(false, true, !any(vec2<bool>(false, false)), false));
    let var_1 = !(!func_3(Struct_1(firstTrailingBit(u_input.b), u_input.d.zy, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 22u)]), countOneBits(u_input.c))));
    var_0 = true;
    var var_2 = global0[_wgslsmith_index_u32(min(4294967295u, max(_wgslsmith_dot_vec4_u32(~(vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, u_input.a) ^ vec4<u32>(u_input.e, u_input.d.x, u_input.a, u_input.e)), vec4<u32>(4294967295u, _wgslsmith_sub_u32(u_input.a, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.e, u_input.e), vec3<u32>(u_input.d.x, 0u, 4294967295u)), firstTrailingBit(0u))), ~abs(countOneBits(u_input.e)))), 22u)];
    let var_3 = Struct_2(vec2<i32>(u_input.b.x, min(u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(16285i, u_input.b.x, 1i, u_input.b.x), u_input.b))));
    return Struct_3(vec4<i32>(-30084i, ~54480i, -var_3.a.x, _wgslsmith_dot_vec2_i32(~u_input.b.yy, vec2<i32>(var_3.a.x, -11476i)) | (_wgslsmith_add_i32(var_3.a.x, u_input.c) & reverseBits(u_input.c))));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: u32) -> vec2<i32> {
    var var_0 = Struct_4(!select(vec3<bool>(false, true, !arg_1.x), !select(vec3<bool>(false, arg_1.x, true), vec3<bool>(arg_1.x, true, arg_1.x), vec3<bool>(arg_1.x, false, true)), 602f > _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(61072u, 22u)] * 582f)));
    var var_1 = Struct_2(vec2<i32>(max(37363i, arg_0.a.x), arg_0.a.x));
    var var_2 = select(select(!(!select(vec4<bool>(true, true, var_0.a.x, false), vec4<bool>(var_0.a.x, true, arg_1.x, arg_1.x), arg_1.x)), arg_1, !arg_1), select(!(!select(arg_1, vec4<bool>(arg_1.x, true, false, var_0.a.x), vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x))), arg_1, select(!arg_1, !(!arg_1), arg_1)), arg_1);
    var var_3 = Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(-max(u_input.b, arg_2.a), u_input.b & arg_2.a), countOneBits(firstLeadingBit(arg_0.a)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, arg_3, u_input.a, arg_3), vec4<u32>(u_input.e, 4294967295u, 1u, 1u)) % vec4<u32>(32u))), ~((_wgslsmith_clamp_vec2_u32(vec2<u32>(24206u, arg_3), u_input.d.xx, vec2<u32>(4889u, arg_3)) ^ vec2<u32>(u_input.d.x, 14541u)) >> (~vec2<u32>(6253u, arg_3) % vec2<u32>(32u))), global0[_wgslsmith_index_u32(arg_3, 22u)], 0i);
    let var_4 = var_2.x;
    return u_input.b.zw;
}

fn func_1(arg_0: f32) -> vec4<u32> {
    global0 = array<f32, 22>();
    let var_0 = u_input.a;
    let var_1 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-u_input.c, -u_input.b.x) | -u_input.b.xw, ~func_4(func_2(), vec4<bool>(false, false, true, true), Struct_3(vec4<i32>(u_input.c, 4481i, -26674i, -40050i)), firstLeadingBit(0u))), u_input.b.x, u_input.b.x, u_input.c);
    let var_2 = vec4<bool>(u_input.b.x != var_1.x, ((-1i > u_input.b.x) == true) || !(any(vec3<bool>(true, false, true)) | false), false, 28343u <= (var_0 & _wgslsmith_dot_vec2_u32(u_input.d.zx, vec2<u32>(u_input.a, var_0))));
    global0 = array<f32, 22>();
    return ~(~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 34436u, var_0, var_0), vec4<u32>(4294967295u, 1u, u_input.a, 24542u)), ~vec4<u32>(72797u, 5439u, u_input.e, 4294967295u))) | _wgslsmith_mult_vec4_u32(vec4<u32>(~var_0, var_0, 0u, u_input.d.x) << (_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a, 5926u, u_input.d.x, var_0), ~vec4<u32>(0u, 0u, u_input.e, 64674u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.e, var_0, u_input.e, 0u), vec4<u32>(0u, 0u, var_0, u_input.e))) % vec4<u32>(32u)), vec4<u32>(4294967295u, var_0, 6841u, ~1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(865f, 902f, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(func_1(global0[_wgslsmith_index_u32(u_input.a, 22u)]), ~vec4<u32>(1u, 90279u, u_input.a, u_input.e)), 22u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.e, 22u)], global0[_wgslsmith_index_u32(99298u, 22u)]))))));
    global0 = array<f32, 22>();
    global1 = array<Struct_2, 3>();
    var var_1 = abs(abs(~_wgslsmith_mult_u32(u_input.e, 46665u))) | ~u_input.a;
    let var_2 = ~vec4<i32>(-1i, 1i, ~(-2147483647i), ~abs(0i) << (~(~u_input.d.x) % 32u));
    let var_3 = abs(u_input.d.zy);
    var var_4 = 36658u;
    let var_5 = Struct_3(vec4<i32>(_wgslsmith_mod_i32(u_input.b.x, -u_input.b.x), abs(1i), 1i << (abs(u_input.a >> (1u % 32u)) % 32u), 1i));
    var_1 = 22745u;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec2_u32(~(~var_3), _wgslsmith_add_vec2_u32(select(var_3, u_input.d.yx, vec2<bool>(false, false)), countOneBits(vec2<u32>(u_input.d.x, 41759u))), ~(~vec2<u32>(u_input.a, var_3.x))));
}

