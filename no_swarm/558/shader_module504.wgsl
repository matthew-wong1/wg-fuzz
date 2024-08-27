struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-181f);

var<private> global1: Struct_2 = Struct_2(26997u, 1u, vec3<u32>(15405u, 0u, 72605u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>) -> bool {
    global1 = Struct_2((~1u & _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 0u), ~vec2<u32>(0u, global1.a))) | min(~82506u, global1.a), 38572u ^ _wgslsmith_mult_u32(global1.b, 7044u), vec3<u32>(0u, 76574u, ~u_input.d.x) >> (u_input.d % vec3<u32>(32u)));
    var var_0 = reverseBits(global1.c);
    let var_1 = 1i;
    var_0 = _wgslsmith_mod_vec3_u32(u_input.d, (global1.c << (~_wgslsmith_div_vec3_u32(vec3<u32>(11064u, 0u, var_0.x), global1.c) % vec3<u32>(32u))) ^ min(abs(firstTrailingBit(u_input.d)), u_input.d));
    var var_2 = select(any(vec3<bool>(true, _wgslsmith_f_op_f32(-arg_0.x) >= -1087f, true)), false, !(all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true))) && select(true, true, true)));
    return any(vec4<bool>(any(vec3<bool>(true, true, false)) & true, all(vec2<bool>(true, true)), !select(false, false, false), u_input.a.x < -30272i)) | !all(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false))));
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_3) -> vec3<u32> {
    global1 = Struct_2(abs(39480u), _wgslsmith_clamp_u32(1u, _wgslsmith_sub_u32(arg_0 | 1u, 38110u), select(4294967295u, ~0u, func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(342f, arg_2.a, -221f, arg_2.a) + vec4<f32>(arg_2.a, global0.a, -273f, 1000f))))), abs(u_input.d));
    global1 = Struct_2(abs(_wgslsmith_mult_u32(countOneBits(arg_0), global1.b)), _wgslsmith_dot_vec2_u32(~countOneBits(~global1.c.yy), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(abs(u_input.d.yx), global1.c.xx << (vec2<u32>(global1.c.x, 0u) % vec2<u32>(32u))), select(u_input.d.yx, ~vec2<u32>(4294967295u, 59655u), vec2<bool>(true, true)))), vec3<u32>(0u, ~(~21243u), firstLeadingBit(1u)) ^ reverseBits(u_input.d ^ global1.c));
    let var_0 = vec3<u32>(4294967295u, ~(~countOneBits(abs(4294967295u))), _wgslsmith_add_u32((~3317u << (u_input.d.x % 32u)) ^ firstTrailingBit(30720u << (1u % 32u)), 54802u));
    let var_1 = Struct_1(_wgslsmith_mod_vec2_u32(~(u_input.d.xx << (global1.c.yz % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(var_0.xy, global1.c.yx)), ~vec2<u32>(countOneBits(12484u << (1u % 32u)), (global1.a & arg_0) >> (global1.a % 32u)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(302f)), global0.a, _wgslsmith_f_op_f32(627f + arg_2.a), _wgslsmith_f_op_f32(f32(-1f) * -1012f)) * vec4<f32>(-835f, _wgslsmith_div_f32(-1624f, arg_2.a), arg_2.a, _wgslsmith_f_op_f32(-arg_2.a))))));
    let var_2 = select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true)), vec2<bool>(true, true)), vec2<bool>(any(vec3<bool>(true, true, true)), any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), true)))), ~u_input.d.x != var_0.x);
    return abs(global1.c);
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.a, 965f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.a))));
    var var_1 = 0u;
    let var_2 = Struct_2(abs(12376u), 1u, reverseBits(_wgslsmith_mod_vec3_u32(global1.c, vec3<u32>(u_input.d.x, 0u, 32976u)) >> (~vec3<u32>(29783u, global1.a, 27083u) % vec3<u32>(32u))) | _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.d.x, global1.a), u_input.d.x | global1.c.x, global1.c.x), func_2(85377u, vec2<i32>(81667i, 0i), Struct_3(579f)) << (select(vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), u_input.d, false) % vec3<u32>(32u))));
    var var_3 = ~var_2.a;
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1721f, 655f, -1173f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(887f, -211f, 505f) * vec3<f32>(global0.a, global0.a, 1142f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1067f, global0.a, global0.a), vec3<f32>(-487f, 417f, 184f), false)))))))));
    return Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1129f)))));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: bool) -> Struct_2 {
    let var_0 = Struct_3(-709f);
    var var_1 = _wgslsmith_sub_u32(1u, 1u);
    var var_2 = Struct_1(countOneBits(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(~u_input.d.yz, max(vec2<u32>(global1.b, 54373u), vec2<u32>(u_input.d.x, u_input.d.x))), _wgslsmith_add_vec2_u32(vec2<u32>(global1.c.x, 48766u), u_input.d.yx), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.b, u_input.d.x, 0u, 0u), vec4<u32>(0u, global1.a, 2467u, global1.a)), u_input.d.x))), ~global1.c.xx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, global0.a, var_0.a, var_0.a))))));
    let var_3 = Struct_3(_wgslsmith_div_f32(var_2.c.x, 779f));
    global1 = Struct_2(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.c.x, 0u, u_input.d.x, global1.a), ~vec4<u32>(20849u, 65261u, u_input.d.x, 0u)), _wgslsmith_sub_u32(global1.b, 0u), _wgslsmith_add_u32(global1.b, _wgslsmith_mod_u32(16788u, global1.c.x))) ^ _wgslsmith_dot_vec2_u32(select(select(vec2<u32>(4294967295u, u_input.d.x), u_input.d.zx, vec2<bool>(arg_2, arg_2)), ~vec2<u32>(12089u, u_input.d.x), vec2<bool>(true, arg_2)), _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.d.x, global1.b), _wgslsmith_mult_vec2_u32(vec2<u32>(var_2.a.x, global1.b), vec2<u32>(global1.b, 0u)))), global1.a, ~((~vec3<u32>(27225u, global1.b, var_2.a.x) | select(global1.c, vec3<u32>(40244u, u_input.d.x, 1u), vec3<bool>(arg_2, arg_2, arg_2))) << (~(~vec3<u32>(var_2.b.x, 16606u, u_input.d.x)) % vec3<u32>(32u))));
    return Struct_2(4294967295u, ~u_input.d.x, countOneBits(reverseBits(vec3<u32>(4752u, 26087u, 43865u)) >> (vec3<u32>(0u, 0u, 0u) % vec3<u32>(32u))) & (_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 4294967295u, var_2.a.x), vec3<u32>(0u, var_2.a.x, 0u) >> (global1.c % vec3<u32>(32u)), vec3<u32>(4294967295u, var_2.a.x, 49990u)) << (vec3<u32>(0u & var_2.a.x, u_input.d.x, var_2.b.x) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    global0 = Struct_3(_wgslsmith_f_op_f32(global0.a - _wgslsmith_div_f32(438f, 1051f)));
    var var_1 = Struct_1(global1.c.xz, _wgslsmith_sub_vec2_u32(vec2<u32>(~31867u, _wgslsmith_add_u32(~0u, _wgslsmith_clamp_u32(35705u, var_0, 0u))), ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(96805u, u_input.d.x), u_input.d.yy))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.a, global0.a, global0.a, global0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, global0.a, -481f, global0.a)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-194f, -527f, -863f, global0.a) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, global0.a, global0.a, -534f)))))));
    var_1 = Struct_1(vec2<u32>(4294967295u, var_0), u_input.d.xz, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.c.x, var_1.c.x, global0.a, global0.a), _wgslsmith_f_op_vec4_f32(ceil(var_1.c))))));
    var var_2 = func_4(_wgslsmith_mod_i32(u_input.a.x, 0i) >> (1u % 32u), func_1(), all(vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), true)));
    var var_3 = -777f;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~var_2.c.zx));
}

