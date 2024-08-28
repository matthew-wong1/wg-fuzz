struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: u32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
    c: bool,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4269u;

var<private> global1: Struct_1 = Struct_1(-46718i, 46866i);

var<private> global2: vec2<u32>;

var<private> global3: f32;

var<private> global4: u32 = 49279u;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_1) -> u32 {
    let var_0 = select(!select(!select(vec4<bool>(true, arg_2.x, arg_2.x, arg_0.c), vec4<bool>(false, true, true, true), vec4<bool>(arg_2.x, arg_0.c, arg_2.x, true)), vec4<bool>(true, select(false, arg_2.x, arg_0.c), true, arg_2.x), select(!arg_2.x, arg_0.c, all(arg_2))), vec4<bool>(all(vec2<bool>(true, !arg_2.x)), !arg_0.c, true, any(select(vec4<bool>(true, true, true, false), vec4<bool>(arg_2.x, true, false, arg_0.c), arg_0.c))), !(arg_2.x | !(true | arg_0.c)));
    global2 = ~vec2<u32>(1u, ~(~4294967295u ^ ~global2.x));
    global4 = countOneBits(1u | ((12293u ^ _wgslsmith_sub_u32(arg_0.b.x, 4244u)) >> (42405u % 32u)));
    var var_1 = arg_0;
    let var_2 = arg_1.b;
    return u_input.b;
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    global2 = vec2<u32>(_wgslsmith_div_u32(~(~u_input.b), func_3(Struct_4(Struct_1(u_input.c.x, arg_1.a), vec2<u32>(u_input.b, 63852u), false, Struct_1(global1.a, arg_0), _wgslsmith_f_op_f32(trunc(338f))), arg_1, !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), Struct_1(~u_input.c.x, 1i))), 0u);
    global2 = vec2<u32>(global2.x, u_input.d);
    global2 = ~_wgslsmith_div_vec2_u32(reverseBits(~vec2<u32>(u_input.b, 77702u)), ~vec2<u32>(4294967295u, u_input.d));
    let var_0 = vec3<bool>(-2147483647i != global1.b, ~(~(~global2.x)) > 4294967295u, !all(vec3<bool>(true, true, true)));
    let var_1 = vec2<i32>(reverseBits(1i), arg_0 & reverseBits(~abs(arg_0)));
    return Struct_1(-20626i, max(_wgslsmith_dot_vec4_i32(max(_wgslsmith_div_vec4_i32(vec4<i32>(17420i, 0i, arg_1.a, var_1.x), vec4<i32>(-1i, 0i, u_input.a.x, 1i)), ~vec4<i32>(global1.a, -2147483647i, global1.a, -46584i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(5304i, -2147483647i, var_1.x, 71793i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, 21217i, -26739i), vec4<i32>(-20012i, 1i, -2147483647i, global1.b)), firstLeadingBit(vec4<i32>(arg_1.a, 2147483647i, -2147483647i, 42364i)))), reverseBits(abs(u_input.c.x))));
}

fn func_1(arg_0: vec2<bool>, arg_1: u32) -> Struct_1 {
    global1 = func_2(_wgslsmith_dot_vec4_i32(-vec4<i32>(global1.a, _wgslsmith_div_i32(-1i, -1i), i32(-1i) * -1i, u_input.c.x), ~_wgslsmith_sub_vec4_i32(vec4<i32>(global1.a, u_input.a.x, -2147483647i, -32393i) | vec4<i32>(-1i, 16938i, 0i, 8530i), max(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, global1.a), vec4<i32>(1i, u_input.c.x, u_input.c.x, u_input.a.x)))), Struct_1(~0i, u_input.c.x ^ countOneBits(_wgslsmith_clamp_i32(1i, u_input.a.x, u_input.a.x))));
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-446f)), -400f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-327f - 1261f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1000f, -962f, arg_0.x)), _wgslsmith_f_op_f32(-363f * 1282f)))))), false));
    global2 = _wgslsmith_mult_vec2_u32(abs(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(49669u, u_input.e), vec2<u32>(4294967295u, 1u)), 1u) | vec2<u32>(4294967295u, 1u)), firstLeadingBit(~_wgslsmith_sub_vec2_u32(vec2<u32>(33107u, 55125u), vec2<u32>(35713u, global2.x)) ^ vec2<u32>(firstTrailingBit(arg_1), _wgslsmith_sub_u32(u_input.e, 59636u))));
    global1 = func_2(func_2(1i, Struct_1(global1.a, min(global1.b, -2147483647i))).b, Struct_1(0i, global1.a));
    global3 = 259f;
    return func_2(u_input.a.x, Struct_1(~u_input.c.x, _wgslsmith_mod_i32(~(~u_input.c.x), -23782i)));
}

