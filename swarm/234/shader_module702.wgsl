struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_add_i32(~_wgslsmith_add_i32(-9245i, u_input.b.x), u_input.b.x), u_input.b.x, select(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(2428i, 2147483647i, u_input.b.x, u_input.b.x)), vec4<i32>(u_input.b.x, -1i, u_input.b.x, -14765i)), u_input.b.x, ~3284u == firstTrailingBit(u_input.a)), max(u_input.b.x, _wgslsmith_clamp_i32(u_input.b.x, select(2147483647i, u_input.b.x, false), 1i))), ~firstTrailingBit(vec4<i32>(-u_input.b.x, 1i, u_input.b.x, max(u_input.b.x, 0i))));
    global0 = select(!(!(!select(vec3<bool>(true, true, global0.x), vec3<bool>(global0.x, false, false), global0.x))), vec3<bool>(global0.x, global0.x, false), !vec3<bool>(all(!vec4<bool>(true, global0.x, true, global0.x)), false, !any(vec3<bool>(false, false, global0.x))));
    var var_1 = _wgslsmith_f_op_f32(max(-427f, -1358f));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1493f);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2406f)))), 1f)), Struct_1((-var_0.wxy >> (~vec3<u32>(10615u, u_input.a, 4294967295u) % vec3<u32>(32u))) & _wgslsmith_sub_vec3_i32(u_input.b, u_input.b), _wgslsmith_add_i32(~(~2147483647i), max(-2147483647i, select(-18732i, u_input.b.x, global0.x))), vec4<i32>(_wgslsmith_sub_i32(-1i, u_input.b.x), _wgslsmith_add_i32(u_input.b.x, 48831i), -var_0.x, u_input.b.x) | vec4<i32>(firstLeadingBit(-2147483647i), ~12510i, 1i, ~u_input.b.x), 1919u));
    return any(vec3<bool>(1i >= firstLeadingBit(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(-29115i, -33224i, 0i))), true, true));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec4<u32>) -> bool {
    return func_3();
}

