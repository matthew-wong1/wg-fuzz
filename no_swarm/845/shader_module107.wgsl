struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: f32,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, true);

var<private> global1: Struct_2;

var<private> global2: f32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: Struct_1) -> f32 {
    var var_0 = ~u_input.a;
    var var_1 = all(select(select(arg_3.b, vec3<bool>(true, arg_1.c.b.x && global0.x, true), select(!vec3<bool>(arg_0.b.d, global0.x, true), arg_0.c.b, vec3<bool>(global0.x, true, true))), vec3<bool>(_wgslsmith_f_op_f32(trunc(global1.a.x)) < _wgslsmith_f_op_f32(-arg_3.c), -arg_3.a.x >= -38522i, true), !arg_1.c.b.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-738f, arg_1.b.c, arg_2.x) * vec3<f32>(arg_0.b.c, 417f, -1140f)) + vec3<f32>(_wgslsmith_f_op_f32(arg_0.a.x + 916f), -700f, _wgslsmith_f_op_f32(-360f - -2454f))), vec3<f32>(215f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(560f))), -1312f), arg_3.b))));
    var_0 = ~4294967295u;
    var_0 = u_input.a;
    return _wgslsmith_div_f32(arg_0.c.c, _wgslsmith_f_op_f32(f32(-1f) * -151f));
}

fn func_2(arg_0: f32, arg_1: Struct_3) -> Struct_2 {
    let var_0 = select(vec4<bool>(false, arg_1.e.b.d, !all(select(global0.zy, global1.c.b.yy, vec2<bool>(false, true))), arg_1.e.c.b.x), vec4<bool>(true, 670f == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-604f + 437f))), true, global0.x), !vec4<bool>(false, all(!global1.b.b.xy), false, !(global1.c.c != global1.c.c)));
    let var_1 = arg_1;
    let var_2 = global1.b;
    let var_3 = -countOneBits(vec2<i32>(51241i, arg_1.e.c.a.x >> (var_1.d % 32u)));
    global2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0)));
    return Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_1.a.b.c) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.c, global1.b.c))))), Struct_1(-(_wgslsmith_mod_vec3_i32(u_input.c, vec3<i32>(-5419i, var_2.a.x, 1i)) & vec3<i32>(-52577i, 0i, var_2.a.x)), select(var_1.a.c.b, !var_1.e.c.b, !(!arg_1.e.b.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(global1.a, Struct_1(var_2.a, vec3<bool>(var_1.a.b.d, true, global0.x), var_2.c, arg_1.a.b.b.x), Struct_1(vec3<i32>(-4668i, -49354i, 43373i), vec3<bool>(var_1.e.c.b.x, var_0.x, global1.c.d), -1000f, var_2.b.x)), Struct_2(var_1.a.a, global1.b, Struct_1(arg_1.a.b.a, vec3<bool>(true, true, true), global1.b.c, var_0.x)), vec2<f32>(arg_0, 585f), arg_1.e.b)) + -2082f), arg_1.e.b.d), var_1.e.b);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: Struct_2) -> bool {
    global2 = 1452f;
    var var_0 = Struct_1(-(~u_input.d), vec3<bool>(false, true, false), -1074f, true);
    var var_1 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_3.b.c)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(arg_2, Struct_2(vec2<f32>(global1.a.x, arg_2.c.c), arg_3.c, Struct_1(vec3<i32>(1i, -53626i, -54630i), vec3<bool>(arg_0.x, arg_0.x, true), global1.a.x, arg_2.c.d)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(270f, global1.a.x)), Struct_1(vec3<i32>(0i, 1i, global1.c.a.x), arg_0.xyx, arg_2.a.x, true)))))), Struct_3(Struct_2(arg_3.a, func_2(-895f, Struct_3(arg_2, u_input.c.xz, arg_2.b.c, u_input.a, Struct_2(arg_3.a, Struct_1(vec3<i32>(arg_2.b.a.x, u_input.d.x, arg_2.b.a.x), arg_0.wyx, -1285f, arg_2.c.b.x), Struct_1(global1.b.a, arg_2.c.b, global1.c.c, arg_3.c.b.x)))).c, Struct_1(vec3<i32>(arg_3.b.a.x, -2147483647i, arg_2.b.a.x), select(vec3<bool>(var_0.b.x, true, global1.c.d), var_0.b, global1.c.b), global1.c.c, any(global0.xz))), select(-abs(vec2<i32>(-17415i, 59318i)), _wgslsmith_mod_vec2_i32(vec2<i32>(-7112i, arg_3.c.a.x), vec2<i32>(var_0.a.x, -20291i)), arg_0.zw), 1116f, u_input.a, Struct_2(vec2<f32>(_wgslsmith_div_f32(global1.a.x, arg_3.b.c), _wgslsmith_f_op_f32(-global1.b.c)), Struct_1(abs(global1.c.a), !vec3<bool>(global1.b.d, global1.c.d, false), _wgslsmith_f_op_f32(arg_2.c.c + global1.b.c), true), Struct_1(~vec3<i32>(-1520i, u_input.b.x, -30972i), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(floor(-1142f)), true)))).c;
    var var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -842f), func_2(arg_3.b.c, Struct_3(arg_3, vec2<i32>(19040i, -24473i), 1593f, arg_1.x, Struct_2(arg_2.a, arg_3.c, Struct_1(var_0.a, vec3<bool>(arg_3.c.b.x, arg_2.b.d, false), var_1.c, false)))).b.c)))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1142f, _wgslsmith_f_op_f32(-var_1.c))))));
    let var_3 = vec4<bool>(1u < firstTrailingBit(firstLeadingBit(1u)), var_1.b.x, !(arg_2.b.d & true), !(any(!arg_0) && global0.x));
    return any(select(vec3<bool>(true, arg_3.b.a.x <= var_0.a.x, arg_3.c.d), var_1.b, !vec3<bool>(true, var_3.x, true))) || !arg_2.b.b.x;
}

