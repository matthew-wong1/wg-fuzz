struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<Struct_1, 24>;

var<private> global2: i32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> bool {
    let var_0 = vec4<bool>(any(vec4<bool>(true, true, true, true)), true, select(!(true | any(vec3<bool>(false, true, true))), true, all(vec4<bool>(true, true, true, true)) && true), select(all(vec2<bool>(true, true)), true, true));
    global0 = 25125u;
    global2 = ~_wgslsmith_div_i32((-u_input.a.x ^ u_input.d) & ((u_input.a.x & u_input.a.x) ^ (u_input.d ^ -19994i)), -abs(u_input.a.x));
    let var_1 = global1[_wgslsmith_index_u32(~1u, 24u)];
    var var_2 = var_0;
    return var_2.x;
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = !vec4<bool>(func_3(), false, true, false);
    let var_1 = u_input.a;
    global1 = array<Struct_1, 24>();
    global0 = select(44227u, ~1u, var_0.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.c, _wgslsmith_f_op_f32(abs(-965f)), 839f, _wgslsmith_f_op_f32(trunc(arg_0.c))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.c, arg_0.c, arg_0.c, 823f))) + vec4<f32>(161f, arg_0.c, arg_0.c, 339f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, 1256f, 1000f, 1513f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-945f, arg_0.c, arg_0.c, arg_0.c) * vec4<f32>(arg_0.c, -119f, arg_0.c, -876f))))));
    return global1[_wgslsmith_index_u32((arg_0.d.x ^ (_wgslsmith_dot_vec2_u32(select(u_input.b.yz, vec2<u32>(u_input.c, 92423u), var_0.yy), arg_0.d) & _wgslsmith_add_u32(0u, 17235u))) >> (u_input.c % 32u), 24u)];
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_2;
    global1 = array<Struct_1, 24>();
    global0 = _wgslsmith_mod_u32(_wgslsmith_div_u32(~(~47476u) & abs(var_0.d.x ^ 74823u), 841u), arg_2.d.x);
    let var_1 = Struct_3(arg_3, arg_0);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(793f)))) * _wgslsmith_f_op_f32(func_2(arg_2).b + 567f));
    return func_2(Struct_2(-select(countOneBits(vec2<i32>(arg_2.a.x, arg_2.b)), -vec2<i32>(var_0.a.x, 1i), func_2(Struct_2(vec2<i32>(784i, -1i), 4349i, arg_2.c, vec2<u32>(var_0.d.x, 1802u))).a), max((0i & arg_2.b) & var_0.a.x, _wgslsmith_div_i32(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, arg_2.b, -26006i, var_0.b), vec4<i32>(-17431i, arg_2.a.x, var_0.b, 40685i)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2 - var_2), -1659f), vec2<u32>(abs(~55820u), u_input.c)));
}

fn func_1() -> StorageBuffer {
    var var_0 = global1[_wgslsmith_index_u32(~((_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c, u_input.c, u_input.c), vec4<u32>(0u, 47656u, 4875u, u_input.b.x)) | 61295u) >> (~reverseBits(73852u) % 32u)), 24u)];
    var var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(756u, _wgslsmith_add_u32(u_input.b.x, _wgslsmith_sub_u32(reverseBits(9903u), _wgslsmith_add_u32(0u, 0u))), reverseBits(~_wgslsmith_add_u32(u_input.c, u_input.b.x))), u_input.b);
    var var_2 = Struct_3(func_4(!var_0.a, vec2<f32>(var_0.b, var_0.b), Struct_2(abs(firstTrailingBit(vec2<i32>(0i, 2147483647i))), u_input.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(113f, 700f)), _wgslsmith_f_op_f32(max(1000f, 346f)))), var_1.xz), func_2(Struct_2(vec2<i32>(u_input.a.x, u_input.d), -35277i, _wgslsmith_f_op_f32(1473f + var_0.b), var_1.zz))), all(vec2<bool>(true, true)));
    let var_3 = !vec3<bool>(~(u_input.d << (0u % 32u)) < (i32(-1i) * -84344i), true, select(any(vec4<bool>(true, false, false, var_0.a)) | var_0.a, var_0.a, !(u_input.b.x <= var_1.x)));
    global1 = array<Struct_1, 24>();
    return StorageBuffer(u_input.c, _wgslsmith_div_i32(0i, 1i), reverseBits(u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 24>();
    let x = u_input.a;
    s_output = func_1();
}

