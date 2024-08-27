struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 27>;

var<private> global1: array<Struct_1, 2>;

var<private> global2: vec4<f32> = vec4<f32>(1757f, 196f, -1020f, -1194f);

var<private> global3: array<vec4<i32>, 17>;

var<private> global4: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: f32) -> i32 {
    let var_0 = !arg_1.x;
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(325f, global2.x, -2184f, arg_3))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, -474f, arg_3, -746f) * vec4<f32>(1513f, 674f, -873f, -432f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_3, 933f, -1209f, arg_3)))))));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-168f, -783f, 1172f, global2.x)))))));
    let var_1 = ~(~_wgslsmith_mult_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(133597u, 22224u, arg_0.d), vec3<u32>(u_input.a, 0u, 4294967295u), vec3<u32>(u_input.a, 1u, arg_2.d)), ~(~vec3<u32>(arg_2.d, global4.d, arg_0.d))));
    var var_2 = select(!(!arg_2.c.x), arg_2.c.x, arg_1.x);
    return reverseBits(-31489i);
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-823f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(global2.x)), _wgslsmith_f_op_f32(-global2.x))) + global2.x), _wgslsmith_f_op_f32(trunc(-103f)), global2.x)));
    let var_1 = global4.b;
    var var_2 = vec4<i32>(-16759i, 0i, 4848i, max(func_3(arg_0, !(!vec3<bool>(false, true, global4.c.x)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 1u, 0u), countOneBits(vec4<u32>(70904u, u_input.b, arg_0.d, u_input.a))), 2u)], _wgslsmith_f_op_f32(select(var_0.x, 920f, false))), -1i));
    var var_3 = Struct_2(arg_0, arg_0.d, ~u_input.b);
    global4 = Struct_1(var_2.yy, -25424i, arg_0.c, u_input.b);
    return Struct_2(global1[_wgslsmith_index_u32(~4294967295u, 2u)], _wgslsmith_sub_u32(arg_0.d, select(1u, max(1u, 1u), !global4.c.x)), max(var_3.b, ~1u) ^ (~(~global4.d) | ~u_input.a));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec2<i32>) -> vec3<bool> {
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, 1107f, global2.x) - _wgslsmith_div_vec4_f32(vec4<f32>(global2.x, 1536f, global2.x, 591f), vec4<f32>(-1306f, global2.x, 645f, -118f))))));
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(643f, global2.x) + -1423f), _wgslsmith_f_op_f32(round(413f)), -1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global2.x, -327f, global2.x)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2142f, global2.x, global2.x, global2.x))))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(570f)), _wgslsmith_f_op_f32(sign(-196f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + 1373f)), global2.x) + vec4<f32>(_wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(select(224f, 1357f, global4.c.x)))), -967f, _wgslsmith_f_op_f32(355f * 756f), _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(floor(-2467f))))));
    var var_1 = arg_1.a;
    var var_2 = Struct_1(vec2<i32>(arg_0, -arg_0), ~((3869i << (global4.d % 32u)) & arg_2.x), vec2<bool>(var_1.c.x && true, false), _wgslsmith_div_u32(u_input.a & 34851u, 10451u));
    var var_3 = select(vec3<bool>(any(select(select(vec3<bool>(global4.c.x, false, var_1.c.x), vec3<bool>(false, true, true), var_1.c.x), !vec3<bool>(var_2.c.x, var_1.c.x, true), all(vec3<bool>(global4.c.x, false, false)))), var_1.c.x, false), !select(vec3<bool>(true, any(vec4<bool>(var_2.c.x, false, var_2.c.x, false)), any(vec3<bool>(true, arg_1.a.c.x, arg_1.a.c.x))), vec3<bool>(var_2.c.x, true | arg_1.a.c.x, false), select(!vec3<bool>(var_2.c.x, false, var_2.c.x), vec3<bool>(var_2.c.x, var_1.c.x, var_2.c.x), true)), any(!select(!vec2<bool>(global4.c.x, arg_1.a.c.x), global4.c, vec2<bool>(true, false))));
    return !vec3<bool>(var_1.c.x, false, !(!var_3.x) && true);
}

