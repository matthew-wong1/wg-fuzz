struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: vec4<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

var<private> global1: array<u32, 2>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<u32>) -> vec4<i32> {
    let var_0 = ~(abs(~arg_1.wyz) >> (vec3<u32>(_wgslsmith_add_u32(46254u, countOneBits(4294967295u)), min(1u, ~1u), 1u) % vec3<u32>(32u)));
    var var_1 = vec2<i32>(select(-88667i, abs(_wgslsmith_add_i32(-arg_0.x, -1i & u_input.b)), false), _wgslsmith_sub_i32(-1i, 2147483647i));
    var var_2 = false;
    var_1 = vec2<i32>(reverseBits(-22980i), _wgslsmith_mod_i32(reverseBits(1i), _wgslsmith_mult_i32(0i, -min(arg_0.x, 62302i))));
    var_1 = u_input.c;
    return -vec4<i32>(~(~u_input.b), var_1.x, i32(-1i) * -_wgslsmith_dot_vec2_i32(arg_0, vec2<i32>(arg_0.x, var_1.x)), 63340i);
}

fn func_2() -> u32 {
    global1 = array<u32, 2>();
    let var_0 = Struct_1(true, -func_3(u_input.c, _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(global1[_wgslsmith_index_u32(u_input.d, 2u)], global1[_wgslsmith_index_u32(u_input.d, 2u)], u_input.d, global1[_wgslsmith_index_u32(56593u, 2u)])), ~vec4<u32>(4294967295u, 29228u, 78459u, 0u), firstLeadingBit(vec4<u32>(u_input.e, global1[_wgslsmith_index_u32(u_input.d, 2u)], 45927u, global1[_wgslsmith_index_u32(1u, 2u)])))), ~(~_wgslsmith_sub_u32(u_input.d, u_input.e)), u_input.b, _wgslsmith_f_op_f32(-543f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1457f)), _wgslsmith_f_op_f32(step(-111f, 263f))))))));
    global1 = array<u32, 2>();
    global1 = array<u32, 2>();
    var var_1 = _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(~42094u, 2u)], 4294967295u) > _wgslsmith_sub_u32(abs(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(1u, 2u)], u_input.e), vec2<u32>(1u, u_input.e)))), firstTrailingBit(firstLeadingBit(11723u)));
    return 1u;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = !vec4<bool>(!arg_2.x, true, arg_2.x, true);
    global0 = array<Struct_2, 27>();
    var var_1 = countOneBits(_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(1u, 0u, 16331u, arg_1.c)) << (min(select(vec4<u32>(57372u, 4294967295u, arg_1.c, u_input.d), vec4<u32>(arg_0.x, 71103u, u_input.e, 60304u), var_0.x), vec4<u32>(28260u, 64472u, 0u, 37725u)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_mod_u32(0u, 4294967295u << (0u % 32u)), _wgslsmith_add_u32(4294967295u, arg_0.x), func_2(), select(1u, reverseBits(13698u), 4294967295u == u_input.d))));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-319f))));
    return arg_1;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    global1 = array<u32, 2>();
    var var_0 = vec2<u32>(~global1[_wgslsmith_index_u32(4294967295u, 2u)], ~36180u);
    global0 = array<Struct_2, 27>();
    global0 = array<Struct_2, 27>();
    global1 = array<u32, 2>();
    return arg_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_2(Struct_1(false, vec4<i32>(8954i, ~u_input.a, 18934i, -2147483647i), ~_wgslsmith_clamp_u32(1u, u_input.e, 1u), 0i, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), func_1(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 2u)], 2u)], u_input.e, global1[_wgslsmith_index_u32(83467u, 2u)]), vec3<u32>(u_input.d, 58030u, u_input.d)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e, 0u, u_input.e), vec3<u32>(27559u, 30937u, 1u))), Struct_1(true, ~vec4<i32>(0i, -10901i, 1i, 42501i), global1[_wgslsmith_index_u32(u_input.d, 2u)] >> (global1[_wgslsmith_index_u32(u_input.d, 2u)] % 32u), u_input.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1015f)), vec4<bool>(true, true, true, true)), !vec2<bool>(select(false, false, true), true), !select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)), Struct_1(true, _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, u_input.a, -26577i, u_input.b), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, 0i, u_input.b), vec4<i32>(u_input.b, u_input.a, u_input.b, 2147483647i))), abs(max(global1[_wgslsmith_index_u32(37566u, 2u)], 4294967295u)), 1582i, _wgslsmith_f_op_f32(f32(-1f) * -414f))), global0[_wgslsmith_index_u32(u_input.d, 27u)]);
    var var_1 = !(!any(select(vec2<bool>(var_0.a, var_0.a), select(vec2<bool>(var_0.a, true), vec2<bool>(true, var_0.a), var_0.a), var_0.a)));
    var var_2 = var_0.a;
    var var_3 = firstLeadingBit(vec4<u32>(38763u, 4294967295u, 0u, ~(~(~4294967295u))));
    let var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(abs(var_0.e)))));
    global1 = array<u32, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(~(vec4<i32>(_wgslsmith_dot_vec3_i32(var_0.b.wzw, vec3<i32>(var_0.b.x, u_input.c.x, 43354i)), u_input.c.x, firstTrailingBit(-1i), ~var_0.b.x) << (~_wgslsmith_sub_vec4_u32(vec4<u32>(120146u, u_input.d, 4294967295u, 13842u), vec4<u32>(4182u, var_0.c, 4294967295u, 59859u)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(254f - 1406f), _wgslsmith_f_op_f32(-1145f - var_0.e))))), -1256f)), _wgslsmith_div_vec4_u32(select((vec4<u32>(var_3.x, global1[_wgslsmith_index_u32(18779u, 2u)], 29596u, u_input.d) >> (vec4<u32>(u_input.d, var_0.c, 91096u, u_input.e) % vec4<u32>(32u))) & ~vec4<u32>(global1[_wgslsmith_index_u32(18645u, 2u)], 4294967295u, 0u, 1u), max(vec4<u32>(global1[_wgslsmith_index_u32(var_3.x, 2u)], 4294967295u, 15990u, 1u) ^ vec4<u32>(global1[_wgslsmith_index_u32(var_3.x, 2u)], 32435u, 0u, 4294967295u), ~vec4<u32>(0u, 4294967295u, global1[_wgslsmith_index_u32(var_0.c, 2u)], var_0.c)), var_0.a), ~vec4<u32>(~global1[_wgslsmith_index_u32(22912u, 2u)], var_0.c << (u_input.d % 32u), ~6504u, _wgslsmith_mod_u32(10417u, 4294967295u))), func_4(Struct_2(Struct_1(true, max(vec4<i32>(-1483i, -2147483647i, u_input.b, -2147483647i), vec4<i32>(u_input.c.x, u_input.c.x, -45275i, var_0.b.x)), global1[_wgslsmith_index_u32(select(var_0.c, u_input.d, var_0.a), 2u)], u_input.a, _wgslsmith_f_op_f32(min(1000f, 203f))), Struct_1(true, vec4<i32>(87316i, 0i, u_input.b, -32450i), ~15182u, ~(-12631i), _wgslsmith_f_op_f32(round(var_0.e))), vec2<bool>(var_0.a, !var_0.a), !vec4<bool>(var_0.a, true, var_0.a, var_0.a), var_0), global0[_wgslsmith_index_u32(~u_input.e, 27u)]).c);
}

