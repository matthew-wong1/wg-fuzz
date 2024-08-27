struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: u32,
    b: bool,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 10>;

var<private> global1: vec2<u32>;

var<private> global2: i32 = 1i;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> Struct_3 {
    global1 = vec2<u32>(~1647u, countOneBits(~(~(45518u | u_input.c.x))));
    return Struct_3(~u_input.c.x, true);
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: Struct_2) -> vec3<bool> {
    global1 = vec2<u32>(func_2().a & arg_2.d, ~abs(countOneBits(arg_2.d >> (global1.x % 32u))));
    global1 = _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.c, firstTrailingBit(select(u_input.c, vec2<u32>(u_input.c.x, arg_2.d), arg_2.a.b.x))), u_input.c);
    var var_0 = func_2();
    global0 = array<vec3<bool>, 10>();
    let var_1 = ~(reverseBits(vec4<i32>(-1i) * -vec4<i32>(arg_1.c.a.x, -1i, u_input.d.x, u_input.d.x)) ^ abs(max(vec4<i32>(-3963i, 11482i, arg_2.a.c.x, 12634i) >> (vec4<u32>(global1.x, 13003u, global1.x, 49692u) % vec4<u32>(32u)), -vec4<i32>(20878i, arg_1.c.a.x, u_input.b, arg_2.c.c.x))));
    return global0[_wgslsmith_index_u32(var_0.a, 10u)];
}

fn func_1(arg_0: bool) -> bool {
    global1 = firstTrailingBit(~vec2<u32>(95447u, 1u));
    var var_0 = func_2();
    global1 = vec2<u32>(45124u, 24318u);
    var var_1 = firstLeadingBit(abs(u_input.a));
    var var_2 = Struct_2(Struct_1(-(vec3<i32>(41533i, 21673i, u_input.d.x) | ~vec3<i32>(-1i, u_input.a, u_input.a)), global0[_wgslsmith_index_u32(global1.x, 10u)], ~_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d.x, -2147483647i), u_input.d), vec2<i32>(u_input.a, 1i))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -822f)), 960f, _wgslsmith_f_op_f32(-1255f - _wgslsmith_f_op_f32(trunc(-460f))), _wgslsmith_f_op_f32(ceil(216f))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1853f, -844f, -1000f, -1512f))) - vec4<f32>(591f, -712f, -600f, 1436f))))), Struct_1(abs(-vec3<i32>(-31518i, u_input.d.x, -1i)), select(vec3<bool>(true, true, arg_0), global0[_wgslsmith_index_u32(25344u ^ (var_0.a << (u_input.c.x % 32u)), 10u)], any(func_3(-1543f, Struct_4(false, Struct_3(963u, false), Struct_1(vec3<i32>(u_input.a, u_input.d.x, u_input.d.x), vec3<bool>(false, arg_0, false), u_input.d)), Struct_2(Struct_1(vec3<i32>(u_input.d.x, u_input.b, 0i), global0[_wgslsmith_index_u32(24501u, 10u)], u_input.d), vec4<f32>(-298f, -282f, -1624f, 228f), Struct_1(vec3<i32>(u_input.a, -2855i, -2147483647i), global0[_wgslsmith_index_u32(0u, 10u)], u_input.d), u_input.c.x)))), u_input.d), var_0.a >> (var_0.a % 32u));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(!func_1(true), true);
    var var_1 = Struct_4(var_0.x, func_2(), Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d.x, ~(-1i), u_input.a), -vec3<i32>(49148i, u_input.b, -2147483647i)), select(vec3<bool>(false && var_0.x, true, var_0.x && var_0.x), func_3(478f, Struct_4(false, Struct_3(35635u, var_0.x), Struct_1(vec3<i32>(12441i, -2147483647i, -14204i), global0[_wgslsmith_index_u32(1u, 10u)], vec2<i32>(u_input.d.x, -2147483647i))), Struct_2(Struct_1(vec3<i32>(-32255i, -1i, u_input.d.x), global0[_wgslsmith_index_u32(56494u, 10u)], vec2<i32>(-2200i, 7073i)), vec4<f32>(-1189f, 1378f, -159f, 1303f), Struct_1(vec3<i32>(-10296i, u_input.a, 19482i), vec3<bool>(false, var_0.x, true), vec2<i32>(u_input.b, u_input.b)), global1.x)), var_0.x), u_input.d));
    var var_2 = _wgslsmith_mult_vec2_i32(firstLeadingBit(-countOneBits(vec2<i32>(1i, u_input.a))) << (vec2<u32>(global1.x, ~global1.x) % vec2<u32>(32u)), select(vec2<i32>(u_input.a, ~reverseBits(-1i)), u_input.d, var_1.c.b.zz));
    var var_3 = !var_1.c.b.xx;
    var var_4 = Struct_2(var_1.c, vec4<f32>(-1049f, -1199f, 409f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2311f - -1922f))), var_1.c, firstLeadingBit(firstLeadingBit(u_input.c.x)));
    var var_5 = func_2();
    var var_6 = vec2<u32>(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.c, u_input.c, vec2<u32>(44087u, 0u)), max(vec2<u32>(4294967295u, var_1.b.a), u_input.c)), abs(var_1.b.a) << (~(~var_4.d) % 32u), var_4.d), global1.x);
    let var_7 = vec2<bool>(var_1.b.a >= var_1.b.a, var_4.a.b.x);
    let var_8 = !var_4.c.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -600f) + var_4.b.x), _wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, global1.x, 81769u, 54989u), vec4<u32>(4294967295u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(5030u, var_6.x, u_input.c.x, var_5.a), vec4<u32>(var_6.x, u_input.c.x, global1.x, var_6.x)), ~20040u), max(~var_4.d, max(4294967295u, var_1.b.a)), _wgslsmith_mod_u32(firstTrailingBit(global1.x), ~var_1.b.a))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4.b.x * var_4.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.b.x) + _wgslsmith_f_op_f32(f32(-1f) * -1611f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * var_4.b.x) + var_4.b.x)), _wgslsmith_dot_vec3_i32(~var_4.a.a, var_4.a.a));
}

