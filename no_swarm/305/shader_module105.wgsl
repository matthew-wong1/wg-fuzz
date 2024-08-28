struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: vec2<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec2<f32>(-1205f, 156f), vec4<i32>(-5724i, 2147483647i, 1i, 1i), Struct_1(1i, vec3<i32>(-29927i, -15791i, 0i), 34121u, false, true), Struct_1(-1i, vec3<i32>(-34574i, 1i, 13666i), 1u, false, false)), Struct_2(vec2<f32>(-915f, -1460f), vec4<i32>(5598i, i32(-2147483648), 19961i, 19613i), Struct_1(1i, vec3<i32>(i32(-2147483648), -1i, -44759i), 0u, true, true), Struct_1(-19824i, vec3<i32>(47634i, 2147483647i, 2147483647i), 1u, true, true)), Struct_2(vec2<f32>(-945f, -1128f), vec4<i32>(28777i, 0i, -1i, 1616i), Struct_1(-1i, vec3<i32>(24128i, 49657i, i32(-2147483648)), 0u, true, false), Struct_1(-24378i, vec3<i32>(1i, 2147483647i, -41078i), 0u, false, false)), Struct_2(vec2<f32>(-1144f, -1980f), vec4<i32>(-24253i, 0i, 3402i, 42008i), Struct_1(-1i, vec3<i32>(15507i, 0i, i32(-2147483648)), 0u, false, false), Struct_1(13420i, vec3<i32>(-38520i, 46478i, -4904i), 4294967295u, true, true)));

var<private> global2: Struct_4 = Struct_4(vec4<u32>(71189u, 16697u, 49396u, 76020u), 0u);

var<private> global3: Struct_2;

var<private> global4: vec3<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(arg_1.c, 4u)];
    let var_1 = all(vec2<bool>(false, global3.b.x >= ~global3.c.b.x));
    let var_2 = !select(vec3<bool>(true, true, true), !select(vec3<bool>(arg_1.d, var_1, false), vec3<bool>(var_0.d.d, false, var_0.d.e), !vec3<bool>(global3.c.d, true, true)), !(!vec3<bool>(global3.c.d, true, true)));
    global1 = array<Struct_2, 4>();
    let var_3 = arg_1;
    return var_3.b.x;
}

