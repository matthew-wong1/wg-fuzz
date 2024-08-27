struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec3<bool>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<i32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec3<i32>, 23>;

var<private> global2: i32;

var<private> global3: i32;

var<private> global4: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(Struct_2(vec3<u32>(1u, 56611u, 47500u), Struct_1(2095i, vec2<bool>(true, false), -31147i, 17010u), vec3<bool>(true, true, false), true, Struct_1(42324i, vec2<bool>(true, false), 9812i, 4294967295u)), Struct_2(vec3<u32>(4294967295u, 16878u, 1u), Struct_1(-25723i, vec2<bool>(true, true), -22033i, 25772u), vec3<bool>(true, false, true), false, Struct_1(2147483647i, vec2<bool>(false, true), -1i, 30045u))), Struct_4(Struct_2(vec3<u32>(4294967295u, 39354u, 1u), Struct_1(28994i, vec2<bool>(false, true), 17781i, 1u), vec3<bool>(true, true, false), true, Struct_1(-24587i, vec2<bool>(false, false), -24525i, 34832u)), Struct_2(vec3<u32>(14887u, 0u, 1u), Struct_1(51i, vec2<bool>(true, false), 1i, 1u), vec3<bool>(false, true, true), false, Struct_1(1i, vec2<bool>(true, true), 49137i, 49315u))), Struct_4(Struct_2(vec3<u32>(12887u, 0u, 4294967295u), Struct_1(-34649i, vec2<bool>(true, false), 0i, 74516u), vec3<bool>(true, true, false), false, Struct_1(-27669i, vec2<bool>(true, false), 8458i, 18196u)), Struct_2(vec3<u32>(1u, 1u, 40004u), Struct_1(0i, vec2<bool>(false, true), 2371i, 4294967295u), vec3<bool>(true, true, false), false, Struct_1(14354i, vec2<bool>(false, false), 6983i, 72068u))), Struct_4(Struct_2(vec3<u32>(61760u, 76885u, 64626u), Struct_1(-1i, vec2<bool>(true, false), -7976i, 18716u), vec3<bool>(true, false, true), false, Struct_1(0i, vec2<bool>(true, false), 39583i, 52730u)), Struct_2(vec3<u32>(20617u, 4294967295u, 16763u), Struct_1(17120i, vec2<bool>(false, false), 0i, 0u), vec3<bool>(false, false, true), true, Struct_1(-1i, vec2<bool>(true, false), 42248i, 1u))), Struct_4(Struct_2(vec3<u32>(9975u, 4294967295u, 0u), Struct_1(9392i, vec2<bool>(false, true), 18992i, 0u), vec3<bool>(false, false, false), true, Struct_1(1i, vec2<bool>(false, true), i32(-2147483648), 7043u)), Struct_2(vec3<u32>(1u, 1u, 50603u), Struct_1(-1i, vec2<bool>(true, true), -19525i, 1u), vec3<bool>(false, false, false), true, Struct_1(2147483647i, vec2<bool>(true, true), 7368i, 70526u))), Struct_4(Struct_2(vec3<u32>(107077u, 2968u, 4294967295u), Struct_1(2147483647i, vec2<bool>(false, true), 1i, 4294967295u), vec3<bool>(false, true, true), true, Struct_1(-1i, vec2<bool>(true, false), -5773i, 4294967295u)), Struct_2(vec3<u32>(4294967295u, 1106u, 2233u), Struct_1(-7645i, vec2<bool>(false, true), 2147483647i, 82656u), vec3<bool>(true, true, false), true, Struct_1(-24270i, vec2<bool>(true, true), -1i, 36911u))), Struct_4(Struct_2(vec3<u32>(15022u, 4294967295u, 42378u), Struct_1(-1i, vec2<bool>(false, true), 0i, 45179u), vec3<bool>(true, false, false), false, Struct_1(1i, vec2<bool>(false, false), -3801i, 4294967295u)), Struct_2(vec3<u32>(0u, 1u, 0u), Struct_1(-11i, vec2<bool>(false, true), 2147483647i, 0u), vec3<bool>(true, true, false), true, Struct_1(-1i, vec2<bool>(false, false), i32(-2147483648), 48252u))), Struct_4(Struct_2(vec3<u32>(12980u, 15471u, 2362u), Struct_1(0i, vec2<bool>(true, true), 51630i, 1u), vec3<bool>(true, false, true), true, Struct_1(-45586i, vec2<bool>(true, true), 2147483647i, 1u)), Struct_2(vec3<u32>(28476u, 28442u, 4294967295u), Struct_1(18528i, vec2<bool>(false, false), 28952i, 4568u), vec3<bool>(true, true, true), true, Struct_1(21967i, vec2<bool>(true, true), i32(-2147483648), 51410u))), Struct_4(Struct_2(vec3<u32>(3863u, 1u, 60890u), Struct_1(-1i, vec2<bool>(true, true), 0i, 20793u), vec3<bool>(false, true, false), false, Struct_1(2147483647i, vec2<bool>(true, true), 4555i, 0u)), Struct_2(vec3<u32>(1u, 104907u, 49448u), Struct_1(2147483647i, vec2<bool>(false, false), 22258i, 27984u), vec3<bool>(false, false, false), false, Struct_1(1i, vec2<bool>(true, true), -55934i, 1u))));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1() -> Struct_1 {
    return Struct_1(_wgslsmith_div_i32(abs(-19938i), i32(-1i) * -u_input.a), !vec2<bool>(u_input.c.x <= 1i, true), -(reverseBits(17479i) ^ (u_input.e | u_input.a)) ^ -u_input.a, ~(~37712u));
}

