struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_3,
    e: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
    b: i32,
    c: vec4<bool>,
    d: vec3<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<i32>(2147483647i, 14590i, -1i), vec2<i32>(2147483647i, 1i), vec2<i32>(1i, 42814i), true, 25638i);

var<private> global1: Struct_2 = Struct_2(vec3<i32>(1i, i32(-2147483648), -1i), vec2<i32>(2905i, 2147483647i), vec2<i32>(2147483647i, 28119i), false, 0i);

var<private> global2: Struct_2 = Struct_2(vec3<i32>(-86979i, 95964i, i32(-2147483648)), vec2<i32>(-61070i, -6534i), vec2<i32>(i32(-2147483648), 34869i), true, -1i);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec4<i32> {
    let var_0 = select(select(!(!select(vec2<bool>(global0.d, true), vec2<bool>(false, false), vec2<bool>(global1.d, false))), select(select(select(vec2<bool>(global1.d, true), vec2<bool>(global0.d, true), vec2<bool>(true, true)), vec2<bool>(true, false), true), vec2<bool>(global0.d, true), any(!vec3<bool>(global1.d, true, global2.d))), true), vec2<bool>(any(!(!vec4<bool>(false, global2.d, false, false))), true), vec2<bool>(true, true));
    global1 = Struct_2(firstLeadingBit(~(-(~global0.a))), _wgslsmith_add_vec2_i32(vec2<i32>(~global2.e, 0i), vec2<i32>(_wgslsmith_dot_vec4_i32(min(vec4<i32>(global0.c.x, -59252i, -52914i, 0i), vec4<i32>(global2.c.x, global2.e, -1i, global2.a.x)), select(vec4<i32>(-1173i, global1.b.x, 2147483647i, 0i), vec4<i32>(global1.e, global0.b.x, global1.c.x, global0.a.x), global1.d)), -(~global2.e))), select(-vec2<i32>(global1.e, global0.c.x), ~min(global0.a.yy | vec2<i32>(0i, 49991i), -global2.a.zz), var_0.x), all(!vec2<bool>(true, any(var_0))), global0.a.x);
    global0 = Struct_2(global2.a, global1.a.zx, _wgslsmith_clamp_vec2_i32(-vec2<i32>(1i, 0i), -global1.b, abs(global2.c)) | reverseBits(_wgslsmith_clamp_vec2_i32(global2.c, firstLeadingBit(vec2<i32>(global2.c.x, -2147483647i)), global1.c)), false, global1.b.x << (1u % 32u));
    let var_1 = global1.e;
    var var_2 = vec3<bool>(!global1.d == var_0.x, false, any(vec2<bool>(true, all(vec4<bool>(global0.d, global2.d, global2.d, false)))));
    return vec4<i32>(-6442i, global2.c.x, abs(-1i), global0.c.x);
}

