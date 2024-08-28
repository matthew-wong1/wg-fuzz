struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 27>;

var<private> global1: vec3<f32>;

var<private> global2: Struct_4 = Struct_4(Struct_1(false, vec2<bool>(true, false), -1000f, vec4<u32>(1u, 25812u, 37993u, 0u), false), 4294967295u);

var<private> global3: array<f32, 26> = array<f32, 26>(-887f, -973f, 410f, 230f, 746f, -749f, -600f, -654f, 1000f, -146f, -656f, 879f, 316f, 370f, 1198f, 206f, 607f, -886f, 317f, -973f, -1449f, 501f, 437f, -336f, -230f, -1000f);

var<private> global4: Struct_2 = Struct_2(Struct_1(true, vec2<bool>(false, false), -758f, vec4<u32>(1u, 4294967295u, 1u, 1u), true), vec3<f32>(568f, -1800f, -219f), 345f, Struct_1(false, vec2<bool>(true, true), 1000f, vec4<u32>(4294967295u, 0u, 14669u, 74746u), false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec3<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(arg_1, arg_1));
    global3 = array<f32, 26>();
    var var_1 = Struct_2(global2.a, global4.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_0.x, -211f)))) * _wgslsmith_div_f32(-1679f, _wgslsmith_f_op_f32(global2.a.c - _wgslsmith_f_op_f32(global2.a.c * global3[_wgslsmith_index_u32(78993u, 26u)])))), global2.a);
    let var_2 = _wgslsmith_clamp_vec4_u32(global2.a.d, max(_wgslsmith_div_vec4_u32(~max(u_input.c, vec4<u32>(var_1.a.d.x, global4.d.d.x, u_input.c.x, 4294967295u)), arg_0.b), arg_0.b), ~(abs(~global4.a.d) | _wgslsmith_div_vec4_u32(global2.a.d, vec4<u32>(1u, 1u, 1u, 1u))));
    global0 = array<Struct_3, 27>();
    return !any(!(!vec4<bool>(global4.d.a, arg_2.x, global4.d.b.x, arg_2.x))) & !(!global2.a.b.x);
}

fn func_3(arg_0: vec3<f32>) -> vec4<f32> {
    var var_0 = global2.a.e;
    let var_1 = global4.d.b;
    var var_2 = ~(~vec4<u32>(global2.b, u_input.b, ~0u, select(global4.a.d.x, 4294967295u, true))) >> (reverseBits(abs(~global4.d.d)) % vec4<u32>(32u));
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1588f * _wgslsmith_f_op_f32(f32(-1f) * -1711f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1139f, global1.x))), _wgslsmith_f_op_f32(-652f + _wgslsmith_f_op_f32(select(187f, global1.x, true))), _wgslsmith_f_op_f32(max(global1.x, global1.x))), vec4<f32>(1128f, global1.x, global4.c, _wgslsmith_f_op_f32(f32(-1f) * -490f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.b.x, 691f, global3[_wgslsmith_index_u32(66049u, 26u)], -689f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1003f, -1572f, 398f, -677f) * vec4<f32>(938f, 241f, arg_0.x, 810f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(470f, -621f, global4.d.c, arg_0.x) - vec4<f32>(global4.a.c, -918f, global4.d.c, arg_0.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, global2.a.c, global1.x) + vec4<f32>(771f, 378f, global2.a.c, -102f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-434f, global2.a.c, 683f, 559f), vec4<f32>(1898f, 896f, 162f, global2.a.c), vec4<bool>(true, false, true, false)))))), select(!vec4<bool>(any(global2.a.b), !var_1.x, any(global4.a.b), false), vec4<bool>(!any(vec3<bool>(false, var_1.x, true)), false, false, false), select(~4294967295u < ~u_input.b, !var_1.x, true))));
    global4 = Struct_2(global2.a, _wgslsmith_f_op_vec3_f32(max(arg_0, _wgslsmith_f_op_vec3_f32(-var_3.xzy))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -909f) - _wgslsmith_f_op_f32(sign(arg_0.x)))))), Struct_1(true, global4.d.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(abs(698u), 26u)], global4.a.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(15039u, 26u)])), 422f))), _wgslsmith_div_vec4_u32(global2.a.d, vec4<u32>(1u, ~1u, ~global2.a.d.x, ~var_2.x)), true));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_3)) - vec4<f32>(-1000f, 1314f, var_3.x, arg_0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_3, var_3) * _wgslsmith_f_op_vec4_f32(min(var_3, vec4<f32>(-1389f, 725f, 862f, global3[_wgslsmith_index_u32(var_2.x, 26u)])))))))));
}

