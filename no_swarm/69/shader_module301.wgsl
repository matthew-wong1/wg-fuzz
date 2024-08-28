struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: f32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(false, false), vec2<f32>(327f, -279f), -1000f, vec4<bool>(true, true, false, false));

var<private> global1: array<Struct_1, 17>;

var<private> global2: u32;

var<private> global3: vec2<u32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(global3.x, 39408u), _wgslsmith_dot_vec2_u32(vec2<u32>(34300u, u_input.a.x), u_input.c.xz), ~24453u), u_input.c.yyy), firstTrailingBit(~80166u), u_input.d);
    global2 = u_input.a.x;
    global1 = array<Struct_1, 17>();
    global3 = ~(~(~u_input.c.zz));
    let var_1 = Struct_1(arg_0.d.xx, vec2<f32>(1826f, arg_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.b.x)) * -1097f))), arg_0.d);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, -1095f)) + global0.b));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> u32 {
    global2 = u_input.c.x | 983u;
    let var_0 = _wgslsmith_f_op_vec2_f32(round(arg_0.b));
    let var_1 = Struct_1(arg_0.d.yx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(arg_1))), -1424f, select(select(select(!arg_0.d, vec4<bool>(arg_0.a.x, global0.d.x, true, arg_1.d.x), arg_0.d), vec4<bool>(false, !global0.d.x, arg_2, global3.x <= global3.x), false), select(arg_0.d, !global0.d, !(845f > var_0.x)), !vec4<bool>(true, global0.b.x < arg_3, true, arg_1.d.x)));
    var var_2 = global1[_wgslsmith_index_u32(~0u, 17u)];
    global1 = array<Struct_1, 17>();
    return ~33933u;
}

fn func_2(arg_0: f32) -> vec2<u32> {
    global2 = (~(global3.x << (countOneBits(1u) % 32u)) >> (24735u % 32u)) & (5557u | global3.x);
    global3 = _wgslsmith_mod_vec2_u32(~max(u_input.c.ww, u_input.a), ~u_input.c.zz);
    global1 = array<Struct_1, 17>();
    let var_0 = ~vec4<u32>(_wgslsmith_add_u32(select(0u, u_input.c.x, false), 15039u >> (0u % 32u)) | 0u, func_4(Struct_1(global0.d.zx, _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.x, 760f) + vec2<f32>(global0.b.x, arg_0)), 1374f, !vec4<bool>(global0.d.x, global0.d.x, global0.a.x, global0.d.x)), Struct_1(select(global0.a, vec2<bool>(true, false), global0.a), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(global0.d.yx, vec2<f32>(-550f, arg_0), global0.c, vec4<bool>(global0.a.x, global0.d.x, true, global0.a.x)))), arg_0, !global0.d), any(!vec4<bool>(global0.a.x, global0.d.x, global0.a.x, false)), -1528f), 50298u, _wgslsmith_dot_vec4_u32(u_input.c, select(vec4<u32>(63082u, 0u, global3.x, 4294967295u), firstTrailingBit(u_input.c), 2147483647i != u_input.b)));
    global2 = ~_wgslsmith_sub_u32(25136u, (min(var_0.x, global3.x) >> (0u % 32u)) >> (global3.x % 32u));
    return select(u_input.c.xy, vec2<u32>(countOneBits(~68519u >> (~var_0.x % 32u)), (var_0.x ^ ~u_input.a.x) ^ u_input.d), select(false, select(global0.a.x, true | all(global0.d.xxy), false), !any(select(vec2<bool>(true, true), vec2<bool>(global0.d.x, global0.d.x), vec2<bool>(false, global0.a.x)))));
}

fn func_1() -> vec2<u32> {
    global1 = array<Struct_1, 17>();
    var var_0 = global0.b.x;
    global3 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(~4294967295u, _wgslsmith_sub_u32(u_input.a.x | 33184u, u_input.d ^ 4294967295u)), global3.x), ~_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(u_input.c.xx, func_2(1193f)), ~u_input.a));
    return u_input.c.yw;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 2968u, 39749u) & u_input.c.xxx, ~u_input.c.zzx) >> (vec3<u32>(~global3.x, ~u_input.d, u_input.c.x << (1u % 32u)) % vec3<u32>(32u)), vec3<u32>(1u, _wgslsmith_mult_u32(~u_input.d, u_input.d), ~global3.x)), ~0u), 17u)];
    var var_0 = (i32(-1i) * -2147483647i) & ~u_input.b;
    global3 = ~_wgslsmith_div_vec2_u32(vec2<u32>(22815u, u_input.c.x), min(func_1(), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, global3.x, 0u, 5868u), vec4<u32>(u_input.d, 4294967295u, u_input.c.x, 0u)), _wgslsmith_div_u32(u_input.c.x, 0u))));
    let var_1 = Struct_1(!select(vec2<bool>(true, true), !select(global0.a, vec2<bool>(global0.d.x, global0.a.x), vec2<bool>(false, true)), !(!global0.d.yy)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.c, 433f), vec2<f32>(global0.b.x, global0.b.x)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.b.x, global0.c), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.b.x, 1168f)))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1476f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2428f)) - _wgslsmith_f_op_f32(global0.b.x + global0.c)))), global0.d);
    let var_2 = Struct_1(vec2<bool>(true, false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global0.c)))), 720f)), _wgslsmith_f_op_f32(ceil(global0.c)), vec4<bool>(global0.a.x, all(vec3<bool>(true, var_1.d.x, false)), true, -(2147483647i ^ u_input.b) > -_wgslsmith_add_i32(-42010i, u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-global0.b), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1443f, _wgslsmith_div_f32(global0.c, 683f), -1000f, _wgslsmith_div_f32(var_2.c, 455f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(770f)) * -126f), 701f, _wgslsmith_f_op_vec2_f32(func_3(var_2)).x, var_2.c), true)));
}

