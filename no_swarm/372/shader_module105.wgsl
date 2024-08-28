struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(false, true, false, false, false, false, false, false, false, true, false, false, true, false, true, true, true, false, true, false, true, false, true, true, true, true, false, false, false, true, false, true);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_5) -> u32 {
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 36011i, arg_0.c.a, 0i), _wgslsmith_add_vec4_i32(vec4<i32>(abs(_wgslsmith_dot_vec3_i32(u_input.a.wzz, u_input.a.wyz)), u_input.a.x, u_input.c.x, ~arg_0.c.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(2147483647i, arg_0.c.a, u_input.c.x, arg_0.c.a), ~vec4<i32>(-2147483647i, -2147483647i, 1i, u_input.c.x), vec4<i32>(~(-1i), reverseBits(u_input.c.x), ~(-42544i), 39376i))));
    var var_1 = Struct_4(vec3<bool>(arg_0.a.x, arg_0.a.x, true), abs(-vec3<i32>(firstTrailingBit(arg_0.c.a), -1i, 0i)), vec3<u32>(_wgslsmith_mult_u32(firstTrailingBit(firstTrailingBit(15433u)), 4294967295u), max(u_input.b, u_input.b) << (arg_0.b.b.x % 32u), _wgslsmith_div_u32(_wgslsmith_clamp_u32(abs(0u), ~29674u, _wgslsmith_sub_u32(u_input.b, 20039u)), ~1u)), arg_0.b, arg_0.b);
    let var_2 = arg_0.d.yyy;
    let var_3 = !(!(!vec4<bool>(var_1.a.x || var_1.a.x, var_1.c.x > 1u, !var_1.a.x, arg_0.a.x)));
    global0 = array<bool, 32>();
    return _wgslsmith_dot_vec4_u32(select(~countOneBits(_wgslsmith_mult_vec4_u32(arg_0.b.b, vec4<u32>(var_1.c.x, 1u, 0u, u_input.b))), ~firstTrailingBit(arg_0.b.b), var_3), vec4<u32>(1u, 0u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(arg_0.b.b.x & 0u, ~u_input.b, ~arg_0.b.b.x), u_input.b), ~1u));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3) -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(u_input.b, 32u)];
    var var_1 = Struct_4(vec3<bool>(global0[_wgslsmith_index_u32(~(~(~u_input.b)), 32u)], true, select(!(arg_0.a & arg_0.a), any(vec2<bool>(true, true)), 1u < u_input.b)), -u_input.a.xzx, vec3<u32>(_wgslsmith_clamp_u32(0u, u_input.b, ~1u), _wgslsmith_add_u32(func_3(Struct_5(vec4<bool>(false, false, true, false), Struct_2(vec2<f32>(arg_1.b.x, 285f), vec4<u32>(u_input.b, 0u, 2981u, 1u)), Struct_1(u_input.a.x), vec4<f32>(arg_0.b.x, arg_1.b.x, 1170f, arg_1.b.x))), countOneBits(countOneBits(u_input.b))), ~(~u_input.b)), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.b.yy - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, arg_1.b.x)))), vec4<u32>(_wgslsmith_mod_u32(1u, abs(u_input.b)), 24633u, ~_wgslsmith_mod_u32(u_input.b, 22820u), 1u)), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1173f, 580f) + vec2<f32>(arg_0.b.x, -656f)), vec4<u32>(1u ^ u_input.b, u_input.b, ~_wgslsmith_sub_u32(u_input.b, u_input.b), ~0u)));
    let var_2 = countOneBits(0u);
    global0 = array<bool, 32>();
    let var_3 = true;
    return abs(_wgslsmith_mod_i32(arg_0.c.a, u_input.a.x));
}

fn func_1() -> StorageBuffer {
    global0 = array<bool, 32>();
    var var_0 = u_input.a.yzx;
    var var_1 = u_input.b;
    var_0 = -vec3<i32>(-2147483647i, -func_2(Struct_3(global0[_wgslsmith_index_u32(21748u, 32u)], vec4<f32>(1330f, 1000f, -784f, -672f), Struct_1(1i)), Struct_3(global0[_wgslsmith_index_u32(1u, 32u)], vec4<f32>(604f, 1754f, -1000f, -953f), Struct_1(-1302i))) | ~u_input.c.x, ~abs(_wgslsmith_add_i32(-5513i, var_0.x)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1536f * _wgslsmith_f_op_f32(1000f - 1694f)) - 469f);
    return StorageBuffer(u_input.a, _wgslsmith_mod_vec2_i32(vec2<i32>(abs(abs(39159i)), var_0.x), vec2<i32>(i32(-1i) * -12131i, 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 32>();
    let var_0 = u_input.a.xyx;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -323f)));
    global0 = array<bool, 32>();
    global0 = array<bool, 32>();
    let x = u_input.a;
    s_output = func_1();
}

