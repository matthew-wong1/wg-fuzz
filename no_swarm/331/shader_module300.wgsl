struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
    c: u32,
    d: vec4<u32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_4;

var<private> global2: array<vec4<f32>, 11> = array<vec4<f32>, 11>(vec4<f32>(720f, -1337f, -770f, -127f), vec4<f32>(-794f, 194f, 735f, -372f), vec4<f32>(1717f, -736f, 355f, 365f), vec4<f32>(-806f, 1274f, 1552f, 645f), vec4<f32>(-2754f, 159f, -800f, 810f), vec4<f32>(-1476f, 716f, 553f, -1417f), vec4<f32>(394f, -2095f, -989f, -188f), vec4<f32>(603f, -1929f, -1228f, -786f), vec4<f32>(-251f, 113f, -374f, 2199f), vec4<f32>(-1000f, -1162f, 747f, 1261f), vec4<f32>(1749f, 497f, -703f, -590f));

var<private> global3: vec3<u32>;

var<private> global4: vec2<i32> = vec2<i32>(1i, 1i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32) -> i32 {
    var var_0 = ~(-1i);
    let var_1 = vec3<i32>(-1i, global1.b.d << (global0.x % 32u), global4.x);
    global4 = _wgslsmith_clamp_vec2_i32(-((~u_input.b.zy << (vec2<u32>(global3.x, 10037u) % vec2<u32>(32u))) >> (~(~arg_0) % vec2<u32>(32u))), vec2<i32>(_wgslsmith_dot_vec3_i32(max(u_input.b, ~var_1), reverseBits(~vec3<i32>(1i, -2147483647i, -1i))), _wgslsmith_add_i32(23947i << (abs(global1.b.c.x) % 32u), var_1.x)), -countOneBits(var_1.zz & u_input.b.yx) & select(firstTrailingBit(vec2<i32>(var_1.x, -1i)), reverseBits(var_1.zz | vec2<i32>(u_input.b.x, var_1.x)), !(global1.e.x || true)));
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1101f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.a.x + -1000f) + _wgslsmith_f_op_f32(-613f + 1247f)), 898f)), global1.b.a.x)));
    var var_3 = !global1.e.x;
    return ~_wgslsmith_mult_i32(_wgslsmith_mod_i32(1i, global4.x), -23196i);
}

fn func_2() -> vec4<i32> {
    var var_0 = -abs(u_input.b.x);
    let var_1 = func_3(_wgslsmith_clamp_vec2_u32(abs(global0.yx >> (global0.zz % vec2<u32>(32u))), u_input.d, global0.zx), 1u) << (global1.d.x % 32u);
    let var_2 = Struct_2(max(_wgslsmith_clamp_u32(4294967295u, ~(~42235u), u_input.d.x), ~abs(global3.x)), abs(vec3<u32>(global0.x, 0u, _wgslsmith_mult_u32(global3.x, 1u))), _wgslsmith_dot_vec3_i32(u_input.b, select(countOneBits(u_input.b), _wgslsmith_div_vec3_i32(vec3<i32>(1i, u_input.c.x, -41760i), vec3<i32>(16723i, -2147483647i, 2147483647i)), global1.e.wyz) | -abs(u_input.b)));
    global2 = array<vec4<f32>, 11>();
    var var_3 = u_input.b;
    return countOneBits(abs(~_wgslsmith_add_vec4_i32(vec4<i32>(var_3.x, global4.x, var_1, var_2.c), vec4<i32>(-5051i, 0i, 0i, u_input.b.x))) | min(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(global1.b.d, var_1, -2147483647i, u_input.b.x)), vec4<i32>(var_1, -2147483647i, 30767i, 6836i)), vec4<i32>(reverseBits(global1.b.d), _wgslsmith_sub_i32(var_1, var_1), 0i, 9040i)));
}

