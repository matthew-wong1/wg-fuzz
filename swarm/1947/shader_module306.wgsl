struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27> = array<i32, 27>(5194i, -1i, 2147483647i, 2147483647i, 58535i, 231i, -81307i, 1i, 18554i, -20693i, i32(-2147483648), 3797i, 10184i, -1139i, 26534i, -20041i, 19537i, -38312i, -12739i, 9686i, 38525i, 0i, 3840i, 0i, 45862i, 6176i, 1i);

var<private> global1: vec4<u32> = vec4<u32>(4298u, 0u, 1u, 75846u);

var<private> global2: Struct_1 = Struct_1(vec4<f32>(-167f, 159f, 884f, 1095f), vec3<bool>(true, true, false), 0i, 0u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> u32 {
    global0 = array<i32, 27>();
    var var_0 = !global2.b.x;
    global0 = array<i32, 27>();
    var_0 = select(true, !(!global2.b.x), global2.b.x);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1405f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.a.x - -636f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(506f + global2.a.x))), global2.b.x)));
    return 1u;
}

fn func_3() -> i32 {
    let var_0 = true;
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.a.zz * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -281f), _wgslsmith_div_f32(global2.a.x, global2.a.x)))), select(_wgslsmith_div_vec3_i32(u_input.d.zyy, reverseBits(countOneBits(u_input.d.yww))), u_input.d.yww, !global2.b));
    var var_2 = ~(~vec2<u32>(~max(4294967295u, 1u), u_input.a.x));
    var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a.x))))), var_1.b);
    let var_3 = true;
    return _wgslsmith_div_i32(firstTrailingBit(firstTrailingBit(i32(-1i) * -1i)), abs(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, 2147483647i), vec2<i32>(global2.c, u_input.d.x))) >> (1u % 32u));
}

fn func_1() -> vec3<bool> {
    global1 = vec4<u32>(global2.d, ~global2.d, 0u, _wgslsmith_sub_u32(~1u >> (func_2() % 32u), global2.d));
    let var_0 = select(global2.b.zy, global2.b.zz, global2.b.x);
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.a.wx) - global2.a.yz), max(_wgslsmith_add_vec3_i32(abs(u_input.d.zyz) << (~u_input.a.zwz % vec3<u32>(32u)), min(u_input.d.ywx, vec3<i32>(-63352i, u_input.d.x, global2.c))), countOneBits(~vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 27u)], u_input.d.x, global2.c) >> (vec3<u32>(global2.d, 0u, 52116u) % vec3<u32>(32u)))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)), global2.a.x, global2.a.x) - global2.a), global2.b, _wgslsmith_mult_i32(-_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.d.x, 58275i), var_1.b.x), firstLeadingBit(func_3() >> (max(u_input.c.x, 0u) % 32u))), 1u);
    var_1 = Struct_3(var_1.a, u_input.d.xxx);
    return !var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(u_input.b.wxx);
    var var_1 = ~u_input.b;
    var var_2 = global2.a.zw;
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, var_2.x, var_2.x, var_2.x) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(global2.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, -673f, -351f, 1000f) * global2.a)))))), select(select(!global2.b, select(!vec3<bool>(global2.b.x, global2.b.x, true), !global2.b, global2.b.x), global2.a.x >= _wgslsmith_f_op_f32(f32(-1f) * -1783f)), func_1(), !vec3<bool>(true, global2.b.x, true)), countOneBits(u_input.d.x), ~_wgslsmith_div_u32(78770u, 28878u));
    var var_3 = Struct_2(vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.a.x, var_2.x) + var_2.x), var_2.x, _wgslsmith_div_f32(-652f, -172f)), Struct_1(global2.a, vec3<bool>(true, true, all(func_1())), _wgslsmith_div_i32(~(1i ^ u_input.d.x), u_input.d.x), 1u));
    var var_4 = var_3.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(0u, select(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, var_1.x, global1.x), vec3<u32>(var_0.x, var_1.x, 23377u) << (global1.xwx % vec3<u32>(32u)), ~vec3<u32>(u_input.a.x, 1u, 2753u))), var_1.wzw, select(select(global2.b, vec3<bool>(var_3.b.b.x, global2.b.x, global2.b.x), select(vec3<bool>(var_3.b.b.x, var_3.b.b.x, global2.b.x), vec3<bool>(true, global2.b.x, false), false)), var_3.b.b, true)), 1i, _wgslsmith_add_u32(select(global2.d, 4294967295u, func_1().x) >> (_wgslsmith_mult_u32(~global1.x, 1u) % 32u), global2.d), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_4.zz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1297f, -271f)), vec2<bool>(true, false))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.a.yy) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1000f, var_3.a.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_4.yx)))));
}

