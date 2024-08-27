struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: bool = false;

var<private> global2: array<vec4<u32>, 18> = array<vec4<u32>, 18>(vec4<u32>(1u, 0u, 1u, 97383u), vec4<u32>(24187u, 36463u, 41295u, 4294967295u), vec4<u32>(110239u, 109468u, 46746u, 1u), vec4<u32>(0u, 1u, 7904u, 17976u), vec4<u32>(0u, 4294967295u, 47795u, 1u), vec4<u32>(1u, 4294967295u, 28066u, 21131u), vec4<u32>(0u, 1u, 0u, 22757u), vec4<u32>(4294967295u, 0u, 96774u, 57498u), vec4<u32>(4294967295u, 1u, 31582u, 1u), vec4<u32>(5461u, 71373u, 1u, 0u), vec4<u32>(42479u, 4294967295u, 4179u, 4294967295u), vec4<u32>(1u, 701u, 4294967295u, 60392u), vec4<u32>(0u, 1u, 36308u, 99820u), vec4<u32>(23877u, 79205u, 1u, 4294967295u), vec4<u32>(3656u, 35596u, 50565u, 1u), vec4<u32>(0u, 1u, 0u, 5128u), vec4<u32>(61765u, 56854u, 4294967295u, 1u), vec4<u32>(35179u, 50272u, 37270u, 4294967295u));

var<private> global3: Struct_1 = Struct_1(true, vec2<f32>(-214f, -133f), vec4<f32>(360f, -167f, -252f, -386f));

var<private> global4: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(true, vec2<f32>(851f, -1391f), vec4<f32>(271f, -1993f, 248f, 1858f)), Struct_1(true, vec2<f32>(-188f, 1000f), vec4<f32>(114f, -182f, 1000f, -2141f)), Struct_1(true, vec2<f32>(1140f, 122f), vec4<f32>(-1146f, -158f, -1751f, -309f)), Struct_1(true, vec2<f32>(-1340f, 640f), vec4<f32>(1334f, -1060f, 1222f, 1049f)), Struct_1(false, vec2<f32>(-1506f, -1151f), vec4<f32>(-341f, 279f, 853f, 128f)), Struct_1(false, vec2<f32>(246f, 1616f), vec4<f32>(750f, -1364f, -2423f, -953f)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    global1 = false;
    let var_0 = global4[_wgslsmith_index_u32(1u, 6u)];
    global0 = -2416f;
    let var_1 = u_input.a.xx;
    global3 = Struct_1(var_0.a, global3.c.ww, var_0.c);
    return select(!vec4<bool>(all(!vec2<bool>(true, global3.a)), true, false, !any(vec2<bool>(false, false))), vec4<bool>(true, true, true, ~var_1.x >= 4294967295u), !select(select(!vec4<bool>(var_0.a, global3.a, var_0.a, global3.a), vec4<bool>(true, false, true, global3.a), vec4<bool>(false, var_0.a, global3.a, false)), !select(vec4<bool>(true, global3.a, global3.a, false), vec4<bool>(var_0.a, true, var_0.a, global3.a), global3.a), all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, global3.a)))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = -(abs(_wgslsmith_div_vec3_i32(vec3<i32>(13978i, u_input.d.x, u_input.d.x), u_input.d.xzw)) << (select(~u_input.a, u_input.b, !vec3<bool>(global3.a, global3.a, global3.a)) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1242f);
    let var_2 = func_3();
    var var_3 = vec2<i32>(~1i, ~_wgslsmith_add_i32(abs(_wgslsmith_mult_i32(u_input.d.x, -41240i)), (var_0.x << (arg_0 % 32u)) ^ abs(u_input.d.x)));
    var var_4 = Struct_1(true, vec2<f32>(global3.b.x, _wgslsmith_f_op_f32(f32(-1f) * -746f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1284f, global3.b.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global3.c.x * global3.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - global3.b.x), global3.c.x) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(global3.c - global3.c)))))));
    return Struct_1(false, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_f_op_f32(-global3.c.x))))), vec4<f32>(_wgslsmith_f_op_f32(max(global3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.b.x, -524f, true))))), 1000f, var_4.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(862f + 764f), var_4.c.x)) * 206f)));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>, arg_3: vec4<u32>) -> u32 {
    return u_input.b.x;
}

fn func_1() -> Struct_2 {
    global3 = global4[_wgslsmith_index_u32(min(~4294967295u | select(func_4(func_2(u_input.c), -14718i, abs(u_input.a.yy), global2[_wgslsmith_index_u32(u_input.a.x, 18u)]), 1u, global3.a), u_input.b.x), 6u)];
    var var_0 = func_2(~32390u);
    global0 = 759f;
    global1 = false;
    var var_1 = func_2(1u);
    return Struct_2(var_0.c.wz);
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>) -> Struct_2 {
    global2 = array<vec4<u32>, 18>();
    global1 = false;
    let var_0 = func_2(u_input.a.x);
    global1 = any(!select(vec3<bool>(all(arg_1), all(vec2<bool>(var_0.a, global3.a)), all(vec4<bool>(false, true, true, false))), !arg_1, !select(vec3<bool>(true, true, global3.a), arg_1, arg_1)));
    global1 = true;
    return arg_0;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<i32>) -> StorageBuffer {
    let var_0 = arg_1.b;
    var var_1 = !(!select(func_3().wzz, func_3().yyy, false));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(max(func_1().a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.c.zy) + vec2<f32>(-489f, -698f)), _wgslsmith_f_op_vec2_f32(-func_1().a), global3.a)))));
    global2 = array<vec4<u32>, 18>();
    let var_3 = !func_3().ywy;
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(-arg_1.c.yyy), _wgslsmith_mod_u32(u_input.b.x, ~(~u_input.a.x)), 77174u, _wgslsmith_add_vec2_i32(-u_input.d.xx, ~arg_2.yz), global2[_wgslsmith_index_u32(max(~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.b.x, 1u, 15801u)), u_input.a >> (vec3<u32>(u_input.c, 212u, 1u) % vec3<u32>(32u))), 0u), 18u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.x;
    let var_1 = global4[_wgslsmith_index_u32(0u, 6u)];
    let x = u_input.a;
    s_output = func_6(func_5(func_1(), select(vec3<bool>(true, true, global3.a), !(!vec3<bool>(true, var_1.a, var_1.a)), !func_3().yxw)), Struct_1(global3.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.x, global3.b.x) + vec2<f32>(global3.c.x, 1000f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3.c.x, global3.b.x, -169f, 901f), var_1.c))), u_input.d.wwz);
}

