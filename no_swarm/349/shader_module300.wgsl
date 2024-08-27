struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: Struct_2,
    e: vec3<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<u32, 19>;

var<private> global2: array<vec2<i32>, 32> = array<vec2<i32>, 32>(vec2<i32>(-17910i, -13822i), vec2<i32>(-5713i, -924i), vec2<i32>(43494i, 2147483647i), vec2<i32>(3773i, i32(-2147483648)), vec2<i32>(1i, -1i), vec2<i32>(28264i, -1i), vec2<i32>(19996i, -58378i), vec2<i32>(46751i, -8940i), vec2<i32>(7984i, i32(-2147483648)), vec2<i32>(1i, 0i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(0i, 1i), vec2<i32>(0i, 1i), vec2<i32>(2147483647i, 55502i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-27937i, 1i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(1i, 2147483647i), vec2<i32>(-9760i, 49201i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(54289i, 0i), vec2<i32>(-28302i, -1i), vec2<i32>(i32(-2147483648), 35757i), vec2<i32>(-37565i, i32(-2147483648)), vec2<i32>(1i, -11622i), vec2<i32>(-68180i, i32(-2147483648)), vec2<i32>(86388i, i32(-2147483648)), vec2<i32>(1i, 7709i), vec2<i32>(-63280i, -63015i), vec2<i32>(2147483647i, 1i), vec2<i32>(68538i, -23669i));

var<private> global3: array<vec2<f32>, 28>;

var<private> global4: array<Struct_1, 18>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: Struct_4) -> i32 {
    global3 = array<vec2<f32>, 28>();
    global4 = array<Struct_1, 18>();
    let var_0 = arg_0.c;
    var var_1 = !(!arg_0.a.xzz);
    let var_2 = _wgslsmith_clamp_i32(_wgslsmith_add_i32(18574i, ~0i), var_0, 2147483647i);
    return -39260i;
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_3(~23070u, -2264f, vec4<u32>(13209u, countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(37559u, 0u, 0u), ~vec3<u32>(u_input.d, global0.x, u_input.d))), ~(~(u_input.d ^ 1u)), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 19u)], 19u)]), Struct_2(global4[_wgslsmith_index_u32(global0.x, 18u)], _wgslsmith_add_i32(8993i, u_input.b.x), any(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), -min(vec4<i32>(-1i, -23802i, -59225i, u_input.c), u_input.b >> (vec4<u32>(u_input.d, u_input.d, 1u, 0u) % vec4<u32>(32u)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-324f, _wgslsmith_f_op_f32(1026f + -1480f), 1985f) * vec3<f32>(_wgslsmith_f_op_f32(2087f + 831f), 1000f, 430f)))));
    global1 = array<u32, 19>();
    var var_1 = vec3<i32>(countOneBits(_wgslsmith_mod_i32(var_0.d.d.x, -u_input.e.x) >> (_wgslsmith_add_u32(u_input.d, var_0.c.x) % 32u)), _wgslsmith_sub_i32(countOneBits(reverseBits(_wgslsmith_mod_i32(2147483647i, var_0.d.b))), var_0.d.b), 0i);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(var_0.e.x - var_0.d.a.a), -1000f, -444f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b, var_0.e.x, var_0.e.x, -390f), vec4<f32>(var_0.e.x, var_0.d.a.a, var_0.b, 305f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -962f), _wgslsmith_f_op_f32(-var_0.d.a.a), _wgslsmith_f_op_f32(round(var_0.b)), _wgslsmith_f_op_f32(1726f * 615f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(893f, var_0.d.a.a, var_0.b, -237f))))));
    var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.d.a.a, 614f, 107f, -1129f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_0.b, -495f, var_2.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-689f, 614f, var_0.b, -1206f)))))));
    return ~global0.ywx;
}

