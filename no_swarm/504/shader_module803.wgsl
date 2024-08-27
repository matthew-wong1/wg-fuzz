struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: f32,
    d: vec4<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 13> = array<vec2<u32>, 13>(vec2<u32>(1u, 82217u), vec2<u32>(49049u, 0u), vec2<u32>(4294967295u, 30278u), vec2<u32>(0u, 36418u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(32176u, 1u), vec2<u32>(39179u, 135621u), vec2<u32>(1u, 35204u), vec2<u32>(30862u, 23914u), vec2<u32>(39462u, 8576u), vec2<u32>(0u, 26008u));

var<private> global1: array<vec2<f32>, 28> = array<vec2<f32>, 28>(vec2<f32>(-1277f, 2118f), vec2<f32>(-1752f, 983f), vec2<f32>(1844f, -1140f), vec2<f32>(840f, -1555f), vec2<f32>(437f, -832f), vec2<f32>(1580f, -736f), vec2<f32>(-465f, -623f), vec2<f32>(-380f, -938f), vec2<f32>(-676f, 681f), vec2<f32>(-1684f, -625f), vec2<f32>(2521f, -112f), vec2<f32>(-1000f, -331f), vec2<f32>(-1073f, 892f), vec2<f32>(328f, -637f), vec2<f32>(-1074f, -512f), vec2<f32>(951f, 673f), vec2<f32>(-972f, 138f), vec2<f32>(-224f, 2114f), vec2<f32>(773f, -211f), vec2<f32>(929f, 267f), vec2<f32>(573f, -559f), vec2<f32>(-151f, 1180f), vec2<f32>(-114f, -2023f), vec2<f32>(634f, 1255f), vec2<f32>(-293f, 1000f), vec2<f32>(-127f, 819f), vec2<f32>(-1000f, 854f), vec2<f32>(-1242f, 228f));

var<private> global2: bool = false;

var<private> global3: array<vec3<u32>, 25>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    global1 = array<vec2<f32>, 28>();
    var var_0 = select(arg_0.a.a, _wgslsmith_sub_vec4_u32(~select(~u_input.c, vec4<u32>(1u, 9902u, u_input.a, 4294967295u), arg_0.a.d.x || arg_0.a.d.x), u_input.c), select(arg_0.a.d, select(vec4<bool>(true, select(arg_0.a.d.x, true, arg_0.a.d.x), arg_0.a.d.x & false, true & arg_0.a.d.x), select(!arg_0.a.d, vec4<bool>(arg_0.a.d.x, arg_0.a.d.x, arg_0.a.d.x, arg_0.a.d.x), vec4<bool>(true, true, true, true)), false), true));
    var var_1 = Struct_4(select(arg_0.a.d.zyw, !vec3<bool>(arg_0.a.c >= -1527f, false, any(vec2<bool>(false, false))), !arg_0.a.d.zzz), Struct_2(arg_0.a), arg_0.a.c);
    let var_2 = min(~vec3<u32>(1u, _wgslsmith_div_u32(_wgslsmith_mod_u32(arg_0.a.e.x, var_1.b.a.e.x), var_1.b.a.e.x), _wgslsmith_sub_u32(_wgslsmith_add_u32(var_0.x, 1u), arg_0.a.e.x)), ~(~_wgslsmith_mult_vec3_u32(var_0.yyx, global3[_wgslsmith_index_u32(~var_0.x, 25u)])));
    let var_3 = !arg_0.a.d.x;
    return arg_0;
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_2) -> vec2<i32> {
    global2 = all(arg_0) | (!arg_2.a.d.x == !any(func_2(Struct_2(arg_2.a)).a.d));
    global2 = true;
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-arg_2.a.b.x), ~(vec4<u32>(1u, _wgslsmith_mult_u32(u_input.c.x, u_input.a), 1u ^ u_input.c.x, arg_2.a.a.x) >> (vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.c.xw, vec2<u32>(arg_2.a.a.x, 0u)), ~u_input.a, abs(47802u), 1u) % vec4<u32>(32u))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(543f * _wgslsmith_f_op_f32(min(-2392f, 823f)))));
    global3 = array<vec3<u32>, 25>();
    return reverseBits(vec2<i32>(arg_1, u_input.b));
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: vec2<i32>, arg_3: i32) -> f32 {
    let var_0 = min(abs(abs(~vec3<i32>(-19336i, arg_2.x, -2147483647i))) >> (~vec3<u32>(~36808u, 14157u, 1u) % vec3<u32>(32u)), ~(-vec3<i32>(-arg_2.x, 1i, _wgslsmith_div_i32(arg_2.x, arg_2.x))));
    var var_1 = arg_0;
    global1 = array<vec2<f32>, 28>();
    var var_2 = Struct_4(select(!vec3<bool>(arg_1, all(vec2<bool>(true, arg_1)), false), vec3<bool>(!any(vec3<bool>(arg_1, false, true)), 1i >= ~arg_3, all(!vec3<bool>(true, true, arg_1))), true), func_2(func_2(func_2(Struct_2(Struct_1(u_input.c, vec3<f32>(-600f, var_1.x, arg_0.x), -835f, vec4<bool>(false, arg_1, false, arg_1), vec3<u32>(u_input.c.x, u_input.c.x, 0u)))))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(trunc(501f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.x))) - _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(floor(arg_0.x)))))));
    var var_3 = !arg_1;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1704f - 143f) + -1008f);
}

