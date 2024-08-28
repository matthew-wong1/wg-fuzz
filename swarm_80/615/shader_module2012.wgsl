struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: f32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec2<bool>,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: vec4<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22>;

var<private> global1: array<vec2<f32>, 19> = array<vec2<f32>, 19>(vec2<f32>(577f, 1258f), vec2<f32>(1355f, -1000f), vec2<f32>(455f, -775f), vec2<f32>(129f, 2009f), vec2<f32>(-1573f, -322f), vec2<f32>(-1705f, 1270f), vec2<f32>(-1138f, -1603f), vec2<f32>(-487f, -741f), vec2<f32>(931f, -2553f), vec2<f32>(949f, 1984f), vec2<f32>(536f, 931f), vec2<f32>(-1335f, 163f), vec2<f32>(-1155f, -430f), vec2<f32>(-494f, -273f), vec2<f32>(-852f, -1000f), vec2<f32>(-270f, 296f), vec2<f32>(-1208f, 2299f), vec2<f32>(442f, -281f), vec2<f32>(449f, 1738f));

var<private> global2: bool;

var<private> global3: vec3<f32>;

var<private> global4: array<Struct_3, 8>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: u32) -> vec4<u32> {
    var var_0 = arg_1.d;
    global3 = _wgslsmith_div_vec3_f32(arg_1.a.b, _wgslsmith_f_op_vec3_f32(-arg_1.a.b));
    global4 = array<Struct_3, 8>();
    var var_1 = arg_1;
    var var_2 = global0[_wgslsmith_index_u32(1u, 22u)];
    return var_1.a.a;
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = 1i;
    var var_1 = _wgslsmith_f_op_f32(-1077f * _wgslsmith_f_op_f32(max(arg_1.b.x, _wgslsmith_f_op_f32(arg_1.b.x * -155f))));
    let var_2 = 22583u;
    global2 = arg_1.b.x >= global3.x;
    var var_3 = arg_1.a;
    return Struct_1(~func_3(vec3<i32>(u_input.b, -1i, u_input.b), Struct_2(arg_1.a, vec2<f32>(573f, -237f), vec3<i32>(var_0, -39911i, -21591i), arg_2, var_0), abs(u_input.e.x)) << (vec4<u32>(var_3.a.x, 1u, _wgslsmith_dot_vec3_u32(~var_3.a.zyx, var_3.a.zzx), ~(1u >> (u_input.e.x % 32u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.b + vec3<f32>(var_3.b.x, -292f, 774f)) + _wgslsmith_f_op_vec3_f32(-arg_1.a.b))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_3.b), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-arg_1.a.b)))))), 612f, var_3.d);
}

