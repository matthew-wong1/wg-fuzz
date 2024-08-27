struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec3<bool>,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec4<i32>,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 1>;

var<private> global1: vec3<i32> = vec3<i32>(-1i, i32(-2147483648), 2147483647i);

var<private> global2: Struct_5 = Struct_5(vec3<bool>(true, true, true), vec2<i32>(i32(-2147483648), 2147483647i), Struct_4(1i, Struct_1(vec3<f32>(1130f, -783f, 2022f), 6049i, vec3<bool>(false, true, true), vec2<f32>(-1088f, -873f), 0u)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = global2.c.b;
    global0 = array<vec2<bool>, 1>();
    global2 = Struct_5(select(!(!select(var_0.c, var_0.c, var_0.c.x)), select(vec3<bool>(global2.a.x, var_0.c.x, var_0.c.x), vec3<bool>(true, true, false), global2.c.b.c), any(vec4<bool>(!var_0.c.x, true, 3367u > var_0.e, true))), vec2<i32>(var_0.b & firstLeadingBit(global1.x), global2.b.x), global2.c);
    let var_1 = _wgslsmith_mult_i32(~(~_wgslsmith_mod_i32(2147483647i, var_0.b)), 1i);
    var var_2 = Struct_5(vec3<bool>(!any(vec4<bool>(true, global2.c.b.c.x, false, true)), !(_wgslsmith_f_op_f32(step(global2.c.b.d.x, -1235f)) <= 827f), any(select(!var_0.c.zz, global2.a.xz, false || global2.c.b.c.x))), global1.xx, global2.c);
    return min(_wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.e.xwy) ^ u_input.e.wxx, u_input.e.xwy), _wgslsmith_div_u32(0u, select(_wgslsmith_add_u32(1u, global2.c.b.e), 1u, var_0.c.x)));
}

fn func_2() -> Struct_3 {
    var var_0 = ~reverseBits(22294u);
    var_0 = firstLeadingBit(~abs(u_input.a.x) ^ 1u) << (_wgslsmith_sub_u32(u_input.c, min(func_3(), ~global2.c.b.e)) % 32u);
    var_0 = ~(~u_input.b.x);
    var_0 = ~67114u;
    var_0 = firstLeadingBit(_wgslsmith_div_u32(_wgslsmith_clamp_u32(4294967295u, 0u, ~u_input.b.x) ^ (~u_input.c << (_wgslsmith_clamp_u32(global2.c.b.e, u_input.c, 4294967295u) % 32u)), countOneBits(firstTrailingBit(84773u) | countOneBits(0u))));
    return Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 47741i, global2.b.x), u_input.d.zwx), 0i, u_input.d.x) & reverseBits(_wgslsmith_add_vec4_i32(u_input.d, u_input.d)), vec4<i32>(global1.x >> (u_input.e.x % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(1577i, u_input.d.x), u_input.d.xx) ^ _wgslsmith_div_i32(global2.c.a, -1i), _wgslsmith_div_i32(u_input.d.x, global1.x >> (37772u % 32u)), u_input.d.x)), Struct_2(vec4<i32>(-1i) * -(u_input.d << (u_input.e % vec4<u32>(32u))), -1668i, true, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global2.c.b.a, vec3<f32>(global2.c.b.d.x, 683f, global2.c.b.d.x))), -21342i & -u_input.d.x, global2.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c.b.a.x, 191f))), u_input.c)), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, global1.x, ~countOneBits(30256i), 14437i), reverseBits(reverseBits(u_input.d)) >> (vec4<u32>(~u_input.b.x, _wgslsmith_add_u32(u_input.a.x, global2.c.b.e), 1u, global2.c.b.e) % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.b.d.x, _wgslsmith_f_op_f32(-global2.c.b.d.x), global2.c.b.d.x)), 0i, select(global2.a, vec3<bool>(true | global2.c.b.c.x, global2.a.x, any(vec3<bool>(global2.a.x, false, false))), false), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global2.c.b.d.x, global2.c.b.a.x), _wgslsmith_div_vec2_f32(vec2<f32>(global2.c.b.d.x, global2.c.b.a.x), vec2<f32>(895f, global2.c.b.a.x))), _wgslsmith_div_vec2_f32(vec2<f32>(global2.c.b.a.x, 262f), global2.c.b.d)), 65130u), !(!(!(!vec2<bool>(global2.c.b.c.x, global2.a.x)))));
}

