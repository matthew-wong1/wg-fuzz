struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2;

var<private> global2: array<bool, 10> = array<bool, 10>(false, false, false, false, false, false, false, false, false, true);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_2) -> bool {
    var var_0 = arg_3.b;
    var_0 = true;
    global2 = array<bool, 10>();
    global2 = array<bool, 10>();
    var var_1 = ~(~0i);
    return true || global1.c.b.x;
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> bool {
    global1 = arg_1;
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1264f - 891f)));
    global1 = Struct_2(global0.a, global2[_wgslsmith_index_u32(select(1u, reverseBits(u_input.a), (-1622f <= var_0) & true) & (_wgslsmith_div_u32(63043u >> (u_input.a % 32u), ~29008u) | _wgslsmith_dot_vec4_u32(vec4<u32>(33216u, u_input.a, 4294967295u, u_input.a) & vec4<u32>(69562u, u_input.a, u_input.a, 16523u), firstTrailingBit(vec4<u32>(91790u, 0u, 44921u, 17102u)))), 10u)], global1.c);
    var var_1 = 1i;
    var var_2 = -(firstLeadingBit(select(-vec3<i32>(6986i, -2147483647i, 4193i), select(vec3<i32>(-2147483647i, u_input.c, arg_0), vec3<i32>(-5435i, 57244i, 0i), true), select(vec3<bool>(false, true, global2[_wgslsmith_index_u32(u_input.a, 10u)]), global0.a.b.wwy, global2[_wgslsmith_index_u32(3252u, 10u)]))) << (vec3<u32>(~(~4294967295u), u_input.a, u_input.a | _wgslsmith_clamp_u32(78323u, u_input.a, u_input.a)) % vec3<u32>(32u)));
    return false;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> vec4<bool> {
    global2 = array<bool, 10>();
    let var_0 = Struct_1(-1i, vec4<bool>(func_4(~(-2147483647i), Struct_2(arg_0, func_3(global1.c, vec4<u32>(39376u, u_input.a, 0u, 4294967295u), Struct_1(u_input.b, arg_0.b), Struct_2(Struct_1(u_input.c, global0.a.b), global0.c.b.x, global1.c)), arg_0)), true, any(global0.c.b.yz), any(!select(vec3<bool>(false, global1.a.b.x, false), vec3<bool>(true, false, false), arg_0.b.wxy))));
    global1 = Struct_2(Struct_1(global0.c.a, vec4<bool>(true, 2147483647i != -global0.a.a, _wgslsmith_f_op_f32(step(625f, -154f)) == _wgslsmith_f_op_f32(f32(-1f) * -955f), var_0.b.x)), func_3(Struct_1(_wgslsmith_mod_i32(arg_0.a, 0i), !arg_0.b), vec4<u32>(u_input.a, _wgslsmith_add_u32(~36509u, abs(u_input.a)), ~_wgslsmith_clamp_u32(3372u, 79455u, u_input.a), _wgslsmith_add_u32(0u, ~u_input.a)), arg_0, Struct_2(Struct_1(-1i, select(global1.a.b, vec4<bool>(global1.c.b.x, arg_0.b.x, global1.b, false), arg_0.b.x)), !(arg_1.x < -2147483647i), global1.a)), global0.c);
    global2 = array<bool, 10>();
    let var_1 = vec3<bool>(!(true || func_4(_wgslsmith_sub_i32(0i, 1i), Struct_2(arg_0, var_0.b.x, arg_0))), true, !(all(select(arg_0.b.xyx, arg_0.b.wyy, false)) & true));
    return select(global1.a.b, !select(arg_0.b, !vec4<bool>(arg_0.b.x, true, var_0.b.x, false), vec4<bool>(any(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 10u)], true, true)), true, true, true)), global1.a.b);
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec4<bool>) -> vec4<u32> {
    return ~(~_wgslsmith_div_vec4_u32(~vec4<u32>(1u, u_input.a, 39744u, 0u), firstLeadingBit(vec4<u32>(4294967295u, 18983u, 86592u, 0u))) ^ vec4<u32>(reverseBits(12922u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(25983u, 0u, u_input.a, 1536u), vec4<u32>(38343u, 4294967295u, u_input.a, 27358u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, 7576u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 176u, u_input.a), vec4<u32>(u_input.a, 1u, 0u, 0u))), 41708u, 1u));
}

