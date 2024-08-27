struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: f32,
    d: vec3<u32>,
    e: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: u32,
    d: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29>;

var<private> global1: array<i32, 14> = array<i32, 14>(1i, i32(-2147483648), 2147483647i, -25347i, 0i, -2875i, -1i, -44849i, i32(-2147483648), 0i, 74169i, i32(-2147483648), 7413i, 1i);

var<private> global2: vec4<u32> = vec4<u32>(90741u, 5615u, 50864u, 0u);

var<private> global3: Struct_4 = Struct_4(1u, Struct_2(vec2<u32>(1u, 11951u), true, 1279f, vec3<u32>(12845u, 34074u, 75402u), -1i), vec3<bool>(false, false, false));

var<private> global4: vec2<f32> = vec2<f32>(-1979f, 592f);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_4) -> f32 {
    global2 = vec4<u32>(arg_0.b.d.x, ~(global3.b.a.x >> (_wgslsmith_mult_u32(1u, global3.a) % 32u)) << ((1u ^ global3.a) % 32u), ~firstLeadingBit(select(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(global3.a, arg_0.a), arg_0.b.a), u_input.b.x <= global3.b.e)), global2.x);
    global0 = array<i32, 29>();
    var var_0 = arg_0;
    global3 = Struct_4(u_input.a, arg_0.b, vec3<bool>(arg_0.b.b, true, arg_0.b.b));
    var_0 = arg_0;
    return -437f;
}

fn func_2() -> vec3<f32> {
    global0 = array<i32, 29>();
    let var_0 = vec2<u32>(global2.x >> (global3.a % 32u), countOneBits(~9667u));
    global1 = array<i32, 14>();
    let var_1 = 54902u;
    global0 = array<i32, 29>();
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-376f)) * _wgslsmith_div_f32(global3.b.c, 830f)))), global3.b.c, _wgslsmith_f_op_f32(global4.x * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_4(global2.x, global3.b, global3.c))))))) - vec3<f32>(_wgslsmith_f_op_f32(-global4.x), 1000f, _wgslsmith_f_op_f32(round(-401f))));
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_1(select(!(!vec4<bool>(false, global3.b.b, false, global3.c.x)), vec4<bool>(global3.c.x, !global3.c.x, !global3.c.x, _wgslsmith_mod_u32(u_input.a, global3.a) > 35902u), vec4<bool>(true, select(!global3.c.x, all(global3.c.xy), any(global3.c)), _wgslsmith_clamp_u32(23163u, global3.b.d.x, 1u) < u_input.a, !(!global3.c.x))), _wgslsmith_f_op_f32(f32(-1f) * -934f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_2()))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b.c * global3.b.c) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global4.x, 1000f)), global3.b.c))));
    var var_1 = !(!global3.b.b);
    let var_2 = ~global3.b.e;
    global1 = array<i32, 14>();
    let var_3 = _wgslsmith_add_i32(firstLeadingBit(select(-20003i, global3.b.e, true)), global3.b.e);
    return Struct_3(countOneBits(select(4294967295u, abs(global2.x), any(vec2<bool>(var_0.a.x, var_0.a.x)))), Struct_2(countOneBits(max(vec2<u32>(global3.a, 1u) | global2.xx, ~global2.zz)), true, var_0.b, ~(~(vec3<u32>(global2.x, global2.x, 23427u) >> (global3.b.d % vec3<u32>(32u)))), firstLeadingBit(var_2)), 4294967295u, _wgslsmith_mod_vec4_i32(-_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(41199i, var_3, 46574i, u_input.b.x)), ~vec4<i32>(var_2, u_input.b.x, global1[_wgslsmith_index_u32(global2.x, 14u)], global1[_wgslsmith_index_u32(0u, 14u)])), -(~(~u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(func_3(Struct_4(countOneBits(global2.x), func_1().b, !vec3<bool>(global3.c.x, false, var_0.b.b))))));
    var var_1 = Struct_1(vec4<bool>(min(global2.x & 6074u, 1u) < 11995u, _wgslsmith_f_op_vec3_f32(func_2()).x > var_0.b.c, true, any(vec2<bool>(!var_0.b.b, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.b.c)) * _wgslsmith_f_op_f32(floor(-739f))))) + global4.x), vec3<f32>(_wgslsmith_f_op_f32(298f + -269f), _wgslsmith_f_op_vec3_f32(func_2()).x, global4.x), _wgslsmith_f_op_f32(-global4.x));
    var var_2 = !vec3<bool>(true, false, true && var_0.b.b);
    var var_3 = Struct_1(vec4<bool>(false && var_2.x, !var_1.a.x, !any(!var_1.a.yyw), select(_wgslsmith_mult_u32(var_0.a, global3.b.a.x), 22059u, all(vec2<bool>(var_1.a.x, var_0.b.b))) >= 27692u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -499f) + _wgslsmith_f_op_f32(1052f * _wgslsmith_f_op_f32(-481f + -307f))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1292f, global3.b.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(global3.b.c, 584f, var_2.x))))), var_1.c), -3386f);
    var var_4 = select(var_1.a.zyx, select(global3.c, !var_1.a.yyy, !global3.c), var_0.b.b);
    let var_5 = vec2<bool>(any(var_2.yy) && false, var_4.x);
    var var_6 = Struct_2(var_0.b.a, false, 1900f, _wgslsmith_mult_vec3_u32(global3.b.d, var_0.b.d), 8667i);
    let x = u_input.a;
    s_output = StorageBuffer(-1000f);
}

