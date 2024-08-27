struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(false, Struct_1(false, vec2<u32>(46721u, 9114u), true));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec4<bool>) -> vec4<bool> {
    let var_0 = !((u_input.a.x >> (_wgslsmith_div_u32(51085u, global0.b.b.x) % 32u)) <= 0i);
    global0 = Struct_4(false, Struct_1(false, u_input.d.yz, true));
    let var_1 = ~(~_wgslsmith_sub_vec4_u32(~(~u_input.d), reverseBits(u_input.d) >> (select(u_input.d, vec4<u32>(u_input.c, 4294967295u, 1u, 36944u), var_0) % vec4<u32>(32u))));
    let var_2 = Struct_4(true, global0.b);
    let var_3 = ~vec2<i32>(13734i, -_wgslsmith_div_i32(u_input.b.x, -19707i));
    return vec4<bool>(all(select(arg_1.wyz, !vec3<bool>(false, var_2.b.a, var_0), true)), !all(vec4<bool>(!global0.b.a, true, false, true)), true, global0.a);
}

fn func_2() -> Struct_1 {
    global0 = Struct_4(true, global0.b);
    global0 = Struct_4(all(!(!func_3(-1285f, vec4<bool>(true, global0.b.a, global0.b.c, global0.a)))), global0.b);
    var var_0 = global0.b;
    let var_1 = select(select(select(select(!vec2<bool>(global0.b.c, global0.b.a), func_3(-585f, vec4<bool>(global0.a, var_0.c, global0.b.a, var_0.c)).yw, select(vec2<bool>(true, global0.b.a), vec2<bool>(var_0.a, var_0.c), vec2<bool>(global0.b.a, var_0.a))), !(!vec2<bool>(true, var_0.c)), select(!vec2<bool>(true, var_0.c), select(vec2<bool>(false, global0.b.a), vec2<bool>(global0.b.a, var_0.c), vec2<bool>(var_0.a, false)), select(vec2<bool>(global0.a, global0.b.c), vec2<bool>(false, var_0.c), vec2<bool>(true, global0.b.c)))), func_3(_wgslsmith_f_op_f32(f32(-1f) * -499f), select(select(vec4<bool>(var_0.c, var_0.c, true, false), vec4<bool>(global0.a, false, true, var_0.c), vec4<bool>(false, global0.a, global0.a, global0.b.c)), !vec4<bool>(var_0.c, global0.a, global0.a, global0.b.c), !vec4<bool>(true, var_0.c, false, var_0.a))).yw, !select(vec2<bool>(var_0.a, global0.a), vec2<bool>(var_0.a, false), true)), vec2<bool>(select(func_3(1093f, !vec4<bool>(true, global0.a, global0.b.c, false)).x, true, true), select(true, true != global0.a, !var_0.a)), global0.a);
    var var_2 = vec4<i32>(-1i, abs(-_wgslsmith_mod_i32(2147483647i, 1i)), u_input.b.x, ~u_input.b.x);
    return Struct_1(!(!(!all(vec2<bool>(false, false)))), var_0.b, var_0.b.x >= _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(4294967295u, 20478u)), vec2<u32>(u_input.d.x, _wgslsmith_sub_u32(u_input.d.x, u_input.d.x))));
}

fn func_1() -> Struct_4 {
    let var_0 = !vec4<bool>(global0.a, true, true, ~u_input.d.x > max(~2151u, 82196u));
    let var_1 = func_2();
    global0 = Struct_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-386f))))) == 1f, var_1);
    global0 = Struct_4(var_1.a, global0.b);
    global0 = Struct_4(global0.b.c, Struct_1(!var_0.x, select(u_input.d.yx ^ ~global0.b.b, abs(var_1.b), !vec2<bool>(var_1.a, var_0.x)), var_0.x));
    return Struct_4(true, global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(floor(1337f)), _wgslsmith_f_op_f32(f32(-1f) * -711f), _wgslsmith_f_op_f32(-1f));
    let var_1 = _wgslsmith_f_op_vec2_f32(step(var_0.xx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(var_0.zx, vec2<f32>(461f, 1080f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_0.zy + vec2<f32>(-1149f, 1152f)))), false)))));
    global0 = func_1();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-717f, -1005f, var_1.x, var_1.x) - vec4<f32>(1000f, -449f, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1571f, 1976f, var_1.x, var_1.x) - vec4<f32>(var_0.x, var_1.x, var_0.x, 597f)), vec4<f32>(var_1.x, var_1.x, -1000f, var_0.x), func_3(1490f, vec4<bool>(false, true, true, false))))))));
    var var_3 = 1u;
    let var_4 = false;
    var var_5 = _wgslsmith_sub_vec2_i32(select(~(vec2<i32>(-1i) * -u_input.b), _wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.a.x, 0i), u_input.b), all(vec3<bool>(var_4, u_input.c < u_input.c, true))), vec2<i32>(reverseBits(_wgslsmith_clamp_i32(abs(-18372i), 1i, 14061i)), u_input.a.x));
    var var_6 = Struct_2(4902u, Struct_1(true, ~((vec2<u32>(global0.b.b.x, global0.b.b.x) << (vec2<u32>(u_input.d.x, 24482u) % vec2<u32>(32u))) | countOneBits(vec2<u32>(u_input.c, 81177u))), global0.b.a || false), func_2(), select(u_input.d.yw ^ global0.b.b, _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d.x, 16136u), vec2<u32>(6719u, 1u)), global0.b.b), true), vec3<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, global0.b.b.x, 50074u), vec3<u32>(57986u, 27384u, global0.b.b.x), vec3<bool>(var_4, false, global0.a)), u_input.d.www) & (_wgslsmith_add_u32(global0.b.b.x, u_input.d.x) ^ u_input.c), func_1().b.b.x, abs(~func_1().b.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, var_1.x)) * _wgslsmith_f_op_f32(max(var_2.x, var_2.x))), 1000f, -596f)), vec4<u32>(u_input.c, _wgslsmith_clamp_u32(~0u << (0u % 32u), ~global0.b.b.x, _wgslsmith_dot_vec3_u32(var_6.e, u_input.d.xxw)), reverseBits(_wgslsmith_sub_u32(4294967295u, 1u)), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_6.a, 11656u, var_6.a)) ^ ~vec3<u32>(global0.b.b.x, var_6.c.b.x, 1u), var_6.e)), min(vec4<u32>(~countOneBits(29088u), ~u_input.d.x | ~var_6.c.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.b.b.x, 48553u, 60423u, var_6.e.x) << (u_input.d % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(u_input.d, vec4<u32>(4294967295u, global0.b.b.x, 4294967295u, u_input.c))), global0.b.b.x), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(u_input.c, var_6.c.b.x, 1u), ~1u, u_input.c, 1u), abs(~u_input.d))), var_6.d | global0.b.b);
}