fn func_1(arg_0: vec3<f32>, arg_1: u32) -> Struct_1 {
    let var_0 = global0.c;
    let var_1 = -_wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(25272i, global1.c.a, global0.c.a, u_input.b), (vec4<i32>(u_input.c, u_input.c, 2147483647i, global0.c.a) | vec4<i32>(524i, -73667i, var_0.a, 35391i)) | _wgslsmith_add_vec4_i32(vec4<i32>(-51367i, global0.c.a, var_0.a, u_input.c), vec4<i32>(global1.c.a, var_0.a, global0.a.a, 12434i))) << (func_5(Struct_1(max(-2147483647i, min(0i, -1i)), select(!global1.c.b, select(var_0.b, global1.a.b, false), vec4<bool>(true, global2[_wgslsmith_index_u32(24930u, 10u)], false, var_0.b.x))), all(func_2(Struct_1(0i, vec4<bool>(false, var_0.b.x, true, true)), vec4<i32>(global1.c.a, 29051i, var_0.a, -2147483647i))) && !func_3(Struct_1(global0.c.a, vec4<bool>(true, true, global0.c.b.x, global0.b)), vec4<u32>(0u, arg_1, arg_1, arg_1), global0.c, Struct_2(global0.c, var_0.b.x, Struct_1(var_0.a, vec4<bool>(true, true, false, true)))), global1.c.b) % vec4<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec2_f32(min(arg_0.zy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(348f, -1257f) + vec2<f32>(arg_0.x, arg_0.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.x, 2331f))), arg_0.yz)))));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 1248f, var_2.x, -3676f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1759f, _wgslsmith_f_op_f32(var_2.x - 853f), -601f, var_2.x)) + vec4<f32>(-1000f, arg_0.x, -101f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.x - -1000f))))));
    return Struct_1(-2147483647i, !(!select(vec4<bool>(true, true, global2[_wgslsmith_index_u32(arg_1, 10u)], true), vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 10u)], true, true), select(false, false, true))));
}

fn func_6(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = func_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1582f))), -1000f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -786f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-172f, 1959f, 1223f), vec3<f32>(899f, 1000f, -363f), arg_0.c.b.wwz)) * vec3<f32>(-322f, -533f, -1004f)))), arg_1.x);
    var var_1 = false | (_wgslsmith_f_op_f32(sign(-490f)) >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -692f, global2[_wgslsmith_index_u32(1u, 10u)])))));
    var_1 = false;
    global0 = Struct_2(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(662f, 1676f, 1397f) + vec3<f32>(444f, -399f, -1720f)))), 1u), func_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(396f, -1000f, -1078f)))), 45804u).b.x, func_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1232f - -605f) * _wgslsmith_f_op_f32(296f + -236f)), -424f, -220f), ~1u | _wgslsmith_add_u32(min(32208u, 19482u), min(24898u, arg_1.x))));
    var var_2 = _wgslsmith_div_i32(-6748i, arg_0.c.a);
    return Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(~min(-2147483647i, global0.a.a), -2147483647i, ~6725i, _wgslsmith_div_i32(global1.c.a << (24968u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.a, -2147483647i), vec2<i32>(2147483647i, -5385i)))), -vec4<i32>(_wgslsmith_mod_i32(global0.c.a, -861i), 1i, ~75561i, _wgslsmith_div_i32(arg_2.a.a, 2147483647i))), var_0.b);
}

