struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: bool;

var<private> global2: vec4<bool>;

var<private> global3: Struct_2;

var<private> global4: array<vec4<bool>, 10>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: vec2<u32>) -> f32 {
    global0 = Struct_2(global3.a, ~select(~1u, _wgslsmith_div_u32(0u, _wgslsmith_add_u32(arg_1.x, 13473u)), !(!global2.x)), Struct_1(!(!(!global4[_wgslsmith_index_u32(4294967295u, 10u)]))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(global3.d.x)))), -667f, _wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.x) * _wgslsmith_f_op_f32(-global3.d.x))), global0.d, any(select(vec2<bool>(global2.x, false), !global2.xx, global0.c.a.yy)))));
    global4 = array<vec4<bool>, 10>();
    let var_0 = true;
    var var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(arg_0 | ~(-24632i), _wgslsmith_div_i32(-28340i, u_input.a.x)), -(~_wgslsmith_div_i32(arg_0, 10265i)), arg_0, 2147483647i), abs(abs(~vec4<i32>(0i, -16949i, u_input.a.x, -29407i) << (vec4<u32>(4294967295u, global0.b, 1u, 1u) % vec4<u32>(32u)))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.d.x * _wgslsmith_f_op_f32(f32(-1f) * -1629f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.d.x)))), -273f, global3.d.x, -986f);
    return global3.d.x;
}

fn func_2(arg_0: f32, arg_1: vec3<f32>) -> vec4<f32> {
    let var_0 = ~(~(vec2<u32>(~65718u, ~global3.b) ^ (vec2<u32>(41824u, global3.b) << (abs(vec2<u32>(global0.b, 32359u)) % vec2<u32>(32u)))));
    let var_1 = select(u_input.a.x, (abs(-u_input.a.x) | ~(-3793i)) >> (~6567u % 32u), any(!vec4<bool>(true, false, global0.a.a.x & false, true)));
    var var_2 = _wgslsmith_sub_u32(global0.b, global0.b);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -618f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-4524i, vec2<u32>(global3.b, 70846u)))), !all(global4[_wgslsmith_index_u32(31732u, 10u)])))) * _wgslsmith_f_op_f32(step(-733f, 512f)));
    var var_4 = _wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(~2147483647i ^ _wgslsmith_sub_i32(-69916i, var_1), -20144i), -49921i << (min(27731u, min(4294967295u, global0.b)) % 32u)), -u_input.a.x);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, global3.d.x, arg_1.x, arg_1.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1493f, -260f, arg_1.x, global3.d.x)))))));
}

fn func_1(arg_0: bool, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(global0.d, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.d), _wgslsmith_f_op_vec4_f32(func_2(global3.d.x, vec3<f32>(arg_1.x, -259f, 184f)))), _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(-global0.d.x), vec3<f32>(global0.d.x, global0.d.x, -134f))))), !select(select(vec4<bool>(global3.c.a.x, false, arg_0, global0.c.a.x), global4[_wgslsmith_index_u32(49801u, 10u)], arg_0), vec4<bool>(true, arg_0, global3.a.a.x, true), any(vec2<bool>(global2.x, arg_0)))))));
    global4 = array<vec4<bool>, 10>();
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-903f, _wgslsmith_f_op_f32(1f + global3.d.x)) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1082f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-786f + arg_1.x), -1097f)))));
    let var_2 = Struct_2(Struct_1(global3.c.a), 0u, Struct_1(global3.c.a), _wgslsmith_f_op_vec4_f32(-global3.d));
    global0 = var_2;
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!(!all(vec4<bool>(false, global2.x, global2.x, global3.a.a.x))) & global2.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-882f, global0.d.x, 226f) - global3.d.yxw) + _wgslsmith_f_op_vec3_f32(global0.d.zww * global0.d.ywy)) - _wgslsmith_f_op_vec3_f32(floor(global3.d.yxz)))));
    let var_1 = Struct_2(func_1(any(func_1(global3.a.a.x || false, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.d.x, global0.d.x, global3.d.x)))).a.wx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.d.x, 497f, -1076f) * vec3<f32>(global3.d.x, global3.d.x, -466f))))), ~(abs(global0.b) >> (~4294967295u % 32u)) ^ firstTrailingBit(~global0.b), Struct_1(select(!select(var_0.a, global3.a.a, global4[_wgslsmith_index_u32(global0.b, 10u)]), select(var_0.a, vec4<bool>(true, true, true, false), var_0.a.x), true || func_1(global2.x, global3.d.xyy).a.x)), global0.d);
    var var_2 = 0u;
    global4 = array<vec4<bool>, 10>();
    let var_3 = vec4<u32>(global3.b >> (_wgslsmith_dot_vec3_u32(vec3<u32>(global3.b | global0.b, countOneBits(0u), global3.b), ~vec3<u32>(var_1.b, 24263u, 1u) & reverseBits(vec3<u32>(0u, 4294967295u, global0.b))) % 32u), 0u, ~0u, ~50851u);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d.x, ~(~_wgslsmith_div_vec2_u32(var_3.zy, vec2<u32>(23791u, 60005u))) | (var_3.yy ^ ~(~vec2<u32>(global0.b, var_1.b))), abs(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1390i, 2147483647i, -21679i, 7402i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) & reverseBits(vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, -2913i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<i32>(-28463i, u_input.a.x, 2147483647i, -2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))), var_3.yw, u_input.a.x);
}

