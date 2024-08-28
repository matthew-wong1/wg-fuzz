struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: bool;

var<private> global2: array<vec4<f32>, 17>;

var<private> global3: vec4<f32>;

var<private> global4: vec4<f32> = vec4<f32>(-1000f, 479f, 1000f, -393f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: u32, arg_3: vec2<i32>) -> u32 {
    var var_0 = !select(vec4<bool>(false, true, !all(vec2<bool>(false, false)), !select(true, true, true)), select(vec4<bool>(all(vec2<bool>(false, false)), false, true, true), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false)), any(vec2<bool>(any(vec4<bool>(true, false, true, false)), true)));
    var var_1 = 40571u;
    let var_2 = vec3<i32>(-2147483647i, arg_3.x, -35597i) << (firstLeadingBit(_wgslsmith_add_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1, arg_2, 1u), vec3<u32>(u_input.a, u_input.a, 28398u)), ~(~vec3<u32>(u_input.a, u_input.a, arg_1)))) % vec3<u32>(32u));
    var var_3 = _wgslsmith_mod_u32(~firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 33619u, 0u, arg_1), vec4<u32>(16746u, u_input.a, 4294967295u, 38142u))), arg_2) >> (abs(countOneBits(102788u)) % 32u);
    global2 = array<vec4<f32>, 17>();
    return u_input.a;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: i32) -> i32 {
    var var_0 = ~(vec2<u32>(18780u, u_input.a >> (func_3(vec4<i32>(arg_1.x, 4883i, arg_2, 65487i), 1u, 0u, vec2<i32>(arg_1.x, arg_0.x)) % 32u)) & abs(vec2<u32>(4294967295u, _wgslsmith_div_u32(4456u, u_input.a))));
    var var_1 = Struct_1(global3.x, -1i, ((var_0.x ^ ~var_0.x) ^ u_input.a) ^ _wgslsmith_sub_u32(24811u ^ _wgslsmith_sub_u32(36830u, u_input.a), select(var_0.x, firstLeadingBit(u_input.a), true)), abs(_wgslsmith_dot_vec2_i32(arg_0, arg_0)));
    let var_2 = any(vec3<bool>(!all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), all(vec2<bool>(true, true)), !(select(u_input.a, 44140u, false) >= var_0.x)));
    var var_3 = vec3<u32>(_wgslsmith_mult_u32(4294967295u, ~var_1.c), 4294967295u, ~func_3(_wgslsmith_sub_vec4_i32(vec4<i32>(31729i, arg_2, arg_2, -72181i), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.x, arg_2, var_1.d, -5639i), vec4<i32>(arg_0.x, -22846i, 1i, 1i))), u_input.a, _wgslsmith_dot_vec2_u32(select(vec2<u32>(21563u, 82500u), vec2<u32>(31110u, 0u), var_2), _wgslsmith_add_vec2_u32(vec2<u32>(1u, var_0.x), vec2<u32>(0u, var_0.x))), vec2<i32>(reverseBits(29025i), -27953i & arg_0.x)));
    let var_4 = Struct_2(~var_1.c, ~firstTrailingBit(vec2<u32>(var_0.x, var_1.c)), _wgslsmith_mod_i32(reverseBits(arg_1.x) | _wgslsmith_dot_vec2_i32(abs(arg_1.xz), arg_1.xy), var_1.b), ~_wgslsmith_dot_vec4_u32(~select(vec4<u32>(4294967295u, 1074u, 0u, 62781u), vec4<u32>(u_input.a, var_1.c, u_input.a, 131470u), vec4<bool>(false, var_2, var_2, false)), firstLeadingBit(vec4<u32>(u_input.a, 16464u, var_3.x, 15521u))), Struct_1(global4.x, var_1.b, var_1.c, (countOneBits(var_1.d) << (74395u % 32u)) | ~1i));
    return -1i;
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_2, arg_3: bool) -> Struct_2 {
    let var_0 = Struct_2(~_wgslsmith_mult_u32(~arg_2.b.x, ~u_input.a & u_input.a), vec2<u32>(1u, _wgslsmith_add_u32(0u, _wgslsmith_add_u32(arg_2.e.c, ~20366u))), arg_2.c, u_input.a, Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-571f, global3.x))), _wgslsmith_f_op_f32(round(-468f)))), arg_2.e.d, 48745u, 0i));
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_2.e.b, firstLeadingBit(min(arg_1 | arg_1, abs(-2147483647i))), reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, 34453i, 36728i), vec3<i32>(5406i, 2147483647i, arg_1)))), select(vec4<i32>(select(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.e.b, arg_1), vec2<i32>(-35489i, -2147483647i)), -2147483647i, all(vec4<bool>(true, true, arg_3, arg_3))), 1i, _wgslsmith_mult_i32(var_0.c, 11811i), -32649i), _wgslsmith_mod_vec4_i32(vec4<i32>(-arg_2.e.b, select(-11718i, arg_2.e.d, arg_3), _wgslsmith_mult_i32(-1i, arg_1), _wgslsmith_dot_vec2_i32(vec2<i32>(-115020i, arg_1), vec2<i32>(arg_2.e.d, -1i))), _wgslsmith_mod_vec4_i32(-vec4<i32>(-1i, -149i, arg_2.e.d, arg_1), vec4<i32>(arg_1, arg_2.e.b, 5067i, -31787i))), any(select(vec4<bool>(arg_3, true, arg_3, arg_3), select(vec4<bool>(arg_3, true, true, arg_3), vec4<bool>(false, arg_3, arg_3, true), arg_3), select(vec4<bool>(false, true, false, arg_3), vec4<bool>(arg_3, arg_3, false, true), vec4<bool>(arg_3, true, arg_3, false))))));
    var var_2 = -1015f;
    var var_3 = ~abs(var_0.b.x);
    global0 = arg_2.e.b;
    return Struct_2(_wgslsmith_div_u32(~(arg_2.a | 45834u) | func_3(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1, 29302i, arg_1, -1i), vec4<i32>(11238i, arg_2.e.d, arg_2.c, 43551i), vec4<i32>(-20771i, 3227i, var_0.c, var_0.e.b)), abs(40580u), arg_2.e.c, firstTrailingBit(vec2<i32>(33388i, arg_2.e.b))), _wgslsmith_sub_u32(16252u, ~arg_2.d)), select(reverseBits(~_wgslsmith_div_vec2_u32(var_0.b, var_0.b)), var_0.b, !any(vec4<bool>(true, true, true, true))), -54i, 1u, var_0.e);
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = func_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.x, global3.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x))), 1294f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(330f + global4.x)))), global3.x), firstLeadingBit(_wgslsmith_add_i32(func_2(vec2<i32>(0i, 1i), -vec3<i32>(-2147483647i, 0i, -75869i), -23442i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), -vec2<i32>(80638i, 2147483647i)))), Struct_2(~(_wgslsmith_dot_vec4_u32(vec4<u32>(9928u, u_input.a, 0u, u_input.a), vec4<u32>(10442u, 0u, u_input.a, u_input.a)) & _wgslsmith_add_u32(u_input.a, u_input.a)), _wgslsmith_mod_vec2_u32(countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(14636u, u_input.a), vec2<u32>(u_input.a, u_input.a))), vec2<u32>(u_input.a, firstLeadingBit(u_input.a))), ~13935i, u_input.a, Struct_1(global3.x, i32(-1i) * -832i, ~u_input.a, max(reverseBits(-1i), 2147483647i << (u_input.a % 32u)))), true);
    global4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.e.a * global3.x))), global4.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f + 237f), func_4(global2[_wgslsmith_index_u32(u_input.a, 17u)], var_0.e.d, Struct_2(26584u, var_0.b, -68318i, 1195u, Struct_1(global4.x, var_0.e.d, 1167u, -2147483647i)), false).e.a)), _wgslsmith_f_op_f32(602f + global4.x)) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global2[_wgslsmith_index_u32(1u, 17u)], vec4<f32>(-172f, global4.x, global3.x, 720f)))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, _wgslsmith_f_op_f32(-var_0.e.a), _wgslsmith_f_op_f32(-1407f + -328f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.a)))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-global3.x), select(-(~var_0.e.d), _wgslsmith_div_i32(var_0.c, 1i), true), ~u_input.a, abs(_wgslsmith_mult_i32(var_0.e.d, 2147483647i)));
    let var_2 = var_1.a;
    var_0 = func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(0u, 1u), 17u)], _wgslsmith_f_op_vec4_f32(step(global2[_wgslsmith_index_u32(abs(4294967295u), 17u)], _wgslsmith_div_vec4_f32(global2[_wgslsmith_index_u32(u_input.a, 17u)], vec4<f32>(579f, var_2, -642f, global3.x)))), true)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.a) + _wgslsmith_f_op_f32(min(200f, 489f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.a), 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) * _wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(ceil(var_1.a)))), -3635i, func_4(global2[_wgslsmith_index_u32(abs(57476u), 17u)], _wgslsmith_add_i32(var_0.e.d, firstLeadingBit(var_0.e.b >> (36795u % 32u))), Struct_2(~_wgslsmith_dot_vec4_u32(vec4<u32>(23284u, 63496u, var_0.b.x, 57304u), vec4<u32>(1u, 0u, var_1.c, 0u)), _wgslsmith_clamp_vec2_u32(firstTrailingBit(var_0.b), _wgslsmith_clamp_vec2_u32(vec2<u32>(5584u, var_0.e.c), vec2<u32>(var_1.c, var_1.c), vec2<u32>(0u, var_1.c)), vec2<u32>(4294967295u, u_input.a) ^ var_0.b), ~var_0.e.d, ~u_input.a, Struct_1(_wgslsmith_f_op_f32(min(var_1.a, global4.x)), func_2(vec2<i32>(var_1.d, var_0.c), vec3<i32>(-2147483647i, -1i, -12706i), var_1.b), u_input.a, _wgslsmith_sub_i32(var_0.e.d, var_1.b))), false), all(select(select(select(vec3<bool>(false, arg_0, true), vec3<bool>(true, arg_0, arg_0), arg_0), !vec3<bool>(arg_0, false, arg_0), !arg_0), vec3<bool>(!arg_0, select(arg_0, true, arg_0), !arg_0), (0u | var_0.e.c) >= 4294967295u)));
    return Struct_2(~var_0.e.c, var_0.b, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(-vec2<i32>(var_0.e.d, 2147483647i), vec2<i32>(2147483647i, -14987i), _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, var_0.e.b), vec2<i32>(-21271i, var_1.d))), -(~vec2<i32>(-42036i, var_1.d))), -1i << (_wgslsmith_mult_u32(select(1u, u_input.a, false), ~808u) % 32u), -1i), _wgslsmith_clamp_u32(var_1.c, var_0.a, 4294967295u ^ u_input.a), var_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2888f))) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3.x))), 203f)));
    global2 = array<vec4<f32>, 17>();
    global4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(451f, _wgslsmith_f_op_f32(759f - _wgslsmith_f_op_f32(185f - _wgslsmith_f_op_f32(var_0.e.a + -1077f))), global3.x, _wgslsmith_f_op_f32(trunc(var_0.e.a))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.a, var_0.e.a, var_0.e.a, global3.x))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(17690u, 17u)]))), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1471f, global3.x, global3.x, global4.x) - _wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(8221u, 17u)] + vec4<f32>(global3.x, 1000f, global4.x, 418f)))));
    global0 = var_0.c;
    let var_1 = !select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)), all(vec2<bool>(false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec2<bool>(true, false)))), select(vec4<bool>(false, var_0.e.a <= global4.x, any(vec3<bool>(false, true, true)), true), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true)), vec4<bool>(1000f >= global4.x, all(vec3<bool>(true, false, true)), true, any(vec3<bool>(false, false, true)))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(~var_0.e.c, 17u)]) + global2[_wgslsmith_index_u32(u_input.a, 17u)]), ~vec4<i32>(firstTrailingBit(func_2(vec2<i32>(-1i, var_0.e.d), vec3<i32>(35671i, 0i, var_0.c), 19401i)), -(9322i | var_0.e.d), _wgslsmith_add_i32(-2147483647i, var_0.c << (0u % 32u)), func_1(false).e.d), ~firstLeadingBit(~1u));
}

