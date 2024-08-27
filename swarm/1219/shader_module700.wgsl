struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<f32>,
    e: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32>;

var<private> global1: vec2<f32> = vec2<f32>(-188f, 417f);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = Struct_5(Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(~u_input.a.x, i32(-1i) * -32424i, u_input.a.x), -(vec3<i32>(-25272i, u_input.a.x, 29285i) << (vec3<u32>(u_input.b.x, u_input.b.x, 0u) % vec3<u32>(32u))), ~min(vec3<i32>(0i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i))), u_input.a.x, ~select(vec4<i32>(-39075i, u_input.a.x, u_input.a.x, u_input.a.x), ~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(false, false, false, false))), vec4<i32>(_wgslsmith_mult_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i)), u_input.a.x << (10396u % 32u)), -u_input.a.x >> (u_input.b.x % 32u), u_input.a.x, u_input.a.x), Struct_4(select(select(vec2<bool>(true, false), vec2<bool>(true, true), u_input.b.x >= 43645u), vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true), u_input.a.x == u_input.a.x)), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.b.x, 24910u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), countOneBits(vec4<u32>(41886u, u_input.b.x, u_input.b.x, 20207u)), ~vec4<u32>(u_input.b.x, u_input.b.x, 44699u, u_input.b.x)), vec4<u32>(reverseBits(u_input.b.x), ~1u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 1u), u_input.b))), ~(min(vec3<u32>(4294967295u, 37545u, u_input.b.x), u_input.b) << (_wgslsmith_clamp_vec3_u32(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1.x + global0[_wgslsmith_index_u32(59616u, 32u)]), _wgslsmith_f_op_f32(942f + global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), _wgslsmith_f_op_f32(max(1637f, global0[_wgslsmith_index_u32(1u, 32u)])))), !((-20858i != u_input.a.x) & false)));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.c.d.x, global1.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-369f, var_0.c.d.x) + var_0.c.d.xz)))))));
    let var_1 = var_0.c.b.wwz;
    let var_2 = !select(!select(select(var_0.c.a, vec2<bool>(true, var_0.c.a.x), vec2<bool>(true, true)), !var_0.c.a, select(false, false, true)), !select(select(vec2<bool>(false, var_0.c.a.x), var_0.c.a, vec2<bool>(var_0.c.e, true)), !vec2<bool>(var_0.c.e, true), select(var_0.c.a, vec2<bool>(var_0.c.a.x, false), true)), vec2<bool>(all(select(vec3<bool>(var_0.c.e, true, var_0.c.a.x), vec3<bool>(false, var_0.c.e, true), vec3<bool>(true, var_0.c.a.x, false))), var_0.c.a.x));
    let var_3 = var_0.c.c.x;
    return var_1.x;
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = func_3(global1.x);
    var var_1 = _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(~((u_input.b.x >> (u_input.b.x % 32u)) | u_input.b.x) | ~u_input.b.x, 32u)]));
    global0 = array<f32, 32>();
    var var_2 = Struct_3(Struct_2(Struct_1(firstTrailingBit(vec3<i32>(-7634i, u_input.a.x, 2147483647i) ^ vec3<i32>(u_input.a.x, u_input.a.x, -1i)), 69371i, vec4<i32>(-u_input.a.x, 10480i, u_input.a.x, 18758i)), u_input.a.x, Struct_1(~(vec3<i32>(-15488i, u_input.a.x, u_input.a.x) | vec3<i32>(u_input.a.x, u_input.a.x, 0i)), u_input.a.x, vec4<i32>(select(-2147483647i, u_input.a.x, arg_0), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), vec2<i32>(u_input.a.x, u_input.a.x)), reverseBits(u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, 0i, 1i), vec4<i32>(-6749i, 2147483647i, u_input.a.x, u_input.a.x)))), Struct_1(_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<i32>(28046i, u_input.a.x, -47719i)), -1i, firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(-30801i, u_input.a.x, -1i, 52974i), vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x)))), Struct_1(~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) | select(vec3<i32>(u_input.a.x, u_input.a.x, 58346i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<bool>(false, false, true)), u_input.a.x, ~select(vec4<i32>(-2147483647i, 5029i, 0i, u_input.a.x), vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, 75887i), arg_0))), countOneBits(firstTrailingBit(_wgslsmith_clamp_vec3_u32(~vec3<u32>(59016u, 4294967295u, 22702u), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, 4294967295u), vec3<u32>(u_input.b.x, 26535u, u_input.b.x)), ~u_input.b))), Struct_1(-abs(countOneBits(vec3<i32>(u_input.a.x, 1i, u_input.a.x))), 2147483647i, firstTrailingBit(vec4<i32>(0i, -51226i, -13758i, reverseBits(-26075i)))), Struct_1(vec3<i32>(_wgslsmith_sub_i32(-11807i, u_input.a.x), 5205i, ~(-2147483647i)) & ~(~vec3<i32>(14487i, 54116i, 1i)), ~(-2006i), (-vec4<i32>(u_input.a.x, u_input.a.x, -1i, 2147483647i) ^ max(vec4<i32>(-74199i, 2147483647i, u_input.a.x, 18785i), vec4<i32>(-28050i, u_input.a.x, u_input.a.x, 20093i))) & vec4<i32>(_wgslsmith_clamp_i32(43788i, u_input.a.x, 2147483647i), 11933i, u_input.a.x, _wgslsmith_div_i32(1i, -2147483647i))));
    let var_3 = var_2.a.a;
    return var_2.d;
}

