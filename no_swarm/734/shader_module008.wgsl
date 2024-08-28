struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_2,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    let var_0 = -vec2<i32>(global0.b, (-1i >> (min(u_input.a.x, 4294967295u) % 32u)) & reverseBits(firstLeadingBit(global0.b)));
    var var_1 = Struct_1(true, -abs(global0.b), !(!any(select(vec2<bool>(global0.a, false), vec2<bool>(false, global0.d), vec2<bool>(false, true)))), true);
    global0 = Struct_1(all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, var_1.a, var_1.a), vec3<bool>(global0.c, true, global0.c), any(vec4<bool>(global0.d, var_1.a, global0.a, var_1.a))), var_1.d)), ~(~((var_1.b >> (u_input.a.x % 32u)) >> (45967u % 32u))), all(select(vec4<bool>(all(vec4<bool>(var_1.d, var_1.a, global0.a, true)), false, true, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(var_1.c, false, var_1.c, var_1.d), var_1.d), select(vec4<bool>(true, false, global0.c, false), vec4<bool>(false, false, var_1.c, var_1.a), true), !vec4<bool>(true, global0.c, var_1.a, global0.a)), !(!vec4<bool>(global0.c, false, var_1.d, false)))), false != all(!(!vec3<bool>(false, false, var_1.d))));
    var var_2 = Struct_2(-var_0, Struct_1(global0.c, -var_1.b, !(true | global0.a), !(!all(vec4<bool>(false, false, true, var_1.c)))), var_0.x, Struct_1(true, _wgslsmith_mod_i32(~_wgslsmith_mult_i32(2147483647i, 0i), var_1.b >> (_wgslsmith_mult_u32(u_input.b.x, u_input.c.x) % 32u)), var_1.d, global0.a), 0u);
    var var_3 = ~u_input.b.wzw;
    return _wgslsmith_f_op_f32(-1707f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)))) - 1881f));
}

fn func_2(arg_0: i32) -> f32 {
    global0 = Struct_1(false, 1i, global0.a, false);
    var var_0 = _wgslsmith_div_f32(369f, _wgslsmith_div_f32(-454f, _wgslsmith_f_op_f32(func_3())));
    let var_1 = ~_wgslsmith_dot_vec2_u32(firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(31545u, 1u)) & u_input.a), ~u_input.a);
    let var_2 = Struct_1(global0.c, arg_0, !(!(2405i != -arg_0)), firstLeadingBit(_wgslsmith_div_i32(-global0.b, _wgslsmith_dot_vec4_i32(vec4<i32>(6735i, global0.b, arg_0, -2147483647i), vec4<i32>(-1i, global0.b, 2147483647i, global0.b)))) != 2147483647i);
    global0 = Struct_1(abs(var_1) > u_input.b.x, (~(-var_2.b) << (~_wgslsmith_sub_u32(21686u, var_1) % 32u)) << (_wgslsmith_add_u32(~var_1, 1u) % 32u), false, ~(~arg_0) >= firstLeadingBit(min(var_2.b, 1i)));
    return 874f;
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, 931f, -2798f, -1712f))))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-392f - -941f) * 269f), -419f, 1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1483f, -523f, global0.a)))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -734f) * _wgslsmith_f_op_f32(func_2(arg_0.x)))), -1000f, _wgslsmith_f_op_f32(-309f + _wgslsmith_div_f32(-487f, _wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(abs(451f))));
    global0 = Struct_1(any(select(!(!vec3<bool>(global0.d, true, true)), vec3<bool>(global0.c, any(vec3<bool>(true, false, true)), select(global0.c, global0.c, false)), !(23933i != arg_0.x))), arg_0.x, true, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -607f)) < var_0.x);
    let var_1 = vec4<f32>(var_0.x, var_0.x, 428f, -365f);
    global0 = Struct_1(global0.a, 0i | min(arg_0.x, -1i), false, (-1635f > var_1.x) || true);
    let var_2 = _wgslsmith_f_op_f32(492f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(755f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * var_1.x))));
    return Struct_2(-countOneBits(~vec2<i32>(0i, 0i)), Struct_1(any(vec2<bool>(true, global0.d)), ~(~(-8745i) & ~arg_0.x), !global0.a, select(true, global0.d, false)), -1i, Struct_1(!all(vec2<bool>(true, global0.c)), _wgslsmith_clamp_i32(countOneBits(_wgslsmith_div_i32(arg_0.x, 2147483647i)), abs(_wgslsmith_mod_i32(-2147483647i, global0.b)), -29187i), global0.d || false, global0.a), firstTrailingBit(u_input.c.x));
}

