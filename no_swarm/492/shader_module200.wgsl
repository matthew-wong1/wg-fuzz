struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 13>;

var<private> global2: vec3<f32> = vec3<f32>(287f, -1425f, 608f);

var<private> global3: bool = true;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec4<f32>) -> bool {
    let var_0 = global0.d.wx;
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x));
    return global0.b;
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    global3 = all(vec3<bool>(true, func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, 617f) + vec4<f32>(-441f, global2.x, global2.x, 538f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(999f, global2.x, global2.x, 1932f) - vec4<f32>(645f, -1000f, -842f, -664f)))), true));
    var var_0 = ~min(-(global0.d.x ^ -41533i), global0.e) != _wgslsmith_sub_i32(global0.e, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-1560i, global0.e), _wgslsmith_div_i32(1i, global0.d.x)), vec2<i32>(46321i >> (0u % 32u), _wgslsmith_dot_vec3_i32(global0.d.xzw, global0.d.xxy))));
    let var_1 = vec2<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1509f * -1698f), 216f)))));
    var var_2 = ~(~abs(max(0u, ~4294967295u)));
    global1 = array<Struct_1, 13>();
    return arg_0;
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: vec4<u32>, arg_3: Struct_2) -> i32 {
    var var_0 = select(select(arg_0, select(select(!vec4<bool>(global0.b, arg_3.b.x, false, arg_0.x), !vec4<bool>(true, arg_1.x, arg_3.b.x, false), arg_0.x), vec4<bool>(global2.x < 1000f, arg_3.b.x, false, any(arg_0.ywy)), vec4<bool>(arg_3.a.x < arg_3.a.x, global0.d.x == global0.e, true, false)), any(vec4<bool>(arg_3.b.x, true, func_2(vec4<f32>(649f, global2.x, 2413f, 711f)), false))), vec4<bool>(true, !arg_0.x, !arg_0.x, global0.b), false);
    let var_1 = ~(~arg_3.a.zx) << (_wgslsmith_add_vec2_u32(vec2<u32>(func_1(Struct_2(vec3<u32>(27094u, 4096u, global0.c), vec3<bool>(arg_0.x, var_0.x, arg_1.x))).a.x, 57224u), arg_2.xz) % vec2<u32>(32u));
    let var_2 = global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_div_u32(~1u, ~reverseBits(max(arg_3.a.x, arg_2.x)))), 13u)];
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 6386u, var_1.x, _wgslsmith_div_u32(~_wgslsmith_mod_u32(var_1.x, arg_2.x), (arg_2.x >> (var_2.c % 32u)) & ~42353u)), vec4<u32>(firstTrailingBit(_wgslsmith_add_u32(min(var_1.x, 4294967295u), min(79031u, 6288u))), var_1.x, _wgslsmith_add_u32(_wgslsmith_mod_u32(5591u, 14938u), abs(78775u)), 4294967295u)), 13u)];
    let var_4 = arg_3;
    return 1193i;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = any(vec2<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.d.x, 22518i), vec2<i32>(-18182i, -1i)) == func_3(vec4<bool>(true, false, false, false), vec2<bool>(global0.b, true), ~vec4<u32>(1u, u_input.b.x, u_input.b.x, 11900u), func_1(Struct_2(vec3<u32>(4294967295u, 19814u, global0.c), vec3<bool>(global0.b, global0.b, false)))), all(select(vec3<bool>(false, false, global0.b), vec3<bool>(global0.b, true, false), vec3<bool>(global0.b, global0.b, true))) && (global0.b || global0.b)));
    let var_0 = func_1(func_1(Struct_2(u_input.b, vec3<bool>(all(vec4<bool>(true, true, global0.b, false)), false, false))));
    var var_1 = vec2<bool>(!all(vec4<bool>(false, select(var_0.b.x, var_0.b.x, true), var_0.b.x != false, !global0.b)), true);
    var var_2 = select(func_1(var_0).b.zy, !vec2<bool>(var_0.b.x, var_0.b.x), !(!var_0.b.yx));
    var var_3 = var_0.a.x;
    var var_4 = firstTrailingBit(global0.e);
    global3 = !global0.b | (((u_input.b.x | 9611u) >> (global0.a % 32u)) == 38485u);
    let var_5 = -36371i;
    var_1 = !var_0.b.zz;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x, global0.d);
}

