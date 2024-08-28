struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(0u, 0u), vec2<u32>(35642u, 9102u), vec2<u32>(1u, 0u), vec2<u32>(11640u, 34940u), vec2<u32>(0u, 43811u), vec2<u32>(2768u, 0u), vec2<u32>(4294967295u, 3920u), vec2<u32>(44910u, 36352u), vec2<u32>(73858u, 35063u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 0u), vec2<u32>(17059u, 65467u), vec2<u32>(0u, 0u), vec2<u32>(67583u, 52866u), vec2<u32>(33854u, 62186u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 21636u), vec2<u32>(1422u, 0u), vec2<u32>(4294967295u, 34001u), vec2<u32>(65047u, 1u), vec2<u32>(7290u, 0u), vec2<u32>(0u, 10195u));

var<private> global1: array<Struct_1, 22>;

var<private> global2: i32;

var<private> global3: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> vec4<bool> {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.d.x, 21707u, 1u), 22u)];
    var var_1 = Struct_1(true, _wgslsmith_f_op_f32(-1964f + 751f), countOneBits(u_input.c.xx));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -475f);
    var_0 = Struct_1(all(vec2<bool>(!global3.a, arg_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -250f), _wgslsmith_add_vec2_i32(select(global3.c, min(var_0.c & var_1.c, global3.c), arg_0.a), _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 1i) >> (global0[_wgslsmith_index_u32(24586u, 23u)] % vec2<u32>(32u)), global3.c), countOneBits(-vec2<i32>(27567i, 1i)))));
    var var_3 = i32(-1i) * -23336i;
    return !vec4<bool>(any(vec3<bool>(!arg_0.a, arg_1.a, all(arg_3))), false, arg_0.a, true);
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    global1 = array<Struct_1, 22>();
    var var_0 = global1[_wgslsmith_index_u32(u_input.d.x, 22u)];
    let var_1 = arg_0;
    let var_2 = Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b))), u_input.c.zx);
    let var_3 = max(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, ~u_input.d.x, ~(~4294967295u), ~u_input.a & max(0u, u_input.d.x)), select(~reverseBits(vec4<u32>(1u, 4294967295u, 1u, u_input.d.x)), vec4<u32>(73813u, ~4294967295u, abs(59998u), ~u_input.d.x), !func_3(var_2, Struct_1(var_0.a, -501f, u_input.c.xy), Struct_1(var_0.a, var_0.b, vec2<i32>(global3.c.x, arg_0.x)), vec3<bool>(false, global3.a, var_0.a)))), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(34477u, u_input.d.x), u_input.a, 11951u, 4294967295u) | (vec4<u32>(u_input.a, u_input.d.x, 1u, 60348u) >> (select(vec4<u32>(4294967295u, u_input.b, u_input.a, 4294967295u), vec4<u32>(u_input.a, 0u, u_input.a, 71670u), vec4<bool>(true, true, false, true)) % vec4<u32>(32u))), ~max(vec4<u32>(u_input.d.x, 0u, u_input.b, u_input.b) >> (vec4<u32>(u_input.a, u_input.d.x, u_input.d.x, u_input.b) % vec4<u32>(32u)), vec4<u32>(u_input.a, 39587u, u_input.d.x, 16869u)), vec4<u32>(1u, select(~u_input.d.x, 0u, all(vec2<bool>(true, true))), u_input.d.x, _wgslsmith_add_u32(46754u, _wgslsmith_clamp_u32(23830u, u_input.b, 1644u)))));
    return Struct_1(true, -1581f, _wgslsmith_div_vec2_i32(vec2<i32>(global3.c.x, 1i), (vec2<i32>(-2147483647i, global3.c.x) ^ -vec2<i32>(2147483647i, var_0.c.x)) & _wgslsmith_div_vec2_i32(-var_2.c, -u_input.c.ww)));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: i32, arg_3: Struct_1) -> i32 {
    var var_0 = 0u;
    global0 = array<vec2<u32>, 23>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(~(-u_input.c)).b));
    var var_2 = all(!(!vec3<bool>(arg_3.b <= global3.b, -1338f >= arg_0.b, global3.a)));
    let var_3 = _wgslsmith_add_u32(_wgslsmith_div_u32(firstLeadingBit(arg_1), 16000u), reverseBits(_wgslsmith_mult_u32((4294967295u & arg_1) | firstTrailingBit(u_input.a), ~max(arg_1, u_input.b))));
    return 19775i;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    global2 = func_4(func_2(vec4<i32>(u_input.c.x, -10952i, i32(-1i) * -2147483647i, max(9890i, -1i))), 1u, i32(-1i) * -1i, Struct_1(any(vec4<bool>(arg_0.x, false, 2147483647i <= arg_3.c.x, !global3.a)), 2454f, arg_3.c));
    let var_0 = vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(816f - _wgslsmith_f_op_f32(round(-817f)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(reverseBits(u_input.c)).b));
    let var_2 = arg_3;
    global2 = 2147483647i;
    return Struct_1(true, -232f, reverseBits(var_2.c));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = u_input.b;
    global3 = func_2(_wgslsmith_add_vec4_i32(-max(~vec4<i32>(u_input.c.x, 0i, 37581i, -11398i), vec4<i32>(global3.c.x, global3.c.x, arg_1.c.x, -20450i)), -abs(vec4<i32>(30163i, -2147483647i, u_input.c.x, u_input.c.x))));
    var var_1 = _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(min(_wgslsmith_sub_u32(var_0, 40672u), 84222u), ~var_0, u_input.d.x), vec3<u32>(~6230u, min(0u, u_input.a ^ 15655u), ~(var_0 & u_input.d.x))), select(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0, var_0, 0u), vec3<u32>(64641u, u_input.b, 0u) ^ vec3<u32>(var_0, u_input.b, var_0), countOneBits(vec3<u32>(16627u, 4294967295u, 1u))) | select(~vec3<u32>(0u, u_input.d.x, var_0), countOneBits(vec3<u32>(u_input.b, 44905u, var_0)), !vec3<bool>(global3.a, true, false)), _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, u_input.a), vec3<u32>(7097u, 110u, 55502u)) << (vec3<u32>(u_input.a, 0u, 10619u) % vec3<u32>(32u)), ~vec3<u32>(0u, u_input.a, 24924u) << (select(vec3<u32>(1022u, var_0, u_input.b), vec3<u32>(1u, 14489u, var_0), false) % vec3<u32>(32u))), select(vec3<bool>(true, !global3.a, true), !vec3<bool>(true, global3.a, arg_1.a), select(!vec3<bool>(arg_0.a, arg_0.a, true), vec3<bool>(global3.a, arg_1.a, false), true))));
    let var_2 = -vec3<i32>(arg_0.c.x, abs(u_input.c.x) << (firstLeadingBit(firstTrailingBit(var_0)) % 32u), arg_1.c.x);
    return func_1(select(func_3(Struct_1(true, _wgslsmith_f_op_f32(min(arg_1.b, global3.b)), vec2<i32>(-22915i, arg_1.c.x)), Struct_1(true, global3.b, vec2<i32>(arg_1.c.x, u_input.c.x)), func_1(vec2<bool>(true, arg_1.a), func_2(u_input.c), !vec4<bool>(true, false, false, global3.a), func_1(vec2<bool>(arg_1.a, true), Struct_1(arg_1.a, 1000f, global3.c), vec4<bool>(global3.a, arg_1.a, arg_1.a, global3.a), Struct_1(arg_1.a, -161f, vec2<i32>(1i, arg_1.c.x)))), !select(vec3<bool>(true, arg_0.a, false), vec3<bool>(true, true, arg_1.a), arg_1.a)).wz, select(vec2<bool>(false, true), !(!vec2<bool>(global3.a, arg_1.a)), vec2<bool>(any(vec2<bool>(arg_1.a, global3.a)), all(vec2<bool>(false, true)))), !select(select(vec2<bool>(false, global3.a), vec2<bool>(arg_1.a, false), vec2<bool>(true, arg_0.a)), select(vec2<bool>(global3.a, global3.a), vec2<bool>(global3.a, false), false), func_3(Struct_1(arg_0.a, arg_0.b, vec2<i32>(-1i, u_input.c.x)), arg_1, global1[_wgslsmith_index_u32(24675u, 22u)], vec3<bool>(true, true, arg_1.a)).ww)), arg_1, !(!func_3(func_1(vec2<bool>(arg_0.a, arg_1.a), Struct_1(arg_1.a, global3.b, vec2<i32>(-27180i, -2147483647i)), vec4<bool>(true, arg_1.a, true, global3.a), arg_1), Struct_1(arg_1.a, arg_0.b, vec2<i32>(1i, global3.c.x)), arg_1, !vec3<bool>(true, true, arg_1.a))), Struct_1(func_1(func_3(Struct_1(true, arg_0.b, vec2<i32>(2147483647i, -2147483647i)), arg_1, func_1(vec2<bool>(arg_0.a, false), global1[_wgslsmith_index_u32(50610u, 22u)], vec4<bool>(false, true, global3.a, false), global1[_wgslsmith_index_u32(27951u, 22u)]), vec3<bool>(arg_0.a, arg_1.a, arg_0.a)).zw, arg_1, select(!vec4<bool>(false, global3.a, true, true), !vec4<bool>(true, false, true, arg_0.a), !global3.a), Struct_1(any(vec4<bool>(false, true, true, false)), _wgslsmith_f_op_f32(-arg_1.b), vec2<i32>(52539i, global3.c.x))).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.b, arg_0.b))), ~arg_0.c));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> i32 {
    let var_0 = vec4<f32>(-526f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.b)))), 116f, arg_0.b);
    var var_1 = global3.b;
    var var_2 = -1000f;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b - arg_0.b)) - arg_1.b))) + arg_0.b);
    global3 = Struct_1(countOneBits(1u) == (~4294967295u ^ select(~u_input.d.x, 0u, !global3.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3.b)) * _wgslsmith_f_op_f32(-global3.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b - -231f))), arg_0.b)), vec2<i32>(0i, -(~arg_0.c.x)));
    return _wgslsmith_sub_i32(select(arg_1.c.x, _wgslsmith_add_i32(arg_1.c.x, _wgslsmith_clamp_i32(41513i, i32(-1i) * -1i, arg_1.c.x)), arg_1.a), 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.b))), global3.b)) > 1f;
    let var_1 = -(func_6(global1[_wgslsmith_index_u32(u_input.b, 22u)], func_5(func_1(vec2<bool>(global3.a, global3.a), Struct_1(true, 318f, global3.c), vec4<bool>(global3.a, global3.a, false, true), global1[_wgslsmith_index_u32(38908u, 22u)]), func_2(u_input.c)), countOneBits(u_input.b) | ~u_input.d.x, ~_wgslsmith_mod_u32(37787u, 34039u)) ^ min(global3.c.x, -1i));
    global2 = var_1;
    global1 = array<Struct_1, 22>();
    var var_2 = 1558f;
    var var_3 = reverseBits(~_wgslsmith_mult_u32(4294967295u, countOneBits(u_input.a << (1u % 32u))));
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -399f), -322f, 219f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-247f, 2372f, global3.b)))))), -1i | global3.c.x, vec3<i32>(i32(-1i) * -func_1(vec2<bool>(global3.a, true), Struct_1(global3.a, global3.b, vec2<i32>(0i, global3.c.x)), vec4<bool>(global3.a, global3.a, global3.a, global3.a), global1[_wgslsmith_index_u32(u_input.b, 22u)]).c.x, func_4(global1[_wgslsmith_index_u32(u_input.a, 22u)], ~(~73322u), var_1, Struct_1(global3.a, 128f, abs(vec2<i32>(u_input.c.x, 37543i)))), select(0i, ~_wgslsmith_sub_i32(50231i, var_1), !global3.a)));
}

