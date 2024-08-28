struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_3,
    d: Struct_1,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 9394u;

var<private> global1: array<vec4<u32>, 3>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> u32 {
    return arg_1.a.x;
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: i32, arg_3: i32) -> vec2<u32> {
    let var_0 = Struct_4(Struct_2(true, Struct_1(~countOneBits(vec2<u32>(4294967295u, 4352u)), arg_1), Struct_1(vec2<u32>(max(4294967295u, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(8625u, 1u, 0u, 41567u), global1[_wgslsmith_index_u32(1u, 3u)])), vec4<i32>(arg_1.x, 1i, 1i, u_input.a.x) & _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 43068i, 0i, -2147483647i), vec4<i32>(2679i, arg_1.x, 1i, 1i))), -_wgslsmith_add_i32(arg_2 << (4294967295u % 32u), _wgslsmith_mod_i32(u_input.a.x, arg_3))), Struct_3(Struct_1(~(~vec2<u32>(4294967295u, 64554u)), countOneBits(arg_1)), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(0u, 3u)], vec4<u32>(61501u, 0u, 0u, 0u)), ~59971u, abs(0u)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(73611u, 47147u), vec2<u32>(0u, 1u)), 1u, ~33936u)), 1i, ~(~vec3<u32>(1u, 1u, 1u))), Struct_3(Struct_1(vec2<u32>(min(0u, 23902u), ~0u), vec4<i32>(arg_3, 65741i, -3295i, u_input.a.x) >> (_wgslsmith_add_vec4_u32(global1[_wgslsmith_index_u32(4294967295u, 3u)], global1[_wgslsmith_index_u32(0u, 3u)]) % vec4<u32>(32u))), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 0u, 1u), ~vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(337u, 4294967295u, 1u))), ~(-16933i), vec3<u32>(1u, 1u, 1u)), Struct_1(firstTrailingBit(~vec2<u32>(1u, 1u)), select(~(vec4<i32>(arg_1.x, 8553i, arg_3, -2147483647i) & arg_1), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_3, arg_2, -13663i, arg_3), vec4<i32>(15049i, -1i, 2147483647i, arg_2), vec4<i32>(arg_1.x, -7365i, 2147483647i, arg_3)) | arg_1, (arg_0 >= arg_0) || all(vec4<bool>(true, false, false, true)))));
    global1 = array<vec4<u32>, 3>();
    let var_1 = _wgslsmith_f_op_f32(-732f + 1600f);
    let var_2 = firstLeadingBit(countOneBits(vec4<i32>(-1i) * -min(vec4<i32>(var_0.c.c, -12182i, 33248i, 0i), vec4<i32>(16556i, arg_2, -30002i, var_0.c.c))));
    let var_3 = var_0;
    return ~_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(var_3.a.c.a, var_0.b.a.a), firstLeadingBit(var_3.c.d.yx));
}

