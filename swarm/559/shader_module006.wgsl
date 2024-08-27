struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<f32, 31>;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<f32>(1000f, 2446f, -1459f, 971f), vec4<bool>(true, true, false, true)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec2<i32>) -> vec2<bool> {
    var var_0 = _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-(~u_input.c.x), ~(~u_input.c.x), arg_0.x, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_0.x, u_input.d), vec3<i32>(u_input.c.x, u_input.c.x, arg_0.x)), select(u_input.a, -37937i, global0.x))), firstLeadingBit(~firstTrailingBit(vec4<i32>(2147483647i, 65075i, arg_0.x, -43066i)))), ~u_input.c);
    var_0 = u_input.c;
    let var_1 = _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(firstLeadingBit(arg_0), arg_0), vec2<i32>(firstLeadingBit(arg_0.x), ~0i));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.a.x) + global1[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x), 31u)]), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global2.a.a.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 31u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.a.a.x, global2.a.a.x, global0.x))))), vec4<bool>(!all(vec4<bool>(global0.x, global0.x, true, global0.x)) & all(global2.a.b), all(vec3<bool>(true, u_input.b.x <= 1760u, all(global2.a.b.wxx))), select(global2.a.b.x, false, all(global2.a.b.wy)) & any(vec3<bool>(global0.x, global2.a.b.x, global0.x)), all(vec3<bool>(true, u_input.b.x >= u_input.b.x, all(vec2<bool>(global2.a.b.x, false))))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.a - vec4<f32>(var_2.a.x, global1[_wgslsmith_index_u32(0u, 31u)], -567f, -1398f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1602f, var_2.a.x, var_2.a.x, -198f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_2.a), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.a.a.x, -346f, 238f, -2748f))))))), select(!(!(!var_2.b)), select(select(global2.a.b, select(vec4<bool>(false, global0.x, true, true), global2.a.b, vec4<bool>(false, true, global2.a.b.x, false)), true), select(select(vec4<bool>(true, global2.a.b.x, global0.x, false), var_2.b, var_2.b), !global2.a.b, select(vec4<bool>(global2.a.b.x, true, true, var_2.b.x), global2.a.b, global2.a.b)), global2.a.b.x), _wgslsmith_mult_u32(select(1u, u_input.b.x, true), select(u_input.b.x, u_input.b.x, false)) == ~4294967295u));
    return !(!select(var_2.b.zx, select(vec2<bool>(var_3.b.x, global0.x), !var_2.b.yy, vec2<bool>(global2.a.b.x, false)), all(!vec3<bool>(global2.a.b.x, global2.a.b.x, true))));
}