fn func_4(arg_0: Struct_4) -> f32 {
    global2 = false;
    let var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(arg_0.c, u_input.b, -reverseBits(u_input.d.x)), -1i, (-arg_0.e.c.x ^ _wgslsmith_sub_i32(arg_0.e.e, u_input.a.x)) ^ _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.b), u_input.d.wy), max(arg_0.e.e, 0i)), arg_0.e.c.x), abs(-select(-u_input.a, _wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(-1i, u_input.b, u_input.b, arg_0.c)), !vec4<bool>(arg_0.b.d.x, true, arg_0.b.d.x, false))));
    var var_1 = arg_0.b;
    var var_2 = arg_0.d.x;
    let var_3 = all(arg_0.e.a.d);
    return _wgslsmith_f_op_f32(f32(-1f) * -1194f);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_4(Struct_4(_wgslsmith_sub_u32(u_input.e.x, 33408u), func_2(false, Struct_2(Struct_1(vec4<u32>(u_input.e.x, u_input.e.x, 0u, u_input.e.x), vec3<f32>(-1614f, global3.x, global3.x), global3.x, vec3<bool>(true, true, false)), vec2<f32>(838f, global3.x), vec3<i32>(9694i, u_input.b, 1i), vec2<bool>(true, false), u_input.a.x), vec2<bool>(false, false)), u_input.b | u_input.a.x, vec4<f32>(global3.x, global3.x, 421f, global3.x), Struct_2(Struct_1(vec4<u32>(32114u, u_input.e.x, 4294967295u, 19683u), vec3<f32>(-1941f, global3.x, global3.x), global3.x, vec3<bool>(true, true, true)), vec2<f32>(207f, global3.x), vec3<i32>(u_input.b, u_input.c, 2147483647i), vec2<bool>(false, false), -1i)))), -1850f));
    global0 = array<Struct_3, 22>();
    var var_1 = 5874u;
    let var_2 = Struct_1(~select(~(~vec4<u32>(1u, 96453u, 1u, 58756u)), ~(~vec4<u32>(u_input.e.x, 4294967295u, u_input.e.x, u_input.e.x)), func_2(false, Struct_2(Struct_1(vec4<u32>(u_input.e.x, u_input.e.x, 1u, u_input.e.x), vec3<f32>(global3.x, 313f, var_0.x), var_0.x, vec3<bool>(false, false, true)), vec2<f32>(var_0.x, -120f), u_input.d.wyw, vec2<bool>(true, false), u_input.b), vec2<bool>(true, true)).d.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, var_0.x)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-280f, var_0.x, 830f), vec3<f32>(1080f, -165f, global3.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1334f + var_0.x), global3.x, -826f)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !func_2(true, Struct_2(Struct_1(vec4<u32>(u_input.e.x, 55636u, 1u, u_input.e.x), vec3<f32>(-887f, global3.x, 2132f), global3.x, vec3<bool>(false, false, false)), vec2<f32>(global3.x, var_0.x), vec3<i32>(u_input.d.x, -1139i, -43302i), vec2<bool>(true, false), u_input.c), vec2<bool>(false, false)).d))), -1000f, vec3<bool>(true, true, true));
    var_1 = _wgslsmith_mult_u32(~(~var_2.a.x), 63303u);
    return var_2;
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> Struct_4 {
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_2(all(func_2(arg_2.d.x, Struct_2(arg_2, vec2<f32>(-283f, -918f), u_input.d.xxy, arg_2.d.yx, u_input.b), arg_2.d.xy).d), Struct_2(Struct_1(vec4<u32>(1u, 4294967295u, arg_2.a.x, 4294967295u), arg_2.b, -743f, arg_2.d), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.c, 1098f) + vec2<f32>(arg_2.c, global3.x)), firstLeadingBit(vec3<i32>(u_input.b, u_input.b, u_input.b)), vec2<bool>(true, arg_2.d.x), firstLeadingBit(arg_0)), vec2<bool>(true, true)).b) * _wgslsmith_f_op_vec3_f32(arg_2.b - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-257f, -884f, global3.x))) - arg_2.b))));
    let var_0 = Struct_2(arg_2, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(arg_2.b.xx)), _wgslsmith_f_op_vec2_f32(func_1().b.zx * _wgslsmith_div_vec2_f32(global3.yz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(291f, 1000f)))))), -vec3<i32>(24148i, arg_0, -2147483647i), arg_2.d.zy, arg_0);
    var var_1 = _wgslsmith_sub_i32(-u_input.a.x, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.d.yxx, vec3<i32>(u_input.c, arg_0 & -41339i, i32(-1i) * -9550i)), -max(1i, 2147483647i)));
    var_1 = max(u_input.a.x, u_input.d.x);
    let var_2 = vec3<i32>(~2147483647i >> (arg_3 % 32u), 0i >> (firstTrailingBit(arg_2.a.x) % 32u), var_0.c.x);
    return Struct_4(abs(4294967295u), func_2(!any(!vec4<bool>(arg_2.d.x, arg_2.d.x, var_0.a.d.x, true)), var_0, var_0.d), 0i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-856f, 342f, arg_2.b.x, var_0.a.b.x))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3.x, global3.x, -1224f, var_0.a.b.x), vec4<f32>(-582f, var_0.a.b.x, 204f, -2125f))), !vec4<bool>(arg_2.d.x, false, var_0.d.x, true))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(128f, -2071f, -596f, var_0.b.x), vec4<f32>(arg_2.c, -1675f, var_0.b.x, 1340f))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-303f, var_0.b.x, 590f, var_0.b.x), vec4<f32>(1000f, arg_2.c, -858f, arg_2.b.x))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2.b.x, 673f, -2125f, 376f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, var_0.b.x, arg_2.b.x, -186f), vec4<f32>(-916f, 725f, global3.x, -1361f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -704f, -329f, 2185f))), !arg_2.d.x))), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(-u_input.d.x, 0u, func_1(), 16017u);
    var var_1 = var_0.e.c.xy;
    var var_2 = var_0.e.d.x;
    global2 = var_0.b.d.x;
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_0.d.wxy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, _wgslsmith_f_op_f32(min(global3.x, var_0.d.x)), _wgslsmith_f_op_f32(global3.x + -355f))), countOneBits(func_5(var_1.x, u_input.e.x, Struct_1(var_0.e.a.a, var_0.e.a.b, -981f, vec3<bool>(var_0.b.d.x, false, var_0.b.d.x)), u_input.e.x).e.a.a.x) <= _wgslsmith_mult_u32(_wgslsmith_mod_u32(0u, 3552u), var_0.b.a.x))));
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(var_0.d));
    let x = u_input.a;
    s_output = StorageBuffer(-var_0.e.c, vec3<i32>(-reverseBits(-25096i), ~_wgslsmith_add_i32(0i, var_1.x), var_0.c) ^ u_input.a.zyz, 1u, ~(~(~(var_0.b.a ^ vec4<u32>(u_input.e.x, 35841u, var_0.a, u_input.e.x)))), _wgslsmith_div_vec3_u32(var_0.b.a.zyz, ~u_input.e & ~var_0.e.a.a.wxx) >> (~func_5(2147483647i, _wgslsmith_mod_u32(39163u, 49632u), var_0.e.a, u_input.e.x).e.a.a.yyz % vec3<u32>(32u)));
}

