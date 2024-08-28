struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: i32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 4>;

var<private> global1: Struct_5;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec2<i32>) -> vec2<i32> {
    var var_0 = u_input.b;
    let var_1 = Struct_3(~arg_1.e.a, ~min(-u_input.a << (~arg_0 % 32u), arg_1.d.a.x));
    global0 = array<Struct_5, 4>();
    global1 = Struct_5(global1.a, var_1, arg_2.x, global1.b.a.zz);
    global1 = global0[_wgslsmith_index_u32(4294967295u, 4u)];
    return ~(-vec2<i32>(arg_2.x, u_input.a));
}

fn func_2() -> vec4<i32> {
    var var_0 = vec3<i32>(~(~(-u_input.a)), 3808i, 1i) | global1.b.a;
    var var_1 = global1.b;
    var var_2 = Struct_3(vec3<i32>(_wgslsmith_div_i32(reverseBits(-22548i), 1i ^ global1.b.a.x), -_wgslsmith_add_i32(-17755i, 32949i), ~(-86192i & var_0.x)) | -var_1.a, 15198i);
    var_0 = vec3<i32>(-1i, var_0.x, 39243i);
    let var_3 = Struct_3(vec3<i32>(min(-2147483647i, 15109i), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(func_3(u_input.b, Struct_2(Struct_1(var_1.a, var_0.x, -110f), Struct_1(global1.b.a, 21634i, -2237f), vec2<u32>(u_input.b, 30422u), Struct_1(var_1.a, var_2.b, -711f), Struct_1(var_2.a, u_input.a, -1045f)), var_1.a.xz), var_0.yz), ~(-var_2.a.xz)), -abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_0.x, 26105i, u_input.a), vec4<i32>(var_1.a.x, u_input.a, u_input.a, -2147483647i)))), 0i);
    return _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, var_2.b, countOneBits(var_3.b), _wgslsmith_sub_i32(var_2.a.x, var_0.x)), ~(vec4<i32>(9166i, -69226i, -2147483647i, var_0.x) ^ vec4<i32>(var_3.b, 2147483647i, -1i, 0i))), abs(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(var_2.a.x, 0i, -2147483647i, var_3.b)), ~vec4<i32>(u_input.a, -2147483647i, var_0.x, 12731i)))), -select(_wgslsmith_mult_vec4_i32(~vec4<i32>(0i, 7565i, global1.d.x, 1i), vec4<i32>(var_3.b, -39690i, -2147483647i, -69893i)), -vec4<i32>(var_0.x, 39131i, 47390i, var_3.a.x) ^ max(vec4<i32>(u_input.a, var_0.x, var_1.b, global1.d.x), vec4<i32>(var_3.a.x, u_input.a, var_0.x, global1.c)), true & !global1.a));
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_sub_vec4_i32(max(func_2(), vec4<i32>(max(1i, u_input.a), _wgslsmith_sub_i32(global1.d.x, u_input.a) & firstLeadingBit(u_input.a), -u_input.a, ~(-u_input.a))), ~(vec4<i32>(_wgslsmith_add_i32(u_input.a, 23577i), global1.b.a.x, 2147483647i, 0i) << (~vec4<u32>(u_input.b, u_input.b, 0u, u_input.b) % vec4<u32>(32u))));
    var var_1 = Struct_2(Struct_1(~(~(vec3<i32>(44654i, var_0.x, -43718i) & var_0.xww)), func_3(1u, Struct_2(Struct_1(vec3<i32>(var_0.x, global1.c, 2147483647i), 53796i, 807f), Struct_1(vec3<i32>(1i, 1i, global1.c), -2147483647i, -142f), vec2<u32>(1u, 0u), Struct_1(var_0.yyy, 2147483647i, 719f), Struct_1(var_0.ywx, u_input.a, 469f)), firstTrailingBit(var_0.yx)).x >> (abs(countOneBits(25157u)) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(342f, -361f, global1.a)) + -1392f) - 1f)), Struct_1(~vec3<i32>(var_0.x, var_0.x ^ u_input.a, _wgslsmith_div_i32(var_0.x, 0i)), -(~0i), 407f), _wgslsmith_clamp_vec2_u32(select(select(~vec2<u32>(18980u, u_input.b), ~vec2<u32>(26288u, 0u), select(vec2<bool>(false, global1.a), vec2<bool>(global1.a, global1.a), true)), vec2<u32>(u_input.b, u_input.b), true), ~firstTrailingBit(vec2<u32>(u_input.b, 21872u)), min(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 45766u) ^ vec2<u32>(1u, u_input.b), min(vec2<u32>(u_input.b, 33093u), vec2<u32>(4294967295u, u_input.b))), _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(u_input.b, 4294967295u)))), Struct_1(abs(-max(vec3<i32>(global1.c, 2147483647i, 2147483647i), var_0.wzy)), -global1.d.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-849f)), _wgslsmith_f_op_f32(-1937f + 1f)))), Struct_1(-_wgslsmith_sub_vec3_i32(vec3<i32>(0i, u_input.a, global1.b.a.x), var_0.yxz >> (vec3<u32>(0u, 93059u, 27874u) % vec3<u32>(32u))), firstTrailingBit(-global1.c), 1492f));
    var var_2 = Struct_4(true & all(select(vec4<bool>(false, global1.a, global1.a, global1.a), select(vec4<bool>(global1.a, global1.a, true, global1.a), vec4<bool>(global1.a, global1.a, global1.a, true), vec4<bool>(global1.a, true, false, global1.a)), -7042i > var_1.e.b)), Struct_2(var_1.d, var_1.e, var_1.c | var_1.c, var_1.d, Struct_1(_wgslsmith_clamp_vec3_i32(-global1.b.a, select(var_1.a.a, var_1.a.a, vec3<bool>(global1.a, global1.a, global1.a)), vec3<i32>(global1.b.a.x, var_0.x, global1.b.b)), firstLeadingBit(2054i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_1.e.c)))))), Struct_3(~min(~vec3<i32>(10286i, global1.d.x, 43519i), abs(global1.b.a)), var_0.x));
    var var_3 = var_1.c.x;
    var var_4 = Struct_1(-var_0.zyy, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.b.c), -1636f))));
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0[_wgslsmith_index_u32(u_input.b, 4u)];
    var var_0 = ~firstLeadingBit(firstTrailingBit(~(~vec4<u32>(1u, 72112u, 21693u, u_input.b))));
    let var_1 = select(vec2<bool>(!any(select(vec2<bool>(global1.a, global1.a), vec2<bool>(true, false), global1.a)), u_input.a < _wgslsmith_sub_i32(~global1.d.x, -global1.c)), select(select(select(vec2<bool>(global1.a, global1.a), vec2<bool>(global1.a, true), false), !vec2<bool>(global1.a, global1.a), all(!vec3<bool>(false, global1.a, true))), vec2<bool>(func_1() & global1.a, false), select(vec2<bool>(global1.a, false), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, global1.a)), select(!vec2<bool>(global1.a, true), vec2<bool>(true, global1.a), true))), !select(!vec2<bool>(global1.a, global1.a), vec2<bool>(true, true), !(!vec2<bool>(false, global1.a))));
    let var_2 = 1i;
    var_0 = max(~vec4<u32>(~u_input.b, _wgslsmith_clamp_u32(var_0.x, u_input.b, var_0.x) >> (_wgslsmith_mod_u32(10281u, 91537u) % 32u), var_0.x, 0u), vec4<u32>(8778u, 0u, _wgslsmith_mult_u32(~_wgslsmith_clamp_u32(u_input.b, u_input.b, 0u), ~var_0.x), 10948u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(select(-563f, -350f, true)), 1f)) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -365f), 623f, -222f)), ~(~(func_3(u_input.b, Struct_2(Struct_1(vec3<i32>(1i, 1i, 0i), -8703i, -429f), Struct_1(global1.b.a, -17138i, 1348f), vec2<u32>(10461u, u_input.b), Struct_1(vec3<i32>(4587i, 18764i, global1.b.a.x), 35972i, -155f), Struct_1(global1.b.a, global1.c, -493f)), global1.d).x << (~6019u % 32u))), -2147483647i, global1.b.a.x);
}

