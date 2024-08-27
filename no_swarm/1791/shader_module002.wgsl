struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec4<bool>(false, true, false, true), vec2<f32>(-163f, -429f), vec4<u32>(0u, 0u, 120505u, 166357u), -35566i, -1494f), Struct_1(vec4<bool>(false, true, true, false), vec2<f32>(-273f, -2112f), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u), -11525i, -1758f), Struct_1(vec4<bool>(true, true, true, false), vec2<f32>(2617f, -949f), vec4<u32>(25231u, 34007u, 0u, 0u), -1i, 344f), Struct_1(vec4<bool>(true, false, true, true), vec2<f32>(2366f, -1000f), vec4<u32>(2331u, 1u, 43820u, 1u), -1i, -243f), Struct_1(vec4<bool>(false, true, false, false), vec2<f32>(-1657f, 993f), vec4<u32>(16016u, 4294967295u, 53151u, 53533u), -58104i, 482f), Struct_1(vec4<bool>(true, false, false, true), vec2<f32>(-990f, 1000f), vec4<u32>(38669u, 14243u, 47130u, 0u), -1i, 1037f), Struct_1(vec4<bool>(false, false, false, true), vec2<f32>(845f, -1167f), vec4<u32>(1u, 28864u, 0u, 95831u), 0i, 279f), Struct_1(vec4<bool>(true, false, true, false), vec2<f32>(-412f, -394f), vec4<u32>(17287u, 42077u, 1u, 550u), 1i, 881f), Struct_1(vec4<bool>(false, true, false, false), vec2<f32>(385f, 1097f), vec4<u32>(1u, 0u, 4294967295u, 33756u), 2147483647i, 562f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> bool {
    let var_0 = 1u;
    global0 = array<Struct_1, 9>();
    var var_1 = arg_0.e;
    return true;
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> f32 {
    let var_0 = vec4<u32>(arg_2.c.x, ~arg_0, _wgslsmith_clamp_u32(arg_0, _wgslsmith_div_u32(16043u, _wgslsmith_div_u32(49618u & arg_2.c.x, _wgslsmith_mod_u32(arg_2.c.x, 39667u))), 28954u), _wgslsmith_dot_vec3_u32(vec3<u32>(25336u, 700u, ~1u), vec3<u32>(4294967295u, min(_wgslsmith_sub_u32(arg_1, arg_1), 1u), 34499u)));
    global0 = array<Struct_1, 9>();
    var var_1 = Struct_1(vec4<bool>(true, arg_2.a.x, true, (_wgslsmith_f_op_f32(-826f + 1176f) <= arg_2.b.x) || true), arg_2.b, var_0, -(~(-_wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_2.d, 0i), vec3<i32>(arg_2.d, arg_2.d, 5125i)))), -696f);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(340f * 814f), -902f) + -1063f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1622f - arg_2.e))), var_1.b.x);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: bool) -> vec4<bool> {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(exp2(arg_0.e));
    let var_2 = _wgslsmith_f_op_f32(func_4(4294967295u, 24894u << (_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(var_0.c, select(vec4<u32>(arg_0.c.x, 0u, arg_0.c.x, var_0.c.x), vec4<u32>(1u, arg_0.c.x, 61432u, 1u), true)), arg_0.c) % 32u), Struct_1(select(var_0.a, select(select(arg_0.a, var_0.a, false), vec4<bool>(var_0.a.x, true, true, arg_3), false), vec4<bool>(!arg_0.a.x, arg_3, arg_0.a.x, func_3(arg_0, 0i))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(var_0.e * -109f), _wgslsmith_f_op_f32(trunc(arg_2))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.e, 1669f)))), var_0.a.wz)), vec4<u32>(1u, reverseBits(27724u), ~(~var_0.c.x), arg_1), arg_0.d & arg_0.d, _wgslsmith_f_op_f32(arg_2 + arg_0.b.x))));
    var var_3 = vec3<i32>(_wgslsmith_mod_i32(var_0.d, -min(arg_0.d, arg_0.d)), 42652i, _wgslsmith_add_i32(-2147483647i, ~(arg_0.d >> (firstLeadingBit(var_0.c.x) % 32u))));
    var var_4 = ~max(reverseBits(0i | _wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_0.d, 2147483647i), vec3<i32>(2147483647i, var_3.x, var_3.x))), _wgslsmith_dot_vec3_i32(~vec3<i32>(14947i, var_3.x, var_3.x) & _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.d, -23790i, var_0.d), vec3<i32>(60030i, -3826i, arg_0.d)), vec3<i32>(-1i, ~var_0.d, 0i)));
    return vec4<bool>(all(!(!var_0.a)), !arg_0.a.x, var_0.a.x, true);
}

