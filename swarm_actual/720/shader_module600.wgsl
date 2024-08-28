struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2> = array<i32, 2>(28706i, -1i);

var<private> global1: array<vec4<bool>, 18> = array<vec4<bool>, 18>(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false));

var<private> global2: array<u32, 3>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> vec2<bool> {
    let var_0 = _wgslsmith_mod_vec3_i32(-(vec3<i32>(0i, abs(0i), _wgslsmith_dot_vec2_i32(vec2<i32>(15404i, u_input.a.x), vec2<i32>(71222i, 37423i))) | (vec3<i32>(-1i) * -vec3<i32>(-21971i, global0[_wgslsmith_index_u32(arg_0.b.a.a, 2u)], global0[_wgslsmith_index_u32(1u, 2u)]))), ~((select(arg_0.b.a.b.xzz, arg_0.b.a.b.xzz, arg_0.b.c) ^ -vec3<i32>(2147483647i, 14755i, -4044i)) << (~(~vec3<u32>(0u, arg_1, 26157u)) % vec3<u32>(32u))));
    return !select(!select(!arg_0.b.b, arg_0.b.c.yy, all(vec2<bool>(arg_0.b.c.x, true))), vec2<bool>(false, !(!arg_0.c)), select(arg_0.b.a.d, arg_0.b.b, false));
}

fn func_2() -> Struct_2 {
    var var_0 = any(select(!select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, true), all(vec2<bool>(false, false))), vec2<bool>(true, true), select(vec2<bool>(false, true), select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, 19448u == global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(3487u, 3u)], 3u)]))));
    var var_1 = !(!select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true)), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), firstLeadingBit(6490i) > _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], 3u)], 2u)], global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(36409u, 2u)]), vec3<i32>(global0[_wgslsmith_index_u32(37780u, 2u)], global0[_wgslsmith_index_u32(54113u, 2u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(22936u, 3u)], 3u)], 2u)]))));
    global1 = array<vec4<bool>, 18>();
    let var_2 = vec3<i32>(42859i, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 3u)] >> ((~(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 3u)], 3u)] ^ global2[_wgslsmith_index_u32(64975u, 3u)]) >> (reverseBits(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(49949u, 3u)], 3u)], 3u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(23528u, 3u)], 3u)], 3u)])) % 32u)) % 32u), 2u)], -39790i);
    let var_3 = vec2<f32>(393f, _wgslsmith_f_op_f32(max(-736f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -647f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-296f + 1000f))))));
    return Struct_2(Struct_1(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, 0u) ^ global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(30769u, 1u), 3u)], 3u)], 3u)], 3u)], ~abs(vec4<i32>(0i, global0[_wgslsmith_index_u32(4294967295u, 2u)], 743i, 0i) ^ vec4<i32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 3u)], 2u)], -7058i, 42733i, 2417i)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_3.x * var_3.x))), var_3.x, var_3.x == _wgslsmith_f_op_f32(-var_3.x))), select(vec2<bool>(var_1.x, var_1.x), !func_3(Struct_3(var_3, Struct_2(Struct_1(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 3u)], 3u)], vec4<i32>(var_2.x, var_2.x, global0[_wgslsmith_index_u32(24191u, 2u)], u_input.a.x), var_3.x, vec2<bool>(var_1.x, var_1.x)), vec2<bool>(true, var_1.x), vec3<bool>(false, var_1.x, false)), true, false), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 3u)], 3u)], 3u)], 3u)]), false)), !select(!(!vec2<bool>(false, var_1.x)), vec2<bool>(var_1.x, -302f != var_3.x), func_3(Struct_3(vec2<f32>(var_3.x, -1317f), Struct_2(Struct_1(141807u, vec4<i32>(-18682i, var_2.x, -21386i, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(10744u, 3u)], 3u)], 3u)], 2u)]), var_3.x, vec2<bool>(true, var_1.x)), vec2<bool>(true, var_1.x), vec3<bool>(false, true, var_1.x)), false, var_1.x), global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(1u, 3u)], 3u)])), select(select(select(select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(false, true, true), vec3<bool>(var_1.x, true, var_1.x)), select(vec3<bool>(var_1.x, false, true), vec3<bool>(true, var_1.x, false), vec3<bool>(false, false, var_1.x)), var_1.x), select(!vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), !select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(true, true, var_1.x))), !vec3<bool>(any(vec3<bool>(true, true, true)), true || var_1.x, all(vec3<bool>(var_1.x, var_1.x, var_1.x))), select(vec3<bool>(all(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(8342u, 3u)], 18u)]), true, false | var_1.x), select(vec3<bool>(true, var_1.x, var_1.x), !vec3<bool>(var_1.x, false, var_1.x), !var_1.x), !var_1.x)));
}

