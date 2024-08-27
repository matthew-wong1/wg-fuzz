struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: vec3<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 25>;

var<private> global1: array<Struct_3, 30>;

var<private> global2: Struct_5 = Struct_5(2147483647i, vec3<bool>(true, true, true), Struct_2(true));

var<private> global3: array<Struct_4, 15> = array<Struct_4, 15>(Struct_4(Struct_1(vec3<f32>(1521f, -896f, -749f))), Struct_4(Struct_1(vec3<f32>(1422f, 2048f, -437f))), Struct_4(Struct_1(vec3<f32>(1186f, -527f, -1079f))), Struct_4(Struct_1(vec3<f32>(-326f, -277f, -1000f))), Struct_4(Struct_1(vec3<f32>(256f, -1004f, -595f))), Struct_4(Struct_1(vec3<f32>(-136f, -624f, -902f))), Struct_4(Struct_1(vec3<f32>(-1590f, 1478f, 997f))), Struct_4(Struct_1(vec3<f32>(-589f, -474f, 1081f))), Struct_4(Struct_1(vec3<f32>(1846f, 1000f, -800f))), Struct_4(Struct_1(vec3<f32>(-952f, -825f, 558f))), Struct_4(Struct_1(vec3<f32>(-1938f, -320f, -981f))), Struct_4(Struct_1(vec3<f32>(2069f, 388f, -619f))), Struct_4(Struct_1(vec3<f32>(-435f, -1284f, 539f))), Struct_4(Struct_1(vec3<f32>(416f, 503f, 1185f))), Struct_4(Struct_1(vec3<f32>(-2015f, 1446f, -952f))));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32, arg_1: Struct_4) -> u32 {
    global3 = array<Struct_4, 15>();
    global0 = array<vec3<bool>, 25>();
    var var_0 = Struct_3(1u);
    let var_1 = global3[_wgslsmith_index_u32(18003u, 15u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.a.x, -933f, 707f, var_1.a.a.x) + vec4<f32>(-1000f, 1233f, -2418f, arg_1.a.a.x)), vec4<f32>(arg_0, var_1.a.a.x, -1111f, -795f)))) - vec4<f32>(_wgslsmith_f_op_f32(arg_1.a.a.x + 486f), 106f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.a.x)), 1000f));
    return _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, ~(13965u | var_0.a)), ~max(~vec2<u32>(var_0.a, var_0.a), ~u_input.a), vec2<u32>(var_0.a, 1u)), vec2<u32>(firstLeadingBit(~u_input.a.x), ~(~40353u)));
}

fn func_2(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    var var_0 = 4294967295u;
    global0 = array<vec3<bool>, 25>();
    var_0 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 1u), 15u)]);
    var_0 = ~4294967295u;
    let var_1 = Struct_5(_wgslsmith_add_i32(0i, global2.a), vec3<bool>(false, ~(~u_input.a.x) == u_input.a.x, true), global2.c);
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(539f, -620f, 309f)))))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(946f, -759f, 897f))))));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<u32>) -> f32 {
    var var_0 = reverseBits(vec3<u32>(44952u, abs(arg_1.x), ~59506u));
    var var_1 = Struct_2(global2.c.a);
    global0 = array<vec3<bool>, 25>();
    let var_2 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(min(~43829u, ~u_input.a.x), firstLeadingBit(u_input.a.x), arg_1.x, func_3(arg_0.a.a.x, global3[_wgslsmith_index_u32(21626u, 15u)])), abs(_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(u_input.a.x, 26066u, arg_1.x, var_0.x)), vec4<u32>(arg_1.x, 0u, arg_1.x, u_input.a.x))), vec4<u32>((var_0.x & u_input.a.x) << ((arg_1.x & 16198u) % 32u), abs(arg_1.x), _wgslsmith_dot_vec2_u32(var_0.yx, arg_1), ~118319u));
    global3 = array<Struct_4, 15>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-607f - _wgslsmith_f_op_f32(-arg_0.a.a.x)) + arg_0.a.a.x) - -1000f));
}

fn func_1(arg_0: Struct_5, arg_1: bool, arg_2: vec3<u32>) -> f32 {
    let var_0 = !vec4<bool>(!(!(arg_0.c.a && true)), arg_1, arg_0.b.x, false);
    let var_1 = abs(vec3<i32>(~arg_0.a, 1i & (-2147483647i & global2.a), ~global2.a | -arg_0.a) | vec3<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(-2147483647i, global2.a, 0i), vec3<i32>(-20064i, arg_0.a, 13641i), arg_0.b), vec3<i32>(global2.a, -2147483647i, global2.a)), _wgslsmith_sub_i32(-7076i, arg_0.a), min(-arg_0.a, firstTrailingBit(arg_0.a))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_4(func_2(true, global2.b, Struct_2(global2.c.a), Struct_2(global2.b.x))), ~_wgslsmith_sub_vec2_u32(u_input.a, u_input.a))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -821f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1268f - -938f) + 311f))), -492f);
    global3 = array<Struct_4, 15>();
    let var_3 = arg_0;
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_4, 15>();
    global0 = array<vec3<bool>, 25>();
    global1 = array<Struct_3, 30>();
    var var_0 = vec3<f32>(-219f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_5(0i, global2.b, Struct_2(global2.c.a)), false == global2.b.x, vec3<u32>(96873u, u_input.a.x, u_input.a.x))))));
    let var_1 = !all(select(global0[_wgslsmith_index_u32(62822u, 25u)], !global2.b, !global2.c.a)) || global2.b.x;
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(var_0.x - 359f), _wgslsmith_f_op_f32(649f * _wgslsmith_f_op_f32(max(func_2(true, select(vec3<bool>(global2.b.x, var_1, global2.c.a), vec3<bool>(global2.b.x, false, true), global2.c.a), Struct_2(global2.c.a), Struct_2(var_1)).a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -636f)))))), var_0.x);
    global3 = array<Struct_4, 15>();
    var var_2 = Struct_5(~5564i, !select(vec3<bool>(u_input.a.x < u_input.a.x, global2.b.x, var_1), vec3<bool>(true, true, true), all(!vec2<bool>(false, var_1))), global2.c);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec4<u32>(~u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.xy), vec2<f32>(var_0.x, -418f), false))))), -16083i, var_2.a, u_input.a.x);
}

