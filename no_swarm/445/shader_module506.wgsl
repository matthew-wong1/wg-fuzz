struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: bool,
    d: Struct_2,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec2<f32> = vec2<f32>(-386f, -462f);

var<private> global2: vec3<i32> = vec3<i32>(i32(-2147483648), -56680i, i32(-2147483648));

var<private> global3: vec3<bool>;

var<private> global4: array<vec2<f32>, 5>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
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

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2) -> vec4<u32> {
    let var_0 = select(select(select(arg_2.a.zz, _wgslsmith_add_vec2_i32(vec2<i32>(arg_0, arg_0), vec2<i32>(u_input.c, -19130i)), global3.x), ~global2.zy, true), min(vec2<i32>(-1i, 1i), select(vec2<i32>(-1i, arg_1.b), vec2<i32>(arg_2.c.b, arg_0), true)) ^ global2.xx, select(!arg_2.d.a, !global3.zz, select(!vec2<bool>(true, arg_1.a.x), !arg_1.a, true))) << (countOneBits(~(~firstLeadingBit(global0.zx))) % vec2<u32>(32u));
    var var_1 = vec3<i32>(1i, arg_0 & reverseBits(arg_2.b.b), arg_2.b.b);
    global2 = arg_2.a;
    var var_2 = Struct_1(select(arg_1.a, !arg_1.a, arg_2.d.a.x), min(-_wgslsmith_div_i32(-1i, -var_1.x), i32(-1i) * -1i), -1000f);
    global4 = array<vec2<f32>, 5>();
    return countOneBits(reverseBits(~(~max(vec4<u32>(global0.x, 1u, 16001u, 25389u), vec4<u32>(global0.x, 4294967295u, global0.x, 1u)))));
}

