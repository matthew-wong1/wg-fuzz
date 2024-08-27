struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 4>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: u32) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(firstTrailingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(36098u, ~arg_1, ~5459u), ~vec3<u32>(70204u, 0u, 4294967295u))), 4u)];
    global0 = Struct_2(Struct_1(select(firstTrailingBit(global0.a.a), ~80981u, arg_0) ^ 55453u), global1[_wgslsmith_index_u32(4294967295u, 4u)], ~(~firstTrailingBit(0i)), global0.d);
    global1 = array<Struct_1, 4>();
    var var_1 = true;
    let var_2 = vec2<i32>(_wgslsmith_mod_i32(reverseBits(1i | select(global0.c, -76835i, false)), _wgslsmith_add_i32(-global0.c, -(1i << (u_input.b.x % 32u)))), -global0.c);
    return -615f;
}

fn func_2() -> vec3<u32> {
    var var_0 = Struct_2(Struct_1(~(~0u)), global1[_wgslsmith_index_u32(~4294967295u, 4u)], -(i32(-1i) * -3691i), select(global0.d, !select(select(global0.d, global0.d, true), global0.d, global0.d.x), true));
    let var_1 = _wgslsmith_f_op_f32(func_3(!global0.d.x, ~0u));
    var var_2 = global0.b.a;
    let var_3 = vec4<i32>(select(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c, var_0.c, var_0.c, -1i) ^ vec4<i32>(var_0.c, -76916i, var_0.c, -19582i), -vec4<i32>(590i, global0.c, var_0.c, -67060i)), 3394i, all(global0.d) | (48022u <= u_input.a.x)) & var_0.c, var_0.c, _wgslsmith_dot_vec2_i32(~(~vec2<i32>(-1i, global0.c)), select(_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(-1i, -47013i)), _wgslsmith_div_vec2_i32(vec2<i32>(global0.c, global0.c), vec2<i32>(global0.c, 0i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-53549i, 38193i), vec2<i32>(1i, 1i), vec2<i32>(var_0.c, global0.c))), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_0.c, global0.c), vec2<i32>(1i, -9149i)), _wgslsmith_mult_vec2_i32(vec2<i32>(global0.c, -1i), vec2<i32>(26652i, global0.c))), global0.d.x)), _wgslsmith_div_i32(var_0.c, 1i) << (34242u % 32u));
    global0 = Struct_2(var_0.a, Struct_1(~var_0.b.a), _wgslsmith_div_i32(global0.c, min(firstLeadingBit(global0.c), 1i) ^ var_3.x), !vec3<bool>((global0.c & -1i) >= min(var_3.x, 82628i), true, global0.d.x));
    return ~_wgslsmith_mod_vec3_u32(u_input.a, ~countOneBits(_wgslsmith_sub_vec3_u32(u_input.a, u_input.a)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    var var_0 = select(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_div_u32(arg_1.a & 1u, ~arg_0.a), ~(~4294967295u), countOneBits(82019u)), ~firstLeadingBit(vec3<u32>(4294967295u, arg_1.a, arg_1.a) << (vec3<u32>(u_input.b.x, global0.a.a, arg_1.a) % vec3<u32>(32u)))), select(u_input.a, func_2(), vec3<bool>(!global0.d.x, true & global0.d.x, select(global0.d.x, global0.d.x, global0.d.x))) ^ ((vec3<u32>(19198u, arg_1.a, 0u) << (firstTrailingBit(vec3<u32>(arg_0.a, 36978u, arg_0.a)) % vec3<u32>(32u))) & vec3<u32>(4294967295u, arg_1.a >> (arg_0.a % 32u), u_input.b.x & 15668u)), !global0.d.x);
    let var_1 = !(!(!vec4<bool>(all(vec2<bool>(global0.d.x, true)), global0.d.x || global0.d.x, true, global0.d.x)));
    let var_2 = ~(vec3<u32>(~(~1792u), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_1.a, 0u), vec2<u32>(25974u, u_input.a.x)), firstLeadingBit(u_input.b)), 1u) >> (countOneBits(select(vec3<u32>(0u, arg_1.a, 44186u), vec3<u32>(var_0.x, 22098u, global0.b.a), !vec3<bool>(var_1.x, true, true))) % vec3<u32>(32u)));
    var var_3 = all(!select(!vec4<bool>(global0.d.x, false, true, true), var_1, select(!vec4<bool>(true, true, global0.d.x, false), vec4<bool>(global0.d.x, var_1.x, var_1.x, var_1.x), 4294967295u < u_input.a.x)));
    let var_4 = Struct_2(global1[_wgslsmith_index_u32(0u, 4u)], arg_1, ~81169i, vec3<bool>(true, ~_wgslsmith_dot_vec3_i32(vec3<i32>(global0.c, global0.c, -20726i), vec3<i32>(-17303i, 1i, 2147483647i)) < 32072i, !var_1.x));
    return var_4;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = reverseBits(arg_1.a);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1008f)));
    var_0 = _wgslsmith_div_u32(1u, global0.b.a);
    global0 = arg_0;
    var var_2 = ~abs(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_div_i32(arg_0.c, -1i), -1i, _wgslsmith_mod_i32(1i, global0.c)), max(~vec3<i32>(-2147483647i, global0.c, 47158i), vec3<i32>(global0.c, -2147483647i, 20925i))));
    return Struct_1(30180u);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: Struct_1) -> Struct_2 {
    var var_0 = true;
    var var_1 = Struct_2(func_4(arg_1, func_1(func_4(Struct_2(arg_3, Struct_1(arg_3.a), -5462i, arg_0.d), Struct_1(u_input.a.x), arg_1.b), func_1(Struct_1(global0.a.a), Struct_1(global0.a.a)).b).b, global0.b), arg_0.b, func_1(global1[_wgslsmith_index_u32(0u, 4u)], func_1(arg_3, func_4(Struct_2(arg_0.a, Struct_1(4294967295u), arg_1.c, arg_0.d), arg_3, Struct_1(arg_0.a.a))).b).c ^ _wgslsmith_add_i32(max(~arg_0.c, 1i), reverseBits(2147483647i)), !vec3<bool>(43858u != arg_3.a, true, arg_2 <= _wgslsmith_f_op_f32(-1249f * 758f)));
    global1 = array<Struct_1, 4>();
    let var_2 = firstTrailingBit(~(~arg_0.c));
    var var_3 = select(global0.d.x, var_1.d.x, arg_1.d.x);
    return func_1(func_1(Struct_1(~_wgslsmith_mod_u32(18996u, global0.a.a)), arg_3).b, arg_3);
}

