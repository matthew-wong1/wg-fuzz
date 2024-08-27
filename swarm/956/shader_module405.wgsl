struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28>;

var<private> global1: vec4<u32>;

var<private> global2: array<u32, 10>;

var<private> global3: f32 = -437f;

var<private> global4: array<Struct_3, 6>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1() -> u32 {
    global1 = ~(~vec4<u32>(abs(~35096u), global1.x, global1.x, countOneBits(4294967295u)));
    global0 = array<i32, 28>();
    let var_0 = global1.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1273f, 630f, 598f, -1372f) + vec4<f32>(1651f, 1046f, 170f, -612f)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, 1239f, -1520f, 624f)))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1645f, -207f, -710f, -824f))))));
    global0 = array<i32, 28>();
    return _wgslsmith_dot_vec3_u32(global1.yxy, vec3<u32>(global1.x, _wgslsmith_sub_u32(u_input.a, global1.x << (_wgslsmith_mult_u32(global1.x, u_input.b.x) % 32u)), global2[_wgslsmith_index_u32(4294967295u, 10u)] << ((~global2[_wgslsmith_index_u32(4294967295u, 10u)] >> (global2[_wgslsmith_index_u32(~21419u, 10u)] % 32u)) % 32u)));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>) -> f32 {
    global3 = 151f;
    global2 = array<u32, 10>();
    var var_0 = vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -15889i), vec2<i32>(-2147483647i, arg_1.x)), _wgslsmith_sub_i32(arg_1.x, -26087i)), ~_wgslsmith_sub_i32(arg_1.x, -34890i), firstTrailingBit(select(global0[_wgslsmith_index_u32(8737u, 28u)], 1i, false)));
    global1 = ~(~countOneBits(firstTrailingBit(vec4<u32>(u_input.a, global1.x, 102563u, global1.x))) | (_wgslsmith_sub_vec4_u32(~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 95516u, 28656u, global2[_wgslsmith_index_u32(25710u, 10u)]), vec4<u32>(global2[_wgslsmith_index_u32(30106u, 10u)], 0u, 1u, 1u) | vec4<u32>(u_input.b.x, 30515u, global1.x, u_input.a)) ^ ~(vec4<u32>(27160u, 0u, u_input.b.x, u_input.a) << (vec4<u32>(18914u, u_input.a, u_input.a, global1.x) % vec4<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    return var_1;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> StorageBuffer {
    return StorageBuffer(arg_0.c, ~vec4<i32>(8616i, arg_0.a.x, _wgslsmith_mult_i32(_wgslsmith_add_i32(arg_1.a.x, -99147i), 2147483647i), -1i), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(999f, 1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-804f + -2034f), -446f))), _wgslsmith_f_op_f32(func_3(false, -vec4<i32>(2147483647i, arg_0.a.x, global0[_wgslsmith_index_u32(arg_1.b, 28u)], arg_0.a.x) << (vec4<u32>(arg_0.b, arg_0.b, arg_0.b, arg_1.c) % vec4<u32>(32u)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_2(Struct_1(~(~_wgslsmith_add_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(1u, 28u)], -1i, -1i), vec3<i32>(0i, global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(18281u, 10u)], 28u)]))), 9448u, ~reverseBits(~4294967295u)), Struct_1(~firstTrailingBit(abs(vec3<i32>(1i, -24296i, global0[_wgslsmith_index_u32(24417u, 28u)]))), _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(abs(~u_input.b.x), 10u)], 10u)], _wgslsmith_div_u32(u_input.b.x, 36715u), u_input.a), _wgslsmith_sub_u32(~global2[_wgslsmith_index_u32(global1.x, 10u)], func_1())), abs(firstLeadingBit(global1.x)), all(!vec3<bool>(-34817i == global0[_wgslsmith_index_u32(33945u, 28u)], true, all(vec2<bool>(true, false)))));
}

