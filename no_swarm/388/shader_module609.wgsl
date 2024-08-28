struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<bool>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-932f, 807f, 1195f, 804f);

var<private> global1: i32;

var<private> global2: array<bool, 19> = array<bool, 19>(true, true, false, true, true, true, false, true, false, true, false, false, false, false, false, false, false, false, false);

var<private> global3: bool = false;

var<private> global4: array<Struct_2, 19>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: vec2<i32>) -> f32 {
    let var_0 = global4[_wgslsmith_index_u32(1u, 19u)];
    return global0.x;
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2) -> vec4<f32> {
    let var_0 = arg_1.e;
    var var_1 = !select(select(vec2<bool>(global2[_wgslsmith_index_u32(~u_input.a.x, 19u)], global2[_wgslsmith_index_u32(arg_0.x, 19u)] && false), arg_1.e.a.xx, true), select(select(!var_0.a.zx, select(arg_1.c.xy, vec2<bool>(false, true), var_0.a.yx), false), !vec2<bool>(var_0.a.x, true), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, 0u >> (1u % 32u)), 19u)]), vec2<bool>(select(all(vec3<bool>(false, var_0.a.x, true)), true, all(vec2<bool>(var_0.a.x, arg_1.a.a.x))), global2[_wgslsmith_index_u32(51913u, 19u)]));
    let var_2 = ~u_input.a;
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -759f)), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, 1000f, global2[_wgslsmith_index_u32(arg_0.x, 19u)]))), _wgslsmith_f_op_f32(sign(global0.x))), vec4<f32>(global0.x, global0.x, -130f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(669f, global0.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 283f, -611f, 540f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-931f, global0.x, -926f, global0.x), vec4<f32>(1000f, 1694f, global0.x, global0.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 1212f, 325f, -410f) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(896f, global0.x, global0.x, global0.x)))))));
    var var_3 = ~vec4<i32>(-2147483647i, arg_1.b, min(0i, arg_1.b), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, var_0.c), -vec2<i32>(arg_1.b, -23145i)), 18963i, -2147483647i));
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1482f, -844f, 699f)))))));
}