fn func_1(arg_0: u32) -> vec3<i32> {
    global3 = array<vec4<i32>, 17>();
    let var_0 = select(func_4(_wgslsmith_dot_vec4_i32((global3[_wgslsmith_index_u32(0u, 17u)] >> (vec4<u32>(4294967295u, u_input.b, arg_0, 53338u) % vec4<u32>(32u))) & ~vec4<i32>(-1i, global4.b, -509i, global4.a.x), vec4<i32>(-1i, -19758i, global4.a.x, global4.a.x) & reverseBits(global3[_wgslsmith_index_u32(arg_0, 17u)])), func_2(global1[_wgslsmith_index_u32(abs(1u), 2u)]), _wgslsmith_div_vec2_i32(~vec2<i32>(-45888i, -20228i), _wgslsmith_mod_vec2_i32(-vec2<i32>(global4.b, -1i), ~global4.a))), select(vec3<bool>(func_4(abs(global4.a.x), func_2(global1[_wgslsmith_index_u32(1u, 2u)]), _wgslsmith_clamp_vec2_i32(vec2<i32>(global4.b, -1i), vec2<i32>(-4675i, global4.a.x), vec2<i32>(-21895i, global4.a.x))).x, true, any(vec2<bool>(global4.c.x, false)) | true), !select(vec3<bool>(false, global4.c.x, true), !vec3<bool>(global4.c.x, false, true), global4.c.x), global4.c.x), vec3<bool>(all(vec3<bool>(global4.c.x, true, true)), false, global4.c.x));
    var var_1 = Struct_2(func_2(global1[_wgslsmith_index_u32(~arg_0, 2u)]).a, 20652u, abs(_wgslsmith_add_u32(~54017u, _wgslsmith_div_u32(arg_0, u_input.a)) & _wgslsmith_sub_u32(arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, global4.d, 0u, u_input.b), vec4<u32>(51648u, 1u, 1u, 0u)))));
    var var_2 = ~1u ^ _wgslsmith_add_u32(var_1.b, global4.d);
    let var_3 = var_1.a;
    return _wgslsmith_add_vec3_i32(vec3<i32>(~var_3.a.x, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-26304i, var_1.a.b, -863i), vec3<i32>(var_1.a.a.x, -32272i, 16060i) >> (vec3<u32>(32806u, u_input.a, arg_0) % vec3<u32>(32u))), vec3<i32>(global4.b, global4.b, var_1.a.a.x) & select(vec3<i32>(var_3.a.x, global4.b, global4.a.x), vec3<i32>(1i, 32901i, -1i), true)), var_1.a.a.x), vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_1.a.b, -41159i, global4.b), ~vec3<i32>(0i, 2147483647i, var_1.a.b)), select(-vec3<i32>(global4.a.x, -1i, 2147483647i), vec3<i32>(1i, var_3.b, var_1.a.b) >> (vec3<u32>(0u, 1u, var_3.d) % vec3<u32>(32u)), func_4(2147483647i, Struct_2(Struct_1(vec2<i32>(68523i, var_1.a.a.x), var_3.a.x, vec2<bool>(false, var_0.x), arg_0), 9408u, 0u), vec2<i32>(17745i, 0i)))), global4.a.x, var_3.a.x));
}

fn func_5(arg_0: vec3<i32>, arg_1: bool) -> vec2<bool> {
    let var_0 = -func_2(global1[_wgslsmith_index_u32(~abs(~global4.d), 2u)]).a.b;
    let var_1 = _wgslsmith_div_vec4_i32(~(_wgslsmith_clamp_vec4_i32(countOneBits(global3[_wgslsmith_index_u32(1u, 17u)]), max(global3[_wgslsmith_index_u32(0u, 17u)], vec4<i32>(0i, 0i, global4.a.x, 1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, arg_0.x, 2147483647i, -38806i), global3[_wgslsmith_index_u32(u_input.a, 17u)], vec4<i32>(-26027i, 35269i, 1971i, 27051i))) << (vec4<u32>(u_input.a, _wgslsmith_mod_u32(11948u, 4294967295u), global4.d ^ u_input.a, select(4294967295u, global4.d, global4.c.x)) % vec4<u32>(32u))), ~(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global4.d >> (0u % 32u), global4.d), 17u)] & select(_wgslsmith_clamp_vec4_i32(global3[_wgslsmith_index_u32(18468u, 17u)], global3[_wgslsmith_index_u32(u_input.a, 17u)], vec4<i32>(-24646i, arg_0.x, global4.a.x, -43708i)), global3[_wgslsmith_index_u32(9170u, 17u)] << (vec4<u32>(global4.d, global4.d, 9289u, 4294967295u) % vec4<u32>(32u)), true)));
    global0 = array<vec2<i32>, 27>();
    var var_2 = global1[_wgslsmith_index_u32(u_input.b, 2u)];
    global0 = array<vec2<i32>, 27>();
    return vec2<bool>(global4.c.x, var_2.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(func_5(func_1(0u), !all(!global4.c)), !global4.c, !global4.c);
    var var_1 = func_2(Struct_1(-vec2<i32>(2147483647i, select(1i, 2147483647i, var_0.x)), -(~42301i), !(!(!vec2<bool>(var_0.x, true))), 0u));
    var var_2 = var_1.a;
    global3 = array<vec4<i32>, 17>();
    var var_3 = -15063i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-global2.yz), _wgslsmith_sub_vec3_i32(~vec3<i32>(var_2.a.x, var_2.b, 0i), max(-vec3<i32>(20485i, 17372i, -1i), ~vec3<i32>(global4.a.x, var_2.b, 1i))) ^ select(vec3<i32>(global4.a.x, _wgslsmith_dot_vec2_i32(global4.a, var_1.a.a), select(var_1.a.b, -1i, var_0.x)), _wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(-26416i, -2147483647i, var_1.a.b)), select(vec3<i32>(var_1.a.b, -62219i, 2147483647i), vec3<i32>(-2147483647i, -5815i, -1i), false)), !(!vec3<bool>(true, global4.c.x, true))));
}

