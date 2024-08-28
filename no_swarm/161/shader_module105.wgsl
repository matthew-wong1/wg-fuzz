struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<bool>,
    d: Struct_1,
    e: u32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11> = array<f32, 11>(-808f, 1060f, 277f, 822f, 1487f, -237f, -958f, 609f, 827f, -896f, 760f);

var<private> global1: array<u32, 18> = array<u32, 18>(0u, 7305u, 67083u, 4294967295u, 0u, 780u, 0u, 1u, 1u, 1u, 0u, 84841u, 4294967295u, 35694u, 0u, 26187u, 6849u, 16996u);

var<private> global2: array<i32, 4>;

var<private> global3: vec3<u32> = vec3<u32>(32903u, 4294967295u, 4294967295u);

var<private> global4: Struct_1 = Struct_1(1727i, vec4<u32>(1u, 4294967295u, 5786u, 17800u), 372f, false);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: f32, arg_3: bool) -> f32 {
    let var_0 = Struct_2(!select(!(global4.d & false), !global4.d, !(!global4.d)));
    let var_1 = -968f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global4.c)));
    let var_2 = 34980i;
    global3 = abs(global4.b.wzy);
    var var_3 = Struct_5(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(91824u, 11u)])), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global4.b.x, 11u)] + global4.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global3.x, 11u)]) + global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2478u, 18u)], 18u)], global4.b.x, 46778u, arg_1.x), arg_1), 11u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(global3.x, 11u)], global0[_wgslsmith_index_u32(global4.b.x, 11u)], false)), _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(67625u, 18u)], 11u)])), _wgslsmith_f_op_f32(select(arg_2, 644f, arg_3)))))), _wgslsmith_mult_i32(30657i, ~(-24894i)), vec3<i32>(1i, _wgslsmith_dot_vec2_i32(-u_input.a.zx, u_input.a.yx ^ vec2<i32>(-2147483647i, -1i)), global2[_wgslsmith_index_u32(global3.x >> (_wgslsmith_dot_vec3_u32(arg_1.yxx >> (vec3<u32>(1614u, arg_1.x, 0u) % vec3<u32>(32u)), vec3<u32>(0u, 1u, global1[_wgslsmith_index_u32(1u, 18u)])) % 32u), 4u)]), -27873i);
    return _wgslsmith_f_op_f32(min(593f, arg_2));
}

fn func_4(arg_0: u32, arg_1: vec3<f32>) -> bool {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1707f, _wgslsmith_f_op_f32(trunc(2022f)))) - 818f) - -1118f), _wgslsmith_f_op_f32(-1411f + 853f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(abs(countOneBits(global4.b.x)), 11u)] + _wgslsmith_f_op_f32(step(arg_1.x, -2282f))));
    let var_1 = var_0.x;
    global1 = array<u32, 18>();
    global2 = array<i32, 4>();
    var var_2 = global4.b.x | ~_wgslsmith_div_u32(global3.x, ~abs(46096u));
    return all(!select(vec2<bool>(true, true), select(!vec2<bool>(global4.d, true), vec2<bool>(true, true), vec2<bool>(global4.d, global4.d)), select(select(vec2<bool>(false, global4.d), vec2<bool>(global4.d, true), vec2<bool>(false, global4.d)), vec2<bool>(true, true), all(vec4<bool>(global4.d, global4.d, global4.d, false)))));
}