fn func_2(arg_0: f32, arg_1: f32) -> bool {
    var var_0 = global2.a.b.x;
    let var_1 = !vec2<bool>(any(func_3(~vec2<i32>(u_input.c.x, u_input.a))), global2.a.b.x);
    var var_2 = global2.a;
    let var_3 = Struct_2(global2.a);
    var var_4 = var_3.a;
    return true;
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2, arg_3: f32) -> Struct_3 {
    let var_0 = 2147483647i;
    var var_1 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global2.a.a.x, -1000f)))) > arg_3);
    var_1 = func_2(arg_0.a.a.x, -1701f) | func_2(arg_3, global1[_wgslsmith_index_u32(u_input.b.x, 31u)]);
    var var_2 = Struct_3(Struct_2(Struct_1(global2.a.a, global2.a.b)), vec4<i32>(-29026i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.c.yz, u_input.c.yy), firstTrailingBit(~u_input.a)), ~(-1i), 2147483647i), vec3<u32>(min(_wgslsmith_dot_vec3_u32(vec3<u32>(20899u, u_input.b.x, 7334u), vec3<u32>(u_input.b.x, 5817u, 4294967295u)) ^ 40683u, countOneBits(u_input.b.x)), 1u, min(u_input.b.x, firstTrailingBit(firstTrailingBit(39711u)))));
    var var_3 = arg_0.a.a.wx;
    return Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(arg_0.a.a)), vec4<f32>(arg_3, 221f, 577f, global1[_wgslsmith_index_u32(1u, 31u)]), select(vec4<bool>(global0.x, global2.a.b.x, global2.a.b.x, true), arg_2.a.b, false))), !select(vec4<bool>(true, arg_0.a.b.x, false, false), vec4<bool>(false, var_2.a.a.b.x, global0.x, true), vec4<bool>(true, true, arg_2.a.b.x, false)))), _wgslsmith_add_vec4_i32(abs(var_2.b), (u_input.c | select(vec4<i32>(-1i, 29699i, var_2.b.x, -23109i), vec4<i32>(var_0, 2147483647i, u_input.a, var_0), global2.a.b)) ^ _wgslsmith_sub_vec4_i32(u_input.c, ~vec4<i32>(u_input.a, arg_1, -1i, var_2.b.x))), vec3<u32>(~(~var_2.c.x ^ ~u_input.b.x), ~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(36438u, 73801u), firstLeadingBit(u_input.b.x), u_input.b.x ^ var_2.c.x), ((0u ^ var_2.c.x) | ~10654u) ^ min(37047u, u_input.b.x)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: f32, arg_3: vec3<i32>) -> bool {
    var var_0 = -u_input.c.x;
    var var_1 = abs(~(~arg_0.c.xx));
    var var_2 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(57129u, arg_0.c.x), var_1.x, select(0u, var_1.x, arg_0.a.a.b.x), _wgslsmith_add_u32(49168u, var_1.x)) | ~select(vec4<u32>(0u, 77334u, 0u, var_1.x), vec4<u32>(16063u, arg_0.c.x, 1u, 1u), false), vec4<u32>(var_1.x, ~u_input.b.x, ~0u << (arg_0.c.x % 32u), _wgslsmith_dot_vec3_u32(~arg_0.c, vec3<u32>(1u, arg_0.c.x, 13500u) << (vec3<u32>(1u, u_input.b.x, u_input.b.x) % vec3<u32>(32u))))), u_input.b.x >> ((_wgslsmith_sub_u32(arg_0.c.x, 19700u) ^ 0u) % 32u), min(var_1.x, 7811u), 1u | u_input.b.x);
    global2 = func_1(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_1.a, vec4<f32>(628f, arg_2, 993f, arg_2), vec4<bool>(false, false, false, true)))), !vec4<bool>(false, global0.x, true, arg_1.b.x))), abs(max(~arg_0.b.x & 29843i, arg_0.b.x)), func_1(arg_0.a, -(~u_input.c.x) ^ 1i, arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1235f))).a, _wgslsmith_f_op_f32(trunc(-1000f))).a;
    var var_3 = vec4<u32>(_wgslsmith_mult_u32(var_2.x, _wgslsmith_sub_u32(select(9491u, arg_0.c.x, false), max(_wgslsmith_add_u32(var_2.x, 1u), var_1.x >> (18111u % 32u)))), 35483u, 6061u, ~4294967295u);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 31>();
    var var_0 = reverseBits(~(~(vec3<u32>(u_input.b.x, u_input.b.x, 0u) | vec3<u32>(30557u, 27876u, u_input.b.x)))) << (select(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(22005u, 13715u, u_input.b.x)), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) << (~vec3<u32>(47227u, u_input.b.x, 0u) % vec3<u32>(32u))), vec3<u32>(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u), vec4<u32>(1u, u_input.b.x, 0u, u_input.b.x)) & abs(75451u), _wgslsmith_mod_u32(u_input.b.x << (u_input.b.x % 32u), _wgslsmith_add_u32(1u, u_input.b.x))), !func_4(func_1(Struct_2(global2.a), u_input.a, Struct_2(Struct_1(vec4<f32>(global2.a.a.x, 2173f, global2.a.a.x, -1248f), vec4<bool>(global2.a.b.x, global2.a.b.x, false, global2.a.b.x))), -1000f), Struct_1(global2.a.a, global2.a.b), _wgslsmith_f_op_f32(trunc(global2.a.a.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(21916i, 3487i, -4165i), vec3<i32>(-9330i, 7301i, -1i)))) % vec3<u32>(32u));
    var_0 = vec3<u32>(func_1(Struct_2(func_1(Struct_2(global2.a), _wgslsmith_dot_vec2_i32(u_input.c.ww, u_input.c.wy), func_1(Struct_2(Struct_1(global2.a.a, vec4<bool>(global0.x, global0.x, false, false))), u_input.d, Struct_2(Struct_1(global2.a.a, vec4<bool>(true, global0.x, true, false))), -183f).a, _wgslsmith_f_op_f32(min(442f, 243f))).a.a), -2147483647i, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(select(global2.a.a, global2.a.a, vec4<bool>(global0.x, false, global0.x, global2.a.b.x))), func_1(Struct_2(Struct_1(vec4<f32>(1267f, 358f, 998f, global2.a.a.x), global2.a.b)), 0i, Struct_2(Struct_1(global2.a.a, vec4<bool>(false, global0.x, false, global2.a.b.x))), global2.a.a.x).a.a.b)), _wgslsmith_f_op_f32(global2.a.a.x * 1646f)).c.x, var_0.x, ~1u);
    var var_1 = func_1(Struct_2(global2.a), -u_input.d, func_1(func_1(Struct_2(global2.a), u_input.a, func_1(func_1(Struct_2(global2.a), 19703i, Struct_2(Struct_1(vec4<f32>(695f, 117f, 884f, global1[_wgslsmith_index_u32(u_input.b.x, 31u)]), global2.a.b)), -1752f).a, abs(u_input.d), Struct_2(Struct_1(vec4<f32>(global1[_wgslsmith_index_u32(54662u, 31u)], global2.a.a.x, global2.a.a.x, 106f), global2.a.b)), -1000f).a, 101f).a, 2147483647i, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1767f, global1[_wgslsmith_index_u32(var_0.x, 31u)], global1[_wgslsmith_index_u32(101282u, 31u)])), select(global2.a.b, vec4<bool>(global0.x, false, false, true), global2.a.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(38220u, 31u)], _wgslsmith_f_op_f32(-global2.a.a.x))), global2.a.a.x)).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.a.a.x)) * 992f)))).a.a;
    var_1 = global2.a;
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1328f, _wgslsmith_f_op_f32(-234f - _wgslsmith_f_op_f32(ceil(global2.a.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-614f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(2495f, 941f))))), u_input.b.x);
}

