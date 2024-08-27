struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 30>;

var<private> global1: array<f32, 6>;

var<private> global2: vec4<f32> = vec4<f32>(301f, 349f, 954f, -485f);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: bool) -> vec3<bool> {
    let var_0 = global1[_wgslsmith_index_u32(1u, 6u)];
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.d, global1[_wgslsmith_index_u32(7440u, 6u)])) - _wgslsmith_f_op_f32(arg_1.x - global2.x)) + -617f) + global1[_wgslsmith_index_u32(1u, 6u)])));
    var var_2 = !vec4<bool>(true, all(arg_0.c.b), select(!(-2039f != global1[_wgslsmith_index_u32(0u, 6u)]), !arg_2, arg_0.c.a.x), true);
    let var_3 = arg_0.c;
    var var_4 = arg_0;
    return !arg_0.b.b;
}

fn func_2() -> bool {
    var var_0 = Struct_1(!vec2<bool>(!any(vec2<bool>(false, true)), -1000f > _wgslsmith_f_op_f32(-global2.x)), select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), all(vec2<bool>(false, true)))), vec3<bool>(true, true, true), !func_3(Struct_2(Struct_1(vec2<bool>(true, true), vec3<bool>(false, false, true), vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false), vec3<bool>(false, false, false), vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false), vec3<bool>(false, true, false), vec2<bool>(false, false)), 407f), global2.xwz, true)), !vec2<bool>(true, !all(vec4<bool>(false, true, false, false))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -505f);
    let var_2 = Struct_3(~62778u, Struct_1(vec2<bool>(select(true, true, func_3(Struct_2(Struct_1(vec2<bool>(var_0.b.x, false), vec3<bool>(var_0.a.x, false, true), vec2<bool>(true, var_0.a.x)), Struct_1(var_0.b.yx, var_0.b, vec2<bool>(false, var_0.a.x)), Struct_1(var_0.b.zz, vec3<bool>(var_0.a.x, var_0.c.x, true), var_0.a), 1215f), global2.wxz, var_0.b.x).x), true), select(!vec3<bool>(var_0.a.x, false, true), select(select(vec3<bool>(var_0.c.x, var_0.b.x, var_0.c.x), var_0.b, vec3<bool>(var_0.c.x, false, false)), !vec3<bool>(var_0.c.x, true, var_0.b.x), false), var_0.a.x), var_0.a), Struct_2(Struct_1(vec2<bool>(var_0.a.x, func_3(Struct_2(Struct_1(var_0.c, var_0.b, var_0.a), Struct_1(var_0.b.zx, vec3<bool>(false, true, false), var_0.a), Struct_1(var_0.a, vec3<bool>(var_0.a.x, true, var_0.c.x), var_0.c), var_1), global2.zxw, var_0.b.x).x), var_0.b, vec2<bool>(var_0.a.x, !var_0.c.x)), Struct_1(!var_0.c, !var_0.b, var_0.c), Struct_1(select(select(vec2<bool>(true, true), var_0.c, var_0.c.x), var_0.a, true), select(select(vec3<bool>(false, true, var_0.b.x), var_0.b, var_0.c.x), vec3<bool>(true, true, true), vec3<bool>(var_0.b.x, true, false)), !func_3(Struct_2(Struct_1(var_0.a, var_0.b, vec2<bool>(false, true)), Struct_1(var_0.c, var_0.b, vec2<bool>(true, var_0.b.x)), Struct_1(vec2<bool>(false, true), vec3<bool>(var_0.a.x, var_0.c.x, false), vec2<bool>(var_0.a.x, var_0.b.x)), global1[_wgslsmith_index_u32(112908u, 6u)]), global2.xwy, false).zz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-313f, var_1, var_0.a.x)))), min(~(~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 1u))), vec2<u32>(1u, 1u)), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(1u, 1u)), vec2<u32>(16688u, _wgslsmith_dot_vec3_u32(vec3<u32>(48134u, 1u, 110808u), vec3<u32>(554u, 0u, 1u))) | _wgslsmith_add_vec2_u32(vec2<u32>(1u, 33601u), vec2<u32>(1u, 1u))));
    var_0 = var_2.b;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(539f * global2.x)) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * global1[_wgslsmith_index_u32(max(var_2.a, 4294967295u), 6u)]) - -810f)));
    return true;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = Struct_2(Struct_1(arg_2.a, !arg_3.b, select(!vec2<bool>(arg_2.a.x, false), arg_2.c, !arg_3.b.yy)), Struct_1(vec2<bool>(true, true || any(arg_0)), !(!arg_0.wyz), select(select(select(vec2<bool>(arg_3.b.x, true), arg_0.zz, arg_0.yy), !vec2<bool>(arg_2.a.x, true), arg_0.x), vec2<bool>(true, arg_1.x >= 2090i), true)), arg_2, _wgslsmith_f_op_f32(f32(-1f) * -869f));
    global0 = array<vec4<i32>, 30>();
    global0 = array<vec4<i32>, 30>();
    var var_1 = -2147483647i;
    var_1 = u_input.b.x;
    return vec2<bool>(var_0.a.c.x, !(select(false, var_0.b.a.x | false, false) | arg_2.c.x));
}

