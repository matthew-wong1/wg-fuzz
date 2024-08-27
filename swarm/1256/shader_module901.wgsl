struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, vec2<i32>(-28727i, 51873i), vec3<i32>(-32970i, 38084i, 1i), vec2<i32>(37470i, -12526i), 28766u);

var<private> global1: array<vec3<u32>, 30> = array<vec3<u32>, 30>(vec3<u32>(76964u, 4294967295u, 4294967295u), vec3<u32>(9419u, 1u, 4294967295u), vec3<u32>(140806u, 4294967295u, 0u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(5313u, 3632u, 30772u), vec3<u32>(4294967295u, 29027u, 51275u), vec3<u32>(1u, 0u, 0u), vec3<u32>(4294967295u, 42875u, 1u), vec3<u32>(37161u, 0u, 41096u), vec3<u32>(4294967295u, 24054u, 1u), vec3<u32>(1u, 3744u, 71038u), vec3<u32>(3039u, 27738u, 0u), vec3<u32>(1u, 10678u, 0u), vec3<u32>(0u, 32811u, 1u), vec3<u32>(79072u, 56996u, 4294967295u), vec3<u32>(13295u, 9402u, 4294967295u), vec3<u32>(1u, 1u, 0u), vec3<u32>(1u, 19141u, 4294967295u), vec3<u32>(1u, 22594u, 45805u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(23191u, 50360u, 0u), vec3<u32>(62755u, 30066u, 1u), vec3<u32>(4294967295u, 54917u, 25375u), vec3<u32>(35234u, 0u, 30872u), vec3<u32>(41290u, 0u, 0u), vec3<u32>(37907u, 1u, 0u), vec3<u32>(35087u, 2926u, 25057u), vec3<u32>(11979u, 0u, 30244u), vec3<u32>(0u, 67711u, 4294967295u), vec3<u32>(10525u, 30155u, 29878u));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> bool {
    var var_0 = Struct_4(Struct_1(!global0.a, _wgslsmith_mult_vec2_i32(global0.d, vec2<i32>(33037i, _wgslsmith_sub_i32(u_input.a, 0i))), vec3<i32>(u_input.a, 2147483647i, u_input.a), firstTrailingBit(~global0.b), u_input.b));
    var var_1 = Struct_4(Struct_1(true, abs(-firstTrailingBit(var_0.a.c.xy)), select(var_0.a.c, var_0.a.c | global0.c, global0.a), abs(vec2<i32>(3468i, -1i & u_input.a)), ~u_input.b));
    var var_2 = 4294967295u;
    var var_3 = _wgslsmith_mod_u32(10618u, 76894u);
    global0 = Struct_1(select(all(select(select(vec4<bool>(false, true, false, false), vec4<bool>(global0.a, var_1.a.a, global0.a, var_1.a.a), false), vec4<bool>(global0.a, false, true, var_0.a.a), any(vec3<bool>(true, false, true)))), false, true), _wgslsmith_div_vec2_i32(firstTrailingBit(~var_0.a.c.yx ^ (vec2<i32>(var_1.a.b.x, var_0.a.b.x) | vec2<i32>(u_input.a, u_input.a))), max(vec2<i32>(~0i, 26990i), var_0.a.b)), var_0.a.c, _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(var_0.a.b, _wgslsmith_mod_vec2_i32(vec2<i32>(-10538i, 0i), vec2<i32>(var_0.a.b.x, 1397i))), -_wgslsmith_mult_vec2_i32(global0.c.zy, var_0.a.b)) >> (~(~vec2<u32>(global0.e, u_input.c)) % vec2<u32>(32u)), 1u);
    return !(!select(true, !var_0.a.a & any(vec3<bool>(false, true, false)), global0.a));
}

fn func_2(arg_0: bool, arg_1: u32) -> vec4<i32> {
    var var_0 = Struct_5(22901u, Struct_1(func_3(), _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(global0.d, global0.b), global0.b), reverseBits(global0.c.xx)), ~(~max(vec3<i32>(2147483647i, 0i, global0.d.x), vec3<i32>(global0.c.x, 53982i, global0.b.x))), vec2<i32>(u_input.a, ~(i32(-1i) * -14963i)), u_input.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(-196f, 370f), -791f, _wgslsmith_f_op_f32(582f + 467f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(194f, 1584f, -1000f))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-853f, 935f, -496f)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-484f, 219f), _wgslsmith_f_op_f32(abs(-1044f)), -492f))));
    let var_1 = Struct_4(var_0.b);
    let var_2 = vec3<u32>(global0.e, var_0.a, 1u) | _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(global1[_wgslsmith_index_u32((24469u >> (arg_1 % 32u)) ^ global0.e, 30u)], global1[_wgslsmith_index_u32(1u, 30u)]), _wgslsmith_div_vec3_u32(select(global1[_wgslsmith_index_u32(~39509u, 30u)], firstLeadingBit(global1[_wgslsmith_index_u32(55155u, 30u)]), var_1.a.a), global1[_wgslsmith_index_u32(41074u, 30u)]));
    return -firstTrailingBit(vec4<i32>(~global0.d.x, 1i, 0i, global0.d.x >> (arg_1 % 32u)) | vec4<i32>(~global0.c.x, 2147483647i, -20390i, -17777i));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3, arg_2: Struct_2, arg_3: i32) -> i32 {
    global0 = Struct_1(all(select(vec4<bool>(!global0.a, true, false, all(vec4<bool>(true, true, false, global0.a))), select(vec4<bool>(arg_1.b.a, arg_0.b.a, true, arg_2.d.a), vec4<bool>(true, global0.a, arg_0.b.a, global0.a), vec4<bool>(arg_1.e.d.a, global0.a, arg_0.b.a, true)), !(!vec4<bool>(arg_0.b.a, arg_1.d, false, arg_1.d)))), -func_2(!arg_2.d.a == any(vec3<bool>(false, arg_2.d.a, false)), ~84301u).xy, vec3<i32>(max(abs(global0.b.x), arg_2.d.d.x), _wgslsmith_mult_i32(min(-1i, global0.c.x), 62222i), 0i) | _wgslsmith_mult_vec3_i32(abs(vec3<i32>(arg_2.c, u_input.a, arg_3) | arg_1.e.d.c), vec3<i32>(-1917i, -4397i, arg_1.b.c.x) << (~vec3<u32>(0u, arg_2.b.x, arg_0.a) % vec3<u32>(32u))), select(-global0.d, arg_1.e.d.b, any(select(vec4<bool>(true, global0.a, global0.a, true), vec4<bool>(global0.a, global0.a, arg_1.e.d.a, arg_1.d), arg_0.b.a)) && !arg_1.b.a), global0.e);
    let var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(select(~87332u, abs(arg_0.b.e), true), _wgslsmith_sub_u32(countOneBits(arg_2.d.e), 4294967295u >> (arg_2.d.e % 32u)), u_input.b, select(1u, 868u, true)), vec4<u32>(_wgslsmith_mod_u32(~_wgslsmith_clamp_u32(arg_0.b.e, global0.e, arg_1.e.b.x), ~(~arg_1.e.b.x)), ~u_input.b, arg_0.b.e, arg_0.b.e));
    global0 = Struct_1(all(select(select(vec4<bool>(true, global0.a, false, arg_0.b.a), !vec4<bool>(false, arg_1.a, true, false), !arg_2.d.a), select(!vec4<bool>(arg_1.d, arg_2.d.a, false, arg_2.d.a), select(vec4<bool>(global0.a, true, true, global0.a), vec4<bool>(false, true, arg_2.d.a, arg_0.b.a), vec4<bool>(true, false, arg_0.b.a, true)), arg_0.b.a), !(!vec4<bool>(true, true, global0.a, true)))), arg_1.b.d, vec3<i32>(global0.c.x ^ -(~arg_1.e.d.b.x), global0.c.x, 0i), _wgslsmith_mult_vec2_i32(arg_2.d.c.xx, select(arg_2.d.c.yz, vec2<i32>(1i, 17016i), vec2<bool>(true, true)) & vec2<i32>(43246i, 6375i)) >> (~abs(arg_1.e.b.zx) % vec2<u32>(32u)), arg_2.d.e);
    let var_1 = _wgslsmith_div_vec4_i32(max(vec4<i32>(arg_1.c.x, -(-25421i << (arg_2.b.x % 32u)), arg_2.c, abs(-u_input.a)), max(vec4<i32>(arg_3, ~arg_3, min(2147483647i, arg_0.b.b.x), _wgslsmith_add_i32(arg_1.b.b.x, 5523i)), firstLeadingBit(arg_1.c) & arg_1.c)), firstTrailingBit(_wgslsmith_div_vec4_i32(~(~arg_1.c), arg_1.c)));
    var var_2 = arg_2.d;
    return ~_wgslsmith_mult_i32(var_1.x, -_wgslsmith_div_i32(-77361i, arg_1.b.b.x));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_5) -> Struct_2 {
    global0 = Struct_1(func_4(Struct_5(1u, arg_1.d, vec3<f32>(147f, arg_3.c.x, -1129f)), Struct_3(arg_3.c.x >= arg_3.c.x, Struct_1(true, vec2<i32>(arg_1.c, -2147483647i), vec3<i32>(arg_1.c, 5251i, arg_1.c), vec2<i32>(arg_3.b.c.x, 32046i), 4294967295u), func_2(true, arg_3.b.e), arg_0.x, arg_1), arg_1, 31504i) < _wgslsmith_add_i32(_wgslsmith_div_i32(~arg_1.d.d.x, -6551i), arg_2.b.x), global0.d, ~(-vec3<i32>(arg_1.d.d.x << (60020u % 32u), arg_2.c.x, 0i)), ~_wgslsmith_add_vec2_i32(arg_3.b.d, vec2<i32>(2147483647i, global0.c.x)), 25739u);
    var var_0 = vec2<u32>(~1u, firstTrailingBit(~u_input.c));
    global0 = arg_3.b;
    var var_1 = reverseBits(~(-2147483647i));
    global1 = array<vec3<u32>, 30>();
    return Struct_2(579f, select(global1[_wgslsmith_index_u32(1u, 30u)], firstTrailingBit(_wgslsmith_sub_vec3_u32(global1[_wgslsmith_index_u32(51729u, 30u)], vec3<u32>(arg_3.a, arg_3.b.e, 26951u))) & ~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.d.e, var_0.x, arg_2.e), vec3<u32>(arg_2.e, u_input.b, 1u)), !vec3<bool>(arg_2.a, true, any(vec4<bool>(arg_3.b.a, arg_1.d.a, false, arg_1.d.a)))), firstTrailingBit(i32(-1i) * -_wgslsmith_mod_i32(arg_2.b.x, u_input.a)), Struct_1((~30056u ^ abs(arg_1.d.e)) >= ~u_input.b, vec2<i32>(_wgslsmith_mult_i32(-19323i, 1i), select(_wgslsmith_dot_vec2_i32(global0.d, global0.b), global0.b.x, arg_3.b.a)), vec3<i32>(_wgslsmith_dot_vec3_i32(arg_1.d.c, global0.c), ~reverseBits(arg_2.c.x), 1i ^ arg_3.b.c.x), vec2<i32>(select(func_4(arg_3, Struct_3(false, arg_1.d, vec4<i32>(global0.d.x, 1i, -2147483647i, arg_3.b.b.x), true, arg_1), arg_1, -72044i), _wgslsmith_dot_vec3_i32(arg_3.b.c, vec3<i32>(arg_3.b.b.x, 21404i, arg_3.b.b.x)), any(vec3<bool>(true, global0.a, true))), select(arg_1.d.c.x, global0.c.x | u_input.a, true)), ~max(4294967295u >> (u_input.c % 32u), 0u ^ arg_1.d.e)));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec3<f32>, arg_3: f32) -> vec2<i32> {
    global1 = array<vec3<u32>, 30>();
    global0 = arg_0.d;
    let var_0 = vec4<u32>(4294967295u, 15250u, global0.e, u_input.b ^ ~10690u);
    var var_1 = firstLeadingBit(firstLeadingBit(arg_1.yx));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-590f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_3))))))));
    return _wgslsmith_mod_vec2_i32(vec2<i32>(-7436i, _wgslsmith_sub_i32(max(global0.d.x, arg_1.x), var_1.x)), ~(-select(vec2<i32>(-1i, global0.b.x), vec2<i32>(global0.c.x, 0i) ^ global0.d, vec2<bool>(false, arg_0.d.a))));
}

