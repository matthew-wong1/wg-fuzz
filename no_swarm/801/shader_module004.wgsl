struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4> = array<u32, 4>(1u, 0u, 17017u, 39507u);

var<private> global1: array<Struct_3, 15>;

var<private> global2: u32;

var<private> global3: Struct_3;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = global3.b;
    let var_1 = !global3.a;
    global3 = Struct_3(!(!vec3<bool>(true, global3.c, true)), Struct_2(max(vec3<u32>(~global3.b.a.x, 1u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.a.x, 103988u), ~vec3<u32>(1u, 1u, u_input.d), firstLeadingBit(global3.b.a))), arg_0, !any(!vec2<bool>(false, var_0.d)), var_1.x | !(422f > global3.b.b.b)), true);
    let var_2 = !(abs(global3.b.a.x << (4294967295u % 32u)) == _wgslsmith_add_u32(global3.b.a.x & max(u_input.c, var_0.a.x), _wgslsmith_sub_u32(_wgslsmith_mult_u32(23596u, u_input.c), ~78889u)));
    var var_3 = global3.c;
    return !(!all(global3.a.zz) && false) | var_1.x;
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_1 {
    let var_0 = 191f;
    global1 = array<Struct_3, 15>();
    var var_1 = Struct_1(abs(_wgslsmith_div_vec3_i32(vec3<i32>(0i, -2147483647i, ~arg_1), _wgslsmith_add_vec3_i32(-vec3<i32>(-1i, -1i, 54005i), vec3<i32>(global3.b.b.a.x, 1i, arg_1)))), 1848f, !func_3(Struct_1(_wgslsmith_sub_vec3_i32(global3.b.b.a, vec3<i32>(0i, 81811i, global3.b.b.a.x)), _wgslsmith_f_op_f32(sign(111f)), !arg_0, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1065f, var_0)))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(trunc(global3.b.b.b))) - _wgslsmith_f_op_f32(floor(global3.b.b.b))));
    let var_2 = var_1.a.yz;
    var var_3 = true && !any(!select(vec3<bool>(arg_0, false, global3.c), global3.a, global3.a));
    return global3.b.b;
}

fn func_1(arg_0: Struct_3, arg_1: i32) -> Struct_1 {
    let var_0 = !(!vec3<bool>(true, select(any(global3.a), select(true, false, global3.c), true), true));
    global0 = array<u32, 4>();
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(30986u, ~firstTrailingBit(arg_0.b.a.x)), 4u)];
    var var_1 = _wgslsmith_div_u32(125773u, _wgslsmith_sub_u32(~global3.b.a.x, firstTrailingBit(~4294967295u)));
    var var_2 = global3.b.b.a.x >> (min(1u, abs((arg_0.b.a.x << (arg_0.b.a.x % 32u)) >> (56179u % 32u))) % 32u);
    return func_2(global3.a.x, _wgslsmith_div_i32(48811i, arg_1));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_4) -> Struct_2 {
    var var_0 = global3.b.b.a.x >> (0u % 32u);
    var var_1 = vec2<f32>(_wgslsmith_div_f32(arg_1.b.b, arg_0.b), global3.b.b.b);
    global3 = Struct_3(vec3<bool>(global3.c, any(!(!global3.a.yy)), false), global3.b, true);
    var var_2 = _wgslsmith_f_op_f32(min(arg_1.b.b, arg_0.b));
    var var_3 = countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(~firstTrailingBit(arg_1.a.x), abs(_wgslsmith_add_u32(global3.b.a.x, 4294967295u)), arg_1.a.x, ~global3.b.a.x), _wgslsmith_clamp_vec4_u32(~min(vec4<u32>(31780u, arg_2.b, arg_1.a.x, 0u), vec4<u32>(4294967295u, arg_2.b, 0u, u_input.b.x)), abs(vec4<u32>(1u, 36998u, 49160u, 36271u)), select(vec4<u32>(39056u, arg_1.a.x, 4294967295u, arg_2.b) & vec4<u32>(24997u, arg_2.b, 4294967295u, arg_2.b), _wgslsmith_sub_vec4_u32(vec4<u32>(7249u, global0[_wgslsmith_index_u32(global3.b.a.x, 4u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25088u, 4u)], 4u)], 1u), vec4<u32>(global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(74488u, 4u)], arg_1.a.x, global3.b.a.x)), arg_2.a)), countOneBits(vec4<u32>(47073u, arg_2.b, arg_1.a.x, 52169u) & ~vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(arg_1.a.x, 4u)], arg_2.b, 0u))));
    return global3.b;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global0[_wgslsmith_index_u32(1u, 4u)];
    var var_0 = func_4(func_1(global1[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x), 15u)], ~2147483647i), global3.b, Struct_4(global3.c, _wgslsmith_dot_vec3_u32(~global3.b.a, _wgslsmith_mult_vec3_u32(global3.b.a, vec3<u32>(u_input.b.x, 1u, 31194u)))));
    global2 = 4294967295u;
    var var_1 = _wgslsmith_f_op_f32(trunc(func_1(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(4294967295u, 4u)], 5765u), 15u)], -32236i).b));
    var var_2 = var_0.c;
    let var_3 = abs(global3.b.b.a.x);
    let var_4 = global3.a.zx;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.b.b.b + 1158f), -1346f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_0.b.b)), -731f)) * var_0.b.b), -1638f));
}

