struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 24>;

var<private> global1: array<f32, 15>;

var<private> global2: Struct_2;

var<private> global3: array<bool, 22>;

var<private> global4: vec4<bool>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: vec2<bool>) -> f32 {
    let var_0 = arg_0.d.x;
    var var_1 = Struct_2(Struct_1(!(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0.b.x, 1u, 670u), 22u)] || global2.b.a), global2.a.b), Struct_1(arg_0.a, arg_0.c.yx));
    let var_2 = firstTrailingBit(_wgslsmith_add_vec4_i32(~_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.b, -2147483647i, var_1.b.b.x), vec4<i32>(0i, 0i, var_0, u_input.d.x)), ~vec4<i32>(u_input.b, u_input.b, global2.a.b.x, 1i), vec4<i32>(66575i, u_input.d.x, global2.a.b.x, global2.a.b.x)), _wgslsmith_add_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(-41831i, arg_0.d.x, u_input.b, 1i), vec4<i32>(arg_0.c.x, 1i, -2147483647i, 33235i)), vec4<i32>(~u_input.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.c.x, 1i), arg_0.d.xy), 102512i, 0i))));
    let var_3 = Struct_2(Struct_1(countOneBits(~u_input.b) == ~reverseBits(global2.b.b.x), vec2<i32>(_wgslsmith_div_i32(~var_0, _wgslsmith_div_i32(var_1.b.b.x, -29316i)), var_2.x)), global2.b);
    var var_4 = _wgslsmith_add_vec3_i32(countOneBits(firstTrailingBit(_wgslsmith_clamp_vec3_i32(~arg_0.d, arg_0.c, global0[_wgslsmith_index_u32(0u, 24u)]))), firstTrailingBit(vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0, var_0, arg_0.d.x), var_2.wwz)), -2147483647i, ~(-204i))));
    return global1[_wgslsmith_index_u32(~(~(~30010u)), 15u)];
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: f32) -> Struct_3 {
    let var_0 = vec3<bool>(any(vec4<bool>(all(vec4<bool>(global4.x, global3[_wgslsmith_index_u32(u_input.c.x, 22u)], global4.x, global4.x)), global2.b.a, global2.a.a, true)), true, true);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(false, vec2<u32>(u_input.e, 1u), u_input.d, vec3<i32>(2147483647i, -1i, global2.a.b.x)), false, var_0.yx)) + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 15u)])), 339f), u_input.c.xw & vec2<u32>(abs(_wgslsmith_mod_u32(1u, u_input.e)), u_input.e), vec3<i32>(arg_1, _wgslsmith_dot_vec4_i32(~abs(vec4<i32>(u_input.b, 23276i, -67110i, global2.a.b.x)), vec4<i32>(countOneBits(arg_1), -60173i, u_input.d.x, -45656i)), global2.b.b.x), ~(~(-vec3<i32>(u_input.b, arg_1, 2147483647i) & vec3<i32>(-5740i, -1i, 16785i))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(select(var_1.b.x, min(53303u, 4294967295u), true), 15u)]))), 1551f);
    var_1 = Struct_3(true, u_input.c.wx, ~vec3<i32>(~(-40194i), abs(abs(var_1.c.x)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.d.x, u_input.b, u_input.d.x, arg_1), vec4<i32>(-2147483647i, u_input.d.x, u_input.d.x, u_input.b))), global0[_wgslsmith_index_u32(~4294967295u, 24u)]);
    let var_3 = Struct_3(global4.x, countOneBits(abs(var_1.b)), firstTrailingBit(vec3<i32>(-1i, _wgslsmith_clamp_i32(-30151i, global2.b.b.x, -1i), -44159i)), max(_wgslsmith_sub_vec3_i32(-vec3<i32>(arg_1, global2.b.b.x, 0i), ~abs(var_1.d)), vec3<i32>(abs(global2.b.b.x ^ u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(-25071i, global2.b.b.x, 2147483647i), var_1.d) << ((var_1.b.x >> (86627u % 32u)) % 32u), 2147483647i)));
    return var_3;
}

fn func_1() -> Struct_3 {
    return func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(808f, 351f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global1[_wgslsmith_index_u32(49741u, 15u)]))))), u_input.d.x, 532f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec2_u32(~(~vec2<u32>(_wgslsmith_clamp_u32(38809u, 0u, u_input.c.x), 42295u)), ~firstLeadingBit(_wgslsmith_mod_vec2_u32(u_input.c.xz, ~vec2<u32>(u_input.e, u_input.a))));
    global3 = array<bool, 22>();
    let var_1 = !(!(_wgslsmith_mult_u32(42003u, 1u) < (32283u << (~var_0.x % 32u))));
    let var_2 = func_1();
    let var_3 = ~abs(u_input.d.zz);
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.e), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(var_0.x, 15u)]))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1[_wgslsmith_index_u32(737u, 15u)], 1612f), vec2<f32>(-932f, 1000f))))))), reverseBits(vec2<i32>(-1i) * -var_2.d.zx), _wgslsmith_mod_vec2_u32(~(~u_input.c.wy), abs(abs(~var_2.b))));
}

