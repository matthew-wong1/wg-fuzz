struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: u32,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<u32>,
    d: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec4<i32>,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: u32;

var<private> global2: f32;

var<private> global3: Struct_3;

var<private> global4: u32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool) -> f32 {
    var var_0 = 1214f;
    global2 = 1528f;
    global0 = arg_1;
    var var_1 = Struct_4(global3.b);
    return var_1.a.b.x;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2) -> f32 {
    var var_0 = 37358u;
    return -1638f;
}

fn func_2() -> Struct_3 {
    global1 = _wgslsmith_add_u32(u_input.e, u_input.e);
    let var_0 = -43163i;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(func_4(vec4<i32>(reverseBits(global3.a.a.d), 0i, u_input.b.x >> (11176u % 32u), -50264i) >> (~vec4<u32>(global3.a.c, global3.c.x, u_input.c, 21388u) % vec4<u32>(32u)), Struct_2(Struct_1(global3.a.a.a, _wgslsmith_f_op_vec3_f32(step(global3.a.b.yyz, vec3<f32>(-244f, 537f, global3.a.d.x))), countOneBits(20466u), min(32632i, 2147483647i), vec4<i32>(-1i, var_0, -1i, global3.a.e.x)), vec4<f32>(_wgslsmith_div_f32(global3.b.b.x, 612f), _wgslsmith_f_op_f32(global3.b.b.x + global3.b.b.x), -516f, _wgslsmith_f_op_f32(func_3(u_input.b.yww, false))), u_input.d.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.a.b.x, global3.a.a.b.x, global3.a.a.b.x, global3.b.b.x)), ~(-vec3<i32>(u_input.b.x, global3.b.e.x, global3.a.e.x))))), _wgslsmith_f_op_f32(abs(-2005f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-998f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.a.b.x * -734f)), global3.b.b.x))), global3.b.b.x);
    let var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d.x, _wgslsmith_mod_u32(global3.c.x, global3.c.x)), reverseBits(~(~vec2<u32>(u_input.d.x, global3.b.c)))) & _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d.x, 24240u), vec2<u32>(1103u, u_input.e) << (global3.c.zy % vec2<u32>(32u)), vec2<u32>(4294967295u, global3.c.x)), global3.c.zy, ~select(u_input.d, u_input.d, global3.d)), ~vec2<u32>(reverseBits(47222u), min(u_input.c, 5555u)));
    let var_3 = global3.a;
    return Struct_3(global3.a, Struct_1(select(vec2<u32>(u_input.d.x, u_input.d.x) | _wgslsmith_clamp_vec2_u32(var_3.a.a, u_input.d, vec2<u32>(var_2.x, var_3.a.c)), vec2<u32>(_wgslsmith_mod_u32(global3.b.c, var_3.c), var_2.x), !global3.d & global3.d), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a.b.x, _wgslsmith_f_op_f32(var_3.a.b.x * global3.a.a.b.x), _wgslsmith_f_op_f32(select(var_3.a.b.x, global3.a.a.b.x, true))) - vec3<f32>(_wgslsmith_f_op_f32(exp2(var_3.d.x)), _wgslsmith_f_op_f32(var_3.d.x - var_1.x), _wgslsmith_f_op_f32(-475f * 982f))), 11110u, var_3.a.d, _wgslsmith_mult_vec4_i32(var_3.a.e, firstLeadingBit(var_3.a.e))), abs(global3.c), !((-16532i ^ u_input.b.x) > _wgslsmith_mult_i32(u_input.a.x, i32(-1i) * -23375i)));
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: Struct_1) -> bool {
    return global3.d;
}

