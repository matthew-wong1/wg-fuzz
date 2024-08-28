struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4> = array<bool, 4>(true, false, true, false);

var<private> global1: vec3<bool> = vec3<bool>(false, true, false);

var<private> global2: array<i32, 23>;

var<private> global3: array<vec2<f32>, 27>;

var<private> global4: Struct_3;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: Struct_5, arg_1: f32, arg_2: Struct_4) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(arg_1 + -1184f);
    let var_1 = vec2<i32>(-1i) * -global4.b;
    let var_2 = select(max(vec4<u32>(arg_0.a << (arg_0.c.x % 32u), 2188u, arg_2.e.b.x, firstLeadingBit(arg_0.c.x)) >> (countOneBits(arg_0.c) % vec4<u32>(32u)), ~vec4<u32>(arg_0.a ^ u_input.e, 85242u >> (u_input.a % 32u), arg_2.e.b.x, ~u_input.a)), countOneBits(vec4<u32>(min(_wgslsmith_add_u32(1110u, 8260u), arg_2.e.b.x), ~(arg_0.a ^ 7219u), 8206u >> (arg_0.a % 32u), ~(~arg_0.a))), !select(vec4<bool>(4294967295u > u_input.e, arg_2.e.b.x > 1u, true, global4.b.x == global2[_wgslsmith_index_u32(arg_0.c.x, 23u)]), !vec4<bool>(global1.x, global0[_wgslsmith_index_u32(arg_2.e.b.x, 4u)], global0[_wgslsmith_index_u32(arg_2.e.b.x, 4u)], true), false));
    global4 = Struct_3(false, vec2<i32>(_wgslsmith_sub_i32(-_wgslsmith_mod_i32(global4.b.x, var_1.x), 1i), -32315i));
    var var_3 = ~(-7791i) | _wgslsmith_add_i32(~var_1.x, _wgslsmith_mod_i32(var_1.x, var_1.x));
    return arg_2.d;
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> vec3<i32> {
    global3 = array<vec2<f32>, 27>();
    var var_0 = firstLeadingBit(14211u >> (_wgslsmith_div_u32(min(~26478u, arg_1.b.x), (1u ^ arg_1.b.x) >> (0u % 32u)) % 32u));
    let var_1 = Struct_5(_wgslsmith_dot_vec2_u32(select(arg_1.b, arg_1.b, global1.zx) | vec2<u32>(arg_1.b.x, max(0u, 1u)), max(~arg_1.b, _wgslsmith_sub_vec2_u32(arg_1.b, arg_1.b))), global4.a, _wgslsmith_mult_vec4_u32(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.b.x, 0u, 102050u, 1u), vec4<u32>(arg_1.b.x, 0u, arg_1.b.x, u_input.b), vec4<u32>(arg_1.b.x, 5337u, u_input.a, u_input.e))), ~vec4<u32>(_wgslsmith_mult_u32(4294967295u, arg_1.b.x), abs(22063u), ~1u, ~u_input.e)));
    global2 = array<i32, 23>();
    global3 = array<vec2<f32>, 27>();
    return (vec3<i32>(i32(-1i) * -7351i, global2[_wgslsmith_index_u32(arg_1.b.x, 23u)], countOneBits(i32(-1i) * -2147483647i)) | _wgslsmith_mult_vec3_i32(~(-vec3<i32>(-8366i, u_input.d.x, 1i)), abs(_wgslsmith_add_vec3_i32(vec3<i32>(global4.b.x, global4.b.x, -22881i), vec3<i32>(global2[_wgslsmith_index_u32(arg_1.b.x, 23u)], -38010i, -2147483647i))))) | reverseBits(~(-vec3<i32>(global2[_wgslsmith_index_u32(1u, 23u)], 0i, u_input.d.x) | select(vec3<i32>(u_input.d.x, global2[_wgslsmith_index_u32(25811u, 23u)], 3033i), vec3<i32>(16222i, 2147483647i, 530i), vec3<bool>(var_1.b, true, true))));
}