fn func_1() -> vec2<bool> {
    global1 = array<f32, 6>();
    var var_0 = Struct_1(func_4(vec4<bool>(func_2(), true, true, u_input.b.x >= 0i), countOneBits(u_input.b), Struct_1(vec2<bool>(true, true), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), func_3(Struct_2(Struct_1(vec2<bool>(true, true), vec3<bool>(true, true, false), vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true), vec3<bool>(false, true, false), vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true), vec3<bool>(true, true, false), vec2<bool>(true, true)), global2.x), global2.zzy, false).xy, false)), Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(func_3(Struct_2(Struct_1(vec2<bool>(true, false), vec3<bool>(true, true, true), vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false), vec3<bool>(false, true, false), vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false), vec3<bool>(false, false, false), vec2<bool>(false, true)), 584f), global2.wxw, false), vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false))), vec2<bool>(select(true, true, false), true))), vec3<bool>(true, true, true), select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), select(false, false, false)), select(!func_4(vec4<bool>(true, false, true, false), vec3<i32>(44293i, u_input.c, u_input.a), Struct_1(vec2<bool>(true, false), vec3<bool>(false, true, true), vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true), vec3<bool>(false, true, true), vec2<bool>(true, false))), vec2<bool>(-1692f <= global2.x, any(vec4<bool>(false, true, true, false))), func_2())));
    var var_1 = vec4<u32>(33651u, ~(~_wgslsmith_clamp_u32(_wgslsmith_div_u32(80680u, 23244u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 37474u, 1u), vec3<u32>(0u, 39263u, 0u)), 42814u)), ~1u, _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(53931u, 81864u, 11172u)), reverseBits(~vec3<u32>(1u, 6013u, 33665u)) & min(select(vec3<u32>(1u, 4294967295u, 63597u), vec3<u32>(15106u, 1u, 17620u), var_0.b), vec3<u32>(56170u, 73813u, 1u))));
    global1 = array<f32, 6>();
    var var_2 = vec2<bool>(true, true);
    return var_0.b.xz;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 6>();
    let var_0 = _wgslsmith_f_op_f32(abs(-346f));
    global1 = array<f32, 6>();
    global0 = array<vec4<i32>, 30>();
    let var_1 = Struct_1(func_1(), vec3<bool>(false, (u_input.c >> (1u % 32u)) != ~(-6474i), true), vec2<bool>(true && (_wgslsmith_f_op_f32(exp2(var_0)) < global2.x), !any(vec4<bool>(true, true, false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(-797f)), u_input.c, vec3<u32>(_wgslsmith_div_u32(4294967295u & _wgslsmith_clamp_u32(1u, 18895u, 1u), ~74815u), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(23187u, 4294967295u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 4090u), vec2<u32>(77737u, 31553u), vec2<u32>(63870u, 11317u)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))), 4294967295u), 44663i);
}

