struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<bool>(true, true, true), -20367i), 39571i, vec2<f32>(-665f, 574f), Struct_1(vec3<bool>(false, true, true), vec3<bool>(true, false, false), -12751i)), Struct_2(Struct_1(vec3<bool>(false, true, false), vec3<bool>(false, true, true), 6421i), 1i, vec2<f32>(431f, 1000f), Struct_1(vec3<bool>(true, true, false), vec3<bool>(false, true, true), 2147483647i)), Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<bool>(true, true, true), 26281i), -1i, vec2<f32>(266f, -1000f), Struct_1(vec3<bool>(true, true, false), vec3<bool>(true, false, false), i32(-2147483648))), Struct_2(Struct_1(vec3<bool>(false, false, false), vec3<bool>(true, true, true), 0i), -13246i, vec2<f32>(-1000f, 688f), Struct_1(vec3<bool>(true, false, false), vec3<bool>(false, true, true), 1i)), Struct_2(Struct_1(vec3<bool>(false, false, false), vec3<bool>(true, true, true), 4127i), 17614i, vec2<f32>(-1149f, -636f), Struct_1(vec3<bool>(false, false, true), vec3<bool>(false, false, false), 0i)), Struct_2(Struct_1(vec3<bool>(false, true, true), vec3<bool>(false, false, true), 0i), -82715i, vec2<f32>(-1000f, -1680f), Struct_1(vec3<bool>(true, true, true), vec3<bool>(false, false, true), -32616i)), Struct_2(Struct_1(vec3<bool>(false, true, true), vec3<bool>(false, true, false), 2147483647i), 2147483647i, vec2<f32>(475f, -1296f), Struct_1(vec3<bool>(false, true, false), vec3<bool>(true, false, true), -55650i)), Struct_2(Struct_1(vec3<bool>(false, true, false), vec3<bool>(false, false, true), 0i), -17804i, vec2<f32>(-190f, -789f), Struct_1(vec3<bool>(true, true, false), vec3<bool>(true, false, false), 1i)), Struct_2(Struct_1(vec3<bool>(true, false, false), vec3<bool>(false, true, true), i32(-2147483648)), 13214i, vec2<f32>(-268f, -732f), Struct_1(vec3<bool>(false, false, true), vec3<bool>(false, true, false), 2147483647i)), Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<bool>(false, false, true), 0i), 0i, vec2<f32>(-2251f, 1439f), Struct_1(vec3<bool>(false, false, true), vec3<bool>(false, false, false), -14998i)), Struct_2(Struct_1(vec3<bool>(false, true, false), vec3<bool>(true, true, true), -11012i), 15027i, vec2<f32>(790f, 217f), Struct_1(vec3<bool>(true, true, false), vec3<bool>(true, false, true), -1871i)), Struct_2(Struct_1(vec3<bool>(true, false, true), vec3<bool>(true, false, true), -2949i), 0i, vec2<f32>(140f, 539f), Struct_1(vec3<bool>(true, true, false), vec3<bool>(false, false, false), 3449i)), Struct_2(Struct_1(vec3<bool>(true, true, true), vec3<bool>(false, false, false), -21487i), -35443i, vec2<f32>(-413f, -1139f), Struct_1(vec3<bool>(false, true, true), vec3<bool>(false, true, false), 6364i)), Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<bool>(false, false, true), -30293i), 0i, vec2<f32>(-910f, 191f), Struct_1(vec3<bool>(false, true, false), vec3<bool>(true, false, false), i32(-2147483648))), Struct_2(Struct_1(vec3<bool>(false, false, false), vec3<bool>(false, false, false), 65627i), 1i, vec2<f32>(406f, 886f), Struct_1(vec3<bool>(true, true, true), vec3<bool>(true, true, false), 21433i)), Struct_2(Struct_1(vec3<bool>(true, false, false), vec3<bool>(false, true, false), 1i), i32(-2147483648), vec2<f32>(228f, -997f), Struct_1(vec3<bool>(false, true, false), vec3<bool>(false, false, false), -10747i)), Struct_2(Struct_1(vec3<bool>(false, false, false), vec3<bool>(false, false, false), 23001i), 0i, vec2<f32>(160f, 1191f), Struct_1(vec3<bool>(true, true, false), vec3<bool>(false, false, false), 2147483647i)), Struct_2(Struct_1(vec3<bool>(true, false, false), vec3<bool>(false, true, false), 0i), 2147483647i, vec2<f32>(-1084f, -777f), Struct_1(vec3<bool>(true, true, false), vec3<bool>(false, true, true), 2147483647i)), Struct_2(Struct_1(vec3<bool>(true, true, true), vec3<bool>(true, false, true), -1i), 2147483647i, vec2<f32>(-110f, 670f), Struct_1(vec3<bool>(false, true, true), vec3<bool>(false, false, false), 4297i)), Struct_2(Struct_1(vec3<bool>(true, false, false), vec3<bool>(false, true, false), 35448i), 253i, vec2<f32>(200f, -819f), Struct_1(vec3<bool>(true, false, true), vec3<bool>(false, false, true), -31082i)), Struct_2(Struct_1(vec3<bool>(true, false, false), vec3<bool>(true, true, true), 117093i), 11509i, vec2<f32>(-687f, 1178f), Struct_1(vec3<bool>(true, false, false), vec3<bool>(true, true, true), 128i)));

var<private> global1: Struct_2;

var<private> global2: array<vec3<f32>, 11>;

var<private> global3: vec4<f32>;

