struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec3<u32>,
    d: vec4<f32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec2<f32>) -> u32 {
    let var_0 = 55955u;
    let var_1 = Struct_4(vec4<i32>(firstLeadingBit(arg_0), arg_0 | arg_0, -10214i, reverseBits(arg_0)), Struct_2(global0.x | false, u_input.b.x | var_0));
    global0 = vec2<bool>(var_1.b.a, var_1.b.a);
    let var_2 = arg_1;
    global0 = !select(select(vec2<bool>(true, false), vec2<bool>(var_1.b.a, false), vec2<bool>(true, any(vec3<bool>(var_1.b.a, var_1.b.a, global0.x)))), vec2<bool>(false == global0.x, any(vec4<bool>(var_1.b.a, true, global0.x, global0.x))), arg_0 < -45033i);
    return countOneBits(~0u);
}

fn func_2(arg_0: u32, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: i32) -> Struct_2 {
    let var_0 = ~arg_2.x;
    var var_1 = ~func_3(_wgslsmith_clamp_i32(arg_3 >> (u_input.a.x % 32u), arg_1.a.x, -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1013f, -799f, arg_1.b.a)) + _wgslsmith_f_op_f32(f32(-1f) * -993f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(715f, 1891f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-428f, -644f))));
    var var_2 = arg_1;
    var_1 = ~(_wgslsmith_mod_u32(min(var_0, 4294967295u), ~4294967295u) << (~u_input.a.x % 32u)) >> (min(arg_2.x, arg_2.x) % 32u);
    var var_3 = Struct_2(true, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(71340u, u_input.a.x, var_2.b.b, 1u)), ~vec4<u32>(var_2.b.b, 0u, arg_0, u_input.b.x)), 60789u));
    return arg_1.b;
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_1) -> bool {
    global0 = !arg_2.b;
    let var_0 = func_2(16534u, Struct_4(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.a, arg_2.a, arg_2.a, arg_2.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(7109i, arg_2.a, -29457i, -27568i), vec4<i32>(-47583i, -89245i, 7001i, 0i), vec4<i32>(arg_2.a, arg_2.a, 11414i, arg_2.a))) | firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(-27944i, -1i, arg_2.a, arg_2.a), vec4<i32>(-54503i, -7735i, 34612i, 0i))), Struct_2(any(select(vec3<bool>(true, arg_2.b.x, arg_2.e.x), vec3<bool>(global0.x, global0.x, false), global0.x)), 4294967295u)), select(~vec4<u32>(firstTrailingBit(u_input.b.x), 4294967295u, 91954u, ~arg_2.c.x), vec4<u32>(arg_0.x, abs(_wgslsmith_dot_vec3_u32(arg_2.c, vec3<u32>(arg_0.x, arg_2.c.x, arg_1))), ~4294967295u, u_input.b.x), select(select(!vec4<bool>(true, global0.x, false, global0.x), !vec4<bool>(true, arg_2.e.x, true, true), !vec4<bool>(arg_2.e.x, true, true, true)), !(!vec4<bool>(arg_2.b.x, global0.x, false, arg_2.b.x)), !select(vec4<bool>(arg_2.e.x, global0.x, true, true), vec4<bool>(global0.x, arg_2.b.x, true, false), vec4<bool>(global0.x, true, global0.x, arg_2.b.x)))), abs(~(-1957i)));
    let var_1 = false;
    var var_2 = _wgslsmith_add_vec4_i32(select(countOneBits(select(-vec4<i32>(65607i, -10925i, arg_2.a, arg_2.a), countOneBits(vec4<i32>(1i, -1i, -10209i, arg_2.a)), select(vec4<bool>(false, var_0.a, true, true), vec4<bool>(var_0.a, var_1, false, arg_2.b.x), vec4<bool>(global0.x, arg_2.e.x, arg_2.e.x, var_1)))), abs(vec4<i32>(~arg_2.a, arg_2.a, arg_2.a, arg_2.a)), true), _wgslsmith_mult_vec4_i32((vec4<i32>(2147483647i, arg_2.a, arg_2.a, arg_2.a) ^ vec4<i32>(-1i, arg_2.a, -51956i, 1i)) & ~vec4<i32>(-6672i, arg_2.a, arg_2.a, 22424i), ~vec4<i32>(-2147483647i, 59321i, arg_2.a, arg_2.a)) >> (~(~vec4<u32>(var_0.b, u_input.b.x, 4294967295u, 5651u) ^ (vec4<u32>(4294967295u, arg_0.x, arg_1, 13897u) & vec4<u32>(1u, arg_2.c.x, 87401u, arg_2.c.x))) % vec4<u32>(32u)));
    var_2 = -min(vec4<i32>(_wgslsmith_clamp_i32(arg_2.a, -2147483647i, arg_2.a), _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(0i, -9816i, arg_2.a)), max(var_2.wxz, var_2.yww)), arg_2.a, _wgslsmith_mult_i32(var_2.x ^ 26084i, arg_2.a)), max(firstLeadingBit(-vec4<i32>(23759i, var_2.x, var_2.x, arg_2.a)), max(firstTrailingBit(vec4<i32>(1i, var_2.x, arg_2.a, -67975i)), vec4<i32>(arg_2.a, arg_2.a, var_2.x, -7256i) ^ vec4<i32>(arg_2.a, 19881i, -20152i, 22182i))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec2<bool>(any(vec4<bool>(func_1(u_input.b, u_input.a.x, Struct_1(28256i, vec2<bool>(global0.x, true), u_input.b, vec4<f32>(-407f, 308f, -1000f, -167f), vec2<bool>(global0.x, global0.x))), global0.x, global0.x, all(vec2<bool>(global0.x, false)))), global0.x);
    var var_0 = ~firstTrailingBit(-19667i);
    var var_1 = Struct_4(~max(~vec4<i32>(1i, -38592i, -68993i, -2147483647i), -vec4<i32>(-2453i, 62726i, 26421i, 2147483647i)) >> (vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(u_input.b.xx, u_input.a) & u_input.b.x, (u_input.a.x & 4294967295u) & u_input.b.x, 5688u) % vec4<u32>(32u)), func_2(u_input.a.x, Struct_4(firstLeadingBit(vec4<i32>(1i, -7157i, -2147483647i, 2147483647i)), func_2(74542u, Struct_4(vec4<i32>(4151i, 1i, -2147483647i, 28646i), Struct_2(global0.x, u_input.a.x)), max(vec4<u32>(62445u, u_input.a.x, u_input.b.x, 4294967295u), vec4<u32>(11694u, u_input.a.x, u_input.a.x, u_input.b.x)), abs(2147483647i))), ~(~firstTrailingBit(vec4<u32>(33211u, 4294967295u, 1u, u_input.b.x))), _wgslsmith_add_i32(2147483647i, firstTrailingBit(-1i)) & _wgslsmith_sub_i32(abs(17900i), -13691i)));
    var_0 = _wgslsmith_dot_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.a.x, var_1.a.x, -2147483647i) ^ var_1.a.xwx, vec3<i32>(var_1.a.x, 41969i, var_1.a.x) << (u_input.b % vec3<u32>(32u)), -vec3<i32>(var_1.a.x, var_1.a.x, 60546i)), var_1.a.yxz) << ((var_1.b.b << ((_wgslsmith_add_u32(~var_1.b.b, u_input.a.x) | _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(4294967295u, u_input.a.x, var_1.b.b)), 1u)) % 32u)) % 32u);
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-436f))) * -735f));
    var_1 = Struct_4(~(vec4<i32>(_wgslsmith_sub_i32(var_1.a.x, 0i), _wgslsmith_add_i32(var_1.a.x, var_1.a.x), var_1.a.x, -13348i) ^ vec4<i32>(~(-2147483647i), 32258i ^ var_1.a.x, var_1.a.x, i32(-1i) * -2017i)), func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(func_3(-1i, 1582f, vec2<f32>(927f, 561f)), _wgslsmith_div_u32(1u, var_1.b.b)), ~vec2<u32>(40723u, u_input.a.x) & abs(vec2<u32>(var_1.b.b, 0u))), Struct_4(-vec4<i32>(var_1.a.x, var_1.a.x, var_1.a.x, -2147483647i), func_2(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b), Struct_4(vec4<i32>(-1i, var_1.a.x, -52759i, var_1.a.x), var_1.b), _wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.b.x, u_input.a.x, u_input.a.x, var_1.b.b)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.x, var_1.a.x, -2147483647i, 3869i), vec4<i32>(var_1.a.x, var_1.a.x, -33323i, var_1.a.x)))), ~(vec4<u32>(u_input.b.x, 8147u, u_input.a.x, 1u) >> (~vec4<u32>(14059u, 0u, 27288u, u_input.a.x) % vec4<u32>(32u))), 10300i));
    var var_3 = abs(var_1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.a.x, 12952u, vec4<u32>(firstTrailingBit(33597u), 1u, func_3(select(reverseBits(var_1.a.x), _wgslsmith_mult_i32(1i, 270i), global0.x & false), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_2.a, 637f)))), vec2<f32>(var_2.a, _wgslsmith_div_f32(var_2.a, -2670f))), max(~(var_1.b.b & 39316u), ~u_input.a.x)), ~var_1.a.x, select(u_input.b, vec3<u32>(31724u, 37666u, func_2(18774u, Struct_4(var_1.a, var_1.b), vec4<u32>(var_1.b.b, 24625u, 0u, 0u), -7211i).b), all(select(!vec4<bool>(true, var_1.b.a, var_1.b.a, global0.x), select(vec4<bool>(true, true, var_1.b.a, global0.x), vec4<bool>(global0.x, false, false, true), vec4<bool>(var_1.b.a, global0.x, true, true)), true))));
}