fn func_3() -> vec3<u32> {
    let var_0 = true;
    var var_1 = ~abs(~vec2<u32>(2340u, ~4294967295u));
    var var_2 = Struct_1((u_input.c.x & -11010i) ^ _wgslsmith_sub_i32(~(-13760i), -13503i), !select(vec2<bool>(any(vec4<bool>(var_0, false, false, var_0)), any(vec4<bool>(var_0, var_0, var_0, true))), select(select(vec2<bool>(true, true), vec2<bool>(true, var_0), vec2<bool>(false, true)), vec2<bool>(true, true), var_0), select(vec2<bool>(var_0, true), vec2<bool>(var_0, true), true)), reverseBits(-_wgslsmith_clamp_i32(~(-44026i), ~(-53008i), 20678i)), ~_wgslsmith_sub_u32(1u, ~u_input.d.x));
    var var_3 = var_2.c;
    var_1 = _wgslsmith_div_vec2_u32(select(_wgslsmith_sub_vec2_u32(u_input.d.wx >> (u_input.d.wz % vec2<u32>(32u)), firstTrailingBit(u_input.d.wz)), vec2<u32>(817u, 67469u), var_0 != !var_2.b.x), u_input.d.xy);
    return u_input.d.zyy;
}

fn func_2(arg_0: f32) -> Struct_3 {
    let var_0 = Struct_2(vec3<u32>(max(_wgslsmith_div_u32(u_input.d.x, u_input.b), ~u_input.b), _wgslsmith_mod_u32(6976u, ~0u), ~u_input.b) & func_3(), func_1(), select(vec3<bool>(func_1().b.x, true, true | select(false, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), arg_0 != -1000f), true), vec3<bool>(true, true, true)), true, func_1());
    let var_1 = _wgslsmith_add_vec3_u32(select(~vec3<u32>(1u, 4294967295u, u_input.d.x), ~_wgslsmith_add_vec3_u32(~var_0.a, u_input.d.yzy), select(var_0.c, !vec3<bool>(var_0.e.b.x, var_0.c.x, false), vec3<bool>(true, all(vec3<bool>(var_0.b.b.x, var_0.c.x, true)), any(var_0.b.b)))), vec3<u32>(0u, u_input.d.x, countOneBits(~10779u)) ^ u_input.d.yxz);
    let var_2 = all(!select(select(!vec4<bool>(var_0.d, true, false, var_0.e.b.x), !vec4<bool>(var_0.d, true, false, var_0.c.x), !vec4<bool>(var_0.d, var_0.b.b.x, false, false)), vec4<bool>(-1000f < arg_0, false, true, any(vec2<bool>(var_0.d, var_0.b.b.x))), true));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(-arg_0)) + vec4<f32>(arg_0, arg_0, arg_0, _wgslsmith_f_op_f32(ceil(arg_0)))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(354f, -719f, _wgslsmith_f_op_f32(ceil(arg_0)), arg_0), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, 1878f) - vec4<f32>(944f, 633f, 381f, arg_0)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-110f, -588f, arg_0, arg_0), vec4<f32>(532f, 615f, arg_0, arg_0), vec4<bool>(var_0.d, false, false, var_2))))), vec4<bool>(select(true, false, false), all(vec3<bool>(true, var_0.c.x, true)), func_1().b.x, var_2)))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1877f), arg_0, 116f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, arg_0)))));
    var var_4 = Struct_2(var_1, var_0.b, vec3<bool>(all(select(var_0.c.yz, vec2<bool>(var_2, var_0.c.x), true)), true, any(vec2<bool>(true, false))), var_2, var_0.b);
    return Struct_3(_wgslsmith_mult_vec3_u32(~max(~var_1, firstLeadingBit(u_input.d.xyy)), abs(abs(u_input.d.yxy))));
}

