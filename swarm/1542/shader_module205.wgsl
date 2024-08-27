struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: bool,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
    c: vec4<bool>,
    d: vec2<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<u32>(1u, 50403u, 1u), 12647i, vec2<i32>(-12501i, -3932i), true);

var<private> global1: array<Struct_3, 25>;

var<private> global2: u32 = 0u;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1149f) + vec2<f32>(219f, 1000f)))))), _wgslsmith_mod_vec4_u32(abs(~select(vec4<u32>(u_input.e.x, 49627u, 67910u, u_input.e.x), vec4<u32>(0u, u_input.b.x, 4661u, global0.a.x), global0.d)), ~((vec4<u32>(1u, 3942u, global0.a.x, 17583u) & vec4<u32>(u_input.e.x, u_input.b.x, 50894u, global0.a.x)) << (firstTrailingBit(vec4<u32>(global0.a.x, u_input.b.x, global0.a.x, 4294967295u)) % vec4<u32>(32u)))), global0.d);
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~(1u | var_0.b.x), (u_input.b.x >> (_wgslsmith_div_u32(countOneBits(global0.a.x), u_input.e.x) % 32u)) & _wgslsmith_div_u32(4294967295u, ~u_input.b.x)), 25u)];
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -685f);
    let var_2 = !vec2<bool>(global0.d, all(vec4<bool>(true, any(vec4<bool>(true, global0.d, true, true)), select(global0.d, var_0.c, false), var_0.a.x < var_1)));
    global2 = _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(var_0.b, select(var_0.b, var_0.b, var_2.x)), ~(~var_0.b)), ~var_0.b);
    return ~u_input.a.x;
}

fn func_2() -> i32 {
    var var_0 = all(!vec4<bool>(-u_input.d >= _wgslsmith_sub_i32(u_input.c, global0.b), !global0.d, true || any(vec3<bool>(global0.d, global0.d, false)), u_input.c <= 2147483647i));
    global2 = u_input.b.x;
    let var_1 = Struct_3(~_wgslsmith_clamp_vec3_u32(abs(global0.a), u_input.b, ~(vec3<u32>(9138u, u_input.e.x, u_input.e.x) >> (u_input.e % vec3<u32>(32u)))), _wgslsmith_dot_vec3_i32(u_input.a.zyy, min(u_input.a.xxy ^ vec3<i32>(u_input.a.x, global0.c.x, u_input.c), reverseBits(u_input.a.xzx))) | _wgslsmith_mult_i32(1i, ~_wgslsmith_add_i32(u_input.c, -2147483647i)), vec2<i32>(-41317i, -20376i), global0.d);
    let var_2 = vec3<i32>(_wgslsmith_mod_i32(i32(-1i) * -(~0i), i32(-1i) * -84212i), i32(-1i) * -func_3(), _wgslsmith_dot_vec4_i32(~(~(~vec4<i32>(1i, var_1.c.x, u_input.c, -5839i))), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(0i, 8964i, global0.b, global0.c.x), u_input.a)));
    var var_3 = Struct_3(countOneBits(select(var_1.a, min(var_1.a ^ var_1.a, vec3<u32>(43682u, var_1.a.x, 8699u)), all(!vec3<bool>(true, global0.d, global0.d)))), u_input.c, select(select(u_input.a.wy, vec2<i32>(var_2.x >> (global0.a.x % 32u), 18143i), all(vec4<bool>(var_1.d, var_1.d, var_1.d, false)) | true), var_1.c, !(!select(vec2<bool>(true, false), vec2<bool>(var_1.d, var_1.d), var_1.d))), !global0.d && false);
    return 77737i;
}

fn func_1() -> Struct_2 {
    let var_0 = -vec4<i32>((u_input.c ^ global0.c.x) & _wgslsmith_add_i32(u_input.d | 0i, u_input.c >> (48550u % 32u)), min(global0.b, 0i), _wgslsmith_add_i32(global0.b, abs(global0.b) | -global0.b), _wgslsmith_clamp_i32(func_2() >> (abs(12235u) % 32u), -(u_input.d | global0.c.x), -global0.c.x));
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global0.a.x, 1u), 25u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1f), -912f) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, -1308f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-614f, -595f)), vec2<f32>(_wgslsmith_f_op_f32(select(-474f, -816f, false)), _wgslsmith_f_op_f32(-1201f - 391f)))));
    var var_2 = Struct_3(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.a.x, global0.a.x, global0.a.x), u_input.b), u_input.b, u_input.b), ~global0.a << ((vec3<u32>(u_input.e.x, u_input.e.x, 1u) & vec3<u32>(96846u, 0u, 0u)) % vec3<u32>(32u))) ^ _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(global0.a, u_input.b), vec3<u32>(~u_input.e.x, 4294967295u, abs(global0.a.x))), -firstTrailingBit(max(1i, var_0.x)), var_0.zy, all(vec2<bool>(false, any(!vec4<bool>(true, false, global0.d, global0.d)))));
    global1 = array<Struct_3, 25>();
    return Struct_2(_wgslsmith_sub_i32(13278i, reverseBits(countOneBits(0i))), Struct_1(var_1, ~_wgslsmith_mult_vec4_u32(vec4<u32>(global0.a.x, 1u, 63795u, 32636u), firstTrailingBit(vec4<u32>(4294967295u, u_input.b.x, 4110u, 0u))), true), global0.a);
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: i32, arg_3: u32) -> Struct_2 {
    let var_0 = _wgslsmith_mod_u32(~reverseBits(~func_1().c.x), 1u);
    global2 = u_input.b.x;
    let var_1 = global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(countOneBits(arg_0.b.b.wwz), vec3<u32>(72318u, 4294967295u, var_0))), 25u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1944f))), 504f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.a.x - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(723f, arg_0.b.a.x)))), -1000f));
    let var_3 = !(!(!select(vec2<bool>(true, global0.d), !vec2<bool>(global0.d, var_1.d), true)));
    return func_1();
}

