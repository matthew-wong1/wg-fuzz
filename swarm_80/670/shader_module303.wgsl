struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global1: Struct_1 = Struct_1(true, vec3<i32>(27630i, -1i, -1i), vec3<bool>(false, false, false), -5763i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = 1000f;
    var var_1 = global1.c.x;
    var var_2 = Struct_3(arg_0, abs(select(~vec4<u32>(4294967295u, 18147u, 38720u, 60918u), vec4<u32>(~44670u, firstTrailingBit(35079u), ~0u, 38811u), !(!vec4<bool>(true, true, arg_0.c.x, false)))), Struct_1(true, vec3<i32>(_wgslsmith_clamp_i32(37950i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a.x), vec2<i32>(23844i, -2147483647i)), -1i), 2147483647i, global1.d), global0.xyx, firstLeadingBit(_wgslsmith_add_i32(2147483647i, _wgslsmith_div_i32(arg_0.b.x, 2147483647i)))), arg_0);
    var var_3 = Struct_2(12437i, select(arg_0.c, !arg_0.c, any(!vec2<bool>(false, var_2.a.a))), Struct_1(all(!global1.c.xz), ~var_2.d.b, vec3<bool>(all(!vec2<bool>(false, global0.x)), all(global0.zyx), var_2.b.x <= abs(var_2.b.x)), global1.b.x), vec4<bool>(true, !var_2.d.a, true, arg_0.c.x));
    global1 = Struct_1(!arg_0.c.x, _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(abs(~vec3<i32>(48893i, 24127i, -11484i)), vec3<i32>(var_3.c.b.x, ~0i, firstTrailingBit(u_input.a.x))), abs(global1.b)), select(select(vec3<bool>(select(global1.c.x, true, true), var_3.c.a & var_3.b.x, false), vec3<bool>(var_2.a.c.x, !arg_0.a, true), select(select(vec3<bool>(true, false, false), vec3<bool>(arg_0.a, false, var_3.d.x), vec3<bool>(false, global1.c.x, true)), !var_3.b, var_2.a.c.x)), vec3<bool>(true, any(select(var_3.d, vec4<bool>(arg_0.c.x, true, global0.x, global1.c.x), false)), var_2.c.a), !select(any(vec3<bool>(false, false, global0.x)), true, !global1.c.x)), abs(-27551i));
    return select(var_3.d, select(vec4<bool>(global1.a, false, !any(var_3.d), true), select(vec4<bool>(true, arg_0.a, arg_0.a, false), !select(vec4<bool>(global1.a, true, var_2.d.c.x, false), var_3.d, var_3.d), all(select(var_3.d, var_3.d, var_2.a.c.x))), var_2.b.x <= var_2.b.x), select(select(var_3.d, var_3.d, !(!global0.x)), select(select(var_3.d, !var_3.d, any(var_3.d)), select(!var_3.d, vec4<bool>(false, false, arg_0.a, true), any(global0.zyz)), true && all(global0.ww)), var_3.d));
}

fn func_2() -> u32 {
    global1 = Struct_1(any(vec4<bool>(any(vec4<bool>(false, true, true, true)), true, global0.x, all(!vec3<bool>(global1.c.x, global1.c.x, global0.x)))), vec3<i32>(-10512i, _wgslsmith_mult_i32(_wgslsmith_add_i32(~global1.b.x, u_input.a.x), 2147483647i), i32(-1i) * -33988i), select(vec3<bool>(all(vec3<bool>(global0.x, false, global1.c.x)), global1.c.x, true), vec3<bool>(global1.a, global1.c.x & true, true), vec3<bool>(true || global0.x, global0.x, global1.a)), global1.b.x | -10125i);
    global0 = !func_3(Struct_1(true, vec3<i32>(_wgslsmith_add_i32(global1.d, 17933i), 2147483647i, u_input.a.x), select(!global0.xyx, !global0.wxy, any(vec3<bool>(true, true, global1.c.x))), u_input.a.x));
    global0 = vec4<bool>(true, !(!all(global1.c)), true, true);
    global1 = Struct_1(all(vec4<bool>(true, global1.a, false, false)) & global1.a, _wgslsmith_add_vec3_i32(global1.b, global1.b) << (_wgslsmith_add_vec3_u32(vec3<u32>(~20858u, ~1u, _wgslsmith_div_u32(0u, 4294967295u)), min(vec3<u32>(12893u, 1u, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(44219u, 33381u, 4294967295u)))) % vec3<u32>(32u)), vec3<bool>(false, !(!global0.x), false), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(u_input.a.x, global1.d))), u_input.a));
    let var_0 = -1217f;
    return abs(0u);
}

