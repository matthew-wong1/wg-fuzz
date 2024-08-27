struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 7>;

var<private> global1: array<f32, 26>;

var<private> global2: Struct_4;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> i32 {
    return ~2147483647i;
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<bool>) -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(157f, global2.a, global2.a, 992f)))))), _wgslsmith_f_op_vec2_f32(abs(global2.b.b.a.zx)), true | select(!arg_1.x & true, false, global2.b.c));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-645f + -2793f), 1000f, all(!select(!vec4<bool>(arg_1.x, true, global2.b.c, false), vec4<bool>(true, true, arg_1.x, var_0.c), false))));
    let var_2 = vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(~arg_0.yy, arg_0.yy), -_wgslsmith_add_i32(arg_0.x, arg_0.x), global2.c.x), ~1i & arg_0.x, 14175i);
    global2 = Struct_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - var_1)))), global2.b, _wgslsmith_sub_vec4_i32(-(~arg_0), countOneBits(~vec4<i32>(arg_0.x, arg_0.x, 0i, u_input.c.x))), ~(global2.c.zxx & u_input.c.wwy));
    global1 = array<f32, 26>();
    return _wgslsmith_mod_vec4_u32(abs(vec4<u32>(max(select(u_input.a, global2.b.a, true), u_input.b), global2.b.a, 0u, ~_wgslsmith_div_u32(4294967295u, 109418u))), ~vec4<u32>(_wgslsmith_sub_u32(global2.b.a >> (global2.b.a % 32u), 0u), u_input.b, 0u, 16820u));
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_4 {
    let var_0 = Struct_3(arg_1, select(abs(func_3(vec4<i32>(global2.d.x, arg_1, global2.c.x, -45381i) << (vec4<u32>(53269u, 24189u, u_input.a, 0u) % vec4<u32>(32u)), select(vec3<bool>(false, global2.b.c, false), vec3<bool>(false, true, true), false))), vec4<u32>(~global2.b.a, func_3(global2.c, vec3<bool>(global2.b.c, global2.b.c, false)).x, 4294967295u, u_input.b) & vec4<u32>(~73740u, global2.b.a, global2.b.a, global2.b.a), any(!vec3<bool>(global2.b.c, global2.b.d.x, true)) || all(select(vec4<bool>(false, true, global2.b.c, global2.b.b.c), vec4<bool>(global2.b.d.x, false, global2.b.d.x, global2.b.d.x), vec4<bool>(false, false, global2.b.c, global2.b.c)))), ~max(~vec4<u32>(u_input.a, 3687u, global2.b.a, u_input.a) >> (~vec4<u32>(u_input.b, global2.b.a, u_input.b, 1u) % vec4<u32>(32u)), ~(~vec4<u32>(u_input.b, global2.b.a, u_input.b, 0u))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.b.b.x, 314f, -1000f, global1[_wgslsmith_index_u32(30546u, 26u)]) * _wgslsmith_f_op_vec4_f32(sign(global2.b.b.a))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(global2.b.b.a - vec4<f32>(-400f, 1270f, -129f, arg_0))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(700f, 171f))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1[_wgslsmith_index_u32(global2.b.a, 26u)], -1001f)))) - global2.b.b.a.ww), true), select(global2.c.xwy, u_input.c.wwy, any(vec4<bool>(true, !global2.b.c, global2.b.b.c, true))));
    let var_1 = abs(arg_1);
    let var_2 = vec2<bool>(var_0.d.c, all(select(vec4<bool>(any(vec4<bool>(false, true, var_0.d.c, var_0.d.c)), var_0.d.c, global2.b.d.x | true, false), !vec4<bool>(false, global2.b.c, global2.b.d.x, false), vec4<bool>(true, all(vec4<bool>(global2.b.b.c, false, false, true)), true, true & global2.b.c))));
    global2 = Struct_4(-985f, global2.b, _wgslsmith_add_vec4_i32(-global2.c, vec4<i32>(-arg_1 >> (_wgslsmith_div_u32(4294967295u, global2.b.a) % 32u), -47716i, u_input.c.x >> (_wgslsmith_dot_vec4_u32(var_0.b, vec4<u32>(48860u, var_0.b.x, 21342u, 0u)) % 32u), min(2147483647i, u_input.c.x | -1i))), u_input.c.yzw);
    var var_3 = global2.b;
    return Struct_4(1512f, Struct_2(firstTrailingBit(4294967295u), global2.b.b, select(var_2.x, true, var_2.x & any(vec3<bool>(global2.b.c, global2.b.d.x, var_2.x))), vec2<bool>(var_2.x, all(var_3.d) | select(var_3.c, false, var_3.b.c))), ~reverseBits(-global2.c) & vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(0i, u_input.c.x), 1i), -21012i << ((var_0.b.x & 4294967295u) % 32u), firstTrailingBit(global2.d.x | -17762i), ~1i), countOneBits(_wgslsmith_mult_vec3_i32(~var_0.e >> ((vec3<u32>(0u, 16329u, 1u) ^ var_0.c.xwy) % vec3<u32>(32u)), -var_0.e)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_2(1032f, func_1());
    let var_0 = !(!global2.b.d);
    global1 = array<f32, 26>();
    let var_1 = Struct_5(func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1897f + global2.a), func_2(717f, -34186i).a, false)))), ~(~(u_input.d.x << (global2.b.a % 32u)))).b.b, var_0, vec2<i32>(global2.d.x ^ ~global2.c.x, 1233i), func_2(_wgslsmith_f_op_f32(-global2.a), firstTrailingBit(max(_wgslsmith_mult_i32(0i, -2147483647i), firstTrailingBit(global2.c.x)))).b.b);
    global1 = array<f32, 26>();
    global1 = array<f32, 26>();
    var var_2 = func_2(-1043f, u_input.d.x).b.b;
    let var_3 = Struct_3(i32(-1i) * -global2.c.x, ~vec4<u32>(_wgslsmith_sub_u32(max(54252u, u_input.b), _wgslsmith_add_u32(1u, u_input.a)), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, global2.b.a, global2.b.a, global2.b.a), vec4<u32>(4294967295u, 29883u, 0u, 17630u)), u_input.b), _wgslsmith_add_u32(_wgslsmith_sub_u32(1u, global2.b.a), min(u_input.b, global2.b.a)), 4294967295u), ~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, global2.b.a, u_input.a, 5955u), vec4<u32>(33878u, 71595u, 4294967295u, 4294967295u)) << ((vec4<u32>(u_input.b, global2.b.a, 0u, global2.b.a) >> (vec4<u32>(0u, u_input.b, 4294967295u, 99761u) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(1u, firstLeadingBit(3487u), ~global2.b.a, min(0u, 111142u))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)), 2147483647i).b.b, -firstTrailingBit(vec3<i32>(1i, u_input.c.x | var_1.c.x, _wgslsmith_sub_i32(var_1.c.x, 14186i))));
    var_2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.a.x, var_3.d.a.x) - _wgslsmith_div_f32(var_3.d.b.x, -245f))))), ~(_wgslsmith_sub_i32(~1i, global2.c.x) >> (var_3.b.x % 32u))).b.b;
    let x = u_input.a;
    s_output = StorageBuffer(1f, 0u, 2147483647i);
}

