struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14> = array<u32, 14>(15679u, 22101u, 104u, 0u, 4294967295u, 4294967295u, 27400u, 47833u, 1u, 51072u, 9061u, 27859u, 71037u, 0u);

var<private> global1: vec4<i32> = vec4<i32>(12974i, 2147483647i, 54898i, 1i);

var<private> global2: Struct_1 = Struct_1(2147483647i, 30220u, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 73237u));

var<private> global3: i32 = 19715i;

var<private> global4: vec3<u32>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global0 = array<u32, 14>();
    global2 = arg_0;
    global3 = u_input.c.x;
    let var_0 = arg_0;
    global2 = Struct_1(u_input.b >> ((var_0.b | (var_0.c.x >> (u_input.d.x % 32u))) % 32u), ~var_0.c.x & abs((var_0.c.x & 1u) | 1u), global2.c);
    return ~global4.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32) -> vec3<u32> {
    let var_0 = Struct_1(-22972i, ~1u, vec4<u32>(u_input.d.x, ~global4.x, global4.x, _wgslsmith_mod_u32(abs(56647u) ^ func_3(arg_1), arg_1.c.x)));
    global3 = -58884i;
    let var_1 = Struct_1(_wgslsmith_mult_i32(-1i, _wgslsmith_dot_vec2_i32(select(u_input.c.yz, vec2<i32>(global1.x, u_input.a) | arg_0, vec2<bool>(true, true)), _wgslsmith_mult_vec2_i32(u_input.c.yy & global1.zw, vec2<i32>(-13302i, 2147483647i)))), countOneBits(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global4.x, u_input.d.x), 14u)]), select(_wgslsmith_clamp_vec4_u32(abs(~global2.c), _wgslsmith_mod_vec4_u32(~global2.c, firstLeadingBit(var_0.c)), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.b, u_input.d.x, global2.c.x, 15755u) | vec4<u32>(12385u, 19628u, global2.c.x, arg_1.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.b, 4294967295u, u_input.d.x, global4.x), global2.c, vec4<u32>(56634u, 23256u, global2.b, arg_1.b)))), var_0.c, select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true)), vec4<bool>(false, any(vec2<bool>(false, false)), true, any(vec3<bool>(false, false, true))), u_input.a <= -1i)));
    global2 = var_0;
    let var_2 = vec2<bool>(!((abs(48376u) ^ firstLeadingBit(u_input.d.x)) > 20533u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(522f, -1141f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -890f) + _wgslsmith_f_op_f32(-1339f * 1000f))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1272f, -446f) + _wgslsmith_f_op_f32(step(-1778f, -799f))) - -2147f));
    return select(select(var_1.c.ywy, abs((vec3<u32>(4294967295u, var_1.b, global0[_wgslsmith_index_u32(global2.c.x, 14u)]) << (vec3<u32>(arg_1.b, global4.x, 9426u) % vec3<u32>(32u))) & global2.c.xxx), !select(vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(false, true, true), vec3<bool>(var_2.x, true, true))), ~countOneBits(_wgslsmith_div_vec3_u32(~u_input.d.yzz, ~var_0.c.wwz)), any(vec3<bool>(var_2.x || (false && var_2.x), any(vec3<bool>(var_2.x, var_2.x, true)) && any(vec4<bool>(true, false, var_2.x, true)), !var_2.x)));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec2<i32>, arg_3: f32) -> f32 {
    let var_0 = arg_0;
    let var_1 = func_2(vec2<i32>(_wgslsmith_div_i32(global1.x, 1i), -58131i), arg_0, arg_0.a);
    var var_2 = global2.c.x;
    global2 = Struct_1(~(-8875i), u_input.d.x, vec4<u32>(u_input.d.x, var_0.c.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(843u, global2.c.x), countOneBits(vec2<u32>(4294967295u, 23993u))) % 32u), var_1.x, 39373u));
    var var_3 = Struct_1(u_input.b, (var_0.c.x | ~_wgslsmith_clamp_u32(61413u, 32069u, global0[_wgslsmith_index_u32(var_0.b, 14u)])) ^ _wgslsmith_div_u32(_wgslsmith_add_u32(~1u, select(0u, global0[_wgslsmith_index_u32(global2.b, 14u)], arg_1)), ~(var_0.c.x << (0u % 32u))), var_0.c);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2648f - arg_3), -827f)))))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> vec4<i32> {
    let var_0 = firstLeadingBit(u_input.d.xzz);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2, arg_0))), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2), arg_2)), 1000f, true))));
    global1 = reverseBits(vec4<i32>(_wgslsmith_mod_i32(-36608i, -u_input.a) >> (~1u % 32u), -2380i & ~(global1.x << (98479u % 32u)), u_input.c.x, global2.a));
    var var_2 = arg_1;
    let var_3 = 1i;
    return -select(reverseBits(_wgslsmith_sub_vec4_i32(-vec4<i32>(1i, arg_1.a, -32215i, 27319i), vec4<i32>(arg_1.a, var_3, global1.x, global1.x) << (vec4<u32>(var_2.b, 0u, 1u, 1u) % vec4<u32>(32u)))), vec4<i32>(2147483647i, ~global2.a, -50781i, _wgslsmith_div_i32(var_3, var_2.a | 2147483647i)), 13749u >= firstTrailingBit(reverseBits(0u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(func_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1557f), _wgslsmith_f_op_f32(846f - 938f), 65096i > u_input.b)), Struct_1(-2147483647i, ~global2.c.x, u_input.d), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(Struct_1(global2.a, 1u, vec4<u32>(global0[_wgslsmith_index_u32(32926u, 14u)], global2.b, global0[_wgslsmith_index_u32(20210u, 14u)], global0[_wgslsmith_index_u32(0u, 14u)])), true, vec2<i32>(23189i, -8025i), -191f)), 346f))) ^ ~select(-vec4<i32>(71821i, u_input.a, 0i, 1i), -vec4<i32>(u_input.a, -2147483647i, -15611i, u_input.c.x), any(vec4<bool>(true, true, false, false))), ~(~(-vec4<i32>(-2147483647i, -29524i, -10874i, -15323i)) ^ select(reverseBits(vec4<i32>(u_input.a, global2.a, -4884i, global1.x)), min(vec4<i32>(global1.x, global2.a, -1i, u_input.c.x), vec4<i32>(2147483647i, -1i, 1i, u_input.a)), true)));
    global1 = var_0;
    let var_1 = vec3<bool>(!select(!any(vec4<bool>(false, false, true, true)), any(vec3<bool>(false, false, true)) || false, all(vec4<bool>(true, true, true, true))), any(!select(vec2<bool>(false, false), vec2<bool>(true, true), true)) & true, true);
    var var_2 = ~(vec3<u32>(global4.x, global4.x, _wgslsmith_sub_u32(global2.b, global4.x)) << (vec3<u32>(firstTrailingBit(19994u), _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global4.x, 14u)], 14u)], 4294967295u), global2.b) % vec3<u32>(32u))) & ~reverseBits(vec3<u32>(func_2(vec2<i32>(19096i, -1i), Struct_1(-1i, 4294967295u, u_input.d), global1.x).x, ~1u, global4.x ^ 0u));
    var var_3 = 336f;
    global1 = _wgslsmith_mult_vec4_i32(var_0, max(~select(_wgslsmith_mod_vec4_i32(vec4<i32>(global1.x, u_input.a, -2147483647i, global2.a), vec4<i32>(-1212i, var_0.x, -2147483647i, 1i)), var_0, var_1.x & false), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, -1i, global1.x, var_0.x) & var_0, reverseBits(vec4<i32>(56973i, 2147483647i, 0i, -2147483647i))) | _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a, 2147483647i, -19937i, global2.a)), var_0)));
    let var_4 = var_0.x;
    global2 = Struct_1(~global2.a, ~select(21723u, u_input.d.x, var_1.x), firstLeadingBit(min(select(vec4<u32>(4547u, var_2.x, var_2.x, global4.x), u_input.d, false), abs(select(u_input.d, vec4<u32>(0u, 90333u, var_2.x, 0u), var_1.x)))));
    let var_5 = Struct_1(var_4, 7743u, vec4<u32>(abs(~(~global2.b)), reverseBits(global2.c.x), var_2.x, var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(-1400f);
}

