struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec4<i32>,
    d: vec4<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: vec4<f32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<i32>(2147483647i, 5456i, -13008i, 99885i), 0u, -983f, Struct_1(vec3<f32>(-1690f, -887f, -857f), false, vec4<i32>(37102i, 1i, 2147483647i, 24327i), vec4<i32>(-11525i, 457i, 41681i, -43413i), 0u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = -767f;
    var_0 = global0.c;
    let var_1 = global0.c;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -561f), _wgslsmith_f_op_f32(-global0.d.a.x), -502f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-961f, -1000f))));
    var_2 = vec4<f32>(777f, global0.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1192f)))), global0.d.a.x);
    return var_2.x;
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_mult_i32(~u_input.e.x, ~_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(23031i, u_input.b.x, 1i, global0.a.x)), u_input.b)) <= global0.d.c.x;
    var var_1 = select(!vec2<bool>(all(select(vec3<bool>(false, false, global0.d.b), vec3<bool>(false, global0.d.b, var_0), false)), _wgslsmith_f_op_f32(-218f - global0.c) <= -1127f), !vec2<bool>(!global0.d.b, any(select(vec2<bool>(false, true), vec2<bool>(true, global0.d.b), false))), select(vec2<bool>(false | (u_input.c != 0u), false), !(!vec2<bool>(global0.d.b, global0.d.b)), true));
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) + global0.d.a.x), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.c)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-264f - global0.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(532f)), 467f))), 1168f, 262f), 4294967295u);
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = func_2();
    var var_1 = Struct_2(u_input.b, u_input.c, 1709f, arg_0);
    let var_2 = vec2<f32>(653f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())));
    global0 = Struct_2(abs(vec4<i32>(firstLeadingBit(global0.d.c.x), _wgslsmith_mod_i32(firstTrailingBit(global0.a.x), firstLeadingBit(-20753i)), ~(-arg_0.d.x), 1i)), arg_0.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1323f, 763f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.x))))), Struct_1(var_1.d.a, arg_0.b, arg_0.c >> (_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(26676u, 1u, u_input.c, global0.d.e)), ~vec4<u32>(u_input.c, var_1.b, global0.b, 0u)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(global0.a, -var_1.a), ~(global0.b | u_input.c) | _wgslsmith_add_u32(~global0.d.e, ~116803u)));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-503f - var_0.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_0.b.x)))) + global0.d.a.x), 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.a.x))));
    return 15398i & reverseBits(min(22691i << (~global0.b % 32u), abs(u_input.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(vec4<i32>(u_input.b.x, u_input.a, _wgslsmith_mult_i32(global0.a.x << (62285u % 32u), func_1(Struct_1(vec3<f32>(global0.c, global0.d.a.x, 1762f), global0.d.b, global0.d.c, vec4<i32>(u_input.b.x, global0.d.d.x, -21940i, 2147483647i), 0u))), 1i), global0.b, global0.d.a.x, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, -519f, -1321f)), _wgslsmith_f_op_vec3_f32(ceil(global0.d.a)), !vec3<bool>(false, false, global0.d.b)))), global0.d.b, u_input.b, global0.a, ~_wgslsmith_mod_u32(0u, ~global0.b)));
    global0 = Struct_2(-(~vec4<i32>(countOneBits(global0.d.d.x), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.x, 8296i), global0.a.xx), ~(-2147483647i), 0i)), select(global0.d.e, ~max(u_input.c, firstTrailingBit(global0.b)), any(vec3<bool>(global0.d.a.x >= -934f, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -971f)))), Struct_1(vec3<f32>(global0.c, global0.d.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1133f + global0.c) + _wgslsmith_f_op_f32(340f + global0.c))), u_input.c >= global0.b, (_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.e.x, u_input.b.x, u_input.e.x, -25953i), u_input.b) & u_input.b) ^ u_input.b, abs(_wgslsmith_mult_vec4_i32(vec4<i32>(5973i, u_input.e.x, u_input.d, 2167i), _wgslsmith_mod_vec4_i32(global0.a, global0.d.c))), _wgslsmith_mod_u32(~firstLeadingBit(u_input.c), u_input.c)));
    global0 = Struct_2(~firstLeadingBit(~(global0.a & vec4<i32>(2147483647i, global0.d.c.x, 2147483647i, -2147483647i))), (global0.d.e & _wgslsmith_add_u32(global0.d.e, global0.d.e)) | _wgslsmith_dot_vec3_u32(vec3<u32>(abs(global0.b), abs(global0.d.e), _wgslsmith_clamp_u32(20812u, 4294967295u, global0.b)), vec3<u32>(global0.d.e & 41380u, u_input.c, global0.b)), _wgslsmith_f_op_f32(max(304f, func_2().b.x)), Struct_1(global0.d.a, false, ((vec4<i32>(-58437i, 15127i, 27642i, global0.d.c.x) << (vec4<u32>(u_input.c, 1u, global0.b, 0u) % vec4<u32>(32u))) | (vec4<i32>(global0.d.c.x, global0.d.c.x, -2147483647i, u_input.d) >> (vec4<u32>(global0.d.e, 107659u, 45551u, 19196u) % vec4<u32>(32u)))) ^ (vec4<i32>(-1i) * -vec4<i32>(u_input.a, 2147483647i, 2147483647i, global0.a.x)), countOneBits(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(59394i, global0.a.x, u_input.d, u_input.b.x), u_input.b, vec4<i32>(-2147483647i, 6261i, u_input.a, -23230i)), vec4<i32>(-1i, u_input.b.x, 1i, 36733i))), ~(~28406u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-global0.d.a.x), 1841f), reverseBits(~abs(~vec3<u32>(u_input.c, global0.b, u_input.c))), -global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1158f, 255f) + _wgslsmith_f_op_f32(global0.d.a.x - global0.c))))));
}

