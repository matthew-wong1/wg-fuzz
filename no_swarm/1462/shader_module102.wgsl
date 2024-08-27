struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: f32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: i32,
    d: vec2<f32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec3<bool> = vec3<bool>(false, false, true);

var<private> global2: array<vec2<f32>, 10>;

var<private> global3: array<vec3<u32>, 18> = array<vec3<u32>, 18>(vec3<u32>(21629u, 19366u, 89233u), vec3<u32>(2293u, 84867u, 10949u), vec3<u32>(42852u, 0u, 0u), vec3<u32>(4294967295u, 23984u, 60562u), vec3<u32>(4294967295u, 3300u, 4294967295u), vec3<u32>(34277u, 0u, 43355u), vec3<u32>(92498u, 4294967295u, 4294967295u), vec3<u32>(3961u, 1u, 9547u), vec3<u32>(4294967295u, 13191u, 2521u), vec3<u32>(11071u, 39037u, 62534u), vec3<u32>(71697u, 1u, 4294967295u), vec3<u32>(4294967295u, 56064u, 40296u), vec3<u32>(30356u, 114466u, 1u), vec3<u32>(1u, 25921u, 4294967295u), vec3<u32>(1u, 9856u, 108401u), vec3<u32>(6191u, 1u, 4294967295u), vec3<u32>(7961u, 12990u, 779u), vec3<u32>(1u, 4294967295u, 0u));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec3<i32>) -> bool {
    var var_0 = Struct_1(select(vec3<bool>(select(true, true, all(vec4<bool>(false, global1.x, true, global1.x))), all(vec4<bool>(global1.x, false, false, false)), any(select(vec4<bool>(true, false, false, false), vec4<bool>(global1.x, false, true, global1.x), global1.x))), select(select(vec3<bool>(true, global1.x, global1.x), !vec3<bool>(true, global1.x, global1.x), !vec3<bool>(global1.x, false, true)), !(!vec3<bool>(global1.x, false, global1.x)), select(vec3<bool>(true, true, global1.x), select(vec3<bool>(false, global1.x, false), vec3<bool>(global1.x, global1.x, true), vec3<bool>(false, global1.x, global1.x)), !vec3<bool>(true, true, global1.x))), select(!(!vec3<bool>(global1.x, global1.x, true)), !select(vec3<bool>(true, false, global1.x), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(true, global1.x, global1.x)), vec3<bool>(global1.x, true, true))), u_input.a.zyw, _wgslsmith_f_op_f32(-arg_1.a.x), -960f, select(u_input.e, arg_0, global1.x && global1.x));
    var var_1 = vec2<bool>(!any(select(select(vec4<bool>(true, false, var_0.a.x, false), vec4<bool>(true, false, var_0.a.x, var_0.a.x), false), select(vec4<bool>(true, false, false, var_0.a.x), vec4<bool>(var_0.a.x, true, var_0.a.x, true), false), !vec4<bool>(var_0.a.x, global1.x, false, true))), var_0.a.x);
    global1 = !select(vec3<bool>(true, all(!var_0.a), all(vec3<bool>(true, true, true))), !(!select(vec3<bool>(true, false, global1.x), vec3<bool>(true, true, true), var_0.a)), select(var_0.a, var_0.a, select(!vec3<bool>(false, var_1.x, var_0.a.x), vec3<bool>(var_1.x, false, true), !var_0.a)));
    let var_2 = Struct_1(!vec3<bool>(var_1.x, true, global1.x), var_0.b, _wgslsmith_f_op_f32(trunc(arg_1.a.x)), _wgslsmith_div_f32(var_0.c, arg_1.a.x), 7873u);
    let var_3 = global0.xy;
    return true;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec2<bool>, arg_3: vec3<bool>) -> i32 {
    global2 = array<vec2<f32>, 10>();
    let var_0 = false;
    global1 = select(vec3<bool>(all(select(arg_2, vec2<bool>(arg_2.x, arg_2.x), !vec2<bool>(arg_1, true))), true, !all(select(vec4<bool>(false, global1.x, arg_1, arg_2.x), vec4<bool>(false, false, false, false), false))), arg_3, arg_3.x);
    let var_1 = Struct_2(vec3<f32>(1f, 1f, 1f));
    let var_2 = var_1;
    return abs(u_input.c.x);
}