fn func_4(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_3, arg_3: bool) -> Struct_2 {
    global0 = func_1(~(-(countOneBits(vec3<i32>(-1i, -1i, arg_2.e.a.x)) & select(vec3<i32>(arg_2.e.a.x, -45735i, arg_2.c.b.b), vec3<i32>(global0.b, arg_2.b.a.x, 0i), vec3<bool>(false, false, true))))).b;
    let var_0 = u_input.b;
    var var_1 = arg_2;
    let var_2 = Struct_2(select(var_1.b.a >> (abs(firstTrailingBit(var_0.yz)) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_mult_i32(-arg_2.e.d.b, global0.b), 1i), vec2<bool>(true, true)), func_1(-vec3<i32>(14830i << (1u % 32u), -70174i, _wgslsmith_clamp_i32(-48804i, 1i, -11199i))).d, global0.b, Struct_1(global0.d, 1i, all(vec3<bool>(var_1.e.b.a, true, global0.b <= global0.b)), any(!select(arg_2.a, vec4<bool>(arg_3, true, true, arg_3), true))), ~func_1(countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(57000i, var_1.c.c, arg_2.e.d.b), vec3<i32>(16106i, var_1.e.d.b, var_1.e.c)))).e);
    var var_3 = Struct_3(arg_2.a, func_1(~min(vec3<i32>(var_2.a.x, arg_2.c.a.x, arg_2.b.d.b), vec3<i32>(-1i, var_1.e.d.b, global0.b))), Struct_2(firstTrailingBit(firstLeadingBit(arg_2.e.a)), func_1(-_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.c.c, -1i, arg_2.e.a.x), vec3<i32>(arg_2.b.b.b, -13530i, global0.b))).b, reverseBits(abs(62404i)), func_1(vec3<i32>(max(2147483647i, 1i), ~global0.b, 2147483647i)).b, (1u >> (var_2.e % 32u)) ^ 10776u), all(arg_2.a.wwz), func_1(vec3<i32>(-4992i, _wgslsmith_add_i32(0i, -30519i), -1i) ^ max(vec3<i32>(-14238i, arg_2.c.b.b, 0i), _wgslsmith_mult_vec3_i32(vec3<i32>(var_2.a.x, var_2.a.x, global0.b), vec3<i32>(var_2.b.b, arg_2.c.b.b, var_1.c.d.b)))));
    return arg_2.e;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-747f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -260f))) * 953f)));
    let var_1 = true;
    let var_2 = Struct_3(arg_0.a, arg_0.c, Struct_2(~(-_wgslsmith_sub_vec2_i32(arg_0.e.a, arg_1.c.a)), func_1(vec3<i32>(-15797i, func_4(u_input.b.yz, u_input.b.x, Struct_3(vec4<bool>(global0.a, arg_0.d, arg_1.a.x, false), Struct_2(vec2<i32>(12990i, -2147483647i), Struct_1(var_1, arg_0.e.c, false, true), -55034i, Struct_1(var_1, arg_0.e.b.b, arg_1.d, var_1), u_input.a.x), arg_0.e, var_1, Struct_2(arg_0.b.a, arg_1.b.d, 3944i, Struct_1(false, global0.b, false, arg_0.c.b.a), 4294967295u)), true).a.x, 1i)).b, global0.b, arg_0.e.d, 66069u), !(!arg_0.d | true), arg_0.b);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)));
    let var_4 = _wgslsmith_f_op_f32(-126f + var_3.x);
    return func_4(firstTrailingBit(u_input.c), _wgslsmith_clamp_u32(0u, countOneBits(25713u), arg_1.e.e), arg_1, var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_3(select(select(select(vec4<bool>(true, true, true, global0.a), vec4<bool>(true, false, global0.a, global0.c), vec4<bool>(true, true, false, global0.a)), select(vec4<bool>(false, false, global0.a, true), vec4<bool>(global0.c, true, true, global0.a), vec4<bool>(global0.c, false, true, false)), vec4<bool>(global0.a, global0.d, true, global0.c)), !vec4<bool>(global0.d, true, true, true), vec4<bool>(u_input.c.x < u_input.a.x, u_input.c.x == 42720u, !global0.d, all(vec2<bool>(false, true)))), func_4(firstLeadingBit(~u_input.a), 81910u, Struct_3(select(vec4<bool>(global0.c, global0.a, false, true), vec4<bool>(true, false, true, global0.a), vec4<bool>(false, true, false, true)), func_1(vec3<i32>(global0.b, global0.b, -27170i)), Struct_2(vec2<i32>(global0.b, global0.b), Struct_1(true, 0i, global0.c, global0.d), -2147483647i, Struct_1(global0.a, -1308i, false, true), u_input.b.x), all(vec3<bool>(global0.c, global0.c, false)), func_1(vec3<i32>(5499i, global0.b, global0.b))), true), Struct_2(_wgslsmith_add_vec2_i32(vec2<i32>(15020i, 1i), vec2<i32>(global0.b, global0.b) ^ vec2<i32>(global0.b, global0.b)), Struct_1(func_1(vec3<i32>(23831i, global0.b, 23324i)).b.a, func_1(vec3<i32>(-17999i, -80436i, global0.b)).c, true, global0.d | global0.d), -50971i, Struct_1(global0.a, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.b, global0.b, global0.b), vec3<i32>(global0.b, global0.b, -4410i)), global0.d, true), u_input.c.x), reverseBits(~global0.b) > func_1(vec3<i32>(0i, global0.b, 15917i)).b.b, func_1(vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, global0.b, global0.b), global0.b, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.b, global0.b), vec2<i32>(-2147483647i, global0.b))))), Struct_3(!(!vec4<bool>(true, global0.a, false, true)), Struct_2(func_1(vec3<i32>(-51462i, global0.b, global0.b)).a, Struct_1(true, -global0.b, global0.c, func_4(u_input.a, u_input.b.x, Struct_3(vec4<bool>(global0.c, global0.c, global0.c, global0.a), Struct_2(vec2<i32>(global0.b, global0.b), Struct_1(global0.a, -9631i, false, false), -1i, Struct_1(global0.d, -5099i, global0.c, false), u_input.c.x), Struct_2(vec2<i32>(38036i, global0.b), Struct_1(true, global0.b, global0.c, true), 40687i, Struct_1(false, -14133i, true, false), 15624u), true, Struct_2(vec2<i32>(2992i, 1i), Struct_1(true, -7930i, global0.a, global0.a), global0.b, Struct_1(global0.c, 26176i, true, false), 1u)), false).b.c), 0i, Struct_1(global0.a, ~2147483647i, any(vec4<bool>(global0.c, global0.a, true, true)), any(vec2<bool>(global0.d, global0.c))), reverseBits(4294967295u)), func_1(select(abs(vec3<i32>(1255i, -2147483647i, -7680i)), abs(vec3<i32>(global0.b, 29185i, 9271i)), global0.d && false)), true, Struct_2(reverseBits(vec2<i32>(global0.b, global0.b) ^ vec2<i32>(global0.b, 26344i)), func_4(u_input.b.zx, u_input.c.x, Struct_3(vec4<bool>(global0.c, true, false, false), Struct_2(vec2<i32>(global0.b, -33418i), Struct_1(global0.a, -2318i, global0.d, global0.d), global0.b, Struct_1(global0.c, global0.b, false, global0.a), u_input.c.x), Struct_2(vec2<i32>(global0.b, -15555i), Struct_1(true, -17982i, global0.a, global0.a), global0.b, Struct_1(true, global0.b, false, false), u_input.c.x), global0.c, Struct_2(vec2<i32>(1i, -1334i), Struct_1(global0.d, global0.b, global0.d, global0.c), -2147483647i, Struct_1(global0.c, 2147483647i, true, global0.a), u_input.a.x)), true).b, -555i, Struct_1(any(vec3<bool>(false, global0.a, global0.a)), firstLeadingBit(0i), false, all(vec2<bool>(global0.c, false))), ~1u)));
    global0 = Struct_1(false, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(var_0.a, min(vec2<i32>(var_0.b.b, 2147483647i), func_5(Struct_3(vec4<bool>(true, var_0.b.d, var_0.d.d, global0.a), Struct_2(vec2<i32>(0i, -2147483647i), Struct_1(false, global0.b, var_0.d.d, true), var_0.a.x, Struct_1(true, 2147483647i, global0.d, global0.c), 26033u), Struct_2(var_0.a, var_0.b, 2147483647i, Struct_1(global0.c, -41128i, global0.d, false), var_0.e), false, Struct_2(vec2<i32>(0i, 1941i), var_0.d, 36897i, Struct_1(true, var_0.b.b, var_0.b.d, false), 1u)), Struct_3(vec4<bool>(true, var_0.d.d, var_0.d.c, true), Struct_2(var_0.a, Struct_1(global0.c, -1i, global0.a, false), 1i, var_0.b, var_0.e), var_0, var_0.d.d, Struct_2(var_0.a, Struct_1(var_0.d.c, -13309i, var_0.d.c, false), global0.b, Struct_1(global0.d, global0.b, true, var_0.b.d), 4294967295u))).a)), -(global0.b & _wgslsmith_div_i32(global0.b, -1i))), var_0.d.c, global0.c);
    var var_1 = func_1(_wgslsmith_div_vec3_i32(-vec3<i32>(global0.b, 32788i, 34439i), ~vec3<i32>(var_0.a.x >> (1u % 32u), countOneBits(-2147483647i), 13321i)));
    var var_2 = vec4<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.b.x, var_0.e), u_input.a, vec2<bool>(false, false)) << (~u_input.b.zx % vec2<u32>(32u)), countOneBits(u_input.c)), var_1.e, var_0.e, min(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.b.x, 1u), var_0.e), 4294967295u)) >> (~abs(_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(var_1.e, u_input.c.x, var_1.e, 27468u)), ~vec4<u32>(var_0.e, var_1.e, 0u, 4294967295u))) % vec4<u32>(32u));
    let var_3 = _wgslsmith_clamp_vec4_i32(vec4<i32>(global0.b, global0.b, -1i, ~30689i), vec4<i32>(-29551i, var_1.b.b, var_1.c, -43812i), vec4<i32>(firstLeadingBit(var_0.c), 6359i, var_1.d.b, _wgslsmith_mult_i32(-var_1.a.x, _wgslsmith_sub_i32(var_0.b.b, var_0.c))) ^ ~reverseBits(vec4<i32>(var_0.b.b, -25315i, 17831i, 1i) >> (vec4<u32>(23910u, var_2.x, var_1.e, 4294967295u) % vec4<u32>(32u))));
    var_1 = Struct_2(vec2<i32>(~(-_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.x, var_3.x, global0.b), vec3<i32>(-37619i, -2147483647i, global0.b))), _wgslsmith_mult_i32(53512i, 1i)), func_5(Struct_3(!(!vec4<bool>(true, var_1.b.d, global0.a, false)), func_1(vec3<i32>(2147483647i, 15667i, 0i)), func_5(Struct_3(vec4<bool>(var_0.b.c, var_1.d.d, true, false), Struct_2(vec2<i32>(var_3.x, var_0.b.b), Struct_1(global0.d, -2147483647i, var_1.b.c, true), var_3.x, Struct_1(var_1.d.c, var_0.c, true, true), 4294967295u), var_0, var_1.d.c, Struct_2(vec2<i32>(var_0.c, 5045i), var_1.d, global0.b, var_0.d, var_1.e)), Struct_3(vec4<bool>(var_0.d.d, true, false, var_0.d.d), Struct_2(var_1.a, Struct_1(var_1.b.a, -202i, false, true), var_3.x, Struct_1(var_0.d.a, global0.b, true, global0.d), 301u), Struct_2(vec2<i32>(var_3.x, var_1.b.b), Struct_1(false, global0.b, var_1.b.c, false), -18617i, var_1.b, 1092u), global0.c, var_0)), var_1.d.a, Struct_2(var_3.xx & vec2<i32>(-474i, -2147483647i), func_4(u_input.c, u_input.c.x, Struct_3(vec4<bool>(global0.d, var_1.b.c, false, true), Struct_2(vec2<i32>(-1i, -1i), Struct_1(true, var_3.x, global0.c, true), var_3.x, Struct_1(false, -2147483647i, var_0.b.c, false), 1u), Struct_2(vec2<i32>(-2147483647i, -2391i), Struct_1(true, var_3.x, var_1.b.a, var_0.b.d), var_1.d.b, Struct_1(var_1.b.c, 1i, global0.a, true), 29036u), var_1.b.d, Struct_2(vec2<i32>(var_1.a.x, 20867i), Struct_1(global0.c, 56175i, true, false), global0.b, Struct_1(false, 2147483647i, global0.a, var_0.d.a), var_0.e)), var_1.b.c).d, var_3.x & var_1.b.b, Struct_1(true, 1i, true, true), 17279u)), Struct_3(vec4<bool>(select(true, global0.c, false), true, select(false, false, false), func_4(u_input.a, var_0.e, Struct_3(vec4<bool>(true, false, global0.c, true), Struct_2(vec2<i32>(7837i, -37731i), Struct_1(var_1.d.d, var_3.x, true, false), 1i, Struct_1(var_1.b.d, var_1.a.x, true, false), u_input.b.x), Struct_2(vec2<i32>(-27320i, var_1.d.b), var_0.d, 6388i, var_0.b, var_1.e), true, Struct_2(var_3.ww, Struct_1(false, 4793i, true, false), 0i, var_1.b, u_input.a.x)), var_1.d.a).b.d), Struct_2(vec2<i32>(-1i, var_0.c), var_1.d, -76959i, Struct_1(global0.c, var_1.b.b, false, var_0.d.c), abs(var_2.x)), var_0, true, var_0)).b, var_1.d.b, var_0.b, 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.wxz);
}

