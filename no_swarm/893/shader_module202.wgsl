struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec2<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(507f, vec2<f32>(-2193f, 218f), vec3<u32>(1u, 83801u, 1u), -4861i), vec4<i32>(-22303i, i32(-2147483648), -1i, 18588i), Struct_1(1000f, vec2<f32>(-1252f, -102f), vec3<u32>(0u, 8380u, 45370u), -6028i), Struct_1(-1492f, vec2<f32>(-752f, 397f), vec3<u32>(55503u, 13452u, 23343u), 37400i), Struct_1(2538f, vec2<f32>(361f, -611f), vec3<u32>(32921u, 9091u, 0u), -9006i)), -1i, vec2<bool>(true, false));

var<private> global2: Struct_4;

var<private> global3: f32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: f32, arg_1: Struct_3) -> i32 {
    global2 = Struct_4(vec4<bool>(any(vec2<bool>(true, true)) != all(!global0.yy), false, true, global1.c.x), ~u_input.c, global1.a.a, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-819f, -219f) + global1.a.c.b) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1230f, global1.a.d.a) * global2.d)))), vec2<f32>(arg_1.a.d.b.x, global2.c.a))));
    global1 = Struct_3(global1.a, _wgslsmith_dot_vec2_i32(arg_1.a.b.xw | global1.a.b.xw, (vec2<i32>(global1.b, global2.c.d) ^ arg_1.a.b.ww) << (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, 0u), arg_1.a.e.c.yz) % vec2<u32>(32u))) ^ global1.a.a.d, vec2<bool>(select(!global1.c.x, !global2.a.x, global2.a.x), any(global2.a.zz)));
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.c.b.x), _wgslsmith_f_op_f32(-global2.c.b.x))) + global1.a.c.a);
    var var_0 = Struct_4(select(global2.a, global2.a, false), global1.a.a.c.x, Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1490f)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-476f, _wgslsmith_f_op_f32(952f + arg_1.a.c.a)), vec2<f32>(_wgslsmith_f_op_f32(floor(847f)), arg_1.a.a.b.x), arg_1.c.x)), ~(~arg_1.a.d.c), 20490i), vec2<f32>(global2.c.b.x, arg_0));
    var var_1 = -47616i;
    return abs(arg_1.a.c.d & arg_1.a.e.d);
}

fn func_3() -> vec4<i32> {
    var var_0 = global1.a;
    let var_1 = _wgslsmith_f_op_f32(var_0.a.a * -1120f);
    var var_2 = 0u;
    var_0 = global1.a;
    let var_3 = ~global1.a.a.c.yy;
    return ~(-vec4<i32>(-_wgslsmith_add_i32(-34396i, var_0.e.d), _wgslsmith_mod_i32(-global1.b, abs(-2147483647i)), -1i, 77685i));
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    global1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.e.b.x)), _wgslsmith_f_op_vec2_f32(-global1.a.e.b), _wgslsmith_add_vec3_u32(global1.a.a.c & vec3<u32>(59487u, 1u, global2.b), vec3<u32>(8809u, u_input.c, u_input.c)), func_2(-1000f, Struct_3(global1.a, 21533i, vec2<bool>(false, false))) << (~global2.b % 32u)), func_3(), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c.b.x, -2222f) - global2.c.b)), firstLeadingBit(vec3<u32>(6814u, global2.c.c.x, 4294967295u)), 0i), Struct_1(_wgslsmith_f_op_f32(max(1491f, _wgslsmith_f_op_f32(ceil(global2.d.x)))), vec2<f32>(_wgslsmith_div_f32(global1.a.a.b.x, -2631f), global1.a.e.a), vec3<u32>(1u, u_input.c, ~1u), ~_wgslsmith_div_i32(-13745i, -28265i)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1713f)) - _wgslsmith_f_op_f32(global2.c.a * global1.a.a.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.c.a, global2.d.x) - _wgslsmith_f_op_vec2_f32(abs(global1.a.c.b))), vec3<u32>(_wgslsmith_sub_u32(68548u, 1u), firstLeadingBit(1u), 0u), global1.b)), -1i, arg_0);
    let var_0 = global1.a;
    let var_1 = 1i;
    var var_2 = true;
    var var_3 = all(select(vec2<bool>(!any(global2.a.www), max(35700u, 21087u) >= _wgslsmith_clamp_u32(global1.a.e.c.x, var_0.c.c.x, 111412u)), vec2<bool>(true, all(vec2<bool>(true, false))), !(!global1.c)));
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<bool>(!(global1.a.e.a > -344f), global2.a.x, _wgslsmith_f_op_f32(global1.a.e.a - _wgslsmith_f_op_f32(-1025f * _wgslsmith_f_op_f32(round(-394f)))) < global2.c.a);
    var var_0 = func_1(!(!(!vec2<bool>(global2.a.x, false))));
    global3 = -1000f;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.c.b.x - -230f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.a.c.a, -690f), _wgslsmith_f_op_vec2_f32(global2.d + global2.d), !vec2<bool>(false, global0.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2036f, 240f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1874f, -780f)), global2.d)), _wgslsmith_f_op_vec2_f32(max(global1.a.c.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(782f, 317f)))))), global1.a.d.c, var_0.e.d);
    global2 = Struct_4(global2.a, ~(~var_1.c.x), func_1(select(vec2<bool>(any(vec2<bool>(global0.x, global1.c.x)), false), select(vec2<bool>(false, false), global1.c, true), false)).a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.c.b.x, var_1.b.x)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-529f, _wgslsmith_f_op_f32(2278f - global1.a.e.b.x)))));
    let var_2 = func_1(global0.xy).b.zw;
    let x = u_input.a;
    s_output = StorageBuffer(var_2);
}