fn func_1(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_1) -> bool {
    global0 = select(vec3<bool>(arg_0.x, arg_0.x && false, all(select(vec4<bool>(true, true, true, true), vec4<bool>(global0.x, arg_0.x, arg_0.x, arg_0.x), !vec4<bool>(global0.x, arg_0.x, true, global0.x)))), !(!select(vec3<bool>(arg_0.x, global0.x, global0.x), vec3<bool>(global0.x, arg_0.x, false), true)), !select(arg_0, select(!arg_0, !vec3<bool>(false, arg_0.x, arg_0.x), func_2(global0.x, Struct_1(arg_2.a, arg_2.c.x, arg_2.c, arg_1), vec4<u32>(6869u, arg_2.d, u_input.a, 21671u))), any(!vec4<bool>(global0.x, false, global0.x, true))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<bool>(any(select(select(vec3<bool>(false, global0.x, global0.x), !vec3<bool>(global0.x, global0.x, global0.x), select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(true, global0.x, false), false)), vec3<bool>(global0.x, true, global0.x), vec3<bool>(func_1(vec3<bool>(global0.x, global0.x, global0.x), 32786u, Struct_1(vec3<i32>(u_input.b.x, -40129i, u_input.b.x), u_input.b.x, vec4<i32>(u_input.b.x, -21562i, u_input.b.x, u_input.b.x), 8982u)), false, global0.x))), firstTrailingBit(26552u) >= select(60937u, ~reverseBits(u_input.a), true), false);
    global0 = !select(vec3<bool>(!any(vec3<bool>(global0.x, global0.x, global0.x)), global0.x, global0.x | global0.x), !select(vec3<bool>(global0.x, false, global0.x), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, true, global0.x), vec3<bool>(global0.x, true, global0.x)), true), !vec3<bool>(!global0.x, func_2(global0.x, Struct_1(u_input.b, u_input.b.x, vec4<i32>(u_input.b.x, 2147483647i, -1975i, u_input.b.x), u_input.c.x), vec4<u32>(10318u, 48995u, 14067u, 22536u)), all(vec3<bool>(global0.x, global0.x, global0.x))));
    let var_0 = Struct_3(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, _wgslsmith_mod_i32(u_input.b.x, u_input.b.x), i32(-1i) * -1i), ~(-u_input.b)), min(vec3<i32>(28550i, u_input.b.x, u_input.b.x) & _wgslsmith_sub_vec3_i32(u_input.b, u_input.b), ~u_input.b)), select(!vec2<bool>(func_2(false, Struct_1(u_input.b, u_input.b.x, vec4<i32>(u_input.b.x, 0i, -61041i, u_input.b.x), 37313u), vec4<u32>(0u, 62458u, u_input.a, 22900u)), !global0.x), global0.xx, func_2(global0.x, Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x) >> (vec3<u32>(u_input.c.x, 4294967295u, 4294967295u) % vec3<u32>(32u)), reverseBits(u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, 45554i, u_input.b.x), 1u), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(15745u, u_input.c.x, 4294967295u, u_input.a), vec4<u32>(u_input.a, 34440u, 329u, 110288u))))), 407f);
    global0 = vec3<bool>(func_2(global0.x && true, Struct_1(firstTrailingBit(var_0.a), 0i, -vec4<i32>(-54555i, var_0.a.x, 35115i, 68098i) >> (vec4<u32>(u_input.c.x, u_input.c.x, 66958u, u_input.c.x) % vec4<u32>(32u)), _wgslsmith_div_u32(abs(15308u), u_input.c.x)), vec4<u32>(u_input.a, u_input.c.x, ~1u, ~reverseBits(1u))), func_2(global0.x, Struct_1(vec3<i32>(~var_0.a.x, -7395i, -var_0.a.x), -2147483647i, -vec4<i32>(-14959i, 59404i, u_input.b.x, 1i), 0u), countOneBits(~vec4<u32>(u_input.c.x, 1530u, 1u, 1u))), func_1(!vec3<bool>(global0.x, var_0.b.x, false), firstLeadingBit(abs(4294967295u)), Struct_1(vec3<i32>(_wgslsmith_div_i32(2147483647i, var_0.a.x), ~var_0.a.x, var_0.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -43336i, -62759i, 50075i) >> (vec4<u32>(3173u, u_input.a, u_input.c.x, 36639u) % vec4<u32>(32u)), vec4<i32>(16682i, -1i, u_input.b.x, -1i)), firstTrailingBit(select(vec4<i32>(0i, -2147483647i, u_input.b.x, var_0.a.x), vec4<i32>(u_input.b.x, var_0.a.x, var_0.a.x, var_0.a.x), false)), abs(8982u << (u_input.c.x % 32u)))));
    let var_1 = global0.xx;
    var var_2 = vec3<i32>((((var_0.a.x << (u_input.a % 32u)) | -3912i) >> (_wgslsmith_sub_u32(u_input.a, ~4294967295u) % 32u)) ^ u_input.b.x, max(0i, ~var_0.a.x ^ (firstLeadingBit(var_0.a.x) | -2147483647i)), 1i);
    var var_3 = Struct_3(u_input.b & vec3<i32>(_wgslsmith_mult_i32(min(0i, var_0.a.x), var_2.x), u_input.b.x, 1i | u_input.b.x), vec2<bool>(false, !(_wgslsmith_f_op_f32(var_0.c - 1000f) > _wgslsmith_f_op_f32(-var_0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1059f, var_0.c, true))));
    var_3 = Struct_3(select(-var_3.a, firstLeadingBit(var_0.a), !select(vec3<bool>(var_3.b.x, false, global0.x), vec3<bool>(false, false, true), !vec3<bool>(false, false, global0.x))), select(var_3.b, select(!select(global0.yz, var_0.b, true), vec2<bool>(false, true), select(!var_0.b, vec2<bool>(false, global0.x), !var_3.b.x)), select(!global0.zx, !select(var_0.b, var_3.b, global0.x), _wgslsmith_mult_u32(u_input.a, 4294967295u) < 63418u)), _wgslsmith_f_op_f32(trunc(-771f)));
    var_2 = -vec3<i32>(1i, 0i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_3.a.xy & vec2<i32>(-8032i, var_0.a.x), select(var_3.a.zx, u_input.b.xz, global0.x)), ~abs(var_2.zz)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(var_3.c * _wgslsmith_f_op_f32(select(var_0.c, var_3.c, all(vec4<bool>(true, global0.x, false, true)))))), ~_wgslsmith_div_vec2_u32(vec2<u32>(reverseBits(3889u), u_input.a), vec2<u32>(~u_input.a, select(1u, 4294967295u, true))), reverseBits(u_input.c.x), ~u_input.a, vec4<u32>(u_input.c.x, abs(~_wgslsmith_add_u32(u_input.a, 1u)), firstLeadingBit(u_input.c.x), ~57357u));
}

