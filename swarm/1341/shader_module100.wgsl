struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_3,
    d: f32,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3, arg_1: f32) -> vec2<i32> {
    let var_0 = arg_0.a.x;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(-arg_1)) + 370f) * arg_1);
    return select(firstLeadingBit(u_input.b.yw), vec2<i32>((i32(-1i) * -arg_0.c) | _wgslsmith_mod_i32(u_input.a, _wgslsmith_mod_i32(u_input.b.x, 46151i)), arg_0.c), select(!(!vec2<bool>(false, arg_0.d)), vec2<bool>(any(!vec3<bool>(true, arg_0.d, true)), arg_0.d), any(select(vec2<bool>(arg_0.d, arg_0.d), vec2<bool>(arg_0.d, true), vec2<bool>(true, arg_0.d))) & true));
}

fn func_2() -> vec3<bool> {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-898f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(278f, 211f) * _wgslsmith_f_op_f32(round(-1000f))), 1f) + -822f));
    let var_0 = Struct_4(~u_input.d.x, Struct_3(~(~vec3<u32>(0u, u_input.d.x, u_input.c.x)), func_3(Struct_3(u_input.c.ywx ^ u_input.c.zwy, u_input.b.zw, _wgslsmith_dot_vec3_i32(u_input.b.wyx, u_input.b.zxw), true), -1525f), reverseBits(_wgslsmith_div_i32(u_input.a, countOneBits(-1i))), any(select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(false, true), select(false, true, false)))), Struct_3(select(firstTrailingBit(_wgslsmith_div_vec3_u32(u_input.c.xwy, vec3<u32>(u_input.c.x, 0u, u_input.c.x))), vec3<u32>(reverseBits(u_input.d.x), 42943u, 0u ^ u_input.d.x), false), _wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(u_input.b.x, u_input.a)), u_input.b.wy), abs(u_input.a), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(272f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 889f, any(vec3<bool>(true, false, false))))))));
    global0 = 357f;
    var var_1 = -1i;
    let var_2 = vec4<bool>(countOneBits(u_input.a) < ~u_input.a, _wgslsmith_f_op_f32(sign(-756f)) >= var_0.d, true || (var_0.c.d | true), !(true | any(vec4<bool>(var_0.c.d, false, var_0.c.d, false))));
    return !var_2.xzz;
}

fn func_1() -> f32 {
    let var_0 = !(!select(vec3<bool>(true, true, true), func_2(), true));
    let var_1 = abs(_wgslsmith_div_u32(u_input.d.x, 24089u >> ((u_input.c.x | 28716u) % 32u)));
    let var_2 = Struct_4(var_1, Struct_3(vec3<u32>(u_input.d.x, _wgslsmith_add_u32(1u | var_1, ~var_1), ~29935u), u_input.b.xw >> (abs(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, u_input.d.x), vec2<u32>(1u, var_1))) % vec2<u32>(32u)), _wgslsmith_div_i32(19310i, -42148i), u_input.a > 1i), Struct_3(_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(u_input.d.x, 14048u, var_1)) >> (~vec3<u32>(4294967295u, 27289u, var_1) % vec3<u32>(32u)), (vec3<u32>(var_1, u_input.d.x, var_1) ^ u_input.c.zww) & (u_input.c.ywx | vec3<u32>(u_input.d.x, u_input.c.x, 0u)), countOneBits(vec3<u32>(1662u, 4128u, var_1))), u_input.b.yz, -u_input.a, !var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -942f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(597f, 993f)), -553f))));
    var var_3 = var_2.b;
    let var_4 = Struct_1(var_1);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-492f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1706f * var_2.d))))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(606f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.d), _wgslsmith_f_op_f32(step(var_2.d, 473f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-133f - 1000f);
    global0 = _wgslsmith_f_op_f32(-608f - 833f);
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0, var_0, -1690f, -691f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, var_0, 1489f) - vec4<f32>(-1694f, var_0, var_0, var_0))), vec4<f32>(var_0, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(func_1()), var_0))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0, var_0, var_0, var_0))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, var_0, var_0) - vec4<f32>(1196f, -478f, -631f, 848f)))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, var_0, var_0, -1122f), vec4<f32>(var_0, var_0, var_0, 2295f))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0, 305f, -692f, -1000f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 1960f, var_0, var_0) + vec4<f32>(var_0, 837f, var_0, var_0))))), vec4<bool>(false && any(vec3<bool>(false, true, true)), all(vec4<bool>(false, true, false, any(vec2<bool>(false, true)))), ~max(52716u, u_input.c.x) <= 0u, all(vec4<bool>(true, any(vec4<bool>(false, false, false, true)), true, true)))));
    let var_2 = Struct_3(~vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, 4294967295u, 27635u, u_input.d.x), countOneBits(vec4<u32>(u_input.c.x, 1u, 1u, u_input.d.x))), ~(4294967295u | u_input.d.x), u_input.d.x), vec2<i32>(max(u_input.a, max(u_input.a, -9720i)), max(2147483647i, countOneBits(-1i))) << (select(~min(u_input.c.zz, u_input.c.zz), ~u_input.d, select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), any(vec3<bool>(true, true, false)))) % vec2<u32>(32u)), abs(func_3(Struct_3(u_input.c.zzz, -u_input.b.yy, abs(-1i), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(var_1.x - var_0))).x), (_wgslsmith_f_op_f32(var_1.x - -1000f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -939f) * var_0)) == true);
    global0 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(min(u_input.b.x, -6172i), firstTrailingBit(_wgslsmith_div_i32(u_input.a >> (u_input.d.x % 32u), ~(-33338i))), _wgslsmith_dot_vec4_i32(u_input.b, select(vec4<i32>(var_2.b.x, -30746i, 1i, var_2.c), abs(vec4<i32>(var_2.c, 0i, -2147483647i, var_2.b.x)), any(vec4<bool>(var_2.d, true, var_2.d, false)))), i32(-1i) * -3507i));
}