fn func_2(arg_0: Struct_5, arg_1: i32, arg_2: vec3<bool>) -> Struct_2 {
    global0 = _wgslsmith_div_u32(1u, 1u);
    var var_0 = all(!select(!vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x), vec4<bool>(false, true, arg_2.x, arg_2.x), vec4<bool>(true, true, true, arg_2.x))) & false;
    var_0 = arg_2.x;
    global0 = 1u;
    global0 = 52564u;
    return Struct_2(true, Struct_1(firstLeadingBit(func_3(-401f, reverseBits(vec4<i32>(-7253i, arg_1, -38823i, -17099i)), 1i, _wgslsmith_add_i32(u_input.a.x, u_input.a.x))), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(max(vec4<i32>(21093i, arg_1, 2147483647i, arg_1), vec4<i32>(-51382i, arg_1, arg_1, u_input.a.x)), select(vec4<i32>(u_input.a.x, 1i, -2147483647i, u_input.a.x), vec4<i32>(2147483647i, u_input.a.x, 2147483647i, u_input.a.x), false)), vec4<i32>(arg_1, _wgslsmith_mod_i32(arg_1, 0i), arg_1 << (0u % 32u), 48424i))), Struct_1(select(_wgslsmith_add_vec2_u32(~vec2<u32>(4446u, 31442u), _wgslsmith_sub_vec2_u32(vec2<u32>(407u, 55520u), vec2<u32>(1u, 29035u))), countOneBits(vec2<u32>(1u, 1u)), arg_2.x), min(~select(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 3852i), vec4<i32>(arg_1, u_input.a.x, 21223i, u_input.a.x), false), vec4<i32>(2147483647i, 39941i << (1u % 32u), arg_1, _wgslsmith_mod_i32(0i, u_input.a.x)))), _wgslsmith_dot_vec4_i32(max(vec4<i32>(-25723i, arg_1, -6827i, arg_1) ^ min(vec4<i32>(arg_1, 17918i, -1i, 43685i), vec4<i32>(u_input.a.x, 1i, -1i, arg_1)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-181i, 58067i, 0i, u_input.a.x) << (global1[_wgslsmith_index_u32(54052u, 3u)] % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(arg_1, 4404i, arg_1, -24148i), vec4<i32>(u_input.a.x, 2147483647i, 0i, arg_1)), -vec4<i32>(-30221i, -14279i, arg_1, arg_1))), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(arg_1, arg_1, -5998i, u_input.a.x)))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4) -> StorageBuffer {
    global0 = select(_wgslsmith_dot_vec2_u32(arg_1.a.c.a | ~vec2<u32>(1u, arg_1.b.a.a.x), reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(23906u, arg_1.d.a.x), firstTrailingBit(arg_1.a.c.a)))), firstTrailingBit(33044u), !arg_1.a.a);
    let var_0 = !select(vec3<bool>(true, arg_1.a.a, true), select(!(!vec3<bool>(true, arg_1.a.a, false)), vec3<bool>(arg_1.a.a || arg_1.a.a, !arg_1.a.a, !arg_1.a.a), true), arg_1.a.a);
    let var_1 = countOneBits(_wgslsmith_mod_vec2_u32(arg_1.c.b.xy, func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1360f * 1909f) + 171f), vec4<i32>(_wgslsmith_sub_i32(arg_0.x, u_input.a.x), arg_1.b.c, _wgslsmith_clamp_i32(2147483647i, -16271i, arg_1.d.b.x), 21913i), arg_1.b.a.b.x, _wgslsmith_mod_i32(3312i, -1i))));
    return StorageBuffer(var_1.x, abs(arg_1.a.c.a.x & 1u), reverseBits(vec3<i32>(arg_1.c.a.b.x, _wgslsmith_clamp_i32(_wgslsmith_add_i32(40872i, arg_0.x), -46364i, -50099i), 1i ^ -arg_0.x)), 30139u, arg_1.a.b.b.xxx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(firstTrailingBit(vec2<u32>(countOneBits(1u), abs(abs(4294967295u)))), -reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, -18198i, u_input.a.x, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -31846i, u_input.a.x, -1i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))));
    global0 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(904f, -165f))) + _wgslsmith_f_op_f32(-810f * _wgslsmith_f_op_f32(f32(-1f) * -1548f))) * _wgslsmith_f_op_f32(f32(-1f) * -778f)), Struct_1(vec2<u32>(_wgslsmith_sub_u32(var_0.a.x, _wgslsmith_clamp_u32(4294967295u, 1u, 17852u)), _wgslsmith_clamp_u32(~7773u, var_0.a.x, _wgslsmith_mod_u32(1u, var_0.a.x))), vec4<i32>(-var_0.b.x, _wgslsmith_dot_vec4_i32(var_0.b >> (vec4<u32>(17904u, var_0.a.x, 1620u, 5260u) % vec4<u32>(32u)), var_0.b ^ vec4<i32>(u_input.a.x, var_0.b.x, var_0.b.x, var_0.b.x)), select(~var_0.b.x, 1i, u_input.a.x <= u_input.a.x), u_input.a.x)));
    let x = u_input.a;
    s_output = func_4(-((~var_0.b | _wgslsmith_add_vec4_i32(vec4<i32>(-1559i, var_0.b.x, 1i, var_0.b.x), var_0.b)) | firstTrailingBit(vec4<i32>(var_0.b.x, u_input.a.x, -1i, 2147483647i))), Struct_4(func_2(Struct_5(-1000f), firstLeadingBit(0i), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), false)), Struct_3(func_2(Struct_5(-520f), firstLeadingBit(u_input.a.x), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false)).c, vec3<u32>(min(63889u, 53474u), 62435u, 43104u), var_0.b.x ^ countOneBits(-19212i), vec3<u32>(0u, ~var_0.a.x, var_0.a.x)), Struct_3(func_2(Struct_5(-171f), _wgslsmith_dot_vec3_i32(vec3<i32>(-19118i, -30331i, -2147483647i), var_0.b.yxy), vec3<bool>(true, true, true)).b, max(vec3<u32>(41301u, var_0.a.x, var_0.a.x), abs(vec3<u32>(var_0.a.x, 39916u, var_0.a.x))), -1i, ~(~vec3<u32>(4294967295u, var_0.a.x, var_0.a.x))), func_2(Struct_5(-737f), ~2147483647i, select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))).b));
}

