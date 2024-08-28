struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: i32,
    d: vec2<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 31>;

var<private> global1: vec4<u32>;

var<private> global2: i32 = -48586i;

var<private> global3: array<Struct_4, 22>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: Struct_3) -> f32 {
    var var_0 = vec4<i32>(2147483647i, select(abs(u_input.b.x), -firstTrailingBit(-u_input.a.x), !(!all(arg_0.yzx))), _wgslsmith_dot_vec2_i32(u_input.a, max(-u_input.a, ~vec2<i32>(u_input.a.x, 3533i))), u_input.b.x);
    var_0 = vec4<i32>(1i, u_input.a.x, _wgslsmith_mod_i32(abs(0i), u_input.b.x) | firstLeadingBit(i32(-1i) * -9387i), -(_wgslsmith_div_i32(var_0.x, -u_input.a.x) << (~_wgslsmith_sub_u32(global1.x, 1u) % 32u)));
    var_0 = ~u_input.b;
    var var_1 = _wgslsmith_f_op_f32(-1328f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1528f + _wgslsmith_div_f32(arg_2.a, _wgslsmith_f_op_f32(1102f * arg_2.a)))));
    let var_2 = arg_2.b;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_2.a.x, _wgslsmith_f_op_f32(-813f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.a.x)))), all(!(!vec2<bool>(arg_1.x, arg_1.x))))), arg_2.a));
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = vec2<i32>(u_input.a.x, -2147483647i);
    global3 = array<Struct_4, 22>();
    let var_1 = -2147483647i;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-280f, -378f) + vec2<f32>(1000f, -1160f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-803f, 469f) - vec2<f32>(-1000f, 368f)))) * vec2<f32>(_wgslsmith_f_op_f32(-1612f * _wgslsmith_f_op_f32(497f + -825f)), _wgslsmith_f_op_f32(func_3(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), false), vec2<bool>(true, true), Struct_3(1521f, Struct_1(vec2<f32>(-1000f, -139f))))))));
    var var_3 = var_0.x;
    return Struct_1(var_2.a);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: bool, arg_3: vec4<f32>) -> u32 {
    let var_0 = Struct_5(Struct_3(arg_3.x, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(333f, -892f) + arg_1.a))));
    var var_1 = select(vec2<u32>(~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 49158u, 59973u, u_input.c), vec4<u32>(1u, 1u, global1.x, arg_0.x)), global1.x), ~(~(~arg_0.x))), ~countOneBits(min(arg_0.xz, vec2<u32>(u_input.d, global1.x))), select(!(!vec2<bool>(arg_2, false)), vec2<bool>(true, true), !(!(!vec2<bool>(arg_2, false)))));
    var var_2 = 1257f;
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.wy) - _wgslsmith_f_op_vec2_f32(-var_0.a.b.a))) + _wgslsmith_f_op_vec2_f32(-var_0.a.b.a)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_3.xw))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1303f, arg_3.x)) - vec2<f32>(arg_1.a.x, 1000f))), false)));
    var_2 = 756f;
    return _wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(global1.zx, arg_0.xx), ~_wgslsmith_sub_u32(~1u, 37418u)), select(select(~max(0u, arg_0.x), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(1u, 1u, var_1.x, 54885u)), vec4<u32>(var_1.x, 74760u, 4294967295u, 1u)), false), ~(~1u >> (max(4294967295u, global1.x) % 32u)), true));
}

