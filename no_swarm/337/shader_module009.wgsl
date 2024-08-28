struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-117f, -1707f, -1273f, -1036f);

var<private> global1: array<Struct_2, 18>;

var<private> global2: Struct_2;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec2<i32>, arg_3: Struct_3) -> vec2<bool> {
    global1 = array<Struct_2, 18>();
    let var_0 = global2.b;
    global1 = array<Struct_2, 18>();
    global1 = array<Struct_2, 18>();
    global2 = Struct_2(Struct_1(global2.c.xxz, select(select(select(vec2<bool>(false, true), vec2<bool>(false, global2.a.b.x), arg_3.c.b.x), select(global2.a.b, vec2<bool>(global2.a.b.x, false), vec2<bool>(global2.a.b.x, global2.a.b.x)), all(global2.a.b)), arg_3.d.b, !all(vec3<bool>(false, false, true))), global2.a.c, ~countOneBits(abs(57394u))), _wgslsmith_mult_vec4_i32(~(~vec4<i32>(arg_2.x, 2147483647i, -8900i, 25341i)), ~(-global2.b) & min(global2.b, firstLeadingBit(global2.b))), _wgslsmith_mult_vec4_u32(firstLeadingBit(global2.c), global2.c));
    return select(arg_3.d.b, vec2<bool>(!global2.a.b.x, false), vec2<bool>(any(arg_3.c.b), true));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_3) -> i32 {
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, -1208f, 722f, _wgslsmith_f_op_f32(-1709f * _wgslsmith_f_op_f32(-arg_2.c.c.x))));
    global1 = array<Struct_2, 18>();
    var var_0 = firstLeadingBit(abs(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.b.x, u_input.d.x), abs(u_input.b.zy)), vec2<i32>(_wgslsmith_dot_vec4_i32(arg_0.b, arg_0.b), global2.b.x))));
    let var_1 = global2.a.b.x & (var_0.x <= 15685i);
    let var_2 = Struct_1(vec3<u32>(abs(~67581u), ~firstLeadingBit(u_input.c) & _wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_0.c.x, 11369u), ~1u), global2.c.x), global2.a.b, global2.a.c, ~1u);
    return -((2147483647i << (arg_0.a.a.x % 32u)) & -_wgslsmith_add_i32(firstTrailingBit(u_input.d.x), _wgslsmith_add_i32(0i, var_0.x)));
}

fn func_2() -> Struct_2 {
    var var_0 = global2.b;
    let var_1 = abs(select(firstLeadingBit(global2.b.xx), vec2<i32>(1i, func_3(global1[_wgslsmith_index_u32(global2.c.x, 18u)], global2.a.c, Struct_3(-1225f, u_input.a, Struct_1(vec3<u32>(85856u, 26550u, 0u), vec2<bool>(global2.a.b.x, global2.a.b.x), global2.a.c, global2.c.x), Struct_1(global2.c.xxx, global2.a.b, vec4<f32>(global2.a.c.x, -1774f, 1316f, -746f), u_input.c)))), false)) << (vec2<u32>(10311u, u_input.c & min(u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(23045u, u_input.a, global2.c.x), global2.a.a))) % vec2<u32>(32u));
    let var_2 = Struct_1(~min(vec3<u32>(~54087u, global2.a.d, 10799u), countOneBits(global2.a.a)), select(global2.a.b, select(!global2.a.b, global2.a.b, true), func_1(19850u, max(select(global2.b.x, u_input.d.x, global2.a.b.x), 0i), global2.b.xx, Struct_3(_wgslsmith_f_op_f32(step(global2.a.c.x, -1020f)), 21513u, Struct_1(global2.a.a, global2.a.b, vec4<f32>(global2.a.c.x, -245f, global0.x, 647f), u_input.c), global2.a)).x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.c.x, -1000f, -255f, 674f) + vec4<f32>(214f, 1000f, global2.a.c.x, global0.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.c.x, -1241f, 2375f, -936f) - global2.a.c))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(291f, -753f, global0.x, global0.x), _wgslsmith_f_op_vec4_f32(-global2.a.c), !global2.a.b.x)))), firstLeadingBit(~4294967295u));
    let var_3 = ~u_input.b.x;
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(select(global2.a.c.x, _wgslsmith_f_op_f32(round(var_2.c.x)), var_2.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.x * var_2.c.x)))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.c.x + var_2.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1588f)))), -1444f);
    return global1[_wgslsmith_index_u32(var_2.d, 18u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = Struct_1(~reverseBits(global2.c.zxz), select(!(!func_1(1u, u_input.b.x, vec2<i32>(global2.b.x, 1i), Struct_3(157f, u_input.c, Struct_1(vec3<u32>(u_input.a, 4294967295u, global2.a.a.x), vec2<bool>(global2.a.b.x, global2.a.b.x), global2.a.c, 128061u), Struct_1(vec3<u32>(global2.a.a.x, 1978u, global2.c.x), vec2<bool>(global2.a.b.x, false), global2.a.c, u_input.c)))), vec2<bool>(!all(global2.a.b), global2.a.b.x || true), vec2<bool>(any(global2.a.b), !func_1(1u, 1515i, u_input.d.zx, Struct_3(2296f, 0u, Struct_1(vec3<u32>(global2.c.x, 1u, 32719u), global2.a.b, vec4<f32>(-941f, global0.x, -248f, global0.x), global2.a.d), Struct_1(global2.c.xyy, global2.a.b, vec4<f32>(333f, 215f, global2.a.c.x, global2.a.c.x), 0u))).x)), global2.a.c, u_input.c);
    global2 = func_2();
    let var_2 = var_1;
    let var_3 = u_input.a;
    var_0 = 28035i != ~u_input.b.x;
    global1 = array<Struct_2, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(90821u, countOneBits(u_input.d.x), _wgslsmith_mod_u32(1u, global2.a.a.x), global0.x);
}

