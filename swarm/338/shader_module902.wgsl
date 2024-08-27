struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 20>;

var<private> global1: array<Struct_4, 12>;

var<private> global2: array<f32, 11>;

var<private> global3: bool;

var<private> global4: Struct_1 = Struct_1(vec2<f32>(-1387f, 332f), 1u, vec4<f32>(351f, -559f, -857f, 401f), 1u);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(global4.a, global4.a, !(arg_0.x | arg_0.x) != all(arg_0))), min(global4.d, global4.d), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -483f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(150f * -1084f), _wgslsmith_f_op_f32(select(global4.a.x, global2[_wgslsmith_index_u32(4294967295u, 11u)], true)))), -138f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-264f)), -122f)))), _wgslsmith_dot_vec4_u32(~(vec4<u32>(16648u, global4.d, 4294967295u, 11203u) << (vec4<u32>(global4.b, 1857u, 33921u, global4.d) % vec4<u32>(32u))) ^ (firstLeadingBit(vec4<u32>(global4.b, 51058u, 64367u, global4.d)) ^ vec4<u32>(global4.b, 6138u, global4.b, global4.b)), _wgslsmith_div_vec4_u32(~(~vec4<u32>(1u, 38156u, global4.d, 0u)), min(vec4<u32>(40815u, 46666u, global4.b, 4294967295u), countOneBits(vec4<u32>(36340u, 2939u, global4.b, 26752u))))));
    var var_1 = Struct_5(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global4.a - vec2<f32>(642f, 829f)), _wgslsmith_f_op_vec2_f32(global4.c.yy - global4.c.xw))), 57274u, var_0.c, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.d, global4.d, 42810u, var_0.d), vec4<u32>(0u, 15729u, var_0.b, 7126u) >> (vec4<u32>(global4.b, var_0.b, 1u, var_0.d) % vec4<u32>(32u)))), Struct_1(global4.a, var_0.d, vec4<f32>(1000f, -1410f, global2[_wgslsmith_index_u32(var_0.b, 11u)], global4.c.x), firstTrailingBit(_wgslsmith_add_u32(11308u, global4.b))), Struct_1(_wgslsmith_f_op_vec2_f32(global4.a + _wgslsmith_f_op_vec2_f32(-var_0.a)), _wgslsmith_mod_u32(_wgslsmith_add_u32(global4.d, 1u), 1u), vec4<f32>(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(var_0.d, 11u)])), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global4.b, 11u)] - global2[_wgslsmith_index_u32(global4.b, 11u)]), global2[_wgslsmith_index_u32(global4.d >> (var_0.d % 32u), 11u)], global4.a.x), 34075u), 1230f >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2125f), -284f)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(50706u, 11u)])), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_0.d, 11u)] - var_0.c.x)), var_0.d, global4.c, firstLeadingBit(_wgslsmith_clamp_u32(1u, var_0.d, 56027u)))));
    global1 = array<Struct_4, 12>();
    let var_2 = var_1.a;
    let var_3 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(-global4.c.wy), 4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-124f, var_1.a.b.a.x, 818f, var_2.b.c.x) - var_1.a.c.c)))), var_2.a.b), Struct_3(_wgslsmith_f_op_vec3_f32(var_2.a.c.wwx * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.c.zwy), var_0.c.xzz, true))), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(global4.c.yy, var_1.a.c.a), vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 11u)], 214f), !var_1.a.d)), var_0.b, vec4<f32>(815f, 525f, -1357f, -1000f), _wgslsmith_mod_u32(var_0.b, 63904u))));
    return var_3.a.d;
}

fn func_2() -> Struct_1 {
    let var_0 = true;
    global4 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global4.a.x, -538f), global4.a) + _wgslsmith_f_op_vec2_f32(-global4.a)))), ~(_wgslsmith_sub_u32(37116u, ~global4.b) & _wgslsmith_dot_vec3_u32(vec3<u32>(global4.d, global4.d, global4.b), ~vec3<u32>(18191u, 4294967295u, 58701u))), global4.c, abs(~(~global4.b)));
    let var_1 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(global4.d, 11u)], -654f), vec2<f32>(global4.c.x, global4.c.x)))), 40917u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global4.c)), global4.d | func_3(vec2<bool>(var_0, var_0))), Struct_3(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(239f, _wgslsmith_f_op_f32(-169f * global4.a.x), _wgslsmith_f_op_f32(-838f - -1000f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global4.c.x, global2[_wgslsmith_index_u32(0u, 11u)], -1351f), global4.c.zwx, var_0)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2[_wgslsmith_index_u32(44206u, 11u)], global2[_wgslsmith_index_u32(0u, 11u)], 278f))))))), Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(global4.c.zz, global4.a, vec2<bool>(false, var_0))), global4.c.zw)), 57302u, _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.a.x, global2[_wgslsmith_index_u32(global4.b, 11u)], 635f, global4.c.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(113f, 1501f, global4.a.x, global2[_wgslsmith_index_u32(global4.b, 11u)]) * global4.c)), 1u)));
    var var_2 = select(vec2<bool>(true, true), vec2<bool>(false, var_0), var_0);
    global1 = array<Struct_4, 12>();
    return var_1.a;
}

