struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
    d: vec2<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 39232u;

var<private> global1: Struct_3 = Struct_3(Struct_1(vec2<f32>(-271f, -1238f), 589f, false, vec3<u32>(8168u, 0u, 0u)), Struct_1(vec2<f32>(-689f, -247f), -2277f, false, vec3<u32>(4294967295u, 0u, 77946u)));

var<private> global2: i32;

var<private> global3: Struct_3;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: vec3<f32>) -> bool {
    var var_0 = vec4<f32>(global1.a.b, _wgslsmith_f_op_f32(min(global3.a.a.x, _wgslsmith_f_op_f32(step(arg_2.x, -369f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(708f, _wgslsmith_f_op_f32(-global1.a.a.x), u_input.a.x <= -2147483647i)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.a.x) - _wgslsmith_f_op_f32(min(arg_2.x, global1.a.a.x)))))), arg_2.x);
    global2 = _wgslsmith_mod_i32(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(max(~2147483647i, -14231i), -(~1i)), u_input.a.wy | -vec2<i32>(-2147483647i, 0i)));
    let var_1 = Struct_2(~abs(abs(vec4<u32>(36824u, 4294967295u, arg_0, global1.a.d.x))), ~vec3<u32>(~_wgslsmith_div_u32(global3.a.d.x, global1.b.d.x), 38484u & min(global3.a.d.x, 15853u), min(0u, ~0u)));
    var var_2 = all(!vec2<bool>(global3.b.c, false));
    let var_3 = Struct_5(Struct_4(var_1, var_1, -714f, vec2<u32>(_wgslsmith_add_u32(global3.a.d.x, max(4294967295u, var_1.b.x)), 4294967295u)), arg_1);
    return var_0.x > _wgslsmith_f_op_f32(round(-1000f));
}

fn func_2() -> Struct_1 {
    global3 = Struct_3(Struct_1(global3.b.a, 399f, select(false, true, global3.a.c) && false, vec3<u32>(1u, ~global1.b.d.x | ~31472u, ~_wgslsmith_sub_u32(global1.a.d.x, global1.b.d.x))), Struct_1(global3.a.a, global1.b.a.x, _wgslsmith_f_op_f32(min(-1511f, _wgslsmith_f_op_f32(f32(-1f) * -2604f))) == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.a.b))), vec3<u32>(firstLeadingBit(global1.a.d.x), _wgslsmith_div_u32(_wgslsmith_sub_u32(25729u, global3.b.d.x), global1.a.d.x), _wgslsmith_sub_u32(min(4294967295u, 118508u), ~global3.a.d.x))));
    let var_0 = Struct_4(Struct_2(~(~(~vec4<u32>(global3.b.d.x, global3.b.d.x, global3.a.d.x, global3.a.d.x))), (select(vec3<u32>(64047u, 86674u, 1u), vec3<u32>(53769u, global1.a.d.x, 43011u), vec3<bool>(false, global1.a.c, global3.a.c)) << (global1.a.d % vec3<u32>(32u))) << (global3.b.d % vec3<u32>(32u))), Struct_2(vec4<u32>(~(~39910u), max(select(6924u, 43904u, global3.a.c), global1.a.d.x), 75439u, min(58631u, global1.a.d.x)), vec3<u32>(global1.b.d.x, select(~global3.a.d.x, ~global3.a.d.x, !global1.b.c), ~0u)), _wgslsmith_f_op_f32(abs(global3.a.a.x)), _wgslsmith_add_vec2_u32(global3.a.d.xz, global3.a.d.yz));
    let var_1 = var_0;
    global2 = ~2147483647i;
    var var_2 = -vec3<i32>(_wgslsmith_sub_i32(-1i, firstTrailingBit(31171i)), ~(-34911i), 0i);
    return Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.b + -271f) - global3.a.a.x), global1.a.b) + global1.a.a), _wgslsmith_f_op_f32(f32(-1f) * -1011f), all(select(select(!vec3<bool>(false, false, global3.a.c), vec3<bool>(global1.a.c, global1.b.c, false), vec3<bool>(true, global1.a.c, global3.b.c)), vec3<bool>(func_3(1u, vec3<bool>(global1.b.c, false, true), vec3<f32>(-582f, global1.b.b, -1582f)), all(vec4<bool>(global1.b.c, global3.b.c, global3.a.c, global3.b.c)), true), all(select(vec4<bool>(true, true, global3.b.c, global3.b.c), vec4<bool>(false, global1.b.c, false, global1.b.c), true)))), ~vec3<u32>(1u, 1u >> (global3.b.d.x % 32u), _wgslsmith_add_u32(global3.a.d.x, global1.b.d.x)) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, var_1.b.a.x, 0u), vec4<u32>(global1.b.d.x, 4294967295u, 0u, 1u)), reverseBits(0u), var_1.d.x), global3.b.d, ~vec3<u32>(global1.b.d.x, var_0.b.b.x, global1.b.d.x)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: vec3<f32>) -> vec2<u32> {
    global1 = Struct_3(func_2(), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1151f, -1000f)))), _wgslsmith_f_op_vec2_f32(exp2(global1.b.a)), global3.a.c == func_3(1u, vec3<bool>(true, global1.b.c, false), vec3<f32>(-763f, -1082f, -491f)))), -994f, !global1.a.c, _wgslsmith_add_vec3_u32(global3.b.d, _wgslsmith_mult_vec3_u32(global3.a.d ^ global1.b.d, ~global3.a.d))));
    let var_0 = Struct_5(Struct_4(Struct_2(~(~vec4<u32>(0u, global1.b.d.x, global3.b.d.x, 64487u)), global1.a.d), Struct_2(reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 65911u, global3.a.d.x), vec4<u32>(6494u, global1.a.d.x, 0u, 4294967295u), vec4<u32>(59947u, global3.a.d.x, global3.b.d.x, 2801u))), _wgslsmith_mod_vec3_u32(global1.a.d, firstTrailingBit(vec3<u32>(global1.a.d.x, 1u, global3.a.d.x)))), _wgslsmith_f_op_f32(-arg_2.x), vec2<u32>(reverseBits(global1.b.d.x << (global1.a.d.x % 32u)), ~global1.a.d.x >> (~0u % 32u))), vec3<bool>((_wgslsmith_f_op_f32(ceil(arg_0.x)) <= _wgslsmith_f_op_f32(-arg_0.x)) || global1.a.c, global1.a.c, !(global1.a.c & global1.b.c)));
    var var_1 = u_input.a;
    global0 = func_2().d.x;
    var_1 = vec4<i32>(-1i, u_input.a.x, -select(u_input.a.x, ~_wgslsmith_mult_i32(u_input.a.x, 2147483647i), true), _wgslsmith_sub_i32(arg_1.x, u_input.a.x));
    return var_0.a.a.a.zy;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~func_1(global1.b.a, _wgslsmith_mult_vec4_i32(u_input.a, _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.b.a.x, -901f, 716f)))))));
}