fn func_2() -> Struct_2 {
    var var_0 = global2.b.x;
    let var_1 = Struct_5(firstLeadingBit(vec2<u32>(max(~79121u, _wgslsmith_sub_u32(u_input.a, 257u)), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, 4294967295u, 0u, u_input.a)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 33051u, 95626u), vec4<u32>(1u, u_input.a, 1u, u_input.a))))), _wgslsmith_dot_vec4_i32(func_3(), func_3() >> (~(~vec4<u32>(u_input.a, 96630u, 0u, u_input.a)) % vec4<u32>(32u))), vec4<bool>(true, global1.d, select(!global1.d, global2.d, true), !(!any(vec3<bool>(true, false, true)))), ~vec3<u32>(~u_input.a, _wgslsmith_add_u32(u_input.a, u_input.a), ~4294967295u), Struct_3(global0.a, Struct_2(_wgslsmith_clamp_vec3_i32(global2.a | vec3<i32>(global0.a.x, -1i, global0.a.x), global1.a, select(vec3<i32>(global1.b.x, global0.a.x, 66688i), vec3<i32>(global2.e, global2.a.x, -2147483647i), global1.d)), abs(vec2<i32>(global1.e, global1.c.x) ^ vec2<i32>(69189i, global1.e)), vec2<i32>(-2147483647i, -2147483647i) & vec2<i32>(global1.b.x, global1.c.x), (4294967295u < u_input.a) != any(vec2<bool>(global2.d, global0.d)), global0.b.x)));
    global0 = var_1.e.b;
    var var_2 = var_1;
    let var_3 = Struct_1(-var_1.b, ~(-2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(220f * _wgslsmith_f_op_f32(-240f - 300f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(644f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1329f - -335f) + _wgslsmith_div_f32(1881f, -103f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -483f) + 1393f)) * _wgslsmith_f_op_f32(f32(-1f) * -171f)), vec4<i32>(global0.c.x, -(~global1.a.x >> (max(var_1.a.x, var_1.a.x) % 32u)), -global1.e & ~_wgslsmith_mult_i32(0i, global0.a.x), (_wgslsmith_div_i32(global0.c.x, global0.a.x) | (i32(-1i) * -8200i)) ^ ~11488i));
    return var_2.e.b;
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = arg_0 >> (min(~4294967295u, ~reverseBits(~arg_0)) % 32u);
    global2 = func_2();
    let var_1 = all(!select(!(!vec3<bool>(global2.d, global1.d, global2.d)), select(select(vec3<bool>(true, global2.d, false), vec3<bool>(false, global2.d, false), true), !vec3<bool>(global0.d, global1.d, false), !vec3<bool>(global2.d, true, global2.d)), true));
    global2 = Struct_2((vec3<i32>(-76702i, _wgslsmith_sub_i32(global0.b.x, global0.b.x), max(global2.c.x, global2.b.x)) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(global2.b.x, -60473i, global1.a.x), global0.a)) >> (_wgslsmith_add_vec3_u32((vec3<u32>(1u, 1u, arg_0) << (vec3<u32>(6185u, 4294967295u, u_input.a) % vec3<u32>(32u))) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), firstLeadingBit(~vec3<u32>(u_input.a, 8686u, u_input.a))) % vec3<u32>(32u)), vec2<i32>(firstLeadingBit(-28323i), global2.b.x), ~max(vec2<i32>(-1i, global1.c.x), global0.a.yz), global2.d, func_2().b.x);
    var var_2 = Struct_3(firstLeadingBit(reverseBits(-(~vec3<i32>(global2.c.x, 26245i, 1i)))), func_2());
    return select(u_input.a, ~u_input.a, global1.d) << ((~(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(28435u, arg_0)) & u_input.a) << (73395u % 32u)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>((~u_input.a << (func_1(u_input.a) % 32u)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(2629u, u_input.a, 1u), select(vec3<u32>(4294967295u, u_input.a, 26441u), vec3<u32>(u_input.a, u_input.a, 21345u), true)) % 32u), ~firstLeadingBit(34926u), u_input.a);
    global0 = func_2();
    global2 = func_2();
    let var_1 = Struct_5(select(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(~var_0.xy, ~var_0.xz), ~abs(vec2<u32>(0u, var_0.x))), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 74501u) << ((var_0.yz << (vec2<u32>(var_0.x, 56448u) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<u32>(u_input.a << (u_input.a % 32u), func_1(0u))), true), _wgslsmith_clamp_i32(0i, global1.e, 2147483647i), select(select(select(vec4<bool>(false, true, global1.d, global0.d), vec4<bool>(false, global0.d, false, global0.d), all(vec2<bool>(false, false))), !(!vec4<bool>(global2.d, false, global1.d, true)), select(!vec4<bool>(global0.d, true, false, global1.d), vec4<bool>(global1.d, global0.d, true, false), global2.d)), !(!vec4<bool>(global0.d, false, false, false)), select(vec4<bool>(global1.d, true, false, any(vec2<bool>(true, global2.d))), select(!vec4<bool>(true, global0.d, global2.d, true), vec4<bool>(false, global1.d, false, global1.d), vec4<bool>(false, false, global1.d, true)), select(select(vec4<bool>(global1.d, false, true, false), vec4<bool>(global0.d, global2.d, global2.d, false), vec4<bool>(false, true, global0.d, global0.d)), !vec4<bool>(true, false, global2.d, true), global2.d))), vec3<u32>(max(~(~255u), ~abs(0u)), ~4294967295u, ~4294967295u), Struct_3(func_2().a, func_2()));
    let var_2 = -func_3().x;
    var var_3 = Struct_1(_wgslsmith_sub_i32(~global2.b.x, var_1.b), 2147483647i, -1438f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1094f, -1000f, true)) + _wgslsmith_f_op_f32(-1000f * -457f))))), -select(~(-vec4<i32>(0i, global2.e, global2.e, global1.c.x)), vec4<i32>(-1i, -1i, -2147483647i, 2147483647i) & vec4<i32>(31027i, global0.e, -2147483647i, var_1.b), vec4<bool>(true, true, true, global0.d)));
    var_3 = Struct_1(~_wgslsmith_add_i32(global2.b.x, _wgslsmith_add_i32(var_3.b, global2.a.x)), -4543i, 364f, var_3.c, var_3.e);
    global1 = var_1.e.b;
    let x = u_input.a;
    s_output = StorageBuffer(min(~(-select(global2.e, var_1.e.b.a.x, global0.d)), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(-34557i, -2357i), global2.a.yy), var_3.e.x)), -33876i, 4294967295u);
}