fn func_4(arg_0: f32, arg_1: vec3<f32>, arg_2: vec4<i32>) -> bool {
    let var_0 = reverseBits(vec2<i32>(2147483647i, u_input.b.x));
    var var_1 = Struct_2(~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(4294967295u, 1u, 18431u)), vec3<u32>(countOneBits(4294967295u), 7649u ^ global0.x, 4294967295u >> (global0.x % 32u))), global1.b.b.yxx, -18148i);
    global0 = vec3<u32>(~1u, global3.x, ~select(global3.x << (_wgslsmith_mult_u32(global1.a.x, 0u) % 32u), 0u, global1.e.x));
    var var_2 = Struct_2(global3.x, var_1.b, _wgslsmith_div_i32(14686i, ~_wgslsmith_clamp_i32(-39862i, 34435i, _wgslsmith_dot_vec3_i32(vec3<i32>(2324i, arg_2.x, -2393i), vec3<i32>(-25971i, global1.b.d, -1i)))));
    var var_3 = global1.e.x;
    return global1.e.x;
}

fn func_1() -> Struct_4 {
    global3 = u_input.a.wxy;
    var var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global1.b.a.x)), _wgslsmith_f_op_f32(global1.b.a.x * global1.b.a.x)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(global1.b.a.x))))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1358f)) + _wgslsmith_f_op_f32(-global1.b.a.x))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-281f, _wgslsmith_div_f32(global1.b.a.x, global1.b.a.x), global1.b.a.x)))), func_2());
    var var_1 = global1.e.yw;
    var var_2 = select(select(vec4<bool>(select(532f >= global1.b.a.x, false, false), !var_1.x, false, (u_input.b.x | -2147483647i) < -72734i), select(select(vec4<bool>(false, var_1.x, true, true), select(vec4<bool>(true, var_1.x, global1.e.x, true), global1.e, vec4<bool>(false, true, global1.e.x, var_1.x)), vec4<bool>(var_1.x, true, global1.e.x, false)), vec4<bool>(true, global1.b.a.x > 1019f, select(global1.e.x, var_1.x, false), true), global1.e), global1.e.x & true), select(global1.e, vec4<bool>(!global1.e.x, var_1.x, false, true), global1.e), var_1.x);
    var var_3 = vec3<bool>(true, var_2.x, all(!var_2.zyx));
    return Struct_4(vec2<u32>(~firstLeadingBit(global3.x), global0.x), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.a.x, -1345f, global1.b.a.x, global1.b.a.x) * vec4<f32>(global1.b.a.x, -120f, -1529f, -1120f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(772f, -2096f, -1176f, -252f)), any(var_2.wx)))), ~(~select(vec4<u32>(1u, global0.x, global0.x, global3.x), u_input.a, true)), vec4<u32>(~u_input.a.x, ~global0.x, global3.x, 1u), max(u_input.c.x, func_2().x >> (0u % 32u))), 1u, (vec4<u32>(~4294967295u, global0.x << (0u % 32u), _wgslsmith_clamp_u32(u_input.a.x, global3.x, 1u), global1.a.x) | (vec4<u32>(27762u, 20673u, u_input.a.x, global3.x) << (global1.d % vec4<u32>(32u)))) & global1.b.b, select(vec4<bool>(global1.b.a.x != global1.b.a.x, (global0.x > 0u) || var_3.x, all(vec3<bool>(global1.e.x, var_2.x, false)), true), vec4<bool>(false, var_3.x, true, true), global1.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global2 = array<vec4<f32>, 11>();
    var var_1 = _wgslsmith_dot_vec2_u32(~(~firstLeadingBit(u_input.d)), vec2<u32>(global3.x, u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(global1.b.a.x, ~func_3(vec2<u32>(global0.x, 4294967295u) & ~vec2<u32>(45148u, u_input.d.x), _wgslsmith_div_u32(~global1.c, select(u_input.a.x, global1.c, var_0.e.x))), firstTrailingBit(~_wgslsmith_div_u32(_wgslsmith_div_u32(1u, 4294967295u), abs(global1.d.x))));
}