fn func_1(arg_0: i32, arg_1: vec3<f32>) -> Struct_2 {
    let var_0 = -142f;
    var var_1 = Struct_4(global3.a.a);
    let var_2 = !func_5(0i < _wgslsmith_div_i32(~global3.b.e.x, 0i), func_2(), var_1.a);
    let var_3 = Struct_4(global3.a.a);
    return Struct_2(Struct_1(~vec2<u32>(~var_3.a.a.x, ~var_1.a.c), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(arg_1))), var_3.a.b, !select(vec3<bool>(false, var_2, var_2), vec3<bool>(var_2, false, global3.d), vec3<bool>(var_2, var_2, var_2)))), var_3.a.c, _wgslsmith_add_i32(~(-var_1.a.d), _wgslsmith_sub_i32(~global3.a.e.x, -2147483647i)), vec4<i32>(global3.b.e.x, u_input.a.x, i32(-1i) * -var_1.a.e.x, ~(-arg_0))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.a.b.x, var_0))), -500f), global3.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-437f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + -1191f) + _wgslsmith_f_op_f32(-var_3.a.b.x))))), _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(0u, ~global3.b.a.x), ~global3.b.a.x), var_3.a.c), global3.a.d, global3.a.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(global3.b);
    let var_1 = Struct_5(func_1(u_input.b.x, vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.b.x), -779f, global3.b.b.x)), firstLeadingBit(vec4<i32>(_wgslsmith_mult_i32(1i, global3.a.a.d), ~40882i, _wgslsmith_clamp_i32(2147483647i, u_input.a.x, global3.a.a.e.x), -30161i)), vec4<i32>(2147483647i, -9631i, _wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_div_i32(-19684i, global3.a.a.d), ~1i), _wgslsmith_mult_i32(global3.b.e.x, _wgslsmith_dot_vec2_i32(var_0.a.e.xy, u_input.b.yx))), ~u_input.a.x), func_1((global3.a.e.x >> (~u_input.e % 32u)) ^ u_input.a.x, func_1(_wgslsmith_dot_vec2_i32(var_0.a.e.zx, global3.a.a.e.xx) ^ -29891i, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(967f, var_0.a.b.x, var_0.a.b.x)), vec3<f32>(-316f, 363f, global3.b.b.x)))).a.b).a, 88801u);
    global3 = Struct_3(var_1.a, var_0.a, ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, u_input.d.x, 1u) ^ vec3<u32>(4450u, global3.c.x, 35680u), _wgslsmith_mult_vec3_u32(global3.c, vec3<u32>(global3.c.x, u_input.e, 3498u)), global3.c)), select(var_1.c.x >= -_wgslsmith_dot_vec4_i32(var_0.a.e, var_0.a.e), !any(vec2<bool>(true, true)), !global3.d));
    global1 = var_0.a.c;
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.a.b.x, var_1.a.d.x, 280f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(abs(-1000f)))))), var_1.a.d);
    global3 = Struct_3(func_2().a, Struct_1(_wgslsmith_add_vec2_u32(firstLeadingBit(~global3.b.a), ~(~global3.c.xz)), global3.a.a.b, ~(~func_2().c.x), 1i, vec4<i32>(1i, var_0.a.d ^ (-2147483647i << (var_1.e % 32u)), 32694i, u_input.b.x)), countOneBits(~(~_wgslsmith_mult_vec3_u32(global3.c, global3.c))), any(select(vec2<bool>(all(vec3<bool>(false, global3.d, global3.d)), true), vec2<bool>(true, true), !any(vec2<bool>(true, false)))));
    var var_3 = Struct_1(u_input.d, var_0.a.b, 0u, -(~abs(global3.a.e.x)), global3.a.a.e);
    let x = u_input.a;
    s_output = StorageBuffer(1u << (global3.b.c % 32u), ~_wgslsmith_mod_u32(var_1.e, 1u), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.b.b.x, 162f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1120f, -1000f) * var_2.yw)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.d.x)) * _wgslsmith_f_op_f32(select(-580f, var_0.a.b.x, false))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global3.b.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b.x) - func_2().a.b.x))), _wgslsmith_f_op_f32(sign(var_1.a.b.x))));
}

