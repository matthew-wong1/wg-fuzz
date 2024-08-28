struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec3<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23> = array<f32, 23>(1160f, 209f, 1132f, -689f, 428f, -650f, 1822f, -1897f, 498f, 473f, -243f, 798f, -1178f, -128f, 845f, -1000f, -1121f, 2322f, 1471f, -1773f, 1312f, 1624f, -459f);

var<private> global1: array<Struct_3, 32>;

var<private> global2: Struct_2 = Struct_2(vec2<bool>(false, false));

var<private> global3: u32;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: u32, arg_3: u32) -> u32 {
    let var_0 = !select(!(!select(vec3<bool>(global2.a.x, global2.a.x, false), vec3<bool>(true, global2.a.x, false), vec3<bool>(global2.a.x, global2.a.x, false))), vec3<bool>(all(global2.a), all(select(global2.a, global2.a, vec2<bool>(global2.a.x, global2.a.x))), global2.a.x), select(!select(vec3<bool>(false, false, false), vec3<bool>(true, global2.a.x, true), vec3<bool>(false, global2.a.x, false)), !(!vec3<bool>(true, global2.a.x, true)), global2.a.x));
    var var_1 = global1[_wgslsmith_index_u32(5764u, 32u)];
    var var_2 = u_input.a.xy;
    let var_3 = vec4<i32>(-2147483647i, -14865i, ~14413i, u_input.b);
    let var_4 = Struct_1(vec2<bool>(false, var_0.x), vec3<u32>(u_input.a.x, countOneBits(~1u), arg_0.x), vec3<bool>(all(!vec3<bool>(var_0.x, var_0.x, var_0.x)), !all(select(var_0.xy, var_0.yy, vec2<bool>(true, var_0.x))), -1i == min(countOneBits(2147483647i), var_3.x)), vec4<i32>(var_3.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, ~u_input.b, select(u_input.b, var_3.x, global2.a.x), -1i), select(var_3, vec4<i32>(16866i, var_3.x, var_3.x, 3790i), global2.a.x) ^ ~vec4<i32>(var_3.x, u_input.b, var_3.x, 19948i)), -_wgslsmith_dot_vec2_i32(abs(var_3.zx), vec2<i32>(var_3.x, -2147483647i)), _wgslsmith_sub_i32(-2147483647i, ~abs(u_input.b))));
    return ~countOneBits(reverseBits(reverseBits(51645u)));
}

