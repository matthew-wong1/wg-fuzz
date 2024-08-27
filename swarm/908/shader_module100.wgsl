struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: bool,
    d: vec3<bool>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: array<f32, 24>;

var<private> global2: bool;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> bool {
    global0 = array<Struct_1, 29>();
    global1 = array<f32, 24>();
    global1 = array<f32, 24>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1061f, arg_1.a.x, 684f) + arg_1.a)), vec3<f32>(-1191f, _wgslsmith_f_op_f32(-1290f + arg_1.a.x), global1[_wgslsmith_index_u32(arg_1.b & arg_1.b, 24u)]))), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(arg_1.b, u_input.b), _wgslsmith_mult_u32(10271u, arg_1.b)), ~_wgslsmith_add_vec2_u32(vec2<u32>(26025u, 1u), vec2<u32>(38616u, 1760u))) | abs(u_input.b), all(!arg_1.d) || false, arg_1.d, false);
    let var_1 = _wgslsmith_mult_vec2_i32(~u_input.a.xy, vec2<i32>(arg_0, firstTrailingBit(countOneBits(u_input.d))) ^ vec2<i32>(abs(reverseBits(3412i)), 1i));
    return true;
}

fn func_2(arg_0: f32) -> i32 {
    let var_0 = select(vec4<bool>(true || !func_3(-2147483647i, global0[_wgslsmith_index_u32(u_input.b, 29u)]), all(select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, false), vec2<bool>(true, true))), false, true), !select(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), false), true)), !(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), true))));
    let var_1 = global0[_wgslsmith_index_u32(u_input.b, 29u)];
    let var_2 = _wgslsmith_f_op_vec3_f32(-var_1.a);
    var var_3 = i32(-1i) * -u_input.a.x;
    let var_4 = ~min(u_input.a.x, 1i | u_input.c);
    return ~u_input.c;
}

fn func_1() -> vec4<bool> {
    var var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(~(~vec3<u32>(4294967295u, u_input.b, u_input.b)), _wgslsmith_div_vec3_u32(~abs(vec3<u32>(u_input.b, u_input.b, u_input.b)), vec3<u32>(abs(u_input.b), u_input.b, _wgslsmith_mod_u32(u_input.b, u_input.b)))), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b, u_input.b, 4294967295u), ~vec3<u32>(364u, 1u, 4294967295u)));
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 24u)] * 516f) - -1511f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.x, 24u)]), -473f) + -1116f), global1[_wgslsmith_index_u32(var_0.x << (abs(_wgslsmith_mult_u32(37725u, 16358u)) % 32u), 24u)]), 0u, !select(!any(vec3<bool>(true, true, false)), any(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, false)) != true), select(vec3<bool>(!(1i < u_input.d), any(vec3<bool>(true, true, true)), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), ~u_input.b > (0u ^ reverseBits(_wgslsmith_sub_u32(var_0.x, u_input.b))));
    global2 = true;
    let var_2 = !vec3<bool>(!var_1.d.x, func_2(_wgslsmith_f_op_f32(-var_1.a.x)) >= (i32(-1i) * -1i), var_1.d.x);
    var var_3 = Struct_1(var_1.a, reverseBits(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(0u, var_0.x, 87587u, 4294967295u), vec4<u32>(0u, u_input.b, 45070u, 1u), false), vec4<u32>(~25430u, firstTrailingBit(107140u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, 1u), vec3<u32>(20193u, 39080u, 0u)), _wgslsmith_sub_u32(u_input.b, var_0.x)))), all(!select(select(vec4<bool>(false, var_2.x, var_2.x, var_1.d.x), vec4<bool>(false, true, var_1.c, false), vec4<bool>(var_2.x, var_1.e, var_2.x, var_1.d.x)), !vec4<bool>(var_2.x, var_1.d.x, false, false), !vec4<bool>(true, false, true, var_2.x))), vec3<bool>(true, true, !var_1.d.x), any(select(vec2<bool>(select(var_1.d.x, var_2.x, false), true), var_2.zz, !(!var_2.zx))));
    return !(!select(!(!vec4<bool>(var_2.x, false, var_1.c, false)), !vec4<bool>(var_2.x, var_3.d.x, true, var_1.c), true));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = true | !all(!func_1());
    global2 = !(!(((u_input.b < 16983u) && true) | all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)))));
    let var_0 = vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 24u)], _wgslsmith_f_op_f32(f32(-1f) * -338f), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(52481u, 24u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 24u)]))))));
    let var_1 = u_input.b;
    let var_2 = vec4<bool>(select(true, u_input.d < u_input.d, any(vec2<bool>(false, true)) && true), any(select(vec3<bool>(var_1 > 38452u, true, true), vec3<bool>(true, true, true), vec3<bool>(false, func_1().x, true))), false, func_3(~u_input.a.x, global0[_wgslsmith_index_u32(24488u, 29u)]) | true);
    let var_3 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-272f)), _wgslsmith_f_op_f32(1000f + 1630f), _wgslsmith_f_op_f32(select(-1617f, global1[_wgslsmith_index_u32(u_input.b, 24u)], true))), var_0)), u_input.b, true, vec3<bool>(true, select(any(func_1()), false, var_2.x), var_2.x), true);
    global0 = array<Struct_1, 29>();
    var var_4 = global0[_wgslsmith_index_u32(7916u, 29u)];
    var var_5 = all(vec4<bool>(false, true, all(var_2), any(vec3<bool>(var_2.x, 0i != u_input.a.x, func_3(u_input.d, Struct_1(var_3.a, var_1, false, var_2.xwx, var_2.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xy, ~vec3<u32>(var_1, _wgslsmith_sub_u32(4294967295u, max(var_1, u_input.b)), var_3.b), ~(~vec4<u32>(4294967295u, 4294967295u, var_3.b, u_input.b) | ~(~vec4<u32>(0u, var_3.b, var_1, 0u))));
}