fn func_2(arg_0: Struct_5, arg_1: Struct_4, arg_2: Struct_1, arg_3: bool) -> Struct_5 {
    let var_0 = ~arg_2.b.x;
    global0 = array<f32, 11>();
    var var_1 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, max(58614u, global3.x) << (abs(63273u) % 32u), 4294967295u), vec3<u32>(firstTrailingBit(~4294967295u), 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(10267u, 4294967295u, global4.b.x), vec3<u32>(1u, 4293u, global3.x))));
    var var_2 = ~0u;
    var_2 = arg_1.a.x;
    return Struct_5(_wgslsmith_f_op_vec3_f32(sign(arg_0.a)), select(2147483647i, _wgslsmith_dot_vec4_i32(firstTrailingBit(abs(vec4<i32>(0i, arg_0.c.x, 43909i, global4.a))), min(-vec4<i32>(arg_1.d.a, u_input.a.x, global2[_wgslsmith_index_u32(global4.b.x, 4u)], 1i), vec4<i32>(27236i, 0i, global4.a, -1i) << (vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4.b.x, 18u)], 18u)], var_0, global3.x, 24517u) % vec4<u32>(32u)))), func_4(abs(~arg_2.b.x), vec3<f32>(_wgslsmith_f_op_f32(func_3(-12328i, vec4<u32>(97469u, arg_1.e, 22097u, 40411u), arg_0.a.x, true)), _wgslsmith_div_f32(1637f, -640f), 409f))), _wgslsmith_mod_vec3_i32(~(-_wgslsmith_sub_vec3_i32(u_input.a, vec3<i32>(arg_2.a, u_input.b.x, arg_1.d.a))), arg_0.c << (vec3<u32>(101166u, abs(arg_2.b.x), abs(3359u)) % vec3<u32>(32u))), -min(_wgslsmith_add_i32(~(-28856i), 38019i), _wgslsmith_sub_i32(global4.a, -48488i)));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_5, arg_2: vec3<bool>) -> Struct_2 {
    let var_0 = global4.b;
    global1 = array<u32, 18>();
    global0 = array<f32, 11>();
    global1 = array<u32, 18>();
    global1 = array<u32, 18>();
    return Struct_2(arg_2.x);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: vec4<i32>) -> u32 {
    var var_0 = ~firstLeadingBit(vec3<u32>(reverseBits(_wgslsmith_add_u32(0u, global4.b.x)), global1[_wgslsmith_index_u32(countOneBits(global1[_wgslsmith_index_u32(0u, 18u)]), 18u)] << (4294967295u % 32u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~(1u ^ global4.b.x), 18u)], 18u)], 18u)]));
    let var_1 = global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global4.b.x, 18u)], 18u)];
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32((firstLeadingBit(0u) << (var_0.x % 32u)) << (~0u % 32u), 11u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 18u)] | var_0.x, 11u)] + _wgslsmith_f_op_f32(global4.c - global4.c))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~min(global4.b.x, 41705u), 11u)])), _wgslsmith_f_op_f32(-863f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1859f - -1981f) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global3.x, 11u)] * global0[_wgslsmith_index_u32(21401u, 11u)])) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_2, vec4<u32>(4294967295u, global3.x, 0u, 1u), global0[_wgslsmith_index_u32(var_0.x, 11u)], arg_0.a)) + global0[_wgslsmith_index_u32(~46247u, 11u)]))));
    var var_3 = vec2<bool>(true, any(select(vec4<bool>(arg_1.a, arg_1.a, true, false), vec4<bool>(u_input.a.x > 14708i, 1u <= global4.b.x, arg_0.a, false), vec4<bool>(true, select(global4.d, true, false), arg_1.a, func_4(global1[_wgslsmith_index_u32(4294967295u, 18u)], var_2.wyy)))));
    global3 = abs(~global4.b.yzx);
    return 1u;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: bool, arg_3: vec2<i32>) -> vec2<i32> {
    global3 = vec3<u32>(func_6(Struct_2(!global4.d), func_5(-vec4<i32>(arg_3.x, 0i, 48080i, global2[_wgslsmith_index_u32(arg_0.x, 4u)]), func_2(Struct_5(vec3<f32>(global0[_wgslsmith_index_u32(41809u, 11u)], global4.c, global4.c), arg_1.d.a, vec3<i32>(-2147483647i, -3652i, -32368i), 31010i), arg_1, Struct_1(global2[_wgslsmith_index_u32(4294967295u, 4u)], vec4<u32>(1u, 0u, 2484u, 136228u), global4.c, global4.d), true), !arg_1.c), firstTrailingBit(-(~u_input.a.x)), vec4<i32>(-1i) * -vec4<i32>(arg_3.x, 1i, global4.a, global4.a)), ~0u, ~abs(28615u));
    global2 = array<i32, 4>();
    global2 = array<i32, 4>();
    global4 = Struct_1(arg_1.d.a, vec4<u32>(_wgslsmith_sub_u32(~0u >> (_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global4.b.x, 18u)], global4.b.x) % 32u), 13652u), 1u, ~arg_1.e, ~abs(~arg_0.x)), 366f, false);
    var var_0 = -(~arg_3.x);
    return max(-_wgslsmith_add_vec2_i32(arg_1.b | arg_1.b, vec2<i32>(global2[_wgslsmith_index_u32(arg_0.x, 4u)], arg_3.x)), u_input.b.yx) << (global4.b.ww % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    global3 = global4.b.zyz;
    var var_1 = Struct_3(firstTrailingBit(~_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, global2[_wgslsmith_index_u32(global4.b.x, 4u)], global4.a, u_input.a.x), vec4<i32>(global2[_wgslsmith_index_u32(global3.x, 4u)], global4.a, u_input.a.x, 1i), vec4<i32>(0i, u_input.b.x, u_input.b.x, global4.a)), vec4<i32>(global4.a, global4.a, global4.a, 16520i) >> (global4.b % vec4<u32>(32u)))));
    global0 = array<f32, 11>();
    var var_2 = abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -var_1.a.xy, vec2<i32>((i32(-1i) * -2147483647i) << (_wgslsmith_dot_vec3_u32(global4.b.xzz, global4.b.xxy) % 32u), global2[_wgslsmith_index_u32((var_0 << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 18u)], 18u)], 18u)], 18u)], 18u)] % 32u)) | (global3.x << (var_0 % 32u)), 4u)]), func_1(_wgslsmith_add_vec3_u32(vec3<u32>(29825u, global4.b.x, 1034u), global4.b.yzx), Struct_4(global4.b.yxw, u_input.a.xz, vec3<bool>(false, false, true), Struct_1(-11763i, global4.b, 698f, global4.d), 87342u), global4.d || global4.d, -var_1.a.xw) >> ((vec2<u32>(global4.b.x, global1[_wgslsmith_index_u32(4294967295u, 18u)]) << ((vec2<u32>(31234u, 0u) << (global3.yy % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(38807u, u_input.b.zx, -(~min(8168i, u_input.a.x ^ 20912i)), var_1.a.zw);
}

