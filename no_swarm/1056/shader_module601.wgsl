struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: f32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<vec3<bool>, 13>;

var<private> global2: array<vec2<u32>, 2>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>) -> i32 {
    let var_0 = Struct_4(arg_0, Struct_1(vec3<i32>(global0.x, arg_1.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, arg_0.a.a.a.x, 2147483647i), arg_0.a.a.a | arg_1.yzz)), arg_0.a.a.b, 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-576f)) * _wgslsmith_f_op_f32(-arg_0.a.a.d))), !(!(!vec3<bool>(arg_0.a.a.e.x, false, arg_0.a.a.e.x)))), abs(vec4<i32>(0i, _wgslsmith_div_i32(~(-2147483647i), countOneBits(-4399i)), arg_1.x, _wgslsmith_clamp_i32(arg_1.x, 1i, ~global0.x))));
    global0 = -firstTrailingBit(abs(firstTrailingBit(arg_0.a.a.a) | -arg_0.a.a.a));
    let var_1 = 0u;
    global1 = array<vec3<bool>, 13>();
    var var_2 = Struct_4(var_0.a, arg_0.a.a, vec4<i32>(arg_1.x & arg_0.a.a.a.x, -countOneBits(var_0.c.x >> (var_0.a.a.a.c % 32u)), min(global0.x, -1i) | 1i, 29266i & global0.x));
    return global0.x;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: bool, arg_3: vec4<u32>) -> Struct_4 {
    var var_0 = abs(~arg_3.wxw);
    var_0 = vec3<u32>(arg_3.x, ~(var_0.x & (u_input.d ^ u_input.b.x)) & _wgslsmith_mult_u32(min(firstTrailingBit(30749u), firstLeadingBit(1u)), _wgslsmith_mod_u32(1u, _wgslsmith_clamp_u32(18074u, u_input.d, arg_0.a.c))), firstTrailingBit(var_0.x));
    var var_1 = !all(!(!(!vec4<bool>(arg_1.x, true, true, false))));
    let var_2 = arg_0.a.a.xy;
    let var_3 = ~vec3<i32>(func_3(Struct_3(Struct_2(Struct_1(arg_0.a.a, 0u, 10624u, arg_0.a.d, global1[_wgslsmith_index_u32(arg_0.a.c, 13u)]))), vec4<i32>(-var_2.x, abs(2147483647i), global0.x, arg_0.a.a.x)), var_2.x, _wgslsmith_add_i32(0i, 33727i));
    return Struct_4(Struct_3(arg_0), arg_0.a, abs(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-24811i, 13810i), var_3.zz), 0i ^ u_input.c), global0.x << (58422u % 32u), func_3(Struct_3(arg_0), ~vec4<i32>(global0.x, arg_0.a.a.x, 1i, var_3.x)), (var_2.x | -21967i) & 1i)));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: vec2<bool>) -> Struct_2 {
    let var_0 = func_2(Struct_2(Struct_1(func_2(func_2(arg_0.a.a, vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), arg_2.x, vec4<u32>(u_input.b.x, 4294967295u, 22898u, 104428u)).a.a, !arg_1, any(vec2<bool>(false, arg_1.x)), abs(vec4<u32>(1u, u_input.b.x, u_input.b.x, 34497u))).c.zww, firstLeadingBit(29939u), abs(u_input.d) << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.a.a.b, 6366u, 1812u, 23620u), vec4<u32>(36009u, 84318u, 0u, arg_0.b.b)) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(188f - -158f)), select(!arg_1.wyx, vec3<bool>(false, false, arg_2.x), true))), select(arg_1, !arg_1, true), !arg_0.a.a.a.e.x, vec4<u32>(_wgslsmith_clamp_u32(arg_0.b.b, ~(arg_0.b.b >> (1u % 32u)), ~(~59133u)), u_input.d, u_input.d, _wgslsmith_dot_vec4_u32(~vec4<u32>(19568u, 0u, arg_0.b.b, 1u) | ~vec4<u32>(arg_0.a.a.a.c, arg_0.a.a.a.b, 1u, 1u), firstTrailingBit(~vec4<u32>(45740u, arg_0.b.b, arg_0.b.c, 55640u))))).a.a;
    var var_1 = Struct_4(func_2(func_2(arg_0.a.a, vec4<bool>(arg_0.b.e.x, func_2(Struct_2(Struct_1(var_0.a.a, u_input.b.x, 64814u, 1045f, var_0.a.e)), arg_1, false, vec4<u32>(u_input.b.x, 1u, u_input.d, u_input.d)).a.a.a.e.x, func_2(Struct_2(Struct_1(var_0.a.a, 1u, u_input.d, var_0.a.d, vec3<bool>(var_0.a.e.x, var_0.a.e.x, true))), arg_1, true, vec4<u32>(4294967295u, 0u, 56852u, u_input.d)).a.a.a.e.x, arg_1.x), arg_2.x, _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.b.c, 1879u, 1u, u_input.b.x), vec4<u32>(18469u, 4294967295u, arg_0.b.b, 31561u)) << (firstTrailingBit(vec4<u32>(arg_0.a.a.a.c, arg_0.a.a.a.b, 48029u, u_input.b.x)) % vec4<u32>(32u))).a.a, vec4<bool>(abs(arg_0.c.x) > (var_0.a.a.x >> (0u % 32u)), var_0.a.e.x, !arg_1.x, func_2(func_2(Struct_2(arg_0.a.a.a), vec4<bool>(false, false, true, true), false, vec4<u32>(4294967295u, u_input.b.x, 1u, 38059u)).a.a, vec4<bool>(arg_2.x, true, false, false), func_2(Struct_2(Struct_1(var_0.a.a, 39923u, 4294967295u, var_0.a.d, vec3<bool>(false, true, true))), arg_1, arg_1.x, vec4<u32>(var_0.a.c, u_input.d, u_input.b.x, 1u)).a.a.a.e.x, abs(vec4<u32>(87871u, 1u, arg_0.b.c, u_input.b.x))).a.a.a.e.x), arg_2.x, max(min(vec4<u32>(0u, u_input.b.x, 1u, 62625u), ~vec4<u32>(0u, var_0.a.c, 7680u, 78518u)), _wgslsmith_div_vec4_u32(select(vec4<u32>(1u, var_0.a.c, arg_0.a.a.a.c, 5682u), vec4<u32>(33073u, arg_0.a.a.a.c, 4294967295u, var_0.a.c), false), firstTrailingBit(vec4<u32>(u_input.b.x, 0u, arg_0.a.a.a.b, arg_0.b.c))))).a, func_2(Struct_2(arg_0.a.a.a), !(!vec4<bool>(true, arg_1.x, true, arg_0.b.e.x)), var_0.a.e.x, ~vec4<u32>(u_input.d, 3139u, 4294967295u, 0u)).b, min(_wgslsmith_sub_vec4_i32(arg_0.c, -arg_0.c), max(func_2(func_2(arg_0.a.a, arg_1, arg_2.x, vec4<u32>(1u, 4294967295u, arg_0.b.c, u_input.d)).a.a, arg_1, var_0.a.e.x & true, countOneBits(vec4<u32>(var_0.a.b, 9025u, 0u, var_0.a.c))).c, -arg_0.c)));
    let var_2 = _wgslsmith_add_vec2_u32(~(~(~select(vec2<u32>(1u, var_0.a.c), vec2<u32>(var_0.a.b, u_input.b.x), vec2<bool>(arg_1.x, var_0.a.e.x)))), global2[_wgslsmith_index_u32(1u, 2u)]);
    var var_3 = Struct_2(arg_0.a.a.a);
    let var_4 = func_2(arg_0.a.a, arg_1, any(arg_0.a.a.a.e.zx), vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(~u_input.d, 1u), var_1.a.a.a.c, 0u), firstLeadingBit(countOneBits(arg_0.a.a.a.b)), _wgslsmith_add_u32(_wgslsmith_mod_u32(~var_3.a.c, ~19524u), 40222u), 19955u)).a.a.a;
    return var_1.a.a;
}

