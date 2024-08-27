struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(1047f, 1804f);

var<private> global1: array<vec3<f32>, 24>;

var<private> global2: Struct_4 = Struct_4(vec4<f32>(-873f, -184f, -2040f, 1180f), vec2<u32>(70397u, 739u), vec3<bool>(false, false, false), Struct_1(1i, -361f, vec3<u32>(0u, 51460u, 0u), 1631f));

var<private> global3: array<i32, 18> = array<i32, 18>(-6203i, 1i, 0i, -25965i, 1i, 0i, 14196i, 17778i, 8696i, 4406i, -7617i, 20303i, 30197i, -14507i, 15935i, 38874i, 15556i, i32(-2147483648));

var<private> global4: array<i32, 31>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: vec3<i32>) -> vec3<bool> {
    var var_0 = vec2<u32>(3994u, ~(~u_input.a));
    global3 = array<i32, 18>();
    let var_1 = _wgslsmith_div_u32(32645u, global2.b.x);
    return select(!(!select(select(vec3<bool>(global2.c.x, global2.c.x, true), global2.c, true), global2.c, global2.c.x)), vec3<bool>(true, !all(select(vec3<bool>(true, true, global2.c.x), vec3<bool>(global2.c.x, global2.c.x, global2.c.x), global2.c.x)), !(_wgslsmith_f_op_f32(floor(-341f)) <= _wgslsmith_f_op_f32(floor(-912f)))), !(!(!any(global2.c.zx))));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>) -> u32 {
    let var_0 = 1406f;
    let var_1 = Struct_5(true || global2.c.x, global2.d.b, firstLeadingBit(u_input.b ^ _wgslsmith_add_i32(-u_input.b, countOneBits(global4[_wgslsmith_index_u32(53791u, 31u)]))), global2.d);
    global3 = array<i32, 18>();
    global2 = Struct_4(global2.a, ~vec2<u32>(~_wgslsmith_sub_u32(u_input.a, arg_1.x), var_1.d.c.x), select(!vec3<bool>(var_1.a, global2.d.a >= u_input.e, var_1.d.c.x <= arg_1.x), vec3<bool>(true, var_1.a, true), !global2.c), Struct_1(~global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_1.x, u_input.d.x), 31u)], var_1.b, global2.d.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(832f, var_1.d.d, true))), -2724f))));
    var var_2 = vec3<i32>(countOneBits(0i), var_1.c, _wgslsmith_mod_i32(-404i, ~2147483647i));
    return global2.d.c.x;
}

fn func_1(arg_0: u32) -> bool {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), 140f, any(func_2(vec3<i32>(u_input.e, -68911i, 39124i))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), global2.c.x && false)), 2495f);
    var var_1 = _wgslsmith_div_vec4_i32(~(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, -35274i, global2.d.a, global4[_wgslsmith_index_u32(1u, 31u)]), u_input.c) << ((min(vec4<u32>(1u, 4294967295u, 13821u, 67119u), vec4<u32>(0u, 65218u, arg_0, 0u)) ^ ~vec4<u32>(arg_0, global2.b.x, 3113u, 4294967295u)) % vec4<u32>(32u))), vec4<i32>(global3[_wgslsmith_index_u32(~(1u & func_3(2551f, global2.b)), 18u)], min(global2.d.a, -2147483647i), firstLeadingBit(~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, global3[_wgslsmith_index_u32(55406u, 18u)], global3[_wgslsmith_index_u32(1u, 18u)]), vec4<i32>(-17958i, global2.d.a, global2.d.a, 2167i))), _wgslsmith_mod_i32(2147483647i, 1i & u_input.c.x)));
    var var_2 = vec2<f32>(global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(749f))));
    var var_3 = _wgslsmith_mod_u32(~983u, 4294967295u);
    let var_4 = global2.c.x;
    return global2.c.x;
}

fn func_4(arg_0: u32, arg_1: vec4<bool>) -> Struct_4 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(global2.a - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(global2.d.b, global0.a, global0.a, -506f), vec4<f32>(-436f, global2.d.b, global2.a.x, -508f)), _wgslsmith_f_op_vec4_f32(global2.a - _wgslsmith_f_op_vec4_f32(max(global2.a, global2.a)))))), vec2<u32>(1u, arg_0 | u_input.d.x), func_2(~firstTrailingBit(u_input.c.wzw)), global2.d);
    global2 = Struct_4(global2.a, vec2<u32>(~countOneBits(68459u), firstTrailingBit(u_input.a)), arg_1.wxw, global2.d);
    global2 = var_0;
    let var_1 = _wgslsmith_f_op_f32(exp2(var_0.a.x));
    let var_2 = ~(~(~var_0.b.x) << ((_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, u_input.d.x, arg_0), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 63136u, 0u, 4232u), vec4<u32>(global2.d.c.x, 46736u, 4294967295u, var_0.b.x))) ^ var_0.d.c.x) % 32u));
    return Struct_4(global2.a, max(~vec2<u32>(var_0.b.x, arg_0 >> (0u % 32u)), ~(var_0.d.c.zy ^ global2.b) << (vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 51658u), vec2<u32>(global2.b.x, 0u)), ~43100u) % vec2<u32>(32u))), !vec3<bool>(!var_0.c.x, (var_0.d.a & -52712i) < -29021i, false), Struct_1(-u_input.e, 1015f, ~(~var_0.d.c), 952f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 126f;
    var var_1 = all(select(global2.c.zz, !(!(!global2.c.xz)), select(!vec2<bool>(global2.c.x, true), global2.c.zx, select(!global2.c.xz, vec2<bool>(global2.c.x, global2.c.x), !global2.c.x))));
    let var_2 = _wgslsmith_mult_vec2_i32(u_input.c.xz, vec2<i32>(global2.d.a, ~13895i) << (~global2.b % vec2<u32>(32u)));
    global2 = func_4(u_input.a, vec4<bool>(global2.c.x, true, func_1(~(~u_input.d.x)), true));
    var var_3 = _wgslsmith_f_op_f32(-global0.b);
    global3 = array<i32, 18>();
    let var_4 = vec4<u32>(global2.b.x << (global2.d.c.x % 32u), 1u << (u_input.d.x % 32u), u_input.d.x, 4294967295u);
    let var_5 = vec4<u32>(var_4.x | 53151u, ~firstLeadingBit(var_4.x), firstLeadingBit(firstLeadingBit(_wgslsmith_mod_u32(~22668u, func_4(u_input.d.x, vec4<bool>(global2.c.x, global2.c.x, false, global2.c.x)).b.x))), func_4(~_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(96616u, 1u)), vec2<u32>(u_input.d.x, global2.b.x)), !(!vec4<bool>(false, true, global2.c.x, global2.c.x))).b.x);
    let var_6 = global0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(u_input.c.x >> (u_input.a % 32u), _wgslsmith_add_i32(global2.d.a, ~(var_2.x >> (u_input.a % 32u)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-func_4(_wgslsmith_dot_vec3_u32(global2.d.c, vec3<u32>(1u, 29401u, global2.b.x)), vec4<bool>(false, true, false, true)).a.yxz))), _wgslsmith_mult_u32(~u_input.a, 74607u) >> ((4294967295u ^ abs(global2.b.x)) % 32u), (var_4.wy & vec2<u32>(~71332u, 1u)) ^ var_5.xz, -66134i);
}

