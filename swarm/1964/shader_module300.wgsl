struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_div_vec4_i32(max(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, -50877i, 0i, -1i), -vec4<i32>(u_input.b, -1402i, u_input.b, 2147483647i)), select(~vec4<i32>(u_input.b, -3284i, u_input.a.x, u_input.d), -vec4<i32>(u_input.d, 0i, u_input.b, 49684i), vec4<bool>(arg_2.a.x, true, true, arg_2.a.x))), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, 2147483647i, 11847i, u_input.b), vec4<i32>(1i, -1i, u_input.b, u_input.d)), vec4<i32>(24176i, -31462i, -1i, u_input.b), max(vec4<i32>(u_input.b, -4149i, -69639i, u_input.a.x), vec4<i32>(u_input.a.x, -14806i, 0i, u_input.b))) & abs(vec4<i32>(u_input.d, -40177i, u_input.b, 24876i))) & _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.d, u_input.a.x & (i32(-1i) * -2147483647i), -6580i >> (u_input.c.x % 32u)), vec4<i32>(-1i) * -vec4<i32>(1i, 12517i, u_input.b, u_input.b));
    let var_1 = ~(~vec4<u32>(5387u, u_input.c.x, ~65067u, 17090u));
    let var_2 = arg_0;
    global0 = 1u;
    var var_3 = _wgslsmith_f_op_f32(sign(-432f));
    return arg_2.a;
}

fn func_2(arg_0: bool, arg_1: i32) -> u32 {
    var var_0 = Struct_2(u_input.c.x, ~u_input.a, Struct_1(select(!select(vec2<bool>(true, false), vec2<bool>(arg_0, arg_0), arg_0), select(!vec2<bool>(arg_0, arg_0), func_3(vec2<f32>(-892f, 1006f), u_input.c, Struct_1(vec2<bool>(arg_0, arg_0))), arg_0), arg_0)));
    var_0 = Struct_2(74481u, u_input.a, var_0.c);
    global0 = u_input.c.x;
    var_0 = Struct_2(19237u, u_input.a, var_0.c);
    global0 = u_input.c.x;
    return 1u;
}

fn func_1() -> Struct_2 {
    let var_0 = firstTrailingBit(~(~(-33279i)));
    global0 = 0u;
    global0 = u_input.c.x;
    global0 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.c.x, 26983u), func_2(true, 35650i));
    global0 = u_input.c.x;
    return Struct_2(u_input.c.x, u_input.a, Struct_1(func_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(620f, 793f) * vec2<f32>(-627f, 615f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(384f, 949f)))), min(u_input.c, vec2<u32>(u_input.c.x, 4235u)), Struct_1(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-725f, 794f)))) + _wgslsmith_div_f32(1015f, _wgslsmith_div_f32(621f, -555f))))), -855f));
    global0 = _wgslsmith_dot_vec3_u32(select(abs(~vec3<u32>(arg_0.a, u_input.c.x, arg_0.a)) >> (~(~vec3<u32>(0u, 33163u, arg_0.a)) % vec3<u32>(32u)), vec3<u32>(4294967295u, ~arg_0.a, _wgslsmith_div_u32(min(arg_0.a, 11181u), 68910u)), !arg_2.a.zyz), vec3<u32>(~_wgslsmith_mod_u32(1u, u_input.c.x), ~_wgslsmith_add_u32(8591u, arg_0.a), 0u) | ~(~vec3<u32>(4294967295u, arg_0.a, 4294967295u)));
    let var_1 = vec3<u32>(arg_0.a, ~_wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(arg_0.a, 0u), _wgslsmith_mod_u32(arg_0.a, 0u)), ~_wgslsmith_mult_u32(1u, 1u)), ~arg_0.a);
    global0 = firstLeadingBit(_wgslsmith_dot_vec2_u32(countOneBits(select(vec2<u32>(71416u, 4294967295u), select(vec2<u32>(u_input.c.x, 38873u), vec2<u32>(arg_0.a, var_1.x), true), vec2<bool>(arg_2.a.x, arg_0.c.a.x))), select(_wgslsmith_div_vec2_u32(~vec2<u32>(38585u, var_1.x), vec2<u32>(2862u, 51050u)), ~u_input.c, arg_1.x)));
    var var_2 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(-select(arg_0.b.x, u_input.b, arg_0.c.a.x), _wgslsmith_add_i32(1i, u_input.d), firstLeadingBit(countOneBits(-56370i)), ~(-618i)), -(~reverseBits(vec4<i32>(-1i, 2147483647i, 0i, -1i))));
    return -78709i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    var var_1 = Struct_2(~u_input.c.x, firstTrailingBit(u_input.a), Struct_1(!vec2<bool>(any(vec3<bool>(true, false, false)), true)));
    let var_2 = var_1.c;
    let var_3 = vec4<i32>(countOneBits(u_input.b), _wgslsmith_add_i32(abs(-3146i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.x, -40885i, -70527i, 38111i) >> (vec4<u32>(0u, 0u, u_input.c.x, var_1.a) % vec4<u32>(32u)), max(vec4<i32>(-2324i, 1i, 21236i, -34339i), vec4<i32>(var_1.b.x, var_1.b.x, u_input.d, 0i))) << (var_1.a % 32u)), -1i, func_4(func_1(), func_3(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(2066f, -447f), vec2<f32>(-485f, -1623f))), vec2<f32>(-1427f, 712f))), ~select(vec2<u32>(0u, 4294967295u), vec2<u32>(var_1.a, 57493u), vec2<bool>(false, false)), func_1().c), Struct_3(select(vec4<bool>(false, false, var_1.c.a.x, true), !vec4<bool>(true, true, true, var_2.a.x), !var_1.c.a.x)), func_1().c.a.x));
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-311f + 1777f)), _wgslsmith_f_op_f32(max(1f, _wgslsmith_div_f32(1066f, -936f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1000f, -2156f), _wgslsmith_f_op_f32(1f + 188f))))), -416f);
    let var_5 = Struct_3(!select(vec4<bool>(true, any(vec3<bool>(var_2.a.x, var_2.a.x, var_1.c.a.x)), false, var_1.c.a.x), select(select(vec4<bool>(var_2.a.x, var_1.c.a.x, var_1.c.a.x, var_1.c.a.x), vec4<bool>(var_2.a.x, var_2.a.x, var_1.c.a.x, var_1.c.a.x), var_2.a.x), !vec4<bool>(var_1.c.a.x, false, true, var_1.c.a.x), !vec4<bool>(var_2.a.x, var_1.c.a.x, false, var_1.c.a.x)), !var_2.a.x == true));
    var var_6 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_4.x, var_4.x))) + -663f), select(vec4<i32>(0i, -1i, -u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(var_3.x, -2147483647i, var_1.b.x), var_3.wwy)), var_3, select(!var_2.a.x, all(vec4<bool>(var_1.c.a.x, false, true, var_6.a.x)), var_6.a.x)) & countOneBits(min(_wgslsmith_sub_vec4_i32(vec4<i32>(var_3.x, u_input.d, var_3.x, 16259i), var_3), vec4<i32>(49649i, var_3.x, var_3.x, -25443i))));
}

