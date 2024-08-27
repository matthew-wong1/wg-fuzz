struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, 0u, 1u);

var<private> global1: vec4<f32> = vec4<f32>(390f, 1000f, -1214f, 963f);

var<private> global2: Struct_2;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec3<i32>) -> vec3<bool> {
    let var_0 = Struct_2(global2.b, abs(abs(0i)), global2.d, arg_1, countOneBits(vec3<i32>(global2.b, ~(~0i), -1i)));
    var var_1 = Struct_2(arg_2.x, _wgslsmith_div_i32(-28242i, global2.e.x), arg_1, arg_1, global2.e);
    var_1 = var_0;
    global2 = Struct_2(_wgslsmith_add_i32(select(_wgslsmith_sub_i32(-1288i, 1i), -47293i, abs(global2.d.b) <= countOneBits(42789u)), -_wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, arg_2.x, -776i, global2.e.x), vec4<i32>(var_0.a, 37213i, 2147483647i, -18891i) << (vec4<u32>(arg_1.c, global2.c.b, var_1.c.c, var_1.c.b) % vec4<u32>(32u)))), var_1.e.x, Struct_1(false, 8412u, 43193u), Struct_1(global2.c.a, _wgslsmith_mult_u32(_wgslsmith_mult_u32(firstLeadingBit(u_input.a.x), 93345u), 28723u), 97561u), vec3<i32>((i32(-1i) * -1i) << (_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(var_1.c.b, 4294967295u, 19781u), var_0.d.b, ~arg_1.b) % 32u), ~var_1.b, 1i));
    let var_2 = countOneBits(global0.c << (~select(~96179u, 1u & var_1.c.b, arg_1.c < 39128u) % 32u));
    return !select(select(vec3<bool>(!var_0.c.a, select(false, false, false), true), !(!vec3<bool>(false, arg_0, global2.c.a)), true), vec3<bool>(false, arg_0, var_1.b != arg_2.x), !all(select(vec4<bool>(arg_0, false, true, false), vec4<bool>(false, true, false, false), false)));
}

