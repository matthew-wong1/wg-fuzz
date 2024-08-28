struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 14> = array<vec2<bool>, 14>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false));

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec4<u32>(4294967295u, 4294967295u, 102789u, 70182u), 0u), Struct_1(vec4<u32>(38279u, 1u, 0u, 4294967295u), 0u), Struct_1(vec4<u32>(0u, 0u, 41273u, 65297u), 4294967295u), Struct_1(vec4<u32>(25812u, 1u, 11715u, 4294967295u), 2785u), Struct_1(vec4<u32>(38591u, 36832u, 21689u, 0u), 65196u), Struct_1(vec4<u32>(6192u, 1u, 46984u, 52867u), 0u), Struct_1(vec4<u32>(1u, 1u, 44950u, 114743u), 571u), Struct_1(vec4<u32>(68121u, 1u, 98049u, 0u), 29047u), Struct_1(vec4<u32>(30819u, 0u, 102878u, 42953u), 35094u), Struct_1(vec4<u32>(0u, 54245u, 0u, 4294967295u), 18272u), Struct_1(vec4<u32>(1u, 75341u, 1u, 1u), 1u), Struct_1(vec4<u32>(90963u, 47936u, 104111u, 0u), 21083u), Struct_1(vec4<u32>(57033u, 1u, 0u, 1u), 4294967295u), Struct_1(vec4<u32>(4294967295u, 4294967295u, 47685u, 78077u), 27109u), Struct_1(vec4<u32>(99312u, 4294967295u, 0u, 37098u), 19223u), Struct_1(vec4<u32>(15113u, 0u, 47157u, 24084u), 1u), Struct_1(vec4<u32>(35366u, 21080u, 0u, 1u), 34188u), Struct_1(vec4<u32>(56177u, 37529u, 31754u, 10152u), 1u), Struct_1(vec4<u32>(61769u, 4294967295u, 83283u, 0u), 0u), Struct_1(vec4<u32>(22192u, 12373u, 44087u, 4294967295u), 4294967295u), Struct_1(vec4<u32>(53313u, 12420u, 25072u, 1u), 0u), Struct_1(vec4<u32>(4294967295u, 37223u, 35706u, 33986u), 33933u), Struct_1(vec4<u32>(33567u, 68692u, 44770u, 1u), 26025u), Struct_1(vec4<u32>(1u, 33501u, 52776u, 0u), 1u), Struct_1(vec4<u32>(42333u, 29055u, 1u, 0u), 21521u), Struct_1(vec4<u32>(3498u, 1u, 0u, 1u), 30609u), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 73370u), 55276u), Struct_1(vec4<u32>(23859u, 28329u, 4657u, 82930u), 16737u), Struct_1(vec4<u32>(4294967295u, 4294967295u, 41943u, 0u), 38848u), Struct_1(vec4<u32>(0u, 85577u, 1u, 1u), 1u), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 0u), 11566u));