fn func_1(arg_0: vec2<i32>, arg_1: i32) -> Struct_2 {
    var var_0 = vec4<bool>(all(vec4<bool>(!(global2.a.b.x && global4.d.b.x), global2.a.a, func_2(global0[_wgslsmith_index_u32(global4.d.d.x, 27u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global4.a.c, global2.a.c, 450f) + vec4<f32>(global4.b.x, 2626f, global1.x, global4.c)), select(vec3<bool>(true, global4.d.a, true), vec3<bool>(true, true, false), false)), ~global4.d.d.x >= 4326u)), global4.a.a, !(!(!(!global2.a.a))), func_2(global0[_wgslsmith_index_u32(84551u, 27u)], _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(global4.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1033f, -360f, 872f, 1714f))))), vec3<bool>(!global2.a.a, all(vec3<bool>(global2.a.b.x, global2.a.b.x, global4.a.e)), (global4.a.d.x >= global2.a.d.x) | false)));
    let var_1 = !var_0.yyy;
    let var_2 = global4.b.yz;
    global2 = Struct_4(global4.d, 4294967295u);
    let var_3 = vec4<bool>(!(!any(vec4<bool>(false, false, true, false))) | false, true, true, true);
    return Struct_2(global4.a, _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec3_f32(exp2(global4.b)))).zxy, _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(f32(-1f) * -1148f)), Struct_1(global4.d.a, select(var_3.xw, select(global4.a.b, vec2<bool>(true, true), select(vec2<bool>(var_1.x, true), vec2<bool>(true, var_1.x), true)), all(vec2<bool>(var_0.x, var_1.x))), _wgslsmith_f_op_f32(f32(-1f) * -889f), vec4<u32>(~countOneBits(u_input.c.x), 53228u, 0u, 1u), all(vec2<bool>(global4.d.c == var_2.x, var_1.x))));
}

fn func_4(arg_0: Struct_2) -> bool {
    var var_0 = Struct_2(Struct_1(all(select(vec3<bool>(global4.d.b.x, false, arg_0.d.e), vec3<bool>(arg_0.d.a, global4.a.a, global4.d.e), vec3<bool>(arg_0.d.a, true, true))), vec2<bool>(all(!vec4<bool>(false, arg_0.d.b.x, arg_0.a.a, true)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.d.c) - arg_0.c), min(vec4<u32>(global2.a.d.x, 30953u, ~global2.a.d.x, ~30870u), select(vec4<u32>(60659u, 0u, 77016u, 1496u), _wgslsmith_clamp_vec4_u32(arg_0.a.d, global2.a.d, u_input.c), func_2(Struct_3(u_input.a, u_input.c), vec4<f32>(global3[_wgslsmith_index_u32(arg_0.a.d.x, 26u)], global1.x, 1506f, global4.d.c), vec3<bool>(false, true, global4.a.a)))), true || !(true || global4.d.e)), arg_0.b, -297f, arg_0.d);
    var var_1 = select(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 62024i, 2147483647i & select(-19579i, u_input.e, true), _wgslsmith_mod_i32(~u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a.wx, vec2<i32>(18292i, 1i)))), select(min(vec4<i32>(45121i, 21097i, u_input.e, u_input.a.x) ^ vec4<i32>(u_input.a.x, 38371i, 0i, -10839i), max(vec4<i32>(49431i, -2147483647i, 2147483647i, -1i), u_input.a)), countOneBits(u_input.a), !(!vec4<bool>(arg_0.a.b.x, global4.a.e, true, var_0.d.a)))), vec4<i32>(u_input.e | u_input.e, u_input.d, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, 44063i), u_input.a.yw), 69502i) >> (firstLeadingBit(~52372u) % 32u), ~2147483647i), true);
    global4 = arg_0;
    global4 = func_1(-u_input.a.yy, -11290i);
    var var_2 = func_1(u_input.a.yy, ~abs(abs(min(var_1.x, u_input.d)))).a;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, global4.d.a, global2.a.e, !(!func_4(func_1(vec2<i32>(u_input.d, u_input.d), u_input.d))));
    var var_1 = global0[_wgslsmith_index_u32(global2.a.d.x, 27u)];
    var var_2 = ~_wgslsmith_mult_vec2_i32(countOneBits(var_1.a.yw), ~(-(~vec2<i32>(2147483647i, 31508i))));
    let var_3 = Struct_1(!(!global4.a.b.x), vec2<bool>(!(func_2(Struct_3(vec4<i32>(-6482i, 2147483647i, u_input.d, u_input.d), vec4<u32>(global4.d.d.x, var_1.b.x, 0u, var_1.b.x)), vec4<f32>(-637f, -1000f, -1149f, 1506f), vec3<bool>(false, true, global4.d.e)) | func_2(global0[_wgslsmith_index_u32(global2.a.d.x, 27u)], vec4<f32>(-1000f, global3[_wgslsmith_index_u32(71260u, 26u)], global3[_wgslsmith_index_u32(global2.a.d.x, 26u)], global2.a.c), vec3<bool>(true, false, global4.a.e))), global2.a.a | false), 385f, global2.a.d, true);
    let var_4 = var_0.wx;
    let var_5 = _wgslsmith_add_vec3_i32(~vec3<i32>(~var_2.x, 58626i, u_input.a.x), vec3<i32>(~var_2.x, u_input.d, _wgslsmith_mod_i32(~abs(var_1.a.x), -var_2.x)));
    let var_6 = global4.d.d.yx;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~4294967295u), _wgslsmith_sub_vec2_i32(var_1.a.zy, countOneBits(max(vec2<i32>(0i, -1i), abs(vec2<i32>(27992i, -11554i))))), ~4294967295u);
}

