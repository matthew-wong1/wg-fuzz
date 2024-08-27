struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 8>;

var<private> global2: Struct_1 = Struct_1(vec3<i32>(-33255i, 13536i, -1i), false, 2147483647i);

var<private> global3: bool = false;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    let var_0 = vec3<u32>(~_wgslsmith_clamp_u32(~23933u, _wgslsmith_add_u32(1u, 47071u), _wgslsmith_mult_u32(u_input.b.x, 0u)), _wgslsmith_dot_vec3_u32(max(~vec3<u32>(1u, 63709u, 4294967295u), vec3<u32>(1u, u_input.b.x, 0u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(58476u, u_input.b.x, 4294967295u), vec3<u32>(7740u, 0u, u_input.b.x)), vec3<u32>(15991u, 0u, u_input.b.x), vec3<u32>(1425u, 4294967295u, u_input.b.x))), abs(20545u)) & ~countOneBits(~firstTrailingBit(vec3<u32>(10460u, u_input.b.x, 1u)));
    global2 = Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(i32(-1i) * -1i, 1i), global0.c, u_input.a), -global2.a, _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(2147483647i, 0i), u_input.a, 12903i << (1u % 32u)), vec3<i32>(global2.a.x, u_input.a, u_input.a) >> (~var_0 % vec3<u32>(32u)))), true, 2147483647i);
    return 1i << (0u % 32u);
}

fn func_2(arg_0: vec3<i32>, arg_1: bool, arg_2: f32, arg_3: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1529f);
    global3 = arg_3;
    let var_1 = Struct_1(vec3<i32>(global2.a.x, arg_0.x, _wgslsmith_sub_i32(1i, global2.a.x)), global2.b, abs(min(arg_0.x, ~u_input.a | 2147483647i)));
    let var_2 = _wgslsmith_f_op_f32(-1584f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))));
    var var_3 = Struct_1(max(arg_0, global2.a), ~(~(-2147483647i)) <= var_1.a.x, ~8155i);
    return -global2.a.x & firstTrailingBit(_wgslsmith_mod_i32(func_3(), u_input.a));
}

fn func_1() -> f32 {
    var var_0 = ~1u;
    let var_1 = 40315i >> (~u_input.b.x % 32u);
    global0 = global1[_wgslsmith_index_u32(u_input.b.x, 8u)];
    let var_2 = global1[_wgslsmith_index_u32(u_input.b.x, 8u)];
    var var_3 = _wgslsmith_add_i32(min(firstTrailingBit(46500i), var_2.c) & _wgslsmith_clamp_i32(1i, func_2(vec3<i32>(global0.a.x, var_2.a.x, u_input.a), 12467i < global2.c, _wgslsmith_f_op_f32(abs(735f)), true), global2.a.x), 1i);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(198f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-146f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1063f - 892f)))))));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec2<f32>) -> Struct_1 {
    global3 = global2.b;
    global2 = Struct_1(~(~vec3<i32>(-13145i ^ global0.a.x, -global2.a.x, ~(-2147483647i))), !(true || select(-1i != global0.c, true, global2.b)), 1i);
    let var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(0u, u_input.b.x, min(18140u, arg_0)), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 0u), vec3<u32>(2633u, 10424u, u_input.b.x)))), reverseBits(~vec3<u32>(~arg_0, 9066u >> (0u % 32u), 1u)));
    var var_1 = Struct_1(vec3<i32>(2147483647i, global0.c, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.a, global2.a.x, global2.c, u_input.a)), vec4<i32>(global2.a.x, u_input.a, 1i, -4250i) >> (vec4<u32>(4294967295u, arg_1, u_input.b.x, 4294967295u) % vec4<u32>(32u)))) ^ global2.a, true, 6818i);
    let var_2 = Struct_1(global0.a >> (~(min(var_0, vec3<u32>(4294967295u, 16240u, arg_1)) >> (var_0 % vec3<u32>(32u))) % vec3<u32>(32u)), all(vec4<bool>(!(var_1.a.x > 0i), !(true | global2.b), any(vec3<bool>(global0.b, false, true)), !select(var_1.b, global0.b, true))), 1i >> (1u % 32u));
    return global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0, ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1 ^ 0u, _wgslsmith_sub_u32(4294967295u, 112012u), ~u_input.b.x), vec3<u32>(1u, u_input.b.x & u_input.b.x, ~arg_1))), 8u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1[_wgslsmith_index_u32(u_input.b.x, 8u)];
    let var_0 = -(~(~firstLeadingBit(-39959i)));
    var var_1 = func_4(u_input.b.x, _wgslsmith_add_u32(~_wgslsmith_clamp_u32(~0u, 0u | u_input.b.x, u_input.b.x), abs(u_input.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-688f, 1448f), _wgslsmith_f_op_f32(func_1())) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1374f, 400f), vec2<f32>(-1000f, 1569f))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-244f, -595f), vec2<f32>(1837f, -117f)))))));
    let var_2 = global1[_wgslsmith_index_u32(max(1u, select((_wgslsmith_mod_u32(48731u, 53378u) << (~u_input.b.x % 32u)) ^ u_input.b.x, 4294967295u, !(!global0.b))), 8u)];
    var var_3 = false;
    var var_4 = global1[_wgslsmith_index_u32(~26340u, 8u)];
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(275f, 1f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -398f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1909f, -247f))), _wgslsmith_f_op_f32(floor(1646f))));
}