fn func_1() -> f32 {
    var var_0 = -_wgslsmith_add_i32(global1.b.x, _wgslsmith_mod_i32(~min(25793i, 63945i), global1.d));
    var_0 = firstTrailingBit(u_input.a.x);
    let var_1 = reverseBits(vec2<u32>(func_2(), 4294967295u));
    var var_2 = Struct_1(!(!(select(false, global0.x, false) & global0.x)), max(-vec3<i32>(0i, global1.d | 2147483647i, ~u_input.a.x), ~vec3<i32>(firstLeadingBit(14674i), max(0i, 0i), 1i)), select(func_3(Struct_1(global1.c.x, abs(global1.b), select(global0.wyw, global0.wzy, vec3<bool>(true, true, global1.a)), global1.d)).ywz, global1.c, func_3(Struct_1(true, select(global1.b, vec3<i32>(27093i, global1.b.x, 38148i), global1.c), select(vec3<bool>(true, global1.c.x, true), global0.wwy, vec3<bool>(true, false, global0.x)), reverseBits(1068i))).zyx), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(global1.b, select(-vec3<i32>(u_input.a.x, global1.b.x, -2147483647i), vec3<i32>(global1.d, 35805i, u_input.a.x), select(vec3<bool>(global1.a, false, global1.c.x), vec3<bool>(false, global1.a, true), global0.x))), global1.b));
    global0 = vec4<bool>(global1.a, true, !global0.x, global1.a);
    return 947f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-491f, -898f)))), -806f, _wgslsmith_f_op_f32(min(-1000f, -114f))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1937f, -1120f, 397f) + vec3<f32>(248f, -666f, 150f))), vec3<f32>(_wgslsmith_f_op_f32(1269f + -777f), _wgslsmith_f_op_f32(-2323f - -1598f), _wgslsmith_div_f32(464f, 1000f)), vec3<bool>(all(vec3<bool>(global1.c.x, true, global0.x)), !global0.x, false)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-1286f)), -591f, _wgslsmith_f_op_f32(-439f + _wgslsmith_f_op_f32(func_1()))))));
    var var_1 = -1965f;
    global1 = Struct_1(func_3(Struct_1(!any(global0.xwy), vec3<i32>(global1.d, _wgslsmith_sub_i32(-1i, 919i), -1i), global0.wwy, _wgslsmith_mod_i32(i32(-1i) * -5311i, -2147483647i))).x, vec3<i32>(2147483647i, -29109i, _wgslsmith_clamp_i32(1i, reverseBits(_wgslsmith_mod_i32(2147483647i, global1.d)), -58090i)), !(!global0.wxx), u_input.a.x);
    global1 = Struct_1(!(false && global1.a), select(min(global1.b, _wgslsmith_div_vec3_i32(vec3<i32>(-21742i, 1i, global1.b.x), vec3<i32>(-2147483647i, -1i, u_input.a.x))), -global1.b, global1.a), func_3(Struct_1(true, ~_wgslsmith_sub_vec3_i32(vec3<i32>(1i, -2147483647i, 2147483647i), global1.b), !global0.xww, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, -88170i, u_input.a.x, u_input.a.x), -vec4<i32>(global1.d, global1.b.x, u_input.a.x, u_input.a.x)))).zxz, 2147483647i);
    var var_2 = func_3(Struct_1(global1.a, _wgslsmith_mult_vec3_i32(vec3<i32>(19892i, u_input.a.x, -46679i), vec3<i32>(select(u_input.a.x, u_input.a.x, global1.a), 2147483647i, -29557i ^ u_input.a.x)), func_3(Struct_1(any(vec4<bool>(global1.c.x, global1.c.x, true, global1.c.x)), firstTrailingBit(global1.b), func_3(Struct_1(global0.x, vec3<i32>(-14061i, 1i, u_input.a.x), vec3<bool>(false, global1.c.x, global1.a), -1i)).xww, ~0i)).zwy, u_input.a.x)).x;
    var var_3 = Struct_3(Struct_1(!(all(global0.xx) & any(global0.zz)), vec3<i32>(countOneBits(u_input.a.x), 22505i << (1u % 32u), firstTrailingBit(1i)) | ~(~vec3<i32>(global1.d, u_input.a.x, -45663i)), !global0.zyz, _wgslsmith_div_i32(1i, u_input.a.x)), ~reverseBits(vec4<u32>(1u, 1u, 1u, 1u)), Struct_1(true, countOneBits(vec3<i32>(_wgslsmith_mult_i32(-22618i, global1.d), _wgslsmith_add_i32(-18911i, -36600i), -1i)), !(!(!global1.c)), _wgslsmith_dot_vec2_i32(select(_wgslsmith_add_vec2_i32(vec2<i32>(global1.b.x, u_input.a.x), global1.b.xz), global1.b.yx, select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, global1.a), true)), abs(vec2<i32>(global1.d, u_input.a.x)))), Struct_1(true, select(global1.b, global1.b, true), !select(!global1.c, global1.c, true), global1.b.x));
    var_1 = -327f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(-554f, var_0.x)), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.c.b.x, 12022i, -1i), vec3<i32>(-16553i, global1.b.x, u_input.a.x)) ^ 1i) >> (1u % 32u), 18398i);
}

