struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: f32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1002f);

var<private> global1: array<vec4<i32>, 19>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4) -> vec4<u32> {
    var var_0 = vec2<u32>(8847u, u_input.b);
    var var_1 = ~select(reverseBits(vec4<u32>(1u, var_0.x, 1u, u_input.a)) | (vec4<u32>(1624u, var_0.x, var_0.x, 4294967295u) >> (vec4<u32>(u_input.a, var_0.x, 12237u, 12284u) % vec4<u32>(32u))), (vec4<u32>(61692u, var_0.x, u_input.b, u_input.a) | vec4<u32>(var_0.x, u_input.b, 4294967295u, 21857u)) << (max(vec4<u32>(58241u, u_input.b, 13809u, 4294967295u), vec4<u32>(47233u, u_input.b, 11604u, var_0.x)) % vec4<u32>(32u)), false) & _wgslsmith_clamp_vec4_u32(firstLeadingBit(~vec4<u32>(4294967295u, 0u, 39842u, 4294967295u) | (vec4<u32>(4294967295u, var_0.x, var_0.x, var_0.x) << (vec4<u32>(4294967295u, var_0.x, u_input.a, var_0.x) % vec4<u32>(32u)))), ~vec4<u32>(~var_0.x, var_0.x >> (81486u % 32u), _wgslsmith_sub_u32(var_0.x, 1448u), ~var_0.x), _wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.a, var_0.x, 7540u, 46027u) & vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.a), max(vec4<u32>(u_input.a, var_0.x, u_input.a, 146199u), vec4<u32>(1u, u_input.b, var_0.x, 1u)), !vec4<bool>(arg_0.a, false, false, arg_0.a)), firstTrailingBit(~vec4<u32>(u_input.a, u_input.b, var_0.x, var_0.x))));
    let var_2 = firstLeadingBit(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(~(~global1[_wgslsmith_index_u32(var_1.x, 19u)]), vec4<i32>(-39534i, 2147483647i, -u_input.c, -46933i)), _wgslsmith_div_vec4_i32(~global1[_wgslsmith_index_u32(21014u, 19u)], max(vec4<i32>(arg_0.b.x, -2147483647i, u_input.c, arg_0.b.x), global1[_wgslsmith_index_u32(5753u, 19u)])) & firstTrailingBit(vec4<i32>(arg_0.b.x, -1i, u_input.c, arg_0.b.x))));
    let var_3 = false;
    var var_4 = Struct_1(global0.a);
    return firstLeadingBit(vec4<u32>(~(~48248u), u_input.b, 77925u, reverseBits(var_1.x) & u_input.a)) << (vec4<u32>(4294967295u, abs(~(~5559u)), var_1.x, _wgslsmith_add_u32(1u, var_1.x)) % vec4<u32>(32u));
}

