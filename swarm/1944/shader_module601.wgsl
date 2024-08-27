struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec4<u32>,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<bool, 26>;

var<private> global2: u32;

var<private> global3: array<vec3<u32>, 1>;

var<private> global4: array<Struct_1, 12>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.xy + vec2<f32>(1000f, _wgslsmith_f_op_f32(-global0.x)))));
    var var_1 = Struct_2(firstTrailingBit(_wgslsmith_mult_vec2_i32(-(~arg_2.e.yx), u_input.c.xx)), Struct_1(arg_2.a, arg_2.b, ~_wgslsmith_add_vec4_u32(arg_2.c, _wgslsmith_div_vec4_u32(vec4<u32>(arg_2.d, 4294967295u, 12426u, u_input.b.x), arg_2.c)), arg_1.a.c.x, firstLeadingBit(_wgslsmith_mult_vec3_i32(arg_1.a.e, ~vec3<i32>(arg_2.e.x, 89593i, 0i)))), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a.x, arg_1.a.e.x), vec2<i32>(u_input.c.x, u_input.c.x)) != _wgslsmith_clamp_i32(abs(abs(u_input.a.x)), arg_1.a.e.x, u_input.a.x >> (arg_1.a.d % 32u)));
    var var_2 = arg_2.e.x;
    return arg_2.b.x;
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: u32) -> u32 {
    let var_0 = global4[_wgslsmith_index_u32(~arg_2, 12u)];
    let var_1 = select(!select(vec2<bool>(arg_0 && var_0.b.x, arg_0), vec2<bool>(var_0.c.x >= arg_2, var_0.a.x), var_0.a.yy), vec2<bool>(func_3(_wgslsmith_f_op_f32(-arg_1.x), Struct_3(global4[_wgslsmith_index_u32(48993u, 12u)]), Struct_1(vec4<bool>(arg_0, true, var_0.b.x, arg_0), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 26u)]), vec4<u32>(4294967295u, arg_2, 1153u, var_0.c.x), 4294967295u << (var_0.c.x % 32u), u_input.a.wwy)), true), false);
    global2 = var_0.d;
    global3 = array<vec3<u32>, 1>();
    let var_2 = ~(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, 0u, 1u), ~vec4<u32>(var_0.d, var_0.d, u_input.b.x, 1051u)) & ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 0u, 12345u, var_0.c.x), ~var_0.c));
    return u_input.b.x | ~48814u;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: f32, arg_3: f32) -> i32 {
    let var_0 = Struct_3(Struct_1(!arg_1.a.a, !vec2<bool>(!arg_1.a.a.x, all(vec4<bool>(arg_0.b.b.x, arg_1.a.b.x, false, true))), arg_1.a.c, func_2(any(vec4<bool>(arg_0.c, true, arg_0.b.a.x, global1[_wgslsmith_index_u32(1u, 26u)])), global0.zz, countOneBits(~0u)), vec3<i32>(abs(abs(1i)), ~2147483647i, -29046i)));
    var var_1 = arg_0;
    let var_2 = vec2<bool>(!all(vec2<bool>(arg_3 <= 878f, !arg_1.a.a.x)), true);
    global0 = vec3<f32>(arg_2, 809f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(3489f, arg_2))) - arg_3))));
    return ~10851i;
}

fn func_1(arg_0: vec3<u32>) -> vec4<i32> {
    global3 = array<vec3<u32>, 1>();
    let var_0 = (global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(u_input.b.x), 27648u), 26u)] && true) == global1[_wgslsmith_index_u32(61775u, 26u)];
    global4 = array<Struct_1, 12>();
    let var_1 = -2255f;
    global3 = array<vec3<u32>, 1>();
    return vec4<i32>(max(-48128i, i32(-1i) * -(~0i)), u_input.a.x, countOneBits(_wgslsmith_add_i32(u_input.c.x, i32(-1i) * -1i)), func_4(Struct_2(u_input.c.zx, Struct_1(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 26u)], true, true, global1[_wgslsmith_index_u32(1u, 26u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(18898u, 26u)], false, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 26u)], var_0, true, global1[_wgslsmith_index_u32(u_input.b.x, 26u)])), !vec2<bool>(var_0, global1[_wgslsmith_index_u32(u_input.b.x, 26u)]), abs(vec4<u32>(u_input.b.x, u_input.b.x, arg_0.x, 1u)), func_2(false, global0.xy, 8372u), u_input.a.xyz & vec3<i32>(u_input.c.x, u_input.a.x, u_input.c.x)), true), Struct_3(global4[_wgslsmith_index_u32(1u, 12u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1752f, -2224f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -2277f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(248f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(global0.x * -738f))) * _wgslsmith_f_op_f32(global0.x - -1223f)) * -2159f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -1613f)));
    let var_0 = Struct_4(reverseBits(_wgslsmith_dot_vec4_i32(min(func_1(global3[_wgslsmith_index_u32(u_input.b.x, 1u)]), _wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, 2147483647i, -7933i, u_input.c.x))), u_input.a)), Struct_1(vec4<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(0u, 48560u), 4294967295u), 26u)], select(!global1[_wgslsmith_index_u32(u_input.b.x, 26u)], true, global1[_wgslsmith_index_u32(u_input.b.x, 26u)]), false), select(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 26u)], global1[_wgslsmith_index_u32(9098u, 26u)]), select(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 26u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 26u)], global1[_wgslsmith_index_u32(u_input.b.x, 26u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 26u)], global1[_wgslsmith_index_u32(1u, 26u)])), true), select(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 26u)], global1[_wgslsmith_index_u32(u_input.b.x, 26u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 26u)], true), vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 26u)])), vec2<bool>(true, true), vec2<bool>(true, true)), global1[_wgslsmith_index_u32(57456u, 26u)] & true), ~min(firstLeadingBit(vec4<u32>(u_input.b.x, 0u, u_input.b.x, 52018u)), ~vec4<u32>(1u, 28565u, 49478u, 1u)), ~(~_wgslsmith_add_u32(37761u, 56470u)), firstTrailingBit(_wgslsmith_add_vec3_i32(u_input.a.xzx, vec3<i32>(u_input.c.x, u_input.a.x, 20436i)))));
    let var_1 = var_0.b.e.x;
    let var_2 = true;
    global1 = array<bool, 26>();
    let var_3 = var_2;
    global3 = array<vec3<u32>, 1>();
    global1 = array<bool, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(~abs(var_0.b.c), global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(884f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1017f, 1713f), _wgslsmith_f_op_f32(-global0.x))), -1138f)), i32(-1i) * -2147483647i, vec2<u32>(_wgslsmith_mod_u32(~4294967295u, u_input.b.x), ~(~(~52282u))));
}

