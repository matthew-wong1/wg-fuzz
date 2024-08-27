struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<bool>,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21>;

var<private> global1: array<bool, 29>;

var<private> global2: array<Struct_2, 12>;

var<private> global3: Struct_2;

var<private> global4: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(false, Struct_1(1512f)), Struct_2(true, Struct_1(971f)), Struct_2(true, Struct_1(1390f)), Struct_2(true, Struct_1(-1680f)), Struct_2(true, Struct_1(845f)), Struct_2(false, Struct_1(1552f)), Struct_2(false, Struct_1(-410f)), Struct_2(false, Struct_1(-546f)), Struct_2(true, Struct_1(676f)), Struct_2(true, Struct_1(-274f)), Struct_2(true, Struct_1(309f)), Struct_2(false, Struct_1(458f)), Struct_2(true, Struct_1(-453f)), Struct_2(false, Struct_1(-505f)), Struct_2(false, Struct_1(144f)), Struct_2(true, Struct_1(165f)), Struct_2(true, Struct_1(-1146f)), Struct_2(true, Struct_1(-1848f)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<f32> {
    global0 = array<Struct_2, 21>();
    global4 = array<Struct_2, 18>();
    global4 = array<Struct_2, 18>();
    var var_0 = Struct_3(reverseBits(vec4<i32>(max(u_input.b.x, _wgslsmith_mult_i32(0i, u_input.b.x)), ~(i32(-1i) * -2147483647i), u_input.b.x, i32(-1i) * -11057i)), select(vec4<i32>(firstTrailingBit(1i), abs(u_input.d.x << (u_input.c.x % 32u)), u_input.d.x, countOneBits(-31669i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x | -44584i, -43661i, u_input.b.x, u_input.d.x), select(vec4<i32>(u_input.d.x, 1i, -2147483647i, u_input.b.x), vec4<i32>(-5880i, -1i, -2147483647i, -2147483647i), true) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 64498u, u_input.c.x), vec4<u32>(4294967295u, 0u, 4294967295u, 1u)) % vec4<u32>(32u))), false), select(select(!(!vec4<bool>(true, global3.a, global3.a, global1[_wgslsmith_index_u32(35966u, 29u)])), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 29u)], false, true, true), select(vec4<bool>(global3.a, true, false, false), vec4<bool>(false, global3.a, global1[_wgslsmith_index_u32(u_input.a.x, 29u)], global1[_wgslsmith_index_u32(4504u, 29u)]), global1[_wgslsmith_index_u32(0u, 29u)]), global1[_wgslsmith_index_u32(~16378u, 29u)]), !select(false, false, global3.a)), vec4<bool>((1i >> (u_input.a.x % 32u)) < ~u_input.d.x, false, all(vec4<bool>(true, true, true, true)), !any(vec4<bool>(global3.a, global1[_wgslsmith_index_u32(u_input.a.x, 29u)], global3.a, true))), false), _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x), u_input.d.x);
    var var_1 = -_wgslsmith_add_vec3_i32(-var_0.a.ywy, vec3<i32>(-1i) * -abs(vec3<i32>(-49002i, -46035i, u_input.b.x)));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-437f, 257f)), global3.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global3.b.a, global3.b.a, global1[_wgslsmith_index_u32(7495u, 29u)])) - _wgslsmith_f_op_f32(f32(-1f) * -1235f))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-198f, -1227f, -551f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b.a, 426f, global3.b.a) + vec3<f32>(global3.b.a, 325f, 2368f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-700f, global3.b.a, 784f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1073f, global3.b.a, global3.b.a)))))));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> vec4<bool> {
    let var_0 = vec3<i32>(u_input.b.x, -51604i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.d.x, u_input.d.x), ~u_input.d.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(-671f, arg_0.a), _wgslsmith_f_op_f32(-global3.b.a), _wgslsmith_f_op_f32(f32(-1f) * -1005f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global3.b.a, -442f, 1598f)))), !(!vec3<bool>(arg_1, arg_1, global3.a)))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_3())))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.a, arg_0.a, 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, arg_0.a, 1851f))))), vec3<f32>(global3.b.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1145f))), -2339f), !(!select(vec3<bool>(false, arg_1, global1[_wgslsmith_index_u32(1u, 29u)]), vec3<bool>(true, global3.a, global1[_wgslsmith_index_u32(80778u, 29u)]), vec3<bool>(arg_1, global1[_wgslsmith_index_u32(0u, 29u)], false))))));
    global3 = Struct_2(true, Struct_1(global3.b.a));
    global1 = array<bool, 29>();
    global4 = array<Struct_2, 18>();
    return !select(select(!select(vec4<bool>(false, false, global3.a, global3.a), vec4<bool>(false, true, false, false), vec4<bool>(false, false, global1[_wgslsmith_index_u32(4294967295u, 29u)], false)), select(!vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 29u)], true, false), select(vec4<bool>(arg_1, global3.a, false, arg_1), vec4<bool>(global3.a, false, global3.a, global1[_wgslsmith_index_u32(1u, 29u)]), global3.a), global3.a | true), false), !select(vec4<bool>(global3.a, global3.a, arg_1, global3.a), select(vec4<bool>(arg_1, global3.a, false, true), vec4<bool>(global3.a, false, global1[_wgslsmith_index_u32(u_input.c.x, 29u)], arg_1), vec4<bool>(false, global3.a, global3.a, global3.a)), global1[_wgslsmith_index_u32(u_input.c.x, 29u)]), true);
}