fn func_1() -> bool {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, 631f, -1427f)))), (7285i <= ~u_input.b) | any(vec2<bool>(true, true)), _wgslsmith_mult_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(2147483647i, 0i)), func_3(vec2<bool>(false, true), u_input.b, func_2(Struct_2(Struct_1(u_input.c, vec3<f32>(-371f, 704f, -928f), -1238f, vec4<bool>(false, true, true, false), u_input.c.zyx))))), -5302i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(465f, 115f, -472f) + vec3<f32>(-1017f, 935f, 306f))), true, vec2<i32>(u_input.b, u_input.b), u_input.b ^ u_input.b))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2065f, var_0.x, 906f, 145f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-213f, var_0.x, 1986f, -2068f))))));
    var var_2 = firstTrailingBit(u_input.c.xx);
    let var_3 = ~(~_wgslsmith_mult_vec4_u32(u_input.c, select(~vec4<u32>(u_input.a, 15871u, 1u, 1u), _wgslsmith_sub_vec4_u32(u_input.c, u_input.c), false)));
    var var_4 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -642f), -1000f)))), vec4<u32>(u_input.a, _wgslsmith_clamp_u32(101436u, ~var_2.x, 4675u), ~var_2.x >> (var_2.x % 32u), max(_wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, var_3.x), ~var_3.x), ~1u)));
    return _wgslsmith_f_op_f32(sign(var_4.a)) > var_1.x;
}

fn func_5(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: vec3<u32>) -> vec4<u32> {
    return firstTrailingBit(firstTrailingBit(~vec4<u32>(~4294967295u, ~u_input.a, func_2(Struct_2(Struct_1(vec4<u32>(arg_2.x, 39279u, arg_2.x, 1474u), vec3<f32>(arg_0.x, arg_0.x, -697f), arg_0.x, vec4<bool>(arg_1.x, arg_1.x, true, true), vec3<u32>(12207u, u_input.c.x, 8239u)))).a.a.x, _wgslsmith_div_u32(21035u, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-397f)), -1771f)), _wgslsmith_div_vec4_u32(~abs(u_input.c), vec4<u32>(u_input.c.x, 93279u, ~u_input.a, abs(11661u))));
    global0 = array<vec2<u32>, 13>();
    var var_1 = var_0.a;
    let var_2 = min(u_input.a, 4294967295u);
    global3 = array<vec3<u32>, 25>();
    var_1 = _wgslsmith_f_op_f32(1f - 334f);
    var var_3 = func_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a))), _wgslsmith_f_op_f32(floor(-1000f))) + global1[_wgslsmith_index_u32(var_0.b.x, 28u)]), !select(select(vec2<bool>(true, true), vec2<bool>(false, false), func_1()), !func_2(Struct_2(Struct_1(vec4<u32>(20138u, 0u, u_input.c.x, 1u), vec3<f32>(var_0.a, var_0.a, -809f), -627f, vec4<bool>(false, false, false, false), u_input.c.yzy))).a.d.ww, _wgslsmith_f_op_f32(trunc(227f)) != var_0.a), _wgslsmith_sub_vec3_u32(min(u_input.c.yzz, u_input.c.wyw), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.c.wxx, u_input.c.xwx), ~(~global3[_wgslsmith_index_u32(0u, 25u)]), u_input.c.wxy)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~47905u));
}

