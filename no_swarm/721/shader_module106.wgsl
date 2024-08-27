struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 20>;

var<private> global2: array<Struct_1, 13>;

var<private> global3: array<i32, 16> = array<i32, 16>(2147483647i, -23754i, 9161i, 63939i, -1i, 2147483647i, -15443i, -1i, 14614i, 0i, -36748i, i32(-2147483648), 0i, -1i, 6893i, -49728i);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> f32 {
    global0 = ~(-2147483647i);
    global0 = select(firstTrailingBit(1834i), ~global3[_wgslsmith_index_u32(u_input.b.x, 16u)], !(true || (reverseBits(10693i) > abs(global3[_wgslsmith_index_u32(75701u, 16u)]))));
    let var_0 = vec4<bool>(!((0i < ~u_input.a.x) && true), (max(firstLeadingBit(12150i), select(global3[_wgslsmith_index_u32(u_input.c.x, 16u)], 27430i, true)) < ~u_input.a.x) & any(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false)), true, false);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(1291f, -529f, 451f, 1698f), vec4<f32>(726f, 1565f, -1421f, 1000f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-499f, -421f, 1238f, 703f)))))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_1.a)) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-997f, var_1.a.x, var_1.a.x, var_1.a.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-695f, var_1.a.x, -939f, -1149f) + var_1.a))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.a.x)));
}

fn func_2() -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(u_input.c.x >> (u_input.c.x % 32u), 13u)];
    let var_1 = var_0.a.x;
    var var_2 = _wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(func_3(select(_wgslsmith_add_u32(1u, max(1u, 0u)), u_input.b.x, true))));
    global1 = array<Struct_1, 20>();
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-147f, _wgslsmith_f_op_f32(-168f - -902f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), 102f))));
    return ~_wgslsmith_mod_u32(~1u, reverseBits(_wgslsmith_sub_u32(1u, u_input.c.x >> (0u % 32u))));
}

fn func_1(arg_0: Struct_1) -> u32 {
    global0 = (u_input.a.x >> (u_input.c.x % 32u)) ^ (i32(-1i) * -global3[_wgslsmith_index_u32(func_2(), 16u)]);
    global3 = array<i32, 16>();
    global2 = array<Struct_1, 13>();
    global2 = array<Struct_1, 13>();
    global1 = array<Struct_1, 20>();
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 13>();
    var var_0 = select(vec4<u32>(~u_input.c.x ^ u_input.b.x, ~1u, 13922u, func_1(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-228f, -176f, -242f, 270f))))), select(~abs(u_input.b) | vec4<u32>(abs(u_input.b.x), _wgslsmith_add_u32(26282u, 13156u), 5809u, 36268u << (u_input.c.x % 32u)), _wgslsmith_mult_vec4_u32(~abs(u_input.b), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 1u, u_input.b.x, u_input.c.x), vec4<u32>(7770u, 0u, u_input.c.x, 24625u))), vec4<bool>(true || any(vec4<bool>(true, true, true, false)), all(vec2<bool>(true, true)), false, false)), true && all(vec3<bool>(true, true, true)));
    let var_1 = global2[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x), 13u)];
    let var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(991f)), _wgslsmith_f_op_f32(f32(-1f) * -436f), -2633f, _wgslsmith_f_op_f32(f32(-1f) * -756f)));
    let var_3 = ~u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(min(~countOneBits(_wgslsmith_dot_vec3_u32(var_0.zxy, vec3<u32>(var_3, var_0.x, var_3))), var_3), _wgslsmith_sub_u32(var_3, u_input.c.x), ~select(_wgslsmith_sub_vec3_u32(~u_input.c, _wgslsmith_add_vec3_u32(u_input.c, vec3<u32>(var_3, var_3, u_input.b.x))), select(abs(u_input.b.zzx), _wgslsmith_add_vec3_u32(u_input.c, u_input.b.yzz), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true))));
}

