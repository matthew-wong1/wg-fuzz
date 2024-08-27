struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: i32,
}

struct Struct_4 {
    a: bool,
    b: vec4<f32>,
    c: bool,
    d: Struct_3,
}

struct Struct_5 {
    a: vec3<f32>,
    b: bool,
    c: Struct_4,
    d: i32,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 28> = array<vec2<bool>, 28>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global1: vec4<u32>;

var<private> global2: array<i32, 2>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> i32 {
    global2 = array<i32, 2>();
    let var_0 = _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(global1.x, 2u)], u_input.a.x << (~1u % 32u));
    let var_1 = Struct_4(!all(select(select(global0[_wgslsmith_index_u32(86827u, 28u)], global0[_wgslsmith_index_u32(global1.x, 28u)], global0[_wgslsmith_index_u32(55318u, 28u)]), vec2<bool>(true, true), global0[_wgslsmith_index_u32(global1.x, 28u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1003f, 446f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-628f, -1887f)), _wgslsmith_f_op_f32(f32(-1f) * -512f))), !((global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), 2u)] ^ _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(36222i, 2147483647i))) == (i32(-1i) * -4747i)), Struct_3(vec3<bool>(!any(vec3<bool>(true, false, true)), true | any(vec2<bool>(false, false)), any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), true))), Struct_1(u_input.a.x), Struct_1(var_0), 4294967295u, firstTrailingBit(2147483647i)));
    var var_2 = Struct_1(-2147483647i);
    let var_3 = Struct_2(var_1.d.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.b), var_1.b), u_input.b.x);
    return -firstTrailingBit(countOneBits(i32(-1i) * -1i));
}

fn func_2() -> Struct_5 {
    let var_0 = ~(~global1.x);
    global2 = array<i32, 2>();
    var var_1 = select(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(-1i, 0i, global2[_wgslsmith_index_u32(34033u, 2u)], 55875i)), -vec4<i32>(global2[_wgslsmith_index_u32(7524u, 2u)], -9157i, 23861i, -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, global2[_wgslsmith_index_u32(u_input.b.x, 2u)], global2[_wgslsmith_index_u32(0u, 2u)], 2147483647i), vec4<i32>(-46283i, u_input.a.x, global2[_wgslsmith_index_u32(var_0, 2u)], 25106i))), max(vec4<i32>(global2[_wgslsmith_index_u32(global1.x, 2u)], u_input.c, u_input.c, global2[_wgslsmith_index_u32(var_0, 2u)]), vec4<i32>(13967i, u_input.a.x, u_input.a.x, global2[_wgslsmith_index_u32(0u, 2u)])) & vec4<i32>(global2[_wgslsmith_index_u32(var_0, 2u)], 58632i, 11527i, -17270i)) << ((var_0 | _wgslsmith_sub_u32(~global1.x, ~2957u)) % 32u), (func_3() << (reverseBits(global1.x) % 32u)) << (~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 63685u, global1.x), ~vec3<u32>(4294967295u, global1.x, 1u)) % 32u), false);
    var var_2 = Struct_5(vec3<f32>(794f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1300f - 239f), _wgslsmith_div_f32(-1019f, _wgslsmith_f_op_f32(min(-561f, -635f)))), 2590f), false, Struct_4(true, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -795f) + 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-527f + -193f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-786f - 1007f) - -1202f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1474f))), true, Struct_3(vec3<bool>(true, false, true), Struct_1(~u_input.a.x), Struct_1(u_input.c), var_0, ~u_input.c << (min(4294967295u, 0u) % 32u))), i32(-1i) * -(~firstTrailingBit(1i)), Struct_4(true, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1581f, -520f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1571f), _wgslsmith_f_op_f32(floor(848f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(312f - 1974f) - _wgslsmith_f_op_f32(select(-760f, -340f, true))), _wgslsmith_f_op_f32(f32(-1f) * -939f)), true, Struct_3(vec3<bool>(true, true, true), Struct_1(global2[_wgslsmith_index_u32(max(var_0, var_0), 2u)]), Struct_1(-global2[_wgslsmith_index_u32(global1.x, 2u)]), u_input.b.x, -1i)));
    var var_3 = Struct_5(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(abs(var_2.e.b.x)), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-var_2.c.b.x)), _wgslsmith_f_op_f32(exp2(var_2.c.b.x))))), var_2.c.a, Struct_4(var_2.c.c, var_2.c.b, any(!vec2<bool>(var_2.b, var_2.c.a)) && !(var_2.b || false), var_2.e.d), max(var_2.d, 16650i), Struct_4(var_2.e.c, vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_2.a.x, -2447f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.e.b.x, var_2.e.b.x) * 1281f), _wgslsmith_f_op_f32(step(841f, _wgslsmith_f_op_f32(var_2.a.x * -264f))), var_2.a.x), var_2.b, Struct_3(var_2.c.d.a, var_2.e.d.b, Struct_1(0i | global2[_wgslsmith_index_u32(0u, 2u)]), global1.x, u_input.c)));
    return Struct_5(var_2.c.b.zzy, var_2.c.d.a.x, Struct_4(any(!vec3<bool>(true, var_2.c.d.a.x, var_3.e.c)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c.b.x)), var_2.a.x, _wgslsmith_f_op_f32(round(var_2.e.b.x)), var_3.c.b.x), (var_3.b && var_2.b) || var_3.c.d.a.x, var_3.e.d), abs(_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(32128u, 2u)], ~global2[_wgslsmith_index_u32(var_0, 2u)] << (var_2.c.d.d % 32u))), Struct_4(!var_2.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(var_2.e.b)))), true & any(!global0[_wgslsmith_index_u32(u_input.b.x, 28u)]), Struct_3(var_3.c.d.a, Struct_1(~0i), Struct_1(abs(-1i)), ~1u, -_wgslsmith_mult_i32(-39460i, -1i))));
}

