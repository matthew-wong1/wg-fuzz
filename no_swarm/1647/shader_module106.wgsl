struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec3<u32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(Struct_1(-408f, vec3<bool>(false, false, true), vec3<u32>(0u, 1u, 4294967295u), 2147483647i, -186f), Struct_1(1000f, vec3<bool>(false, false, false), vec3<u32>(0u, 27395u, 4009u), 0i, 874f)), Struct_2(Struct_1(980f, vec3<bool>(false, true, false), vec3<u32>(4294967295u, 25754u, 0u), i32(-2147483648), 1814f), Struct_1(717f, vec3<bool>(true, true, true), vec3<u32>(15453u, 27970u, 10208u), 15074i, 2841f)), Struct_1(-781f, vec3<bool>(false, false, true), vec3<u32>(65971u, 1506u, 47870u), -1i, 1000f), vec3<f32>(2199f, 1342f, 187f));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: vec2<u32>) -> f32 {
    var var_0 = ~vec4<i32>(0i, ~(-1138i >> (0u % 32u)), 1i, global0.c.d) & ~max(_wgslsmith_clamp_vec4_i32(~vec4<i32>(-1i, 641i, u_input.a.x, u_input.a.x), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, global0.c.d, 1i, global0.b.a.d), vec4<i32>(0i, 1i, 24096i, global0.b.b.d)), ~vec4<i32>(global0.c.d, 7979i, global0.b.a.d, u_input.a.x)), ~vec4<i32>(-1i, 54339i, u_input.a.x, 0i));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global0.b.b.a, _wgslsmith_f_op_f32(floor(-151f)))), global0.d.x)) - global0.d.x), global0.b.b.b, global0.c.c, abs(abs(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(var_0.x, u_input.a.x, var_0.x, 1i), vec4<i32>(20994i, u_input.a.x, 1i, global0.c.d)), u_input.a))), 306f);
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(var_1.e)))))), global0.b.a.b, ~vec3<u32>(abs(27779u), _wgslsmith_div_u32(global0.b.b.c.x, arg_0.x), _wgslsmith_add_u32(global0.b.a.c.x, arg_1.x)), abs(-global0.b.b.d), global0.d.x), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), select(var_1.b, select(vec3<bool>(true, var_1.b.x, false), vec3<bool>(global0.c.b.x, var_1.b.x, true), var_1.b.x), vec3<bool>(all(vec4<bool>(true, true, var_1.b.x, var_1.b.x)), var_1.b.x, any(vec3<bool>(false, global0.b.b.b.x, false)))), select(vec3<u32>(~var_1.c.x, 1u, ~arg_0.x), vec3<u32>(arg_0.x, _wgslsmith_mod_u32(4294967295u, var_1.c.x), 48222u), vec3<bool>(var_1.b.x, true, true)), max(var_0.x, 2104i), 1378f));
    let var_3 = global0.b.b.b.x;
    var_0 = u_input.a;
    return var_1.e;
}

