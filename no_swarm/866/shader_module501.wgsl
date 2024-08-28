struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(1542f), Struct_2(-1171f), Struct_2(-1044f), Struct_2(595f), Struct_2(-1053f), Struct_2(418f), Struct_2(465f), Struct_2(-940f), Struct_2(1378f), Struct_2(1553f), Struct_2(1319f), Struct_2(2118f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec2<u32>, arg_1: f32) -> Struct_1 {
    return global0[_wgslsmith_index_u32(arg_0.x, 15u)];
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_1) -> bool {
    var var_0 = select(~73602u < arg_2.c.x, false, !all(vec2<bool>(true, true)));
    var var_1 = 1u;
    global1 = array<Struct_2, 12>();
    var_1 = arg_2.b.x;
    let var_2 = min(arg_2.b, max(abs(vec4<u32>(min(arg_2.b.x, arg_2.b.x), arg_2.b.x, firstLeadingBit(4294967295u), ~arg_2.b.x)), ~(arg_2.b ^ _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.x, 1u, arg_2.b.x, 0u), vec4<u32>(59643u, arg_2.b.x, 73635u, arg_2.c.x)))));
    return all(!(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)))));
}

fn func_1(arg_0: i32) -> f32 {
    var var_0 = func_3(~2147483647i, ~(~_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(23430u, 99240u), vec2<u32>(0u, 43631u)), vec2<u32>(112973u, 13717u))), func_2(_wgslsmith_mult_vec2_u32(vec2<u32>(12547u, 1u), select(select(vec2<u32>(59140u, 2573u), vec2<u32>(82827u, 1u), vec2<bool>(true, false)), vec2<u32>(1u, 1u), vec2<bool>(false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1051f - 303f))) - -1337f)));
    global1 = array<Struct_2, 12>();
    var_0 = !(select(1u, ~_wgslsmith_add_u32(4294967295u, 0u), all(vec4<bool>(true, true, true, true))) != countOneBits(13498u));
    let var_1 = vec2<bool>(true, true);
    global0 = array<Struct_1, 15>();
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-836f + -2183f), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -608f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 15>();
    global1 = array<Struct_2, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_1(countOneBits(1i))), -755f, ~_wgslsmith_sub_u32(firstLeadingBit(abs(2340u)), ~firstTrailingBit(4294967295u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -3132f, 919f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1127f, 897f, 296f)))))), vec4<u32>(1u, 1u, 1u, 1u) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), max(~vec4<u32>(1u, 20734u, 0u, 49391u), max(vec4<u32>(52550u, 69770u, 1u, 1u), vec4<u32>(4294967295u, 0u, 3556u, 4294967295u)))));
}

