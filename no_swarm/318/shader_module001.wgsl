struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: Struct_3,
    d: Struct_2,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24> = array<bool, 24>(false, false, true, true, true, true, true, false, false, true, false, false, true, true, true, false, false, false, false, false, true, false, false, false);

var<private> global1: array<vec4<f32>, 22>;

var<private> global2: Struct_3 = Struct_3(Struct_2(vec4<bool>(true, true, false, true), Struct_1(-1167f, -124f, vec3<i32>(-40834i, -30550i, -15208i), vec2<f32>(-858f, -565f), -1i)), 65110i);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -403f);
    return _wgslsmith_div_u32(abs(u_input.c.x), 59429u);
}

fn func_2(arg_0: vec2<u32>, arg_1: f32, arg_2: u32) -> Struct_3 {
    var var_0 = 334f;
    var var_1 = global0[_wgslsmith_index_u32(func_3(global2.a.b), 24u)] | !any(vec3<bool>(any(vec4<bool>(true, global0[_wgslsmith_index_u32(arg_0.x, 24u)], global2.a.a.x, true)), !global2.a.a.x, global0[_wgslsmith_index_u32(arg_2, 24u)]));
    global2 = Struct_3(Struct_2(global2.a.a, global2.a.b), max(_wgslsmith_clamp_i32(2147483647i ^ global2.b, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.a.b.c.x, 1i, -2982i, u_input.b.x), -vec4<i32>(global2.a.b.e, global2.b, global2.a.b.c.x, -2147483647i)), _wgslsmith_add_i32(min(54413i, u_input.a), -2147483647i)), -17442i));
    let var_2 = -u_input.a;
    var_1 = any(vec3<bool>(!global2.a.a.x, global2.a.a.x, any(select(vec3<bool>(global0[_wgslsmith_index_u32(arg_2, 24u)], global2.a.a.x, global0[_wgslsmith_index_u32(arg_0.x, 24u)]), global2.a.a.wxw, global0[_wgslsmith_index_u32(9672u, 24u)])))) || (any(select(!vec3<bool>(false, global0[_wgslsmith_index_u32(6275u, 24u)], global2.a.a.x), !vec3<bool>(global2.a.a.x, true, false), global2.a.a.xzx)) && global0[_wgslsmith_index_u32(27183u, 24u)]);
    return Struct_3(Struct_2(!global2.a.a, Struct_1(1761f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.a.b.b))), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, global2.b, global2.b), select(global2.a.b.c, global2.a.b.c, vec3<bool>(true, global0[_wgslsmith_index_u32(arg_0.x, 24u)], global2.a.a.x))), vec2<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -281f)), abs(~global2.a.b.e))), ~(-23642i));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: i32, arg_3: u32) -> Struct_2 {
    global2 = func_2(abs(u_input.c.xy), arg_1, ~(~arg_3));
    global2 = func_2(~(u_input.c.yy ^ u_input.c.yz), _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-arg_1)), u_input.c.x);
    let var_0 = min(_wgslsmith_dot_vec2_i32(func_2(abs(~vec2<u32>(u_input.c.x, u_input.c.x)), arg_0.b.a, ~4946u | arg_3).a.b.c.xz, vec2<i32>(-1i) * -vec2<i32>(u_input.a, u_input.a)), abs(u_input.a) >> (min(arg_3, u_input.c.x) % 32u));
    var var_1 = global2.a.b;
    var var_2 = global2.a;
    return Struct_2(vec4<bool>(true, !(~arg_3 <= u_input.c.x), true, false), Struct_1(arg_1, 1433f, firstTrailingBit(vec3<i32>(var_0, 1i, 2147483647i)) << (_wgslsmith_div_vec3_u32(u_input.c, _wgslsmith_sub_vec3_u32(vec3<u32>(10725u, 30328u, arg_3), vec3<u32>(107763u, 0u, u_input.c.x))) % vec3<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(min(global2.a.b.d.x, _wgslsmith_f_op_f32(trunc(1218f)))), var_2.b.d.x), 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_3(func_1(global2.a, 1f, u_input.a, _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.c.x << (31352u % 32u), u_input.c.x), _wgslsmith_sub_u32(u_input.c.x, ~4294967295u))), -(-26486i ^ u_input.a));
    global1 = array<vec4<f32>, 22>();
    global0 = array<bool, 24>();
    let var_0 = ~vec2<u32>(4294967295u, u_input.c.x);
    global1 = array<vec4<f32>, 22>();
    let var_1 = vec3<f32>(global2.a.b.d.x, _wgslsmith_f_op_f32(round(global2.a.b.a)), global2.a.b.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-_wgslsmith_sub_i32(0i, global2.a.b.c.x), -1i, 11738i & global2.a.b.e) ^ -(global2.a.b.c & max(global2.a.b.c, global2.a.b.c)));
}

