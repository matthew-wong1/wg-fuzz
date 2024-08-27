struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12> = array<f32, 12>(1000f, 1212f, 1859f, 1254f, -807f, -1185f, -1000f, 711f, 1000f, -877f, 671f, 291f);

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(false, true, vec2<u32>(8846u, 4294967295u)), Struct_1(false, false, vec2<u32>(4294967295u, 0u)), Struct_1(true, false, vec2<u32>(38594u, 19369u)), Struct_1(false, false, vec2<u32>(59867u, 80431u)), Struct_1(true, true, vec2<u32>(14393u, 4294967295u)), Struct_1(true, true, vec2<u32>(29930u, 0u)), Struct_1(true, true, vec2<u32>(1u, 0u)), Struct_1(true, false, vec2<u32>(36472u, 14957u)), Struct_1(true, false, vec2<u32>(62471u, 67807u)), Struct_1(false, true, vec2<u32>(1u, 1u)), Struct_1(true, false, vec2<u32>(9613u, 1u)), Struct_1(false, false, vec2<u32>(48135u, 1u)), Struct_1(true, true, vec2<u32>(0u, 36500u)), Struct_1(true, true, vec2<u32>(1u, 88181u)), Struct_1(false, false, vec2<u32>(39534u, 4294967295u)), Struct_1(false, true, vec2<u32>(12338u, 32429u)), Struct_1(true, false, vec2<u32>(64873u, 4294967295u)), Struct_1(true, false, vec2<u32>(63934u, 4294967295u)), Struct_1(false, false, vec2<u32>(24321u, 41196u)), Struct_1(true, true, vec2<u32>(1u, 0u)), Struct_1(false, false, vec2<u32>(36211u, 102839u)), Struct_1(true, false, vec2<u32>(0u, 4294967295u)), Struct_1(true, true, vec2<u32>(1u, 101844u)), Struct_1(false, false, vec2<u32>(4294967295u, 1u)), Struct_1(true, false, vec2<u32>(4294967295u, 0u)), Struct_1(false, false, vec2<u32>(1u, 45158u)), Struct_1(false, false, vec2<u32>(21545u, 31895u)), Struct_1(true, true, vec2<u32>(4294967295u, 1u)));

var<private> global2: Struct_2 = Struct_2(21234i, true, vec2<f32>(751f, 923f));

var<private> global3: array<vec3<bool>, 18>;

var<private> global4: Struct_1 = Struct_1(false, false, vec2<u32>(34219u, 1u));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec2<bool> {
    global1 = array<Struct_1, 28>();
    var var_0 = vec2<bool>(false, global2.b);
    let var_1 = u_input.d;
    global2 = Struct_2(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-517f, global0[_wgslsmith_index_u32(4294967295u, 12u)]))) <= _wgslsmith_f_op_f32(round(316f)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c.x, 2029f)))))));
    global2 = Struct_2(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(min(max(vec4<i32>(-17279i, 4057i, -28735i, arg_0), vec4<i32>(27480i, 1i, u_input.a, 0i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-39924i, global2.a, -39674i, u_input.d), vec4<i32>(arg_0, var_1, 0i, u_input.d), vec4<i32>(0i, -14596i, 2147483647i, global2.a))), vec4<i32>(1i, 24390i, var_1, -36432i & var_1), ~(~vec4<i32>(arg_0, var_1, -1i, global2.a))), vec4<i32>(abs(i32(-1i) * -20412i), -48716i, _wgslsmith_dot_vec4_i32(vec4<i32>(-17247i, 0i, arg_0, -13036i), vec4<i32>(arg_0, global2.a, var_1, -35204i)), i32(-1i) * -12694i)), !global2.b, global2.c);
    return !vec2<bool>(false, global4.b);
}

fn func_2() -> i32 {
    global2 = Struct_2(~firstLeadingBit(u_input.d), global4.b, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 12u)], -426f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(828f, global0[_wgslsmith_index_u32(u_input.c.x, 12u)])), func_3(0i & global2.a, Struct_1(false, global2.b, u_input.b.zz)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-245f, 885f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(global2.c)), _wgslsmith_f_op_vec2_f32(sign(global2.c)))), func_3(select(global2.a, global2.a, global4.a), global1[_wgslsmith_index_u32(~u_input.b.x, 28u)]))))));
    global2 = Struct_2(1i, all(select(vec3<bool>(true, any(vec4<bool>(global2.b, global4.a, false, false)), true), vec3<bool>(global2.c.x < 1301f, false, global4.c.x != 67075u), select(global4.c.x < global4.c.x, all(vec3<bool>(global4.a, global2.b, global4.a)), !global2.b))), _wgslsmith_f_op_vec2_f32(-global2.c));
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(36280u, 4294967295u), reverseBits(u_input.b.x), 25399u), 12u)] - global2.c.x), global2.c.x))));
    global0 = array<f32, 12>();
    var var_1 = global2.a;
    return _wgslsmith_sub_i32(countOneBits(reverseBits(0i)), -48933i);
}

fn func_1() -> Struct_2 {
    return Struct_2(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.e, func_2(), 2147483647i << (min(global4.c.x, 0u) % 32u)), -2147483647i), any(vec2<bool>(true, true)), vec2<f32>(global2.c.x, -697f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(!(!(!global2.b) != global4.b), global4.a, true);
    let var_1 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x << (1u % 32u), 12u)]);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1000f - -1688f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2288f, 903f) + _wgslsmith_div_f32(-1203f, -669f)), _wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-612f)), -1000f, any(global3[_wgslsmith_index_u32(1u, 18u)])))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-226f, 816f, -137f, global0[_wgslsmith_index_u32(9715u, 12u)])))))));
    let var_3 = func_1();
    var var_4 = var_0.yz;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, vec4<f32>(_wgslsmith_f_op_f32(sign(117f)), _wgslsmith_div_f32(-794f, var_3.c.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(84932u, 1u, 12793u, u_input.c.x), u_input.c), 12u)] - _wgslsmith_f_op_f32(-global2.c.x)))), global2.c.x), reverseBits(~select(u_input.c, _wgslsmith_clamp_vec4_u32(u_input.c, vec4<u32>(global4.c.x, u_input.b.x, u_input.c.x, global4.c.x), vec4<u32>(3958u, 39818u, u_input.b.x, u_input.b.x)), false)), ~1u);
}