fn func_1(arg_0: vec2<u32>) -> bool {
    var var_0 = func_2();
    var var_1 = reverseBits(var_0.a.b);
    var var_2 = vec4<i32>(-var_0.a.b.x, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -var_0.a.b, var_0.a.b), select(var_0.a.b, _wgslsmith_div_vec4_i32(abs(var_0.a.b), var_0.a.b), true)), firstLeadingBit(-14907i), ~min(func_2().a.b.x ^ (global0[_wgslsmith_index_u32(14940u, 2u)] | global0[_wgslsmith_index_u32(58704u, 2u)]), _wgslsmith_mult_i32(u_input.a.x >> (arg_0.x % 32u), select(var_0.a.b.x, var_1.x, var_0.b.x))));
    let var_3 = vec4<i32>(min(global0[_wgslsmith_index_u32(arg_0.x, 2u)], _wgslsmith_mod_i32(-(~(-20668i)), max(~var_1.x, -47553i))), _wgslsmith_clamp_i32(0i, _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(var_1.x, var_0.a.b.x)), u_input.a), _wgslsmith_dot_vec2_i32(var_2.xx, ~(-u_input.a))), 23879i, -var_0.a.b.x);
    let var_4 = _wgslsmith_sub_vec3_i32(-_wgslsmith_mult_vec3_i32(min(vec3<i32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 3u)], 2u)], 0i, global0[_wgslsmith_index_u32(11365u, 2u)]), vec3<i32>(-10224i, var_0.a.b.x, var_0.a.b.x)) ^ vec3<i32>(4100i, var_2.x, global0[_wgslsmith_index_u32(arg_0.x, 2u)]), min(reverseBits(vec3<i32>(60840i, var_1.x, var_1.x)), ~vec3<i32>(-11533i, u_input.a.x, 2147483647i))), min(var_1.wyz, vec3<i32>(abs(-u_input.a.x), reverseBits(0i), max(firstTrailingBit(var_0.a.b.x), _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(63727u, 2u)], var_3.x, var_0.a.b.x)))));
    return func_2().c.x;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: bool) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-381f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -706f)), arg_1.x, 643f);
    var var_1 = arg_0;
    let var_2 = arg_2;
    var var_3 = ~(vec2<u32>(abs(0u), arg_2.b.a.a) | ~vec2<u32>(max(global2[_wgslsmith_index_u32(var_2.b.a.a, 3u)], arg_2.b.a.a), var_2.b.a.a));
    var var_4 = -(~select(vec4<i32>(12589i, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.a.a, 17530u, var_2.b.a.a, arg_2.b.a.a), vec4<u32>(var_2.b.a.a, arg_2.b.a.a, var_2.b.a.a, arg_2.b.a.a)), 2u)], ~(-1i), min(-1i, arg_2.b.a.b.x)), vec4<i32>(-1i) * -vec4<i32>(29129i, u_input.a.x, -50671i, 21050i), func_2().b.x));
    return arg_2.b.a;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: u32) -> bool {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_2.a.c)), _wgslsmith_div_f32(-467f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(673f + arg_0.c)))), -510f, _wgslsmith_f_op_f32(-arg_2.a.c));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(468f + 1571f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.c * arg_0.c) * _wgslsmith_f_op_f32(floor(392f))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_2.a.c, _wgslsmith_f_op_f32(-arg_0.c))), -696f)));
    global1 = array<vec4<bool>, 18>();
    var var_2 = arg_2.a.d.x;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(select(func_2().a.c, func_4(!(!arg_2.c), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_0, vec3<f32>(var_0.x, arg_2.a.c, var_0.x))), var_0), Struct_3(var_0.zy, arg_2, true, true), !(arg_1.x | arg_1.x)).c, !(_wgslsmith_f_op_f32(-arg_0.c) < func_2().a.c))), _wgslsmith_f_op_f32(124f + -1661f));
    return arg_0.d.x | any(!vec4<bool>(arg_2.a.d.x, true, !arg_2.b.x, false));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 3>();
    let var_0 = u_input.a.x;
    var var_1 = func_5(func_4(!vec3<bool>(false, func_1(vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 3u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(56079u, 3u)], 3u)], 3u)])), true), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -631f), _wgslsmith_f_op_f32(sign(540f)), -254f))), Struct_3(vec2<f32>(_wgslsmith_div_f32(725f, -656f), func_2().a.c), func_2(), all(func_2().a.d), any(vec3<bool>(true, true, false))), select(true, true, true)), !func_4(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), func_1(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(59378u, 3u)], 3u)], 3u)], 3u)], 10787u))), vec3<f32>(_wgslsmith_f_op_f32(min(-1217f, 1662f)), _wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(-1060f + -235f)), Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(843f, 1678f)), Struct_2(Struct_1(11594u, vec4<i32>(1i, 1i, -1i, -1i), -171f, vec2<bool>(false, false)), vec2<bool>(true, false), vec3<bool>(false, true, true)), true, false), func_1(~vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 3u)], 3u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 3u)], 3u)]))).d, Struct_2(func_2().a, func_3(Struct_3(vec2<f32>(1f, 1f), Struct_2(Struct_1(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 3u)], 3u)], vec4<i32>(u_input.a.x, -35812i, 1i, var_0), -183f, vec2<bool>(true, true)), vec2<bool>(false, false), vec3<bool>(true, false, false)), false, true), _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(func_4(vec3<bool>(true, true, false), vec3<f32>(-1014f, -861f, -411f), Struct_3(vec2<f32>(-477f, -1590f), Struct_2(Struct_1(17605u, vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(73101u, 3u)], 3u)], 2u)], var_0, 1i), -276f, vec2<bool>(true, true)), vec2<bool>(true, false), vec3<bool>(true, true, false)), true, false), true).a, 3u)], ~global2[_wgslsmith_index_u32(516u, 3u)])), vec3<bool>(any(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true)), true)), abs(global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(8843u, global2[_wgslsmith_index_u32(4294967295u, 3u)]), 3u)]));
    let var_2 = -var_0;
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -138f), _wgslsmith_f_op_f32(abs(1115f))))), func_2(), true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -762f)))) >= _wgslsmith_f_op_f32(-1875f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(483f)) * -252f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1876f, 1463f, 441f, var_3.b.a.c) * vec4<f32>(var_3.a.x, var_3.b.a.c, var_3.b.a.c, 2269f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.a.c, -2101f, -240f, 172f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a.x, var_3.a.x, -1000f, -639f) + vec4<f32>(var_3.b.a.c, 226f, var_3.b.a.c, -388f)), vec4<f32>(574f, var_3.b.a.c, var_3.a.x, var_3.b.a.c)))), u_input.a.x, ~(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_3.b.a.a, 64939u, 1u, 3552u), vec4<u32>(1u, var_3.b.a.a, global2[_wgslsmith_index_u32(var_3.b.a.a, 3u)], global2[_wgslsmith_index_u32(0u, 3u)]), vec4<u32>(var_3.b.a.a, 1u, 0u, 65312u)))), ((0u | select(var_3.b.a.a, 0u, true)) << (global2[_wgslsmith_index_u32(_wgslsmith_add_u32(65210u, 1u), 3u)] % 32u)) >> (~58175u % 32u), global2[_wgslsmith_index_u32(~((_wgslsmith_mod_u32(41566u, var_3.b.a.a) << (_wgslsmith_mult_u32(var_3.b.a.a, 1u) % 32u)) ^ ~_wgslsmith_mult_u32(0u, var_3.b.a.a)), 3u)]);
}

