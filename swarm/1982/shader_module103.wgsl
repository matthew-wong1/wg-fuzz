struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 51521u);

var<private> global1: vec3<i32>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> vec2<u32> {
    let var_0 = select(select(vec4<bool>(global1.x <= 1714i, select(true, true, true) | false, any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true)), any(vec4<bool>(true, true, true, true))), !select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, false, true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, any(vec4<bool>(true, false, true, false)), true, true), true), select(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), true)), vec4<bool>(true, false, abs(u_input.a) > ~global1.x, _wgslsmith_f_op_f32(select(-1838f, 672f, true)) <= _wgslsmith_f_op_f32(max(-1020f, 564f))), any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))));
    global1 = firstTrailingBit(vec3<i32>(firstTrailingBit(max(1i, ~global1.x)), 0i, 2147483647i));
    var var_1 = Struct_1(!(!select(var_0, vec4<bool>(true, true, true, true), select(var_0, var_0, vec4<bool>(true, false, true, var_0.x)))), vec4<u32>(global0.x, abs(~1344u), global0.x, firstTrailingBit(abs(~global0.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-565f, _wgslsmith_f_op_f32(min(476f, 1876f)), _wgslsmith_f_op_f32(abs(1418f)), _wgslsmith_f_op_f32(abs(936f))) * vec4<f32>(_wgslsmith_f_op_f32(trunc(446f)), _wgslsmith_f_op_f32(abs(218f)), _wgslsmith_f_op_f32(f32(-1f) * -1977f), _wgslsmith_f_op_f32(floor(-1081f)))), vec4<f32>(1f, 1f, 1f, 1f)), countOneBits(0u), !select(var_0, var_0, true));
    var_1 = Struct_1(var_0, var_1.b, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.c) + var_1.c), var_1.c, var_0)))), abs(max(var_1.b.x, global0.x)), var_1.e);
    let var_2 = var_1.a.zx;
    return vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~var_1.b.zw, var_1.b.xx), vec2<u32>(reverseBits(~global0.x), 28606u)), var_1.d);
}

