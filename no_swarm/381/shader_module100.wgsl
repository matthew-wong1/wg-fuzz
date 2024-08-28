struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2> = array<bool, 2>(false, true);

var<private> global1: array<Struct_3, 19>;

var<private> global2: Struct_1;

var<private> global3: vec3<f32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32) -> f32 {
    global1 = array<Struct_3, 19>();
    var var_0 = _wgslsmith_f_op_f32(step(-820f, _wgslsmith_f_op_f32(global3.x - global3.x)));
    global2 = Struct_1(_wgslsmith_clamp_i32(1i, countOneBits(_wgslsmith_sub_i32(u_input.b.x, 18489i) | -2147483647i), -31674i), ~firstTrailingBit(u_input.e.x));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)))), 449f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(global3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3.x + -771f)))), any(!select(vec2<bool>(global0[_wgslsmith_index_u32(global2.b, 2u)], global0[_wgslsmith_index_u32(global2.b, 2u)]), vec2<bool>(global0[_wgslsmith_index_u32(global2.b, 2u)], false), vec2<bool>(false, false))))), 1255f);
    var_0 = 946f;
    return _wgslsmith_f_op_f32(var_1.x - -670f);
}

fn func_2() -> bool {
    var var_0 = Struct_3(Struct_2(select(_wgslsmith_sub_i32(-15151i, 8311i), _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.c.x, 1i), max(u_input.c.zx, vec2<i32>(0i, global2.a))), true), 1u));
    let var_1 = _wgslsmith_mult_u32(0u, _wgslsmith_dot_vec2_u32(u_input.e, ~(~(~u_input.e))));
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global3.x), global3.x, _wgslsmith_f_op_f32(min(-459f, global3.x))), vec3<f32>(_wgslsmith_f_op_f32(-670f * -724f), global3.x, 450f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -489f), _wgslsmith_f_op_f32(1321f + 1289f), _wgslsmith_f_op_f32(max(-488f, global3.x)))), !(!(global2.b > 4294967295u)))));
    let var_2 = reverseBits(~reverseBits(~vec2<u32>(var_0.a.b, global2.b)));
    global2 = Struct_1(firstTrailingBit(_wgslsmith_div_i32(~(-22998i), -67284i)) >> (u_input.a % 32u), var_0.a.b);
    return all(!vec4<bool>(false, _wgslsmith_f_op_f32(-765f - global3.x) == _wgslsmith_f_op_f32(func_3(var_0.a.b)), all(vec2<bool>(false, global0[_wgslsmith_index_u32(103218u, 2u)])), select(true, 38483u == global2.b, u_input.e.x <= 65586u)));
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_clamp_i32(arg_0, 1i, select(~(~u_input.b.x), -(i32(-1i) * -1i), global2.b < ~u_input.e.x)), min(global2.b, 24297u));
    let var_1 = vec3<bool>(false, func_2(), true);
    return Struct_2(max(global2.a, _wgslsmith_clamp_i32(select(~u_input.c.x, -179i, true), 39700i, ~0i)), 1u);
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: f32, arg_3: Struct_2) -> vec4<u32> {
    global0 = array<bool, 2>();
    var var_0 = min(vec2<i32>(u_input.b.x >> (1u % 32u), arg_0.a), u_input.c.yx);
    var var_1 = 2147483647i;
    let var_2 = min(firstLeadingBit(vec4<i32>(-1i) * -vec4<i32>(1i, -26092i, -1i, arg_0.a)), u_input.b);
    let var_3 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(311f)) + -1000f) + arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(272f))))));
    return abs(select(min(~(vec4<u32>(4294967295u, global2.b, 22466u, arg_3.b) | vec4<u32>(4294967295u, 43404u, arg_3.b, global2.b)), ~(vec4<u32>(46814u, 1u, 26582u, 4294967295u) & vec4<u32>(4294967295u, arg_3.b, 1u, 116348u))), vec4<u32>(max(138u, firstLeadingBit(56240u)), global2.b, arg_0.b, arg_3.b), vec4<bool>(!global0[_wgslsmith_index_u32(1u, 2u)], false, global0[_wgslsmith_index_u32(abs(arg_0.b & global2.b), 2u)], all(vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 2u)])) && global0[_wgslsmith_index_u32(2992u, 2u)])));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: vec4<i32>) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(u_input.e.x, 19u)];
    let var_1 = !all(select(vec2<bool>(!global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, u_input.a), 2u)]), vec2<bool>(!global0[_wgslsmith_index_u32(u_input.e.x, 2u)], true), any(vec2<bool>(true, true))));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(arg_0.xx & vec2<u32>(arg_0.x, arg_0.x), _wgslsmith_mod_vec2_u32(~u_input.e, _wgslsmith_clamp_vec2_u32(u_input.e, u_input.e, arg_0.yy))), var_0.a.b) ^ ((_wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_0.x, 106945u), ~10812u) ^ _wgslsmith_div_u32(3971u | var_0.a.b, 22091u)) ^ 18180u), 19u)];
    var var_3 = Struct_3(var_0.a);
    let var_4 = global1[_wgslsmith_index_u32(var_2.a.b, 19u)];
    return global3.x;
}