fn func_1(arg_0: vec2<f32>) -> u32 {
    global0 = array<f32, 32>();
    global0 = array<f32, 32>();
    let var_0 = Struct_2(func_2(any(vec2<bool>(true, true))), ((-u_input.a.x | u_input.a.x) ^ _wgslsmith_add_i32(47379i, 9134i)) ^ _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(3293i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) & vec3<i32>(0i, -1i, u_input.a.x)), ~vec3<i32>(-3475i, u_input.a.x, 2147483647i)), Struct_1(vec3<i32>(-1i, ~u_input.a.x, -24354i), firstTrailingBit(_wgslsmith_add_i32(0i, u_input.a.x | 36031i)), firstTrailingBit(select(abs(vec4<i32>(-53643i, u_input.a.x, -17256i, 18530i)), vec4<i32>(48340i, u_input.a.x, 0i, u_input.a.x) ^ vec4<i32>(-2147483647i, u_input.a.x, 2017i, -94149i), all(vec4<bool>(true, false, false, false))))), Struct_1(-func_2(all(vec3<bool>(true, true, false))).a, 22815i, vec4<i32>(countOneBits(0i), u_input.a.x, ~(-3057i), -1i & (0i << (u_input.b.x % 32u)))), Struct_1(_wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a.x, u_input.a.x, -24805i)), func_2(true).a, vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), abs(u_input.a.x), _wgslsmith_mod_i32(13923i, 2147483647i))), ~select(u_input.a.x, 1i, true), vec4<i32>(max(2949i, ~(-2147483647i)), u_input.a.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(0i, -2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -19585i, 1i, u_input.a.x) | vec4<i32>(1i, 2147483647i, u_input.a.x, u_input.a.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -11804i, u_input.a.x) ^ vec3<i32>(0i, u_input.a.x, u_input.a.x), countOneBits(vec3<i32>(-1i, -12336i, u_input.a.x))))));
    global0 = array<f32, 32>();
    global0 = array<f32, 32>();
    return _wgslsmith_add_u32(15108u, _wgslsmith_dot_vec3_u32(~(u_input.b ^ u_input.b), select(vec3<u32>(u_input.b.x, ~u_input.b.x, u_input.b.x ^ 1u), ~abs(vec3<u32>(39232u, u_input.b.x, u_input.b.x)), vec3<bool>(true, 39268i == u_input.a.x, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_u32(u_input.b.x, u_input.b.x);
    let var_1 = u_input.b.x;
    var_0 = _wgslsmith_dot_vec2_u32(u_input.b.xy, select(vec2<u32>(_wgslsmith_add_u32(~17160u, _wgslsmith_sub_u32(33787u, 20898u)), var_1), u_input.b.zx, 3499i != u_input.a.x));
    var var_2 = firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -1064i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), ~(-2147483647i), u_input.a.x ^ u_input.a.x), _wgslsmith_sub_vec3_i32(select(vec3<i32>(1i, 0i, -23293i), vec3<i32>(u_input.a.x, 37922i, -47719i), vec3<bool>(false, true, false)), min(vec3<i32>(2885i, u_input.a.x, u_input.a.x), vec3<i32>(2147483647i, u_input.a.x, 7244i)))) | (_wgslsmith_div_vec3_i32(-vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(13896i, -2147483647i, 25605i)) & _wgslsmith_sub_vec3_i32(select(vec3<i32>(2147483647i, 0i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), true), vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i))));
    var var_3 = vec4<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(var_1, 23727u), 45932u), var_1, 4070u, ~(~u_input.b.x));
    global0 = array<f32, 32>();
    let var_4 = Struct_4(select(vec2<bool>(true, all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)))), vec2<bool>(all(vec2<bool>(false, true)), global1.x != 498f), u_input.a.x >= ~var_2.x), (~vec4<u32>(var_3.x, 0u, 1082u, 17422u) & (~vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, var_1) >> ((vec4<u32>(0u, var_3.x, var_3.x, 1u) | vec4<u32>(var_3.x, var_1, var_3.x, 82337u)) % vec4<u32>(32u)))) | (~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, var_3.x, u_input.b.x, u_input.b.x), vec4<u32>(17443u, 77803u, 4294967295u, 2279u)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, var_1, var_3.x, u_input.b.x) << (vec4<u32>(u_input.b.x, u_input.b.x, 31106u, var_3.x) % vec4<u32>(32u)), ~vec4<u32>(u_input.b.x, var_1, 94622u, var_3.x)) % vec4<u32>(32u))), vec3<u32>(43722u, _wgslsmith_sub_u32(4294967295u, func_1(vec2<f32>(global0[_wgslsmith_index_u32(var_3.x, 32u)], 317f))), 28867u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1133f, global0[_wgslsmith_index_u32(38480u, 32u)], global1.x))), vec3<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_1, 32u)] - global1.x), global1.x), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 32u)]) >= _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(4294967295u, 32u)])))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-810f + global1.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1856f)))), global0[_wgslsmith_index_u32(~(~var_1), 32u)])), all(!vec2<bool>(u_input.b.x <= var_3.x, true)));
    var var_5 = _wgslsmith_f_op_f32(-global1.x);
    var var_6 = Struct_4(vec2<bool>(true, true), vec4<u32>(_wgslsmith_clamp_u32(~1u, _wgslsmith_mod_u32(31966u, countOneBits(85442u)), 0u), ~1u, ~(~var_3.x), select(19975u, _wgslsmith_dot_vec2_u32(~var_4.c.zx, vec2<u32>(u_input.b.x, 1u) >> (vec2<u32>(59595u, u_input.b.x) % vec2<u32>(32u))), !(var_4.a.x == var_4.a.x))), _wgslsmith_sub_vec3_u32(reverseBits(_wgslsmith_mod_vec3_u32(max(vec3<u32>(0u, var_4.b.x, 32380u), var_4.b.zxz), vec3<u32>(u_input.b.x, var_3.x, var_4.b.x) & u_input.b)), u_input.b), var_4.d, any(var_4.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(min(1i, firstTrailingBit(36113i)) >> (u_input.b.x % 32u), max(var_2.x, -min(1i, 1i))), var_4.d.x, vec4<f32>(_wgslsmith_f_op_f32(sign(var_6.d.x)), var_6.d.x, _wgslsmith_f_op_f32(round(var_6.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(746f, 1000f)), _wgslsmith_f_op_f32(ceil(var_4.d.x))))), ~var_3.zxx | var_6.c, _wgslsmith_div_vec4_i32(-countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, var_2.x, -1i, 1i), vec4<i32>(u_input.a.x, -10473i, 11355i, var_2.x))), _wgslsmith_div_vec4_i32(vec4<i32>(i32(-1i) * -70274i, ~var_2.x, select(var_2.x, -21336i, var_6.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, var_2.x), vec2<i32>(u_input.a.x, var_2.x))), vec4<i32>(5934i, u_input.a.x, 6386i & var_2.x, -1i))));
}