fn func_4(arg_0: Struct_3) -> vec2<bool> {
    let var_0 = func_1();
    let var_1 = ~(~abs(4294967295u));
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4[_wgslsmith_index_u32(14580u, 9u)];
    let var_1 = ~u_input.d;
    global1 = array<vec3<i32>, 23>();
    var var_2 = 1u;
    let var_3 = func_1();
    var var_4 = _wgslsmith_div_u32(var_1.x, u_input.b);
    let var_5 = select(!func_4(func_2(_wgslsmith_f_op_f32(select(-870f, -640f, var_0.b.b.b.x)))), select(select(vec2<bool>(select(true, var_3.b.x, var_3.b.x), true), func_1().b, vec2<bool>(false, var_3.c > 1402i)), vec2<bool>(25538i >= ~u_input.e, var_0.a.e.c == (-24553i >> (u_input.d.x % 32u))), !vec2<bool>(var_0.b.e.b.x, all(var_3.b))), false);
    let var_6 = func_2(_wgslsmith_f_op_f32(1140f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1664f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-490f))))));
    var var_7 = countOneBits(vec3<i32>(var_3.a, var_0.b.e.c, var_0.a.b.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(~vec4<i32>(abs(var_3.a), _wgslsmith_sub_i32(var_0.a.e.a, -2147483647i), 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_0.b.e.a), vec2<i32>(-9737i, var_3.a))), ~_wgslsmith_add_vec4_i32(vec4<i32>(var_7.x, var_0.a.e.c, 77694i, -2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.e, 29574i, var_0.b.e.a, 2147483647i), vec4<i32>(var_7.x, u_input.a, var_3.a, var_7.x)))), -203f, vec4<i32>(-1i, _wgslsmith_div_i32(40314i, var_0.b.b.c >> (0u % 32u)), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(2147483647i, var_0.a.e.a, var_3.c), reverseBits(vec3<i32>(-1i, 2147483647i, var_0.b.e.c))), ~(-global1[_wgslsmith_index_u32(var_0.b.b.d, 23u)])), var_0.b.e.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(237f * -2448f)))), vec3<i32>(_wgslsmith_add_i32(1i, min(~var_3.a, select(u_input.a, var_7.x, false))), var_3.a ^ ~firstLeadingBit(31363i), ~(-var_3.c)));
}