fn func_6(arg_0: bool, arg_1: vec2<i32>, arg_2: f32, arg_3: f32) -> vec4<f32> {
    global1 = array<vec3<u32>, 30>();
    var var_0 = !vec4<bool>(true, !arg_0 || all(!vec3<bool>(false, global0.a, global0.a)), global0.a, true);
    var_0 = vec4<bool>(global0.a, func_1(!select(select(vec2<bool>(global0.a, var_0.x), vec2<bool>(arg_0, global0.a), false), !vec2<bool>(global0.a, arg_0), func_3()), Struct_2(_wgslsmith_f_op_f32(arg_3 - arg_2), vec3<u32>(~0u, u_input.c & global0.e, 4294967295u), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 1i, 2147483647i, global0.b.x), vec4<i32>(global0.c.x, 26173i, arg_1.x, 0i)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.x, global0.c.x, -20619i, arg_1.x), vec4<i32>(-1i, arg_1.x, u_input.a, u_input.a))), func_1(vec2<bool>(var_0.x, global0.a), Struct_2(1869f, global1[_wgslsmith_index_u32(global0.e, 30u)], -1i, Struct_1(arg_0, vec2<i32>(1i, arg_1.x), global0.c, vec2<i32>(35714i, 43577i), global0.e)), Struct_1(true, arg_1, vec3<i32>(global0.d.x, global0.b.x, 4739i), global0.d, u_input.c), Struct_5(u_input.c, Struct_1(false, global0.d, vec3<i32>(1i, global0.c.x, arg_1.x), arg_1, 55736u), vec3<f32>(arg_3, 289f, arg_3))).d), func_1(var_0.yx, func_1(vec2<bool>(global0.a, global0.a), func_1(var_0.wz, Struct_2(arg_3, global1[_wgslsmith_index_u32(2295u, 30u)], 35593i, Struct_1(arg_0, global0.b, global0.c, vec2<i32>(-14534i, 42653i), u_input.b)), Struct_1(false, vec2<i32>(u_input.a, u_input.a), vec3<i32>(-20539i, u_input.a, -1i), global0.b, 38718u), Struct_5(75612u, Struct_1(false, arg_1, vec3<i32>(0i, global0.b.x, -82441i), global0.d, 0u), vec3<f32>(-308f, arg_2, 273f))), Struct_1(true, vec2<i32>(-15858i, u_input.a), vec3<i32>(u_input.a, 2147483647i, 12517i), vec2<i32>(-54678i, 20991i), 85017u), Struct_5(12522u, Struct_1(var_0.x, vec2<i32>(-11897i, -2147483647i), global0.c, vec2<i32>(13072i, global0.c.x), 0u), vec3<f32>(607f, arg_2, -750f))), Struct_1(arg_0, ~arg_1, _wgslsmith_mod_vec3_i32(vec3<i32>(1i, global0.b.x, global0.d.x), global0.c), arg_1, _wgslsmith_sub_u32(u_input.b, 4294967295u)), Struct_5(global0.e, Struct_1(false, vec2<i32>(-1i, arg_1.x), global0.c, vec2<i32>(29849i, -2147483647i), global0.e), vec3<f32>(397f, arg_3, arg_3))).d, Struct_5(global0.e, Struct_1(true, vec2<i32>(-1i, 27052i), -vec3<i32>(u_input.a, arg_1.x, 2147483647i), -vec2<i32>(-1i, arg_1.x), 1u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(335f, -444f, 199f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, arg_3))))).d.a, any(select(select(vec4<bool>(global0.a, global0.a, var_0.x, false), vec4<bool>(arg_0, false, false, true), !vec4<bool>(true, false, false, global0.a)), select(select(vec4<bool>(false, true, true, true), vec4<bool>(global0.a, var_0.x, global0.a, false), true), !vec4<bool>(false, var_0.x, false, global0.a), !vec4<bool>(var_0.x, false, false, false)), true)), arg_0);
    global0 = func_1(select(vec2<bool>(true, true), select(select(!vec2<bool>(arg_0, false), !var_0.yz, select(var_0.zw, vec2<bool>(true, true), vec2<bool>(false, true))), !vec2<bool>(var_0.x, false), vec2<bool>(true, true)), all(!select(vec4<bool>(global0.a, true, var_0.x, true), vec4<bool>(true, false, arg_0, var_0.x), vec4<bool>(arg_0, arg_0, arg_0, var_0.x)))), Struct_2(829f, select(firstTrailingBit(global1[_wgslsmith_index_u32(4294967295u, 30u)]), reverseBits(countOneBits(global1[_wgslsmith_index_u32(4294967295u, 30u)])), !(global0.b.x < global0.b.x)), u_input.a, func_1(select(select(vec2<bool>(arg_0, global0.a), vec2<bool>(true, arg_0), global0.a), !var_0.wy, select(vec2<bool>(false, true), vec2<bool>(false, true), false)), func_1(select(vec2<bool>(true, global0.a), vec2<bool>(false, var_0.x), var_0.x), Struct_2(arg_3, vec3<u32>(1u, 42258u, global0.e), u_input.a, Struct_1(true, vec2<i32>(arg_1.x, -2147483647i), global0.c, global0.c.xx, 0u)), func_1(vec2<bool>(arg_0, arg_0), Struct_2(arg_3, vec3<u32>(14714u, u_input.b, global0.e), -15205i, Struct_1(global0.a, global0.c.zx, global0.c, arg_1, global0.e)), Struct_1(global0.a, global0.b, global0.c, global0.d, global0.e), Struct_5(83366u, Struct_1(global0.a, vec2<i32>(u_input.a, arg_1.x), vec3<i32>(0i, global0.c.x, global0.b.x), vec2<i32>(arg_1.x, 0i), u_input.b), vec3<f32>(arg_3, -191f, arg_2))).d, Struct_5(u_input.c, Struct_1(var_0.x, global0.c.yx, global0.c, vec2<i32>(global0.b.x, u_input.a), u_input.b), vec3<f32>(arg_2, 257f, arg_3))), func_1(vec2<bool>(false, arg_0), func_1(vec2<bool>(var_0.x, arg_0), Struct_2(arg_2, global1[_wgslsmith_index_u32(global0.e, 30u)], arg_1.x, Struct_1(var_0.x, vec2<i32>(-27831i, arg_1.x), global0.c, arg_1, 91926u)), Struct_1(false, vec2<i32>(arg_1.x, 0i), global0.c, vec2<i32>(u_input.a, -16146i), 0u), Struct_5(global0.e, Struct_1(true, global0.d, global0.c, global0.d, global0.e), vec3<f32>(arg_2, 481f, 1000f))), Struct_1(global0.a, vec2<i32>(u_input.a, global0.b.x), vec3<i32>(global0.c.x, global0.d.x, arg_1.x), arg_1, global0.e), Struct_5(u_input.c, Struct_1(true, vec2<i32>(-42864i, 67547i), vec3<i32>(-2147483647i, 2147483647i, global0.c.x), vec2<i32>(1i, 0i), 0u), vec3<f32>(arg_2, arg_3, -351f))).d, Struct_5(~global0.e, func_1(vec2<bool>(arg_0, true), Struct_2(arg_2, global1[_wgslsmith_index_u32(4294967295u, 30u)], arg_1.x, Struct_1(var_0.x, global0.b, global0.c, global0.d, 4294967295u)), Struct_1(global0.a, arg_1, vec3<i32>(-1i, global0.c.x, u_input.a), arg_1, 27287u), Struct_5(1u, Struct_1(true, vec2<i32>(1i, global0.c.x), global0.c, vec2<i32>(arg_1.x, 42687i), 4294967295u), vec3<f32>(arg_3, arg_3, 117f))).d, vec3<f32>(arg_3, 240f, arg_2))).d), func_1(vec2<bool>(func_3(), global0.a), Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(376f)), -1000f)), ~(~vec3<u32>(0u, 290u, u_input.b)), (0i ^ global0.b.x) << (_wgslsmith_dot_vec3_u32(vec3<u32>(global0.e, global0.e, 41578u), vec3<u32>(global0.e, global0.e, global0.e)) % 32u), Struct_1(-891f >= arg_2, ~vec2<i32>(3390i, -38160i), global0.c & global0.c, arg_1 >> (vec2<u32>(16942u, global0.e) % vec2<u32>(32u)), 23567u)), func_1(vec2<bool>(true, true), func_1(!vec2<bool>(var_0.x, global0.a), Struct_2(-512f, global1[_wgslsmith_index_u32(26533u, 30u)], u_input.a, Struct_1(false, arg_1, global0.c, vec2<i32>(arg_1.x, arg_1.x), 1u)), Struct_1(global0.a, vec2<i32>(1i, 2147483647i), global0.c, vec2<i32>(24857i, global0.b.x), 1u), Struct_5(global0.e, Struct_1(arg_0, vec2<i32>(31495i, 1i), vec3<i32>(-1i, 0i, -18798i), vec2<i32>(-9094i, -1i), u_input.b), vec3<f32>(arg_2, -1235f, arg_3))), Struct_1(all(vec4<bool>(var_0.x, false, arg_0, true)), arg_1 & global0.c.zz, abs(vec3<i32>(2147483647i, -1i, -13083i)), -global0.d, u_input.c), Struct_5(countOneBits(global0.e), Struct_1(arg_0, global0.b, global0.c, vec2<i32>(0i, u_input.a), 0u), _wgslsmith_f_op_vec3_f32(vec3<f32>(-512f, -542f, -270f) - vec3<f32>(1063f, arg_3, 1686f)))).d, Struct_5(firstLeadingBit(15517u & global0.e), func_1(var_0.wy, func_1(vec2<bool>(false, arg_0), Struct_2(arg_3, vec3<u32>(global0.e, 30252u, 0u), u_input.a, Struct_1(false, global0.c.zx, vec3<i32>(2147483647i, 2147483647i, u_input.a), vec2<i32>(arg_1.x, 1i), 10132u)), Struct_1(var_0.x, arg_1, vec3<i32>(20218i, arg_1.x, 18258i), arg_1, 4294967295u), Struct_5(u_input.c, Struct_1(var_0.x, vec2<i32>(global0.c.x, arg_1.x), vec3<i32>(-2147483647i, u_input.a, global0.c.x), arg_1, 1u), vec3<f32>(-1229f, 1000f, -1165f))), Struct_1(arg_0, vec2<i32>(global0.c.x, arg_1.x), vec3<i32>(0i, 111982i, 37204i), vec2<i32>(2147483647i, global0.d.x), 26326u), Struct_5(5391u, Struct_1(arg_0, vec2<i32>(-5680i, u_input.a), vec3<i32>(u_input.a, global0.d.x, 0i), global0.c.xx, 4294967295u), vec3<f32>(499f, 1482f, -776f))).d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, 889f, 251f)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1021f, -494f, 466f), vec3<f32>(arg_3, arg_2, -201f)))))).d, Struct_5(_wgslsmith_dot_vec2_u32(~vec2<u32>(66499u, 25485u) ^ vec2<u32>(11736u, u_input.b), countOneBits(vec2<u32>(1u, 1u))), Struct_1(func_3(), global0.d, global0.c, -(~arg_1), ~1u), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, arg_2, 351f))), vec3<f32>(_wgslsmith_f_op_f32(-arg_3), arg_3, _wgslsmith_div_f32(-435f, arg_3)))))).d;
    var_0 = !(!select(vec4<bool>(true, all(var_0.yw), !global0.a, global0.a), select(!vec4<bool>(var_0.x, false, global0.a, false), vec4<bool>(true, global0.a, false, true), !vec4<bool>(false, arg_0, global0.a, true)), !select(vec4<bool>(false, false, var_0.x, false), vec4<bool>(true, true, global0.a, false), vec4<bool>(arg_0, var_0.x, arg_0, var_0.x))));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-921f))), _wgslsmith_f_op_f32(arg_3 * arg_3), _wgslsmith_div_f32(arg_3, arg_2), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1000f)), arg_3)))));
}