fn func_6(arg_0: bool, arg_1: f32) -> StorageBuffer {
    global1 = array<Struct_3, 19>();
    let var_0 = _wgslsmith_mod_vec4_i32(select(abs(~u_input.b), -u_input.b, true), vec4<i32>(u_input.d, 2147483647i, -2147483647i, max(global2.a ^ global2.a, u_input.b.x))) | vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.b.x), vec2<i32>(func_1(1i).a, _wgslsmith_dot_vec2_i32(u_input.c.zx, u_input.c.yz))), ~(-5599i), ~_wgslsmith_mult_i32(func_1(30576i).a, u_input.c.x), u_input.b.x);
    global0 = array<bool, 2>();
    let var_1 = vec2<f32>(-415f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-310f)) * 488f));
    let var_2 = Struct_2(max((max(global2.a, 1i) ^ -2147483647i) >> (((global2.b >> (u_input.a % 32u)) & ~290u) % 32u), -2147483647i), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(22537u, 4294967295u, u_input.e.x, 0u) & vec4<u32>(u_input.a, 1u, global2.b, 0u)), ~(~vec4<u32>(u_input.a, u_input.a, u_input.e.x, u_input.e.x))), vec4<u32>(~4294967295u, ~select(4294967295u, global2.b, arg_0), min(u_input.e.x >> (1u % 32u), countOneBits(global2.b)), ~8748u)));
    return StorageBuffer(u_input.e, u_input.e.x, _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_div_i32(u_input.d, -21730i), global2.a) ^ firstTrailingBit(~u_input.b.zy), vec2<i32>(countOneBits(var_2.a >> (global2.b % 32u)), var_0.x)), -33285i, 26177i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.e;
    let x = u_input.a;
    s_output = func_6(all(!(!select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(0u, 2u)]), vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 2u)], global0[_wgslsmith_index_u32(23171u, 2u)], false), global0[_wgslsmith_index_u32(36917u, 2u)]))), _wgslsmith_f_op_f32(func_5(func_4(func_1(~u_input.c.x), !global0[_wgslsmith_index_u32(select(var_0.x, u_input.a, true), 2u)], _wgslsmith_f_op_f32(step(global3.x, global3.x)), func_1(i32(-1i) * -2147483647i)), _wgslsmith_clamp_vec4_i32(reverseBits(~vec4<i32>(-1i, u_input.b.x, -1i, -2147483647i)), vec4<i32>(1i, u_input.c.x << (u_input.e.x % 32u), min(0i, 0i), 1i), vec4<i32>(2147483647i, func_1(1i).a, abs(u_input.c.x), -1i)), vec4<i32>(max(countOneBits(49520i), -48384i), _wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_sub_i32(global2.a, 2147483647i), global2.a ^ -2147483647i), firstTrailingBit(countOneBits(-10962i)), _wgslsmith_dot_vec2_i32(~u_input.c.yz, select(u_input.b.zz, vec2<i32>(-1i, global2.a), global0[_wgslsmith_index_u32(var_0.x, 2u)]))))));
}