fn func_2(arg_0: vec2<f32>) -> Struct_2 {
    global0 = array<f32, 23>();
    let var_0 = global2.a;
    let var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.b, 0i), vec2<i32>(-3657i, -9398i)), vec2<i32>(u_input.b, -2147483647i)), vec2<i32>(-(~4722i), _wgslsmith_sub_i32(u_input.b, ~u_input.b)));
    var var_2 = Struct_1(global2.a, vec3<u32>(~u_input.c.x, max(u_input.c.x, ~1u), func_3(firstLeadingBit(vec3<u32>(u_input.a.x, 1u, 4294967295u)), 41776u, ~(~21743u), 1489u)), vec3<bool>(true && !(!global2.a.x), all(select(vec4<bool>(false, global2.a.x, var_0.x, false), vec4<bool>(true, global2.a.x, global2.a.x, false), global2.a.x)) || true, u_input.c.x > u_input.a.x), -vec4<i32>(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-4966i, -1i, -1i), vec3<i32>(25085i, var_1, u_input.b))), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 60630i, 37623i, 0i) << (vec4<u32>(u_input.a.x, 1u, u_input.c.x, u_input.c.x) % vec4<u32>(32u)), vec4<i32>(0i, var_1, var_1, 10021i)), var_1 & ~0i, var_1));
    var_2 = Struct_1(vec2<bool>(!all(var_2.c), var_0.x), u_input.a, select(vec3<bool>(!(u_input.b >= 0i), all(var_2.c), !all(vec2<bool>(true, global2.a.x))), var_2.c, vec3<bool>(global2.a.x, var_2.c.x, select(false, true, global2.a.x))), vec4<i32>(var_1, ~var_1, max(2147483647i, _wgslsmith_add_i32(6458i, -51771i)), ~_wgslsmith_add_i32(u_input.b & var_1, 54904i)));
    return Struct_2(global2.a);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_3) -> i32 {
    let var_0 = func_2(arg_0.xy);
    var var_1 = Struct_1(vec2<bool>(true, var_0.a.x), vec3<u32>(31682u, u_input.a.x, _wgslsmith_sub_u32(~_wgslsmith_mod_u32(1u, 13088u), ~max(u_input.c.x, 16863u))), vec3<bool>(all(vec2<bool>(all(vec3<bool>(global2.a.x, false, true)), all(vec2<bool>(true, global2.a.x)))), !var_0.a.x, true), _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(-2147483647i, -1i >> (u_input.a.x % 32u), _wgslsmith_mult_i32(26609i, -6256i), ~u_input.b)), vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, 29598i, 1i), vec4<i32>(u_input.b, 3897i, u_input.b, u_input.b))));
    let var_2 = Struct_3(-478f);
    var_1 = Struct_1(func_2(arg_0.xy).a, select(max(vec3<u32>(4294967295u, var_1.b.x, 72974u) >> (vec3<u32>(var_1.b.x, 4294967295u, 21415u) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_add_u32(30288u, u_input.a.x), var_1.b.x, var_1.b.x)), ~u_input.a, true), vec3<bool>(any(vec4<bool>(false, all(vec4<bool>(true, var_0.a.x, false, var_0.a.x)), true, true)), all(select(vec3<bool>(true, false, true), var_1.c, vec3<bool>(false, var_0.a.x, true))) || (_wgslsmith_f_op_f32(-arg_0.x) >= -1000f), true), abs(~var_1.d));
    var var_3 = global2.a.x;
    return 1i;
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    global0 = array<f32, 23>();
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 23u)]))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(321u, arg_2.b.x, 11541u, 0u), vec4<u32>(arg_2.b.x, 10182u, 0u, 0u)), 5750u), 23u)]) - 148f));
    let var_1 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.a, arg_0))), _wgslsmith_f_op_f32(-arg_0))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 23u)]) - arg_0)), 870f)));
    var var_2 = Struct_3(var_0.a);
    let var_3 = Struct_2(vec2<bool>(false, true));
    return Struct_1(vec2<bool>(select(true, !arg_3.a.x, false), all(select(vec4<bool>(var_3.a.x, false, false, false), !vec4<bool>(global2.a.x, false, arg_3.a.x, false), vec4<bool>(false, false, global2.a.x, true)))), abs(~vec3<u32>(arg_2.b.x, 1u, 4294967295u << (u_input.c.x % 32u))), select(!arg_2.c, arg_2.c, false), arg_2.d >> (vec4<u32>(firstLeadingBit(func_3(vec3<u32>(arg_2.b.x, u_input.a.x, u_input.a.x), arg_2.b.x, 4294967295u, 4294967295u)), max(4294967295u, arg_2.b.x), max(~89133u, ~arg_2.b.x), arg_2.b.x ^ _wgslsmith_add_u32(48549u, 12995u)) % vec4<u32>(32u)));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<f32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(69920u >> ((arg_1.b.x & 1u) % 32u), 1u), 23u)]));
    var var_1 = ~firstLeadingBit(~(33773u >> (1u % 32u))) < ~_wgslsmith_mult_u32(arg_1.b.x, arg_1.b.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.xy * vec2<f32>(arg_2.x, arg_2.x))) * vec2<f32>(-1280f, 218f))) + arg_2.yx);
    let var_3 = vec4<f32>(875f, 1f, 376f, 138f);
    var var_4 = var_3.wzx;
    return vec2<bool>(arg_0.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = u_input.c.x;
    global2 = Struct_2(func_5(select(!vec3<bool>(false, global2.a.x, true), !(!vec3<bool>(global2.a.x, true, global2.a.x)), !(!vec3<bool>(global2.a.x, global2.a.x, false))), func_4(global0[_wgslsmith_index_u32(u_input.c.x, 23u)], _wgslsmith_add_i32(1i, func_1(vec3<f32>(823f, global0[_wgslsmith_index_u32(u_input.c.x, 23u)], -1962f), Struct_3(517f), Struct_3(-1889f))), Struct_1(vec2<bool>(false, false), vec3<u32>(17839u, 7892u, u_input.c.x), vec3<bool>(false, false, global2.a.x), vec4<i32>(-32053i, -7865i, u_input.b, u_input.b)), func_2(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], -208f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1024f, -210f, global0[_wgslsmith_index_u32(u_input.a.x, 23u)])))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(1u, 23u)], -674f, 1215f), vec3<f32>(global0[_wgslsmith_index_u32(12547u, 23u)], -825f, global0[_wgslsmith_index_u32(838u, 23u)]), global2.a.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-845f, -575f, global0[_wgslsmith_index_u32(u_input.a.x, 23u)]) * vec3<f32>(-1121f, global0[_wgslsmith_index_u32(1u, 23u)], -558f))))));
    let var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-951f - 719f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(29050u, 23u)] * -603f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 23u)]))))), u_input.b, Struct_1(!func_2(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)])).a, firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 25344u, 15335u), vec3<u32>(u_input.a.x, 1u, u_input.c.x))), vec3<bool>(global2.a.x, !global2.a.x, true), vec4<i32>(u_input.b, _wgslsmith_mod_i32(~22260i, u_input.b), i32(-1i) * -1i, 20569i)), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(939f, 2081f) * vec2<f32>(1000f, -108f))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(1u, 23u)]))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(374f, global0[_wgslsmith_index_u32(0u, 23u)]))))))));
    global3 = var_0.b.x;
    global2 = Struct_2(vec2<bool>(func_5(!vec3<bool>(false, global2.a.x, var_0.c.x), var_0, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(0u, 23u)], -547f, global0[_wgslsmith_index_u32(var_0.b.x, 23u)]), vec3<f32>(global0[_wgslsmith_index_u32(0u, 23u)], 1000f, global0[_wgslsmith_index_u32(59249u, 23u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(443f, global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)]))))).x, !var_0.a.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(var_0.b.x, 23u)], global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)]), vec4<f32>(global0[_wgslsmith_index_u32(var_0.b.x, 23u)], global0[_wgslsmith_index_u32(var_0.b.x, 23u)], global0[_wgslsmith_index_u32(4024u, 23u)], 1055f)))), vec4<f32>(1503f, -267f, _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(var_0.b.x, 23u)])), global0[_wgslsmith_index_u32(abs(u_input.a.x), 23u)]), !vec4<bool>(var_0.c.x, var_0.c.x, global2.a.x, true)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1675f, global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(17814u, 23u)], global0[_wgslsmith_index_u32(1352u, 23u)]) - vec4<f32>(-209f, -125f, 240f, -968f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(var_0.b.x, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], 1024f, -1649f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(var_0.b.x, 23u)], global0[_wgslsmith_index_u32(67581u, 23u)], -952f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(var_0.b.x, 23u)], global0[_wgslsmith_index_u32(13116u, 23u)], 572f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0[_wgslsmith_index_u32(var_0.b.x, 23u)], global0[_wgslsmith_index_u32(17395u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(var_0.b.x, 23u)])))))));
    let var_2 = global1[_wgslsmith_index_u32(~u_input.a.x, 32u)];
    let var_3 = ~_wgslsmith_mod_vec2_i32(countOneBits(-(~vec2<i32>(u_input.b, var_0.d.x))), max(max(var_0.d.xy, var_0.d.zw), vec2<i32>(-29595i, u_input.b) >> (u_input.a.yx % vec2<u32>(32u))));
    global2 = func_2(var_1.xz);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.xx);
}

