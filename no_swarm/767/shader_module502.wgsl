struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: u32,
    c: Struct_2,
    d: vec2<bool>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 10> = array<vec4<bool>, 10>(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true));

var<private> global1: array<u32, 28>;

var<private> global2: i32;

var<private> global3: array<u32, 16>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: vec2<bool>) -> vec3<bool> {
    let var_0 = arg_0;
    global1 = array<u32, 28>();
    global2 = ~_wgslsmith_div_i32(_wgslsmith_mod_i32(reverseBits(30357i), u_input.a), -6637i);
    let var_1 = Struct_1(var_0.c.c.a, !vec2<bool>(_wgslsmith_f_op_f32(round(arg_0.a.x)) >= arg_0.a.x, true), vec3<u32>(firstLeadingBit(_wgslsmith_dot_vec3_u32(arg_0.c.b.c, ~var_0.c.b.c)), u_input.b.x, u_input.c.x));
    var var_2 = _wgslsmith_div_vec2_f32(var_0.a, arg_0.a);
    return select(vec3<bool>(!(41619u != ~u_input.c.x), arg_0.c.b.b.x, countOneBits(arg_0.c.a) >= (-var_0.c.a & reverseBits(arg_0.c.a))), arg_0.c.b.a.xzw, !(!var_0.c.c.a.yxy));
}

fn func_2() -> f32 {
    let var_0 = !(!func_3(Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(234f, -585f)), ~11229u, Struct_2(-1i, Struct_1(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 28u)], 10u)], vec2<bool>(true, false), vec3<u32>(u_input.b.x, 24650u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(44241u, 16u)], 16u)])), Struct_1(global0[_wgslsmith_index_u32(u_input.c.x, 10u)], vec2<bool>(false, false), vec3<u32>(global1[_wgslsmith_index_u32(1u, 28u)], global3[_wgslsmith_index_u32(u_input.c.x, 16u)], u_input.b.x))), vec2<bool>(true, true), 534f), vec2<bool>(true, true)));
    let var_1 = Struct_2(-2147483647i, Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], !var_0.yz, abs(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, 0u, 21820u), vec3<u32>(4294967295u, 25206u, u_input.b.x)), ~vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 16u)], 16u)], u_input.c.x, 32424u), vec3<u32>(13382u, 27254u, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(29251u, 16u)], 28u)])))), Struct_1(vec4<bool>(var_0.x, var_0.x, true, false), var_0.xz, countOneBits(abs(vec3<u32>(u_input.b.x, 61499u, 4294967295u)))));
    var var_2 = firstTrailingBit(abs(var_1.c.c));
    global3 = array<u32, 16>();
    let var_3 = Struct_1(vec4<bool>(func_3(Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1132f, -1561f)), abs(var_2.x), var_1, select(vec2<bool>(true, true), var_0.yx, false), _wgslsmith_f_op_f32(sign(-1416f))), var_0.zx).x, true, var_1.c.a.x, var_1.b.a.x), !var_0.yy, var_1.b.c);
    return -1350f;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_4) -> vec2<i32> {
    global1 = array<u32, 28>();
    let var_0 = arg_1.c;
    let var_1 = ~27228i ^ arg_0.b.x;
    var var_2 = 52785u << ((abs(firstLeadingBit(42224u)) & max(29970u, _wgslsmith_mult_u32(4294967295u, u_input.c.x))) % 32u);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(ceil(-1867f)))))));
    return _wgslsmith_div_vec2_i32(~arg_0.b & arg_0.b, arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-783f * -716f) - -472f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-657f * 192f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -506f), 240f))));
    global0 = array<vec4<bool>, 10>();
    var var_1 = -(~_wgslsmith_add_vec2_i32(vec2<i32>(~(-1i), u_input.a), func_1(Struct_3(0u, vec2<i32>(u_input.a, -1i), Struct_1(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 16u)], 10u)], vec2<bool>(false, true), vec3<u32>(1u, global1[_wgslsmith_index_u32(0u, 28u)], 73437u))), Struct_4(var_0.zy, global3[_wgslsmith_index_u32(4294967295u, 16u)], Struct_2(u_input.a, Struct_1(global0[_wgslsmith_index_u32(58882u, 10u)], vec2<bool>(true, true), vec3<u32>(0u, 1u, 27043u)), Struct_1(vec4<bool>(true, true, true, true), vec2<bool>(false, true), vec3<u32>(global1[_wgslsmith_index_u32(79505u, 28u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20794u, 28u)], 16u)], 28u)], 16u)], 28u)], u_input.c.x))), vec2<bool>(false, false), -1025f))));
    global1 = array<u32, 28>();
    let var_2 = !vec3<bool>(any(global0[_wgslsmith_index_u32(u_input.b.x, 10u)]), true, var_0.x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -385f) + _wgslsmith_f_op_f32(var_0.x + var_0.x)));
    var var_3 = var_2.yx;
    let var_4 = firstLeadingBit(~firstTrailingBit(~vec4<u32>(global3[_wgslsmith_index_u32(3294u, 16u)], 8484u, 71359u, 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(vec2<u32>(86868u, 11294u))), 1029f, -(~(-1i)), ~1i);
}

