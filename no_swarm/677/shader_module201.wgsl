struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: i32,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28> = array<u32, 28>(0u, 31385u, 1u, 6696u, 4294967295u, 4294967295u, 59157u, 57519u, 0u, 7195u, 0u, 1u, 15773u, 0u, 0u, 4294967295u, 4294967295u, 4294967295u, 1u, 1u, 20455u, 0u, 0u, 1u, 1u, 27736u, 1778u, 57912u);

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_1, 12>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>) -> Struct_2 {
    var var_0 = !(!vec3<bool>(any(vec4<bool>(global1.x, true, false, true)), true, all(global1.xx)));
    return Struct_2(global1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0)))))), _wgslsmith_sub_i32(-(~_wgslsmith_dot_vec2_i32(u_input.b.zz, vec2<i32>(u_input.b.x, 1i))), _wgslsmith_mod_i32(-u_input.b.x, u_input.b.x) >> (abs(u_input.a) % 32u)), 1i, u_input.b.x);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_1(((true & (arg_0.a && arg_0.a)) & (~u_input.b.x <= 79524i)) | all(!select(arg_1.c, vec4<bool>(global1.x, true, global1.x, arg_1.c.x), arg_1.c)), vec3<i32>(0i, max(1i, arg_0.d), _wgslsmith_mod_i32(~arg_1.b.x, 2147483647i) << (4757u % 32u)), select(!select(select(vec4<bool>(arg_1.c.x, false, global1.x, false), arg_1.c, true), vec4<bool>(true, arg_1.a, arg_1.a, false), select(vec4<bool>(global1.x, global1.x, global1.x, false), vec4<bool>(true, arg_0.a, arg_1.c.x, arg_0.a), false)), vec4<bool>(any(select(arg_1.c.yww, global1.ywz, true)), any(!vec2<bool>(arg_0.a, arg_1.a)), true | all(vec3<bool>(true, false, true)), arg_1.c.x), arg_1.a));
    global1 = select(select(!select(!vec4<bool>(global1.x, false, false, false), var_0.c, vec4<bool>(false, arg_0.a, true, false)), !arg_1.c, arg_1.c), vec4<bool>((1i << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(reverseBits(17773u), 28u)], 28u)], 28u)] % 32u)) <= abs(-1i), arg_0.b == _wgslsmith_f_op_f32(157f - _wgslsmith_f_op_f32(792f - -255f)), any(arg_1.c.wxw), arg_1.a), false);
    let var_1 = Struct_3(vec3<bool>(all(vec4<bool>(var_0.a, !var_0.c.x, u_input.b.x > -2147483647i, arg_0.a | var_0.a)), arg_1.a, var_0.a && true), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1010f - _wgslsmith_f_op_f32(max(126f, -882f))), arg_0.b)), 1277f, arg_0.b, _wgslsmith_f_op_f32(-arg_0.b)), u_input.b.yy, arg_1, global1.zw);
    global0 = array<u32, 28>();
    global1 = var_1.d.c;
    return 4431i;
}

fn func_1(arg_0: bool) -> Struct_2 {
    global2 = array<Struct_1, 12>();
    let var_0 = true;
    let var_1 = 2400f;
    let var_2 = min(u_input.b, _wgslsmith_add_vec3_i32(vec3<i32>(func_3(func_2(1608f, vec4<f32>(var_1, 960f, -1000f, var_1)), Struct_1(arg_0, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec4<bool>(true, true, true, true))), abs(-u_input.b.x), 1i), -u_input.b));
    var var_3 = true;
    return func_2(var_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-445f + var_1), _wgslsmith_f_op_f32(-398f + var_1), _wgslsmith_f_op_f32(-1437f - var_1), 1238f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(194f, 522f, -1122f, -1044f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x | _wgslsmith_mod_i32(_wgslsmith_sub_i32(21500i, countOneBits(1i)), -1i);
    let var_1 = func_1(all(global1.ww));
    var var_2 = abs(min(~vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 28u)], u_input.a, 0u, 28129u), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 28u)], 4294967295u, 9221u, 10773u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 10453u, 29648u, 2969u), vec4<u32>(u_input.a, 5093u, global0[_wgslsmith_index_u32(4294967295u, 28u)], 1u))))) | ~(~(~_wgslsmith_add_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 28u)], u_input.a, u_input.a, global0[_wgslsmith_index_u32(0u, 28u)]), vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 28u)], 0u, 13356u, 0u))));
    global0 = array<u32, 28>();
    var var_3 = 4294967295u >> (var_2.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.zx, ~var_2.wz << (~(~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 28u)], 28u)], 108400u))) % vec2<u32>(32u)), var_2.zzy);
}

