struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 66965u;

var<private> global1: array<vec3<bool>, 9>;

var<private> global2: array<vec3<bool>, 13> = array<vec3<bool>, 13>(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = max(_wgslsmith_mod_i32(-_wgslsmith_clamp_i32(-arg_0, u_input.b.x, firstLeadingBit(-21547i)), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, arg_0, arg_0), u_input.b.yyz), _wgslsmith_mod_vec3_i32(u_input.b.xxw, vec3<i32>(u_input.b.x, -2147483647i, arg_0))), 25446i)), arg_0);
    let var_1 = Struct_1((_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 1u), vec2<u32>(u_input.c, 1u)), ~121830u) & u_input.c) << ((26465u << (u_input.c % 32u)) % 32u), vec2<u32>(abs(u_input.c), ~u_input.c), ~u_input.b.xww, u_input.b.yw, select(u_input.b << (vec4<u32>(~u_input.c, max(u_input.c, 17625u), ~4294967295u, u_input.c) % vec4<u32>(32u)), u_input.b, vec4<bool>(true, true, true && all(vec4<bool>(false, false, false, true)), true)));
    var var_2 = var_1.c.x;
    global0 = abs(1u);
    let var_3 = var_1;
    return _wgslsmith_mult_i32(firstLeadingBit(10225i), _wgslsmith_div_i32(var_0, var_0));
}

fn func_2() -> f32 {
    global2 = array<vec3<bool>, 13>();
    var var_0 = Struct_1(u_input.c, vec2<u32>(u_input.c, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, u_input.c), vec2<u32>(19445u, 9824u))), vec3<i32>(1i << ((u_input.c ^ u_input.c) % 32u), firstLeadingBit(-1i), _wgslsmith_mod_i32(0i, u_input.a) & u_input.b.x) << (~_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(u_input.c, 4294967295u, 9227u)), ~vec3<u32>(u_input.c, u_input.c, u_input.c)) % vec3<u32>(32u)), u_input.b.wx, vec4<i32>(u_input.a, abs(u_input.b.x), -899i, -2147483647i) >> (vec4<u32>(~57137u, u_input.c, u_input.c, _wgslsmith_mult_u32(u_input.c, ~1u)) % vec4<u32>(32u)));
    let var_1 = 4294967295u;
    var var_2 = Struct_1(var_0.b.x, var_0.b, u_input.b.xxz, var_0.e.wy, vec4<i32>(-21501i, (func_3(u_input.b.x) >> (~1u % 32u)) & u_input.b.x, firstLeadingBit(var_0.d.x), var_0.e.x));
    let var_3 = min(_wgslsmith_add_vec2_i32(~(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, var_0.e.x), u_input.b.yz, vec2<i32>(u_input.b.x, -969i)) ^ vec2<i32>(u_input.a, var_0.c.x)), ~vec2<i32>(var_2.d.x, var_2.d.x) ^ _wgslsmith_mult_vec2_i32(~var_2.d, -vec2<i32>(23496i, var_2.d.x))), var_0.e.zx);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1432f, 1875f))))))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: i32) -> vec4<bool> {
    var var_0 = select(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), false)), select(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(false, true), true), true), !vec2<bool>(47623u <= u_input.c, any(vec3<bool>(false, false, true))), vec2<bool>(any(vec4<bool>(true, true, true, true)), all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false))))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(false, true, false)), true), vec2<bool>(true, true)), !vec2<bool>(true, all(vec3<bool>(false, false, false)))));
    var var_1 = max(vec2<i32>(~(-u_input.b.x), func_3(~35260i)), vec2<i32>(arg_2, 5679i));
    global1 = array<vec3<bool>, 9>();
    global2 = array<vec3<bool>, 13>();
    let var_2 = arg_1.x;
    return !vec4<bool>(((2147483647i & arg_2) | ~2147483647i) <= u_input.b.x, all(select(vec2<bool>(var_0.x, true), !vec2<bool>(var_0.x, true), true)), !any(vec4<bool>(false, false, true, false)), var_0.x);
}

fn func_1() -> Struct_1 {
    let var_0 = select(func_4(~(vec4<i32>(-1i) * -u_input.b), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), 443f, _wgslsmith_f_op_f32(-1025f + _wgslsmith_f_op_f32(-789f * -362f))), u_input.b.x), vec4<bool>(all(vec2<bool>(true, true)), false == select(true, select(false, true, false), true), true, true), vec4<bool>(all(global1[_wgslsmith_index_u32(~reverseBits(u_input.c), 9u)]), true, true, true));
    global2 = array<vec3<bool>, 13>();
    let var_1 = u_input.b.zwz & firstLeadingBit(_wgslsmith_div_vec3_i32(u_input.b.yyx, ~_wgslsmith_clamp_vec3_i32(vec3<i32>(-26673i, u_input.b.x, u_input.a), vec3<i32>(u_input.b.x, 0i, u_input.b.x), vec3<i32>(u_input.a, -2147483647i, u_input.b.x))));
    global1 = array<vec3<bool>, 9>();
    let var_2 = Struct_1(~abs(~(~1u)), vec2<u32>(1u, _wgslsmith_sub_u32(u_input.c, _wgslsmith_add_u32(1u, 63852u))), _wgslsmith_mult_vec3_i32(~vec3<i32>(~0i, -35640i, _wgslsmith_sub_i32(u_input.a, 1i)), select(firstTrailingBit(max(vec3<i32>(var_1.x, var_1.x, u_input.b.x), vec3<i32>(var_1.x, u_input.a, 0i))), vec3<i32>(countOneBits(3029i), -18399i, 0i), !(var_0.x || false))), _wgslsmith_div_vec2_i32(abs(var_1.yz), -(vec2<i32>(u_input.a, 2147483647i) | _wgslsmith_add_vec2_i32(u_input.b.xz, u_input.b.yw))), u_input.b);
    return var_2;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = func_1();
    let var_1 = select(~(~vec4<i32>(firstTrailingBit(arg_0.e.x), ~u_input.b.x, -u_input.a, i32(-1i) * -1i)), vec4<i32>(_wgslsmith_sub_i32(u_input.b.x >> (var_0.b.x % 32u), -arg_0.c.x) >> (1u % 32u), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(var_0.e.xwx & vec3<i32>(-2147483647i, var_0.d.x, var_0.d.x), ~u_input.b.ywy), var_0.e.wwy), -abs(53827i), -1i), all(vec2<bool>(all(select(vec4<bool>(true, true, arg_1.x, false), vec4<bool>(false, true, true, arg_1.x), arg_1)), func_4(select(vec4<i32>(5407i, 26417i, 1i, arg_0.d.x), var_0.e, arg_1.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 779f, -1318f), vec3<f32>(193f, 1336f, -1000f), false)), u_input.b.x).x)));
    var var_2 = vec2<i32>(_wgslsmith_mult_i32(var_1.x, var_1.x), -(~var_1.x));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 13>();
    var var_0 = u_input.c;
    let var_1 = true;
    var_0 = ~u_input.c;
    let var_2 = func_5(func_1(), vec4<bool>(any(func_4(u_input.b, _wgslsmith_div_vec3_f32(vec3<f32>(748f, -931f, 1127f), vec3<f32>(1020f, -1616f, 1473f)), -2147483647i).xw), true, var_1, _wgslsmith_div_i32(u_input.a, u_input.b.x) <= u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b, var_2.e.x, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1638f, -134f, -162f), vec3<f32>(-726f, 309f, 1232f))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-281f, -782f, 2974f))))))), u_input.b.zwx);
}

