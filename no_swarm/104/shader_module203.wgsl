struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21> = array<i32, 21>(0i, 16512i, 85063i, -1i, 2147483647i, 0i, 14683i, 2147483647i, -5474i, 0i, 1i, 1i, 30930i, 0i, 23001i, -14275i, 2147483647i, 11078i, -7709i, i32(-2147483648), 11i);

var<private> global1: array<Struct_3, 30>;

var<private> global2: u32;

var<private> global3: array<Struct_3, 29>;

var<private> global4: array<u32, 8>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: i32, arg_3: f32) -> vec2<f32> {
    var var_0 = Struct_3(u_input.c);
    let var_1 = !vec3<bool>(true, !arg_1.a, true);
    var_0 = Struct_3(vec4<u32>(abs(_wgslsmith_add_u32(0u, max(u_input.d, global4[_wgslsmith_index_u32(17433u, 8u)]))), ~(~59306u), global4[_wgslsmith_index_u32(countOneBits(26006u), 8u)], countOneBits(abs(u_input.a >> (u_input.a % 32u)))));
    let var_2 = global0[_wgslsmith_index_u32(var_0.a.x, 21u)];
    global4 = array<u32, 8>();
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-234f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1191f * arg_3) * _wgslsmith_f_op_f32(925f + arg_3))))));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: vec4<u32>) -> u32 {
    global2 = _wgslsmith_add_u32(~u_input.c.x, arg_0.a.x) & ((u_input.a ^ _wgslsmith_clamp_u32(countOneBits(4294967295u), ~4294967295u, 1u)) & global4[_wgslsmith_index_u32(arg_3.x, 8u)]);
    var var_0 = Struct_3(arg_0.a);
    global3 = array<Struct_3, 29>();
    var var_1 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -124f), 1018f)), !select(arg_1, select(select(vec2<bool>(false, arg_2.b.x), vec2<bool>(true, arg_1.x), vec2<bool>(arg_1.x, arg_2.b.x)), vec2<bool>(true, arg_1.x), true), vec2<bool>(true, arg_1.x)), Struct_1(arg_2.a.a), u_input.c.x, 16585i);
    var var_2 = any(!(!(!(!vec4<bool>(var_1.b.x, arg_1.x, true, var_1.b.x)))));
    return global4[_wgslsmith_index_u32(countOneBits(u_input.d), 8u)];
}

fn func_2() -> Struct_3 {
    global2 = ~_wgslsmith_add_u32(countOneBits(~(u_input.a ^ u_input.d)), ~1u);
    global3 = array<Struct_3, 29>();
    let var_0 = _wgslsmith_div_u32(~1u, global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(abs(global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(4294967295u, 8u)], 8u)]), _wgslsmith_div_u32(18734u, 1u << (global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(38606u, 8u)], 8u)] % 32u))), ~0u), 8u)]);
    global1 = array<Struct_3, 30>();
    global4 = array<u32, 8>();
    return global1[_wgslsmith_index_u32(~func_4(global3[_wgslsmith_index_u32(var_0, 29u)], select(vec2<bool>(any(vec3<bool>(false, true, false)), true), !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, false)), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(func_3(global4[_wgslsmith_index_u32(4294967295u, 8u)], Struct_4(true), u_input.b.x, -558f))), vec2<bool>(true, true), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(146f, -139f))), 79025u, -(~(-2147483647i))), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(44072u, var_0, 4294967295u, global4[_wgslsmith_index_u32(5790u, 8u)])), ~(~vec4<u32>(53478u, 1u, 4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(47295u, 8u)], 8u)])), ~vec4<u32>(0u, 4294967295u, var_0, global4[_wgslsmith_index_u32(4294967295u, 8u)]))), 30u)];
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> i32 {
    var var_0 = ~arg_1;
    let var_1 = func_2();
    global4 = array<u32, 8>();
    var var_2 = !select(vec3<bool>(any(vec2<bool>(true, true)), any(vec4<bool>(true, true, true, true)), !any(vec3<bool>(true, true, false))), vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true), all(vec2<bool>(true, true))));
    let var_3 = !vec3<bool>(true & all(select(vec3<bool>(var_2.x, true, true), vec3<bool>(var_2.x, true, var_2.x), vec3<bool>(var_2.x, var_2.x, true))), var_2.x, any(!select(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(true, true, var_2.x, true), true)));
    return -(~select(_wgslsmith_clamp_i32(min(-9768i, 11904i), 2147483647i, firstLeadingBit(2147483647i)), abs(_wgslsmith_dot_vec2_i32(u_input.b.yw, u_input.b.yw)), all(!vec4<bool>(false, true, false, var_3.x))));
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: f32, arg_3: vec4<f32>) -> i32 {
    let var_0 = u_input.b.zzy;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(1497f * _wgslsmith_div_f32(arg_0, -135f)), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1374f)), arg_2)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(978f)) * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0, arg_3.x), arg_0, all(vec3<bool>(true, true, false)) && all(vec4<bool>(false, false, false, true))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x));
    let var_3 = var_1.x;
    global1 = array<Struct_3, 30>();
    return ~((2147483647i >> ((~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.d, 8u)], 8u)] & ~162099u) % 32u)) >> (select(_wgslsmith_sub_u32(func_2().a.x, u_input.c.x), 69410u, true) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.wz;
    let var_1 = vec2<bool>(true, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, reverseBits(2147483647i), _wgslsmith_mod_i32(var_0.x, -10450i)), countOneBits(-u_input.b.wyw)) != ~global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(select(_wgslsmith_mult_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.d, 8u)], 8u)], 8u)], u_input.a), 0u, false), 8u)], 21u)]);
    var var_2 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(858f)))), _wgslsmith_clamp_i32(2147483647i, _wgslsmith_div_i32(0i, -func_1(0u, u_input.b.x, Struct_1(vec2<f32>(529f, 449f)), 767f)), -2147483647i), 262f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-316f, -455f, -900f, -672f) + vec4<f32>(-798f, 262f, 199f, -523f)), vec4<f32>(-154f, 1000f, -668f, -1004f))))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1848f * -802f), _wgslsmith_f_op_f32(-1360f * 1000f)), _wgslsmith_f_op_f32(round(2683f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(286f - -752f) * -458f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(790f * 594f), _wgslsmith_f_op_f32(-440f - -1000f)))));
    var_2 = 62578i;
    global1 = array<Struct_3, 30>();
    global3 = array<Struct_3, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(func_2().a);
}