fn func_2() -> u32 {
    global0 = _wgslsmith_add_vec2_u32(max(func_3(), firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, global0.x), vec2<u32>(29120u, 1u)) | _wgslsmith_div_vec2_u32(vec2<u32>(59025u, global0.x), vec2<u32>(global0.x, 57961u)))), countOneBits((~vec2<u32>(global0.x, global0.x) | firstTrailingBit(vec2<u32>(15387u, global0.x))) >> (_wgslsmith_mod_vec2_u32(abs(vec2<u32>(global0.x, 35403u)), vec2<u32>(1u, global0.x) | vec2<u32>(global0.x, global0.x)) % vec2<u32>(32u))));
    var var_0 = 0u;
    var var_1 = true;
    global1 = _wgslsmith_sub_vec3_i32(max(vec3<i32>(14472i, global1.x, u_input.a) >> (vec3<u32>(_wgslsmith_sub_u32(34979u, 8135u), _wgslsmith_div_u32(global0.x, 36240u), 4294967295u) % vec3<u32>(32u)), -(vec3<i32>(-1i) * -vec3<i32>(global1.x, global1.x, global1.x))), ~(~(_wgslsmith_div_vec3_i32(vec3<i32>(global1.x, global1.x, u_input.a), vec3<i32>(0i, u_input.b, global1.x)) | (vec3<i32>(-49915i, u_input.a, u_input.a) ^ vec3<i32>(global1.x, global1.x, -26614i)))));
    var var_2 = firstLeadingBit(min(vec4<i32>(i32(-1i) * -25653i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(global1.x, -1i, -1i, -43953i)), vec4<i32>(-43384i, -1i, 1i, u_input.a) | vec4<i32>(global1.x, 1i, global1.x, u_input.a)), min(_wgslsmith_mod_i32(global1.x, 2147483647i), global1.x), ~abs(1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(min(-1i, -22166i), reverseBits(1i), global1.x, 1i >> (global0.x % 32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -1i, 0i, -1i), vec4<i32>(0i, 0i, -34914i, 24511i)))));
    return global0.x;
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    let var_0 = vec2<i32>(global1.x | -firstTrailingBit(_wgslsmith_mult_i32(u_input.a, 21234i)), ~u_input.a);
    let var_1 = Struct_3(Struct_1(select(vec4<bool>(true, arg_2.c.x >= u_input.b, arg_2.b.e.x, 1u >= global0.x), vec4<bool>(true, true & arg_2.b.a.x, true, true), arg_2.b.e), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, 4294967295u, 139337u, func_2()), _wgslsmith_sub_vec4_u32(~arg_2.b.b, abs(arg_2.b.b))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.b.c.x, _wgslsmith_f_op_f32(max(arg_2.b.c.x, -252f)), _wgslsmith_f_op_f32(-arg_2.b.c.x), _wgslsmith_f_op_f32(arg_2.a + 166f)))), ~(~47232u), !vec4<bool>(arg_2.b.b.x < arg_0, false || arg_2.b.a.x, true, !arg_1)), 0i, arg_2.b, ~abs(~(~arg_2.b.b)));
    global1 = vec3<i32>(-1i) * -(reverseBits(arg_2.c.ywz >> (vec3<u32>(0u, arg_2.b.b.x, 1u) % vec3<u32>(32u))) & vec3<i32>(-1i, firstLeadingBit(global1.x), firstTrailingBit(u_input.b)));
    global1 = vec3<i32>(arg_2.c.x, _wgslsmith_mod_i32(1i, -58861i), firstTrailingBit(-34572i));
    var var_2 = false;
    return arg_2.b;
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    let var_0 = u_input.a;
    global0 = ~(arg_0.b.yx >> (abs(vec2<u32>(~global0.x, _wgslsmith_mod_u32(1u, arg_0.b.x))) % vec2<u32>(32u)));
    return Struct_3(func_1(_wgslsmith_sub_u32(global0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, arg_0.b.x), arg_0.b.wx) ^ (29122u ^ global0.x)), ~(1u & arg_0.d) < firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 0u), vec2<u32>(52103u, global0.x))), Struct_2(arg_0.c.x, Struct_1(select(vec4<bool>(arg_0.e.x, false, false, true), arg_0.a, false), min(vec4<u32>(global0.x, arg_0.d, 101006u, arg_0.b.x), arg_0.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, arg_0.c.x, -625f, arg_0.c.x)), 1u, vec4<bool>(arg_0.e.x, arg_0.e.x, arg_0.e.x, false)), min(vec4<i32>(u_input.a, u_input.a, 0i, -1i), vec4<i32>(var_0, -1i, -2147483647i, var_0) >> (arg_0.b % vec4<u32>(32u))))), global1.x, arg_0, arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(global0.x, true, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-655f, -916f)), Struct_1(vec4<bool>(true, true, true, true), vec4<u32>(global0.x, 1u, global0.x, 52457u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-339f, 1051f, 1000f, -729f)), ~global0.x, vec4<bool>(true, true, true, true)), vec4<i32>(-1i) * -vec4<i32>(global1.x, global1.x, u_input.a, 1467i))));
    var var_1 = true;
    let var_2 = any(select(vec2<bool>(!var_0.a.e.x, var_0.a.a.x), vec2<bool>(~var_0.c.d != global0.x, false), select(select(!var_0.a.e.x, !var_0.a.e.x, false), false, false && !var_0.a.a.x)));
    let var_3 = 4294967295u;
    var var_4 = 0u;
    let var_5 = var_2;
    var var_6 = !var_0.a.a.yw;
    let var_7 = Struct_1(select(var_0.a.e, vec4<bool>(func_1(global0.x, false, Struct_2(var_0.a.c.x, var_0.c, vec4<i32>(0i, global1.x, global1.x, 0i))).e.x & true, select(var_6.x && var_2, true, 54412u >= var_0.c.d), !var_6.x && any(vec3<bool>(true, var_6.x, var_5)), true), var_0.c.e.x), max(~func_1(var_3, var_5, Struct_2(var_0.c.c.x, var_0.c, vec4<i32>(u_input.b, u_input.a, -51107i, 36580i))).b, ~(~var_0.d) ^ var_0.a.b), var_0.a.c, 4294967295u, var_0.a.a);
    var var_8 = ~abs(global1.yz);
    let x = u_input.a;
    s_output = StorageBuffer(global1.zy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.c.x, var_0.c.c.x, -561f, var_7.c.x)), _wgslsmith_f_op_vec4_f32(func_1(var_3, var_7.a.x, Struct_2(var_0.a.c.x, Struct_1(var_7.e, var_0.a.b, vec4<f32>(var_7.c.x, -1176f, var_7.c.x, 1000f), 4294967295u, var_0.a.a), vec4<i32>(-2147483647i, -719i, u_input.a, -20164i))).c + _wgslsmith_f_op_vec4_f32(trunc(var_7.c))), select(vec4<bool>(false, var_2, true, false), var_0.a.e, var_7.a)))), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a.d & 3244u, firstLeadingBit(var_7.d)), _wgslsmith_clamp_vec2_u32(var_0.c.b.zz, var_0.d.xx, var_7.b.xz) >> (var_7.b.yz % vec2<u32>(32u))) & ~var_0.c.b.wx);
}

