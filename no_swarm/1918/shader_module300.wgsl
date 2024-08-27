struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 29>;

var<private> global1: array<bool, 14>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> u32 {
    return 1u;
}

fn func_1() -> Struct_1 {
    global0 = array<vec4<i32>, 29>();
    return Struct_1(vec4<u32>(~u_input.c, ~u_input.c, ~firstTrailingBit(51621u), func_2(Struct_1(~vec4<u32>(u_input.c, 33394u, u_input.c, 0u), ~(-25081i), max(u_input.a.x, u_input.b.x)), any(vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 14u)])), Struct_1(vec4<u32>(u_input.c, 17397u, u_input.c, 2177u) & vec4<u32>(61121u, 7019u, 37594u, 51126u), u_input.a.x | -21226i, _wgslsmith_sub_i32(u_input.b.x, u_input.b.x)))), -1i, 28824i);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec3<u32>) -> bool {
    global0 = array<vec4<i32>, 29>();
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -361f);
    let var_1 = reverseBits(max(36908u, _wgslsmith_div_u32(0u, ~0u)));
    let var_2 = Struct_1(arg_0.a, -18008i, -2147483647i);
    global1 = array<bool, 14>();
    return all(select(!select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(global1[_wgslsmith_index_u32(1u, 14u)], false), vec2<bool>(true, true)), !select(!vec2<bool>(global1[_wgslsmith_index_u32(63751u, 14u)], false), !vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 14u)]), true), !(func_1().c != _wgslsmith_add_i32(u_input.a.x, var_2.b))));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    global0 = array<vec4<i32>, 29>();
    global0 = array<vec4<i32>, 29>();
    var var_0 = ~vec4<i32>(-1i, u_input.a.x, ~_wgslsmith_sub_i32(~2641i, -9913i), u_input.a.x);
    let var_1 = arg_0;
    let var_2 = firstLeadingBit(u_input.a.zy);
    return Struct_1(~_wgslsmith_mod_vec4_u32(countOneBits(arg_0.a) & abs(vec4<u32>(u_input.c, u_input.c, 0u, 1u)), vec4<u32>(0u, firstLeadingBit(arg_0.a.x), 55899u, _wgslsmith_mod_u32(1u, 7498u))), -2147483647i & var_2.x, var_0.x | u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), func_3(Struct_1(min(vec4<u32>(u_input.c, 89421u, u_input.c, 4294967295u) << (vec4<u32>(u_input.c, u_input.c, u_input.c, 33636u) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(30581u, 1u, u_input.c, u_input.c))), _wgslsmith_mod_i32(0i, -u_input.b.x), -_wgslsmith_mult_i32(30493i, 28582i)), _wgslsmith_mult_u32(u_input.c, ~u_input.c), func_1().a.wyz));
    let var_1 = func_4(var_0, global1[_wgslsmith_index_u32(u_input.c, 14u)]);
    var var_2 = func_1();
    let var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 59783u, 75692u), vec4<u32>(38307u, 34267u, var_2.a.x, 4294967295u)), 85135u, 17116u), _wgslsmith_sub_vec4_u32(var_0.a | var_2.a, vec4<u32>(var_0.a.x, var_0.a.x, 4294967295u, var_0.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -850f));
}