fn func_6(arg_0: Struct_2) -> Struct_1 {
    global0 = arg_0;
    let var_0 = u_input.a;
    global1 = array<Struct_1, 4>();
    global0 = Struct_2(Struct_1(~(~arg_0.b.a)), Struct_1(_wgslsmith_sub_u32(global0.a.a, 0u)), ~reverseBits(arg_0.c), global0.d);
    global0 = arg_0;
    return func_1(func_5(Struct_2(func_4(arg_0, Struct_1(4294967295u), func_4(arg_0, Struct_1(0u), global1[_wgslsmith_index_u32(var_0.x, 4u)])), func_1(func_4(arg_0, global0.a, Struct_1(u_input.a.x)), func_1(Struct_1(60662u), global0.a).a).a, _wgslsmith_mult_i32(max(0i, 1i), _wgslsmith_clamp_i32(-13632i, -2147483647i, global0.c)), global0.d), arg_0, 591f, func_4(func_1(Struct_1(arg_0.b.a), arg_0.a), global1[_wgslsmith_index_u32(var_0.x, 4u)], global1[_wgslsmith_index_u32(min(57480u, global0.b.a), 4u)])).b, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(_wgslsmith_mult_vec4_u32(max(vec4<u32>(34682u, u_input.a.x, 44447u, 37970u), vec4<u32>(u_input.a.x, 1u, global0.a.a, 4294967295u)), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 0u, 1u, 14273u), vec4<u32>(arg_0.b.a, global0.b.a, 76831u, 0u)))), vec4<u32>(u_input.b.x, 1u, global0.b.a, _wgslsmith_div_u32(global0.b.a, var_0.x) | _wgslsmith_clamp_u32(1u, arg_0.a.a, 1u))), 4u)]).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(Struct_2(global0.a, Struct_1(u_input.a.x), global0.c >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, global0.b.a), vec4<u32>(u_input.a.x, 74082u, 19694u, 4294967295u)) % 32u), !select(vec3<bool>(false, global0.d.x, true), vec3<bool>(global0.d.x, global0.d.x, false), global0.d)), Struct_2(func_4(func_1(global1[_wgslsmith_index_u32(68331u, 4u)], global0.a), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, global0.b.a), 4u)], Struct_1(4294967295u)), func_4(func_1(Struct_1(global0.a.a), Struct_1(u_input.b.x)), func_4(Struct_2(global1[_wgslsmith_index_u32(u_input.a.x, 4u)], Struct_1(u_input.b.x), 6212i, vec3<bool>(false, global0.d.x, global0.d.x)), global0.b, Struct_1(global0.a.a)), func_4(Struct_2(Struct_1(14520u), Struct_1(global0.b.a), global0.c, vec3<bool>(false, true, false)), Struct_1(u_input.a.x), Struct_1(global0.a.a))), _wgslsmith_sub_i32(2147483647i, global0.c), global0.d), _wgslsmith_f_op_f32(step(-2534f, -1118f)), global1[_wgslsmith_index_u32(29368u, 4u)]));
    let var_1 = u_input.b.x | _wgslsmith_dot_vec2_u32(u_input.a.yy, vec2<u32>(1u, var_0.a));
    let var_2 = vec2<u32>(~global0.a.a, max(~func_4(Struct_2(global1[_wgslsmith_index_u32(46272u, 4u)], Struct_1(var_0.a), global0.c, global0.d), Struct_1(global0.b.a), Struct_1(37141u)).a << (1u % 32u), ~(~global0.b.a) & var_0.a));
    var var_3 = reverseBits(103127u);
    var_3 = ~abs(0u);
    global0 = Struct_2(Struct_1(83096u), Struct_1(1u), _wgslsmith_dot_vec3_i32(vec3<i32>(firstLeadingBit(global0.c), -global0.c, select(-17171i, global0.c, true)), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, global0.c, global0.c), -vec3<i32>(global0.c, global0.c, global0.c))) ^ _wgslsmith_div_i32(abs(i32(-1i) * -1i), _wgslsmith_div_i32(global0.c >> (0u % 32u), ~0i)), !global0.d);
    let var_4 = func_1(global1[_wgslsmith_index_u32(var_0.a, 4u)], global0.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_4.b.a, func_5(Struct_2(Struct_1(0u), var_4.b, -2147483647i, var_4.d), func_1(Struct_1(var_0.a), func_4(var_4, Struct_1(var_0.a), var_4.b)), 1022f, func_5(func_5(var_4, Struct_2(global1[_wgslsmith_index_u32(0u, 4u)], var_4.a, global0.c, vec3<bool>(false, global0.d.x, true)), 1245f, var_4.b), func_5(Struct_2(global1[_wgslsmith_index_u32(0u, 4u)], Struct_1(global0.a.a), -2147483647i, var_4.d), Struct_2(Struct_1(var_4.b.a), global1[_wgslsmith_index_u32(var_0.a, 4u)], var_4.c, var_4.d), -227f, Struct_1(var_0.a)), -124f, Struct_1(var_4.b.a)).b).b.a), global0.c, var_0.a);
}

