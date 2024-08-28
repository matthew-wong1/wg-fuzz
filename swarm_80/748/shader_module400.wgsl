struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: bool,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9>;

var<private> global1: f32 = -1189f;

var<private> global2: Struct_2 = Struct_2(vec3<i32>(2147483647i, 2147483647i, 21235i), vec3<f32>(-945f, 138f, -216f), Struct_1(vec2<u32>(42896u, 14218u), vec4<bool>(true, false, false, false), true, true, vec4<u32>(3913u, 1u, 0u, 66725u)), Struct_1(vec2<u32>(1u, 4294967295u), vec4<bool>(true, true, false, false), true, true, vec4<u32>(70808u, 0u, 17510u, 1u)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool) -> f32 {
    global1 = -668f;
    var var_0 = global2.d.e;
    return _wgslsmith_f_op_f32(global2.b.x - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -155f) - 1000f), -616f, global2.d.b.x)));
}

fn func_2() -> vec3<f32> {
    global2 = Struct_2(~abs(select(vec3<i32>(u_input.a.x, global2.a.x, global0[_wgslsmith_index_u32(global2.d.a.x, 9u)]), vec3<i32>(-37946i, u_input.a.x, u_input.a.x), false)) >> (_wgslsmith_mult_vec3_u32(global2.d.e.wxy, (global2.d.e.yxw & global2.c.e.yxw) ^ vec3<u32>(83156u, 32047u, 4294967295u)) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.b.x, -1257f)) * global2.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<u32>(1083u, 30315u, global2.c.e.x, global2.d.e.x), global2.d.d)))) + global2.b), Struct_1(_wgslsmith_div_vec2_u32(~_wgslsmith_mod_vec2_u32(global2.c.a, global2.c.a), global2.d.a), vec4<bool>(true, false | (global2.d.c && global2.d.d), true, false), all(select(global2.d.b.zx, vec2<bool>(global2.c.c, false), !global2.c.b.zz)), global2.c.b.x, abs(~global2.c.e)), Struct_1(global2.c.a, vec4<bool>(global2.d.d, global2.d.c, !global2.d.b.x, all(global2.d.b.ww)), true, true, vec4<u32>(58995u, global2.c.a.x, _wgslsmith_sub_u32(1u, global2.d.a.x), 20623u << (global2.c.e.x % 32u)) << (~vec4<u32>(global2.c.e.x, 63817u, global2.c.a.x, 1u) % vec4<u32>(32u))));
    var var_0 = Struct_3(false, Struct_2(~(~global2.a), global2.b, Struct_1(~vec2<u32>(global2.d.e.x, 90237u), global2.d.b, !all(vec3<bool>(global2.d.d, true, global2.d.c)), _wgslsmith_f_op_f32(trunc(-598f)) != -1061f, select(vec4<u32>(global2.d.a.x, 1u, 4294967295u, global2.c.a.x), global2.c.e, !global2.d.b)), global2.c), countOneBits(global2.a.zy), any(!(!(!vec2<bool>(global2.c.b.x, global2.c.c)))));
    var var_1 = ~(-(~vec2<i32>(global2.a.x, var_0.c.x)));
    let var_2 = abs(firstTrailingBit(max(_wgslsmith_mod_i32(~var_0.c.x, ~global0[_wgslsmith_index_u32(67293u, 9u)]), 24682i)));
    var_0 = Struct_3(select(!(!select(true, true, global2.d.b.x)), abs(22429u) > var_0.b.d.e.x, false), var_0.b, -vec2<i32>(_wgslsmith_clamp_i32(min(-5780i, -33246i), 29354i, ~var_1.x), _wgslsmith_add_i32(min(0i, global2.a.x), global2.a.x)), true);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global2.b))) + _wgslsmith_f_op_vec3_f32(global2.b + _wgslsmith_f_op_vec3_f32(var_0.b.b - var_0.b.b))));
}

fn func_1() -> Struct_2 {
    var var_0 = 2147483647i;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.x * 236f));
    var_0 = u_input.a.x;
    let var_2 = !global2.c.b.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_2()))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.x) + _wgslsmith_f_op_f32(func_3(global2.c.e, var_2))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1658f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(global2.b.x)))))));
    return Struct_2(abs(u_input.a >> ((~global2.d.e.xzz & ~global2.d.e.yyx) % vec3<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -103f), var_3.x, 131f), global2.d, global2.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global2 = func_1();
    let var_1 = Struct_1(func_1().d.a, vec4<bool>(!(var_0.b.x > -1040f), ~firstLeadingBit(2147483647i) == _wgslsmith_add_i32(min(39804i, -2147483647i), _wgslsmith_mult_i32(global2.a.x, u_input.a.x)), true, (_wgslsmith_add_u32(global2.d.e.x, global2.c.a.x) | _wgslsmith_mod_u32(61569u, 44348u)) != ~79024u), false, var_0.c.d, vec4<u32>((min(0u, global2.d.e.x) << (4294967295u % 32u)) | ~(~var_0.c.a.x), 4294967295u, _wgslsmith_mult_u32(1u, global2.d.e.x), 8634u));
    global0 = array<i32, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_div_vec4_u32(var_0.c.e, ~var_0.c.e)), vec2<u32>(max(_wgslsmith_mult_u32(global2.c.e.x >> (var_0.d.e.x % 32u), min(var_0.d.e.x, 4294967295u)), 26970u & var_1.a.x), reverseBits(0u)), countOneBits(~_wgslsmith_div_vec4_i32(vec4<i32>(0i, global2.a.x, -2147483647i, -55561i) & vec4<i32>(-19150i, -1i, -30530i, -7467i), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, 2147483647i, global2.a.x, 0i), vec4<i32>(global0[_wgslsmith_index_u32(var_0.c.e.x, 9u)], var_0.a.x, 2147483647i, global2.a.x)))));
}

