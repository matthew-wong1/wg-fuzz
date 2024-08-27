struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: bool,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: Struct_3,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: Struct_3) -> i32 {
    let var_0 = !vec2<bool>(!any(!vec3<bool>(arg_2.a, true, false)), true);
    var var_1 = Struct_1(firstTrailingBit(-(_wgslsmith_clamp_vec2_i32(u_input.a, vec2<i32>(14414i, arg_1.x), arg_1.yx) >> (max(arg_3.a.xy, vec2<u32>(1u, global0.b.e.x)) % vec2<u32>(32u)))), !var_0, all(select(vec3<bool>(true, false, false), vec3<bool>(!arg_0.c.b, true, any(var_0)), firstTrailingBit(0i) != (arg_1.x & arg_1.x))), u_input.a, arg_0.c.a.xw);
    global0 = Struct_2(vec4<bool>(!(_wgslsmith_f_op_f32(ceil(683f)) > _wgslsmith_f_op_f32(max(arg_2.b, -764f))), -1000f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.d.x))), global0.b.c, all(select(!vec4<bool>(true, false, true, arg_3.b), global0.a, all(vec2<bool>(arg_3.b, var_0.x))))), global0.b);
    var var_2 = arg_3;
    var var_3 = select(countOneBits(u_input.a.x), var_1.d.x, true);
    return -33361i;
}

fn func_2(arg_0: u32) -> vec4<u32> {
    global0 = Struct_2(vec4<bool>(true, !global0.a.x, global0.b.c, true), global0.b);
    let var_0 = ~(~firstLeadingBit(vec3<u32>(global0.b.e.x, ~arg_0, ~arg_0)));
    let var_1 = vec2<i32>(global0.b.d.x, ~func_3(Struct_4(false, 678f, Struct_3(vec4<u32>(arg_0, arg_0, global0.b.e.x, var_0.x), true), vec2<f32>(1000f, 909f)), vec3<i32>(global0.b.d.x, u_input.a.x, u_input.a.x), Struct_4(global0.a.x, -1279f, Struct_3(vec4<u32>(1u, arg_0, arg_0, 40261u), false), vec2<f32>(771f, 785f)), Struct_3(vec4<u32>(global0.b.e.x, arg_0, arg_0, arg_0), global0.b.c))) & vec2<i32>(2147483647i, -1i);
    return _wgslsmith_sub_vec4_u32(max(vec4<u32>(4294967295u, reverseBits(var_0.x), 29570u, var_0.x), vec4<u32>(48138u, _wgslsmith_dot_vec2_u32(~global0.b.e, global0.b.e | vec2<u32>(global0.b.e.x, var_0.x)), _wgslsmith_sub_u32(51742u, var_0.x), ~1u | global0.b.e.x)), firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(reverseBits(66964u), 1u, ~0u, 32383u), firstLeadingBit(~vec4<u32>(1u, 4294967295u, var_0.x, var_0.x)))));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: i32, arg_3: i32) -> Struct_3 {
    let var_0 = true;
    global0 = Struct_2(global0.a, global0.b);
    let var_1 = _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(func_2(61101u).wyw ^ ~vec3<u32>(global0.b.e.x, arg_0.a.x, arg_0.a.x), arg_0.a.zwz), ~(select(arg_0.a.xxw, arg_0.a.zyy, arg_1) | arg_0.a.yxx));
    let var_2 = global0.b;
    var var_3 = Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_2, u_input.a.x, arg_2), vec4<i32>(arg_2, 12771i, arg_2, 0i) ^ vec4<i32>(-2147483647i, 1i, arg_2, 26048i)), ~1i), -abs(vec2<i32>(var_2.a.x, -2147483647i)), u_input.a), select(select(!select(var_2.b, vec2<bool>(true, false), true), !select(vec2<bool>(true, arg_0.b), var_2.b, global0.b.c), true), select(!select(vec2<bool>(arg_0.b, true), global0.b.b, global0.b.b), !select(vec2<bool>(true, arg_0.b), var_2.b, global0.b.b), select(vec2<bool>(false, false), var_2.b, !var_2.b)), vec2<bool>(var_0, var_0)), arg_1, global0.b.d >> (var_2.e % vec2<u32>(32u)), vec2<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(0u, ~71512u), global0.b.e.x), ~select(4294967295u, 0u, !var_0)));
    return Struct_3(arg_0.a ^ min(_wgslsmith_div_vec4_u32(vec4<u32>(33325u, var_3.e.x, arg_0.a.x, 18064u), arg_0.a), vec4<u32>(28176u | global0.b.e.x, var_1, _wgslsmith_div_u32(var_1, 1u), 52642u)), any(vec4<bool>(any(!vec3<bool>(false, false, var_0)), true, !arg_0.b && false, var_0)));
}

