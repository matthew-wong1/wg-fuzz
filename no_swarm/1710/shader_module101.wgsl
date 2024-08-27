struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<i32>, 6>;

var<private> global2: array<vec4<bool>, 26> = array<vec4<bool>, 26>(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false));

var<private> global3: vec3<bool>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    let var_0 = vec3<u32>(1u, max(abs(1u), 46052u), ~(~(~60058u) >> (select(select(2424u, 16207u, global3.x), 1u, true) % 32u)));
    var var_1 = Struct_2(_wgslsmith_sub_i32(u_input.c, ~abs(0i ^ u_input.a)), _wgslsmith_dot_vec4_u32(~(min(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(17801u, 66650u, var_0.x, var_0.x)) | ~vec4<u32>(var_0.x, 4294967295u, var_0.x, 26254u)), select(~(~vec4<u32>(var_0.x, var_0.x, 1u, var_0.x)), firstLeadingBit(~vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)), true)), Struct_1(true));
    let var_2 = any(vec3<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, var_1.b, 35913u, var_1.b), firstLeadingBit(vec4<u32>(4294967295u, var_0.x, 4096u, var_0.x))) > ~var_1.b, false, !(!global3.x)));
    let var_3 = Struct_2(var_1.a, ~(~max(~var_1.b, firstTrailingBit(var_0.x))), var_1.c);
    global0 = -506i;
    return _wgslsmith_mult_u32(103724u, 1u);
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_1) -> u32 {
    global1 = array<vec2<i32>, 6>();
    global0 = _wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(select(max(_wgslsmith_sub_u32(_wgslsmith_sub_u32(8658u, arg_1.x), func_3()), ~(~93854u)), arg_1.x, (0u | _wgslsmith_mult_u32(13450u, arg_1.x)) >= (arg_1.x ^ ~arg_1.x)), 6u)], vec2<i32>(select(-select(u_input.c, u_input.b, arg_0), ~(~1i), true), firstTrailingBit(-1i) | 4319i));
    global0 = -(_wgslsmith_clamp_i32(0i, -2147483647i, -2147483647i << (select(arg_1.x, arg_1.x, true) % 32u)) & ~_wgslsmith_sub_i32(2147483647i >> (arg_1.x % 32u), 32137i));
    let var_0 = arg_0;
    let var_1 = select(select(!vec4<bool>(arg_2.a, any(global2[_wgslsmith_index_u32(32320u, 26u)]), true, arg_0), !select(select(vec4<bool>(arg_2.a, var_0, var_0, true), vec4<bool>(true, true, true, false), true), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_1.x, arg_1.x), 26u)], arg_2.a), global2[_wgslsmith_index_u32(4294967295u, 26u)]), !select(vec4<bool>(all(global3.xy), global3.x, true, true), select(select(vec4<bool>(true, false, var_0, true), global2[_wgslsmith_index_u32(1u, 26u)], vec4<bool>(true, arg_0, false, arg_0)), !vec4<bool>(var_0, false, true, global3.x), true), select(vec4<bool>(true, global3.x, true, arg_2.a), !vec4<bool>(false, false, global3.x, true), arg_0)), !(!vec4<bool>(-102979i <= u_input.c, false, any(vec2<bool>(arg_2.a, true)), arg_0)));
    return 45674u;
}

fn func_1() -> vec3<u32> {
    global3 = !(!vec3<bool>(all(!vec4<bool>(global3.x, true, true, false)), true, global3.x));
    var var_0 = vec2<u32>(~(~firstTrailingBit(reverseBits(1u))), min(min(~func_2(true, vec4<u32>(138u, 1u, 1u, 1u), Struct_1(global3.x)), _wgslsmith_div_u32(_wgslsmith_add_u32(7640u, 72139u), 4294967295u)), _wgslsmith_sub_u32(16853u, _wgslsmith_dot_vec4_u32(vec4<u32>(2724u, 57015u, 35740u, 80033u), vec4<u32>(107316u, 0u, 0u, 20498u)) ^ 4294967295u)));
    var var_1 = reverseBits(_wgslsmith_mult_vec2_i32(global1[_wgslsmith_index_u32(var_0.x, 6u)], _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), ~global1[_wgslsmith_index_u32(0u, 6u)]), -(global1[_wgslsmith_index_u32(66937u, 6u)] >> (vec2<u32>(110136u, var_0.x) % vec2<u32>(32u))))));
    var var_2 = ~(~_wgslsmith_clamp_i32(min(-2147483647i ^ var_1.x, var_1.x), -(i32(-1i) * -84283i), var_1.x));
    global2 = array<vec4<bool>, 26>();
    return vec3<u32>(var_0.x, var_0.x, 31895u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global3.zz;
    global3 = !(!(!select(!vec3<bool>(global3.x, false, var_0.x), select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, true, global3.x), global3.x), vec3<bool>(false, global3.x, var_0.x))));
    global1 = array<vec2<i32>, 6>();
    var var_1 = _wgslsmith_mod_vec3_u32(~(vec3<u32>(~1u, ~83791u, firstTrailingBit(36416u)) | vec3<u32>(1u, 1u, 1u)), abs(~vec3<u32>(1u, 1u, 1u)));
    var var_2 = _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(countOneBits(reverseBits(~vec3<u32>(var_1.x, 33322u, var_1.x))), vec3<u32>(var_1.x, ~var_1.x, 4294967295u)), _wgslsmith_sub_vec3_u32(~vec3<u32>(var_1.x & 1u, abs(0u), ~var_1.x), ~vec3<u32>(var_1.x << (60187u % 32u), 0u, 15564u)), select(select(_wgslsmith_add_vec3_u32(abs(vec3<u32>(var_1.x, 1u, 4294967295u)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, var_1.x, var_1.x), vec3<u32>(0u, var_1.x, var_1.x))), countOneBits(func_1()), !select(vec3<bool>(global3.x, true, var_0.x), vec3<bool>(global3.x, var_0.x, global3.x), var_0.x)), countOneBits(min(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, var_1.x, 58092u), vec3<u32>(1u, var_1.x, 0u)), ~vec3<u32>(1u, 67523u, 31318u))), (var_1.x == func_1().x) | any(vec4<bool>(var_0.x, var_0.x, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -892f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1568f))))), 0u, _wgslsmith_mult_i32(abs(u_input.a), _wgslsmith_sub_i32(u_input.a, ~u_input.c >> (countOneBits(1u) % 32u))), 5503u << (var_2.x % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -613f)))));
}

