struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24> = array<u32, 24>(4294967295u, 1u, 4294967295u, 4294967295u, 49090u, 40610u, 48741u, 4294967295u, 74017u, 25245u, 19091u, 0u, 0u, 19040u, 51246u, 26988u, 23954u, 25657u, 47276u, 82577u, 4294967295u, 0u, 67030u, 2300u);

var<private> global1: array<vec3<bool>, 12>;

var<private> global2: i32 = 2147483647i;

var<private> global3: u32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: u32, arg_3: vec4<bool>) -> u32 {
    var var_0 = arg_1;
    return 20757u;
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    global0 = array<u32, 24>();
    global2 = -_wgslsmith_mod_i32(-countOneBits(arg_0.a), select(u_input.c, u_input.c, true)) << (u_input.a.x % 32u);
    return arg_0;
}

fn func_1() -> StorageBuffer {
    var var_0 = func_3(Struct_1(u_input.b.x, u_input.a.xxx), select(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.e, 61441i)) << (max(~0u, func_2(vec4<i32>(u_input.c, u_input.e, u_input.e, u_input.b.x), Struct_1(u_input.b.x, u_input.a.ywy), 59682u, vec4<bool>(false, true, true, true))) % 32u), abs(u_input.b.x), false));
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(max(1054f, -781f)), _wgslsmith_f_op_f32(1250f - 1324f), _wgslsmith_f_op_f32(select(191f, -616f, true)))))))));
    return StorageBuffer(max(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, var_0.a, -41246i, var_0.a) | vec4<i32>(var_0.a, 7468i, var_0.a, -8144i), ~vec4<i32>(0i, 1i, 42081i, var_0.a)), abs(u_input.b.x), firstTrailingBit(u_input.e), ~(-2147483647i)), vec4<i32>(func_3(func_3(Struct_1(26624i, vec3<u32>(global0[_wgslsmith_index_u32(var_0.b.x, 24u)], 4294967295u, 52392u)), -24650i), u_input.b.x).a, -37294i, var_0.a, 23209i)), 42332u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.e <= _wgslsmith_add_i32(u_input.e, -1i);
    let x = u_input.a;
    s_output = func_1();
}

