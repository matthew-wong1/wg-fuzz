struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_3,
    e: Struct_2,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<u32>(7404u, 0u, 1u), vec2<bool>(true, true), false, 26756u), vec2<i32>(7469i, 1763i));

var<private> global2: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<u32>) -> u32 {
    var var_0 = global1.a;
    var var_1 = Struct_2(global1.a, reverseBits(countOneBits(_wgslsmith_add_vec2_i32(arg_0, select(arg_0, arg_0, vec2<bool>(false, global2.x))))));
    global0 = ~global1.a.d;
    var var_2 = Struct_1(vec3<u32>(41716u, ~global1.a.a.x, 33226u), vec2<bool>(0i == firstLeadingBit(~global1.b.x), all(!select(vec4<bool>(global2.x, var_0.b.x, global2.x, global1.a.c), vec4<bool>(false, var_1.a.b.x, false, global2.x), global1.a.b.x))), true, arg_1.x);
    var_2 = global1.a;
    return _wgslsmith_div_u32(18123u, 4294967295u | ~var_2.a.x) & var_0.a.x;
}

fn func_2() -> Struct_3 {
    global1 = Struct_2(Struct_1(vec3<u32>(_wgslsmith_mod_u32(u_input.b.x ^ global1.a.d, 4294967295u), 50146u, global1.a.d), !select(global1.a.b, vec2<bool>(false, global2.x), vec2<bool>(false, global2.x)), global1.a.c, max(global1.a.d, ~(u_input.b.x | u_input.b.x))), ~global1.b);
    global2 = vec2<bool>(true, global1.a.c);
    let var_0 = _wgslsmith_mod_u32(1789u, 119656u);
    global2 = vec2<bool>(~global1.a.d <= ~func_3(vec2<i32>(-15168i, global1.b.x), _wgslsmith_mod_vec4_u32(vec4<u32>(11206u, 9527u, var_0, global1.a.a.x), vec4<u32>(var_0, global1.a.d, u_input.b.x, 1u))), false);
    global2 = vec2<bool>(global1.a.b.x, any(select(vec2<bool>(global1.a.c, true), vec2<bool>(any(vec3<bool>(global2.x, global1.a.c, false)), false), !vec2<bool>(global1.a.c, global2.x))));
    return Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(533f, -1049f)), _wgslsmith_f_op_f32(sign(1622f)))))) == _wgslsmith_f_op_f32(abs(393f)));
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> Struct_2 {
    let var_0 = Struct_5(vec3<bool>(global2.x | global1.a.c, all(global1.a.b), global1.a.b.x), reverseBits(firstTrailingBit(~(vec4<u32>(arg_1, 50427u, u_input.b.x, arg_1) | vec4<u32>(0u, 52533u, global1.a.d, global1.a.d)))), global1.a.b.x, true);
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(167f, 583f, -1291f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-370f, 620f, 729f) + vec3<f32>(1049f, 1835f, 319f)))))));
    global0 = _wgslsmith_sub_u32(_wgslsmith_div_u32(global1.a.a.x, _wgslsmith_add_u32(max(max(23217u, arg_1), abs(arg_1)), ~var_0.b.x & 1u)), u_input.b.x);
    var var_2 = vec3<i32>(countOneBits(1i), global1.b.x, _wgslsmith_sub_i32(1i, firstTrailingBit(u_input.a.x)));
    global2 = var_0.a.xx;
    return Struct_2(global1.a, reverseBits(firstTrailingBit(abs(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(0i, 6484i))))));
}