fn func_7(arg_0: bool, arg_1: vec4<f32>, arg_2: f32, arg_3: Struct_2) -> bool {
    global1 = array<vec3<u32>, 30>();
    var var_0 = arg_1.yww;
    global0 = func_1(vec2<bool>(arg_3.d.a, all(select(vec2<bool>(false, false), vec2<bool>(true, global0.a), arg_0)) & !global0.a), arg_3, func_1(vec2<bool>(arg_3.a >= _wgslsmith_f_op_f32(506f * 1000f), true), arg_3, arg_3.d, Struct_5(~arg_3.d.e, arg_3.d, _wgslsmith_f_op_vec3_f32(min(arg_1.wxz, _wgslsmith_f_op_vec3_f32(step(arg_1.xzz, vec3<f32>(arg_2, var_0.x, arg_2))))))).d, Struct_5(_wgslsmith_clamp_u32(global0.e, 0u, ~global0.e), func_1(select(!vec2<bool>(global0.a, true), vec2<bool>(arg_0, arg_0), vec2<bool>(global0.a, true)), func_1(vec2<bool>(true, false), Struct_2(var_0.x, arg_3.b, -13606i, arg_3.d), Struct_1(false, arg_3.d.d, global0.c, vec2<i32>(arg_3.d.b.x, global0.c.x), arg_3.d.e), Struct_5(u_input.c, Struct_1(false, vec2<i32>(global0.d.x, arg_3.d.b.x), global0.c, vec2<i32>(-1i, arg_3.c), 4294967295u), arg_1.xxz)), func_1(select(vec2<bool>(arg_3.d.a, true), vec2<bool>(arg_3.d.a, global0.a), arg_0), func_1(vec2<bool>(arg_0, true), arg_3, Struct_1(arg_0, vec2<i32>(u_input.a, arg_3.c), arg_3.d.c, arg_3.d.d, u_input.c), Struct_5(arg_3.d.e, arg_3.d, arg_1.wzw)), func_1(vec2<bool>(false, arg_0), arg_3, Struct_1(arg_3.d.a, arg_3.d.b, vec3<i32>(u_input.a, -42564i, u_input.a), vec2<i32>(global0.c.x, global0.c.x), arg_3.d.e), Struct_5(32563u, arg_3.d, vec3<f32>(-249f, arg_2, 649f))).d, Struct_5(0u, Struct_1(global0.a, global0.b, arg_3.d.c, arg_3.d.c.xx, global0.e), arg_1.www)).d, Struct_5(firstLeadingBit(16895u), Struct_1(global0.a, arg_3.d.c.xz, vec3<i32>(global0.c.x, 2147483647i, 1i), arg_3.d.b, 31724u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, 1181f, arg_3.a)))).d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1066f, 2303f, arg_1.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2, arg_3.a, arg_1.x), vec3<f32>(911f, 863f, arg_1.x), false)))))).d;
    let var_1 = 555f;
    let var_2 = func_1(select(select(!select(vec2<bool>(arg_3.d.a, arg_3.d.a), vec2<bool>(true, arg_3.d.a), arg_3.d.a), select(select(vec2<bool>(global0.a, true), vec2<bool>(false, arg_3.d.a), vec2<bool>(arg_0, arg_3.d.a)), !vec2<bool>(arg_0, true), !vec2<bool>(arg_3.d.a, arg_0)), vec2<bool>(true, true)), vec2<bool>(true, true), global0.a), Struct_2(-794f, ~(vec3<u32>(arg_3.b.x, arg_3.b.x, u_input.b) & abs(vec3<u32>(arg_3.b.x, u_input.b, u_input.c))), u_input.a, arg_3.d), Struct_1(arg_3.d.a, arg_3.d.b, global0.c, -(~vec2<i32>(global0.b.x, 0i)) | _wgslsmith_sub_vec2_i32(vec2<i32>(arg_3.c, 37367i), func_1(vec2<bool>(false, true), arg_3, arg_3.d, Struct_5(global0.e, arg_3.d, arg_1.yzy)).d.c.yz), max(_wgslsmith_sub_u32(u_input.b, u_input.c), _wgslsmith_mod_u32(_wgslsmith_sub_u32(global0.e, 0u), ~u_input.c))), Struct_5(_wgslsmith_mult_u32(39318u, countOneBits(global0.e)), func_1(!select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, global0.a), arg_0), func_1(!vec2<bool>(arg_3.d.a, false), func_1(vec2<bool>(arg_0, arg_3.d.a), Struct_2(var_1, vec3<u32>(4294967295u, 4294967295u, 1u), arg_3.d.d.x, arg_3.d), Struct_1(false, global0.d, vec3<i32>(0i, global0.b.x, global0.c.x), global0.c.xx, 1u), Struct_5(4294967295u, Struct_1(true, vec2<i32>(-1i, arg_3.c), arg_3.d.c, arg_3.d.d, global0.e), vec3<f32>(var_0.x, 155f, var_1))), func_1(vec2<bool>(arg_3.d.a, arg_3.d.a), arg_3, Struct_1(arg_0, vec2<i32>(global0.c.x, global0.c.x), global0.c, global0.b, 0u), Struct_5(0u, arg_3.d, arg_1.zwy)).d, Struct_5(u_input.c, Struct_1(false, global0.b, vec3<i32>(arg_3.d.c.x, u_input.a, 2147483647i), arg_3.d.b, u_input.b), arg_1.wzx)), func_1(vec2<bool>(arg_3.d.a, arg_0), func_1(vec2<bool>(arg_3.d.a, arg_0), Struct_2(2014f, vec3<u32>(1u, 4063u, global0.e), 1i, arg_3.d), Struct_1(false, global0.c.zy, vec3<i32>(13455i, 2147483647i, arg_3.d.d.x), global0.b, global0.e), Struct_5(0u, arg_3.d, arg_1.yzz)), func_1(vec2<bool>(false, global0.a), Struct_2(-576f, vec3<u32>(arg_3.b.x, global0.e, u_input.c), -6085i, arg_3.d), arg_3.d, Struct_5(global0.e, arg_3.d, arg_1.wwz)).d, Struct_5(9149u, arg_3.d, vec3<f32>(-1566f, 615f, var_0.x))).d, Struct_5(_wgslsmith_dot_vec3_u32(vec3<u32>(3162u, 55931u, 96414u), global1[_wgslsmith_index_u32(arg_3.b.x, 30u)]), arg_3.d, vec3<f32>(-272f, 1033f, 1318f))).d, vec3<f32>(-673f, _wgslsmith_f_op_f32(arg_1.x * var_1), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(268f * -784f))))));
    return ~u_input.b <= ~arg_3.d.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a;
    global1 = array<vec3<u32>, 30>();
    global0 = Struct_1(func_7(any(!vec3<bool>(global0.a, global0.a, global0.a)) || any(vec3<bool>(global0.a, true, global0.a)), _wgslsmith_f_op_vec4_f32(func_6(global0.a, func_5(func_1(vec2<bool>(true, false), Struct_2(-1465f, global1[_wgslsmith_index_u32(76781u, 30u)], 1i, Struct_1(global0.a, vec2<i32>(u_input.a, global0.b.x), vec3<i32>(u_input.a, global0.b.x, 2147483647i), vec2<i32>(17333i, global0.b.x), 21040u)), Struct_1(global0.a, vec2<i32>(0i, u_input.a), vec3<i32>(global0.d.x, global0.b.x, 27355i), vec2<i32>(global0.d.x, -2147483647i), 0u), Struct_5(3369u, Struct_1(global0.a, vec2<i32>(16338i, 1i), vec3<i32>(u_input.a, -2147483647i, u_input.a), global0.c.yx, 46560u), vec3<f32>(1000f, -639f, -604f))), vec3<i32>(-2147483647i, global0.c.x, 1i), _wgslsmith_div_vec3_f32(vec3<f32>(241f, 736f, 137f), vec3<f32>(1090f, 208f, 727f)), _wgslsmith_f_op_f32(-107f - -1000f)), func_1(vec2<bool>(false, false), func_1(vec2<bool>(false, false), Struct_2(921f, global1[_wgslsmith_index_u32(u_input.c, 30u)], u_input.a, Struct_1(global0.a, global0.b, global0.c, global0.c.yy, 30841u)), Struct_1(global0.a, vec2<i32>(54730i, u_input.a), global0.c, vec2<i32>(global0.d.x, global0.d.x), 78047u), Struct_5(1u, Struct_1(global0.a, global0.c.yz, global0.c, vec2<i32>(-15662i, global0.d.x), global0.e), vec3<f32>(-792f, -245f, -1397f))), Struct_1(global0.a, global0.d, vec3<i32>(18275i, global0.d.x, -1i), global0.b, global0.e), Struct_5(global0.e, Struct_1(global0.a, vec2<i32>(global0.c.x, -1i), vec3<i32>(u_input.a, 0i, global0.b.x), vec2<i32>(global0.d.x, global0.d.x), global0.e), vec3<f32>(473f, 256f, 1769f))).a, 2115f)), _wgslsmith_f_op_f32(trunc(-560f)), func_1(!(!vec2<bool>(global0.a, global0.a)), Struct_2(_wgslsmith_f_op_f32(round(461f)), global1[_wgslsmith_index_u32(1u, 30u)] << (global1[_wgslsmith_index_u32(global0.e, 30u)] % vec3<u32>(32u)), 1i, Struct_1(global0.a, global0.b, vec3<i32>(-2147483647i, -2147483647i, -2147483647i), vec2<i32>(u_input.a, 17617i), 68417u)), func_1(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(global0.a, global0.a)), Struct_2(-1000f, global1[_wgslsmith_index_u32(u_input.b, 30u)], 35902i, Struct_1(global0.a, global0.b, global0.c, vec2<i32>(u_input.a, global0.d.x), 44750u)), Struct_1(false, global0.b, vec3<i32>(2147483647i, global0.d.x, u_input.a), vec2<i32>(0i, u_input.a), 23496u), Struct_5(global0.e, Struct_1(false, global0.d, vec3<i32>(global0.d.x, global0.b.x, 0i), vec2<i32>(-30259i, global0.b.x), 39922u), vec3<f32>(808f, -754f, -199f))).d, Struct_5(4294967295u, func_1(vec2<bool>(true, true), Struct_2(-2218f, global1[_wgslsmith_index_u32(global0.e, 30u)], 2147483647i, Struct_1(global0.a, vec2<i32>(7586i, global0.c.x), global0.c, vec2<i32>(global0.d.x, 53950i), global0.e)), Struct_1(global0.a, vec2<i32>(-2147483647i, u_input.a), vec3<i32>(-47664i, -54580i, -2147483647i), vec2<i32>(global0.b.x, 0i), global0.e), Struct_5(global0.e, Struct_1(global0.a, vec2<i32>(u_input.a, global0.d.x), vec3<i32>(0i, 8455i, 22936i), vec2<i32>(global0.d.x, -2147483647i), 26655u), vec3<f32>(-377f, 1834f, 157f))).d, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1312f, 127f, -1040f), vec3<f32>(257f, 298f, -674f)))))), global0.c.zy, vec3<i32>(16374i, global0.c.x, _wgslsmith_mult_i32(-46199i, ~1i)), -(~global0.d), ~0u & firstLeadingBit(abs(1u) << (_wgslsmith_mod_u32(u_input.c, 4294967295u) % 32u)));
    global0 = Struct_1(!(func_7(select(global0.a, false, false), vec4<f32>(1f, 1f, 1f, 1f), -1248f, Struct_2(-876f, vec3<u32>(14644u, u_input.b, global0.e), 2147483647i, Struct_1(false, global0.d, global0.c, global0.c.zx, u_input.b))) || true), vec2<i32>(u_input.a & 2147483647i, _wgslsmith_clamp_i32(7672i, firstLeadingBit(-12342i), _wgslsmith_clamp_i32(u_input.a, 1i, u_input.a) ^ (i32(-1i) * -3791i))), _wgslsmith_mod_vec3_i32(reverseBits(~vec3<i32>(-6635i, -1379i, u_input.a)), reverseBits(_wgslsmith_sub_vec3_i32(global0.c, vec3<i32>(u_input.a, -17764i, -2147483647i)))) | global0.c, ~abs(_wgslsmith_add_vec2_i32(global0.b & vec2<i32>(-3907i, -1i), -vec2<i32>(global0.d.x, global0.c.x))), max(4294967295u, global0.e));
    global0 = func_1(!vec2<bool>(global0.a, true), Struct_2(-601f, ~vec3<u32>(global0.e ^ 22932u, u_input.c ^ 1u, func_1(vec2<bool>(global0.a, false), Struct_2(-364f, vec3<u32>(global0.e, 4294967295u, 10177u), u_input.a, Struct_1(global0.a, global0.d, vec3<i32>(u_input.a, u_input.a, u_input.a), vec2<i32>(0i, 38582i), u_input.b)), Struct_1(true, vec2<i32>(41963i, u_input.a), vec3<i32>(u_input.a, -53227i, u_input.a), vec2<i32>(-23496i, 1i), 98578u), Struct_5(13143u, Struct_1(true, vec2<i32>(-9170i, u_input.a), vec3<i32>(global0.d.x, u_input.a, u_input.a), vec2<i32>(u_input.a, 0i), global0.e), vec3<f32>(-321f, -1427f, 409f))).b.x), max(global0.b.x, -31016i), func_1(select(vec2<bool>(true, true), select(vec2<bool>(false, global0.a), vec2<bool>(global0.a, true), true), true), Struct_2(_wgslsmith_f_op_f32(trunc(-446f)), vec3<u32>(global0.e, global0.e, u_input.b), u_input.a, func_1(vec2<bool>(global0.a, global0.a), Struct_2(-177f, vec3<u32>(47438u, u_input.c, 19118u), global0.d.x, Struct_1(false, global0.b, global0.c, global0.d, u_input.c)), Struct_1(true, vec2<i32>(global0.b.x, 14465i), vec3<i32>(u_input.a, u_input.a, 1i), global0.c.yx, u_input.c), Struct_5(28685u, Struct_1(true, vec2<i32>(u_input.a, 0i), global0.c, global0.b, u_input.c), vec3<f32>(-1050f, -647f, 1101f))).d), Struct_1(true, _wgslsmith_mod_vec2_i32(global0.c.zx, vec2<i32>(global0.c.x, -1i)), _wgslsmith_clamp_vec3_i32(global0.c, vec3<i32>(-2147483647i, global0.c.x, 16048i), global0.c), global0.b, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.e, 22289u, global0.e, 0u), vec4<u32>(global0.e, 4294967295u, global0.e, u_input.c))), Struct_5(~u_input.c, func_1(vec2<bool>(true, global0.a), Struct_2(1697f, vec3<u32>(4294967295u, 29001u, 4294967295u), 1i, Struct_1(global0.a, vec2<i32>(2147483647i, u_input.a), global0.c, vec2<i32>(u_input.a, u_input.a), global0.e)), Struct_1(false, global0.c.xy, vec3<i32>(u_input.a, 15061i, u_input.a), global0.d, 15321u), Struct_5(60116u, Struct_1(global0.a, global0.b, global0.c, global0.b, 6518u), vec3<f32>(905f, -1000f, -492f))).d, vec3<f32>(-422f, 345f, 1010f))).d), Struct_1(global0.a, vec2<i32>(func_5(func_1(vec2<bool>(true, false), Struct_2(-557f, vec3<u32>(0u, global0.e, 59398u), u_input.a, Struct_1(false, global0.d, global0.c, global0.d, 60811u)), Struct_1(false, global0.c.yx, vec3<i32>(u_input.a, global0.d.x, 1i), vec2<i32>(-19337i, global0.d.x), global0.e), Struct_5(4294967295u, Struct_1(global0.a, vec2<i32>(global0.b.x, 5640i), vec3<i32>(-6357i, -1i, 4872i), vec2<i32>(u_input.a, u_input.a), u_input.c), vec3<f32>(1903f, 250f, 587f))), ~vec3<i32>(-1i, 40716i, u_input.a), vec3<f32>(1000f, -1172f, -1992f), -592f).x, countOneBits(reverseBits(u_input.a))), vec3<i32>(reverseBits(firstTrailingBit(-50293i)), _wgslsmith_dot_vec3_i32(-vec3<i32>(0i, -59726i, 13633i), func_2(true, u_input.c).zwx), _wgslsmith_mod_i32(u_input.a, u_input.a)), -global0.c.xx | -reverseBits(vec2<i32>(u_input.a, u_input.a)), 4294967295u ^ min(u_input.b, u_input.c)), Struct_5(~(~(~u_input.b)), Struct_1(false, _wgslsmith_div_vec2_i32(firstTrailingBit(global0.c.xz), global0.d), vec3<i32>(0i, _wgslsmith_sub_i32(-30353i, u_input.a), -68i), vec2<i32>(0i, func_1(vec2<bool>(global0.a, true), Struct_2(-308f, global1[_wgslsmith_index_u32(u_input.c, 30u)], 2147483647i, Struct_1(global0.a, vec2<i32>(0i, u_input.a), global0.c, global0.d, global0.e)), Struct_1(true, global0.c.yz, vec3<i32>(2147483647i, 2147483647i, 21874i), global0.b, 37291u), Struct_5(u_input.c, Struct_1(true, vec2<i32>(u_input.a, global0.c.x), global0.c, vec2<i32>(u_input.a, global0.c.x), 4294967295u), vec3<f32>(257f, -1078f, -781f))).c), _wgslsmith_div_u32(_wgslsmith_sub_u32(24292u, global0.e), u_input.c)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-503f, 1000f, -542f) * _wgslsmith_f_op_vec4_f32(func_6(true, vec2<i32>(-13930i, u_input.a), 431f, 1660f)).yxz), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(883f, 977f, -230f)))))))).d;
    let var_1 = u_input.b;
    let var_2 = ~vec4<u32>(u_input.c, abs(~27755u), ~u_input.b, max(countOneBits(1u), 1u));
    global1 = array<vec3<u32>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(~(-_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, global0.c.x, global0.c.x, u_input.a) | vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), ~vec4<i32>(41214i, 34073i, u_input.a, -3321i))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(160f, 1000f)) + func_1(vec2<bool>(true, global0.a), Struct_2(499f, var_2.yxy, global0.c.x, Struct_1(true, global0.d, global0.c, global0.c.yy, 30824u)), Struct_1(false, global0.d, global0.c, vec2<i32>(global0.d.x, 19936i), u_input.b), Struct_5(28203u, Struct_1(false, global0.d, global0.c, global0.b, 0u), vec3<f32>(1622f, 445f, -495f))).a)), global0.a)), _wgslsmith_f_op_f32(-func_1(vec2<bool>(global0.a, any(vec2<bool>(global0.a, global0.a))), Struct_2(_wgslsmith_div_f32(-1501f, -282f), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(28702u, u_input.c, 0u), 30u)], -u_input.a, Struct_1(global0.a, vec2<i32>(92766i, 2147483647i), global0.c, global0.c.xz, global0.e)), func_1(!vec2<bool>(false, global0.a), func_1(vec2<bool>(true, global0.a), Struct_2(-843f, global1[_wgslsmith_index_u32(84902u, 30u)], u_input.a, Struct_1(global0.a, global0.c.xz, global0.c, global0.b, 0u)), Struct_1(global0.a, vec2<i32>(global0.c.x, u_input.a), vec3<i32>(u_input.a, -1i, -32198i), vec2<i32>(global0.b.x, global0.d.x), 0u), Struct_5(92734u, Struct_1(global0.a, global0.c.yx, vec3<i32>(-52861i, -38182i, 0i), global0.c.zz, var_2.x), vec3<f32>(724f, 960f, 1000f))), func_1(vec2<bool>(false, global0.a), Struct_2(111f, var_2.xwx, -46523i, Struct_1(true, vec2<i32>(1i, -7410i), global0.c, vec2<i32>(global0.c.x, global0.c.x), 4294967295u)), Struct_1(true, vec2<i32>(u_input.a, -1i), global0.c, vec2<i32>(u_input.a, 44594i), global0.e), Struct_5(50468u, Struct_1(global0.a, global0.c.yz, global0.c, global0.d, var_1), vec3<f32>(-353f, 135f, -476f))).d, Struct_5(818u, Struct_1(true, global0.c.yx, global0.c, global0.d, global0.e), vec3<f32>(1169f, -173f, -1000f))).d, Struct_5(_wgslsmith_mod_u32(var_2.x, var_1), Struct_1(false, vec2<i32>(u_input.a, global0.b.x), vec3<i32>(u_input.a, u_input.a, -89655i), global0.c.xx, 22869u), vec3<f32>(-629f, -424f, 1025f))).a));
}