fn func_1(arg_0: f32) -> vec3<bool> {
    var var_0 = ~func_3(!all(!vec4<bool>(global1.x, false, global4.a, false)), Struct_2(func_2(Struct_5(2300u, global1.x, vec4<u32>(u_input.a, 106594u, 32177u, 30250u)), _wgslsmith_f_op_f32(select(arg_0, -899f, global1.x)), Struct_4(arg_0, vec3<bool>(false, true, false), vec3<f32>(arg_0, 592f, arg_0), Struct_1(1106f, vec4<f32>(-929f, -213f, arg_0, -640f), vec3<f32>(687f, arg_0, -423f)), Struct_2(Struct_1(arg_0, vec4<f32>(arg_0, arg_0, arg_0, arg_0), vec3<f32>(arg_0, 827f, arg_0)), vec2<u32>(1u, 73353u)))), vec2<u32>(~35026u, 1u)));
    global2 = array<i32, 23>();
    let var_1 = vec4<bool>(all(select(select(!vec4<bool>(global1.x, global1.x, global1.x, global4.a), vec4<bool>(true, true, true, true), global1.x), select(vec4<bool>(global1.x, false, true, global4.a), !vec4<bool>(global4.a, false, global1.x, global4.a), all(vec2<bool>(true, global4.a))), vec4<bool>(true, any(global1.zy), !global4.a, true))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.e, _wgslsmith_sub_u32(~u_input.e, _wgslsmith_dot_vec3_u32(~vec3<u32>(80725u, 0u, u_input.e), ~vec3<u32>(2579u, 22712u, u_input.b)))), 4u)], false, all(!global1.xz));
    global0 = array<bool, 4>();
    let var_2 = Struct_1(1869f, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(arg_0 - arg_0)) + -402f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), arg_0, arg_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -631f, arg_0)));
    return select(!vec3<bool>(any(vec3<bool>(false, global1.x, global0[_wgslsmith_index_u32(u_input.a, 4u)])), select(all(vec2<bool>(global1.x, true)), global0[_wgslsmith_index_u32(u_input.b | u_input.a, 4u)], any(global1.zy)), true), vec3<bool>(var_1.x, global0[_wgslsmith_index_u32(~0u ^ ~(u_input.a >> (1344u % 32u)), 4u)], var_1.x | global0[_wgslsmith_index_u32(4294967295u, 4u)]), select(var_1.xwy, var_1.xxy, select(vec3<bool>(global1.x != true, !global0[_wgslsmith_index_u32(40328u, 4u)], any(var_1.wwx)), !(!var_1.xwz), any(!var_1.wyy))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-718f)) + _wgslsmith_f_op_f32(f32(-1f) * -217f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-407f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1334f)), 583f)))));
    var var_1 = Struct_3(_wgslsmith_mod_i32(abs(u_input.c.x), _wgslsmith_dot_vec4_i32(min(vec4<i32>(global2[_wgslsmith_index_u32(1u, 23u)], -10076i, 2147483647i, 7922i), vec4<i32>(-27722i, u_input.c.x, global2[_wgslsmith_index_u32(1u, 23u)], global4.b.x)), select(vec4<i32>(u_input.d.x, global4.b.x, global4.b.x, u_input.c.x), vec4<i32>(-2147483647i, global4.b.x, 2147483647i, u_input.c.x), vec4<bool>(global1.x, global0[_wgslsmith_index_u32(52593u, 4u)], global0[_wgslsmith_index_u32(0u, 4u)], global1.x)))) == global2[_wgslsmith_index_u32(1u, 23u)], _wgslsmith_sub_vec2_i32(~_wgslsmith_clamp_vec2_i32(u_input.c, vec2<i32>(0i, global2[_wgslsmith_index_u32(1u, 23u)]), global4.b), u_input.d) | _wgslsmith_div_vec2_i32(~vec2<i32>(u_input.c.x, -2147483647i) & ~global4.b, _wgslsmith_div_vec2_i32(select(u_input.c, global4.b, var_0.zy), vec2<i32>(global4.b.x, 0i))));
    global4 = Struct_3(any(var_0.yy), vec2<i32>(~var_1.b.x, _wgslsmith_clamp_i32(u_input.d.x, global2[_wgslsmith_index_u32(~0u, 23u)], abs(1i))) & u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(global4.b.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1425f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -109f), -1235f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2274f))), _wgslsmith_f_op_f32(floor(1f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2103f), _wgslsmith_f_op_f32(-776f - 1754f), _wgslsmith_f_op_f32(max(960f, 275f)), _wgslsmith_f_op_f32(round(1072f))))), -1000f, vec4<u32>(_wgslsmith_clamp_u32(~u_input.a << ((u_input.e | u_input.e) % 32u), u_input.e, _wgslsmith_clamp_u32(~0u, _wgslsmith_add_u32(u_input.a, u_input.b), _wgslsmith_mod_u32(5131u, 4294967295u))), _wgslsmith_dot_vec3_u32((vec3<u32>(u_input.b, 24875u, u_input.b) & vec3<u32>(u_input.b, u_input.a, 56985u)) & (vec3<u32>(u_input.e, u_input.e, 25237u) >> (vec3<u32>(u_input.a, 1u, u_input.b) % vec3<u32>(32u))), abs(vec3<u32>(1u, 4294967295u, u_input.a)) ^ abs(vec3<u32>(45472u, u_input.e, 4294967295u))), _wgslsmith_div_u32(1u, ~1u), _wgslsmith_dot_vec2_u32(vec2<u32>(50088u, 16138u), select(vec2<u32>(u_input.a, 13844u), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(42560u, 1u)), global1.yy))));
}

