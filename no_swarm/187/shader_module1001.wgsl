struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25>;

var<private> global1: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(-566f, 397f, -263f, 374f), vec4<f32>(540f, 1000f, 136f, -1757f), vec4<f32>(123f, -1580f, -1026f, -1474f), vec4<f32>(1384f, 1181f, 159f, 1282f), vec4<f32>(608f, 540f, -517f, -274f), vec4<f32>(-1144f, 699f, 703f, 334f));

var<private> global2: vec2<bool>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1(arg_0: Struct_1) -> i32 {
    return u_input.b;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3) -> Struct_2 {
    return Struct_2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(round(-449f)), arg_0.a, arg_0.a))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>) -> Struct_2 {
    let var_0 = countOneBits(~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(arg_1.zw, arg_1.zx) & _wgslsmith_div_vec2_u32(arg_1.wx, arg_1.yw), arg_1.xw));
    var var_1 = 0i;
    var var_2 = vec3<i32>(1i | (2147483647i << (~_wgslsmith_add_u32(arg_1.x, var_0) % 32u)), i32(-1i) * -_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, u_input.a, arg_1.x, 0u), vec4<u32>(1u, 1u, 28868u, 4294967295u)), 25u)], global0[_wgslsmith_index_u32(~u_input.a, 25u)]), func_1(Struct_1(_wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x))) ^ global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_1 | arg_1, _wgslsmith_sub_vec4_u32(vec4<u32>(1u, arg_1.x, 17503u, arg_1.x), arg_1)), 25u)]);
    let var_3 = arg_1.x;
    var var_4 = _wgslsmith_f_op_vec3_f32(-arg_0.a);
    return Struct_2(arg_0.a);
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: vec4<bool>) -> vec3<i32> {
    return (vec3<i32>(1i, 54996i, ~1i) | -abs(countOneBits(vec3<i32>(-22199i, u_input.b, u_input.b)))) | _wgslsmith_clamp_vec3_i32(firstTrailingBit(-vec3<i32>(u_input.c, u_input.b, 0i)), ~(-vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(arg_0, 25u)], global0[_wgslsmith_index_u32(arg_0, 25u)]) & -vec3<i32>(u_input.c, u_input.b, u_input.c)), -abs(~vec3<i32>(global0[_wgslsmith_index_u32(90937u, 25u)], u_input.b, -3738i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(!vec4<bool>(all(vec2<bool>(true, global2.x)), true, !(global2.x || false), true), vec4<u32>(~(2903u & select(44716u, u_input.a, true)), 98126u, 25514u, firstTrailingBit(_wgslsmith_clamp_u32(u_input.a, 1u, 6019u))), firstTrailingBit(vec3<i32>(func_1(Struct_1(916f)), -7736i, ~(~global0[_wgslsmith_index_u32(u_input.a, 25u)]))));
    global1 = array<vec4<f32>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.wx, vec3<u32>(abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.x, var_0.b.x, var_0.b.x), vec3<u32>(var_0.b.x, 4294967295u, var_0.b.x))), min(_wgslsmith_mod_u32(u_input.a, u_input.a), var_0.b.x) << (firstLeadingBit(var_0.b.x) % 32u), 4294967295u >> (var_0.b.x % 32u)), func_4(u_input.a, var_0.a, func_3(func_2(Struct_1(-617f), Struct_3(var_0.a, vec4<u32>(var_0.b.x, 37705u, u_input.a, 4294967295u), vec3<i32>(0i, global0[_wgslsmith_index_u32(0u, 25u)], 54583i))), vec4<u32>(~41617u, ~u_input.a, reverseBits(u_input.a), 1u)), vec4<bool>(false, var_0.a.x, !var_0.a.x, var_0.a.x)), ~var_0.b.x);
}

