struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(1u, 0u, 35253u), vec3<u32>(4294967295u, 109890u, 1u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(37979u, 4294967295u, 0u), vec3<u32>(83817u, 1u, 22983u), vec3<u32>(1u, 38217u, 0u), vec3<u32>(0u, 51049u, 55469u), vec3<u32>(61733u, 35420u, 26494u), vec3<u32>(51194u, 4294967295u, 3909u), vec3<u32>(1u, 9403u, 23323u), vec3<u32>(15834u, 1u, 4294967295u), vec3<u32>(0u, 0u, 67254u), vec3<u32>(17028u, 0u, 46617u), vec3<u32>(4294967295u, 31674u, 21813u), vec3<u32>(6958u, 39461u, 51757u), vec3<u32>(92659u, 0u, 33919u), vec3<u32>(0u, 4294967295u, 48603u), vec3<u32>(33410u, 20235u, 73937u), vec3<u32>(61606u, 51059u, 4294967295u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 7714u, 0u), vec3<u32>(1u, 48032u, 4294967295u), vec3<u32>(68700u, 4294967295u, 0u), vec3<u32>(4294967295u, 0u, 6477u), vec3<u32>(90206u, 0u, 0u), vec3<u32>(1u, 98479u, 0u), vec3<u32>(21720u, 4294967295u, 15106u), vec3<u32>(569u, 519u, 4294967295u), vec3<u32>(15366u, 1u, 4294967295u));

var<private> global1: array<vec4<i32>, 18>;

var<private> global2: i32;

var<private> global3: vec4<f32> = vec4<f32>(526f, 556f, 826f, -924f);

var<private> global4: vec4<bool>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<f32> {
    global1 = array<vec4<i32>, 18>();
    var var_0 = Struct_1(global3.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3.x, global3.x), global3.xx, false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global3.x) * global3.wy))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global3.x, -662f))))), global3.yy, select(!global4.wz, vec2<bool>(true, global4.x | global4.x), false))));
    var var_1 = u_input.a.x;
    global4 = vec4<bool>(global4.x, global4.x, all(select(vec3<bool>(all(vec3<bool>(global4.x, global4.x, global4.x)), false, global4.x), global4.yzw, vec3<bool>(global4.x != true, any(vec4<bool>(global4.x, false, global4.x, false)), !global4.x))), ~u_input.a.x == _wgslsmith_add_u32(_wgslsmith_clamp_u32(countOneBits(u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a.x), u_input.a.zz), _wgslsmith_mod_u32(0u, 18764u)), 0u));
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(145f, _wgslsmith_f_op_f32(-var_0.b.x), var_0.b.x, global3.x)) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.x, var_0.a, var_0.b.x, 2223f))))))), Struct_2(1i, -firstTrailingBit(26765i) & countOneBits(~23356i)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(694f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global3.xy))))), Struct_2(-1i, ~_wgslsmith_mod_i32(abs(29206i), ~2147483647i)));
    return _wgslsmith_div_vec4_f32(vec4<f32>(758f, var_2.a.x, -428f, _wgslsmith_f_op_f32(max(521f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(144f, 1138f)) * _wgslsmith_f_op_f32(round(var_0.a)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1574f, global3.x)), var_2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1481f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_0.b.x, -1000f, false))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.b.x, -1000f, -678f)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_3) -> f32 {
    global0 = array<vec3<u32>, 29>();
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec4_f32(func_3()).x, -313f));
}

fn func_2(arg_0: bool, arg_1: i32) -> i32 {
    global0 = array<vec3<u32>, 29>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_4(Struct_3(_wgslsmith_f_op_vec4_f32(func_3()), Struct_2(max(arg_1, 21628i), _wgslsmith_add_i32(arg_1, 50652i)), Struct_1(1743f, global3.yy), Struct_2(4517i, arg_1 << (u_input.a.x % 32u))), Struct_3(vec4<f32>(_wgslsmith_div_f32(global3.x, global3.x), _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-728f * -1957f), _wgslsmith_f_op_f32(-global3.x)), Struct_2(arg_1, arg_1 | 1i), Struct_1(-286f, _wgslsmith_f_op_vec2_f32(-global3.yx)), Struct_2(-12584i, 38805i)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -224f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, global3.x)))), Struct_3(vec4<f32>(_wgslsmith_f_op_f32(global3.x * -1436f), _wgslsmith_f_op_f32(floor(global3.x)), _wgslsmith_f_op_f32(global3.x + global3.x), _wgslsmith_f_op_f32(trunc(global3.x))), Struct_2(abs(60191i), arg_1), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -628f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, global3.x))), Struct_2(46498i, 0i >> (u_input.a.x % 32u))))), -2765f, global3.x);
    var var_1 = !vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x - -1047f)) >= var_0.x, true, arg_0);
    var var_2 = _wgslsmith_f_op_f32(ceil(global3.x));
    let var_3 = false;
    return arg_1;
}

fn func_1() -> Struct_3 {
    global1 = array<vec4<i32>, 18>();
    return Struct_3(vec4<f32>(310f, 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -759f) * -1880f), global3.x), global3.x), Struct_2(abs(_wgslsmith_div_i32(func_2(global4.x, 0i), 1i)), _wgslsmith_clamp_i32(-18982i, -34162i << (firstLeadingBit(u_input.a.x) % 32u), _wgslsmith_add_i32(1i, select(1i, 1i, global4.x)))), Struct_1(_wgslsmith_f_op_f32(max(global3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-405f - -768f), _wgslsmith_f_op_f32(f32(-1f) * -215f)))), global3.zy), Struct_2(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(39773i, firstLeadingBit(19816i)), -select(vec2<i32>(-56466i, 0i), vec2<i32>(22961i, 2147483647i), global4.xy))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = vec4<i32>(var_0.d.b, 11186i, 52201i, var_0.b.a);
    global4 = vec4<bool>(false, true, any(vec3<bool>(true, !global4.x, global4.x)) & false, 0u > u_input.a.x);
    global3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(func_4(func_1(), Struct_3(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.c.a, -395f, global3.x, 1033f))), func_1().b, Struct_1(111f, var_0.c.b), Struct_2(-1i, 20178i)), Struct_1(var_0.a.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, 1415f) - var_0.a.yx)), Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1178f, -347f, var_0.c.b.x, -1000f) + var_0.a), func_1().b, Struct_1(208f, global3.zw), func_1().b))), var_0.a.x));
    var var_2 = 1u;
    var var_3 = u_input.a.x;
    global4 = !(!vec4<bool>(global4.x, ~16638i > _wgslsmith_dot_vec3_i32(var_1.zzw, vec3<i32>(var_1.x, 40550i, 2147483647i)), global4.x, true & any(global4.zwy)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0.a.x)), _wgslsmith_f_op_f32(var_0.a.x * -670f)), global1[_wgslsmith_index_u32(1u, 18u)], -706f, _wgslsmith_f_op_f32(-var_0.c.b.x));
}

