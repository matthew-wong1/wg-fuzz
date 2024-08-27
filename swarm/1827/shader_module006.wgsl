struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32;

var<private> global2: u32 = 4294967295u;

var<private> global3: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> vec2<i32> {
    global1 = 1u;
    var var_0 = Struct_1(true);
    global2 = _wgslsmith_dot_vec4_u32(min(~abs(vec4<u32>(0u, u_input.a.x, 24005u, 0u)), ~(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x) << (vec4<u32>(68421u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)))) & reverseBits(reverseBits(countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 13418u)))), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(~66424u, u_input.a.x), max(u_input.a.x, ~u_input.a.x), u_input.a.x, ~(~4294967295u)), ~vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), abs(u_input.a.x), 4294967295u, 0u)));
    let var_1 = !select(!(!vec4<bool>(global0.a, var_0.a, var_0.a, false)), !select(vec4<bool>(true, true, false, false), vec4<bool>(var_0.a, true, global0.a, true), true), var_0.a);
    let var_2 = global3[_wgslsmith_index_u32(select(~(~_wgslsmith_add_u32(~u_input.a.x, ~4132u)), firstTrailingBit(~(~u_input.a.x)), ~_wgslsmith_mod_i32(u_input.b.x, u_input.c.x) != firstTrailingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, u_input.b.x, u_input.c.x), u_input.c.xxw), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.c.zxz)))), 10u)];
    return ~_wgslsmith_sub_vec2_i32(abs(vec2<i32>(u_input.b.x, u_input.c.x)) ^ ~firstTrailingBit(u_input.c.zw), -u_input.b.xx);
}

fn func_2(arg_0: f32) -> vec4<u32> {
    var var_0 = global3[_wgslsmith_index_u32(60721u, 10u)];
    var var_1 = firstLeadingBit(firstTrailingBit(firstTrailingBit(~func_3())));
    global2 = _wgslsmith_div_u32(u_input.a.x, firstLeadingBit(14255u));
    var_1 = vec2<i32>(u_input.b.x, _wgslsmith_dot_vec2_i32(select(~u_input.b.yy & vec2<i32>(11293i, 2147483647i), ~_wgslsmith_add_vec2_i32(u_input.c.xx, u_input.b.xy), select(!vec2<bool>(var_0.a, global0.a), select(vec2<bool>(true, var_0.a), vec2<bool>(false, true), true), vec2<bool>(true, true))), select(_wgslsmith_sub_vec2_i32(u_input.b.xz, u_input.c.xz & u_input.c.ww), func_3(), var_0.a)));
    let var_2 = ~u_input.a.xx;
    return ~select(vec4<u32>(_wgslsmith_dot_vec2_u32(~var_2, var_2), 0u, ~u_input.a.x, 1u), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 1u, 1u), vec4<u32>(66834u, 27687u, u_input.a.x, var_2.x)), ~vec4<u32>(u_input.a.x, var_2.x, u_input.a.x, var_2.x)) | max(~vec4<u32>(4294967295u, 1u, 1u, 1u), vec4<u32>(16221u, 20062u, var_2.x, 20413u)), global0.a);
}

fn func_1(arg_0: u32, arg_1: vec2<f32>) -> vec4<bool> {
    var var_0 = -2147483647i;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x))) * arg_1.x) + 268f));
    let var_2 = _wgslsmith_clamp_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(abs(4294967295u), ~arg_0, 75169u, firstLeadingBit(9930u)), select(~vec4<u32>(28279u, 4294967295u, 56065u, 53213u), vec4<u32>(u_input.a.x, arg_0, arg_0, 1u), false)), _wgslsmith_div_vec4_u32(abs(countOneBits(vec4<u32>(arg_0, arg_0, 1u, u_input.a.x) & vec4<u32>(9529u, u_input.a.x, arg_0, u_input.a.x))), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, arg_0, 0u, 4294967295u) ^ (vec4<u32>(arg_0, 9772u, 1u, 39915u) | vec4<u32>(arg_0, 0u, u_input.a.x, arg_0)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, arg_0) | vec4<u32>(arg_0, arg_0, u_input.a.x, 39349u), firstTrailingBit(vec4<u32>(u_input.a.x, 34378u, arg_0, u_input.a.x))), countOneBits(~vec4<u32>(u_input.a.x, arg_0, 3657u, 0u)))), _wgslsmith_mod_vec4_u32(~func_2(_wgslsmith_div_f32(var_1, var_1)), max(_wgslsmith_sub_vec4_u32(vec4<u32>(26451u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(7390u, arg_0, 71306u, 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0, 1u, 72411u, arg_0), vec4<u32>(arg_0, 51775u, u_input.a.x, u_input.a.x))) | abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 8903u), vec4<u32>(u_input.a.x, arg_0, u_input.a.x, 48098u)))));
    var_0 = func_3().x;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.x, 287f), _wgslsmith_f_op_f32(-var_1));
    return select(!select(vec4<bool>(true, !global0.a, !global0.a, false), vec4<bool>(!global0.a, true, global0.a, true), !select(vec4<bool>(true, true, false, false), vec4<bool>(global0.a, global0.a, false, false), vec4<bool>(global0.a, false, true, false))), !select(vec4<bool>(true, any(vec2<bool>(true, false)), global0.a, true), vec4<bool>(true, any(vec4<bool>(global0.a, global0.a, true, global0.a)), true, global0.a), !select(vec4<bool>(false, false, global0.a, false), vec4<bool>(true, true, false, false), global0.a)), false & any(select(vec4<bool>(global0.a, global0.a, false, false), select(vec4<bool>(true, false, global0.a, false), vec4<bool>(global0.a, global0.a, global0.a, global0.a), global0.a), select(vec4<bool>(global0.a, false, global0.a, global0.a), vec4<bool>(global0.a, global0.a, global0.a, true), true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(false);
    var var_1 = reverseBits(~14299u) <= firstTrailingBit(abs(~u_input.a.x | 18487u));
    var var_2 = ~abs(_wgslsmith_sub_vec3_u32(vec3<u32>(~u_input.a.x, ~1u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), _wgslsmith_add_vec3_u32(u_input.a, ~vec3<u32>(27219u, 1u, 1u))));
    var var_3 = vec4<bool>(global0.a, (_wgslsmith_f_op_f32(ceil(857f)) < _wgslsmith_div_f32(-645f, -532f)) & true, all(!vec2<bool>(true, any(vec4<bool>(true, false, false, true)))), global0.a);
    var_1 = true;
    var var_4 = !(~(-67702i ^ _wgslsmith_add_i32(u_input.b.x, u_input.b.x)) == (_wgslsmith_mod_i32(~u_input.c.x, u_input.c.x) << (countOneBits(u_input.a.x) % 32u)));
    var_3 = !vec4<bool>(var_3.x, var_3.x, all(select(select(vec4<bool>(true, false, var_0.a, var_3.x), vec4<bool>(global0.a, true, true, global0.a), var_0.a), func_1(var_2.x, vec2<f32>(516f, 691f)), func_1(u_input.a.x, vec2<f32>(-402f, -685f)))), func_2(_wgslsmith_f_op_f32(abs(898f))).x > 5317u);
    var var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-516f * -720f))), _wgslsmith_div_f32(-532f, 599f));
}