fn func_2() -> Struct_2 {
    global2 = Struct_2(i32(-1i) * -2147483647i, global2.e.x, global2.d, Struct_1(all(vec4<bool>(true, true, true, true)), ~(~11548u), 24283u), _wgslsmith_div_vec3_i32(~vec3<i32>(global2.a, -27115i, global2.a) & global2.e, _wgslsmith_mod_vec3_i32(vec3<i32>(~5433i, firstLeadingBit(2147483647i), global2.b), (vec3<i32>(global2.b, -37857i, -1i) & vec3<i32>(-9943i, global2.e.x, global2.e.x)) ^ ~vec3<i32>(global2.e.x, global2.b, global2.e.x))));
    let var_0 = global2.c;
    return Struct_2(~_wgslsmith_dot_vec3_i32(countOneBits(global2.e & vec3<i32>(global2.e.x, -26906i, global2.e.x)), vec3<i32>(global2.a, 0i, -global2.a)), 1i << (~(1u & u_input.a.x) % 32u), Struct_1(!any(func_3(true, Struct_1(false, 54823u, 42662u), global2.e)), select(select(global0.b, u_input.a.x, var_0.a) << (firstLeadingBit(25378u) % 32u), 1u ^ abs(global0.b), all(!vec2<bool>(false, var_0.a))), firstTrailingBit(global0.c)), global2.c, select(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i >> (1u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(global2.e.x, -2147483647i), vec2<i32>(-58565i, -1i)), ~1i), max(-global2.e, ~vec3<i32>(-1i, global2.e.x, global2.e.x)), ~(global2.e >> (vec3<u32>(var_0.b, global2.c.b, var_0.b) % vec3<u32>(32u)))), global2.e, select(!vec3<bool>(global2.c.a, true, global2.d.a), vec3<bool>(global2.c.a, all(vec3<bool>(global0.a, true, global2.d.a)), any(vec4<bool>(var_0.a, global0.a, true, global0.a))), all(select(vec4<bool>(var_0.a, false, false, true), vec4<bool>(false, global0.a, true, true), vec4<bool>(true, var_0.a, global2.c.a, true))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = false;
    var var_2 = _wgslsmith_dot_vec3_u32(max(vec3<u32>(arg_0.c.b, global0.b, _wgslsmith_add_u32(81326u, global0.c)), vec3<u32>(u_input.a.x, global2.d.c & 1u, firstLeadingBit(1u))) << (~(~(vec3<u32>(1u, var_0.d.b, arg_0.c.c) >> (vec3<u32>(4294967295u, 1u, global2.d.c) % vec3<u32>(32u)))) % vec3<u32>(32u)), ~_wgslsmith_sub_vec3_u32(firstLeadingBit(firstTrailingBit(vec3<u32>(var_0.c.b, 0u, global0.b))), ~_wgslsmith_div_vec3_u32(vec3<u32>(global0.b, global2.d.b, 1u), vec3<u32>(15079u, 4294967295u, u_input.a.x))));
    global2 = arg_0;
    global2 = arg_0;
    return var_0.c;
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = !(!arg_2.d.a);
    let var_1 = vec3<i32>(global2.e.x, -arg_2.b, global2.e.x);
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(-578f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), arg_0, global1.x) - vec4<f32>(_wgslsmith_div_f32(-718f, _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-412f - arg_0), _wgslsmith_f_op_f32(-global1.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-657f - -372f)), !(!global0.a)))));
    global2 = Struct_2(25607i, var_1.x, global2.c, func_4(func_2(), func_3(global0.a, Struct_1(any(vec3<bool>(global0.a, global0.a, global0.a)), _wgslsmith_div_u32(global2.d.c, 7524u), global2.c.c), global2.e).zx, vec2<i32>(~(i32(-1i) * -1i), i32(-1i) * -global2.b)), ~(~arg_2.e) ^ (vec3<i32>(-1i) * -vec3<i32>(1i, global2.b, 2791i)));
    var_0 = any(select(select(select(select(vec4<bool>(true, false, arg_2.d.a, arg_2.c.a), vec4<bool>(global0.a, false, global2.d.a, global0.a), vec4<bool>(arg_2.d.a, global0.a, true, global2.d.a)), vec4<bool>(false, true, true, arg_2.c.a), vec4<bool>(false, true, true, true)), select(!vec4<bool>(arg_2.c.a, true, false, global0.a), vec4<bool>(true, global0.a, global2.c.a, true), select(vec4<bool>(arg_2.d.a, true, arg_2.d.a, arg_2.d.a), vec4<bool>(global2.d.a, true, arg_2.c.a, true), true)), !select(vec4<bool>(global2.d.a, false, global2.c.a, true), vec4<bool>(true, global0.a, global0.a, true), arg_2.d.a)), select(select(!vec4<bool>(true, global2.d.a, global2.d.a, arg_2.d.a), vec4<bool>(false, arg_2.d.a, global2.d.a, false), true), !select(vec4<bool>(true, global2.c.a, global0.a, false), vec4<bool>(arg_2.d.a, global2.d.a, global0.a, global2.c.a), global2.c.a), vec4<bool>(global0.a, func_3(global0.a, Struct_1(global0.a, arg_2.c.b, arg_1.x), var_1).x, select(arg_2.d.a, global0.a, arg_2.d.a), func_2().c.a)), !vec4<bool>(!global2.c.a, global2.d.a, !arg_2.c.a, func_4(arg_2, vec2<bool>(global0.a, false), vec2<i32>(global2.a, -1i)).a)));
    return Struct_1(arg_2.c.a == false, ~u_input.a.x, ~(~4294967295u));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> Struct_1 {
    global0 = func_2().c;
    return arg_0;
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> vec3<u32> {
    global0 = Struct_1(func_3(false, Struct_1(!select(global0.a, true, global2.d.a), abs(~4294967295u), 12496u), global2.e).x, ~_wgslsmith_mult_u32(~(~23825u), arg_0), max(countOneBits(33726u), func_4(func_2(), vec2<bool>(!global2.d.a, false), vec2<i32>(30188i, arg_2)).c));
    let var_0 = -(firstLeadingBit(-vec3<i32>(arg_2, -60559i, 71950i)) & select(~global2.e, _wgslsmith_mod_vec3_i32(vec3<i32>(arg_2, 1i, arg_2), global2.e), !vec3<bool>(global2.d.a, global0.a, true))) >> (vec3<u32>(global0.c, ~global2.c.b, 0u) % vec3<u32>(32u));
    let var_1 = select(!vec4<bool>(!global2.d.a, arg_1.a, all(func_3(true, Struct_1(global0.a, arg_0, 4294967295u), var_0).yy), !any(vec4<bool>(true, false, arg_1.a, arg_1.a))), !vec4<bool>((arg_1.c >> (26475u % 32u)) <= arg_1.b, !(arg_1.a & true), _wgslsmith_f_op_f32(global1.x - arg_3) < -548f, true), false);
    let var_2 = 1u;
    let var_3 = global2.e;
    return abs(vec3<u32>(21241u, global2.d.c, var_2 >> (func_1(-1677f, vec3<u32>(10958u, u_input.a.x, 0u) & vec3<u32>(global2.d.b, 4294967295u, global2.c.b), Struct_2(var_3.x, 25487i, global2.c, Struct_1(true, 1u, 56273u), vec3<i32>(-20292i, 2147483647i, arg_2))).b % 32u)));
}

fn func_7(arg_0: vec2<f32>, arg_1: u32, arg_2: bool, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = 2147483647i;
    global0 = global2.d;
    let var_1 = ~(_wgslsmith_mod_i32(arg_3.x, abs(firstLeadingBit(arg_3.x))) | -1i);
    global2 = func_2();
    var var_2 = var_0;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a, 41336u, 0u);
    let var_0 = firstLeadingBit(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(global2.e.xy | vec2<i32>(global2.e.x, global2.e.x), global2.e.xy | vec2<i32>(global2.a, global2.b)), 0i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(global2.b, global2.b, 1i, 2147483647i) << (vec4<u32>(28001u, u_input.a.x, global2.d.c, global0.c) % vec4<u32>(32u)), vec4<i32>(-2147483647i, 1i, -41476i, global2.b)), global2.e.x));
    var var_1 = func_7(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.yw) + _wgslsmith_f_op_vec2_f32(-global1.xw))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(1715f, -118f), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -1408f) * vec2<f32>(-1170f, global1.x))), global1.yz, global2.c.a))), min(abs(_wgslsmith_add_u32(0u, 4294967295u)), 4517u) ^ min(82289u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(52036u, 21254u), u_input.a)), 4294967295u > ~(~(~global0.b)), _wgslsmith_div_vec3_i32(~global2.e, global2.e) << (func_6(~4294967295u, func_5(func_1(global1.x, vec3<u32>(7778u, global2.d.c, 52307u), Struct_2(-1i, -16545i, Struct_1(true, 86802u, 34814u), global2.d, var_0)), abs(global2.b), all(vec3<bool>(global0.a, false, global0.a))), _wgslsmith_dot_vec2_i32(abs(var_0.zz), var_0.zx), 1086f) % vec3<u32>(32u)));
    let var_2 = func_7(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1304f, global1.x)))), _wgslsmith_f_op_vec2_f32(step(global1.yx, global1.xz)))), u_input.a.x, all(select(select(select(vec4<bool>(global2.d.a, global0.a, true, false), vec4<bool>(global2.c.a, global2.d.a, true, global2.d.a), vec4<bool>(var_1.d.a, global2.c.a, false, true)), select(vec4<bool>(var_1.c.a, var_1.d.a, false, var_1.c.a), vec4<bool>(var_1.c.a, false, global2.c.a, global2.c.a), vec4<bool>(global2.c.a, true, false, false)), true), vec4<bool>(true, all(vec2<bool>(false, true)), any(vec2<bool>(false, true)), false), vec4<bool>(select(global2.c.a, false, global0.a), global2.d.a, !var_1.d.a, global2.d.a))), vec3<i32>(i32(-1i) * -global2.e.x, -var_1.e.x, -25196i));
    var_1 = func_7(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -158f), _wgslsmith_f_op_f32(-112f + _wgslsmith_div_f32(global1.x, global1.x))))), ~_wgslsmith_sub_u32(global2.c.b, func_6(1u & var_1.c.c, func_1(461f, vec3<u32>(u_input.a.x, global2.d.c, 97117u), var_2), var_2.b, global1.x).x), any(!vec2<bool>(true, global2.c.a)) & false, abs(min(~vec3<i32>(-3196i, var_2.b, -35015i), var_0)));
    var_1 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(global2.c.c, 0u) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(var_1.c.b, ~global2.c.c), ~vec2<u32>(global2.d.b, var_1.c.b) << (abs(u_input.a) % vec2<u32>(32u))), -(vec4<i32>(-1i) * -(~vec4<i32>(1i, var_1.b, 0i, 0i))), u_input.a);
}

