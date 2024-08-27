struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec3<f32>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 5> = array<vec2<u32>, 5>(vec2<u32>(4294967295u, 36298u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 34944u), vec2<u32>(4294967295u, 13077u), vec2<u32>(0u, 40004u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> u32 {
    return 9117u;
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: f32) -> vec4<i32> {
    global0 = array<vec2<u32>, 5>();
    var var_0 = select(-_wgslsmith_add_i32(firstTrailingBit(_wgslsmith_sub_i32(u_input.a, u_input.a)), i32(-1i) * -47640i), -10992i, arg_1.x);
    var var_1 = max(countOneBits(_wgslsmith_clamp_u32(1u, u_input.c.x, countOneBits(1u | arg_2.x))), _wgslsmith_sub_u32(firstTrailingBit(4294967295u >> (1u % 32u)) ^ arg_2.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_2.x, 0u), select(vec2<u32>(u_input.c.x, 4294967295u) ^ global0[_wgslsmith_index_u32(arg_2.x, 5u)], u_input.c, select(vec2<bool>(false, false), vec2<bool>(arg_1.x, arg_1.x), arg_1.x)))));
    let var_2 = ~reverseBits(_wgslsmith_add_u32(u_input.c.x << (arg_2.x % 32u), arg_2.x) ^ 2701u);
    let var_3 = arg_2.xy;
    return -_wgslsmith_sub_vec4_i32(~(~vec4<i32>(-87238i, u_input.b.x, u_input.b.x, 2147483647i)) << (_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.x, var_3.x, 14388u, var_2), vec4<u32>(1u, arg_2.x, var_3.x, var_2)) % vec4<u32>(32u)), ~(-vec4<i32>(0i, u_input.a, 0i, -1i)));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> u32 {
    var var_0 = firstTrailingBit(func_4(any(!arg_0), !arg_0, vec3<u32>(u_input.c.x, select(68039u, func_3(arg_1, 429f), !arg_0.x), _wgslsmith_div_u32(~4294967295u, firstLeadingBit(arg_1.a.x))), _wgslsmith_f_op_f32(-953f - 1f)));
    var_0 = max(~vec4<i32>(1i, -u_input.a, _wgslsmith_div_i32(-var_0.x, -73503i), ~countOneBits(-20898i)), -vec4<i32>(-26084i, 0i, countOneBits(-2147483647i), 43020i));
    let var_1 = Struct_2(~(~vec3<i32>(-4595i, 0i, u_input.b.x)), true, 0u);
    var var_2 = arg_1.a.x;
    let var_3 = vec3<u32>(select(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.c.x, u_input.c.x) & (arg_1.a.x | 4294967295u), 3181u), 1u, var_1.b), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(var_1.c, 0u, u_input.c.x), 94532u), arg_1.b), firstLeadingBit(arg_1.b.x));
    return ~(~(~0u));
}

fn func_1(arg_0: u32) -> Struct_3 {
    global0 = array<vec2<u32>, 5>();
    let var_0 = Struct_2((u_input.b | u_input.b) >> (vec3<u32>(~(u_input.c.x << (u_input.c.x % 32u)), func_2(vec2<bool>(false, true), Struct_1(global0[_wgslsmith_index_u32(7573u, 5u)], vec2<u32>(4294967295u, u_input.c.x))) | 4294967295u, arg_0) % vec3<u32>(32u)), !select(select(true, select(false, false, false), true), 70252u <= func_2(vec2<bool>(false, true), Struct_1(vec2<u32>(arg_0, 1u), vec2<u32>(arg_0, arg_0))), true), 11068u);
    let var_1 = abs(abs(~(~(~vec3<u32>(1u, var_0.c, var_0.c)))));
    let var_2 = countOneBits(select(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-40135i, -51596i, u_input.a, -11642i), vec4<i32>(2147483647i, u_input.b.x, -8391i, var_0.a.x)), firstTrailingBit(vec4<i32>(1i, 0i, var_0.a.x, 19047i))), ~vec4<i32>(var_0.a.x, u_input.b.x, var_0.a.x, var_0.a.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, var_0.a.x, -2147483647i, u_input.a), -vec4<i32>(-1i, var_0.a.x, var_0.a.x, var_0.a.x)) << (vec4<u32>(_wgslsmith_mod_u32(70901u, 4294967295u), func_3(Struct_1(u_input.c, vec2<u32>(4294967295u, arg_0)), -476f), arg_0, firstTrailingBit(var_0.c)) % vec4<u32>(32u)), select(all(!vec3<bool>(false, var_0.b, true)), select(false, false, var_0.b), true)));
    var var_3 = ~0u & reverseBits(arg_0);
    return Struct_3(any(select(vec2<bool>(true, false), !vec2<bool>(false, var_0.b), !vec2<bool>(var_0.b, true))) || all(!select(vec4<bool>(true, false, var_0.b, false), vec4<bool>(true, var_0.b, true, true), vec4<bool>(var_0.b, true, var_0.b, var_0.b))), _wgslsmith_dot_vec3_i32(var_0.a, -u_input.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(459f, -890f, -1134f) - vec3<f32>(104f, 318f, 703f)))) - vec3<f32>(-189f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1089f - 780f) + _wgslsmith_f_op_f32(ceil(-156f))), _wgslsmith_f_op_f32(ceil(-497f)))), _wgslsmith_dot_vec4_u32(vec4<u32>(~(~arg_0), ~_wgslsmith_clamp_u32(arg_0, u_input.c.x, 36554u), ~(~1u), 0u), ~(~vec4<u32>(var_0.c, 38777u, u_input.c.x, var_0.c) & _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, 69205u), vec4<u32>(4294967295u, 1u, 63499u, 4294967295u), vec4<u32>(var_0.c, arg_0, arg_0, 4294967295u)))), Struct_1(vec2<u32>(reverseBits(u_input.c.x), ~1u) ^ var_1.yy, (global0[_wgslsmith_index_u32(~var_1.x, 5u)] | vec2<u32>(1u, var_1.x)) | u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 5>();
    var var_0 = 1u;
    let var_1 = u_input.b;
    let var_2 = ~(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 43455u, u_input.c.x, u_input.c.x) & vec4<u32>(u_input.c.x, 62871u, 9159u, 22683u), ~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x))));
    global0 = array<vec2<u32>, 5>();
    var var_3 = 5123u;
    let var_4 = func_1(4294967295u);
    let var_5 = func_1(func_3(var_4.e, -845f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1501f), var_2.xwx, _wgslsmith_mult_u32(_wgslsmith_mult_u32(func_3(var_5.e, -159f), ~_wgslsmith_add_u32(0u, 1u)), 4294967295u), var_4.c.x);
}