fn func_4(arg_0: bool, arg_1: Struct_4) -> Struct_1 {
    let var_0 = -(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 0i, 2147483647i, 23821i) ^ vec4<i32>(-5066i, -2147483647i, u_input.a.x, arg_1.a.a), vec4<i32>(global1.a, 29766i, 0i, u_input.a.x) << (vec4<u32>(80421u, 61495u, 0u, global2.x) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(vec4<i32>(global1.b, global1.a, -1i, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, 4437i, arg_1.a.a, -15706i), vec4<i32>(global1.b, 34645i, -25844i, -38766i))), abs(-vec4<i32>(-61498i, -5405i, 12634i, global1.b))) & (select(vec4<i32>(u_input.c.x, u_input.a.x, 4576i, -27013i), -vec4<i32>(u_input.a.x, arg_1.a.a, u_input.c.x, u_input.a.x), !vec4<bool>(false, arg_0, arg_1.c, false)) & vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a.b, arg_1.d.a, -34525i), vec3<i32>(global1.b, 2147483647i, u_input.a.x)), u_input.c.x >> (1u % 32u), global1.b, 1i)));
    let var_1 = false;
    return arg_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, ~5960u), min(vec2<u32>(u_input.e, u_input.e), ~vec2<u32>(global2.x, global2.x)), _wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(global2.x, 0u)), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.d), vec2<u32>(1u, global2.x)))));
    global1 = func_4(any(vec2<bool>(true, all(vec3<bool>(false, false, false)))), Struct_4(func_1(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), global2.x), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.e, u_input.b), vec2<u32>(global2.x, u_input.d)), !all(vec3<bool>(true, true, true)), func_1(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))), select(100600u, 4294967295u, true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(244f)), 1407f))));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 2211f))) + 900f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-701f, -189f) + _wgslsmith_f_op_f32(f32(-1f) * -1495f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -676f) + _wgslsmith_f_op_f32(f32(-1f) * -368f)))));
    var var_1 = true;
    let var_2 = all(select(select(vec2<bool>(true, var_0 <= var_0), select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true)), select(select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true)), vec2<bool>(true, true), any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)))), false));
    let var_3 = Struct_4(func_2(-35412i, func_1(vec2<bool>(true, all(vec2<bool>(false, var_2))), countOneBits(~global2.x))), vec2<u32>(0u, 20212u), all(select(select(vec2<bool>(false, var_2), vec2<bool>(true, true), vec2<bool>(var_2, false)), !vec2<bool>(var_2, var_2), false)) | var_2, Struct_1(global1.a, u_input.c.x), var_0);
    let var_4 = !var_2;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(abs(~(~global2.x)), ~0u, var_3.b.x, ~(~0u) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(global2.x, 0u, 0u, 4294967295u), min(vec4<u32>(77564u, u_input.e, 1u, global2.x), vec4<u32>(global2.x, 56208u, 1u, 1u))) % 32u)), _wgslsmith_f_op_f32(trunc(632f)), -u_input.a);
}

