struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: i32,
    d: Struct_2,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: Struct_3,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7>;

var<private> global1: u32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_5, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> u32 {
    global1 = 0u;
    var var_0 = !select(!select(vec2<bool>(true, arg_1.d.x), select(arg_0.c.d.d, vec2<bool>(arg_0.d, true), arg_0.d), select(arg_1.d, arg_0.c.a.xz, arg_0.c.b.x)), select(select(vec2<bool>(arg_1.d.x, arg_1.d.x), arg_1.d, select(vec2<bool>(true, arg_1.d.x), vec2<bool>(true, arg_0.d), arg_1.d.x)), arg_0.c.b.zx, select(!vec2<bool>(arg_1.d.x, true), !vec2<bool>(arg_1.d.x, arg_0.c.d.d.x), any(arg_0.c.d.d))), (select(arg_0.d, true, arg_0.d) == arg_0.d) && (_wgslsmith_f_op_f32(ceil(arg_2.b.x)) > 296f));
    global1 = 4294967295u;
    var var_1 = Struct_3(select(arg_0.c.a, select(vec4<bool>(true, var_0.x, all(arg_0.c.a.yzz), all(arg_0.c.b)), !arg_0.c.a, arg_0.c.d.d.x), true || arg_1.d.x), select(!vec3<bool>(arg_1.d.x, any(arg_0.c.a.zyw), true), vec3<bool>(true, var_0.x, true), 18382u <= arg_1.c), 37286i, Struct_2(vec3<i32>(2147483647i, 2147483647i, arg_0.a), ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.d.c, 0u), vec2<u32>(1u, arg_0.c.d.b)), ~max(~28510u, ~51419u), select(select(vec2<bool>(false, true), vec2<bool>(false, var_0.x), select(vec2<bool>(var_0.x, true), arg_0.c.d.d, vec2<bool>(true, arg_1.d.x))), !vec2<bool>(false, arg_0.c.b.x), arg_1.d.x)), arg_2.b);
    global1 = 4294967295u >> (~_wgslsmith_div_u32(abs(var_1.d.c | 39643u), arg_1.c) % 32u);
    return var_1.d.c;
}

fn func_2(arg_0: vec3<bool>, arg_1: i32) -> vec3<i32> {
    global1 = _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~firstLeadingBit(14598u), 39570u, ~abs(33992u), 11257u), vec4<u32>(~abs(0u), 4294967295u, 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(85309u, 4294967295u, 23659u), min(vec3<u32>(43681u, 1u, 1u), vec3<u32>(0u, 79331u, 26794u))))), min(max(~_wgslsmith_sub_u32(4294967295u, 0u), _wgslsmith_mod_u32(43235u, 1u) & func_3(Struct_5(2147483647i, Struct_1(arg_1, vec2<f32>(global0[_wgslsmith_index_u32(67243u, 7u)], -487f), 0i, 260f), Struct_3(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec3<bool>(arg_0.x, false, false), u_input.a.x, Struct_2(u_input.d, 0u, 15891u, vec2<bool>(arg_0.x, arg_0.x)), vec2<f32>(global0[_wgslsmith_index_u32(0u, 7u)], 811f)), true), Struct_2(u_input.d, 0u, 20609u, vec2<bool>(arg_0.x, true)), Struct_1(arg_1, vec2<f32>(global0[_wgslsmith_index_u32(1u, 7u)], -934f), -1i, -733f), 1000f)), _wgslsmith_mod_u32(15986u, ~min(0u, 1u))));
    var var_0 = u_input.d;
    var var_1 = vec2<u32>(firstTrailingBit(~(~1u)), countOneBits(79605u));
    let var_2 = i32(-1i) * -(-1i << (firstTrailingBit(var_1.x) % 32u));
    var var_3 = _wgslsmith_mod_vec2_u32(~(~vec2<u32>(93015u, 1u)), ~max(vec2<u32>(~4294967295u, abs(var_1.x)), ~abs(vec2<u32>(var_1.x, 1449u))));
    return _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(~(~vec3<i32>(12074i, var_0.x, arg_1)), u_input.d), firstLeadingBit(u_input.a), _wgslsmith_div_vec3_i32(firstLeadingBit(-vec3<i32>(-1i, -30524i, 16795i) | -vec3<i32>(19757i, var_0.x, -20153i)), reverseBits(u_input.d)));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_2(-_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(func_2(vec3<bool>(arg_0.x, false, false), u_input.c.x), u_input.d), u_input.a), 1u, 37271u, !select(select(!arg_0, select(arg_0, arg_0, vec2<bool>(true, true)), select(vec2<bool>(arg_0.x, true), vec2<bool>(false, arg_0.x), arg_0)), !arg_0, select(any(vec3<bool>(arg_0.x, false, true)), arg_0.x & arg_0.x, arg_0.x)));
    return Struct_1(-16183i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-531f)))), global0[_wgslsmith_index_u32(1u, 7u)])), -2147483647i, _wgslsmith_f_op_f32(405f - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(27237u, 7u)])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(~countOneBits(~_wgslsmith_sub_u32(73718u, 1u)), reverseBits(_wgslsmith_clamp_u32(min(firstLeadingBit(4294967295u), 0u), ~41407u, firstTrailingBit(1u))));
    let var_1 = Struct_5(u_input.c.x, func_1(vec2<bool>(true, any(vec3<bool>(true, false, false)))), Struct_3(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), vec3<bool>(true, true, true), select(countOneBits(u_input.d.x), _wgslsmith_mod_i32(u_input.a.x, _wgslsmith_clamp_i32(u_input.b, -1i, u_input.c.x)), true), Struct_2(vec3<i32>(0i, 4434i, u_input.b ^ 177i), var_0.x, firstTrailingBit(abs(var_0.x)), vec2<bool>(-12346i < u_input.a.x, true)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(199f, global0[_wgslsmith_index_u32(9988u, 7u)]))), vec2<f32>(global0[_wgslsmith_index_u32(2865u, 7u)], -1365f), any(vec4<bool>(true, false, false, false)) || true))), true);
    let var_2 = var_1;
    var var_3 = _wgslsmith_mult_vec4_i32(-firstLeadingBit(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.c.d.a.x, -1i, -706i, var_1.b.c), vec4<i32>(var_1.b.a, var_2.c.d.a.x, var_1.a, var_2.a)), vec4<i32>(3846i, -2860i, var_1.b.a, var_2.b.c) >> (vec4<u32>(57107u, var_1.c.d.b, var_2.c.d.b, var_2.c.d.b) % vec4<u32>(32u)))), vec4<i32>(u_input.c.x, i32(-1i) * -2147483647i, min(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(var_1.c.d.a, vec3<i32>(-56041i, u_input.c.x, var_1.a)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, -3546i, var_1.b.a), vec3<i32>(13954i, var_1.c.d.a.x, 0i))), var_2.c.c), (var_1.c.c ^ abs(-1i)) ^ u_input.b));
    var var_4 = var_1.c.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, var_4.c, var_4.c), select(vec3<u32>(var_1.c.d.c, var_2.c.d.c, var_2.c.d.c) & vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(var_4.c, 1u, 4294967295u), var_4.d.x)), _wgslsmith_sub_u32(~(115876u ^ var_2.c.d.b), ~(~var_1.c.d.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, _wgslsmith_f_op_f32(var_2.c.e.x + var_2.b.d), 896f)))));
}