fn func_1() -> Struct_5 {
    var var_0 = ~(~u_input.b.x);
    global1 = func_4(func_2(), u_input.b.x);
    let var_1 = func_4(func_2(), global1.a.a.x);
    var_0 = global1.a.d;
    let var_2 = Struct_1(var_1.a.a, vec2<bool>(!((global2.x && global2.x) || true), func_4(Struct_3(true), 4911u).a.b.x), -min(~u_input.a.x, reverseBits(-21253i)) == -(u_input.a.x & ~16435i), ~_wgslsmith_dot_vec2_u32(~abs(vec2<u32>(11668u, 43597u)), ~var_1.a.a.xx));
    return Struct_5(!(!(!(!vec3<bool>(global1.a.c, global1.a.b.x, global1.a.b.x)))), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(select(vec4<u32>(25592u, 48509u, global1.a.a.x, 37177u), vec4<u32>(32364u, var_1.a.d, global1.a.d, var_2.a.x), vec4<bool>(true, true, true, false)), vec4<u32>(1u, 1u, 1u, 1u)), max(abs(vec4<u32>(var_2.a.x, 58017u, 5902u, var_1.a.d)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_2.d, var_2.a.x, var_2.a.x, 74597u), vec4<u32>(var_1.a.a.x, 4294967295u, 1476u, 59755u))), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(42911u, u_input.b.x, 0u, var_1.a.a.x), vec4<u32>(var_1.a.d, 1u, var_2.d, 4294967295u), vec4<u32>(global1.a.a.x, 17348u, 0u, 15570u)))) >> (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, _wgslsmith_dot_vec3_u32(var_2.a, vec3<u32>(16125u, 4294967295u, global1.a.a.x)), ~u_input.b.x, countOneBits(12692u)), vec4<u32>(_wgslsmith_add_u32(u_input.b.x, 0u), 1u, ~var_2.d, ~global1.a.d)) % vec4<u32>(32u)), false, true);
}

fn func_5(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: Struct_5) -> vec2<bool> {
    var var_0 = Struct_4(func_2(), vec2<bool>(true, all(select(!vec4<bool>(false, arg_2.a.x, arg_1.x, global2.x), !vec4<bool>(arg_2.d, global2.x, false, global2.x), !vec4<bool>(global1.a.b.x, false, false, global2.x)))), func_4(func_2(), 670u).a, func_2(), func_4(func_2(), 28565u));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.x)) - -1421f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-625f - arg_0.x) + _wgslsmith_f_op_f32(-arg_0.x)) * -1000f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1064f))))));
    var var_2 = _wgslsmith_f_op_f32(arg_0.x - -865f);
    let var_3 = _wgslsmith_mod_u32(0u, var_0.e.a.a.x);
    var_1 = arg_0.x;
    return func_1().a.yx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    global2 = select(global1.a.b, select(!func_5(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1181f, 521f), vec2<f32>(-2753f, -1000f), global1.a.b.x)), global1.a.b, func_1()), !vec2<bool>(global1.a.c, true), !vec2<bool>(global1.a.b.x || global1.a.c, global2.x)), global2.x);
    var_0 = ~abs(~30319u);
    let var_1 = select(~(~(vec4<u32>(12959u, 67u, 1u, 4294967295u) << (vec4<u32>(global1.a.d, u_input.b.x, 4294967295u, 15192u) % vec4<u32>(32u))) & vec4<u32>(select(u_input.b.x, 4294967295u, global1.a.b.x), 0u, u_input.b.x ^ global1.a.a.x, global1.a.d ^ 3677u)), ~countOneBits(vec4<u32>(1u, u_input.b.x, 1u, global1.a.a.x)) | ~_wgslsmith_add_vec4_u32(vec4<u32>(global1.a.d, 4294967295u, 0u, u_input.b.x) >> (vec4<u32>(u_input.b.x, global1.a.d, u_input.b.x, global1.a.d) % vec4<u32>(32u)), vec4<u32>(global1.a.d, 1u, 77511u, u_input.b.x) | vec4<u32>(0u, 12407u, 17980u, 1u)), !(!vec4<bool>(select(true, true, global1.a.c), func_5(vec2<f32>(411f, -925f), vec2<bool>(global2.x, true), Struct_5(vec3<bool>(true, global1.a.b.x, global2.x), vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, 23850u), true, global2.x)).x, all(vec2<bool>(true, global2.x)), true || global2.x)));
    var_0 = firstTrailingBit(1u);
    var var_2 = vec2<bool>(all(func_1().a), global2.x);
    var var_3 = global1.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-616f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1164f, -678f), -122f, true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-676f, 1000f)))))), min(37449i, u_input.a.x), func_4(func_2(), var_3.d).b.x, firstLeadingBit(-13513i), select((var_1.xy | (var_3.a.yz & var_1.xw)) | vec2<u32>(~global1.a.a.x, 4294967295u), var_1.yx | vec2<u32>(var_3.d, ~var_1.x), false));
}

