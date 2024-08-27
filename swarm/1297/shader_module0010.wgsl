struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec3<bool>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: i32 = -6155i;

var<private> global2: array<i32, 11>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<i32> {
    global0 = ~max(~min(arg_1.b, arg_1.b) ^ vec4<u32>(arg_0.c, arg_0.c, 78010u, arg_0.b.x), select(~max(arg_1.b, arg_0.b), vec4<u32>(_wgslsmith_div_u32(arg_1.b.x, arg_1.c), 17547u, ~0u, arg_0.b.x >> (39556u % 32u)), false && any(vec4<bool>(false, false, true, true))));
    global0 = ~vec4<u32>(abs(~(~4294967295u)), abs(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a, 147690u, arg_1.b.x, 0u)), arg_0.b)), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(21051u, arg_1.c), u_input.b.x | 5111u), global0.yx), abs(_wgslsmith_add_u32(0u, u_input.b.x)));
    global2 = array<i32, 11>();
    global1 = _wgslsmith_mod_i32(-2147483647i, firstTrailingBit(-69826i));
    global1 = global2[_wgslsmith_index_u32(max(arg_0.b.x, arg_0.b.x), 11u)];
    return vec4<i32>(38965i, ~(-2147483647i), _wgslsmith_dot_vec4_i32(firstLeadingBit(reverseBits(vec4<i32>(global2[_wgslsmith_index_u32(arg_1.b.x, 11u)], -1i, global2[_wgslsmith_index_u32(4294967295u, 11u)], global2[_wgslsmith_index_u32(arg_1.c, 11u)]))) & vec4<i32>(_wgslsmith_mod_i32(30444i, -2147483647i), _wgslsmith_add_i32(55027i, -2147483647i), -2147483647i, _wgslsmith_mod_i32(15445i, global2[_wgslsmith_index_u32(global0.x, 11u)])), countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 11u)], global2[_wgslsmith_index_u32(38398u, 11u)], 0i, global2[_wgslsmith_index_u32(4294967295u, 11u)]), vec4<i32>(0i, -1i, 24416i, global2[_wgslsmith_index_u32(global0.x, 11u)])) | -vec4<i32>(-2147483647i, 53856i, global2[_wgslsmith_index_u32(u_input.a, 11u)], global2[_wgslsmith_index_u32(global0.x, 11u)]))), 2147483647i);
}

fn func_2(arg_0: f32) -> vec2<u32> {
    let var_0 = -(vec4<i32>(-1i) * -func_3(Struct_1(-450f, vec4<u32>(0u, global0.x, global0.x, global0.x), global0.x), Struct_1(-240f, vec4<u32>(1u, global0.x, 2984u, 1u), 29816u)));
    global2 = array<i32, 11>();
    var var_1 = Struct_2(-global2[_wgslsmith_index_u32(countOneBits(global0.x), 11u)]);
    var var_2 = firstTrailingBit(~(vec3<i32>(var_1.a, global2[_wgslsmith_index_u32(global0.x, 11u)], min(global2[_wgslsmith_index_u32(global0.x, 11u)], -1i)) & _wgslsmith_clamp_vec3_i32(-vec3<i32>(1i, var_0.x, 58078i), var_0.zzw >> (vec3<u32>(global0.x, 0u, 23523u) % vec3<u32>(32u)), vec3<i32>(-2147483647i, var_1.a, -1i))));
    var var_3 = !(arg_0 < arg_0);
    return u_input.b;
}

fn func_1() -> u32 {
    global1 = global2[_wgslsmith_index_u32(54195u, 11u)];
    var var_0 = true;
    let var_1 = u_input.b;
    let var_2 = global0.x;
    var var_3 = ~(~max(abs(~vec2<u32>(1u, 0u)), _wgslsmith_sub_vec2_u32(func_2(559f), u_input.b)));
    return ~0u << (~(~(~(~u_input.b.x))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec4_u32(~vec4<u32>(4583u | func_1(), countOneBits(global0.x) ^ 1u, abs(abs(u_input.a)), countOneBits(4777u)), _wgslsmith_add_vec4_u32(max(abs(vec4<u32>(u_input.a, 36880u, 4294967295u, u_input.b.x) | vec4<u32>(15286u, 0u, 0u, 0u)), ~(~vec4<u32>(global0.x, global0.x, 44312u, u_input.b.x))), select(abs(vec4<u32>(global0.x, global0.x, 58364u, 11053u)), abs(vec4<u32>(global0.x, 27510u, 29814u, 1u)), any(vec3<bool>(false, true, false))) << (~(~vec4<u32>(42150u, 1u, u_input.b.x, u_input.a)) % vec4<u32>(32u))));
    var var_1 = ~(~4294967295u);
    var_1 = 6034u;
    var var_2 = !select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), false), false), vec2<bool>(true, false)), vec2<bool>(true, true), 0i >= global2[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x), 11u)]);
    global0 = _wgslsmith_mult_vec4_u32(vec4<u32>(func_1(), 18174u, var_0.x, ~(~0u)) | vec4<u32>(var_0.x, 70274u, 1u, 1u), reverseBits(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, 0u, var_0.x, 1u), var_0)));
    let var_3 = _wgslsmith_sub_i32(_wgslsmith_div_i32(-46062i, abs(~0i)), 25798i) ^ global2[_wgslsmith_index_u32(var_0.x << (u_input.a % 32u), 11u)];
    var_2 = !select(!select(select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(true, var_2.x), var_2.x), select(vec2<bool>(var_2.x, false), vec2<bool>(false, var_2.x), var_2.x), !var_2.x), !select(select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(true, false), true), select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(false, var_2.x), vec2<bool>(var_2.x, var_2.x)), vec2<bool>(var_2.x, false)), true);
    let var_4 = Struct_1(656f, _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.b.x & global0.x, u_input.a >> (50174u % 32u), ~global0.x), countOneBits(vec4<u32>(global0.x, 0u, 4294967295u, 0u))), firstLeadingBit(vec4<u32>(_wgslsmith_div_u32(u_input.b.x, global0.x), _wgslsmith_add_u32(4294967295u, 0u), ~57058u, _wgslsmith_sub_u32(global0.x, 4294967295u))), select(vec4<u32>(global0.x ^ 21561u, ~4294967295u, 26585u, reverseBits(36097u)), _wgslsmith_clamp_vec4_u32(max(vec4<u32>(0u, global0.x, 4294967295u, var_0.x), vec4<u32>(39832u, 55060u, 0u, u_input.b.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, global0.x, 1u, u_input.b.x), var_0), var_0), select(var_2.x, var_2.x, true) | all(vec3<bool>(true, true, false)))), 10056u);
    global0 = ~(_wgslsmith_mult_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, var_0.x, 38191u), var_0, vec4<u32>(0u, 17906u, 4294967295u, global0.x)), var_4.b) | ~(vec4<u32>(31436u, var_4.b.x, global0.x, var_0.x) << (_wgslsmith_mult_vec4_u32(var_4.b, vec4<u32>(38722u, 1u, 90251u, global0.x)) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(global0.x, 11u)], global2[_wgslsmith_index_u32(min(var_4.c, 1u), 11u)] >> (_wgslsmith_dot_vec4_u32(var_0, vec4<u32>(7027u, u_input.a, var_0.x, 29391u)) % 32u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 1015f) + _wgslsmith_f_op_f32(f32(-1f) * -378f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_4.a)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -374f), _wgslsmith_f_op_f32(var_4.a - 655f))))), true)), var_4.a);
}