fn func_1() -> StorageBuffer {
    var var_0 = u_input.a;
    var var_1 = vec4<i32>(~(~firstTrailingBit(0i) ^ u_input.c.x), 49386i, u_input.d.x, global1.b.a.x);
    global0 = select(!vec3<bool>(func_4(!vec4<bool>(true, global1.c.b.x, global0.x, global1.c.d), vec3<u32>(u_input.a, u_input.a, 1u) >> (vec3<u32>(4294967295u, 4294967295u, 33878u) % vec3<u32>(32u)), Struct_2(vec2<f32>(global1.c.c, global1.c.c), Struct_1(global1.c.a, vec3<bool>(false, false, global1.b.b.x), -172f, global0.x), global1.c), func_2(global1.c.c, Struct_3(Struct_2(global1.a, Struct_1(var_1.ywx, global1.c.b, 1000f, global1.b.b.x), global1.c), vec2<i32>(var_1.x, var_1.x), global1.a.x, u_input.a, Struct_2(vec2<f32>(global1.b.c, global1.a.x), global1.b, global1.c)))), !select(global0.x, true, global0.x), true), !vec3<bool>(true, global1.b.b.x, true || any(vec3<bool>(true, true, false))), vec3<bool>(func_4(vec4<bool>(all(vec4<bool>(true, true, global1.b.d, global1.c.b.x)), !global1.c.d, global1.a.x > -198f, global1.b.d), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(274u, u_input.a, u_input.a))), Struct_2(global1.a, global1.b, Struct_1(vec3<i32>(12953i, global1.b.a.x, u_input.b.x), global1.c.b, global1.a.x, global1.c.d)), func_2(global1.a.x, Struct_3(Struct_2(global1.a, global1.c, global1.b), u_input.b.zz, 155f, u_input.a, Struct_2(vec2<f32>(-1753f, 1486f), Struct_1(vec3<i32>(var_1.x, u_input.c.x, -2147483647i), vec3<bool>(true, false, false), global1.c.c, global0.x), Struct_1(vec3<i32>(19934i, var_1.x, var_1.x), vec3<bool>(global0.x, true, global0.x), 736f, global0.x))))), u_input.a >= u_input.a, _wgslsmith_div_i32(abs(global1.c.a.x), ~var_1.x) < countOneBits(global1.c.a.x >> (u_input.a % 32u))));
    var_0 = 1u >> ((_wgslsmith_mult_u32(u_input.a, 32691u) ^ u_input.a) % 32u);
    var var_2 = func_2(1684f, Struct_3(Struct_2(vec2<f32>(-280f, _wgslsmith_f_op_f32(1553f + global1.c.c)), global1.c, global1.c), global1.c.a.xx, -125f, ~_wgslsmith_sub_u32(reverseBits(0u), firstTrailingBit(u_input.a)), func_2(842f, Struct_3(func_2(-2554f, Struct_3(Struct_2(global1.a, global1.c, Struct_1(vec3<i32>(global1.c.a.x, -4569i, -9406i), vec3<bool>(false, global0.x, global1.b.b.x), -847f, false)), var_1.yy, 636f, 47975u, Struct_2(vec2<f32>(295f, 289f), global1.b, global1.b))), global1.b.a.yz, _wgslsmith_f_op_f32(step(1661f, global1.b.c)), _wgslsmith_mod_u32(56122u, 47197u), func_2(global1.a.x, Struct_3(Struct_2(global1.a, Struct_1(vec3<i32>(1i, 12861i, u_input.c.x), global1.b.b, global1.a.x, global1.b.d), global1.c), vec2<i32>(-2147483647i, -1318i), 353f, u_input.a, Struct_2(global1.a, global1.b, global1.b)))))));
    return StorageBuffer(_wgslsmith_f_op_f32(max(var_2.c.c, 1405f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.c - -1316f)), -795f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(vec2<f32>(var_2.b.c, -1000f), global1.b, global1.b), func_2(var_2.b.c, Struct_3(Struct_2(vec2<f32>(822f, -2478f), Struct_1(vec3<i32>(var_1.x, var_1.x, var_2.b.a.x), vec3<bool>(false, global1.c.d, false), 349f, global1.b.d), Struct_1(vec3<i32>(11670i, var_2.c.a.x, var_1.x), vec3<bool>(true, false, true), -584f, global0.x)), var_1.zw, global1.b.c, u_input.a, Struct_2(vec2<f32>(964f, -1023f), global1.b, Struct_1(vec3<i32>(0i, var_1.x, u_input.d.x), var_2.b.b, global1.a.x, global0.x)))), global1.a, Struct_1(vec3<i32>(32572i, 8258i, 23833i), vec3<bool>(global0.x, global0.x, true), global1.c.c, false))) - 135f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global1.a, Struct_1(select(vec3<i32>(0i ^ u_input.d.x, global1.b.a.x, ~0i), vec3<i32>(-43430i, global1.b.a.x, ~global1.b.a.x), global1.c.b), !global1.c.b, _wgslsmith_f_op_f32(-global1.c.c), any(!(!global1.c.b.zz))), Struct_1(-u_input.b.yyz, global1.b.b, -361f, any(!(!vec4<bool>(true, true, true, global1.b.b.x)))));
    var var_1 = Struct_2(global1.a, Struct_1(-_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(global1.c.a, vec3<i32>(24626i, u_input.c.x, global1.b.a.x)), ~var_0.b.a), var_0.c.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1338f))), true), var_0.b);
    let x = u_input.a;
    s_output = func_1();
}