fn func_2() -> Struct_2 {
    global0 = Struct_3(Struct_2(global0.c, global0.b.b), global0.b, Struct_1(_wgslsmith_f_op_f32(-725f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.e))), !global0.a.b.b, ~_wgslsmith_mult_vec3_u32(vec3<u32>(global0.b.a.c.x, 4294967295u, global0.b.b.c.x), _wgslsmith_mult_vec3_u32(vec3<u32>(63544u, global0.c.c.x, 0u), global0.b.b.c)), u_input.a.x, 382f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-2300f, global0.c.a, global0.d.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1182f * 1851f), 288f, _wgslsmith_f_op_f32(global0.c.a - 970f))))));
    global0 = Struct_3(Struct_2(global0.c, Struct_1(_wgslsmith_f_op_f32(func_3(~vec4<u32>(1u, 4294967295u, 77177u, 21602u), vec4<u32>(1u, global0.c.c.x, 1u, 1u), vec2<u32>(u_input.b, 36448u))), !global0.c.b, global0.c.c & _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 1u, global0.b.b.c.x), vec3<u32>(51804u, u_input.b, 7836u)), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, global0.b.a.d), u_input.a.xyy), _wgslsmith_div_vec3_i32(u_input.a.wxw, u_input.a.ywz)), 1202f)), global0.a, Struct_1(230f, global0.b.a.b, ~vec3<u32>(0u, 1u, reverseBits(u_input.b)), countOneBits(~firstLeadingBit(17365i)), global0.c.a), _wgslsmith_f_op_vec3_f32(-global0.d));
    global0 = Struct_3(Struct_2(Struct_1(global0.a.b.a, !select(vec3<bool>(false, true, global0.a.a.b.x), vec3<bool>(global0.c.b.x, false, global0.c.b.x), false), reverseBits(global0.c.c) | _wgslsmith_sub_vec3_u32(global0.a.a.c, vec3<u32>(17624u, u_input.b, 10142u)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(global0.c.d, global0.b.a.d), _wgslsmith_dot_vec3_i32(u_input.a.zzz, u_input.a.yzw)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.b.b.a), _wgslsmith_f_op_f32(select(global0.d.x, -634f, false))))), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -160f), 1311f)), !vec3<bool>(global0.a.a.b.x, false, false), global0.a.b.c, -1707i, 701f)), Struct_2(Struct_1(-349f, vec3<bool>(true, true, true), (global0.c.c ^ global0.a.a.c) & global0.a.a.c, -(~global0.b.b.d), global0.a.a.e), Struct_1(global0.b.a.a, !global0.a.a.b, firstLeadingBit(vec3<u32>(4294967295u, 10425u, 25754u)), _wgslsmith_mult_i32(~1i, u_input.a.x), 1959f)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1548f, global0.c.e, global0.a.a.b.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1850f))), global0.c.b, min(vec3<u32>(0u, 63952u, 22961u), global0.a.b.c) >> (~global0.a.b.c % vec3<u32>(32u)), -15256i, -138f), vec3<f32>(-1427f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.a.b.a + 689f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.a.a.a)))));
    let var_0 = global0.a.b.b.x;
    var var_1 = _wgslsmith_add_vec3_u32(global0.c.c, vec3<u32>(_wgslsmith_dot_vec2_u32(global0.b.b.c.xx, global0.b.a.c.zz), ~global0.b.b.c.x, abs(u_input.b)) << (countOneBits(abs(vec3<u32>(36431u, 1u, global0.a.b.c.x))) % vec3<u32>(32u))) & (vec3<u32>(u_input.b, reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b.a.c.x, global0.b.a.c.x, global0.c.c.x, 1u), vec4<u32>(global0.a.b.c.x, global0.b.a.c.x, u_input.b, u_input.b))), u_input.b | u_input.b) << (_wgslsmith_clamp_vec3_u32(global0.a.b.c, global0.c.c, vec3<u32>(~4294967295u, 2314u, u_input.b << (0u % 32u))) % vec3<u32>(32u)));
    return Struct_2(global0.b.b, global0.a.b);
}

fn func_1() -> f32 {
    var var_0 = Struct_3(global0.a, func_2(), Struct_1(global0.a.a.a, vec3<bool>(select(true, !global0.b.a.b.x, !global0.c.b.x), true, global0.a.a.b.x), global0.b.b.c, firstLeadingBit(global0.b.a.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a.a))), global0.d);
    var var_1 = var_0.d;
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_0.d)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.a, var_1.x, 1824f) - global0.d), global0.d, !select(vec3<bool>(global0.c.b.x, global0.c.b.x, var_0.a.a.b.x), global0.b.b.b, var_0.c.b.x)))) - global0.d);
    let var_2 = Struct_2(var_0.b.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)))), vec3<bool>(!(var_0.c.b.x || global0.a.a.b.x), false, !(false & global0.c.b.x)), firstLeadingBit(~global0.b.a.c << (~global0.c.c % vec3<u32>(32u))), ~global0.c.d, _wgslsmith_f_op_f32(abs(1424f))));
    var var_3 = all(vec2<bool>(global0.a.a.d == -22245i, true || var_2.a.b.x));
    return -690f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<i32>(global0.a.b.d, 30353i & _wgslsmith_mod_i32(-u_input.a.x, 1i), -33710i);
    var var_1 = global0.b;
    var var_2 = _wgslsmith_add_u32(~(~(global0.c.c.x | 1u)), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.e) - _wgslsmith_f_op_f32(func_1())), 26895u);
}

