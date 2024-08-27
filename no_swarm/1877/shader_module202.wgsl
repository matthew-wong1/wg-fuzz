struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
    c: f32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 17>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32) -> u32 {
    global0 = array<vec2<i32>, 17>();
    return 1u;
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: vec3<i32>, arg_3: Struct_2) -> bool {
    let var_0 = vec3<u32>(53051u, abs(_wgslsmith_mod_u32(~min(14633u, 1u), 1u)), ~0u);
    global0 = array<vec2<i32>, 17>();
    var var_1 = vec3<i32>(_wgslsmith_dot_vec3_i32(arg_2, _wgslsmith_div_vec3_i32(select(arg_2, arg_2, select(vec3<bool>(false, arg_0.c.x, false), vec3<bool>(true, arg_3.c.x, arg_3.c.x), true)), vec3<i32>(u_input.a.x, -1i, abs(arg_2.x)))), ~arg_1, -(~(-arg_2.x)));
    let var_2 = arg_0.a;
    let var_3 = 1016f;
    return (~func_3(1i) != 0u) == true;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = -2147483647i;
    var var_1 = ~5532i;
    let var_2 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1577f, _wgslsmith_f_op_f32(f32(-1f) * -903f), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.x * -456f))))));
    global0 = array<vec2<i32>, 17>();
    let var_3 = any(vec4<bool>(true, !(697f != _wgslsmith_f_op_f32(-arg_2.a)), !select(true, func_2(Struct_2(Struct_1(1277f), arg_3.x, vec3<bool>(false, true, false)), -45893i, vec3<i32>(1i, -2147483647i, 2147483647i), Struct_2(arg_2, -921f, vec3<bool>(true, false, true))), var_0 <= 2147483647i), !(!all(vec2<bool>(true, false)))));
    return arg_2;
}

fn func_4(arg_0: Struct_4, arg_1: bool) -> StorageBuffer {
    global0 = array<vec2<i32>, 17>();
    global0 = array<vec2<i32>, 17>();
    var var_0 = false;
    let var_1 = _wgslsmith_clamp_vec2_u32(~_wgslsmith_mult_vec2_u32(arg_0.b.zz, reverseBits(arg_0.b.zz)) << (~arg_0.b.yz % vec2<u32>(32u)), max(countOneBits(vec2<u32>(22143u, arg_0.b.x) | _wgslsmith_mod_vec2_u32(arg_0.b.yy, arg_0.b.yw)), ~(~arg_0.b.wy)), arg_0.b.yz);
    var var_2 = arg_0.a;
    return StorageBuffer(firstTrailingBit(vec3<u32>(firstLeadingBit(~27114u), 12242u, _wgslsmith_mod_u32(arg_0.b.x, ~var_1.x))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.e - vec3<f32>(arg_0.c, arg_0.c, -558f)) * vec3<f32>(var_2.c.a, 686f, 922f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 17>();
    let var_0 = ~(~(~(~vec3<u32>(38956u, 42215u, 4294967295u))));
    let x = u_input.a;
    s_output = func_4(Struct_4(Struct_3(~u_input.a.x, Struct_1(1138f), func_1(vec2<i32>(u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-382f, -1000f, -717f)), Struct_1(470f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1112f, -1474f))), _wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(var_0.x, 17u)], ~vec2<i32>(-55367i, -63750i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(461f, 1000f, -1000f) * vec3<f32>(1526f, -747f, 992f)))), ~(~vec4<u32>(var_0.x, 4294967295u, var_0.x, var_0.x) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, 0u, var_0.x, var_0.x), vec4<u32>(0u, 10377u, 0u, 22339u), vec4<u32>(var_0.x, 1u, var_0.x, var_0.x)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1115f + 844f) + _wgslsmith_div_f32(900f, 1611f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(420f - -1000f))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-217f - -2114f), -1552f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(559f, -737f), vec2<f32>(1000f, -1513f)))))), !any(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true))));
}

