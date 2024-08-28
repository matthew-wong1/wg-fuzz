struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(37778u), Struct_3(135539u), Struct_3(1u), Struct_3(4294967295u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: vec4<bool>) -> Struct_1 {
    global0 = array<Struct_3, 4>();
    var var_0 = 27120u;
    global0 = array<Struct_3, 4>();
    let var_1 = false;
    global0 = array<Struct_3, 4>();
    return Struct_1(arg_0.x);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec3<f32>) -> f32 {
    var var_0 = reverseBits(-select(u_input.d & u_input.d, u_input.d, false));
    var var_1 = !any(!select(!vec2<bool>(false, arg_1.a), vec2<bool>(false, false), !arg_1.a));
    var_1 = true;
    var var_2 = vec2<bool>(((countOneBits(arg_0.a) > arg_2.x) || !(arg_2.x < arg_0.a)) == select(select(true, true, true), false, any(vec4<bool>(arg_1.a, arg_1.a, true, true))), ~_wgslsmith_mod_u32(94718u, ~arg_2.x) > arg_0.a);
    let var_3 = Struct_3(~_wgslsmith_sub_u32(arg_0.a, ~(~95673u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_3.x)) * _wgslsmith_f_op_f32(exp2(arg_3.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_3.x))))));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_3) -> StorageBuffer {
    var var_0 = func_2(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -564f) * -2059f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-860f * _wgslsmith_f_op_f32(max(1053f, -267f))) - 513f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-984f))))), vec4<bool>(all(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false))), all(vec2<bool>(any(vec2<bool>(true, true)), true)), (true | any(vec3<bool>(true, true, true))) && false, any(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true)))));
    var_0 = func_2(!select(!select(vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<bool>(var_0.a, var_0.a, var_0.a, false), var_0.a), vec4<bool>(!var_0.a, var_0.a, true, var_0.a), vec4<bool>(all(vec2<bool>(var_0.a, var_0.a)), var_0.a | var_0.a, var_0.a, true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -242f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -351f), _wgslsmith_f_op_f32(-223f * -1046f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(374f)) * _wgslsmith_f_op_f32(869f * -838f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(712f)) * _wgslsmith_f_op_f32(-505f - 1229f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-134f, 610f, 1000f, 1000f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-609f, 2182f, 1888f, -276f), vec4<f32>(-1252f, 545f, -311f, 746f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1073f, -620f, 479f, -1000f) - vec4<f32>(-689f, 512f, -332f, -1621f))))), vec4<bool>(true, arg_1.a <= min(arg_1.a | 4294967295u, 4294967295u), false, var_0.a));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(arg_1.a, 4u)], Struct_1(var_0.a), vec3<u32>(7167u, arg_1.a, 4294967295u), vec3<f32>(1118f, 1000f, 427f))), 1f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-632f, 379f, -1187f) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(841f, 700f, -539f))))))));
    var_0 = func_2(select(!vec4<bool>(any(vec4<bool>(var_0.a, true, false, var_0.a)), all(vec2<bool>(var_0.a, false)), !var_0.a, false), select(vec4<bool>(var_0.a, false || var_0.a, any(vec4<bool>(false, var_0.a, true, false)), false), !select(vec4<bool>(false, var_0.a, true, false), vec4<bool>(var_0.a, true, var_0.a, false), false), !select(vec4<bool>(false, false, true, true), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), var_0.a)), select(!select(vec4<bool>(false, false, var_0.a, var_0.a), vec4<bool>(true, false, false, true), var_0.a), !vec4<bool>(var_0.a, var_0.a, var_0.a, false), var_0.a)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - 213f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(697f * 149f) - 1497f), -705f))), select(!select(!vec4<bool>(var_0.a, false, true, var_0.a), select(vec4<bool>(var_0.a, var_0.a, true, false), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), false), true), vec4<bool>(!func_2(vec4<bool>(false, true, var_0.a, var_0.a), vec4<f32>(396f, var_1.x, var_1.x, var_1.x), vec4<bool>(true, var_0.a, true, var_0.a)).a, arg_1.a != max(0u, 4294967295u), var_0.a, !var_0.a | !var_0.a), true));
    let var_2 = _wgslsmith_sub_vec4_u32(reverseBits(select(vec4<u32>(1u, 4294967295u, arg_1.a, arg_1.a) | vec4<u32>(arg_1.a, 73231u, arg_1.a, 1u), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(43702u, arg_1.a, arg_1.a, 4294967295u), vec4<u32>(arg_1.a, arg_1.a, arg_1.a, 0u)), reverseBits(vec4<u32>(0u, arg_1.a, 4294967295u, arg_1.a))), false)), ~(~abs(vec4<u32>(1u, arg_1.a, arg_1.a, 2043u) ^ vec4<u32>(15326u, 65630u, arg_1.a, 4294967295u))));
    return StorageBuffer(u_input.d.yxz ^ -abs(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.x, u_input.d.x, arg_0.x), vec3<i32>(u_input.c, -1i, arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f)))))));
    global0 = array<Struct_3, 4>();
    global0 = array<Struct_3, 4>();
    global0 = array<Struct_3, 4>();
    global0 = array<Struct_3, 4>();
    let x = u_input.a;
    s_output = func_1(max(_wgslsmith_clamp_vec2_i32(select(vec2<i32>(u_input.d.x, 0i), vec2<i32>(u_input.a, u_input.b), vec2<bool>(true, true)), vec2<i32>(firstTrailingBit(2147483647i), _wgslsmith_mod_i32(0i, 2147483647i)), reverseBits(u_input.d.wz) >> (~vec2<u32>(97386u, 4294967295u) % vec2<u32>(32u))), -(vec2<i32>(u_input.a, u_input.b) & (vec2<i32>(u_input.b, u_input.a) >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(65552u, 4294967295u >> (1u % 32u)), 4u)]);
}