fn func_3(arg_0: i32, arg_1: Struct_5) -> vec3<i32> {
    global3 = arg_1.a.b;
    let var_0 = arg_1.a.a;
    global4 = array<vec2<f32>, 5>();
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b.b.c, -103f), _wgslsmith_f_op_vec2_f32(global4[_wgslsmith_index_u32(39644u, 5u)] - global4[_wgslsmith_index_u32(68586u, 5u)])))))) - global4[_wgslsmith_index_u32(~var_0.e.x, 5u)]);
    global1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(168f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.a.a.d.c.c + -2068f), _wgslsmith_f_op_f32(1274f - 1476f))))))));
    return abs(~max(vec3<i32>(~arg_0, u_input.a, _wgslsmith_mod_i32(-2147483647i, arg_0)), _wgslsmith_div_vec3_i32(-var_0.d.a, select(var_0.b.a, var_0.b.a, global3.x))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(79688i, Struct_2(_wgslsmith_div_vec3_i32(select(-vec3<i32>(u_input.a, u_input.c, u_input.a), vec3<i32>(2147483647i, 0i, -14331i), select(vec3<bool>(global3.x, true, false), vec3<bool>(global3.x, false, true), vec3<bool>(global3.x, global3.x, global3.x))), select(vec3<i32>(global2.x, 0i, u_input.b), vec3<i32>(u_input.c, 0i, global2.x), vec3<bool>(global3.x, global3.x, global3.x)) & func_3(-1i, Struct_5(Struct_4(Struct_3(global2.x, Struct_2(vec3<i32>(30683i, u_input.c, -2147483647i), Struct_1(vec2<bool>(true, false), -16515i, -2035f), Struct_1(global3.zx, -33i, 822f), Struct_1(global3.zx, u_input.a, 614f)), global3.x, Struct_2(vec3<i32>(global2.x, -18052i, global2.x), Struct_1(global3.yz, 41571i, -768f), Struct_1(global3.zz, -2147483647i, -1084f), Struct_1(global3.zx, -40312i, -1000f)), global0.wz), vec3<bool>(false, global3.x, global3.x)), vec3<u32>(global0.x, global0.x, global0.x)))), Struct_1(vec2<bool>(true, true), 41891i, global1.x), Struct_1(!select(vec2<bool>(true, global3.x), vec2<bool>(true, global3.x), vec2<bool>(false, true)), 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_div_f32(-506f, 758f))), Struct_1(select(vec2<bool>(global3.x, global3.x), vec2<bool>(true, global3.x), global3.zy), u_input.b, _wgslsmith_f_op_f32(-1042f + _wgslsmith_f_op_f32(-global1.x)))), global2.x != 8617i, Struct_2(vec3<i32>(1783i, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, 18087i, 1i, u_input.c) | vec4<i32>(-3457i, global2.x, global2.x, 2147483647i), vec4<i32>(-39325i, -2147483647i, global2.x, 23505i)), 0i), Struct_1(global3.xz, func_3(-27001i, Struct_5(Struct_4(Struct_3(-1i, Struct_2(vec3<i32>(-2147483647i, 2147483647i, global2.x), Struct_1(vec2<bool>(false, global3.x), -7474i, -1553f), Struct_1(vec2<bool>(true, global3.x), global2.x, -836f), Struct_1(global3.yx, 0i, global1.x)), global3.x, Struct_2(vec3<i32>(u_input.a, u_input.b, global2.x), Struct_1(vec2<bool>(true, global3.x), -1i, global1.x), Struct_1(vec2<bool>(true, global3.x), global2.x, -2071f), Struct_1(global3.yy, u_input.a, -545f)), global0.zw), vec3<bool>(global3.x, global3.x, global3.x)), vec3<u32>(global0.x, global0.x, 1u))).x >> (global0.x % 32u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global1.x)), -928f)), Struct_1(!global3.yy, min(1i, _wgslsmith_div_i32(8186i, 2147483647i)), _wgslsmith_f_op_f32(sign(global1.x))), Struct_1(global3.xx, u_input.b ^ 2377i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(865f))))), select(global0.zz, ~(~_wgslsmith_clamp_vec2_u32(global0.xy, vec2<u32>(global0.x, 56002u), vec2<u32>(1u, global0.x))), vec2<bool>(any(vec2<bool>(false, global3.x)), true)));
    var var_1 = global0.x;
    global3 = select(select(!select(select(vec3<bool>(global3.x, true, false), vec3<bool>(var_0.c, true, false), vec3<bool>(var_0.b.c.a.x, var_0.d.c.a.x, var_0.d.d.a.x)), !vec3<bool>(true, var_0.d.d.a.x, true), false), vec3<bool>(var_0.b.d.a.x, true, ~4932u <= var_0.e.x), !var_0.c), vec3<bool>(global3.x, true, true), true);
    var var_2 = min(_wgslsmith_div_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 4294967295u, 0u), global0.ywz), 1u, 1u, 0u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, var_0.e.x, 0u, var_0.e.x), vec4<u32>(74454u, global0.x, 22632u, var_0.e.x)) | (vec4<u32>(global0.x, 4294967295u, global0.x, 30031u) >> (max(vec4<u32>(var_0.e.x, global0.x, var_0.e.x, 0u), vec4<u32>(global0.x, var_0.e.x, var_0.e.x, global0.x)) % vec4<u32>(32u)))), _wgslsmith_add_vec4_u32(select(firstTrailingBit(~vec4<u32>(var_0.e.x, var_0.e.x, var_0.e.x, 4294967295u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, 0u, var_0.e.x, var_0.e.x), vec4<u32>(4294967295u, 32140u, var_0.e.x, 31627u)), vec4<bool>(var_0.d.b.a.x, true, global0.x <= global0.x, any(vec3<bool>(false, false, true)))), vec4<u32>(var_0.e.x, _wgslsmith_sub_u32(53735u, countOneBits(53718u)), var_0.e.x, 17845u ^ global0.x)));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.x))), var_0.b.b.c));
    return Struct_1(global3.yy, _wgslsmith_add_i32(-1i, ~0i), _wgslsmith_f_op_f32(-var_3));
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_4(Struct_3(_wgslsmith_add_i32(arg_0.b, _wgslsmith_sub_i32(global2.x, i32(-1i) * -2147483647i)), Struct_2(-(vec3<i32>(u_input.a, u_input.a, global2.x) << (vec3<u32>(global0.x, 0u, 0u) % vec3<u32>(32u))), arg_0, func_2(), func_2()), global3.x, Struct_2(vec3<i32>(-22927i ^ u_input.b, reverseBits(-27269i), arg_0.b | -2147483647i), func_2(), Struct_1(select(global3.zy, vec2<bool>(false, false), arg_0.a.x), -1i, _wgslsmith_f_op_f32(select(1139f, arg_0.c, true))), Struct_1(select(vec2<bool>(global3.x, global3.x), vec2<bool>(true, false), global3.x), u_input.a, _wgslsmith_f_op_f32(sign(546f)))), global0.xw), vec3<bool>(all(select(!vec3<bool>(global3.x, true, false), vec3<bool>(false, true, false), !vec3<bool>(global3.x, global3.x, false))), !((global2.x >= global2.x) & true), any(!(!arg_0.a))));
    var var_1 = Struct_3(global2.x, var_0.a.d, true, var_0.a.d, var_0.a.e);
    let var_2 = var_0.a;
    global4 = array<vec2<f32>, 5>();
    let var_3 = Struct_2(_wgslsmith_clamp_vec3_i32(var_2.d.a, _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.a, -10934i, _wgslsmith_add_i32(global2.x, arg_0.b)), vec3<i32>(1i, ~var_0.a.b.b.b, _wgslsmith_sub_i32(-6993i, var_1.d.c.b))), var_0.a.b.a), arg_0, Struct_1(global3.xy, _wgslsmith_mod_i32(u_input.c, -21082i), global1.x), Struct_1(func_2().a, 2147483647i, var_0.a.b.d.c));
    return -1478f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(~reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(21609i, 0i, u_input.a, -19790i), firstLeadingBit(vec4<i32>(-14130i, 2147483647i, -13125i, 35538i)))));
    global1 = _wgslsmith_f_op_vec2_f32(sign(global4[_wgslsmith_index_u32(abs(max(global0.x, global0.x)), 5u)]));
    var var_1 = u_input.a;
    global0 = ~select((firstLeadingBit(vec4<u32>(global0.x, global0.x, 31934u, global0.x)) | vec4<u32>(global0.x, global0.x, global0.x, 4294967295u)) | select(vec4<u32>(51222u, global0.x, global0.x, global0.x), max(vec4<u32>(global0.x, global0.x, 13150u, global0.x), vec4<u32>(61945u, global0.x, 1u, global0.x)), vec4<bool>(false, global3.x, global3.x, false)), _wgslsmith_div_vec4_u32(~func_1(u_input.a, Struct_1(global3.yy, -12516i, global1.x), Struct_2(vec3<i32>(global2.x, global2.x, u_input.a), Struct_1(vec2<bool>(false, false), global2.x, -873f), Struct_1(vec2<bool>(true, global3.x), global2.x, global1.x), Struct_1(vec2<bool>(global3.x, global3.x), 4824i, global1.x))), vec4<u32>(1u, ~global0.x, global0.x & global0.x, global0.x)), true);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_4(func_2())), func_2().c, _wgslsmith_f_op_f32(step(-994f, _wgslsmith_f_op_f32(ceil(-810f)))))));
    let var_3 = -(min(-vec4<i32>(global2.x, u_input.c, -3237i, -1i), vec4<i32>(-2147483647i, global2.x, var_0.x, -39789i)) << (~max(vec4<u32>(13324u, 0u, global0.x, 1u), vec4<u32>(global0.x, 13309u, 11067u, 29726u)) % vec4<u32>(32u))) << (vec4<u32>(~(global0.x & select(0u, 4294967295u, false)), global0.x, firstTrailingBit(~(global0.x ^ 0u)), global0.x) % vec4<u32>(32u));
    var var_4 = _wgslsmith_add_i32(abs((~global2.x << (global0.x % 32u)) & ~reverseBits(var_3.x)), ~u_input.c);
    var var_5 = global2.x;
    var var_6 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(func_2().c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(967f - global1.x) * _wgslsmith_f_op_f32(sign(-398f)))), -1459f, var_2.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(vec2<bool>(true, global3.x), u_input.c, 232f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2 - vec3<f32>(global1.x, var_6.x, 544f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-953f, var_6.x, -1382f) + vec3<f32>(var_6.x, var_2.x, var_6.x)))), abs(func_2().b) >> (abs(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0.x, global0.x, global0.x), vec4<u32>(1u, 82331u, 4294967295u, global0.x) >> (vec4<u32>(0u, global0.x, 0u, 46682u) % vec4<u32>(32u)))) % 32u));
}