fn func_1(arg_0: u32, arg_1: vec2<i32>) -> bool {
    let var_0 = select(select(select(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), false), vec4<bool>(select(false, false, false), true, true, arg_0 >= 15721u), vec4<bool>(true, true, true, true)), !(!func_2(Struct_1(vec4<bool>(true, false, true, false), vec2<f32>(-681f, 196f), vec4<u32>(arg_0, 0u, 13087u, 1u), arg_1.x, 1167f), arg_0, -667f, true)), !func_2(Struct_1(vec4<bool>(false, true, false, false), vec2<f32>(1451f, 987f), vec4<u32>(108712u, 0u, 55675u, 1u), 0i, 401f), ~arg_0, 1f, true)), vec4<bool>((~arg_0 & arg_0) <= _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(111112u, arg_0), vec2<u32>(4294967295u, 1u)), 0u), true, true, func_3(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0, ~arg_0, _wgslsmith_add_u32(arg_0, 15091u)), 9u)], firstLeadingBit(abs(u_input.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1703f, 977f, false)) - _wgslsmith_f_op_f32(func_4(1u, 6448u, global0[_wgslsmith_index_u32(arg_0, 9u)])))) > _wgslsmith_f_op_f32(f32(-1f) * -1470f));
    global0 = array<Struct_1, 9>();
    var var_1 = var_0.x;
    let var_2 = global0[_wgslsmith_index_u32(~arg_0, 9u)];
    global0 = array<Struct_1, 9>();
    return 989f != _wgslsmith_f_op_f32(exp2(var_2.e));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 9>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_div_f32(-1959f, -587f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-199f, 983f, true))))))) - 309f);
    let var_1 = Struct_1(!select(vec4<bool>(any(vec3<bool>(false, false, true)), true, true, 2147483647i >= u_input.a), vec4<bool>(true, true, true, true), func_1(abs(4294967295u), countOneBits(vec2<i32>(32237i, -2147483647i)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1897f, 907f) + vec2<f32>(-343f, 199f)), vec2<f32>(-1476f, 1237f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(491f, 1056f)))), vec2<bool>(false, true))), vec4<u32>(reverseBits(1u), 63385u, 48100u, ~(~1u)), firstLeadingBit(-u_input.a), _wgslsmith_f_op_f32(step(-782f, -729f)));
    var var_2 = -4441i;
    let var_3 = max(min(vec3<i32>(1i, _wgslsmith_div_i32(18357i << (var_1.c.x % 32u), -11054i), -u_input.a), firstTrailingBit(vec3<i32>(u_input.b, 2147483647i, u_input.a) & vec3<i32>(24941i, var_1.d, u_input.b))), abs(reverseBits(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(1729i, 25054i, -1i), vec3<i32>(u_input.a, var_1.d, 32094i), var_1.a.x), -vec3<i32>(29602i, 34585i, 20715i), -vec3<i32>(2147483647i, -11853i, 18329i)))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x * var_1.b.x))));
    var var_4 = var_1.c;
    var var_5 = global0[_wgslsmith_index_u32(abs(0u), 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~(~(~var_5.c.x))), _wgslsmith_div_vec3_u32(var_1.c.zxy, vec3<u32>(~_wgslsmith_div_u32(43605u, 45094u), var_5.c.x, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(6756u, 1u, var_5.c.x), 1u))));
}