fn func_1() -> Struct_1 {
    var var_0 = func_2();
    var_0 = func_2();
    let var_1 = func_2();
    var var_2 = Struct_2(func_2().b.a, ~_wgslsmith_add_i32(global2.b.x, -1i), select(true, all(vec4<bool>(false, false, 1126f > var_1.d.a.x, any(vec4<bool>(var_1.e.x, var_1.d.c.x, global2.a.x, var_0.b.d.c.x)))), all(global2.c.b.c.xz)), func_2().d);
    let var_3 = 1i & _wgslsmith_div_i32(abs(var_0.a), -31354i);
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(265f, global2.c.b.a.x, var_2.d.a.x))))), reverseBits(1i), func_2().b.d.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1392f, 1317f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.d.a.xy))) * vec2<f32>(1003f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.b.d.d.x), 143f, var_1.e.x || false)))), firstLeadingBit(var_2.d.e));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> f32 {
    let var_0 = u_input.b;
    var var_1 = func_2();
    let var_2 = global2.c.b.e;
    global0 = array<vec2<bool>, 1>();
    let var_3 = arg_0.x;
    return _wgslsmith_f_op_f32(var_1.b.d.d.x - var_1.b.d.a.x);
}

fn func_5(arg_0: f32, arg_1: Struct_5, arg_2: vec2<f32>) -> i32 {
    global0 = array<vec2<bool>, 1>();
    global1 = ~u_input.d.yxy & firstTrailingBit(abs(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, 2147483647i, global2.b.x), countOneBits(u_input.d.zzw))));
    var var_0 = 763f;
    var var_1 = vec3<i32>(_wgslsmith_mult_i32(-global1.x, max(u_input.d.x, _wgslsmith_sub_i32(global2.c.b.b, 0i))) >> (select(func_2().d.e << (_wgslsmith_dot_vec2_u32(u_input.e.xy, vec2<u32>(29101u, u_input.c)) % 32u), _wgslsmith_clamp_u32(28495u, 4294967295u, global2.c.b.e) & ~u_input.a.x, !global2.a.x) % 32u), global1.x, ~_wgslsmith_div_i32(-arg_1.c.a, global2.b.x & global2.b.x));
    let var_2 = func_2();
    return 45227i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.d.yzw;
    var var_0 = vec4<i32>(func_5(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(549f, 123f, -227f, global2.c.b.d.x), vec4<f32>(global2.c.b.a.x, global2.c.b.d.x, global2.c.b.a.x, -188f))), func_1())), Struct_5(select(select(global2.c.b.c, global2.a, vec3<bool>(true, false, false)), select(global2.a, vec3<bool>(false, global2.a.x, false), vec3<bool>(false, global2.c.b.c.x, global2.c.b.c.x)), !vec3<bool>(global2.c.b.c.x, global2.a.x, true)), max(vec2<i32>(global1.x, u_input.d.x) ^ vec2<i32>(global2.c.b.b, 32474i), ~vec2<i32>(global2.c.a, -2147483647i)), Struct_4(2147483647i, func_2().b.d)), _wgslsmith_f_op_vec2_f32(min(global2.c.b.a.zz, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.c.b.a.x, 740f), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c.b.d.x, -342f) - vec2<f32>(global2.c.b.d.x, 283f)), !vec2<bool>(false, global2.c.b.c.x)))))), i32(-1i) * -47445i, -u_input.d.x, _wgslsmith_dot_vec3_i32(-_wgslsmith_mult_vec3_i32(u_input.d.wwz, ~vec3<i32>(0i, global1.x, 2147483647i)), u_input.d.xyx));
    var_0 = abs(reverseBits(reverseBits(countOneBits(u_input.d)))) | ~u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(0i | _wgslsmith_sub_i32(~(-1i), _wgslsmith_sub_i32(var_0.x, select(2147483647i, 1i, global2.c.b.c.x))));
}

