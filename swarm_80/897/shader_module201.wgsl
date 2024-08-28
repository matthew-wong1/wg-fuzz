struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: i32,
    d: f32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27>;

var<private> global1: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global2: array<Struct_1, 9>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<i32>) -> vec3<i32> {
    let var_0 = global1.yzy;
    global2 = array<Struct_1, 9>();
    global2 = array<Struct_1, 9>();
    global2 = array<Struct_1, 9>();
    let var_1 = arg_2;
    return reverseBits(_wgslsmith_clamp_vec3_i32(arg_3.wyw, vec3<i32>((u_input.a & arg_2.b.x) & -arg_1.c, 3254i, ~arg_3.x & reverseBits(var_1.c)), vec3<i32>(-24945i | arg_3.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 1i, 36869i), vec3<i32>(0i, arg_1.c, 14858i)), _wgslsmith_dot_vec3_i32(arg_3.xyz, arg_3.xzw)) >> (var_1.e.zxy % vec3<u32>(32u))));
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: vec3<i32>) -> vec3<f32> {
    var var_0 = ~((u_input.b.x ^ ~(~13203u)) ^ u_input.b.x);
    let var_1 = Struct_1(!arg_1, _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(8031i, arg_0.x), arg_2.zz), arg_2.zx) | -reverseBits(arg_0), abs(-12297i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2038f)), vec4<u32>(1010u, global0[_wgslsmith_index_u32(0u, 27u)], 4294967295u << (u_input.b.x % 32u), _wgslsmith_dot_vec3_u32(u_input.b.xyw, firstTrailingBit(vec3<u32>(25286u, global0[_wgslsmith_index_u32(u_input.b.x, 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)])))));
    global2 = array<Struct_1, 9>();
    var_0 = 0u;
    global0 = array<u32, 27>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.d, var_1.d)), _wgslsmith_f_op_f32(-331f + _wgslsmith_f_op_f32(var_1.d + var_1.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.d, var_1.d, global1.x)) - _wgslsmith_f_op_f32(abs(var_1.d)))), vec3<f32>(var_1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -240f) + var_1.d), _wgslsmith_f_op_f32(f32(-1f) * -1047f)))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(func_4(vec2<i32>(_wgslsmith_div_i32(abs(u_input.a), u_input.a), arg_1.c), global1.x, ~(-func_3(_wgslsmith_add_vec3_u32(u_input.b.ywx, vec3<u32>(arg_1.e.x, u_input.b.x, global0[_wgslsmith_index_u32(0u, 27u)])), Struct_1(false, vec2<i32>(0i, arg_1.c), u_input.a, 1280f, u_input.b), arg_1, vec4<i32>(u_input.a, u_input.a, -29850i, u_input.a)))));
}

fn func_5(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_1(all(select(select(!vec4<bool>(global1.x, global1.x, false, true), !vec4<bool>(true, false, false, global1.x), 1248f < arg_0.x), !select(vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(true, true, false, true), vec4<bool>(global1.x, global1.x, true, true)), _wgslsmith_f_op_f32(trunc(arg_0.x)) <= _wgslsmith_f_op_f32(abs(arg_0.x)))), vec2<i32>(_wgslsmith_sub_i32(-(248i >> (global0[_wgslsmith_index_u32(10223u, 27u)] % 32u)), -u_input.a), -(~(~3722i))), ~(-select(29949i & u_input.a, select(-2147483647i, 1i, false), all(vec3<bool>(true, global1.x, global1.x)))), _wgslsmith_f_op_f32(-arg_0.x), vec4<u32>(22518u, ~(~(1u ^ global0[_wgslsmith_index_u32(u_input.b.x, 27u)])), reverseBits(83937u), ~(~countOneBits(u_input.b.x))));
    let var_1 = var_0;
    global0 = array<u32, 27>();
    let var_2 = ~var_1.e.x;
    let var_3 = _wgslsmith_f_op_f32(round(-1068f));
    return var_0;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: Struct_1) -> vec2<i32> {
    global2 = array<Struct_1, 9>();
    let var_0 = func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(247f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.d + arg_2.d))), -2273f) - _wgslsmith_f_op_vec3_f32(func_2(select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.b.x, 31496u), all(global1.xzz)), Struct_1(global1.x, vec2<i32>(arg_1.x, arg_1.x), arg_1.x ^ -30738i, 216f, ~u_input.b)))));
    var var_1 = ~(-1i) == _wgslsmith_add_i32(arg_2.b.x << (1u % 32u), u_input.a);
    let var_2 = _wgslsmith_add_i32(1i, arg_1.x | var_0.b.x);
    var var_3 = _wgslsmith_div_vec2_i32(vec2<i32>(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2, arg_2.c, var_2), ~vec3<i32>(var_0.c, -8352i, 16078i))), firstTrailingBit(-23881i)), ~select(var_0.b, max(arg_2.b, firstLeadingBit(var_0.b)), var_0.a));
    return _wgslsmith_sub_vec2_i32(max(func_5(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(156f, -309f, -629f))))).b, _wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.a, arg_1.x), var_0.b)), _wgslsmith_sub_vec2_i32(arg_2.b, vec2<i32>((i32(-1i) * -30140i) ^ arg_2.b.x, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.x, -28102i, -21065i), vec3<i32>(u_input.a, arg_2.c, -1i)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.b.x, u_input.a, -2147483647i), vec3<i32>(-1i, -2147483647i, var_3.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global1.x, _wgslsmith_add_vec2_i32(select(select(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 0i)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)), !global1.wy), func_1(~vec2<u32>(u_input.b.x, global0[_wgslsmith_index_u32(1u, 27u)]), vec2<i32>(u_input.a, 12284i), global2[_wgslsmith_index_u32(1u, 9u)]), u_input.a < -u_input.a), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, max(1i, u_input.a)), ~(-vec2<i32>(-39971i, u_input.a)))), func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1148f, -1000f, -1122f)))).b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(vec3<f32>(226f, -369f, -1000f)).d * -394f), 308f)), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(select(var_0.d, _wgslsmith_f_op_f32(-var_0.d), any(select(vec3<bool>(true, true, false), global1.xxx, global1.zyy)))), func_5(vec3<f32>(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(select(var_0.d, -348f, global1.x)), _wgslsmith_f_op_vec3_f32(func_4(var_0.b, true, vec3<i32>(var_0.b.x, 2147483647i, 9927i))).x)).d, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -292f), -106f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1107f * 2023f))), var_0.d));
}

