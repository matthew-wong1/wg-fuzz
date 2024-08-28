struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 6>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec4<i32> {
    let var_0 = select(true, true, true);
    global0 = array<vec4<bool>, 6>();
    var var_1 = select(vec2<i32>(~countOneBits(2147483647i), countOneBits(u_input.a)) ^ _wgslsmith_sub_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(59756i, -1i)), _wgslsmith_div_vec2_i32(abs(vec2<i32>(-15360i, 2147483647i)), firstTrailingBit(vec2<i32>(-1i, -1i)))), _wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.a, -52172i) >> (firstLeadingBit(vec2<u32>(54456u, 4294967295u)) % vec2<u32>(32u)), ~vec2<i32>(-u_input.a, -2086i)), !select(vec2<bool>(true, var_0), vec2<bool>(!var_0, false), var_0));
    var var_2 = vec3<i32>(0i, u_input.a, _wgslsmith_mult_i32(-1i, var_1.x));
    let var_3 = vec4<u32>(1u, _wgslsmith_dot_vec2_u32(~select(firstLeadingBit(vec2<u32>(0u, 48905u)), ~vec2<u32>(1u, 67692u), vec2<bool>(var_0, true)), vec2<u32>(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(0u, 0u, 40305u)), vec3<u32>(1u, 1u, 1u)), abs(0u << (0u % 32u)))), 1u, _wgslsmith_div_u32(~28783u, 28423u));
    return vec4<i32>(-var_2.x, max(reverseBits(0i), u_input.a), u_input.a, -firstLeadingBit(_wgslsmith_dot_vec2_i32(~vec2<i32>(-53425i, u_input.a), vec2<i32>(var_1.x, var_1.x))));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    var var_0 = arg_3.b;
    var_0 = _wgslsmith_clamp_vec4_i32(-(vec4<i32>(-1i) * -func_3()), arg_3.b, vec4<i32>(-17005i, _wgslsmith_sub_i32(firstLeadingBit(var_0.x), _wgslsmith_add_i32(arg_1, 0i)), firstTrailingBit(arg_2.c.b.x), arg_3.b.x));
    global0 = array<vec4<bool>, 6>();
    let var_1 = -2147483647i;
    var var_2 = abs(vec2<i32>(_wgslsmith_clamp_i32(firstLeadingBit(-35800i), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(1i, -34155i, arg_0.c.b.x, arg_3.b.x)), vec4<i32>(-1i, arg_0.c.b.x, u_input.a, arg_3.b.x)), _wgslsmith_sub_i32(-1i, ~var_1)), (i32(-1i) * -var_1) << (0u % 32u)));
    return _wgslsmith_sub_u32(61569u, _wgslsmith_mod_u32(18959u, firstTrailingBit(1u)));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: Struct_2, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(~_wgslsmith_add_u32(arg_0, func_2(Struct_2(true, Struct_1(arg_2.b.a, vec4<i32>(arg_2.c.b.x, arg_2.c.b.x, 1i, 27990i)), arg_2.c), u_input.a, Struct_2(false, Struct_1(arg_2.c.a, vec4<i32>(-1i, 2147483647i, -7273i, -1i)), arg_2.c), arg_2.c)), 3702u, arg_0), ~(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(23766u, 49931u, 1u), vec3<u32>(0u, arg_0, arg_0)), vec3<u32>(4294967295u, 38999u, arg_0)) >> (_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, arg_0, arg_0), vec3<u32>(arg_0, arg_0, arg_0)), reverseBits(vec3<u32>(1u, arg_0, arg_0)), ~vec3<u32>(14260u, 1u, 61630u)) % vec3<u32>(32u))));
    let var_1 = 1i;
    var var_2 = arg_2.b.b;
    var_0 = firstLeadingBit(vec3<u32>(~_wgslsmith_sub_u32(arg_0, arg_0), ~var_0.x, ~abs(1u)));
    var var_3 = arg_2;
    return Struct_1(var_3.c.a, firstTrailingBit(vec4<i32>(u_input.a, -2147483647i, arg_2.c.b.x, _wgslsmith_sub_i32(-var_2.x, var_1))));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1092f - _wgslsmith_f_op_f32(f32(-1f) * -248f))))));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: u32, arg_3: bool) -> Struct_2 {
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~select(0u << (select(~9916u, ~4294967295u, any(vec4<bool>(true, true, false, true))) % 32u), ~33431u, false);
    var var_1 = func_5(Struct_2(true, Struct_1(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 37292i, u_input.a, u_input.a) >> (vec4<u32>(41098u, 61875u, 4294967295u, 4294967295u) % vec4<u32>(32u)), ~vec4<i32>(u_input.a, 20584i, 8303i, 5741i), vec4<i32>(34071i, u_input.a, u_input.a, u_input.a) ^ vec4<i32>(-21620i, 2147483647i, u_input.a, u_input.a))), Struct_1(vec3<bool>(true, any(vec2<bool>(false, false)), any(global0[_wgslsmith_index_u32(53019u, 6u)])), _wgslsmith_div_vec4_i32(-vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, 18138i, u_input.a, u_input.a)))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-539f, -1894f), _wgslsmith_f_op_f32(1163f - 364f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(~104147u, func_1(13722u, true, Struct_2(true, Struct_1(vec3<bool>(false, true, true), vec4<i32>(u_input.a, 38055i, u_input.a, u_input.a)), Struct_1(vec3<bool>(false, true, false), vec4<i32>(-2147483647i, 1i, u_input.a, -65137i))), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -452f) * -894f))), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 10294u, 0u), vec3<u32>(0u, 11172u, 4294967295u)), ~0u), 77584u, 1u), vec3<u32>(select(1u, firstLeadingBit(5288u), true), func_2(Struct_2(false, Struct_1(vec3<bool>(false, false, true), vec4<i32>(1i, -6277i, u_input.a, 0i)), Struct_1(vec3<bool>(true, false, true), vec4<i32>(u_input.a, -15992i, u_input.a, u_input.a))), u_input.a, Struct_2(true, Struct_1(vec3<bool>(false, true, true), vec4<i32>(u_input.a, -1i, u_input.a, u_input.a)), Struct_1(vec3<bool>(false, true, true), vec4<i32>(-2147483647i, u_input.a, u_input.a, 2147483647i))), func_1(0u, true, Struct_2(true, Struct_1(vec3<bool>(true, false, false), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), Struct_1(vec3<bool>(true, false, false), vec4<i32>(15146i, -117453i, 39672i, u_input.a))), true)), ~(~44359u))), true);
    var var_2 = countOneBits(_wgslsmith_add_i32(-24104i, u_input.a));
    var var_3 = Struct_1(vec3<bool>(true && func_5(Struct_2(var_1.c.a.x, var_1.b, Struct_1(var_1.c.a, var_1.b.b)), vec2<f32>(-323f, -762f), 1u, false).b.a.x, !var_1.c.a.x, var_1.b.a.x & all(vec3<bool>(true, false, false))), var_1.c.b);
    var_1 = Struct_2(var_1.b.a.x, Struct_1(var_1.c.a, vec4<i32>(-_wgslsmith_dot_vec3_i32(var_1.c.b.xxw, vec3<i32>(var_1.c.b.x, 1i, var_3.b.x)), var_1.b.b.x, var_1.b.b.x >> (~40292u % 32u), ~(u_input.a ^ u_input.a))), Struct_1(!vec3<bool>(true, var_3.a.x, true), var_1.b.b << ((~vec4<u32>(4294967295u, 20610u, 0u, 31598u) << (firstTrailingBit(vec4<u32>(1u, 3072u, 0u, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var var_4 = func_2(Struct_2(var_3.a.x, Struct_1(vec3<bool>(!var_1.b.a.x, true, true), var_3.b), Struct_1(!var_3.a, func_3())), var_1.b.b.x, func_5(func_5(func_5(func_5(Struct_2(false, var_1.c, Struct_1(var_3.a, vec4<i32>(-6114i, -8056i, var_3.b.x, 1i))), vec2<f32>(-1000f, 1153f), 26469u, true), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2093f, -2336f))), _wgslsmith_sub_u32(4294967295u, 0u), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1062f, 1056f))), _wgslsmith_mult_u32(54063u, 1u), select(var_1.b.a.x, false, var_3.a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), 1u, false), func_5(Struct_2(var_1.b.a.x | var_1.a, Struct_1(vec3<bool>(false, var_3.a.x, var_1.b.a.x), _wgslsmith_mod_vec4_i32(var_1.b.b, vec4<i32>(-2147483647i, u_input.a, var_1.c.b.x, 2147483647i))), var_1.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(138f, 489f) + vec2<f32>(-772f, -551f))), ~0u, true & !var_1.b.a.x).c);
    var var_5 = reverseBits(var_3.b.xzz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(func_4(countOneBits(countOneBits(1u)), Struct_1(var_1.c.a, var_1.c.b))))));
}