fn func_2(arg_0: bool, arg_1: vec2<u32>, arg_2: vec2<i32>, arg_3: i32) -> Struct_2 {
    let var_0 = ~u_input.c.x;
    let var_1 = firstTrailingBit(17533i) >= func_4(true, global0.x <= 6540u, select(!select(global1.zx, vec2<bool>(global1.x, arg_0), global1.xy), global1.yy, select(select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, global1.x), false), global1.zx, vec2<bool>(true, true))), !vec3<bool>(func_3(69660u, Struct_2(vec3<f32>(-633f, 1225f, -175f)), Struct_3(arg_3), vec3<i32>(arg_3, 0i, var_0)), true, false | global1.x));
    global0 = ~vec4<u32>(abs(~u_input.e) & _wgslsmith_div_u32(arg_1.x, countOneBits(global0.x)), 1u, 1u, max(4294967295u, 51749u));
    let var_2 = 1u;
    var var_3 = Struct_3(-_wgslsmith_sub_i32(-6949i, -2147483647i));
    return Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, -1189f, -164f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-339f, -645f, -2060f)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1584f, -1385f, 1767f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1059f, -306f) - vec3<f32>(462f, -311f, 838f)), !vec3<bool>(false, var_1, global1.x))) * _wgslsmith_div_vec3_f32(vec3<f32>(-171f, 182f, -202f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-816f, -488f, -1000f) + vec3<f32>(300f, 1486f, -534f))))));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> vec4<i32> {
    let var_0 = Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.x, arg_1.a.x, -907f) + arg_1.a))), true, 31871i, _wgslsmith_div_vec2_f32(arg_1.a.xy, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x * -380f) + _wgslsmith_f_op_f32(471f + -394f)), _wgslsmith_f_op_f32(-1f))), vec4<u32>(global0.x >> (23147u % 32u), _wgslsmith_div_u32(4294967295u | global0.x, 57175u ^ arg_0.x), _wgslsmith_sub_u32(~1u, ~global0.x), u_input.e) >> (firstTrailingBit(min(vec4<u32>(global0.x, global0.x, u_input.e, u_input.e) | vec4<u32>(u_input.e, arg_0.x, arg_0.x, 4294967295u), ~vec4<u32>(global0.x, 60606u, arg_0.x, 0u))) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(var_0.a.a.zy + vec2<f32>(_wgslsmith_f_op_f32(round(arg_2.a.x)), 889f));
    var var_2 = true;
    let var_3 = Struct_1(!(!(!vec3<bool>(true, global1.x, global1.x))), ~(-vec3<i32>(22638i, _wgslsmith_clamp_i32(u_input.d.x, var_0.c, 1i), -var_0.c)), -671f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1384f + 645f)))), var_0.e.x);
    global0 = var_0.e;
    return reverseBits(vec4<i32>(-(firstLeadingBit(-11531i) << (_wgslsmith_mod_u32(53885u, arg_0.x) % 32u)), ~u_input.a.x | _wgslsmith_sub_i32(_wgslsmith_clamp_i32(1i, -27415i, u_input.a.x), firstLeadingBit(var_0.c)), i32(-1i) * -41194i, select(reverseBits(_wgslsmith_mod_i32(var_0.c, u_input.a.x)), -var_3.b.x, false)));
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: u32, arg_3: Struct_1) -> Struct_4 {
    global2 = array<vec2<f32>, 10>();
    global3 = array<vec3<u32>, 18>();
    var var_0 = false;
    global1 = select(vec3<bool>(false, true, global1.x), vec3<bool>(true, !any(vec4<bool>(false, global1.x, global1.x, arg_3.a.x)), !(true != global1.x)), arg_3.a.x);
    global0 = ~abs(min(_wgslsmith_clamp_vec4_u32(~vec4<u32>(6200u, 0u, 0u, u_input.b), vec4<u32>(1u, arg_3.e, 16053u, 34405u), ~vec4<u32>(78827u, u_input.b, 55936u, 40651u)), ~vec4<u32>(7566u, global0.x, arg_2, arg_2) << (vec4<u32>(u_input.e, 17922u, global0.x, 1u) % vec4<u32>(32u))));
    return Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(340f, arg_3.c, arg_3.c)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_3.c, -319f)), vec3<f32>(262f, arg_3.d, arg_3.d)))), false, func_4(true, any(select(arg_3.a.xx, !vec2<bool>(arg_3.a.x, global1.x), true)), !select(select(arg_3.a.yy, arg_3.a.zx, global1.x), !vec2<bool>(true, global1.x), !arg_3.a.x), vec3<bool>(all(vec3<bool>(false, false, true)) | arg_3.a.x, !all(vec2<bool>(arg_3.a.x, false)), _wgslsmith_f_op_f32(ceil(arg_3.d)) < arg_3.c)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_3.d)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_3.c)))), arg_3.c), vec4<u32>(_wgslsmith_dot_vec2_u32(global0.xx, vec2<u32>(global0.x, u_input.b) ^ reverseBits(global0.wx)), ~arg_3.e, 73028u, arg_2));
}