fn func_1(arg_0: vec3<i32>, arg_1: f32) -> Struct_4 {
    let var_0 = 1u;
    let var_1 = Struct_2(func_2(), func_2(), func_2(), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, -2147483647i), _wgslsmith_clamp_vec3_i32(select(arg_0, arg_0, vec3<bool>(false, true, true)), arg_0, _wgslsmith_add_vec3_i32(arg_0, arg_0))) >= _wgslsmith_dot_vec2_i32(~vec2<i32>(338i, -28492i), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.x, u_input.a.x), vec2<i32>(u_input.a.x, 31585i), ~vec2<i32>(arg_0.x, 1i))), func_2());
    let var_2 = -284f;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global4.c));
    global0 = array<Struct_4, 20>();
    return global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global4.b, 18739u, ~(~1u)), 20u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~(~min(vec3<i32>(u_input.a.x, u_input.b, u_input.b), firstLeadingBit(vec3<i32>(u_input.a.x, u_input.a.x, -14947i)))), global2[_wgslsmith_index_u32(global4.d, 11u)]);
    let var_1 = select(select(vec4<bool>(all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), false)), all(vec3<bool>(false, true, false)), any(vec3<bool>(false, true, true)), all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false))), vec4<bool>(false, any(vec2<bool>(true, true)), !(var_0.a.c.x <= 442f), true), !any(vec2<bool>(true, true))), vec4<bool>(select(true, false, all(vec3<bool>(false, true, false))), true, false, all(vec2<bool>(true, true))), all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), all(vec2<bool>(true, true))), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, false, true), true))));
    var var_2 = Struct_2(func_1(vec3<i32>(countOneBits(0i), u_input.a.x, u_input.b) & -(vec3<i32>(44268i, u_input.b, u_input.a.x) | vec3<i32>(u_input.b, u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(round(global4.c.x))).b.b, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a.a) - var_0.b.a.yy), var_0.b.b.d, func_2().c, _wgslsmith_div_u32(~(~global4.b), var_0.a.b)), func_1(-vec3<i32>(u_input.b & -20967i, u_input.b, max(u_input.b, 2147483647i)), global4.a.x).b.b, select(i32(-1i) * -1i, (u_input.a.x & u_input.b) | u_input.a.x, false) == u_input.b, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.a.x, -1559f))) * global4.c.wz), _wgslsmith_dot_vec3_u32(vec3<u32>(60719u, var_0.a.b, 4294967295u), ~vec3<u32>(var_0.a.b, global4.b, 8349u)) & ((global4.b >> (var_0.a.d % 32u)) | _wgslsmith_dot_vec4_u32(vec4<u32>(global4.d, 0u, 0u, 0u), vec4<u32>(var_0.a.d, 31865u, global4.d, 4294967295u))), var_0.b.b.c, 78766u << (func_2().b % 32u)));
    global0 = array<Struct_4, 20>();
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-122f * var_0.a.c.x))))));
    global1 = array<Struct_4, 12>();
    var var_4 = func_1(~(min(reverseBits(vec3<i32>(-2147483647i, 1i, u_input.a.x)), vec3<i32>(22010i, 2147483647i, u_input.a.x)) & min(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, 37007i, u_input.a.x), vec3<i32>(u_input.b, u_input.b, u_input.b)), vec3<i32>(-583i, u_input.a.x, 2147483647i))), var_0.b.b.a.x).b.b.c.x;
    global3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.a.c.x))), _wgslsmith_f_op_f32(-1096f + _wgslsmith_f_op_f32(-global4.a.x)), -970f, global4.a.x))), ~reverseBits(_wgslsmith_add_u32(func_1(vec3<i32>(u_input.b, -2147483647i, u_input.a.x), 1000f).a.b, ~0u)), -1000f);
}