fn func_7(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = vec2<bool>(true, true);
    var var_1 = select(abs(vec3<i32>(max(func_6(Struct_2(Struct_1(-4835i, vec4<bool>(true, arg_0, arg_2.b.x, var_0.x)), global0.c.b.x, Struct_1(-2147483647i, vec4<bool>(arg_0, var_0.x, true, global1.c.b.x))), vec4<u32>(0u, u_input.a, 1u, u_input.a), Struct_2(arg_2, false, Struct_1(u_input.b, vec4<bool>(var_0.x, true, var_0.x, false)))).a, ~global0.c.a), 1i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-31156i, 4013i, 2147483647i, arg_2.a)), vec4<i32>(global0.a.a, global1.a.a, global0.c.a, -42547i)))), (vec3<i32>(i32(-1i) * -1i, _wgslsmith_clamp_i32(global1.c.a, u_input.c, global1.a.a), global1.c.a >> (44058u % 32u)) & _wgslsmith_clamp_vec3_i32(vec3<i32>(3484i, global0.a.a, arg_2.a) | vec3<i32>(-24628i, 2147483647i, global0.c.a), -vec3<i32>(u_input.c, arg_2.a, arg_2.a), ~vec3<i32>(-50078i, u_input.c, 50566i))) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(~4294967295u, u_input.a, 9314u), ~(~vec3<u32>(u_input.a, 4294967295u, 4418u))) % vec3<u32>(32u)), !(!(!(!vec3<bool>(false, false, var_0.x)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 1788f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + arg_1.x) * _wgslsmith_f_op_f32(max(1204f, arg_1.x)))), arg_1.x));
    var var_3 = ~_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(~(-7768i), _wgslsmith_mod_i32(global1.a.a, 2147483647i), var_1.x, reverseBits(-2147483647i))), _wgslsmith_add_vec4_i32(-(~vec4<i32>(-59005i, arg_2.a, -3901i, 1i)), ~vec4<i32>(2147483647i, 2147483647i, arg_2.a, -2147483647i) << (~vec4<u32>(u_input.a, 4294967295u, 0u, u_input.a) % vec4<u32>(32u))));
    var var_4 = arg_2;
    return Struct_2(Struct_1(arg_2.a, !(!(!arg_2.b))), false, func_6(Struct_2(Struct_1(i32(-1i) * -88882i, vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 10u)], arg_2.b.x, false, false)), var_0.x, func_6(Struct_2(Struct_1(var_3.x, global0.c.b), global2[_wgslsmith_index_u32(4294967295u, 10u)], global1.a), abs(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)), Struct_2(global0.c, true, Struct_1(u_input.c, vec4<bool>(true, arg_0, global1.a.b.x, global2[_wgslsmith_index_u32(u_input.a, 10u)]))))), vec4<u32>(u_input.a, 23981u, _wgslsmith_mult_u32(func_5(global0.c, global2[_wgslsmith_index_u32(65013u, 10u)], global0.c.b).x, ~u_input.a), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(1u, 4294967295u, u_input.a)), ~vec3<u32>(0u, 71626u, u_input.a))), Struct_2(Struct_1(i32(-1i) * -1i, select(vec4<bool>(true, true, true, global0.c.b.x), vec4<bool>(arg_0, global2[_wgslsmith_index_u32(u_input.a, 10u)], true, global0.c.b.x), false)), arg_0, global1.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_7(global2[_wgslsmith_index_u32(~firstTrailingBit(1u), 10u)], _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(247f, -263f))))), func_6(Struct_2(Struct_1(0i, vec4<bool>(global1.b, global2[_wgslsmith_index_u32(u_input.a, 10u)], false, global0.c.b.x)), -2147483647i == (u_input.b & 0i), func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(214f, -167f, 524f) * vec3<f32>(-1000f, 350f, 134f)), select(4294967295u, 4294967295u, global1.b))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(40998u, 18949u, u_input.a, 67013u) ^ vec4<u32>(u_input.a, 325u, u_input.a, u_input.a), vec4<u32>(24313u, u_input.a, 1u, 1u)), Struct_2(global0.c, global1.b, global1.c)));
    global0 = Struct_2(func_7(global0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1640f, 646f) - vec2<f32>(362f, -314f))) - vec2<f32>(_wgslsmith_div_f32(1085f, 812f), 1000f)), global1.a).c, (global0.c.a & u_input.b) != (global1.c.a ^ func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2014f, -1202f, 166f)), ~1u).a), global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(vec3<u32>(~u_input.a, u_input.a, u_input.a ^ u_input.a) ^ ~_wgslsmith_sub_vec3_u32(vec3<u32>(15156u, 4294967295u, 0u), vec3<u32>(u_input.a, 0u, u_input.a))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -877f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(830f)), _wgslsmith_f_op_f32(f32(-1f) * -565f))), !global0.a.b.x)), 29885i, vec2<i32>(global0.a.a, -748i) & max(vec2<i32>(-global1.a.a, max(global1.a.a, 48389i)), abs(_wgslsmith_mult_vec2_i32(vec2<i32>(global1.a.a, u_input.c), vec2<i32>(33657i, 2147483647i)))));
}