fn func_1() -> i32 {
    var var_0 = vec3<u32>(func_4(_wgslsmith_mult_vec3_u32(~global1.ywz, global1.yxw | global1.yxy), func_2(u_input.b.yx), all(vec2<bool>(true, true)), vec4<f32>(1801f, _wgslsmith_f_op_f32(f32(-1f) * -2514f), -982f, _wgslsmith_f_op_f32(f32(-1f) * -313f))) >> (28285u % 32u), _wgslsmith_dot_vec2_u32(global1.xz, ~(~global1.wy) | ~(~global1.yw)), 4294967295u);
    global0 = array<Struct_4, 31>();
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1019f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 807f) * -907f)))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(252f, 873f), vec2<f32>(-547f, 961f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1944f, 1000f))) - _wgslsmith_div_vec2_f32(vec2<f32>(-552f, 218f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(115f, -803f))))));
    var var_2 = 804f;
    global1 = ~(~firstTrailingBit(abs(vec4<u32>(84883u, 4294967295u, global1.x, var_0.x)) >> (~vec4<u32>(0u, u_input.d, global1.x, u_input.d) % vec4<u32>(32u))));
    return _wgslsmith_mod_i32(_wgslsmith_sub_i32(35284i, 36612i | _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.a.x, 1i), u_input.b.x)), -17630i);
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: u32) -> Struct_4 {
    global3 = array<Struct_4, 22>();
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -245f), -243f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-119f + -1567f), _wgslsmith_f_op_f32(f32(-1f) * -861f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1000f, 198f), _wgslsmith_f_op_f32(round(1405f))))));
    var var_1 = arg_1.a.b;
    global1 = abs(select(min(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2, u_input.c, 0u, global1.x), vec4<u32>(63807u, arg_2, 4294967295u, u_input.d)), abs(vec4<u32>(4294967295u, global1.x, arg_2, arg_2))), abs(vec4<u32>(6357u, arg_2, 4294967295u, 4294967295u) ^ vec4<u32>(1u, u_input.c, u_input.c, 40626u)), select(vec4<bool>(false, true, arg_1.a.b, arg_1.a.b), !vec4<bool>(arg_1.a.b, arg_1.a.b, false, arg_1.a.b), vec4<bool>(true, false, arg_1.a.b, arg_1.a.b)))) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_add_u32(~33361u, ~arg_1.a.a.x), _wgslsmith_add_u32(~global1.x, 1u), global1.x, _wgslsmith_mod_u32(0u, _wgslsmith_div_u32(7435u, 337u))), abs(countOneBits(vec4<u32>(arg_1.a.a.x, u_input.d, global1.x, u_input.d)))) % vec4<u32>(32u));
    var_1 = arg_1.a.b && !select(true, arg_1.a.b, any(select(vec4<bool>(arg_1.a.b, true, false, true), vec4<bool>(false, arg_1.a.b, arg_1.a.b, false), true)));
    return Struct_4(Struct_2(vec3<u32>(1u, select(u_input.c, _wgslsmith_mod_u32(0u, global1.x), false), reverseBits(~0u)), !(!arg_1.a.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.a.x >> (u_input.c % 32u);
    global2 = _wgslsmith_mult_i32(38300i, u_input.b.x);
    global0 = array<Struct_4, 31>();
    var var_0 = func_5(func_1(), global0[_wgslsmith_index_u32(1u, 31u)], ~(0u & global1.x));
    global1 = _wgslsmith_mod_vec4_u32(abs(vec4<u32>(32104u, 4812u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.d), global1.zz))) >> (_wgslsmith_add_vec4_u32(vec4<u32>(~var_0.a.a.x, 1u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.x, u_input.c, global1.x), vec4<u32>(34138u, 1u, 4294967295u, 15224u))), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.d, 13916u, 0u), vec4<u32>(u_input.c, var_0.a.a.x, 4294967295u, u_input.d), vec4<u32>(global1.x, 1u, global1.x, global1.x)))) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_div_u32(~global1.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, global1.x, u_input.c, global1.x), vec4<u32>(global1.x, 36949u, 4294967295u, global1.x) >> (vec4<u32>(u_input.c, global1.x, u_input.d, var_0.a.a.x) % vec4<u32>(32u)))), 0u, 53999u, select(abs(~global1.x), 1u, all(select(vec2<bool>(var_0.a.b, true), vec2<bool>(false, var_0.a.b), vec2<bool>(false, true))))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(sign(func_2(_wgslsmith_div_vec2_i32(vec2<i32>(1i, 22148i), firstTrailingBit(vec2<i32>(14510i, u_input.a.x)))).a.x)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 250f) * vec2<f32>(_wgslsmith_f_op_f32(round(144f)), 1000f))));
    let var_2 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~abs(select(vec3<u32>(1u, global1.x, 1u), vec3<u32>(1u, global1.x, 1u), true)), vec3<u32>(~0u, ~global1.x, var_0.a.a.x) >> (firstLeadingBit(var_0.a.a) % vec3<u32>(32u))), 0u);
    let var_3 = vec3<bool>(!(!(var_0.a.b && var_0.a.b) & var_0.a.b), !((~u_input.d ^ (4294967295u & var_2)) > global1.x), !all(select(!vec3<bool>(var_0.a.b, var_0.a.b, false), select(vec3<bool>(var_0.a.b, var_0.a.b, true), vec3<bool>(var_0.a.b, false, false), var_0.a.b), vec3<bool>(var_0.a.b, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.a, vec4<f32>(1f, 1f, 1f, 1f), ~_wgslsmith_dot_vec2_i32(~abs(vec2<i32>(u_input.b.x, u_input.b.x)), ~vec2<i32>(u_input.a.x, u_input.a.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -936f), _wgslsmith_f_op_f32(sign(1618f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.b.a.x - -1000f), var_1.b.a.x)) - _wgslsmith_f_op_f32(sign(var_1.b.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.a.x, -428f, -538f, var_1.b.a.x)))))));
}