fn func_1() -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(~(~u_input.b.x ^ _wgslsmith_sub_u32(~(u_input.d ^ 1260u), firstTrailingBit(~73277u))), 2u)];
    let var_1 = _wgslsmith_sub_i32(69115i, u_input.c);
    let var_2 = Struct_3(func_4(func_2(Struct_2(Struct_1(vec3<i32>(33650i, 0i, 51755i), 1u, 0u, 1010f, global1[_wgslsmith_index_u32(u_input.d, 13u)])), vec4<bool>(true, true, false, true), false, vec4<u32>(~27287u, 81323u, 66861u, reverseBits(1u))), !vec4<bool>(true, true, true, any(vec4<bool>(true, false, false, false))), func_2(func_2(func_2(Struct_2(Struct_1(vec3<i32>(-1i, global0.x, 1i), var_0.x, var_0.x, 771f, vec3<bool>(false, false, false))), vec4<bool>(false, true, false, false), true, vec4<u32>(u_input.b.x, var_0.x, var_0.x, 1u)).a.a, vec4<bool>(true, true, true, true), true, ~vec4<u32>(4294967295u, var_0.x, var_0.x, 20788u)).a.a, !select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true)), select(true, true, true), min(vec4<u32>(0u, var_0.x, var_0.x, u_input.b.x), vec4<u32>(0u, u_input.b.x, 4294967295u, 0u)) | vec4<u32>(10154u, u_input.d, u_input.b.x, var_0.x)).b.e.yz));
    var var_3 = var_2.a.a.c;
    global0 = firstLeadingBit(vec3<i32>(_wgslsmith_mult_i32(~global0.x, u_input.a) | var_2.a.a.a.x, var_1, _wgslsmith_dot_vec2_i32(select(vec2<i32>(0i, u_input.a), vec2<i32>(23856i, -63659i), var_2.a.a.e.xz), -vec2<i32>(2147483647i, -2147483647i))));
    return _wgslsmith_mult_u32(0u, reverseBits(~(~1u)) | var_2.a.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<i32>(firstTrailingBit(-2147483647i), u_input.c, u_input.c);
    var var_0 = ~countOneBits(vec3<u32>(~func_1(), 53278u, u_input.b.x));
    global0 = vec3<i32>(abs((i32(-1i) * -global0.x) >> (~4294967295u % 32u)), -global0.x, -39061i);
    var var_1 = func_2(Struct_2(func_4(Struct_4(func_2(Struct_2(Struct_1(vec3<i32>(global0.x, 0i, u_input.a), u_input.b.x, 0u, -1090f, global1[_wgslsmith_index_u32(u_input.b.x, 13u)])), vec4<bool>(false, false, false, false), false, vec4<u32>(var_0.x, var_0.x, 98428u, 0u)).a, func_4(Struct_4(Struct_3(Struct_2(Struct_1(vec3<i32>(2147483647i, 0i, global0.x), u_input.d, 9106u, 365f, vec3<bool>(true, false, false)))), Struct_1(vec3<i32>(global0.x, 2147483647i, u_input.a), var_0.x, u_input.b.x, -1247f, vec3<bool>(false, false, false)), vec4<i32>(u_input.a, -7113i, 2147483647i, u_input.c)), vec4<bool>(false, false, false, true), vec2<bool>(false, false)).a, abs(vec4<i32>(global0.x, 1i, 43605i, 123171i))), vec4<bool>(true, true, true, true), vec2<bool>(true, true)).a), !vec4<bool>(true, false, -2147483647i == _wgslsmith_clamp_i32(u_input.c, 6347i, u_input.a), !(u_input.a <= global0.x)), any(!(!global1[_wgslsmith_index_u32(firstLeadingBit(0u), 13u)])), reverseBits(~firstLeadingBit(~vec4<u32>(1u, var_0.x, u_input.d, var_0.x)))).a;
    global2 = array<vec2<u32>, 2>();
    let var_2 = func_2(Struct_2(func_4(func_2(func_2(var_1.a, vec4<bool>(true, var_1.a.a.e.x, var_1.a.a.e.x, var_1.a.a.e.x), var_1.a.a.e.x, vec4<u32>(5705u, u_input.d, u_input.d, var_0.x)).a.a, select(vec4<bool>(var_1.a.a.e.x, var_1.a.a.e.x, false, false), vec4<bool>(false, var_1.a.a.e.x, var_1.a.a.e.x, var_1.a.a.e.x), vec4<bool>(true, true, var_1.a.a.e.x, true)), all(var_1.a.a.e), firstLeadingBit(vec4<u32>(88335u, u_input.d, 1u, var_0.x))), select(!vec4<bool>(false, false, var_1.a.a.e.x, false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, var_1.a.a.e.x, false, var_1.a.a.e.x), var_1.a.a.e.x), vec4<bool>(var_1.a.a.e.x, var_1.a.a.e.x, var_1.a.a.e.x, var_1.a.a.e.x)), select(select(vec2<bool>(true, true), vec2<bool>(false, var_1.a.a.e.x), vec2<bool>(true, false)), vec2<bool>(true, true), !var_1.a.a.e.x)).a), vec4<bool>(false, !var_1.a.a.e.x, select(all(!global1[_wgslsmith_index_u32(var_1.a.a.b, 13u)]), all(!var_1.a.a.e.xx), !all(vec4<bool>(true, true, false, true))), !(global0.x >= -2147483647i)), select(!(!func_4(Struct_4(Struct_3(var_1.a), Struct_1(var_1.a.a.a, 22732u, u_input.b.x, -802f, var_1.a.a.e), vec4<i32>(u_input.c, global0.x, 0i, -4394i)), vec4<bool>(false, true, false, true), vec2<bool>(var_1.a.a.e.x, var_1.a.a.e.x)).a.e.x), any(var_1.a.a.e.xx), func_4(Struct_4(func_2(var_1.a, vec4<bool>(false, false, var_1.a.a.e.x, true), var_1.a.a.e.x, vec4<u32>(1u, var_0.x, var_0.x, var_1.a.a.b)).a, var_1.a.a, ~vec4<i32>(u_input.a, 17381i, 22241i, u_input.a)), select(select(vec4<bool>(var_1.a.a.e.x, var_1.a.a.e.x, var_1.a.a.e.x, false), vec4<bool>(true, var_1.a.a.e.x, true, true), var_1.a.a.e.x), !vec4<bool>(true, var_1.a.a.e.x, var_1.a.a.e.x, var_1.a.a.e.x), !vec4<bool>(true, var_1.a.a.e.x, true, true)), func_2(var_1.a, select(vec4<bool>(true, true, true, var_1.a.a.e.x), vec4<bool>(true, true, true, var_1.a.a.e.x), true), !var_1.a.a.e.x, vec4<u32>(var_1.a.a.b, 21100u, 72717u, var_0.x)).b.e.xy).a.e.x), ~countOneBits(firstLeadingBit(vec4<u32>(var_0.x, 0u, var_0.x, u_input.b.x)))).a.a.a.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_1.a.a.c), min(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(30018u, u_input.d, 18334u, var_1.a.a.b), vec4<u32>(0u, 72233u, 4294967295u, 1u), vec4<u32>(var_0.x, var_0.x, u_input.b.x, 16533u)) & ~vec4<u32>(var_0.x, u_input.b.x, 26254u, u_input.d), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(78980u, 0u), vec2<u32>(103326u, 37900u)), u_input.b.x, abs(1u), ~var_1.a.a.b)), firstLeadingBit(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(49575u, var_1.a.a.b, var_1.a.a.b, 1u), vec4<u32>(0u, var_1.a.a.c, var_1.a.a.b, u_input.d)), ~vec4<u32>(29638u, var_1.a.a.c, var_1.a.a.b, u_input.d)))));
}

