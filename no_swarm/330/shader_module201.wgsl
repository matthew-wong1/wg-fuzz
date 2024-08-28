struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true));

var<private> global1: Struct_2 = Struct_2(vec4<bool>(true, true, false, true));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> f32 {
    return 731f;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: bool) -> vec4<u32> {
    var var_0 = arg_2.xx;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(abs(-130f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-758f * -1156f), _wgslsmith_f_op_f32(511f - 806f)))))) >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -507f), _wgslsmith_f_op_f32(func_3(-407f)), true)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1508f - -490f)))));
    var var_2 = var_1;
    var var_3 = Struct_2(select(select(select(!global1.a, !global1.a, vec4<bool>(true, var_1, arg_3, true)), global1.a, false), vec4<bool>(arg_0.a, all(select(global1.a.xyz, global1.a.yyx, vec3<bool>(false, arg_3, global1.a.x))), true, any(vec4<bool>(global1.a.x, true, arg_3, global1.a.x))), all(vec2<bool>(all(global1.a.wyw), arg_1.a || global1.a.x))));
    return vec4<u32>(_wgslsmith_clamp_u32(min(~14839u, max(~0u, u_input.a)), ~arg_2.x, _wgslsmith_dot_vec3_u32(~arg_2 << ((vec3<u32>(arg_2.x, u_input.a, 1u) >> (vec3<u32>(u_input.a, 1u, 41822u) % vec3<u32>(32u))) % vec3<u32>(32u)), select(abs(arg_2), ~vec3<u32>(5834u, 57194u, 0u), !vec3<bool>(false, arg_0.a, arg_0.a)))), ~_wgslsmith_div_u32(reverseBits(24212u), 1u) << (~_wgslsmith_div_u32(38368u, _wgslsmith_add_u32(u_input.a, var_0.x)) % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, ~_wgslsmith_dot_vec3_u32(arg_2, arg_2)), firstTrailingBit(firstTrailingBit(arg_2.xz))), ~1u);
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(0u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.c, 1u)), vec2<u32>(4294967295u, 67446u) | vec2<u32>(u_input.c, u_input.c))), u_input.a >> (countOneBits(u_input.a) % 32u), _wgslsmith_mod_u32(1u, firstTrailingBit(~u_input.a)), 1u), func_2(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(101347u, u_input.a), 16u)], global0[_wgslsmith_index_u32(~max(_wgslsmith_div_u32(35547u, u_input.a), u_input.a), 16u)], ~(~vec3<u32>(u_input.a, 8680u, u_input.c)) & ~(vec3<u32>(0u, 2602u, u_input.c) >> (vec3<u32>(u_input.a, u_input.a, 67301u) % vec3<u32>(32u))), true));
    var var_1 = vec2<f32>(1853f, 1154f);
    let var_2 = true;
    let var_3 = vec2<bool>(select(false, false, _wgslsmith_f_op_f32(-var_1.x) >= _wgslsmith_div_f32(-414f, _wgslsmith_f_op_f32(sign(419f)))), _wgslsmith_f_op_f32(-var_1.x) <= _wgslsmith_div_f32(var_1.x, -1609f));
    let var_4 = any(!global1.a.wz);
    return Struct_2(global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    var var_1 = func_1();
    let var_2 = func_1();
    let var_3 = firstTrailingBit(u_input.c);
    let var_4 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-159f, 458f, -574f, -852f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(428f, -1192f, 431f, -1227f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(4294967295u, var_3, u_input.a, ~var_3)), firstLeadingBit(abs(max(~vec2<i32>(u_input.b, u_input.b), select(vec2<i32>(u_input.b, -1i), vec2<i32>(u_input.b, -1i), var_1.a.x)))), ~(_wgslsmith_mod_u32(35388u, u_input.c) ^ var_3));
}