fn func_1() -> Struct_2 {
    let var_0 = vec3<u32>(~u_input.c.x, _wgslsmith_clamp_u32(27719u, ~_wgslsmith_add_u32(27000u, ~4294967295u), min(~reverseBits(81379u), u_input.c.x)), 4294967295u);
    var var_1 = Struct_3(abs(-vec4<i32>(u_input.b.x, 1i, 6613i, u_input.d.x)), min(abs(vec4<i32>(u_input.d.x, -36176i, u_input.d.x, u_input.d.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, 2147483647i, u_input.b.x, u_input.d.x) | vec4<i32>(u_input.b.x, -1i, -2147483647i, u_input.d.x), -vec4<i32>(u_input.d.x, 1i, u_input.d.x, u_input.d.x))) ^ vec4<i32>(29083i, -u_input.d.x, 2147483647i, u_input.b.x), select(func_2(global3.b, true), select(vec4<bool>(global3.b.a > global3.b.a, true, global3.a, any(vec2<bool>(true, false))), vec4<bool>(all(vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 29u)], global3.a)), false, true, false), func_2(Struct_1(global3.b.a), true)), vec4<bool>(any(vec4<bool>(true, true, true, false)), global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(var_0.x >> (reverseBits(u_input.c.x) % 32u), 29u)], false)), max(~var_0.x, max(13884u, ~(~var_0.x))), u_input.d.x);
    let var_2 = global3.b;
    var var_3 = global3.b;
    let var_4 = ~(~countOneBits(53u));
    return Struct_2(any(var_1.c.zzw), global3.b);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<u32>) -> bool {
    var var_0 = func_1().b;
    var_0 = arg_0.b;
    var var_1 = select(func_2(Struct_1(global3.b.a), !(global1[_wgslsmith_index_u32(~arg_2.x, 29u)] || true)).ywy, vec3<bool>(global3.a, all(arg_1.c.yy), (false || global3.a) || (arg_1.d <= 25738u)), !(!arg_1.c.yxx));
    var var_2 = func_1();
    let var_3 = func_1().b;
    return arg_1.c.x | global1[_wgslsmith_index_u32(arg_2.x, 29u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_div_u32(1u, u_input.c.x);
    let var_1 = var_0 > ~(~(~(~41638u)));
    let var_2 = vec4<bool>(func_4(func_1(), Struct_3(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, 1i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.d.x, -4747i, u_input.b.x, u_input.d.x))), vec4<i32>(u_input.d.x, 1i, -34130i, u_input.d.x) | min(vec4<i32>(-1i, u_input.b.x, u_input.d.x, -19034i), vec4<i32>(u_input.d.x, u_input.b.x, 15334i, u_input.d.x)), vec4<bool>(global3.a, !var_1, -538f > global3.b.a, true), _wgslsmith_mod_u32(var_0, ~37036u), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 40608i, 1i, u_input.d.x) & vec4<i32>(-1i, u_input.b.x, u_input.b.x, 23554i), max(vec4<i32>(25032i, 5239i, u_input.d.x, u_input.d.x), vec4<i32>(28884i, -45587i, u_input.b.x, -30768i)))), select(max(select(vec3<u32>(var_0, u_input.a.x, 17336u), vec3<u32>(24534u, u_input.a.x, var_0), vec3<bool>(false, global1[_wgslsmith_index_u32(30667u, 29u)], false)), vec3<u32>(0u, 1u, 27262u)), abs(vec3<u32>(u_input.a.x, u_input.c.x, u_input.a.x)), select(global3.a, true, true))), false && !global3.a, !(true && global1[_wgslsmith_index_u32(var_0, 29u)]), any(vec4<bool>(true, !func_2(global3.b, global1[_wgslsmith_index_u32(0u, 29u)]).x, func_1().a, true)));
    var var_3 = firstLeadingBit(~4992u >> (0u % 32u));
    global1 = array<bool, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-163f, global3.b.a))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b.a, -770f)))))), ~(-vec4<i32>(1i, firstTrailingBit(2147483647i), ~u_input.b.x, firstLeadingBit(6847i))), -_wgslsmith_mult_vec3_i32(~(-vec3<i32>(20045i, -2147483647i, 0i)), -_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x), vec3<i32>(u_input.d.x, u_input.d.x, u_input.b.x))));
}

