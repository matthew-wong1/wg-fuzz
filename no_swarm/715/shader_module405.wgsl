struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-597f, -882f, -1245f, 663f);

var<private> global1: array<Struct_4, 28>;

var<private> global2: array<f32, 24>;

var<private> global3: array<u32, 28> = array<u32, 28>(0u, 100235u, 4294967295u, 13323u, 4294967295u, 57274u, 0u, 29578u, 70009u, 88943u, 4294967295u, 35740u, 51936u, 288u, 30445u, 1u, 4294967295u, 43488u, 1u, 1u, 4294967295u, 26772u, 1u, 27356u, 0u, 0u, 16613u, 1u);

var<private> global4: Struct_1;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(~(-u_input.a), 33638i), _wgslsmith_sub_i32(-37144i, firstLeadingBit(_wgslsmith_clamp_i32(u_input.a, -73132i, u_input.a))), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, 38217i), vec3<i32>(u_input.a, u_input.a, -1i) & vec3<i32>(u_input.a, u_input.a, -33261i)), vec3<i32>(_wgslsmith_div_i32(-1i, u_input.a), i32(-1i) * -34080i, -134i))), vec3<i32>(countOneBits(~(-1i)), u_input.a, 33231i));
    var var_1 = !vec4<bool>(!(~1u > u_input.c.x), !(false || all(vec3<bool>(true, false, global4.c))), global4.c, any(!select(vec4<bool>(global4.c, true, false, global4.c), vec4<bool>(global4.c, false, true, global4.c), global4.c)));
    global3 = array<u32, 28>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1786f, -865f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(global0.yx, vec2<f32>(-327f, global2[_wgslsmith_index_u32(69158u, 24u)])))), global0.zw))));
    var var_3 = Struct_2(firstTrailingBit(61732u), Struct_1(_wgslsmith_clamp_u32(14704u, _wgslsmith_dot_vec3_u32(vec3<u32>(35181u, 16959u, 4294967295u), u_input.b.yww) >> (u_input.b.x % 32u), 1u), global3[_wgslsmith_index_u32(50933u, 28u)], select(all(select(vec2<bool>(var_1.x, false), vec2<bool>(global4.c, true), true)), global4.c, true)), Struct_1(_wgslsmith_dot_vec3_u32(u_input.b.xyz, u_input.b.xzz | vec3<u32>(4294967295u, global4.b, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(80773u, 28u)], 28u)])) ^ _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(4294967295u, 4294967295u)), _wgslsmith_div_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(1u, 28u)], global4.a), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(15116u, 28u)], 28u)], global4.a))), ~40688u, all(select(select(vec4<bool>(false, true, global4.c, var_1.x), vec4<bool>(true, var_1.x, global4.c, var_1.x), vec4<bool>(global4.c, var_1.x, var_1.x, var_1.x)), select(vec4<bool>(true, false, var_1.x, false), vec4<bool>(false, global4.c, true, false), vec4<bool>(global4.c, false, true, var_1.x)), select(vec4<bool>(global4.c, false, false, true), vec4<bool>(global4.c, global4.c, false, global4.c), vec4<bool>(var_1.x, true, false, global4.c))))), Struct_1(_wgslsmith_div_u32(max(min(4294967295u, 40846u), 1u), u_input.c.x), abs(select(max(1u, u_input.c.x), u_input.c.x, all(var_1.zyz))), true), Struct_1(u_input.c.x, u_input.b.x << (0u % 32u), true & global4.c));
    return -2272f;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<u32>) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(firstTrailingBit(firstLeadingBit(~(global3[_wgslsmith_index_u32(arg_1.x, 28u)] | global4.a))) | 78391u, 28u)];
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(291f)))) - _wgslsmith_f_op_f32(max(-1726f, global0.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3()))), 1414f);
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-1216f - global0.x), _wgslsmith_f_op_f32(floor(-247f)), -1239f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1742f))));
    var_0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~arg_1.x, global3[_wgslsmith_index_u32(21954u, 28u)] | ~_wgslsmith_add_u32(16815u, global4.b)), 28u)];
    let var_2 = vec4<f32>(var_1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.x))))), global2[_wgslsmith_index_u32(global4.a, 24u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -986f)));
    return _wgslsmith_f_op_f32(-var_1.x);
}

fn func_1() -> bool {
    let var_0 = true;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(floor(-150f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(~(~vec4<u32>(global4.a, 11850u, 110125u, u_input.c.x)), _wgslsmith_sub_vec2_u32(~vec2<u32>(global4.b, 9522u), _wgslsmith_clamp_vec2_u32(vec2<u32>(global4.b, 1u), u_input.c, u_input.b.zz)))))), _wgslsmith_f_op_f32(f32(-1f) * -322f));
    let var_2 = Struct_3(u_input.b.zy & vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.b.xyw, vec3<u32>(u_input.b.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 28u)], 28u)], 0u)) >> ((global3[_wgslsmith_index_u32(global4.b, 28u)] | global4.b) % 32u), 61353u), ~(~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 65191u), u_input.b.wwx | u_input.b.yzy)));
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b.zz, vec2<u32>(global4.b, u_input.c.x)), var_2.a) ^ firstTrailingBit(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 2788u), 28u)]), 24u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(2037f, -1051f), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~4294967295u, 28u)], 24u)]))))));
    let var_4 = Struct_3(_wgslsmith_mult_vec2_u32(abs(var_2.a), var_2.a), firstTrailingBit(_wgslsmith_clamp_u32(~u_input.c.x, 4294967295u, countOneBits(abs(global3[_wgslsmith_index_u32(u_input.b.x, 28u)])))));
    return global4.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !any(!select(vec3<bool>(true, true, true), !vec3<bool>(global4.c, global4.c, global4.c), !vec3<bool>(false, global4.c, false)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-196f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-581f - global0.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1589f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))));
    var_0 = !(false != !func_1());
    let var_2 = global4.c;
    let var_3 = Struct_3(vec2<u32>(~(~global4.a) ^ ~(~global4.b), 1u), _wgslsmith_dot_vec2_u32(min(~firstTrailingBit(u_input.c), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c.x, 28u)], 28u)]), vec2<u32>(u_input.b.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(22140u, 28u)], 28u)])) | countOneBits(vec2<u32>(global4.a, 80415u))), u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(global3[_wgslsmith_index_u32(global4.b, 28u)], var_3.a.x)), 24u)])), 4294967295u, u_input.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_3.a.x, 28u)], 24u)], -669f))))) - global0.wy));
}