fn func_2(arg_0: Struct_1) -> Struct_5 {
    let var_0 = ~select(func_3(Struct_4(true, vec3<i32>(-54784i, -28382i, 3807i))), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a, 0u, u_input.b), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.a, u_input.b), vec4<u32>(30770u, 50512u, 1u, u_input.a))), select(-73425i, 1i, false) != u_input.c) | ~(select(~vec4<u32>(4987u, u_input.a, 9855u, 1u), vec4<u32>(u_input.a, u_input.b, 82432u, u_input.a), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), false)) | vec4<u32>(~u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.b)), countOneBits(626u), ~u_input.b));
    var var_1 = ~var_0.yzx;
    return Struct_5(max(vec4<u32>(firstTrailingBit(34554u), 4294967295u, ~0u, var_1.x), vec4<u32>((19779u | var_0.x) ^ 10123u, var_1.x, func_3(Struct_4(true, vec3<i32>(-2147483647i, u_input.c, 8742i))).x, ~67805u | var_0.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.a + arg_0.a), _wgslsmith_f_op_f32(max(global0.a, -244f)))), arg_0.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.a, -1231f, false)), _wgslsmith_f_op_f32(f32(-1f) * -617f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, 300f)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.a, arg_0.a)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-240f, arg_0.a) * vec2<f32>(global0.a, arg_0.a)))), select(true, true, true))), vec2<f32>(-695f, 1003f), vec2<bool>(true, true))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_5) -> i32 {
    var var_0 = Struct_4(any(select(select(select(vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(true, false, arg_0.x), arg_0.x), vec3<bool>(arg_0.x, false, arg_0.x), any(vec3<bool>(true, false, arg_0.x))), vec3<bool>(!arg_0.x, all(vec3<bool>(false, true, false)), arg_2.a.x <= 40410u), !vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), _wgslsmith_mod_vec3_i32(vec3<i32>(~u_input.c, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(1i, u_input.c, u_input.c), vec3<i32>(u_input.c, 8907i, u_input.c)), vec3<i32>(2147483647i, 2147483647i, u_input.c)), reverseBits(_wgslsmith_sub_i32(u_input.c, 0i))), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.c, -31878i, 1i), firstTrailingBit(min(vec3<i32>(2147483647i, -46854i, u_input.c), vec3<i32>(u_input.c, 1i, -3257i))))));
    global0 = Struct_1(-1000f);
    var var_1 = Struct_5(arg_2.a, _wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_vec2_f32(arg_2.c + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.c)))));
    let var_2 = Struct_2(vec3<bool>(arg_0.x, all(!select(vec3<bool>(false, arg_0.x, var_0.a), vec3<bool>(var_0.a, var_0.a, false), arg_0.x)), arg_0.x), arg_1, vec4<i32>(1i, -2147483647i, -1i, ~(~var_0.b.x)), arg_1);
    var_1 = Struct_5(~select(~vec4<u32>(4195u, u_input.a, 1u, 0u), ~var_1.a, !select(vec4<bool>(false, false, true, var_2.a.x), vec4<bool>(var_0.a, true, false, false), true)), _wgslsmith_f_op_f32(f32(-1f) * -502f), vec2<f32>(_wgslsmith_f_op_f32(ceil(global0.a)), _wgslsmith_f_op_f32(-arg_2.c.x)));
    return -var_0.b.x;
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = false;
    var var_1 = func_4(vec2<bool>(false, true), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-876f * arg_0) * global0.a) + global0.a)), func_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-339f))))));
    let var_2 = vec4<u32>(u_input.a, 53515u, ~_wgslsmith_mod_u32(abs(u_input.b), countOneBits(u_input.a)), abs(~u_input.b));
    let var_3 = select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), all(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(false, true), true))), vec3<bool>(select(true, u_input.c < 1i, true) & true, false, any(vec3<bool>(true, true, true)) || all(vec2<bool>(true, true))), all(vec3<bool>(true, all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true)), false)));
    let var_4 = global1[_wgslsmith_index_u32(43676u, 19u)];
    return Struct_1(arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a))));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(global0.a)), 751f, any(vec3<bool>(true, u_input.c == u_input.c, true)))));
    var var_1 = firstTrailingBit(-abs(countOneBits(vec3<i32>(-48218i, -42737i, u_input.c))));
    var_0 = func_1(global0.a);
    global0 = func_1(var_0.a);
    let var_2 = Struct_5(min(vec4<u32>(~0u, u_input.b, 1u, ~_wgslsmith_mult_u32(u_input.b, 1578u)), _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(0u, u_input.b, 0u, u_input.b)), countOneBits(vec4<u32>(u_input.a, 0u, 0u, 7808u))) & ~vec4<u32>(u_input.a, u_input.a, u_input.b, 35249u)), _wgslsmith_f_op_f32(-func_2(func_1(_wgslsmith_f_op_f32(abs(-457f)))).b), vec2<f32>(var_0.a, global0.a));
    var var_3 = max(abs(~(~var_2.a.xwz)), vec3<u32>(~func_2(Struct_1(1674f)).a.x, var_2.a.x, u_input.b)) >> (_wgslsmith_sub_vec3_u32(var_2.a.wyx, var_2.a.yzx) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-154f * -642f))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(floor(global0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1322f * var_2.b) * var_0.a), -1556f)), _wgslsmith_div_f32(global0.a, var_2.b), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(var_2.c, _wgslsmith_f_op_vec2_f32(-var_2.c))))), u_input.c);
}

