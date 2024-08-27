struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: vec2<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 9> = array<vec2<u32>, 9>(vec2<u32>(16033u, 10484u), vec2<u32>(28364u, 20633u), vec2<u32>(884u, 4294967295u), vec2<u32>(27903u, 12574u), vec2<u32>(4294967295u, 1u), vec2<u32>(20883u, 67680u), vec2<u32>(2397u, 1u), vec2<u32>(12054u, 101608u), vec2<u32>(17761u, 0u));

var<private> global1: Struct_2 = Struct_2(vec3<f32>(-1844f, 618f, 446f), 1086f, vec2<f32>(1443f, -128f), Struct_1(-2074f, vec3<u32>(0u, 111533u, 0u), true, i32(-2147483648)));

var<private> global2: vec4<bool>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    var var_0 = !vec3<bool>(~1i == ~_wgslsmith_clamp_i32(global1.d.d, global1.d.d, 19961i), global2.x, select(any(select(vec4<bool>(global1.d.c, true, global2.x, true), vec4<bool>(true, global2.x, global1.d.c, global1.d.c), vec4<bool>(true, true, true, global1.d.c))), any(global2.yx), true));
    var_0 = !(!vec3<bool>(!global2.x, true, var_0.x | true));
    global0 = array<vec2<u32>, 9>();
    let var_1 = _wgslsmith_f_op_f32(-global1.c.x);
    let var_2 = _wgslsmith_sub_i32(select(-26145i ^ max(u_input.c, 2147483647i), firstLeadingBit(-1i), global1.d.c), -1i) | reverseBits(_wgslsmith_mult_i32(min(-u_input.c, u_input.c), global1.d.d));
    return ~_wgslsmith_sub_i32(global1.d.d, reverseBits((-21934i << (global1.d.b.x % 32u)) >> (1u % 32u)));
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = 112f;
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(global1.a + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.d.a, 610f, global1.b), _wgslsmith_f_op_vec3_f32(-global1.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b - global1.a.x)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global1.c))), _wgslsmith_f_op_vec2_f32(global1.a.yz * global1.c))), global1.a.xy, select(global2.yw, !(!vec2<bool>(global1.d.c, false)), true))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(sign(-798f)), global2.x && true))), vec3<u32>(u_input.b.x >> (~global1.d.b.x % 32u), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.b, global1.d.b), u_input.a.x), 59059u), global1.d.c, -firstLeadingBit(func_3())));
    let var_2 = ~(~0u);
    let var_3 = Struct_1(var_1.b, _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(u_input.b.x, var_1.d.b.x, 0u) | vec3<u32>(var_2, var_2, var_1.d.b.x)), ~u_input.b >> ((u_input.b & global1.d.b) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, global1.d.b.x, var_1.d.b.x), ~(u_input.b | vec3<u32>(1u, 9687u, var_1.d.b.x)))), any(global2.xy), 29173i);
    global0 = array<vec2<u32>, 9>();
    return var_1;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2) -> Struct_2 {
    var var_0 = !select(!select(select(vec4<bool>(arg_1.d.c, true, global1.d.c, arg_1.d.c), vec4<bool>(arg_1.d.c, true, arg_1.d.c, arg_1.d.c), false), !vec4<bool>(false, global2.x, global2.x, true), arg_1.d.c || global2.x), vec4<bool>(!(true | arg_1.d.c), global2.x, -988f < _wgslsmith_f_op_f32(min(arg_1.b, global1.a.x)), true), vec4<bool>(!(!global1.d.c), arg_1.d.c & arg_1.d.c, _wgslsmith_add_u32(12302u, arg_1.d.b.x) <= _wgslsmith_dot_vec3_u32(arg_1.d.b, vec3<u32>(arg_0.x, arg_1.d.b.x, u_input.a.x)), _wgslsmith_f_op_f32(floor(arg_1.d.a)) > global1.a.x));
    var var_1 = arg_1.d;
    var_1 = arg_1.d;
    let var_2 = func_2(false);
    let var_3 = !func_2(false).d.c;
    return Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(770f, -1000f)) - var_2.b), global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.a - -1029f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1579f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.d.a, 382f))) * _wgslsmith_f_op_vec2_f32(var_2.c + vec2<f32>(var_1.a, var_1.a))))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b, -468f))))))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -261f), ~func_2(var_3 || true).d.b, var_2.d.c, ~arg_1.d.d));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = func_4(_wgslsmith_add_vec2_u32(vec2<u32>(~(global1.d.b.x >> (12312u % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, global1.d.b.x, 0u), vec4<u32>(u_input.a.x, global1.d.b.x, u_input.a.x, 0u)) >> (~global1.d.b.x % 32u)), ~(~vec2<u32>(47188u, u_input.a.x))), func_2(arg_0.x));
    var var_1 = _wgslsmith_add_vec2_i32(reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -27756i), min(vec2<i32>(global1.d.d, -23399i), vec2<i32>(49202i, 6384i)), -vec2<i32>(1i, u_input.d))) << (~firstLeadingBit(vec2<u32>(global1.d.b.x, global1.d.b.x)) % vec2<u32>(32u)), ~vec2<i32>(36788i, func_2(true).d.d));
    var var_2 = 1000f;
    global0 = array<vec2<u32>, 9>();
    global2 = !select(select(!(!vec4<bool>(arg_0.x, false, global2.x, arg_1.x)), select(!vec4<bool>(false, false, true, arg_1.x), !vec4<bool>(true, false, arg_1.x, arg_0.x), select(vec4<bool>(global1.d.c, true, global1.d.c, global2.x), vec4<bool>(true, var_0.d.c, global1.d.c, true), vec4<bool>(global2.x, false, false, false))), select(select(vec4<bool>(global1.d.c, true, false, false), vec4<bool>(arg_0.x, arg_0.x, true, arg_1.x), vec4<bool>(arg_1.x, false, false, global1.d.c)), select(vec4<bool>(false, arg_0.x, false, false), vec4<bool>(false, var_0.d.c, global2.x, true), arg_0.x), global1.d.d > global1.d.d)), vec4<bool>(all(select(global2.xx, global2.xy, vec2<bool>(false, global1.d.c))), func_2(global1.d.c).d.c, false, arg_1.x), !vec4<bool>(true, select(global1.d.c, true, true), all(arg_1), func_4(vec2<u32>(4294967295u, 4294967295u), Struct_2(global1.a, var_0.d.a, global1.a.xz, var_0.d)).d.c));
    return Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1959f)) * _wgslsmith_f_op_f32(step(1f, var_0.c.x))))), global1.d.b, all(select(vec4<bool>(!arg_0.x, all(vec3<bool>(false, global1.d.c, global2.x)), global2.x, var_0.d.d > u_input.d), select(select(vec4<bool>(true, true, global2.x, true), vec4<bool>(arg_1.x, false, global1.d.c, arg_0.x), true), !vec4<bool>(global2.x, true, false, true), select(vec4<bool>(true, arg_1.x, global2.x, global2.x), vec4<bool>(arg_1.x, global2.x, true, false), vec4<bool>(false, global1.d.c, false, true))), arg_1.x)), _wgslsmith_div_i32(_wgslsmith_mult_i32(1i, -22391i), var_1.x & _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-4129i, global1.d.d, 10250i, global1.d.d), vec4<i32>(var_1.x, var_1.x, u_input.c, u_input.c)), abs(vec4<i32>(u_input.d, 6849i, u_input.c, -32921i)))));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    global2 = vec4<bool>(false, global2.x, true, any(!vec4<bool>(-1861f >= arg_3.b, func_4(vec2<u32>(global1.d.b.x, 1u), Struct_2(vec3<f32>(arg_3.c.x, 653f, -661f), arg_3.c.x, global1.c, Struct_1(149f, vec3<u32>(arg_3.d.b.x, u_input.b.x, 14129u), arg_2.c, global1.d.d))).d.c, arg_2.c | false, true)));
    global1 = Struct_2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.d.a)) * _wgslsmith_f_op_f32(global1.b + global1.a.x)), arg_3.c.x), arg_3.d.a, _wgslsmith_f_op_f32(-arg_3.d.a)), _wgslsmith_f_op_f32(floor(1550f)), global1.c, Struct_1(_wgslsmith_f_op_f32(ceil(arg_2.a)), max(_wgslsmith_div_vec3_u32(arg_2.b >> (vec3<u32>(global1.d.b.x, arg_0, 18001u) % vec3<u32>(32u)), func_2(true).d.b), arg_3.d.b), _wgslsmith_mod_i32(~global1.d.d, -26933i) > (func_3() ^ abs(57540i)), countOneBits(_wgslsmith_add_i32(1i, _wgslsmith_mod_i32(u_input.d, -51133i)))));
    let var_0 = (all(select(global2.wyx, !vec3<bool>(global1.d.c, global2.x, arg_2.c), select(global2.wyy, vec3<bool>(arg_3.d.c, arg_2.c, global2.x), vec3<bool>(false, arg_2.c, global1.d.c)))) || (-1133f > _wgslsmith_f_op_f32(_wgslsmith_div_f32(532f, arg_1.d.a) - _wgslsmith_f_op_f32(1250f + -2251f)))) & all(vec4<bool>((arg_2.d & global1.d.d) < ~60060i, true, false, false));
    let var_1 = vec2<i32>(func_2(arg_1.d.c).d.d, 14621i);
    let var_2 = vec2<i32>(-2147483647i, 1i);
    return func_1(select(global2.yy, vec2<bool>(true | (14362i > arg_1.d.d), !arg_3.d.c && false), func_4(vec2<u32>(4294967295u, arg_1.d.b.x | arg_2.b.x), func_4(_wgslsmith_sub_vec2_u32(arg_3.d.b.zx, vec2<u32>(0u, 45884u)), func_2(false))).d.c), select(!vec2<bool>(arg_1.d.c, true), select(!select(global2.wz, global2.wx, true), select(global2.xz, !global2.yz, select(vec2<bool>(true, false), vec2<bool>(var_0, arg_1.d.c), global2.wz)), !global2.yx), var_0));
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2) -> Struct_2 {
    let var_0 = func_4(vec2<u32>(arg_0.d.b.x, ~arg_2.d.b.x), arg_0);
    var var_1 = arg_2;
    return Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.a * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2.b, var_1.c.x, var_0.d.a), global1.a))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(551f, _wgslsmith_f_op_f32(-1178f * -578f), _wgslsmith_f_op_f32(ceil(arg_1))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(662f, -1332f, arg_0.d.a))), vec3<f32>(1482f, 1000f, 1387f))))), arg_1, _wgslsmith_f_op_vec2_f32(-func_4(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.b.x, global1.d.b.x), vec2<u32>(41604u, 4294967295u)), var_0).c), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1014f * _wgslsmith_div_f32(arg_2.c.x, arg_2.d.a)))), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, arg_0.d.b.x, 28853u), vec3<u32>(1u, arg_0.d.b.x, arg_0.d.b.x)), true, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.a.x))), _wgslsmith_f_op_f32(-global1.d.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.x + -1115f) - _wgslsmith_f_op_f32(global1.b + global1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1100f)), global1.c, func_5(global1.d.b.x, Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, -451f, global1.a.x)), -810f, _wgslsmith_f_op_vec2_f32(global1.c * vec2<f32>(414f, global1.d.a)), Struct_1(-2176f, u_input.b, true, 0i)), func_1(global2.zy, !global2.zx), func_2(false))), _wgslsmith_div_f32(-317f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-313f + _wgslsmith_f_op_f32(-264f - global1.b)) * func_2(func_5(u_input.a.x, Struct_2(global1.a, global1.c.x, vec2<f32>(-370f, global1.b), global1.d), Struct_1(962f, global1.d.b, false, u_input.c), Struct_2(global1.a, global1.d.a, global1.a.xx, Struct_1(global1.d.a, vec3<u32>(30452u, 66239u, 69015u), global1.d.c, 0i))).c).b)), Struct_2(_wgslsmith_f_op_vec3_f32(global1.a - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global1.a)))), _wgslsmith_f_op_f32(global1.b + func_5(~u_input.a.x, Struct_2(vec3<f32>(1864f, -863f, global1.a.x), global1.d.a, vec2<f32>(global1.b, -451f), global1.d), func_4(global1.d.b.xx, Struct_2(global1.a, global1.c.x, vec2<f32>(global1.b, global1.c.x), Struct_1(-674f, vec3<u32>(u_input.b.x, 1u, global1.d.b.x), true, 40454i))).d, func_2(true)).a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global1.a.yz, vec2<f32>(global1.b, 1165f)))), Struct_1(_wgslsmith_div_f32(-1461f, _wgslsmith_f_op_f32(-global1.d.a)), max(select(vec3<u32>(u_input.b.x, global1.d.b.x, u_input.a.x), u_input.b, global2.xxx), _wgslsmith_clamp_vec3_u32(global1.d.b, vec3<u32>(global1.d.b.x, global1.d.b.x, 0u), u_input.b)), true, u_input.c)));
    global2 = !select(vec4<bool>(true, any(vec4<bool>(false, false, var_0.d.c, true)), false, false && var_0.d.c), select(!(!vec4<bool>(var_0.d.c, true, true, global2.x)), !vec4<bool>(false, global1.d.c, false, true), vec4<bool>(global2.x, false, func_6(Struct_2(vec3<f32>(-287f, -783f, global1.d.a), var_0.b, var_0.a.yx, var_0.d), global1.a.x, Struct_2(vec3<f32>(global1.c.x, var_0.b, -275f), var_0.d.a, var_0.c, var_0.d)).d.c, true)), vec4<bool>((var_0.d.d | 0i) <= _wgslsmith_mult_i32(var_0.d.d, 28794i), var_0.d.c, global1.d.c, true || !global1.d.c));
    var var_1 = vec2<bool>(true, all(select(!select(global2.zw, vec2<bool>(false, global1.d.c), vec2<bool>(true, global2.x)), vec2<bool>(all(global2.wxx), any(vec2<bool>(true, var_0.d.c))), !(!global1.d.c))));
    var var_2 = false;
    let var_3 = !(1334f > _wgslsmith_f_op_f32(floor(global1.a.x)));
    global2 = !(!select(!vec4<bool>(global2.x, global1.d.c, global2.x, global1.d.c), vec4<bool>(true, true, false, true), false));
    let var_4 = any(select(vec4<bool>(var_0.d.b.x < var_0.d.b.x, !(global1.c.x >= var_0.d.a), global1.d.b.x > _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d.b.x, global1.d.b.x, var_0.d.b.x), u_input.b), !global2.x), vec4<bool>(!var_3, func_6(Struct_2(vec3<f32>(-1288f, 1000f, global1.c.x), global1.d.a, var_0.a.xy, global1.d), var_0.b, func_6(Struct_2(vec3<f32>(global1.a.x, -1468f, global1.a.x), 1014f, vec2<f32>(var_0.b, global1.c.x), Struct_1(-1493f, u_input.b, global1.d.c, 19868i)), 1105f, Struct_2(vec3<f32>(var_0.c.x, 758f, global1.a.x), var_0.d.a, vec2<f32>(var_0.a.x, 1695f), global1.d))).d.c, true, func_1(global2.xw, global2.wz).c), select(select(select(vec4<bool>(global2.x, true, var_3, false), vec4<bool>(false, true, true, false), global2.x), !vec4<bool>(true, var_3, true, var_1.x), var_3 || var_1.x), select(!vec4<bool>(global2.x, true, false, false), select(vec4<bool>(false, true, true, false), vec4<bool>(global2.x, true, var_3, global2.x), vec4<bool>(global1.d.c, false, var_0.d.c, var_3)), vec4<bool>(true, global1.d.c, var_3, var_3)), all(!vec4<bool>(var_0.d.c, true, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(countOneBits(global1.d.b.x << (u_input.a.x % 32u)), global1.d.b.x));
}