fn func_1(arg_0: vec2<u32>, arg_1: i32, arg_2: i32, arg_3: f32) -> vec4<f32> {
    let var_0 = min(_wgslsmith_div_vec3_u32(~global0.yxx, global0.zww), ~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global3[_wgslsmith_index_u32(~(~30929u), 18u)], global0.xww), 18u)]);
    var var_1 = func_6(vec4<i32>(-78252i, _wgslsmith_dot_vec4_i32(func_5(firstLeadingBit(vec3<u32>(var_0.x, global0.x, arg_0.x)), Struct_2(vec3<f32>(arg_3, 553f, arg_3)), func_2(false, arg_0, vec2<i32>(-2147483647i, u_input.a.x), -12615i), global1.x), ~u_input.a >> (vec4<u32>(arg_0.x, 27188u, var_0.x, global0.x) % vec4<u32>(32u))), ~abs(i32(-1i) * -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(-31498i, arg_1, _wgslsmith_div_i32(7583i, u_input.c.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(9070i, arg_2, -2147483647i), u_input.a.xxz << (vec3<u32>(73283u, 17596u, 48179u) % vec3<u32>(32u))))), Struct_3(arg_1), 33300u, Struct_1(!vec3<bool>(true, 43222u <= u_input.b, all(vec2<bool>(false, global1.x))), _wgslsmith_div_vec3_i32(~(vec3<i32>(arg_1, -70458i, arg_2) & vec3<i32>(-28430i, -25648i, u_input.d.x)), ~u_input.a.xwy), _wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(select(-374f, -1039f, true))), _wgslsmith_f_op_f32(min(arg_3, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_3)), arg_3))), max(var_0.x, _wgslsmith_mod_u32(firstLeadingBit(81085u), 1u))));
    return vec4<f32>(1530f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-379f, -248f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -663f)) * _wgslsmith_f_op_f32(563f + func_2(false, var_1.e.yz, vec2<i32>(arg_2, 0i), -22778i).a.x)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -236f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -659f) - arg_3)))), arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(1u, 10u)]);
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1483f, 1000f, 516f)) + vec4<f32>(var_0.x, -164f, 1234f, -2188f))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_1(~global0.wy, _wgslsmith_dot_vec4_i32(u_input.a, u_input.c), -u_input.d.x, _wgslsmith_f_op_f32(max(-1000f, var_0.x))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 1694f, 1022f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -272f, var_0.x, var_0.x)))))));
    let var_2 = !(false & any(select(select(vec2<bool>(false, true), global1.zz, global1.x), select(global1.yx, vec2<bool>(global1.x, false), global1.x), !global1.xx)));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-798f, var_0.x));
    let var_3 = func_6(vec4<i32>(1i, ~(-1i), ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(5090i, -2147483647i, 1i), u_input.c.yzw)), ~(-44850i)), Struct_3(abs(min(u_input.c.x, u_input.d.x) ^ u_input.c.x)), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(12739u, global0.x, u_input.b)), select(global3[_wgslsmith_index_u32(4294967295u, 18u)], vec3<u32>(global0.x, 0u, 46600u), !vec3<bool>(global1.x, var_2, var_2))), countOneBits(u_input.e)), Struct_1(!vec3<bool>(func_6(vec4<i32>(-2147483647i, u_input.c.x, u_input.a.x, 0i), Struct_3(1i), global0.x, Struct_1(vec3<bool>(false, var_2, global1.x), u_input.a.xzz, -572f, 296f, 54341u)).b, !var_2, u_input.d.x == u_input.a.x), select(u_input.a.wzz ^ ~vec3<i32>(u_input.a.x, 0i, -11949i), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, u_input.d.x, 4701i) ^ u_input.a.yzx, func_5(vec3<u32>(global0.x, 13398u, global0.x), Struct_2(vec3<f32>(454f, -1248f, var_0.x)), Struct_2(vec3<f32>(var_1.x, var_0.x, var_1.x)), false).zxy), !any(vec2<bool>(var_2, false))), _wgslsmith_f_op_f32(-905f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) * var_0.x)), 632f, _wgslsmith_mod_u32(~(~1u), min(u_input.b, 1u)))).a;
    var var_4 = -abs(~(-18734i) << (~func_6(vec4<i32>(u_input.a.x, u_input.d.x, u_input.c.x, 7070i), Struct_3(u_input.c.x), 0u, Struct_1(vec3<bool>(var_2, global1.x, false), u_input.a.xyx, var_1.x, var_3.a.x, 4294967295u)).e.x % 32u));
    let var_5 = Struct_1(select(select(select(!vec3<bool>(true, false, global1.x), !vec3<bool>(global1.x, global1.x, false), !vec3<bool>(false, false, var_2)), select(select(vec3<bool>(false, global1.x, false), vec3<bool>(var_2, false, true), vec3<bool>(global1.x, var_2, var_2)), !vec3<bool>(true, global1.x, true), global1.x), !(!vec3<bool>(var_2, true, global1.x))), !(!(!vec3<bool>(var_2, global1.x, var_2))), !(~4294967295u <= (global0.x | global0.x))), min(u_input.c.wxy, u_input.c.zwz), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_3.a.x)), _wgslsmith_f_op_f32(630f * -603f), 80966u);
    let x = u_input.a;
    s_output = StorageBuffer(-207f, vec4<i32>(func_6(reverseBits(vec4<i32>(u_input.a.x, var_5.b.x, u_input.a.x, -2147483647i)), Struct_3(-1i), 7483u, var_5).c, -(u_input.a.x ^ u_input.d.x), max(var_5.b.x, 1i), var_5.b.x) ^ (vec4<i32>(max(var_5.b.x, 1i), var_5.b.x, 1i, 1i) << (vec4<u32>(min(u_input.b, 22344u), ~64742u, _wgslsmith_add_u32(0u, var_5.e), 28181u) % vec4<u32>(32u))), firstLeadingBit(firstLeadingBit(vec4<u32>(~var_5.e, abs(84689u), _wgslsmith_mult_u32(global0.x, global0.x), 1u))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.a * vec3<f32>(var_3.a.x, var_3.a.x, var_3.a.x)) - var_3.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(func_6(-vec4<i32>(var_5.b.x, 7039i, var_5.b.x, var_5.b.x), Struct_3(-2147483647i), _wgslsmith_sub_u32(19637u, var_5.e), var_5).a.a.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-313f, -984f, var_2)) - -247f)));
}

