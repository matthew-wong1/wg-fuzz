struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: i32,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec3<i32>,
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

var<private> global0: Struct_2;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: bool) -> vec2<i32> {
    return firstLeadingBit(global0.a.yy);
}

fn func_3(arg_0: vec2<i32>) -> Struct_4 {
    let var_0 = Struct_3(Struct_2(vec4<i32>(abs(2147483647i), _wgslsmith_dot_vec4_i32(global0.a, select(u_input.c, u_input.c, vec4<bool>(false, true, true, false))), i32(-1i) * -7648i, i32(-1i) * -2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.a.x, global0.b.x, global0.b.x, -1360f) * global0.b)))), ~firstLeadingBit(1i), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(floor(654f)), global0.b.x, global0.d.a.x)), ~(~global0.e)), global0.d, vec2<bool>(false, any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true)) || (-349f > _wgslsmith_f_op_f32(step(global0.b.x, global0.b.x)))));
    let var_1 = var_0.a;
    var var_2 = Struct_5(_wgslsmith_mult_u32(~1u >> (var_0.a.e.x % 32u), 1u) | (firstTrailingBit(~global0.e.x) >> ((global0.e.x >> (~0u % 32u)) % 32u)), Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(var_0.a.d.a.x - -312f), -1480f, 1284f)))), _wgslsmith_dot_vec2_i32(vec2<i32>(0i ^ var_0.a.c, _wgslsmith_div_i32(2147483647i, -39920i)), arg_0) << (reverseBits(var_0.a.e.x) % 32u));
    global0 = Struct_2(select(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-18276i, var_0.a.a.x, 40181i, global0.c), global0.a, var_1.a), global0.a & -var_0.a.a), u_input.c, vec4<bool>(false, any(vec4<bool>(false, true, false, var_0.c.x)), !(!var_0.c.x), _wgslsmith_div_f32(global0.b.x, -674f) != _wgslsmith_f_op_f32(floor(var_1.d.a.x)))), global0.b, 1i, global0.d, ~_wgslsmith_clamp_vec4_u32(~min(vec4<u32>(var_0.a.e.x, var_2.a, 0u, global0.e.x), vec4<u32>(4138u, u_input.d.x, var_0.a.e.x, 0u)), ~vec4<u32>(u_input.d.x, u_input.a, 53537u, var_0.a.e.x) | ~vec4<u32>(1u, 1u, 97827u, u_input.d.x), var_1.e));
    var var_3 = Struct_5(global0.e.x, global0.d, var_0.a.a.x);
    return Struct_4(var_1, Struct_2(var_1.a, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_3.b.a.x * -2542f), 266f, !var_0.c.x)), _wgslsmith_div_f32(var_2.b.a.x, var_1.d.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -809f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b.a.x), 211f)), (i32(-1i) * -56410i) ^ _wgslsmith_div_i32(select(var_2.c, 36332i, false), _wgslsmith_div_i32(var_1.c, var_0.a.c)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.d.a.x, 999f, -1472f), var_3.b.a)))), ~global0.e));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: vec4<f32>, arg_3: Struct_2) -> Struct_2 {
    global0 = Struct_2(abs(_wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.c.x, 0i, arg_3.c, -1i), u_input.c >> (vec4<u32>(arg_1.x, 39731u, 25561u, arg_0.a.e.x) % vec4<u32>(32u)))), _wgslsmith_f_op_vec4_f32(step(arg_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(740f, -2501f, global0.b.x, global0.b.x), vec4<f32>(1107f, -1409f, global0.d.a.x, 709f)), _wgslsmith_f_op_vec4_f32(max(global0.b, arg_0.a.b)), arg_2.x < arg_2.x))))), u_input.e.x, arg_0.a.d, max(min(~max(vec4<u32>(arg_0.b.e.x, 19628u, 2185u, arg_3.e.x), vec4<u32>(2276u, 15229u, global0.e.x, 17255u)), vec4<u32>(u_input.a >> (0u % 32u), ~global0.e.x, 25878u, 66903u)), arg_0.b.e));
    let var_0 = ~_wgslsmith_clamp_u32(reverseBits(1u), _wgslsmith_mod_u32(17101u, 53729u), _wgslsmith_dot_vec2_u32(arg_3.e.xy, vec2<u32>(2050u, 1u))) | ~(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(15103u, 1u)), u_input.d.yx) & _wgslsmith_add_u32(~u_input.a, arg_1.x));
    var var_1 = false;
    var var_2 = Struct_5(~min(reverseBits(_wgslsmith_mod_u32(1u, 4294967295u)), _wgslsmith_clamp_u32(0u, 4294967295u, ~u_input.d.x)), arg_0.b.d, ~(-44729i));
    let var_3 = global0.b.x;
    return arg_0.a;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<f32>) -> vec2<u32> {
    global0 = func_4(func_3(func_2(any(vec3<bool>(true, false, true)))), vec4<u32>(0u, u_input.a << (_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(global0.e.xy, u_input.d.yz), global0.e.yx) % 32u), 4294967295u, _wgslsmith_div_u32(_wgslsmith_mult_u32(global0.e.x << (4294967295u % 32u), global0.e.x), _wgslsmith_clamp_u32(global0.e.x, max(global0.e.x, 1u), 13507u))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, arg_1.x, global0.d.a.x)), arg_1, vec4<bool>(true, true, true, false))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, global0.d.a.x, -1713f, -563f) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.x, arg_1.x, 976f, arg_1.x))))))), func_3(~vec2<i32>(-2147483647i, 1i) >> (~(~vec2<u32>(1u, u_input.d.x)) % vec2<u32>(32u))).b);
    global0 = Struct_2(vec4<i32>(global0.c, -reverseBits(_wgslsmith_clamp_i32(u_input.c.x, arg_0.x, arg_0.x)), i32(-1i) * -global0.c, i32(-1i) * -36440i), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, -1063f, _wgslsmith_f_op_f32(-994f + 112f)) * arg_1), arg_0.x, func_4(func_3(vec2<i32>(u_input.e.x, 0i)), u_input.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.b + vec4<f32>(arg_1.x, global0.b.x, -1474f, global0.d.a.x)) * vec4<f32>(func_4(Struct_4(Struct_2(global0.a, vec4<f32>(arg_1.x, 1945f, -837f, arg_1.x), 45964i, global0.d, vec4<u32>(global0.e.x, global0.e.x, u_input.d.x, 0u)), Struct_2(vec4<i32>(u_input.e.x, 2147483647i, 0i, global0.a.x), vec4<f32>(2010f, global0.d.a.x, global0.b.x, arg_1.x), u_input.e.x, global0.d, u_input.d)), global0.e, vec4<f32>(-1643f, 639f, 3075f, 375f), Struct_2(vec4<i32>(arg_0.x, u_input.c.x, 18067i, global0.a.x), global0.b, 9760i, global0.d, vec4<u32>(33771u, 0u, 26220u, u_input.d.x))).d.a.x, 1000f, global0.d.a.x, arg_1.x)), Struct_2(vec4<i32>(~0i, arg_0.x ^ u_input.e.x, 12970i, global0.a.x ^ 24510i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1) * global0.b), min(-2147483647i | global0.c, global0.a.x), global0.d, select(abs(vec4<u32>(11162u, 12304u, 8307u, global0.e.x)), reverseBits(global0.e), vec4<bool>(true, true, true, true)))).d, select(select(reverseBits(vec4<u32>(1u, 1u, global0.e.x, 8506u)), u_input.d, false), ~u_input.d & ~vec4<u32>(u_input.b, u_input.d.x, 1u, u_input.b), true) >> (_wgslsmith_clamp_vec4_u32(u_input.d, ~(~vec4<u32>(u_input.b, 129088u, u_input.d.x, 4294967295u)), ~_wgslsmith_mod_vec4_u32(global0.e, global0.e)) % vec4<u32>(32u)));
    global0 = Struct_2(vec4<i32>(~select(-1i, -21906i, true), _wgslsmith_sub_i32(28570i, _wgslsmith_dot_vec4_i32(vec4<i32>(-8348i, 2147483647i, arg_0.x, global0.c), u_input.c) ^ 2147483647i), 2147483647i, _wgslsmith_div_i32(firstLeadingBit(-20792i), global0.a.x)), global0.b, 2147483647i, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-987f)) + _wgslsmith_div_f32(-2186f, global0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-342f, global0.b.x) - _wgslsmith_f_op_f32(-arg_1.x)))), ~abs(vec4<u32>(~0u, global0.e.x, u_input.a, ~0u)));
    var var_0 = all(!select(vec2<bool>(global0.e.x > global0.e.x, true), vec2<bool>(true, true), false && (arg_0.x == global0.a.x)));
    var var_1 = 220i;
    return ~(vec2<u32>(_wgslsmith_add_u32(max(50837u, 4294967295u), u_input.b), func_3(-vec2<i32>(global0.c, 56286i)).a.e.x) | vec2<u32>(reverseBits(_wgslsmith_dot_vec2_u32(u_input.d.xw, vec2<u32>(u_input.a, global0.e.x))), 0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~max(_wgslsmith_clamp_vec2_u32(vec2<u32>(47291u, max(u_input.b, 0u)), func_1(vec3<i32>(-38364i, global0.c, u_input.e.x), global0.b), _wgslsmith_mod_vec2_u32(~global0.e.zy, vec2<u32>(79220u, global0.e.x) ^ global0.e.zy)), u_input.d.wz);
    var var_1 = func_4(Struct_4(func_3(~_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, global0.a.x), vec2<i32>(-2147483647i, global0.c))).a, Struct_2(vec4<i32>(1i, 2147483647i, ~global0.a.x, _wgslsmith_sub_i32(0i, u_input.c.x)), vec4<f32>(-515f, global0.b.x, -1000f, -2605f), _wgslsmith_clamp_i32(global0.a.x, max(2147483647i, u_input.e.x), u_input.e.x), global0.d, ~vec4<u32>(0u, u_input.a, 1u, global0.e.x))), _wgslsmith_mult_vec4_u32(abs(select(vec4<u32>(4294967295u, 4294967295u, global0.e.x, global0.e.x) << (vec4<u32>(20397u, 5082u, u_input.d.x, 11643u) % vec4<u32>(32u)), ~vec4<u32>(global0.e.x, 0u, 54411u, var_0.x), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), true))), u_input.d), _wgslsmith_f_op_vec4_f32(select(global0.b, vec4<f32>(_wgslsmith_f_op_f32(-global0.d.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d.a.x * 1081f) * _wgslsmith_f_op_f32(global0.d.a.x - global0.d.a.x)), _wgslsmith_f_op_f32(1305f * _wgslsmith_f_op_f32(global0.d.a.x * -1083f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), true)), Struct_2(-vec4<i32>(-30813i, u_input.c.x, u_input.c.x, u_input.c.x) ^ vec4<i32>(16357i, u_input.e.x, select(global0.a.x, -2147483647i, true), u_input.c.x), global0.b, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), u_input.c.yy), 48736i), -(~vec2<i32>(0i, u_input.c.x))), global0.d, u_input.d)).d;
    var var_2 = Struct_3(Struct_2(abs(func_4(func_3(vec2<i32>(u_input.e.x, global0.c)), ~u_input.d, global0.b, func_3(global0.a.yy).a).a), global0.b, ~8203i, global0.d, countOneBits(u_input.d)), func_3(vec2<i32>(-u_input.c.x, global0.a.x)).a.d, !select(vec2<bool>(true, true), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), false), any(vec2<bool>(false, true))), true));
    let var_3 = select(vec4<bool>(false, _wgslsmith_f_op_f32(-2193f + _wgslsmith_f_op_f32(max(-1802f, global0.d.a.x))) <= _wgslsmith_f_op_f32(-var_1.a.x), true, any(vec2<bool>(var_2.c.x, any(vec4<bool>(false, false, var_2.c.x, var_2.c.x))))), vec4<bool>(!(!(false && var_2.c.x)), var_2.c.x, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(355f * var_1.a.x)) != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.b.x + var_2.b.a.x), var_1.a.x))), !(_wgslsmith_div_f32(var_2.b.a.x, _wgslsmith_f_op_f32(select(global0.b.x, -1298f, var_2.c.x))) < var_1.a.x));
    var var_4 = var_3.x;
    var var_5 = global0.c;
    let var_6 = Struct_2(abs(-_wgslsmith_mult_vec4_i32(var_2.a.a, _wgslsmith_div_vec4_i32(vec4<i32>(0i, global0.a.x, 1i, global0.a.x), vec4<i32>(13793i, -24741i, -1i, -2147483647i)))), _wgslsmith_f_op_vec4_f32(-var_2.a.b), -_wgslsmith_div_i32(i32(-1i) * -96279i, 12492i), func_4(func_3(global0.a.yz), vec4<u32>(min(4294967295u, var_0.x), abs(~var_2.a.e.x), select(~30735u, 14564u, true), 0u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.b) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(global0.b)))), func_3(vec2<i32>(-1i, u_input.e.x) & vec2<i32>(u_input.c.x, global0.c)).a).d, ~var_2.a.e);
    var var_7 = vec3<i32>(u_input.c.x, -7940i, ~2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-_wgslsmith_add_i32(_wgslsmith_mod_i32(global0.c, 2147483647i), _wgslsmith_add_i32(u_input.c.x, global0.c)), var_6.c, -_wgslsmith_mult_i32(~(-75i), _wgslsmith_div_i32(var_2.a.c, var_6.c)), firstLeadingBit(_wgslsmith_clamp_i32(i32(-1i) * -34757i, min(2025i, u_input.e.x), -26211i))));
}