fn func_2(arg_0: bool, arg_1: vec3<bool>, arg_2: vec2<i32>) -> bool {
    global4 = vec3<f32>(global3.a.x, 283f, _wgslsmith_f_op_f32(-global3.a.x));
    let var_0 = global1[_wgslsmith_index_u32(reverseBits(global3.d.c), 4u)];
    var var_1 = vec2<f32>(global3.a.x, -1089f);
    let var_2 = global4.xy;
    let var_3 = Struct_1(0i, vec3<i32>(-22590i, global0.x, global3.d.b.x | _wgslsmith_div_i32(arg_2.x, func_3(vec3<f32>(var_1.x, 391f, global4.x), Struct_1(global3.c.b.x, vec3<i32>(0i, global0.x, 29876i), global3.d.c, true, true)))), _wgslsmith_add_u32(~_wgslsmith_div_u32(global2.b, 37493u), var_0.d.c), any(arg_1.zx), true);
    return all(!arg_1);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: vec2<i32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = global0.x;
    var var_1 = arg_0;
    return global3.c;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_2 {
    let var_0 = func_4(select(select(select(select(vec4<bool>(arg_0.e, true, arg_0.e, false), vec4<bool>(true, false, arg_0.e, false), false), !vec4<bool>(false, false, true, global3.c.d), global3.d.d), vec4<bool>(global3.d.e, any(vec4<bool>(arg_0.e, true, true, arg_0.d)), true, true), func_2(true, vec3<bool>(true, true, true), _wgslsmith_mod_vec2_i32(vec2<i32>(-34229i, global3.b.x), vec2<i32>(global0.x, global3.b.x)))), vec4<bool>(global3.d.d, true, !(global0.x < global3.d.a), !all(vec4<bool>(arg_0.e, false, false, arg_0.e))), any(select(select(vec2<bool>(global3.d.d, true), vec2<bool>(arg_0.e, false), global3.c.e), vec2<bool>(false, true), !vec2<bool>(global3.c.e, true)))), vec3<u32>(0u, ~arg_0.c, ~1u), -_wgslsmith_mod_vec2_i32(~min(vec2<i32>(0i, global3.c.b.x), global3.b.xw), ~(arg_0.b.xz & vec2<i32>(global3.c.b.x, global3.d.b.x))), global1[_wgslsmith_index_u32(22520u << (abs(arg_1.x) % 32u), 4u)]);
    let var_1 = reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(countOneBits(var_0.c), 0u, 4497u, global3.c.c), select(vec4<u32>(_wgslsmith_div_u32(76955u, 79274u), ~47966u, global2.a.x, 1u), _wgslsmith_add_vec4_u32(~arg_1, global2.a), global3.c.e)));
    global4 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, -883f, 858f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-142f, global4.x, -1232f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-580f, 473f, global3.a.x), vec3<f32>(global4.x, global3.a.x, global4.x)))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3.a.x, 277f, -893f, 188f)));
    var var_3 = arg_0.e;
    return global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(27469u, select(firstLeadingBit(arg_1.x), ~global3.d.c, var_0.d)), 4u)];
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: Struct_4, arg_3: vec2<f32>) -> f32 {
    let var_0 = arg_0.d;
    let var_1 = true;
    global3 = Struct_2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1267f, arg_3.x))), ~(func_1(func_4(vec4<bool>(false, arg_0.d.c.d, true, true), global2.a.wzz, arg_0.d.c.b.zx, global1[_wgslsmith_index_u32(arg_0.d.c.c, 4u)]), vec4<u32>(37480u, 1u, arg_0.d.c.c, 10431u)).b | (func_1(Struct_1(var_0.b.x, vec3<i32>(global0.x, 83299i, global3.d.a), 1u, var_1, arg_0.b.x), vec4<u32>(7629u, 88595u, var_0.d.c, u_input.a)).b >> (abs(arg_2.a) % vec4<u32>(32u)))), Struct_1(-1i, var_0.c.b, 1u, true & var_1, var_1), Struct_1(-(_wgslsmith_clamp_i32(30108i, arg_0.d.b.x, -1i) | var_0.d.a), global3.b.zxw, u_input.a, func_2(!global3.c.d & all(arg_0.b), select(select(arg_0.b, vec3<bool>(arg_0.c.x, var_0.c.e, false), true), select(arg_0.b, arg_0.b, arg_0.b), global3.d.e), ~_wgslsmith_mod_vec2_i32(var_0.c.b.yz, arg_0.d.d.b.yx)), !(0u >= arg_0.d.c.c)));
    global3 = func_1(global3.d, ~vec4<u32>(~(u_input.b >> (u_input.a % 32u)), _wgslsmith_mult_u32(1u, ~arg_0.d.d.c), 1u, firstLeadingBit(0u)));
    var var_2 = Struct_2(arg_3, vec4<i32>(-(arg_0.d.d.a & global0.x), ~1i, -(~2147483647i) | _wgslsmith_dot_vec3_i32(arg_0.d.d.b, countOneBits(var_0.d.b)), -9070i), arg_0.d.c, func_1(func_4(select(vec4<bool>(true, false, true, var_1), select(vec4<bool>(false, arg_0.d.d.e, false, var_1), vec4<bool>(false, false, var_1, var_0.c.e), vec4<bool>(arg_0.d.c.e, true, var_1, true)), var_0.c.e | var_0.d.d), max(firstLeadingBit(global2.a.zxw), arg_2.a.zzx | arg_2.a.www), abs(-vec2<i32>(-47366i, global3.d.a)), global1[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(5010u, 63622u)), 4u)]), global2.a).d);
    return _wgslsmith_f_op_f32(f32(-1f) * -368f);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = vec3<f32>(-187f, global4.x, _wgslsmith_f_op_f32(-1901f + -271f));
    global2 = Struct_4(~(~_wgslsmith_add_vec4_u32(vec4<u32>(55208u, global2.b, u_input.b, 0u), vec4<u32>(23855u, global2.a.x, u_input.b, 4294967295u)) | vec4<u32>(4294967295u, reverseBits(0u), 96294u, global3.d.c)), 0u);
    let var_0 = select(u_input.b, global3.d.c, global3.d.d);
    global4 = vec3<f32>(-625f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(Struct_3(global4.x, select(vec3<bool>(true, false, global3.c.d), vec3<bool>(true, false, true), vec3<bool>(true, global3.d.e, true)), vec2<bool>(global3.c.e, false), func_1(global3.c, vec4<u32>(u_input.a, 10781u, 17797u, 1u))), _wgslsmith_mult_i32(countOneBits(0i), -1i), Struct_4(~global2.a, 3218u & u_input.b), _wgslsmith_div_vec2_f32(vec2<f32>(256f, global4.x), _wgslsmith_f_op_vec2_f32(-global4.zx)))) - 101f), -1135f);
    let var_1 = ~vec4<u32>(~(~countOneBits(4294967295u)), _wgslsmith_div_u32(~(~global2.b), 1u), select(4294967295u, global3.d.c ^ global2.a.x, !global3.d.d && global3.d.d), 66893u);
    global0 = vec2<i32>(69349i, func_4(vec4<bool>(true, var_1.x == var_1.x, true, global3.c.e), _wgslsmith_div_vec3_u32(var_1.yzy, ~(vec3<u32>(global2.b, 13897u, 48754u) | global2.a.zyw)), ~global3.c.b.yz, func_1(func_4(vec4<bool>(true, global3.d.e, global3.d.e, global3.c.e), abs(global2.a.wwz), vec2<i32>(-2147483647i, -1i), func_1(Struct_1(-17127i, vec3<i32>(global0.x, -39888i, 1i), 78581u, false, false), vec4<u32>(33067u, u_input.a, var_1.x, 1u))), abs(reverseBits(var_1)))).a);
    let var_2 = Struct_1(firstTrailingBit(17812i), abs(-(max(global3.c.b, global3.d.b) & vec3<i32>(global0.x, global0.x, global0.x))), global3.c.c, all(!vec3<bool>(global3.d.e, true, global3.d.d)) || global3.d.d, -(~(~global0.x)) < firstLeadingBit(~func_1(Struct_1(global3.b.x, vec3<i32>(0i, global3.b.x, global0.x), 1u, false, false), vec4<u32>(1u, global3.c.c, u_input.a, 51369u)).b.x));
    var var_3 = Struct_4(vec4<u32>(global3.c.c, 1u, ~max(func_4(vec4<bool>(true, true, false, global3.c.d), vec3<u32>(global2.b, 0u, 58234u), global3.b.zy, global1[_wgslsmith_index_u32(0u, 4u)]).c, countOneBits(4294967295u)), min(0u, global2.b)), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(global3.c.b.zx, vec2<i32>(-(~global0.x), 26732i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.x, -713f, -371f, -921f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global4.x, global3.a.x, global3.a.x, 1112f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, -214f, global4.x, global3.a.x)))), _wgslsmith_clamp_vec4_i32(-global3.b, vec4<i32>(global3.c.a, func_1(var_2, vec4<u32>(1u, global2.b, u_input.b, 73277u)).d.a, global3.b.x, ~_wgslsmith_sub_i32(0i, global3.c.a)), vec4<i32>(firstTrailingBit(~var_2.a), global3.b.x, global3.b.x, _wgslsmith_clamp_i32(max(50539i, global0.x), var_2.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global0.x), var_2.b.xy)))));
}

