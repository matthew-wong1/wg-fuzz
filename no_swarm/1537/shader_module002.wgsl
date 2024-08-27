struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9>;

var<private> global1: array<u32, 13> = array<u32, 13>(0u, 39546u, 1u, 59042u, 0u, 25017u, 66304u, 18427u, 61754u, 0u, 1u, 54169u, 56813u);

var<private> global2: array<Struct_1, 32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec4<i32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1460f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-959f))))));
    global1 = array<u32, 13>();
    var var_1 = Struct_1(~vec2<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_1.b.x, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], u_input.a)), vec4<u32>(u_input.a, 1u, arg_1.b.x, arg_1.b.x)), _wgslsmith_add_u32(13181u | global1[_wgslsmith_index_u32(0u, 13u)], 4294967295u)), ~vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 1u, u_input.a), firstTrailingBit(arg_1.b)), u_input.a, 1707u));
    global0 = array<i32, 9>();
    var var_2 = vec3<bool>(all(vec4<bool>(1000f == var_0, all(vec2<bool>(true, arg_0)), arg_0, arg_0)) | arg_0, false, true);
    return !(!(!(!select(vec3<bool>(false, true, var_2.x), vec3<bool>(var_2.x, arg_0, var_2.x), vec3<bool>(var_2.x, arg_0, false)))));
}

fn func_2(arg_0: vec2<f32>) -> vec4<i32> {
    let var_0 = vec3<bool>(false, all(func_3(abs(u_input.a) != global1[_wgslsmith_index_u32(u_input.a & 1956u, 13u)], Struct_1(~vec2<u32>(global1[_wgslsmith_index_u32(79004u, 13u)], u_input.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 13u)], 13u)], u_input.a, 0u), vec3<u32>(0u, 42223u, global1[_wgslsmith_index_u32(1u, 13u)]), vec3<u32>(1u, 82327u, global1[_wgslsmith_index_u32(10889u, 13u)]))), ~vec4<i32>(global0[_wgslsmith_index_u32(50925u, 9u)], 42238i, global0[_wgslsmith_index_u32(65250u, 9u)], 1i))), (i32(-1i) * -60703i) < min(_wgslsmith_add_i32(_wgslsmith_mult_i32(1i, global0[_wgslsmith_index_u32(1u, 9u)]), _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(0u, 9u)], 0i, 1i)), -61547i));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))))))));
    var var_2 = all(!vec3<bool>(!var_0.x, func_3(var_0.x, Struct_1(vec2<u32>(1u, u_input.a), vec3<u32>(4294967295u, 56446u, 4294967295u)), firstTrailingBit(vec4<i32>(global0[_wgslsmith_index_u32(23703u, 9u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(70694u, 13u)], 9u)], global0[_wgslsmith_index_u32(10190u, 9u)], -890i))).x, select(var_0.x, true, var_0.x)));
    global1 = array<u32, 13>();
    return vec4<i32>(-1i) * -vec4<i32>(firstTrailingBit(global0[_wgslsmith_index_u32(~62205u, 9u)]), 2147483647i | _wgslsmith_div_i32(global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(1u, 9u)]), _wgslsmith_mult_i32(-global0[_wgslsmith_index_u32(u_input.a, 9u)], global0[_wgslsmith_index_u32(u_input.a, 9u)]), select(2147483647i >> (u_input.a % 32u), 2147483647i, true));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> StorageBuffer {
    var var_0 = ~(~(~reverseBits(vec2<u32>(arg_1.b.x, 1u))));
    global0 = array<i32, 9>();
    let var_1 = -1i;
    let var_2 = abs(select(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-2855f, -1334f))))), vec4<i32>(countOneBits(global0[_wgslsmith_index_u32(~4294967295u, 9u)]), -(global0[_wgslsmith_index_u32(var_0.x, 9u)] << (var_0.x % 32u)), global0[_wgslsmith_index_u32(firstLeadingBit(arg_0.b.x), 9u)], global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(1u, 4294967295u), 9u)]), false));
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-397f)) - _wgslsmith_f_op_f32(round(-470f))))), -778f)), _wgslsmith_div_f32(-253f, -304f)));
    return StorageBuffer(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(48996u, var_0.x, 4294967295u, arg_1.a.x)) << (firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x, 13u)], 13u)], 13u)], 4654u, 1u), vec4<u32>(26267u, 1u, 53857u, arg_0.b.x))) % vec4<u32>(32u)), ~select(max(vec4<u32>(100391u, global1[_wgslsmith_index_u32(arg_0.b.x, 13u)], 0u, 31684u), vec4<u32>(38604u, 14354u, 25107u, 1u)), firstTrailingBit(vec4<u32>(0u, u_input.a, arg_1.b.x, u_input.a)), arg_2)), vec4<u32>(~_wgslsmith_add_u32(0u, u_input.a), firstLeadingBit(~(arg_1.b.x << (arg_1.b.x % 32u))), 1u, 1u), _wgslsmith_div_u32(var_0.x, ~4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 13>();
    var var_0 = abs(~1u);
    let var_1 = Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(120811u, 4294967295u), _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(54224u, 13u)], 0u), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 13u)], 13u)], 1u), vec2<u32>(1u, u_input.a)), vec2<u32>(u_input.a, 33930u) | vec2<u32>(4294967295u, 5533u), ~vec2<u32>(25147u, u_input.a)) << (max(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 13u)], 13u)], u_input.a), ~vec2<u32>(67780u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 13u)], 13u)], 13u)])) % vec2<u32>(32u))), select(vec3<u32>(1u, ~(u_input.a | 0u), 1u), ~(~(~vec3<u32>(u_input.a, 41183u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(45807u, 13u)], 13u)], 13u)]))), true));
    var var_2 = Struct_1(vec2<u32>(~(~10693u), reverseBits(abs(u_input.a))), ~var_1.b);
    var_2 = Struct_1(vec2<u32>(global1[_wgslsmith_index_u32(1u, 13u)], _wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(var_2.b, var_1.b), firstTrailingBit(firstTrailingBit(1961u)))), var_2.b);
    global2 = array<Struct_1, 32>();
    var_0 = ~var_1.b.x;
    var_0 = ~var_1.b.x;
    let x = u_input.a;
    s_output = func_1(global2[_wgslsmith_index_u32(min(global1[_wgslsmith_index_u32(4294967295u, 13u)], max(~4294967295u, var_2.a.x) & ((u_input.a | 1u) | ~var_2.a.x)), 32u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(firstTrailingBit(~var_1.b.x), ~1u), 13u)], 32u)], all(vec4<bool>(true, true, true, true)));
}