fn func_1() -> vec4<u32> {
    global0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.x, global0.x)), 190f), -913f, -361f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec4<f32>(677f, global0.x, 1297f, -233f), vec3<i32>(-35859i, -1i, -63493i), vec2<i32>(1i, -1i))) * -550f)))));
    var var_0 = _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(func_3(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(71195u, u_input.a.x, 124918u, u_input.a.x), vec4<u32>(u_input.a.x, 26632u, u_input.a.x, u_input.a.x), vec4<u32>(34944u, 9203u, u_input.a.x, 79928u)), Struct_2(Struct_1(!vec3<bool>(true, true, global2[_wgslsmith_index_u32(0u, 19u)]), 0u, _wgslsmith_add_i32(-55867i, -1i)), firstLeadingBit(firstLeadingBit(-9886i)), select(select(vec3<bool>(global2[_wgslsmith_index_u32(18974u, 19u)], global2[_wgslsmith_index_u32(u_input.a.x, 19u)], true), vec3<bool>(global2[_wgslsmith_index_u32(1u, 19u)], true, false), true), vec3<bool>(false, true, true), any(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 19u)], false, true))), u_input.a.x, Struct_1(vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 19u)], true), ~2872u, 2147483647i)))), ~(countOneBits(vec3<i32>(-12406i, 2147483647i, -23290i)) >> (vec3<u32>(0u, _wgslsmith_sub_u32(u_input.a.x, 4294967295u), 41851u) % vec3<u32>(32u))), ~vec2<i32>(-(i32(-1i) * -37608i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -9360i, 1i, 28237i), vec4<i32>(-1i, -28364i, 16191i, 4704i)))));
    var var_1 = Struct_2(Struct_1(vec3<bool>(true, global2[_wgslsmith_index_u32(~(49360u ^ u_input.a.x), 19u)], global0.x <= _wgslsmith_f_op_f32(1169f + -1233f)), u_input.a.x, 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(~(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 18012i, 0i), vec3<i32>(1i, 1i, 1i)), -1i), abs(vec3<i32>(1i, ~0i, -2147483647i))), vec3<bool>(!all(vec2<bool>(global2[_wgslsmith_index_u32(1u, 19u)], false)) | any(select(vec3<bool>(false, true, global2[_wgslsmith_index_u32(1u, 19u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 19u)], global2[_wgslsmith_index_u32(4294967295u, 19u)], false), vec3<bool>(global2[_wgslsmith_index_u32(31554u, 19u)], true, true))), true, select(~34229i, -1i, global2[_wgslsmith_index_u32(0u, 19u)] | true) < -2147483647i), 1u, Struct_1(!select(vec3<bool>(false, false, global2[_wgslsmith_index_u32(16538u, 19u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(1u, 19u)], global2[_wgslsmith_index_u32(u_input.a.x, 19u)], false), vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 19u)], true), vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 19u)], global2[_wgslsmith_index_u32(4294967295u, 19u)])), vec3<bool>(true, true, true)), ~u_input.a.x, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(-vec3<i32>(57522i, 26098i, -31467i), ~vec3<i32>(22077i, 1i, -1i)), vec3<i32>(1i, 1i, 1i))));
    var var_2 = 0i;
    let var_3 = _wgslsmith_f_op_vec4_f32(func_3(vec4<u32>(0u, ~(~countOneBits(41400u)), _wgslsmith_div_u32(max(reverseBits(u_input.a.x), select(var_1.d, 16970u, true)), _wgslsmith_dot_vec3_u32(u_input.a, ~vec3<u32>(u_input.a.x, u_input.a.x, 3501u))), u_input.a.x), global4[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a.x, ~4294967295u), ~(u_input.a.x ^ var_1.a.b)), 19u)])).wzy;
    return min(vec4<u32>(_wgslsmith_add_u32(var_1.d, _wgslsmith_mult_u32(var_1.a.b, 0u)) ^ 4294967295u, var_1.d, _wgslsmith_dot_vec3_u32(max(u_input.a, ~u_input.a), _wgslsmith_mult_vec3_u32(max(u_input.a, u_input.a), _wgslsmith_mult_vec3_u32(vec3<u32>(var_1.e.b, u_input.a.x, 74902u), vec3<u32>(4294967295u, var_1.d, u_input.a.x)))), select(min(29761u, 100938u), _wgslsmith_clamp_u32(var_1.d, var_1.d, u_input.a.x), global2[_wgslsmith_index_u32(u_input.a.x, 19u)]) ^ ~(~var_1.e.b)), ~vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.e.b, 1u, var_1.d, u_input.a.x), vec4<u32>(1u, 1u, var_1.a.b, var_1.a.b) ^ vec4<u32>(var_1.e.b, 30180u, 4294967295u, var_1.a.b)), ~var_1.a.b, 0u, ~_wgslsmith_div_u32(56202u, 1u)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -566f), _wgslsmith_div_f32(107f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2715f * 1918f)))), -1016f, _wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(-959f + _wgslsmith_f_op_f32(max(-100f, global0.x))), true))));
    let var_1 = Struct_2(arg_1.a, _wgslsmith_add_i32(~_wgslsmith_add_i32(2147483647i, arg_1.b), 1i) | -(_wgslsmith_sub_i32(-27465i, arg_1.e.c) << ((84985u | u_input.a.x) % 32u)), select(select(arg_1.e.a, select(vec3<bool>(true, true, true), arg_1.e.a, arg_1.c.x), arg_1.a.a), !arg_1.e.a, !vec3<bool>(arg_1.a.a.x, any(vec4<bool>(true, arg_1.e.a.x, false, true)), true)), _wgslsmith_mult_u32(arg_1.a.b, 4294967295u), Struct_1(vec3<bool>(true, false, arg_1.e.a.x), u_input.a.x ^ 1u, firstTrailingBit(_wgslsmith_dot_vec2_i32(max(arg_0.wy, vec2<i32>(-26173i, arg_1.b)), arg_0.zy))));
    var var_2 = var_1.a;
    let var_3 = firstTrailingBit(arg_0);
    var var_4 = 4294967295u;
    return global4[_wgslsmith_index_u32(var_2.b, 19u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<f32>(-967f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x - global0.x), 1000f);
    global2 = array<bool, 19>();
    var var_0 = reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), (~vec3<i32>(-1i, -67935i, -41890i) >> (min(u_input.a, vec3<u32>(18391u, u_input.a.x, u_input.a.x)) % vec3<u32>(32u))) ^ vec3<i32>(_wgslsmith_sub_i32(30332i, -53934i), 1i << (u_input.a.x % 32u), 1i)));
    var var_1 = func_4(_wgslsmith_clamp_vec4_i32(~_wgslsmith_div_vec4_i32(-vec4<i32>(-2147483647i, var_0.x, var_0.x, -71480i), abs(vec4<i32>(0i, 29324i, -8107i, -87562i))), max(vec4<i32>(-34799i, -1i, var_0.x, var_0.x) << (func_1() % vec4<u32>(32u)), vec4<i32>(-1i, var_0.x, abs(33773i), var_0.x & -27117i)), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(var_0.x, var_0.x, var_0.x, -1i) ^ vec4<i32>(0i, 2716i, var_0.x, var_0.x)), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, -1i, -2147483647i, var_0.x), vec4<i32>(-27494i, var_0.x, var_0.x, var_0.x)) ^ vec4<i32>(var_0.x, var_0.x, var_0.x, -27113i))), global4[_wgslsmith_index_u32(u_input.a.x >> (u_input.a.x % 32u), 19u)]);
    var var_2 = var_1.a;
    var_0 = firstLeadingBit(_wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(var_2.c, countOneBits(var_0.x), var_0.x)), abs(min(~vec3<i32>(var_1.a.c, 0i, var_1.a.c), vec3<i32>(26162i, var_0.x, var_0.x) << (vec3<u32>(31211u, 20828u, var_2.b) % vec3<u32>(32u))))));
    var var_3 = global4[_wgslsmith_index_u32(~(~select(var_2.b, var_1.a.b, var_2.a.x)), 19u)];
    var_1 = global4[_wgslsmith_index_u32(~var_1.e.b, 19u)];
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i);
}

