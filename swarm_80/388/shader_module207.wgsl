struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 4>;

var<private> global1: array<f32, 7> = array<f32, 7>(648f, -634f, 317f, -1352f, 628f, 1118f, -1157f);

var<private> global2: Struct_1 = Struct_1(vec4<i32>(2147483647i, 36081i, 0i, -1i), vec2<f32>(1099f, 1776f));

var<private> global3: bool = true;

var<private> global4: i32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: vec3<i32>, arg_3: vec3<bool>) -> u32 {
    var var_0 = Struct_1(global2.a, global2.b);
    global4 = ~(-2147483647i);
    var var_1 = ~vec3<i32>(arg_2.x, _wgslsmith_dot_vec3_i32(reverseBits(arg_2), ~(vec3<i32>(u_input.c, var_0.a.x, 0i) & vec3<i32>(-8853i, -41035i, global2.a.x))), u_input.c);
    let var_2 = _wgslsmith_div_i32(_wgslsmith_add_i32(var_0.a.x, (-u_input.b.x | (i32(-1i) * -1i)) & ~global2.a.x), var_1.x);
    global2 = Struct_1(vec4<i32>(i32(-1i) * -arg_2.x, abs(arg_2.x), abs(firstLeadingBit(21397i)), u_input.b.x) | firstLeadingBit(firstLeadingBit(vec4<i32>(-2147483647i, arg_2.x, -42697i, -47845i)) & select(vec4<i32>(-2147483647i, -26744i, -36117i, 0i), var_0.a, vec4<bool>(arg_3.x, true, false, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_1.xz)))));
    return 61797u;
}

fn func_2() -> f32 {
    var var_0 = Struct_1(vec4<i32>(countOneBits(31585i), _wgslsmith_div_i32(u_input.c, 1i), _wgslsmith_div_i32(-18048i, ~u_input.b.x), ~global2.a.x) & vec4<i32>(global2.a.x, global2.a.x, ~(-37798i) << (func_3(624f, vec3<f32>(1000f, global2.b.x, global1[_wgslsmith_index_u32(8341u, 7u)]), u_input.b, vec3<bool>(true, true, true)) % 32u), u_input.b.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], global2.b.x))), vec2<f32>(global2.b.x, -168f), any(vec3<bool>(true, true, false))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2.b, vec2<f32>(-1270f, 424f))) + global2.b)));
    var var_1 = ~(abs(~countOneBits(4294967295u)) << (select(~(13723u | u_input.a.x), ~max(7220u, u_input.a.x), all(vec2<bool>(true, true))) % 32u));
    let var_2 = Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global2.a.x, 70155i, global2.a.x, -49958i), -global2.a) & _wgslsmith_mult_vec4_i32(vec4<i32>(global2.a.x, 0i, -1i, global2.a.x), reverseBits(vec4<i32>(0i, var_0.a.x, global2.a.x, var_0.a.x))), ~min(vec4<i32>(1i, 0i, 1i, 1i), vec4<i32>(global2.a.x, u_input.c, 1i, 25281i)) | _wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.c, -2147483647i, -2147483647i, 0i), _wgslsmith_div_vec4_i32(global2.a, var_0.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b) - var_0.b) * vec2<f32>(_wgslsmith_div_f32(global2.b.x, -940f), -441f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1062f), _wgslsmith_f_op_f32(ceil(global2.b.x))))));
    global4 = var_0.a.x ^ ~var_0.a.x;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(abs(418f)));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-352f))))))));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_f32(select(1204f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-568f)) - _wgslsmith_f_op_f32(func_2())), -707f, true)), global2.b.x), !any(vec3<bool>(true, any(vec3<bool>(true, false, false)), all(vec3<bool>(true, false, false))))));
    var var_1 = Struct_1(vec4<i32>(select(u_input.b.x, u_input.c ^ (global2.a.x & 323i), all(vec2<bool>(true, true))), reverseBits(54433i), global2.a.x, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(12500i, 0i, u_input.b.x, u_input.c), _wgslsmith_mod_vec4_i32(global2.a, global2.a)), vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(0i, u_input.b.x, 64849i)), global2.a.x, -17580i, _wgslsmith_dot_vec4_i32(global2.a, vec4<i32>(-47032i, u_input.b.x, 13552i, global2.a.x))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 7u)] * global1[_wgslsmith_index_u32(98289u, 7u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], 922f))))));
    global2 = Struct_1(-_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(~var_1.a, vec4<i32>(global2.a.x, global2.a.x, -14228i, u_input.b.x)), var_1.a), _wgslsmith_f_op_vec2_f32(-global2.b));
    var var_2 = ~(countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 20u, u_input.a.x, 92650u), abs(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x)))) >> (~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 3380u)) % vec4<u32>(32u)));
    var var_3 = _wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(116440u), var_2.x & var_2.x), _wgslsmith_mult_vec2_u32(select(vec2<u32>(4294967295u, 31908u), u_input.a.zx, vec2<bool>(true, true)), max(abs(global0[_wgslsmith_index_u32(var_2.x, 4u)]), _wgslsmith_mult_vec2_u32(vec2<u32>(var_2.x, var_2.x), var_2.yw)))) <= ~abs(firstTrailingBit(22645u));
    return any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)))), false));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 7>();
    let var_0 = vec3<bool>(func_1(), true, all(vec2<bool>(true, func_1())));
    global0 = array<vec2<u32>, 4>();
    let var_1 = vec3<i32>(i32(-1i) * -41316i, 1i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.b.x, global2.a.x, ~u_input.b.x), ~(-62424i)));
    global3 = all(!vec2<bool>(func_1(), true));
    var var_2 = global2.b;
    var var_3 = u_input.b;
    var var_4 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(51598u, 7u)]))) + _wgslsmith_f_op_f32(-global2.b.x)), var_2.x), _wgslsmith_f_op_f32(-global2.b.x));
    global1 = array<f32, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, max(var_3.xz, vec2<i32>(max(_wgslsmith_sub_i32(var_1.x, var_1.x), u_input.c << (u_input.a.x % 32u)), 12672i)));
}