fn func_5(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: Struct_4) -> Struct_1 {
    global0 = global1[_wgslsmith_index_u32(min(firstTrailingBit(~(~_wgslsmith_mod_u32(4294967295u, 4294967295u))), firstTrailingBit(~(~(global0.a.x ^ arg_3.a.x)))), 25u)];
    return func_1().b;
}

fn func_6(arg_0: Struct_1) -> Struct_3 {
    global0 = Struct_3(~(_wgslsmith_add_vec3_u32(func_4(Struct_2(global0.c.x, arg_0, global0.a), arg_0.c, -2147483647i, 5424u).c, global0.a & vec3<u32>(4294967295u, u_input.e.x, 4294967295u)) >> (_wgslsmith_add_vec3_u32(func_1().c, vec3<u32>(0u, 1u, 36528u)) % vec3<u32>(32u))), ~global0.c.x, vec2<i32>(2147483647i, u_input.d) ^ global0.c, !global0.d);
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global0.a, select(arg_0.b.wwz, ~vec3<u32>(0u, u_input.e.x, u_input.b.x) ^ u_input.e, true)) ^ 77995u, 25u)];
    global1 = array<Struct_3, 25>();
    var var_0 = 2147483647i;
    global2 = ~u_input.e.x;
    return Struct_3(vec3<u32>(global0.a.x, 13271u, func_1().b.b.x), abs(~(~_wgslsmith_sub_i32(79358i, 24964i))), vec2<i32>(~global0.c.x, 1i), u_input.c <= global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(~vec3<u32>(u_input.e.x, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(17525u, u_input.b.x, u_input.e.x, global0.a.x) << (vec4<u32>(0u, 1u, u_input.b.x, global0.a.x) % vec4<u32>(32u)), vec4<u32>(global0.a.x, u_input.e.x, 17309u, 60401u))), 16549i, vec2<i32>(-1i, i32(-1i) * -2147483647i), global0.d);
    global0 = func_6(func_5(func_4(func_1(), true, func_1().a, ~39228u), firstLeadingBit(~countOneBits(vec3<i32>(u_input.d, u_input.d, 11495i))), Struct_4(_wgslsmith_clamp_vec2_u32(countOneBits(global0.a.xx), _wgslsmith_sub_vec2_u32(u_input.b.xx, vec2<u32>(4294967295u, u_input.e.x)), vec2<u32>(94499u, 76944u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -448f), 1000f)), vec4<bool>(false, global0.a.x <= u_input.b.x, true, any(vec4<bool>(false, true, false, global0.d))), vec2<i32>(min(u_input.c, -1i), 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(772f - -1000f))), Struct_4(abs(u_input.e.xy) ^ func_1().c.yy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1516f) * -1154f), select(vec4<bool>(true, global0.d, false, false), select(vec4<bool>(global0.d, global0.d, true, false), vec4<bool>(false, true, global0.d, global0.d), vec4<bool>(global0.d, false, false, global0.d)), any(vec3<bool>(global0.d, false, global0.d))), ~u_input.a.zw, _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(664f - -1073f))))));
    let var_0 = -858f;
    global1 = array<Struct_3, 25>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) - vec2<f32>(var_0, -1019f)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0, var_0)))) - vec2<f32>(var_0, var_0)))), firstTrailingBit(~(~(~vec4<u32>(59245u, 0u, u_input.e.x, 26318u)))), !any(vec4<bool>(global0.d & global0.d, true, global0.d, true)));
    let var_2 = global1[_wgslsmith_index_u32(1u, 25u)];
    let var_3 = Struct_2(reverseBits(reverseBits(_wgslsmith_add_i32(16988i, -20728i))), func_1().b, _wgslsmith_clamp_vec3_u32(global0.a, min(global0.a, abs(u_input.b)), func_4(Struct_2(_wgslsmith_mult_i32(-2147483647i, 0i), Struct_1(vec2<f32>(var_1.a.x, 747f), vec4<u32>(u_input.b.x, 42275u, 1u, 4294967295u), false), var_1.b.yzz), any(vec2<bool>(var_1.c, var_2.d)), func_3(), _wgslsmith_mult_u32(~66586u, var_2.a.x)).c));
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.a), _wgslsmith_mult_vec4_u32(select(~vec4<u32>(34784u, var_3.c.x, 20383u, var_2.a.x), vec4<u32>(u_input.b.x, u_input.e.x, global0.a.x, 31003u), true) & ~var_3.b.b, var_1.b), var_3.b.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(var_4.b.yy, global0.a.xy), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(835f, var_0, var_3.b.a.x, var_0)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.a.x, -2294f, var_4.a.x, var_1.a.x), vec4<f32>(-428f, var_0, 1360f, -762f))))))), vec2<i32>(var_2.c.x, i32(-1i) * -37316i), _wgslsmith_dot_vec2_u32(var_2.a.xx | _wgslsmith_mod_vec2_u32(vec2<u32>(47443u, var_1.b.x), vec2<u32>(var_3.b.b.x, var_2.a.x)), _wgslsmith_clamp_vec2_u32(~var_2.a.zz, _wgslsmith_mod_vec2_u32(vec2<u32>(var_3.c.x, var_1.b.x), vec2<u32>(var_4.b.x, 4294967295u)), global0.a.zy)), ~vec3<i32>(firstTrailingBit(var_3.a), ~_wgslsmith_mult_i32(u_input.d, -2147483647i), (i32(-1i) * -1i) >> (var_4.b.x % 32u)));
}