fn func_1() -> vec4<bool> {
    var var_0 = Struct_3(~_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(6241u, global0.b.e.x, global0.b.e.x, global0.b.e.x), vec4<u32>(global0.b.e.x, global0.b.e.x, global0.b.e.x, global0.b.e.x)), ~vec4<u32>(48063u, global0.b.e.x, 42329u, 0u), abs(vec4<u32>(global0.b.e.x, 4248u, 30508u, global0.b.e.x))), vec4<u32>(global0.b.e.x, global0.b.e.x, ~4294967295u, global0.b.e.x)), false);
    var_0 = Struct_3(var_0.a, false);
    var_0 = func_4(Struct_3(_wgslsmith_div_vec4_u32(~func_2(4294967295u), vec4<u32>(var_0.a.x, 1u, ~var_0.a.x, _wgslsmith_add_u32(2336u, var_0.a.x))), all(vec2<bool>(true, true))), true, _wgslsmith_add_i32(_wgslsmith_add_i32(35326i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.b.a.x, u_input.a.x, global0.b.d.x, global0.b.d.x), vec4<i32>(u_input.a.x, global0.b.a.x, global0.b.a.x, -19668i)) << ((global0.b.e.x | 1u) % 32u)), u_input.a.x), firstTrailingBit(~0i));
    global0 = Struct_2(vec4<bool>(true, var_0.b, !global0.b.c, _wgslsmith_f_op_f32(sign(-1399f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(494f)) * _wgslsmith_f_op_f32(1065f - -687f))), global0.b);
    var var_1 = global0.b;
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(select(!(!select(global0.a, global0.a, global0.a)), func_1(), func_4(func_4(func_4(Struct_3(vec4<u32>(51129u, global0.b.e.x, global0.b.e.x, 60390u), false), true, 21025i, global0.b.a.x), any(global0.a.zyz), _wgslsmith_div_i32(2147483647i, 2147483647i), _wgslsmith_clamp_i32(-2147483647i, global0.b.a.x, 1i)), global0.a.x, 1i, _wgslsmith_sub_i32(u_input.a.x, -global0.b.d.x)).b), global0.b);
    var var_0 = Struct_4(true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1000f)))), func_4(func_4(func_4(Struct_3(vec4<u32>(4294967295u, global0.b.e.x, 1u, global0.b.e.x), global0.b.c), !global0.b.b.x, -u_input.a.x, -18494i), global0.b.c, _wgslsmith_clamp_i32(2147483647i, u_input.a.x, global0.b.a.x) << (_wgslsmith_mod_u32(global0.b.e.x, global0.b.e.x) % 32u), -reverseBits(u_input.a.x)), func_1().x, abs(_wgslsmith_dot_vec2_i32(global0.b.d, global0.b.d ^ u_input.a)), 35552i ^ -(~global0.b.a.x)), vec2<f32>(_wgslsmith_div_f32(-460f, -261f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-565f * -413f), -1000f, true))))));
    let var_1 = Struct_2(global0.a, Struct_1(~_wgslsmith_mult_vec2_i32(global0.b.d, ~vec2<i32>(13239i, -28526i)), select(global0.a.zw, vec2<bool>(global0.b.b.x, any(global0.b.b)), global0.b.c), all(!select(vec4<bool>(global0.a.x, true, var_0.a, var_0.a), vec4<bool>(true, global0.a.x, false, false), false)), u_input.a, min(~(vec2<u32>(1u, 1u) << (global0.b.e % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 0u), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.c.a.x, 89524u), global0.b.e)))));
    let var_2 = Struct_3(_wgslsmith_sub_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, global0.b.e.x, 6536u), var_0.c.a), ~(vec4<u32>(var_0.c.a.x, 28020u, 7140u, 8168u) >> (vec4<u32>(global0.b.e.x, 1658u, 71468u, global0.b.e.x) % vec4<u32>(32u)))) ^ ~_wgslsmith_mod_vec4_u32(var_0.c.a ^ vec4<u32>(var_1.b.e.x, var_0.c.a.x, var_0.c.a.x, 22978u), var_0.c.a), var_0.c.b);
    let var_3 = select(func_1().zy, var_1.b.b, !(!func_1().xz));
    var_0 = Struct_4(_wgslsmith_div_f32(var_0.b, -730f) > _wgslsmith_f_op_f32(round(678f)), 179f, Struct_3(~var_2.a, -123f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.d.x, -390f)) - var_0.b)), vec2<f32>(_wgslsmith_f_op_f32(var_0.b * _wgslsmith_div_f32(-1295f, var_0.d.x)), var_0.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.x, countOneBits(~abs(~vec4<u32>(var_2.a.x, 0u, var_2.a.x, 34548u))), 1u);
}

