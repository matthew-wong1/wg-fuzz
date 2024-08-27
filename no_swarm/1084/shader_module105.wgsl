struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17>;

var<private> global1: Struct_3;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: f32) -> vec4<u32> {
    var var_0 = !(!vec4<bool>(arg_2.d.x && global1.c.d.x, u_input.b.x == (u_input.a << (0u % 32u)), arg_2.d.x, true));
    global0 = array<bool, 17>();
    let var_1 = global1.c.d.xw;
    let var_2 = select(firstTrailingBit(reverseBits(vec2<u32>(global1.b, global1.b))), vec2<u32>(firstLeadingBit(min(global1.b, firstTrailingBit(global1.b))), _wgslsmith_mult_u32(min(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.b, global1.b), vec2<u32>(43638u, 4294967295u)), global1.b), global1.b)), true);
    var var_3 = global1.c.b;
    return firstTrailingBit(~(_wgslsmith_add_vec4_u32(vec4<u32>(global1.b, 4294967295u, 46611u, var_2.x), vec4<u32>(var_2.x, global1.b, var_2.x, 67498u)) | ~vec4<u32>(global1.b, 0u, 4294967295u, 4294967295u)) | min(vec4<u32>(~0u, 36272u ^ var_2.x, max(1u, 24456u), abs(global1.b)), vec4<u32>(~0u, var_2.x >> (25235u % 32u), ~var_2.x, ~0u)));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_3) -> vec4<u32> {
    let var_0 = global1.c.d.xxx;
    var var_1 = 13926u;
    global0 = array<bool, 17>();
    var var_2 = min(_wgslsmith_sub_vec4_u32(~firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.b, global1.b, 14384u, 40093u), vec4<u32>(13994u, global1.b, global1.b, arg_1.b))), ~min(vec4<u32>(arg_1.b, 7157u, arg_1.b, arg_1.b), func_3(379f, global1.c.d.ywx, arg_1.c, global1.c.c))), reverseBits(vec4<u32>(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_1.b, 4294967295u), vec3<u32>(4294967295u, global1.b, 30595u))), ~arg_1.b, global1.b, global1.b)));
    var_1 = ~(~(~(~_wgslsmith_dot_vec2_u32(var_2.zy, var_2.wy))));
    return ~select(~_wgslsmith_mult_vec4_u32(vec4<u32>(global1.b, 1u, 13536u, var_2.x), vec4<u32>(arg_1.b, 62471u, 4294967295u, 4294967295u)), abs(max(vec4<u32>(global1.b, 0u, 1u, 0u), vec4<u32>(global1.b, arg_1.b, global1.b, var_2.x)) ^ select(vec4<u32>(arg_1.b, 4294967295u, 1u, global1.b), vec4<u32>(36422u, 1u, 4294967295u, 79732u), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(64387u, 17u)], global0[_wgslsmith_index_u32(arg_1.b, 17u)], var_0.x))), !any(arg_1.c.d));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: i32, arg_3: u32) -> Struct_3 {
    let var_0 = abs(~vec4<i32>(1i, arg_1.x, ~u_input.b.x, ~u_input.b.x)) << (~(~select(vec4<u32>(4294967295u, arg_3, 0u, global1.b) >> (vec4<u32>(4294967295u, arg_3, 1u, global1.b) % vec4<u32>(32u)), func_2(vec4<i32>(1i, 2147483647i, arg_1.x, -16017i), Struct_3(global1.a, 13734u, Struct_1(arg_0.x, vec4<i32>(0i, u_input.b.x, arg_2, arg_2), arg_0.x, global1.c.d, arg_1.x))), global1.c.d)) % vec4<u32>(32u));
    var var_1 = arg_0.xz;
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.zz)));
    return Struct_3(global1.a, ~_wgslsmith_dot_vec2_u32(vec2<u32>(global1.b, global1.b), vec2<u32>(1u, 4294967295u | arg_3)), global1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(484f + global1.c.a) * global1.c.c)), -947f, global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_sub_u32(1u, 0u)), 17u)])), global1.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1843f)), 1670f)));
    var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(608f, var_0.x, -919f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(257f, var_0.x, -2100f)), false))))));
    let var_1 = !(!vec4<bool>((0i << (global1.b % 32u)) > _wgslsmith_mult_i32(global1.c.e, -2147483647i), true, global1.c.d.x, false));
    global1 = func_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(165f, 511f)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, -517f, global1.c.c), vec3<f32>(-255f, global1.a, 369f))))), any(global1.c.d.yyx))), countOneBits(~vec2<i32>(0i, u_input.b.x)) ^ vec2<i32>(-14461i, -1i), u_input.b.x, _wgslsmith_div_u32(4294967295u, reverseBits(abs(global1.b))) >> (60718u % 32u));
    var var_2 = any(select(!select(var_1.xwy, vec3<bool>(global0[_wgslsmith_index_u32(global1.b, 17u)], global0[_wgslsmith_index_u32(global1.b, 17u)], false), global1.c.d.xxy), !global1.c.d.zwx, all(var_1.xy) && true));
    global0 = array<bool, 17>();
    var var_3 = ~vec4<u32>(firstLeadingBit(74989u), global1.b, ~35062u, _wgslsmith_mod_u32(select(select(global1.b, global1.b, var_1.x), global1.b, var_0.x == 743f), 92445u >> (_wgslsmith_div_u32(global1.b, 1441u) % 32u)));
    let var_4 = vec2<i32>(u_input.b.x, (min(global1.c.e, 2147483647i | u_input.b.x) >> (var_3.x % 32u)) >> (~global1.b % 32u));
    var_2 = all(vec3<bool>(true, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(max(-1677f, global1.c.c)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -669f)))), _wgslsmith_f_op_f32(global1.c.c * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), var_0.x))), ~(~select(0u, var_3.x, true)), 1u, _wgslsmith_dot_vec2_u32(var_3.xy, var_3.yx));
}

