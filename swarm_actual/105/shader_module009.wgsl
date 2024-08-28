struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13> = array<i32, 13>(-7321i, -31573i, 1i, 2147483647i, i32(-2147483648), i32(-2147483648), i32(-2147483648), 0i, i32(-2147483648), 2147483647i, -27908i, 1i, 17038i);

var<private> global1: i32;

var<private> global2: array<vec2<f32>, 4>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: vec2<f32>) -> vec3<u32> {
    global2 = array<vec2<f32>, 4>();
    global1 = 0i;
    global2 = array<vec2<f32>, 4>();
    return abs(~min(vec3<u32>(0u, u_input.b, u_input.b), vec3<u32>(40306u, u_input.a, 61066u)) | ~_wgslsmith_mult_vec3_u32(vec3<u32>(4365u, u_input.a, u_input.b), vec3<u32>(0u, u_input.a, 0u))) | ~select(abs(firstLeadingBit(vec3<u32>(u_input.a, 3326u, 4294967295u))), ~vec3<u32>(u_input.a, u_input.a, u_input.b), false);
}

fn func_2() -> u32 {
    var var_0 = Struct_2(Struct_1(u_input.c ^ min(_wgslsmith_dot_vec2_i32(u_input.d.zz, vec2<i32>(-1i, global0[_wgslsmith_index_u32(51597u, 13u)])), -32171i)));
    let var_1 = Struct_2(Struct_1(~(-23630i)));
    global0 = array<i32, 13>();
    let var_2 = u_input.a & min(4294967295u, u_input.a);
    var_0 = Struct_2(var_1.a);
    return var_2;
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> vec3<u32> {
    return ~firstTrailingBit(countOneBits(~vec3<u32>(90913u, u_input.b, u_input.b)) ^ abs(vec3<u32>(59506u, 16720u, u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(firstTrailingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(11196u, 1u), vec2<u32>(4294967295u, u_input.b)), countOneBits(~vec2<u32>(0u, 24838u)))));
    global2 = array<vec2<f32>, 4>();
    let var_1 = ~_wgslsmith_div_vec3_i32(min(~u_input.d, reverseBits(u_input.d)), select(vec3<i32>(-34488i, u_input.d.x, 1i), -vec3<i32>(2147483647i, -2147483647i, u_input.c) << (~vec3<u32>(u_input.a, 0u, 21658u) % vec3<u32>(32u)), select(vec3<bool>(true, true, false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false), false)));
    global1 = _wgslsmith_dot_vec3_i32(u_input.d << (min(_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(1u, 0u, 0u)), vec3<u32>(4294967295u, u_input.a, u_input.b) >> (vec3<u32>(4294967295u, u_input.b, 0u) % vec3<u32>(32u))), ~(vec3<u32>(u_input.b, u_input.a, 1u) & vec3<u32>(u_input.a, u_input.a, u_input.a))) % vec3<u32>(32u)), -select(vec3<i32>(~var_1.x, 0i << (0u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, global0[_wgslsmith_index_u32(u_input.b, 13u)], var_1.x), vec4<i32>(1349i, global0[_wgslsmith_index_u32(u_input.a, 13u)], global0[_wgslsmith_index_u32(u_input.b, 13u)], global0[_wgslsmith_index_u32(803u, 13u)]))), vec3<i32>(_wgslsmith_sub_i32(var_1.x, u_input.c), ~u_input.c, var_1.x), false));
    var var_2 = 682f;
    var var_3 = _wgslsmith_mult_vec3_u32(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1602f, 2216f) - global2[_wgslsmith_index_u32(4294967295u, 4u)]))), (vec3<u32>(u_input.a, _wgslsmith_div_u32(0u, u_input.b), u_input.b >> (u_input.a % 32u)) >> (vec3<u32>(1u, u_input.a, func_2()) % vec3<u32>(32u))) ^ func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(520f + 1098f), _wgslsmith_f_op_f32(-314f - 303f)), Struct_2(Struct_1(-2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(4294967295u, ~(~_wgslsmith_add_u32(0u, 1u)), countOneBits(_wgslsmith_add_u32(4294967295u, u_input.b) | _wgslsmith_div_u32(var_3.x, u_input.b)), _wgslsmith_mult_u32(min(~u_input.a, ~u_input.b), ~(~1u))), abs(4294967295u) >> (u_input.a % 32u));
}

