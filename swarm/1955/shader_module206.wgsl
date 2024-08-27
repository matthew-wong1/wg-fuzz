struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: bool,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11>;

var<private> global1: Struct_3;

var<private> global2: Struct_1;

var<private> global3: array<vec3<f32>, 21> = array<vec3<f32>, 21>(vec3<f32>(-562f, -151f, 1571f), vec3<f32>(-652f, -624f, -1125f), vec3<f32>(1204f, 329f, 347f), vec3<f32>(-976f, -934f, -1604f), vec3<f32>(-938f, 119f, -232f), vec3<f32>(751f, -1057f, 571f), vec3<f32>(-2209f, 605f, 778f), vec3<f32>(293f, -1907f, -741f), vec3<f32>(-1000f, 1107f, -1819f), vec3<f32>(543f, -1733f, 1551f), vec3<f32>(1494f, -1000f, -1062f), vec3<f32>(485f, -517f, 1103f), vec3<f32>(-938f, -1771f, -785f), vec3<f32>(2549f, 213f, 1281f), vec3<f32>(-850f, 973f, -1345f), vec3<f32>(1826f, -1709f, -674f), vec3<f32>(1000f, 797f, 837f), vec3<f32>(-105f, -1418f, 302f), vec3<f32>(-1569f, 1275f, 855f), vec3<f32>(1370f, 105f, -1000f), vec3<f32>(1246f, 639f, 458f));

var<private> global4: Struct_2;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    let var_0 = any(vec2<bool>(!all(select(global4.b, vec3<bool>(global4.c, global4.c, global4.b.x), vec3<bool>(global4.c, false, global4.c))), 330f <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1087f, 1053f))))));
    let var_1 = 69637u;
    let var_2 = u_input.b.x;
    var var_3 = Struct_3(_wgslsmith_div_f32(-1592f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(673f * -262f), _wgslsmith_f_op_f32(f32(-1f) * -3293f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.a))))), _wgslsmith_mult_u32(_wgslsmith_mod_u32(firstLeadingBit(81991u & u_input.a.x), abs(~26878u)), max(4294967295u, ~u_input.e.x | global1.d.x)), vec3<u32>(~var_1, u_input.e.x, ~_wgslsmith_mult_u32(var_1, 0u)), vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(0u, var_1)), vec2<u32>(43772u, 1u) >> (global1.d.zy % vec2<u32>(32u))), min(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 4294967295u), global1.d.xx, vec2<u32>(var_1, global1.d.x)), u_input.e.yx)), global1.d.x, firstLeadingBit(~_wgslsmith_add_u32(var_1, 4294967295u))));
    global4 = Struct_2(var_2, !vec3<bool>(u_input.b.x != firstTrailingBit(-1i), var_0, !var_0), true, global4.d, global4.e);
    return min(~_wgslsmith_dot_vec3_u32(~vec3<u32>(24136u, u_input.a.x, u_input.e.x), vec3<u32>(var_3.c.x, var_1, 8598u) ^ var_3.d) | ((firstLeadingBit(var_3.d.x) ^ var_3.d.x) >> (select(3654u, 108137u, any(vec2<bool>(true, global4.e))) % 32u)), select(4294967295u, global1.d.x, !var_0));
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_div_i32(select(u_input.b.x, u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)) >= _wgslsmith_f_op_f32(-270f + global2.a)), 2147483647i);
    let var_1 = arg_0.x;
    var var_2 = _wgslsmith_add_u32(u_input.a.x & 1u, 57214u);
    return max(global1.c.x, func_3());
}

fn func_1(arg_0: vec2<bool>, arg_1: i32) -> vec4<bool> {
    let var_0 = ~max(global1.b, global1.b) >> (func_2(global1.d, abs(~0i ^ u_input.c.x), vec3<u32>(u_input.e.x, global1.d.x, countOneBits(global1.b))) % 32u);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(exp2(global1.a)), -600f);
    var var_2 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)) - _wgslsmith_f_op_f32(floor(global2.a))), _wgslsmith_f_op_f32(abs(global4.d.a))), var_0, firstTrailingBit(u_input.e) << (_wgslsmith_mod_vec3_u32(vec3<u32>(~864u, select(global1.b, 4294967295u, global4.e), ~var_0), vec3<u32>(min(0u, u_input.a.x), min(var_0, 11153u), abs(global1.c.x))) % vec3<u32>(32u)), firstLeadingBit(~(~vec3<u32>(global1.c.x, 4294967295u, var_0))));
    global3 = array<vec3<f32>, 21>();
    var var_3 = select(vec3<bool>(u_input.a.x > var_2.c.x, false, true), select(vec3<bool>(arg_0.x, true, false), !vec3<bool>(global4.c, !arg_0.x, true), !(var_2.c.x == 56959u)), global4.b);
    return vec4<bool>(arg_0.x, arg_0.x, global4.e, true);
}

