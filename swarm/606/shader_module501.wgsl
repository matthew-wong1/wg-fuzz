struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19> = array<bool, 19>(false, false, false, true, false, false, true, true, false, true, false, false, true, true, false, false, true, true, true);

var<private> global1: vec3<u32>;

var<private> global2: array<bool, 16> = array<bool, 16>(true, false, true, true, true, false, false, true, false, true, false, false, true, true, false, false);

var<private> global3: vec4<i32> = vec4<i32>(-12265i, 0i, 1i, -2712i);

var<private> global4: vec3<f32> = vec3<f32>(844f, -321f, -1100f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = !select(vec4<bool>(any(!vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 16u)], true)), true, !(!global0[_wgslsmith_index_u32(u_input.b.x, 19u)]), false), select(vec4<bool>(global0[_wgslsmith_index_u32(global1.x, 19u)], global0[_wgslsmith_index_u32(global1.x, 19u)], any(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 16u)], global2[_wgslsmith_index_u32(19595u, 16u)], true)), true), !select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 19u)], true, global0[_wgslsmith_index_u32(global1.x, 19u)], global2[_wgslsmith_index_u32(global1.x, 16u)]), vec4<bool>(global0[_wgslsmith_index_u32(2575u, 19u)], false, global0[_wgslsmith_index_u32(global1.x, 19u)], true), vec4<bool>(false, global2[_wgslsmith_index_u32(31293u, 16u)], global2[_wgslsmith_index_u32(82791u, 16u)], global0[_wgslsmith_index_u32(global1.x, 19u)])), vec4<bool>(global2[_wgslsmith_index_u32(global1.x, 16u)] || true, true, false, u_input.b.x <= 22641u)), !global2[_wgslsmith_index_u32(0u, 16u)]);
    global0 = array<bool, 19>();
    return false;
}

fn func_2(arg_0: vec4<u32>, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(885f - 1068f)))));
    global4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-256f, global4.x, var_0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-220f, global4.x, -502f), vec3<f32>(global4.x, global4.x, var_0.b)))))), !all(!vec2<bool>(global2[_wgslsmith_index_u32(1u, 16u)], global2[_wgslsmith_index_u32(global1.x, 16u)])))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-global4.x), !global0[_wgslsmith_index_u32(22679u, 19u)])), _wgslsmith_f_op_f32(-1755f - _wgslsmith_f_op_f32(-1046f - var_0.a)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.x, -1929f)), -1389f), any(vec2<bool>(abs(4294967295u) < ~u_input.b.x, func_3(Struct_1(var_0.a, -547f, 1039f), Struct_1(-1011f, global4.x, 663f))))));
    global0 = array<bool, 19>();
    global3 = abs(vec4<i32>(-arg_1, min(34120i, -firstLeadingBit(global3.x)), _wgslsmith_sub_i32(abs(-26657i), _wgslsmith_mult_i32(i32(-1i) * -2108i, -65011i)), countOneBits(global3.x)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(step(139f, _wgslsmith_f_op_f32(-var_0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x + var_0.a)), _wgslsmith_f_op_f32(global4.x - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global4.x - _wgslsmith_f_op_f32(abs(-937f))), _wgslsmith_f_op_f32(floor(global4.x)), any(select(vec2<bool>(true, true), vec2<bool>(global2[_wgslsmith_index_u32(arg_0.x, 16u)], false), vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 19u)])))))));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) - 811f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-280f)))), var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(376f - global4.x), _wgslsmith_f_op_f32(exp2(global4.x))))));
}

fn func_1(arg_0: vec3<i32>) -> StorageBuffer {
    var var_0 = func_2(u_input.b, arg_0.x);
    global2 = array<bool, 16>();
    return StorageBuffer(_wgslsmith_dot_vec2_u32(global1.zx, u_input.b.xw), firstLeadingBit(1u), abs(vec4<u32>(min(_wgslsmith_add_u32(0u, 0u), _wgslsmith_add_u32(69055u, 17826u)), firstLeadingBit(~u_input.b.x), u_input.b.x, ~_wgslsmith_dot_vec4_u32(u_input.b, u_input.b))), (arg_0.x << (((3266u >> (u_input.b.x % 32u)) | global1.x) % 32u)) << (u_input.b.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = abs(u_input.a >> ((reverseBits(vec4<u32>(89658u, global1.x, u_input.b.x, global1.x)) ^ (vec4<u32>(4288u, 61291u, 40992u, u_input.b.x) & vec4<u32>(u_input.b.x, 15875u, 0u, global1.x))) % vec4<u32>(32u)));
    var var_0 = u_input.b;
    let x = u_input.a;
    s_output = func_1(vec3<i32>(global3.x, u_input.a.x, 29798i));
}

