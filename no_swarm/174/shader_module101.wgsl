struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: vec2<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9>;

var<private> global1: array<bool, 31>;

var<private> global2: Struct_2 = Struct_2(true, Struct_1(-1267f, false, false, vec2<bool>(false, false)), 73768u);

var<private> global3: i32 = 2147483647i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<bool>) -> i32 {
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(0u), u_input.a & (u_input.a & 11393u)), 31u)], Struct_1(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2.c, 3685u), 9u)])), !arg_1.x, !global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(global2.c, global2.c)), 31u)], vec2<bool>((global2.b.a >= global0[_wgslsmith_index_u32(u_input.a, 9u)]) | arg_1.x, true)), u_input.a);
    global1 = array<bool, 31>();
    global2 = Struct_2(false, Struct_1(_wgslsmith_f_op_f32(ceil(174f)), false, !(!(!arg_1.x)), vec2<bool>(_wgslsmith_f_op_f32(global2.b.a * -1492f) > global0[_wgslsmith_index_u32(min(1u, var_0.c), 9u)], true)), ~(~var_0.c));
    let var_1 = global2.b;
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1002f * global2.b.a) - 519f), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-var_0.b.a), arg_1.x)), -1675f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(680f, 1093f, global0[_wgslsmith_index_u32(72863u, 9u)])) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2.b.a, 1351f, 228f)))), vec3<f32>(var_1.a, _wgslsmith_div_f32(-1000f, -1272f), _wgslsmith_f_op_f32(-var_0.b.a)), true)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(328f, global0[_wgslsmith_index_u32(4294967295u, 9u)], -795f))) - vec3<f32>(var_1.a, global2.b.a, -1365f)))));
    return abs(i32(-1i) * -1i);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.b.a))), false, _wgslsmith_mult_i32(arg_3.x, func_3(~vec4<i32>(-1i, 0i, -38663i, 0i), select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 31u)], arg_2.b.c), vec2<bool>(global2.b.b, true), false))) >= (i32(-1i) * -16582i), vec2<bool>(select(global1[_wgslsmith_index_u32(arg_0.x, 31u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.yx, u_input.d.yx), 9u)] < _wgslsmith_f_op_f32(1466f - arg_2.b.a), !(!global1[_wgslsmith_index_u32(135296u, 31u)])), false));
    global2 = Struct_2(!(!all(var_0.d)), global2.b, reverseBits(reverseBits(~0u >> ((u_input.a >> (arg_0.x % 32u)) % 32u))));
    global2 = arg_2;
    global1 = array<bool, 31>();
    var var_1 = -38915i;
    return Struct_2(any(select(!vec4<bool>(false, true, global1[_wgslsmith_index_u32(global2.c, 31u)], false), !select(vec4<bool>(false, arg_2.a, true, true), vec4<bool>(false, false, true, arg_2.a), var_0.c), vec4<bool>(false, -476f < global0[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0.x, 52523u, global2.c), 31u)], !global1[_wgslsmith_index_u32(30910u, 31u)]))), Struct_1(arg_2.b.a, any(select(vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(global2.c, 31u)]), !vec4<bool>(var_0.c, var_0.b, arg_2.b.b, var_0.b), global2.a)), (-643f >= _wgslsmith_div_f32(var_0.a, global2.b.a)) | global2.b.b, select(arg_2.b.d, vec2<bool>(global1[_wgslsmith_index_u32(abs(1u), 31u)], -2147483647i != arg_1.x), vec2<bool>(global2.b.a > -507f, true))), ~abs(_wgslsmith_mod_u32(4294967295u, 1u)));
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: vec4<bool>) -> StorageBuffer {
    global0 = array<f32, 9>();
    let var_0 = func_2(u_input.d, reverseBits(firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(-32477i, arg_0, arg_0), vec3<i32>(arg_0, u_input.c.x, arg_0)))), arg_2, ~_wgslsmith_div_vec3_i32(-u_input.c.xxx >> (vec3<u32>(1u, u_input.a, 1u) % vec3<u32>(32u)), firstTrailingBit(abs(vec3<i32>(u_input.c.x, arg_0, arg_0)))));
    let var_1 = vec2<bool>(any(select(!(!arg_3.wx), !(!vec2<bool>(false, var_0.a)), vec2<bool>(true, true))), !(global1[_wgslsmith_index_u32(~arg_2.c, 31u)] & all(arg_3.zz)));
    global0 = array<f32, 9>();
    global1 = array<bool, 31>();
    return StorageBuffer(select(-2147483647i, -3437i, arg_2.c > _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.c, var_0.c), ~vec2<u32>(31818u, global2.c))), _wgslsmith_div_vec4_f32(arg_1, _wgslsmith_f_op_vec4_f32(arg_1 + vec4<f32>(-2486f, 1000f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 9u)]), _wgslsmith_f_op_f32(global2.b.a * global0[_wgslsmith_index_u32(4294967295u, 9u)])))), _wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(global2.b.a - 804f), !arg_3.x)), countOneBits(~(~vec2<i32>(u_input.b, -3880i))), ~(~vec2<u32>(~1225u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(false, Struct_1(915f, !(-u_input.b <= 52577i), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(_wgslsmith_mod_u32(26452u, 36624u)), global2.c), 31u)], !global2.b.d), abs(global2.c) ^ firstTrailingBit(1u));
    let var_1 = vec4<i32>(-1i, 1i, abs(u_input.c.x), u_input.b);
    global3 = _wgslsmith_mod_i32(var_1.x, var_1.x >> (30041u % 32u));
    let var_2 = false;
    var var_3 = _wgslsmith_mod_i32(u_input.e.x, -var_1.x);
    let var_4 = Struct_2(all(!(!vec2<bool>(true, var_0.a))), global2.b, ~(~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.d.xx, u_input.d.yz), u_input.d.zz)));
    let x = u_input.a;
    s_output = func_1(2147483647i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.a, 816f, var_0.b.a, 162f)))))), var_0, !select(!(!vec4<bool>(false, var_2, global1[_wgslsmith_index_u32(global2.c, 31u)], true)), vec4<bool>(var_0.a, var_2, any(vec3<bool>(var_4.a, true, var_0.b.d.x)), any(var_0.b.d)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(var_4.c, global2.c, 1u, var_4.c), vec4<u32>(u_input.d.x, global2.c, 27524u, 54303u)), ~vec4<u32>(4294967295u, 42902u, u_input.d.x, 0u)), 31u)]));
}

