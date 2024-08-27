struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<u32>,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_2,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: Struct_4 = Struct_4(Struct_2(vec2<u32>(1u, 6287u), Struct_1(vec4<u32>(1u, 4294967295u, 23209u, 0u), true), vec3<u32>(4294967295u, 1u, 18291u), 475f, 262f), vec4<bool>(false, true, true, false));

var<private> global2: f32 = -1203f;

var<private> global3: Struct_4;

var<private> global4: array<vec2<f32>, 4> = array<vec2<f32>, 4>(vec2<f32>(-949f, -386f), vec2<f32>(1656f, -1065f), vec2<f32>(-383f, -1154f), vec2<f32>(-1000f, -1529f));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2() -> Struct_1 {
    return global1.a.b;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-global3.a.d), -517f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -837f), 1000f);
    var var_2 = -40656i;
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d + _wgslsmith_div_f32(var_1.x, 185f))), global1.a.d);
    return arg_1.b;
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2) -> u32 {
    let var_0 = firstTrailingBit(firstLeadingBit(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b.x, u_input.d, u_input.b.x, u_input.b.x), _wgslsmith_sub_vec4_i32(vec4<i32>(4125i, u_input.d, 70753i, u_input.d), _wgslsmith_add_vec4_i32(vec4<i32>(0i, 3124i, u_input.b.x, 4037i), vec4<i32>(u_input.b.x, 46621i, u_input.b.x, u_input.d))))));
    global0 = global3.a.b.a.x;
    var var_1 = _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.b << (abs(vec4<u32>(46764u, 1u, 4294967295u, global3.a.b.a.x)) % vec4<u32>(32u)), vec4<i32>(-2147483647i, var_0, 2147483647i, 29103i) >> (firstLeadingBit(global1.a.b.a) % vec4<u32>(32u))) << (global1.a.b.a % vec4<u32>(32u)), abs(u_input.b));
    let var_2 = ~global1.a.b.a.x;
    let var_3 = select(!global1.b.wyz, global1.b.zyz, !select(select(select(global3.b.xxw, vec3<bool>(global3.a.b.b, false, false), global3.b.xyz), select(global3.b.wzw, global3.b.yzw, global3.a.b.b), global1.b.xww), vec3<bool>(arg_1.b.b, var_0 > 15710i, true), select(global1.b.xyy, vec3<bool>(false, true, false), true)));
    return ~firstTrailingBit(50753u);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: bool) -> vec2<bool> {
    var var_0 = global1.a.b.b;
    var var_1 = Struct_2(global3.a.c.xx, global3.a.b, _wgslsmith_div_vec3_u32(global1.a.b.a.xwy, global1.a.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1380f, arg_1.x)) * -1256f) - _wgslsmith_f_op_f32(ceil(global3.a.d)))), -473f);
    var var_2 = Struct_1(var_1.b.a, func_1(Struct_3(Struct_1(~vec4<u32>(30242u, global3.a.a.x, var_1.b.a.x, global3.a.a.x), true), func_1(Struct_3(Struct_1(global1.a.b.a, true), Struct_1(var_1.b.a, true), var_1.b.b, u_input.b.x), global3.a), true, -(22482i << (0u % 32u))), Struct_2(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, global3.a.b.a.x), ~var_1.b.a.zw), var_1.b, vec3<u32>(firstTrailingBit(1u), ~global1.a.c.x, global1.a.a.x), _wgslsmith_f_op_f32(select(204f, -1183f, var_1.b.b | global3.a.b.b)), var_1.d)).b);
    let var_3 = arg_0.x;
    var var_4 = ~firstTrailingBit(vec2<u32>(_wgslsmith_clamp_u32(4294967295u, 0u, global1.a.a.x), 5033u) | reverseBits(select(vec2<u32>(var_1.b.a.x, global1.a.b.a.x), var_1.b.a.ww, vec2<bool>(var_2.b, true))));
    return vec2<bool>(true, all(global1.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(select(global1.b.xw, global3.b.wz, !(!select(global1.b.wy, vec2<bool>(global3.a.b.b, true), false))));
    let var_1 = func_1(Struct_3(global1.a.b, global3.a.b, global1.b.x, _wgslsmith_sub_i32(u_input.d, ~u_input.d)), global1.a);
    var var_2 = func_4(u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.d, 124f, -1318f, 955f) - vec4<f32>(-1315f, global1.a.d, global3.a.e, -1776f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.e, -1362f, 1075f, global3.a.d))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1527f, 1613f, global1.a.e, -1110f), vec4<f32>(global3.a.d, global3.a.e, -745f, global1.a.d))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-655f, -768f, -1481f, global3.a.d) - vec4<f32>(global3.a.d, -780f, -1575f, global1.a.e)))))), 54147u == _wgslsmith_div_u32(func_3(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 0u), global3.a.a), Struct_2(vec2<u32>(1u, global3.a.a.x), global1.a.b, vec3<u32>(var_1.a.x, 30069u, 4294967295u), -216f, 653f)), (0u ^ var_1.a.x) << (var_1.a.x % 32u)));
    global0 = ~abs(1u) >> (global1.a.c.x % 32u);
    var var_3 = global4[_wgslsmith_index_u32(~global3.a.a.x, 4u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, vec3<u32>(var_1.a.x, select(1u, firstLeadingBit(global1.a.b.a.x), any(!vec3<bool>(var_1.b, false, var_0))), var_1.a.x), abs(0i));
}

