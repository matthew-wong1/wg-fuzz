struct Struct_1 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(89672u, false), Struct_1(12352u, true), Struct_1(4294967295u, false), Struct_1(0u, true), Struct_1(12577u, false), Struct_1(1u, false), Struct_1(4294967295u, true), Struct_1(21991u, true), Struct_1(84604u, true), Struct_1(36973u, false));

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec3<f32>) -> u32 {
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, _wgslsmith_mult_u32(1u, countOneBits(global1.a)), global3.a))), 10u)];
    var var_0 = !vec2<bool>(true, global3.b);
    global2 = array<Struct_1, 10>();
    global0 = array<bool, 17>();
    let var_1 = Struct_1(1u, true);
    return max(var_1.a, 1u);
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    var var_0 = 1u <= _wgslsmith_mult_u32(global1.a, 0u | min(u_input.b.x, 4294967295u));
    var var_1 = !global0[_wgslsmith_index_u32(~(~abs(reverseBits(global3.a))), 17u)];
    let var_2 = 0i;
    var var_3 = arg_0;
    var_1 = true;
    return global2[_wgslsmith_index_u32(var_3.a, 10u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: i32) -> Struct_1 {
    var var_0 = arg_0;
    global0 = array<bool, 17>();
    var var_1 = 11232i;
    global2 = array<Struct_1, 10>();
    var var_2 = _wgslsmith_div_vec4_i32(firstLeadingBit(firstLeadingBit(~vec4<i32>(u_input.a, u_input.a, u_input.a, -1i))), vec4<i32>(firstLeadingBit(-18670i), ~_wgslsmith_mod_i32(arg_2, u_input.a >> (0u % 32u)), firstTrailingBit(2147483647i) >> ((~arg_1.x & ~14743u) % 32u), (-u_input.a & _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 1i))) << (var_0.a % 32u)));
    return arg_0;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: f32) -> vec4<u32> {
    let var_0 = vec3<i32>(-firstLeadingBit(u_input.a), u_input.a, _wgslsmith_sub_i32(32839i, u_input.a));
    var var_1 = _wgslsmith_div_u32(~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.a, 12460u, arg_1, global3.a), vec4<u32>(4294967295u, 1u, 0u, u_input.b.x)), 33424u), global3.a);
    global2 = array<Struct_1, 10>();
    let var_2 = func_4(func_3(Struct_1(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, 498f))), !global1.b && true)), vec3<u32>(_wgslsmith_div_u32(arg_1, global1.a), arg_1, 90578u) | u_input.b, 0i);
    let var_3 = var_2;
    return ~(~vec4<u32>(var_2.a, u_input.b.x, arg_1 << (_wgslsmith_mult_u32(arg_1, 63151u) % 32u), 56560u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(38861u);
    var var_1 = vec4<bool>(true, false, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(0i, -1i), u_input.a), -_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, -5186i), vec2<i32>(u_input.a, 0i), vec2<i32>(u_input.a, u_input.a))) <= u_input.a, !global1.b);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -429f));
    let var_3 = select(~(vec4<u32>(global1.a, u_input.b.x, 1u, u_input.b.x) & abs(vec4<u32>(u_input.b.x, 19988u, global3.a, global3.a))) | (~func_1(global3.b, global1.a, var_2) ^ ~(~vec4<u32>(u_input.b.x, global3.a, global1.a, 45882u))), firstTrailingBit(vec4<u32>(9611u, global3.a | 81181u, ~4294967295u, ~u_input.b.x)) ^ ~(~vec4<u32>(global3.a, 0u, 4294967295u, u_input.b.x)), all(!(!select(vec4<bool>(global1.b, global0[_wgslsmith_index_u32(global1.a, 17u)], true, global0[_wgslsmith_index_u32(global3.a, 17u)]), vec4<bool>(global3.b, true, global1.b, var_1.x), global1.b))));
    global2 = array<Struct_1, 10>();
    var var_4 = func_4(func_4(Struct_1(u_input.b.x, select(true, any(vec2<bool>(var_1.x, true)), all(var_1.wzx))), ~(~vec3<u32>(13565u, global1.a, global3.a) << (_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, global1.a, 1u), u_input.b) % vec3<u32>(32u))), 0i), reverseBits(_wgslsmith_add_vec3_u32(max(vec3<u32>(75972u, var_3.x, global1.a) | vec3<u32>(0u, 45590u, 0u), abs(var_3.wwy)), vec3<u32>(24564u, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x), u_input.b.x))), _wgslsmith_sub_i32((i32(-1i) * -u_input.a) & _wgslsmith_sub_i32(-1i, abs(1i)), -45717i & ~_wgslsmith_sub_i32(u_input.a, 0i)));
    var_4 = func_4(global2[_wgslsmith_index_u32(~global3.a, 10u)], abs(~_wgslsmith_clamp_vec3_u32(var_3.xyy >> (vec3<u32>(var_3.x, var_3.x, 0u) % vec3<u32>(32u)), var_3.xyy, func_1(var_1.x, 1u, var_2).ywy)), abs(u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1347f, var_2, -1013f, 1000f) * vec4<f32>(-1179f, -1000f, 206f, var_2)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_2, -1000f, var_2)))))), var_2, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1151f - -628f), _wgslsmith_f_op_f32(exp2(var_2))), var_2) - _wgslsmith_f_op_f32(938f * _wgslsmith_f_op_f32(f32(-1f) * -579f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(572f + _wgslsmith_f_op_f32(-var_2))));
}