var<private> global4: Struct_2 = Struct_2(Struct_1(vec3<bool>(false, true, false), vec3<bool>(true, true, false), 0i), 35887i, vec2<f32>(610f, -409f), Struct_1(vec3<bool>(false, true, true), vec3<bool>(true, false, false), -1i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> vec2<u32> {
    global2 = array<vec3<f32>, 11>();
    global4 = Struct_2(Struct_1(!select(select(global1.a.a, vec3<bool>(true, global1.d.b.x, global1.a.b.x), global1.a.a.x), vec3<bool>(false, false, global1.d.a.x), global4.d.b), vec3<bool>(true, false, global1.a.a.x), u_input.b.x), ~18067i, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global3.zx + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global1.c)) * _wgslsmith_f_op_vec2_f32(step(global1.c, global4.c)))), _wgslsmith_f_op_vec2_f32(global4.c + vec2<f32>(global3.x, _wgslsmith_f_op_f32(f32(-1f) * -633f))), global1.a.b.xz)), global4.a);
    var var_0 = !global4.d.b.yx;
    var var_1 = global0[_wgslsmith_index_u32(65720u, 21u)];
    var var_2 = global4.a.c;
    return _wgslsmith_mod_vec2_u32(select(~(~(~vec2<u32>(u_input.a, u_input.a))), max(_wgslsmith_div_vec2_u32(min(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, u_input.a)), vec2<u32>(u_input.a, 18548u)), ~(~vec2<u32>(u_input.a, 20744u))), var_1.d.a.x & true), countOneBits(vec2<u32>(u_input.a, u_input.a) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 55447u) | vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, 70413u), vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u))));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> vec2<u32> {
    global0 = array<Struct_2, 21>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0)))));
    global0 = array<Struct_2, 21>();
    let var_1 = 1u;
    let var_2 = arg_0;
    return ~func_2() ^ (_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(44678u, var_1)), vec2<u32>(27552u, 35896u)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 42506u, 0u, 48820u), vec4<u32>(5250u, 7335u, var_1, 1u)), _wgslsmith_dot_vec2_u32(vec2<u32>(35099u, u_input.a), vec2<u32>(1u, 43890u)))) ^ ~vec2<u32>(~35030u, ~var_1));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    global4 = Struct_2(Struct_1(select(vec3<bool>(true, true, any(vec2<bool>(true, true))), select(vec3<bool>(global1.d.a.x, global1.a.a.x, true), select(global1.a.a, vec3<bool>(arg_2.a.x, global4.d.a.x, global1.d.b.x), true), arg_2.a.x), !(!global4.d.a)), !global4.d.a, _wgslsmith_add_i32(1i, countOneBits(_wgslsmith_add_i32(1i, arg_2.c)))), ~(~(-2147483647i)), global4.c, arg_2);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -23640i;
    global1 = global0[_wgslsmith_index_u32(abs(~u_input.a) << (u_input.a % 32u), 21u)];
    global4 = Struct_2(func_3(~(~(vec2<u32>(1u, u_input.a) ^ vec2<u32>(4294967295u, 795u))), _wgslsmith_div_vec2_u32(select(vec2<u32>(u_input.a, 135551u), vec2<u32>(u_input.a, 0u), vec2<bool>(false, false)), ~vec2<u32>(3051u, 0u)) & func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-742f, global1.c.x, global4.c.x, 428f) * vec4<f32>(1148f, global4.c.x, global3.x, global4.c.x)), Struct_1(vec3<bool>(global1.d.b.x, global4.d.b.x, global4.d.a.x), vec3<bool>(true, global4.a.b.x, global4.d.a.x), -7226i)), global4.a), u_input.b.x, vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1719f))))), _wgslsmith_f_op_f32(floor(648f))), func_3(select(_wgslsmith_div_vec2_u32(abs(vec2<u32>(4294967295u, 9089u)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a))), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 62905u), vec2<u32>(1u, 0u)), vec2<u32>(u_input.a, 16939u) | vec2<u32>(u_input.a, u_input.a)), true && global1.d.b.x), select(vec2<u32>(1u, 1u), vec2<u32>(75299u, 13487u), global1.a.a.x) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), func_3(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(~48354u, select(47552u, 69025u, true)), Struct_1(global1.a.a, global1.a.b, _wgslsmith_sub_i32(-1i, global1.a.c)))));
    let var_1 = vec2<u32>(_wgslsmith_add_u32(abs(u_input.a), _wgslsmith_div_u32(u_input.a, ~8226u)), ~1u);
    global0 = array<Struct_2, 21>();
    let var_2 = Struct_3(global0[_wgslsmith_index_u32(u_input.a, 21u)], _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global3.zw))))))), vec4<u32>(17651u, 56916u, abs(~1u), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(func_2(), min(var_1, var_1)), var_1 | (var_1 << (var_1 % vec2<u32>(32u))))));
    let var_3 = _wgslsmith_mod_vec4_u32(vec4<u32>(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_2.c.x), _wgslsmith_mult_vec2_u32(vec2<u32>(27760u, 4294967295u), var_2.c.xw))), 4294967295u, _wgslsmith_mult_u32(var_2.c.x, 4294967295u), _wgslsmith_mod_u32(~var_2.c.x, u_input.a) >> ((0u | _wgslsmith_mult_u32(u_input.a, var_2.c.x)) % 32u)), vec4<u32>(1u, 45090u, abs(_wgslsmith_add_u32(0u, 1u)), ~(var_2.c.x & _wgslsmith_sub_u32(51123u, var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(min(max(select(vec4<u32>(var_2.c.x, 0u, u_input.a, 4338u), vec4<u32>(4294967295u, u_input.a, 24928u, u_input.a), vec4<bool>(var_2.a.d.b.x, false, false, global1.d.a.x)) & var_2.c, vec4<u32>(~87986u, var_3.x, 1u, 1u)), var_3), u_input.a, ~vec4<i32>(-1i, -global1.b, -2147483647i, 0i), _wgslsmith_f_op_f32(f32(-1f) * -1205f));
}