var<private> global2: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = _wgslsmith_add_vec4_i32(firstTrailingBit(_wgslsmith_div_vec4_i32(select(-vec4<i32>(u_input.d, u_input.d, 10458i, u_input.d), max(vec4<i32>(-1i, -4045i, -1i, 29625i), vec4<i32>(u_input.d, 2147483647i, u_input.d, u_input.d)), true), vec4<i32>(u_input.d, u_input.d, ~u_input.d, u_input.d))), vec4<i32>(u_input.d | -1i, ~u_input.d, _wgslsmith_sub_i32(-2147483647i, _wgslsmith_div_i32(39157i, -2147483647i)), _wgslsmith_div_i32(i32(-1i) * -52904i, u_input.d)) & vec4<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.d, -2147483647i, 36009i), abs(vec4<i32>(-48220i, -85i, u_input.d, u_input.d))), _wgslsmith_dot_vec4_i32(~vec4<i32>(54759i, 74915i, -2147483647i, u_input.d), countOneBits(vec4<i32>(-2147483647i, -26i, 0i, u_input.d))), ~(-66541i)));
    let var_1 = ~u_input.e.zz;
    var var_2 = global1[_wgslsmith_index_u32(~arg_0.a.x, 31u)];
    var var_3 = ~u_input.c;
    global2 = all(select(vec3<bool>(true, true, any(vec4<bool>(true, true, true, true))), vec3<bool>(false | (1u >= u_input.a), select(any(vec4<bool>(false, true, true, false)), u_input.c != 5097u, true), true), true));
    return ~(~(~u_input.d));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_1, arg_3: vec3<bool>) -> i32 {
    global0 = array<vec2<bool>, 14>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1)) * arg_1) - 1000f), 1f));
    global2 = true;
    let var_1 = _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_add_u32(select(u_input.a, arg_2.b, true), reverseBits(u_input.c)), 4294967295u) >> ((~vec2<u32>(9923u, u_input.e.x) & _wgslsmith_div_vec2_u32(vec2<u32>(arg_2.a.x, 32761u), vec2<u32>(1u, 1u))) % vec2<u32>(32u)), u_input.e.zz);
    let var_2 = arg_0;
    return func_2(Struct_1(select(~_wgslsmith_mult_vec4_u32(u_input.e, vec4<u32>(4294967295u, 4294967295u, 37333u, 72880u)), _wgslsmith_div_vec4_u32(u_input.e, arg_2.a), true), arg_2.b));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: vec3<i32>) -> Struct_1 {
    global0 = array<vec2<bool>, 14>();
    var var_0 = arg_0.x;
    let var_1 = vec4<u32>(1u, _wgslsmith_mod_u32(49620u, ~u_input.c), 47476u, ~arg_1.x);
    let var_2 = arg_0;
    let var_3 = Struct_1(abs(vec4<u32>(firstLeadingBit(64020u), arg_1.x, abs(arg_1.x), _wgslsmith_add_u32(var_1.x, u_input.e.x))) >> (~var_1 % vec4<u32>(32u)), var_1.x);
    return global1[_wgslsmith_index_u32(var_1.x, 31u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_3(select(-vec4<i32>(-u_input.d, ~36981i, u_input.d, -16044i), _wgslsmith_sub_vec4_i32(~(vec4<i32>(-2147483647i, 0i, u_input.d, 14205i) << (u_input.e % vec4<u32>(32u))), vec4<i32>(u_input.d, -8942i, 5912i, 2147483647i)), vec4<bool>(true != any(vec3<bool>(true, false, true)), select(true, true, false), true, false)), u_input.e & (countOneBits(vec4<u32>(u_input.e.x, u_input.e.x, u_input.b, 41379u)) & _wgslsmith_sub_vec4_u32(u_input.e, vec4<u32>(900u, 0u, u_input.e.x, 25784u) << (u_input.e % vec4<u32>(32u)))), vec3<i32>(-1i) * -vec3<i32>(reverseBits(u_input.d), u_input.d, func_1(false, 1165f, global1[_wgslsmith_index_u32(u_input.c, 31u)], vec3<bool>(false, false, true))));
    global1 = array<Struct_1, 31>();
    var var_1 = !(u_input.d >= ~_wgslsmith_dot_vec3_i32(~vec3<i32>(0i, -35742i, u_input.d), -vec3<i32>(2147483647i, -31320i, -10496i)));
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(244f, -1213f)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(931f, 278f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))))));
    var_1 = any(vec4<bool>(true, false, _wgslsmith_div_i32(u_input.d >> (55133u % 32u), u_input.d) != firstLeadingBit(u_input.d), true));
    var var_3 = var_2.x;
    let var_4 = Struct_1(u_input.e, ~(~firstLeadingBit(21054u)));
    var var_5 = var_4.b;
    global2 = min(u_input.d, u_input.d | -1i) >= _wgslsmith_div_i32(~0i, -10973i);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.yxx << (firstLeadingBit(max(_wgslsmith_sub_vec3_u32(var_4.a.wxy, vec3<u32>(27588u, 32674u, var_4.a.x)), var_0.a.xww)) % vec3<u32>(32u)), (vec2<u32>(var_0.a.x, u_input.a & var_4.a.x) | vec2<u32>(4294967295u, ~36092u)) ^ select(vec2<u32>(countOneBits(var_0.a.x), u_input.a << (u_input.b % 32u)), var_0.a.yw, vec2<bool>(true, true)), ~42503u, u_input.d, var_0.a.x);
}

