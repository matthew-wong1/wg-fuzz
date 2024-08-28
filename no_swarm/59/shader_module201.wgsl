struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec4<bool>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<f32>, 8>;

var<private> global2: array<vec4<bool>, 6>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> bool {
    global1 = array<vec3<f32>, 8>();
    var var_0 = vec4<u32>(countOneBits(reverseBits(4294967295u)), min(_wgslsmith_clamp_u32(u_input.a | global0.b, u_input.e, ~30577u), ~_wgslsmith_add_u32(60181u, global0.c.x)) ^ 108435u, _wgslsmith_dot_vec4_u32(global0.c, firstLeadingBit(global0.c)), 1u);
    var var_1 = -10679i;
    var_1 = u_input.d.x;
    let var_2 = 1478f;
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> vec2<bool> {
    var var_0 = ~(arg_2.c >> (vec4<u32>(0u, 10659u, ~u_input.e, ~1u) % vec4<u32>(32u)));
    var var_1 = arg_0.d;
    let var_2 = vec4<u32>(min(4294967295u, 21790u), abs(_wgslsmith_mod_u32(u_input.e, global0.b) ^ 40955u), 18829u, arg_3.a.c.x) ^ arg_2.c;
    let var_3 = vec4<bool>(true, arg_0.d, true, !all(vec4<bool>(!arg_1, arg_3.a.d, arg_3.a.d || true, arg_1)));
    var var_4 = Struct_3(Struct_1(countOneBits(arg_2.b >> (1u % 32u)), min(arg_0.a, ~global0.a | 1u), global0.c, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-377f * _wgslsmith_f_op_f32(f32(-1f) * -1739f)))) - 1419f), select(vec4<bool>(false, var_3.x, any(!global2[_wgslsmith_index_u32(3195u, 6u)]), !global0.d || arg_0.d), !select(global2[_wgslsmith_index_u32(abs(var_2.x), 6u)], !vec4<bool>(arg_1, true, false, var_3.x), !global2[_wgslsmith_index_u32(arg_0.c.x, 6u)]), arg_2.d), Struct_2(Struct_1(~4294967295u & _wgslsmith_add_u32(19014u, var_0.x), _wgslsmith_dot_vec3_u32(var_2.yww, vec3<u32>(0u, 0u, 0u)), countOneBits(~vec4<u32>(arg_2.b, 4294967295u, arg_2.c.x, 19858u)), true)), arg_3);
    return select(var_4.c.ww, var_3.zx, vec2<bool>(arg_1, all(!var_3.yy)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = all(vec2<bool>(true, global0.d)) || (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_mult_u32(global0.b, 15900u), _wgslsmith_div_u32(global0.a, 1u)), vec3<u32>(global0.a, 0u, 14921u)) > (global0.a >> (1u % 32u)));
    let var_1 = select(func_4(Struct_1(reverseBits(~u_input.e), u_input.a, _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.c.x, arg_0.c.x, 3546u, 4294967295u), arg_0.c ^ vec4<u32>(arg_0.c.x, u_input.a, u_input.a, arg_0.c.x)), true), arg_1.x, Struct_1(arg_0.c.x, _wgslsmith_div_u32(40071u, 4294967295u), ~(~arg_0.c), func_3()), Struct_2(arg_0)), select(arg_1.zx, select(vec2<bool>(global0.d, arg_1.x), select(vec2<bool>(arg_0.d, false), !vec2<bool>(false, global0.d), arg_0.a >= 4294967295u), arg_1.zw), any(vec2<bool>(false, !global0.d))), arg_1.zz);
    var_0 = !(!(!arg_1.x));
    global2 = array<vec4<bool>, 6>();
    var var_2 = Struct_3(Struct_1(80453u, _wgslsmith_add_u32(u_input.e, ~(~65399u)), min(~(~vec4<u32>(34971u, u_input.a, arg_0.a, 0u)), firstTrailingBit(abs(vec4<u32>(4294967295u, 49999u, 35190u, arg_0.c.x)))), func_4(arg_0, var_1.x, Struct_1(u_input.e, _wgslsmith_dot_vec2_u32(global0.c.yz, global0.c.wy), ~arg_0.c, var_1.x), Struct_2(Struct_1(arg_0.a, 10379u, vec4<u32>(u_input.a, 9392u, 65371u, 1u), var_1.x))).x), -2107f, !(!arg_1), Struct_2(Struct_1(max(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a, 0u), global0.c.wx), u_input.e), 79857u, ~vec4<u32>(51530u, global0.b, arg_0.c.x, 27090u), true)), Struct_2(arg_0));
    return Struct_2(var_2.d.a);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec2<u32>) -> vec4<f32> {
    var var_0 = ~arg_0.c.a.c.x;
    var var_1 = Struct_3(func_2(arg_1.c.a, !(!(!arg_0.c.c))).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(264f, arg_1.c.b)))) + arg_1.c.b), vec4<bool>(global0.d, -min(-1i, u_input.c) >= 7474i, true, true), func_2(arg_1.c.e.a, select(!(!global2[_wgslsmith_index_u32(arg_2.x, 6u)]), vec4<bool>(true, false, global0.d == false, true), true)), arg_1.a);
    global0 = Struct_1(func_2(arg_0.c.e.a, arg_0.c.c).a.a, 1u, arg_0.a.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.b - _wgslsmith_f_op_f32(1036f - 444f)) - arg_0.c.b) < var_1.b);
    var var_2 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.b) * _wgslsmith_f_op_f32(-arg_1.c.b)) <= arg_0.c.b);
    let var_3 = u_input.d.x;
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_div_f32(-1326f, _wgslsmith_div_f32(-591f, -111f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b + 700f))), -651f) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1578f, 1000f, var_1.b, var_1.b))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.c.b, 1995f, var_1.b, 168f), vec4<f32>(-832f, -1045f, 147f, arg_0.c.b))))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-700f, arg_1.c.b, var_1.b, _wgslsmith_f_op_f32(f32(-1f) * -646f)))))));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_4) -> vec4<u32> {
    global1 = array<vec3<f32>, 8>();
    let var_0 = _wgslsmith_f_op_vec4_f32(func_5(Struct_4(func_2(Struct_1(global0.a, _wgslsmith_mod_u32(arg_3.c.d.a.a, arg_3.c.d.a.c.x), arg_2, true), select(vec4<bool>(true, false, true, true), !vec4<bool>(global0.d, arg_3.a.a.d, true, arg_3.a.a.d), vec4<bool>(global0.d, global0.d, global0.d, false))), vec3<bool>(true, true, true), Struct_3(func_2(Struct_1(arg_3.c.d.a.b, 47024u, vec4<u32>(1u, 47739u, arg_3.a.a.a, arg_2.x), false), !arg_3.c.c).a, arg_3.c.b, vec4<bool>(func_2(arg_3.c.a, vec4<bool>(arg_3.b.x, true, arg_3.c.a.d, arg_3.b.x)).a.d, global0.d, 986f != arg_1, true & global0.d), arg_3.a, Struct_2(arg_3.c.d.a))), Struct_4(func_2(func_2(Struct_1(9431u, 1u, global0.c, global0.d), global2[_wgslsmith_index_u32(u_input.e, 6u)]).a, vec4<bool>(arg_3.b.x && true, any(arg_3.c.c.zzz), all(arg_3.c.c.xw), arg_3.c.b < -1000f)), vec3<bool>(true, global0.d, arg_3.a.a.d), Struct_3(Struct_1(u_input.e, 4294967295u >> (u_input.a % 32u), ~vec4<u32>(0u, global0.a, 27394u, 4294967295u), global0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.c.b) * _wgslsmith_f_op_f32(sign(arg_1))), !vec4<bool>(arg_3.c.e.a.d, false, arg_3.b.x, arg_3.a.a.d), Struct_2(func_2(Struct_1(global0.a, u_input.e, arg_2, global0.d), vec4<bool>(true, global0.d, arg_3.a.a.d, false)).a), arg_3.a)), abs(vec2<u32>(1u, 44315u))));
    var var_1 = Struct_1(countOneBits(arg_3.c.d.a.c.x), ~_wgslsmith_dot_vec3_u32(~arg_3.c.d.a.c.wwy << (arg_3.a.a.c.yww % vec3<u32>(32u)), countOneBits(arg_3.a.a.c.yyz)), vec4<u32>(_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(116631u, global0.a, u_input.e, arg_2.x)), vec4<u32>(arg_3.a.a.b, global0.a, reverseBits(4294967295u), _wgslsmith_add_u32(global0.a, 32264u))), 28354u, _wgslsmith_div_u32(~(~global0.b), _wgslsmith_add_u32(25404u, arg_2.x)), _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a ^ 4294967295u, ~arg_3.a.a.c.x), ~_wgslsmith_add_u32(8882u, arg_3.a.a.b))), global0.d);
    global1 = array<vec3<f32>, 8>();
    let var_2 = arg_3;
    return vec4<u32>(u_input.e >> (63001u % 32u), ~4294967295u, 1u, ~47445u >> (~min(abs(global0.a), reverseBits(1u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(~1u, _wgslsmith_dot_vec4_u32(global0.c, ~min(max(vec4<u32>(16353u, 4294967295u, global0.b, u_input.a), vec4<u32>(1u, global0.b, 0u, 32256u)), func_1(u_input.c, -1263f, global0.c, Struct_4(Struct_2(Struct_1(70009u, global0.b, global0.c, true)), vec3<bool>(false, false, global0.d), Struct_3(Struct_1(u_input.e, 1u, global0.c, true), -1486f, vec4<bool>(true, false, true, global0.d), Struct_2(Struct_1(20426u, 8811u, vec4<u32>(global0.b, 14450u, 3277u, u_input.e), true)), Struct_2(Struct_1(u_input.e, 69616u, global0.c, true))))))));
    global2 = array<vec4<bool>, 6>();
    var var_1 = func_2(Struct_1(~0u, ~(~global0.a), ~global0.c, false), global2[_wgslsmith_index_u32(~reverseBits(u_input.a), 6u)]);
    var var_2 = vec4<bool>(true, !func_3(), true, false);
    let var_3 = func_2(Struct_1(var_1.a.a, var_1.a.a, vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(var_1.a.b, var_1.a.c.x), global0.b), 18627u, func_1(_wgslsmith_dot_vec3_i32(u_input.d.www, vec3<i32>(15236i, 1i, u_input.b.x)), _wgslsmith_f_op_f32(trunc(116f)), firstTrailingBit(global0.c), Struct_4(Struct_2(Struct_1(347u, 4294967295u, vec4<u32>(u_input.a, u_input.a, 0u, global0.a), var_2.x)), var_2.wyw, Struct_3(var_1.a, -572f, vec4<bool>(false, var_1.a.d, true, false), Struct_2(Struct_1(13359u, global0.a, vec4<u32>(u_input.a, u_input.a, global0.c.x, 6987u), false)), Struct_2(var_1.a)))).x, ~8783u), false), vec4<bool>(u_input.c < ~(-u_input.b.x), !var_1.a.d, var_2.x, var_1.a.d));
    var_2 = select(!select(global2[_wgslsmith_index_u32(~u_input.a, 6u)], vec4<bool>(var_3.a.d, var_2.x, all(global2[_wgslsmith_index_u32(81187u, 6u)]), var_1.a.d), true), !vec4<bool>(var_1.a.d, true, var_3.a.d | func_4(var_1.a, var_3.a.d, var_1.a, Struct_2(var_3.a)).x, (u_input.c >> (u_input.e % 32u)) > -1i), vec4<bool>(var_1.a.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1509f)), 1f) == -738f, !(_wgslsmith_mod_i32(-24413i, u_input.b.x) > ~u_input.b.x), !(!any(var_2.zzx))));
    let var_4 = Struct_4(var_3, var_2.zww, Struct_3(Struct_1(abs(var_3.a.b), 0u, ~func_1(-15379i, 117f, vec4<u32>(64827u, u_input.e, var_1.a.b, 47930u), Struct_4(Struct_2(var_1.a), var_2.wxz, Struct_3(var_3.a, -609f, vec4<bool>(var_3.a.d, global0.d, false, true), Struct_2(Struct_1(global0.c.x, var_1.a.b, vec4<u32>(10378u, var_1.a.a, var_1.a.b, var_3.a.a), var_3.a.d)), var_3))), true), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(1000f * -1011f))), !vec4<bool>(any(var_2.zy), var_1.a.d, 14364u <= var_3.a.c.x, true), Struct_2(var_3.a), var_3));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(794f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.c.b * 1195f) - _wgslsmith_f_op_f32(484f - var_4.c.b)), _wgslsmith_f_op_f32(step(-1525f, _wgslsmith_div_f32(-171f, 652f)))))), var_3.a.a | var_3.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_4.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_4.c.b)))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2399f + var_4.c.b), var_4.c.b), _wgslsmith_f_op_f32(var_4.c.b - var_4.c.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1018f))), _wgslsmith_f_op_f32(sign(-666f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.c.b, _wgslsmith_f_op_vec4_f32(func_5(Struct_4(Struct_2(Struct_1(var_1.a.b, 1u, vec4<u32>(4294967295u, 87593u, 70961u, var_1.a.c.x), true)), vec3<bool>(var_4.c.a.d, var_3.a.d, true), var_4.c), Struct_4(Struct_2(Struct_1(var_1.a.c.x, var_1.a.a, var_3.a.c, true)), var_4.c.c.xyx, Struct_3(var_1.a, -1399f, global2[_wgslsmith_index_u32(20284u, 6u)], var_4.a, Struct_2(var_1.a))), global0.c.yy)).x, _wgslsmith_f_op_f32(trunc(var_4.c.b)), 141f))));
}

