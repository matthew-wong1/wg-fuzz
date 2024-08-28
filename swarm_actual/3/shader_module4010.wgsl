struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6>;

var<private> global1: array<bool, 26>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: f32) -> vec3<bool> {
    let var_0 = vec2<u32>(~1u, 1u);
    global1 = array<bool, 26>();
    global0 = array<f32, 6>();
    return !select(vec3<bool>(all(vec2<bool>(global1[_wgslsmith_index_u32(var_0.x, 26u)], global1[_wgslsmith_index_u32(4294967295u, 26u)])), false | (u_input.a.x <= -2147483647i), any(select(vec3<bool>(false, true, true), vec3<bool>(global1[_wgslsmith_index_u32(49193u, 26u)], true, global1[_wgslsmith_index_u32(15617u, 26u)]), global1[_wgslsmith_index_u32(57869u, 26u)]))), select(vec3<bool>(true, false || global1[_wgslsmith_index_u32(18933u, 26u)], all(vec4<bool>(false, false, true, global1[_wgslsmith_index_u32(1u, 26u)]))), !(!vec3<bool>(global1[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(11129u, 26u)], global1[_wgslsmith_index_u32(var_0.x, 26u)])), false), !select(!vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 26u)], true, true), vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 26u)], true, global1[_wgslsmith_index_u32(21202u, 26u)]), select(vec3<bool>(false, global1[_wgslsmith_index_u32(var_0.x, 26u)], false), vec3<bool>(false, global1[_wgslsmith_index_u32(var_0.x, 26u)], global1[_wgslsmith_index_u32(var_0.x, 26u)]), global1[_wgslsmith_index_u32(var_0.x, 26u)])));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: f32) -> Struct_5 {
    let var_0 = Struct_1(any(select(vec2<bool>(false, global1[_wgslsmith_index_u32(arg_2.x, 26u)]), vec2<bool>(!global1[_wgslsmith_index_u32(arg_2.x, 26u)], all(vec3<bool>(false, false, false))), select(vec2<bool>(false, false), vec2<bool>(false, global1[_wgslsmith_index_u32(arg_0.x, 26u)]), vec2<bool>(global1[_wgslsmith_index_u32(arg_2.x, 26u)], true)))), 928f);
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    let var_1 = arg_0.xzz;
    global1 = array<bool, 26>();
    return Struct_5(select(!(!select(vec3<bool>(global1[_wgslsmith_index_u32(arg_2.x, 26u)], var_0.a, true), vec3<bool>(global1[_wgslsmith_index_u32(0u, 26u)], global1[_wgslsmith_index_u32(19837u, 26u)], false), true)), func_3(arg_1.x, arg_3), !vec3<bool>(global1[_wgslsmith_index_u32(var_1.x ^ 4294967295u, 26u)], !var_0.a, false & global1[_wgslsmith_index_u32(arg_0.x, 26u)])));
}

fn func_1() -> vec2<bool> {
    let var_0 = func_2(~(~(~vec4<u32>(1u, 1u, 1u, 1u))), countOneBits(u_input.a.xz), vec3<u32>(max(~(~33795u), _wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u, 0u), _wgslsmith_clamp_u32(37035u, 38627u, 87699u))), ~11916u, 962u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(778f * global0[_wgslsmith_index_u32(0u, 6u)])), 226f)))));
    global0 = array<f32, 6>();
    var var_1 = var_0;
    let var_2 = Struct_4(!var_1.a.x || !any(!vec4<bool>(false, var_0.a.x, false, true)));
    let var_3 = Struct_2(u_input.a.x, Struct_1(var_2.a, 905f), _wgslsmith_f_op_f32(f32(-1f) * -170f), Struct_1(var_1.a.x, 474f));
    return var_0.a.zz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!func_1());
    global0 = array<f32, 6>();
    var var_1 = countOneBits(abs(vec4<u32>(1u, 1u, 1u, 1u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(max(vec2<u32>(1u, var_1.x), vec2<u32>(var_1.x, var_1.x)), vec2<u32>(1u, 13991u) << (var_1.xw % vec2<u32>(32u))) & select(~26549u, 6529u, false), 6u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 6u)], 600f) + 1f)), _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(reverseBits(var_1.x) >> (22160u % 32u), 6u)])), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -299f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-367f, _wgslsmith_f_op_f32(1263f * -220f), _wgslsmith_f_op_f32(f32(-1f) * -491f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(33058u, 6u)])))), !vec4<bool>(true != (false == global1[_wgslsmith_index_u32(var_1.x, 26u)]), true, all(select(vec3<bool>(var_0.x, var_0.x, global1[_wgslsmith_index_u32(var_1.x, 26u)]), vec3<bool>(global1[_wgslsmith_index_u32(0u, 26u)], var_0.x, var_0.x), var_0.x)), false)));
    var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(var_1.x, 6u)], var_2.x, global0[_wgslsmith_index_u32(6502u, 6u)], global0[_wgslsmith_index_u32(1u, 6u)]))))))));
    global0 = array<f32, 6>();
    var var_3 = Struct_1(var_0.x | true, global0[_wgslsmith_index_u32(var_1.x, 6u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1037f - _wgslsmith_div_f32(global0[_wgslsmith_index_u32(max(0u >> (var_1.x % 32u), var_1.x), 6u)], _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(~4294967295u, 6u)], var_2.x)))), firstLeadingBit(select(_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_1.x, 47131u, 4294967295u), vec3<u32>(0u, 41397u, var_1.x), var_1.wyy), _wgslsmith_clamp_vec3_u32(firstTrailingBit(var_1.wzy), var_1.yyw & var_1.zww, ~vec3<u32>(var_1.x, var_1.x, var_1.x)), false)));
}

