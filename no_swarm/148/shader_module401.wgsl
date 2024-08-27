struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<f32>;

var<private> global2: f32;

var<private> global3: Struct_4;

var<private> global4: bool;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>) -> i32 {
    return reverseBits(u_input.a.x);
}

fn func_2(arg_0: bool) -> Struct_4 {
    global0 = _wgslsmith_f_op_f32(step(-230f, -748f));
    var var_0 = Struct_4(firstTrailingBit(_wgslsmith_add_i32(u_input.a.x, u_input.a.x)), func_3(vec3<u32>(_wgslsmith_sub_u32(1u, u_input.d), ~u_input.d, reverseBits(~u_input.c.x))));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), -611f), 1008f)))));
    var var_2 = ~min(_wgslsmith_sub_vec3_u32(u_input.c.xww, abs(u_input.c.xxx)), u_input.c.www);
    var var_3 = _wgslsmith_f_op_vec2_f32(ceil(global1.yx));
    return Struct_4(0i << (u_input.b.x % 32u), var_0.b);
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3) -> Struct_3 {
    global3 = func_2(u_input.c.x < 1u);
    let var_0 = 1u;
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-463f + _wgslsmith_f_op_f32(f32(-1f) * -1187f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(922f, global1.x))), global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.x, _wgslsmith_f_op_f32(max(1141f, 310f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1009f)))));
    global4 = _wgslsmith_add_u32(~1u, ~_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.d, 31567u), 0u)) < var_0;
    let var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(0u, _wgslsmith_mult_u32(var_0, ~31120u)), _wgslsmith_mod_vec2_u32(arg_1.b.xz, select(arg_1.b.zx, arg_1.b.xx, !arg_2.b)));
    return arg_2;
}

fn func_4(arg_0: Struct_3) -> bool {
    var var_0 = Struct_1(~(max(u_input.c.zzz ^ u_input.c.wwx, vec3<u32>(u_input.c.x, 24545u, u_input.d)) & firstLeadingBit(u_input.c.ywy)), _wgslsmith_mult_vec4_u32(vec4<u32>((u_input.d & 1u) & countOneBits(25062u), u_input.b.x, 4294967295u, firstTrailingBit(~0u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.d, u_input.b.x), _wgslsmith_div_vec4_u32(u_input.c >> (u_input.c % vec4<u32>(32u)), u_input.c))));
    global2 = _wgslsmith_f_op_f32(428f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))));
    let var_1 = !vec2<bool>(true, arg_0.a);
    var_0 = Struct_1(vec3<u32>(4294967295u, var_0.b.x, _wgslsmith_mod_u32(countOneBits(u_input.c.x), ~u_input.b.x)), vec4<u32>(15807u, 43923u, 12266u, countOneBits(~var_0.a.x)));
    let var_2 = _wgslsmith_div_i32(~u_input.a.x, u_input.a.x);
    return all(!vec4<bool>(false, var_1.x, all(!vec3<bool>(var_1.x, false, arg_0.a)), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(floor(-154f)))), _wgslsmith_f_op_f32(select(763f, -724f, func_4(func_1(u_input.a.x, Struct_2(vec2<bool>(true, false), u_input.c.yzz, u_input.d), Struct_3(true, vec2<bool>(true, false)))))), global1.x, 1f));
    let var_1 = ~(~(~(~vec3<u32>(1u, 34827u, 4294967295u))));
    var var_2 = Struct_2(vec2<bool>(true, true), var_1, u_input.c.x);
    var_2 = Struct_2(var_2.a, ~firstLeadingBit(_wgslsmith_mult_vec3_u32(~vec3<u32>(var_1.x, 6588u, 1u), vec3<u32>(4294967295u, u_input.c.x, u_input.c.x))), u_input.d);
    let var_3 = Struct_1(u_input.c.xzy, vec4<u32>(u_input.b.x, 45111u, var_2.b.x, 1u));
    var var_4 = func_2(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(global1.x * var_0.x)))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-449f, var_0.x, var_2.a.x)))));
    global4 = var_2.a.x;
    var var_5 = select(4294967295u, u_input.d, global1.x >= -1018f);
    let var_6 = Struct_2(vec2<bool>(false && any(select(vec4<bool>(false, var_2.a.x, var_2.a.x, var_2.a.x), vec4<bool>(false, false, false, var_2.a.x), vec4<bool>(var_2.a.x, false, var_2.a.x, true))), (u_input.d >> ((20694u << (var_3.b.x % 32u)) % 32u)) == firstLeadingBit(0u)), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(var_2.c, var_2.b.x, 4294967295u), vec3<u32>(var_3.a.x, 635u, u_input.c.x) >> (u_input.c.xyy % vec3<u32>(32u))) << (var_3.b.wzw % vec3<u32>(32u)), reverseBits(~abs(vec3<u32>(0u, var_2.c, 56459u)))), var_2.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(step(646f, var_0.x)), var_0.x, global1.x, global1.x))), var_0.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_0.xw - vec2<f32>(global1.x, -729f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(518f, -491f))))) * global1.xy));
}