fn func_4(arg_0: Struct_5, arg_1: bool, arg_2: Struct_5, arg_3: u32) -> Struct_5 {
    let var_0 = Struct_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.x, arg_2.a.x, 1293f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, arg_0.e.b.x, -752f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.c.b.wyw) + _wgslsmith_f_op_vec3_f32(arg_2.a * vec3<f32>(-1000f, arg_0.e.b.x, -199f)))))), any(global0[_wgslsmith_index_u32(1u, 28u)]), arg_2.c, func_2().d, func_2().c);
    global1 = vec4<u32>(_wgslsmith_div_u32(arg_2.c.d.d, _wgslsmith_mod_u32(~arg_2.c.d.d, arg_2.e.d.d)), firstTrailingBit(arg_3), firstLeadingBit(_wgslsmith_div_u32(var_0.e.d.d, _wgslsmith_clamp_u32(arg_2.c.d.d, 46187u, 1u))) ^ _wgslsmith_dot_vec3_u32(reverseBits(global1.xyx), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 0u) & global1.xyy, global1.wzw, global1.xzx)), _wgslsmith_sub_u32(~1u, arg_2.c.d.d));
    global0 = array<vec2<bool>, 28>();
    global2 = array<i32, 2>();
    global1 = vec4<u32>(abs(25578u), reverseBits(arg_2.c.d.d), ~(countOneBits(_wgslsmith_mod_u32(31980u, u_input.b.x)) ^ _wgslsmith_sub_u32(~arg_3, ~arg_3)), arg_2.c.d.d);
    return Struct_5(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(arg_0.a)))), true, arg_0.c, ~var_0.c.d.c.a, arg_0.e);
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = func_4(func_2(), func_2().e.a, Struct_5(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * arg_0.x), _wgslsmith_f_op_f32(-317f * -128f), 490f), !(global2[_wgslsmith_index_u32(47592u, 2u)] > max(-1i, -27432i)), func_2().e, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(17696u, 2u)], u_input.c), 1i), u_input.a), Struct_4(true, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.x, -330f, arg_0.x, arg_0.x))), true, func_2().e.d)), _wgslsmith_dot_vec2_u32(abs(min(vec2<u32>(0u, u_input.b.x), select(global1.wy, vec2<u32>(15553u, 11641u), vec2<bool>(true, false)))), abs(u_input.b.yx)));
    let var_1 = true;
    global0 = array<vec2<bool>, 28>();
    let var_2 = u_input.b.wzy;
    global0 = array<vec2<bool>, 28>();
    return func_4(Struct_5(_wgslsmith_f_op_vec3_f32(var_0.c.b.zyx + var_0.e.b.yyw), false, var_0.e, _wgslsmith_mult_i32(countOneBits(~29811i), global2[_wgslsmith_index_u32(~var_0.c.d.d, 2u)]), func_2().e), var_0.b, Struct_5(var_0.a, !(!(!var_1)), var_0.c, -func_2().e.d.e, var_0.e), 29612u).e.d.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -u_input.a.x;
    global0 = array<vec2<bool>, 28>();
    let var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~countOneBits(~u_input.b), u_input.b), vec4<u32>(max(~u_input.b.x, 8629u), _wgslsmith_sub_u32(37987u, 0u), ~select(14743u, global1.x, true), ~global1.x) & (u_input.b | ~(vec4<u32>(1u, 82381u, 32296u, 1u) & u_input.b)));
    var var_2 = -(vec4<i32>(-1i) * -reverseBits(abs(vec4<i32>(var_0, var_0, -11710i, var_0))));
    let var_3 = func_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -252f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-334f, -1951f, true)))), _wgslsmith_f_op_f32(select(-429f, 181f, true))));
    var_2 = countOneBits(select(firstLeadingBit(_wgslsmith_div_vec4_i32(select(vec4<i32>(-16576i, 1i, -22834i, global2[_wgslsmith_index_u32(4294967295u, 2u)]), vec4<i32>(global2[_wgslsmith_index_u32(var_1, 2u)], 15065i, var_0, var_0), vec4<bool>(true, false, false, true)), -vec4<i32>(global2[_wgslsmith_index_u32(var_1, 2u)], -43968i, u_input.c, -50120i))), -abs(_wgslsmith_div_vec4_i32(vec4<i32>(var_3.a, u_input.c, var_2.x, var_2.x), vec4<i32>(0i, var_0, u_input.a.x, var_3.a))), true));
    var var_4 = select(u_input.a, vec2<i32>(countOneBits(-_wgslsmith_mod_i32(64643i, var_0)), -(~56998i) ^ _wgslsmith_dot_vec4_i32(~vec4<i32>(var_2.x, global2[_wgslsmith_index_u32(global1.x, 2u)], var_2.x, 9834i), -vec4<i32>(var_2.x, var_3.a, var_3.a, -14594i))), true);
    var_4 = var_2.zy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1715f, 764f))))), 4294967295u, global1.x, _wgslsmith_dot_vec4_i32(-(~vec4<i32>(1837i, -19775i, -2147483647i, global2[_wgslsmith_index_u32(var_1, 2u)])), vec4<i32>(var_0, abs(var_3.a), var_2.x, min(1i, -21974i))) >> (_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(_wgslsmith_mult_u32(var_1, 11823u), ~1u, var_1, abs(4294967295u))) % 32u), abs(~((u_input.b.zx | u_input.b.xy) >> (abs(global1.wy) % vec2<u32>(32u)))));
}

