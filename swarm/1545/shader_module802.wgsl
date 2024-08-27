struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9>;

var<private> global1: array<u32, 19> = array<u32, 19>(23823u, 1u, 4294967295u, 1u, 4294967295u, 4294967295u, 3198u, 0u, 1u, 15732u, 38018u, 4294967295u, 59304u, 0u, 44348u, 28561u, 4294967295u, 18407u, 95890u);

var<private> global2: Struct_4;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: vec2<f32>, arg_3: Struct_4) -> u32 {
    var var_0 = _wgslsmith_mult_i32(max(abs(u_input.d.x), u_input.c.x), abs(-38063i)) | _wgslsmith_dot_vec4_i32(max(reverseBits(-vec4<i32>(u_input.c.x, 59984i, arg_1.x, u_input.b.x)), ~vec4<i32>(-20772i, arg_1.x, -5045i, -41836i)), ~(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, 1i, -20125i, 0i), vec4<i32>(-10356i, -16927i, 12936i, arg_1.x)) ^ select(vec4<i32>(38817i, arg_1.x, 34886i, -12301i), vec4<i32>(u_input.d.x, 0i, -2147483647i, u_input.d.x), vec4<bool>(false, true, false, false))));
    var_0 = -firstLeadingBit(firstTrailingBit(1i));
    return 8239u;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_4) -> bool {
    global2 = arg_1;
    let var_0 = _wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, 66716u, _wgslsmith_div_u32(10472u, ~global2.a.a.x), reverseBits(_wgslsmith_add_u32(arg_1.a.a.x, 0u))), ~(~vec4<u32>(8263u, firstTrailingBit(110064u), firstLeadingBit(14596u), 54244u)));
    global2 = arg_1;
    var var_1 = arg_1.a;
    let var_2 = -977f < _wgslsmith_f_op_f32(step(arg_0.x, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(56759u, 19u)], 3422u, 0u, 68214u), vec4<u32>(global2.a.a.x, 51242u, var_1.a.x, 1u)), var_0), vec4<u32>(firstLeadingBit(0u), ~26606u, func_3(var_1.a.yx, u_input.d, arg_0.yx, arg_1), 0u)), 19u)], 9u)]));
    return true;
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> f32 {
    var var_0 = ~35125u ^ firstTrailingBit(14419u);
    let var_1 = Struct_3(vec4<bool>(func_2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -734f), -760f, 875f), Struct_4(Struct_1(global2.a.a))), true, true, arg_1.a.x));
    let var_2 = global0[_wgslsmith_index_u32(~4294967295u, 9u)];
    var var_3 = var_1.a.x;
    let var_4 = Struct_5(abs(~46325i), !arg_1.a);
    return -351f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 19>();
    var var_0 = (true | all(!select(vec2<bool>(true, true), vec2<bool>(false, false), true))) | true;
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(355f, _wgslsmith_f_op_f32(floor(-452f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-362f, global0[_wgslsmith_index_u32(1u, 9u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(11870u, 9u)]) + _wgslsmith_f_op_f32(func_1(2147483647i, Struct_2(vec4<bool>(true, true, true, false))))))), 590f));
    let var_2 = -1000f;
    var_0 = 1f < _wgslsmith_f_op_f32(-1103f * var_2);
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