fn func_4(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = abs(vec4<i32>(global4.a, _wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.c.x, global4.a), _wgslsmith_mod_i32(global4.a, 1i)), 49253i), abs(u_input.b.x), global4.a));
    let var_1 = func_1(!vec2<bool>(any(!vec3<bool>(global4.b.x, arg_0.x, true)), !global4.e & !arg_0.x), -40118i).wx;
    let var_2 = Struct_3(global1.a, _wgslsmith_mod_u32(17474u, abs(u_input.a.x) ^ 1u), vec3<u32>(u_input.a.x, _wgslsmith_div_u32(max(abs(global1.d.x), 87941u), global1.c.x), _wgslsmith_add_u32(global1.b, ~global1.c.x)), ~firstLeadingBit(global1.c));
    var var_3 = _wgslsmith_dot_vec2_i32(max(u_input.c.yy, min(vec2<i32>(global4.a, -1i), var_0.xx)) >> (u_input.a.xx % vec2<u32>(32u)), select(var_0.xx, var_0.xz, vec2<bool>(var_1.x, var_2.a > _wgslsmith_f_op_f32(f32(-1f) * -433f))));
    var var_4 = _wgslsmith_mod_vec4_u32(vec4<u32>(select(global1.b, ~(~var_2.c.x), var_1.x), abs(0u), global1.b & _wgslsmith_dot_vec3_u32(var_2.d, abs(var_2.d)), 0u), _wgslsmith_div_vec4_u32(~_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(u_input.e.x, 41046u, 49755u, 4294967295u)), reverseBits(vec4<u32>(0u, 1u, u_input.a.x, u_input.e.x)), ~vec4<u32>(u_input.a.x, global1.d.x, var_2.b, 4294967295u)), abs(firstLeadingBit(~vec4<u32>(global1.b, 70547u, 0u, 4294967295u)))));
    return global0[_wgslsmith_index_u32(u_input.e.x, 11u)];
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1, arg_3: vec4<u32>) -> f32 {
    let var_0 = func_4(!vec4<bool>(func_4(vec4<bool>(arg_0.e, global4.c, global4.b.x, global4.c)).b.x, !arg_0.b.x, false, global4.b.x));
    var var_1 = max(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, ~0u, u_input.d >> (arg_3.x % 32u), arg_3.x), arg_3), arg_3);
    return arg_0.d.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_4(select(func_1(vec2<bool>(false, global4.e), global4.a), func_1(vec2<bool>(global4.b.x, global4.e), u_input.c.x), select(vec4<bool>(false, global4.b.x, global4.b.x, true), vec4<bool>(true, global4.c, true, false), vec4<bool>(true, true, true, global4.b.x)))), global1.b ^ ~abs(56579u), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) + _wgslsmith_f_op_f32(abs(305f))), select(_wgslsmith_sub_i32(global2.b, 46771i), countOneBits(-1i), false)), ~(~vec4<u32>(49601u, global1.d.x, 21482u, u_input.a.x)))));
    global4 = func_4(!vec4<bool>(global4.c, false, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(max(func_3(), ~(~1u)), u_input.e.x), _wgslsmith_f_op_f32(-709f - global1.a), u_input.c.yy >> (u_input.a.yx % vec2<u32>(32u)), ~select(_wgslsmith_mod_vec4_i32(u_input.c & u_input.c, u_input.c >> (vec4<u32>(global1.d.x, global1.b, u_input.d, u_input.e.x) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, global4.d.b, -33016i, u_input.b.x), vec4<i32>(global4.a, 29172i, 50521i, u_input.b.x)), abs(vec4<i32>(global4.d.b, u_input.b.x, 2147483647i, -50891i))), vec4<bool>(global4.c, global4.c, global1.d.x > 1u, select(true, global4.e, global4.b.x))));
}

