struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 25>;

var<private> global1: array<bool, 14>;

var<private> global2: vec2<f32> = vec2<f32>(592f, -425f);

var<private> global3: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec2<f32>(-316f, -1298f), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec2<f32>(1368f, 1646f), vec2<u32>(786u, 1u)), Struct_1(vec2<f32>(717f, -177f), vec2<u32>(21696u, 1u)), Struct_1(vec2<f32>(-775f, 175f), vec2<u32>(1u, 0u)), Struct_1(vec2<f32>(-2216f, 262f), vec2<u32>(1u, 39829u)), Struct_1(vec2<f32>(-235f, -1186f), vec2<u32>(0u, 40532u)), Struct_1(vec2<f32>(-452f, -554f), vec2<u32>(3145u, 113426u)), Struct_1(vec2<f32>(-688f, -305f), vec2<u32>(10784u, 45846u)), Struct_1(vec2<f32>(1147f, -459f), vec2<u32>(4294967295u, 8717u)), Struct_1(vec2<f32>(234f, -545f), vec2<u32>(1u, 4294967295u)), Struct_1(vec2<f32>(742f, 1259f), vec2<u32>(4294967295u, 50962u)), Struct_1(vec2<f32>(979f, -263f), vec2<u32>(1u, 12234u)), Struct_1(vec2<f32>(1541f, 394f), vec2<u32>(1u, 4294967295u)), Struct_1(vec2<f32>(-306f, -721f), vec2<u32>(0u, 35921u)), Struct_1(vec2<f32>(491f, 1715f), vec2<u32>(20472u, 4294967295u)), Struct_1(vec2<f32>(799f, 805f), vec2<u32>(0u, 1u)), Struct_1(vec2<f32>(814f, -2300f), vec2<u32>(46119u, 1u)), Struct_1(vec2<f32>(1301f, -1341f), vec2<u32>(5137u, 2700u)), Struct_1(vec2<f32>(168f, 1246f), vec2<u32>(1u, 1588u)), Struct_1(vec2<f32>(-1000f, 353f), vec2<u32>(74436u, 0u)), Struct_1(vec2<f32>(271f, 375f), vec2<u32>(13423u, 1u)), Struct_1(vec2<f32>(-1868f, 507f), vec2<u32>(36099u, 83496u)), Struct_1(vec2<f32>(1556f, 1000f), vec2<u32>(4528u, 2037u)), Struct_1(vec2<f32>(-898f, 1000f), vec2<u32>(18888u, 4294967295u)), Struct_1(vec2<f32>(-756f, 1196f), vec2<u32>(1u, 20984u)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: i32) -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1989f, _wgslsmith_f_op_f32(1041f + 408f)))), vec2<u32>(4294967295u, 49737u));
    var var_1 = u_input.a & u_input.a;
    global1 = array<bool, 14>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - global2.x) - global2.x);
    var var_3 = global1[_wgslsmith_index_u32(var_0.b.x & _wgslsmith_dot_vec4_u32(~(~(vec4<u32>(53991u, 1u, 1u, 42041u) & vec4<u32>(29153u, 34389u, var_0.b.x, 1u))), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.x ^ u_input.c, u_input.b, 122937u, max(1u, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(28198u, 1441u, u_input.c, var_0.b.x) & vec4<u32>(var_0.b.x, 23789u, 1u, 80359u), vec4<u32>(4294967295u, u_input.c, 4294967295u, var_0.b.x)))), 14u)];
    return vec2<bool>(global1[_wgslsmith_index_u32(0u, 14u)], false);
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> u32 {
    let var_0 = !select(func_2(abs(2147483647i)), vec2<bool>(true, true), !arg_1);
    return ~arg_0.b.x;
}

fn func_3(arg_0: u32, arg_1: i32) -> u32 {
    var var_0 = abs(_wgslsmith_mod_u32(1u, ~1u));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + global2.x) + global2.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-703f, global2.x, global2.x)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2.x, global2.x, 146f), vec3<f32>(-794f, global2.x, global2.x)))))));
    return _wgslsmith_mult_u32(7749u, ~_wgslsmith_clamp_u32(1u, u_input.c, ~(~1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(u_input.c, 32936u, u_input.b, u_input.c), vec4<u32>(u_input.b, 0u, 97188u, 1u), global1[_wgslsmith_index_u32(19989u, 14u)]), vec4<u32>(0u, 4294967295u, 4294967295u, u_input.b) | vec4<u32>(0u, u_input.b, u_input.b, u_input.c), min(vec4<u32>(13701u, u_input.b, u_input.c, 48534u), vec4<u32>(4294967295u, 9505u, u_input.c, u_input.c))), vec4<u32>(8895u, func_1(Struct_1(vec2<f32>(-193f, global2.x), vec2<u32>(u_input.c, 4294967295u)), global1[_wgslsmith_index_u32(u_input.c, 14u)]), ~u_input.c, u_input.b ^ u_input.b)), 68462u, countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b)) | 0u)), vec3<u32>(func_3(4294967295u, 0i) & func_1(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.b), vec2<u32>(12753u, 1u)), 25u)], select(true, global1[_wgslsmith_index_u32(u_input.b, 14u)], false)), 14202u, u_input.c), global2.x < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(global2.x)))))));
    global0 = array<vec3<bool>, 25>();
    let var_1 = u_input.a.x;
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, 860f) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(1753f, 1700f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.x, 1360f), vec2<f32>(2835f, global2.x)))), vec2<f32>(_wgslsmith_f_op_f32(min(1000f, 1000f)), _wgslsmith_f_op_f32(abs(global2.x))), any(select(vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(var_0.x, 14u)]), vec4<bool>(global1[_wgslsmith_index_u32(36972u, 14u)], global1[_wgslsmith_index_u32(var_0.x, 14u)], false, false), false))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, 441f)));
    let var_2 = 4294967295u;
    let var_3 = global0[_wgslsmith_index_u32(u_input.b, 25u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(var_0.yz, ~(~(vec2<u32>(4052u, var_0.x) << (vec2<u32>(10885u, var_0.x) % vec2<u32>(32u))))), _wgslsmith_mod_u32(_wgslsmith_mult_u32(countOneBits(~var_2), _wgslsmith_mod_u32(65522u, var_2) | _wgslsmith_clamp_u32(14682u, 8751u, u_input.b)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, 4294967295u, 1u), _wgslsmith_mod_vec3_u32(var_0, var_0)), 4294967295u, _wgslsmith_add_u32(var_2, abs(6718u)))));
}