fn func_2(arg_0: Struct_4, arg_1: Struct_2, arg_2: u32, arg_3: Struct_4) -> u32 {
    var var_0 = arg_0.a.x;
    var var_1 = ~_wgslsmith_div_vec3_u32(u_input.a, firstLeadingBit(~func_3()));
    global2 = array<vec2<i32>, 32>();
    var var_2 = vec3<i32>(abs(2147483647i), -22054i, -u_input.c);
    global4 = array<Struct_1, 18>();
    return ~global0.x;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: bool, arg_3: vec2<i32>) -> vec3<bool> {
    var var_0 = 1u;
    global4 = array<Struct_1, 18>();
    let var_1 = Struct_4(vec4<bool>(false, any(arg_0) || (true | arg_0.x), true, !any(select(vec4<bool>(arg_0.x, true, true, arg_2), vec4<bool>(arg_0.x, false, false, arg_0.x), vec4<bool>(arg_0.x, arg_2, arg_0.x, false)))), !(!(!arg_2)), select(u_input.c >> (50276u % 32u), min(abs(-1i << (0u % 32u)), -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 1i), u_input.b.xw)), true | (true || !arg_2)));
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(9652u, 4294967295u, ~_wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1[_wgslsmith_index_u32(global0.x, 19u)], 73131u, u_input.d), vec4<u32>(global0.x, 42720u, 4294967295u, 1u)), _wgslsmith_add_u32(global0.x, 1u)), ~select(10198u, u_input.a.x, var_1.b))), 19u)];
    global0 = ~abs(vec4<u32>(1u, global1[_wgslsmith_index_u32(1u, 19u)], min(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(12980u, 19u)], 0u), _wgslsmith_dot_vec3_u32(global0.wzx, vec3<u32>(0u, 4294967295u, 15369u))), ~abs(20603u)));
    return !vec3<bool>(arg_0.x, arg_3.x == -_wgslsmith_dot_vec3_i32(u_input.b.wxy, vec3<i32>(u_input.e.x, -33090i, -1665i)), all(select(select(vec3<bool>(var_1.b, arg_2, arg_2), var_1.a.xww, arg_0), !arg_0, var_1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec3<bool>(21895i != -func_1(Struct_4(vec4<bool>(false, true, false, true), false, u_input.b.x)), true, true), firstTrailingBit(~vec4<u32>(global1[_wgslsmith_index_u32(global0.x, 19u)] ^ global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 19u)] >> (global0.x % 32u), 19u)], func_2(Struct_4(vec4<bool>(true, false, false, false), true, u_input.c), Struct_2(Struct_1(-1161f, global0.zzy, vec4<u32>(0u, global0.x, 4294967295u, u_input.a.x)), 24474i, true, u_input.b), 0u, Struct_4(vec4<bool>(true, true, true, true), true, 1i)), ~49247u)), false, vec2<i32>(func_1(Struct_4(vec4<bool>(true, true, true, true), all(vec3<bool>(true, false, false)), -u_input.b.x)), _wgslsmith_sub_i32(u_input.b.x, 3358i) | _wgslsmith_sub_i32(u_input.b.x, -32963i)));
    var var_1 = firstLeadingBit(4294967295u);
    let var_2 = func_4(vec3<bool>(var_0.x & var_0.x, (false | !var_0.x) | var_0.x, any(!select(vec3<bool>(true, var_0.x, false), vec3<bool>(false, false, var_0.x), true))), ~reverseBits(~vec4<u32>(0u, 1u, 4294967295u, 136497u)), true, ~(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~1u, 19u)], 32u)] & ~vec2<i32>(-2147483647i, -54989i)));
    let var_3 = _wgslsmith_clamp_vec4_u32(~select(vec4<u32>(global0.x ^ global0.x, u_input.a.x, u_input.a.x >> (29368u % 32u), ~3050u), reverseBits(vec4<u32>(5876u, u_input.d, global1[_wgslsmith_index_u32(u_input.a.x, 19u)], global0.x) | vec4<u32>(3388u, u_input.d, u_input.a.x, u_input.a.x)), false), vec4<u32>(~global1[_wgslsmith_index_u32(1u, 19u)], ~(~firstLeadingBit(global1[_wgslsmith_index_u32(global0.x, 19u)])), global0.x ^ 29746u, u_input.d), min(~_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 37415u, global0.x, 4294967295u), vec4<u32>(u_input.d, global1[_wgslsmith_index_u32(11682u, 19u)], 47042u, 1u)), vec4<u32>(global0.x, global1[_wgslsmith_index_u32(global0.x, 19u)], 3378u, 14576u)), vec4<u32>(1u & global1[_wgslsmith_index_u32(u_input.a.x, 19u)], firstLeadingBit(global1[_wgslsmith_index_u32(40441u, 19u)]), global0.x, 0u)));
    var_0 = select(select(vec3<bool>(all(var_2.yz), any(var_2.yy), true), !select(!vec3<bool>(var_0.x, var_2.x, var_2.x), func_4(var_2, var_3, false, global2[_wgslsmith_index_u32(u_input.a.x, 32u)]), select(vec3<bool>(var_0.x, var_0.x, var_0.x), var_2, vec3<bool>(var_0.x, false, var_2.x))), !(!var_2)), vec3<bool>(false, true, true), false);
    global1 = array<u32, 19>();
    var_1 = abs(global0.x);
    var var_4 = any(var_2.xy) && var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xx, (i32(-1i) * -3437i) ^ u_input.b.x);
}

