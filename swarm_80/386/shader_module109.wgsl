struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: f32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
    c: Struct_3,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec2<i32>;

var<private> global2: Struct_2;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool) -> f32 {
    global1 = -global2.e.d.yx;
    let var_0 = min(global2.a.x, select(~_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(global2.b.x, 1u, 90431u)), global2.b.yyx), 29326u, false));
    let var_1 = !(!(!(!arg_0)));
    global0 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(countOneBits(global2.a), _wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, 0u, var_0)), vec3<u32>(23057u | u_input.a, _wgslsmith_clamp_u32(global2.a.x, var_0, 1u), 0u ^ global2.b.x), global2.b.xxy)), ~(~global2.e.a));
    global0 = global2.b.x;
    return -814f;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_mult_i32(reverseBits(-1i), reverseBits(2147483647i) << (global2.b.x % 32u)) >> (19436u % 32u);
    var var_1 = Struct_4(countOneBits(vec4<i32>(global2.e.d.x, ~(~2147483647i), min(~global1.x, reverseBits(0i)), 34479i)), _wgslsmith_sub_i32(i32(-1i) * -(i32(-1i) * -33134i), -54965i), Struct_3(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(939f)))), _wgslsmith_f_op_f32(func_3(true)), _wgslsmith_f_op_f32(min(-2229f, -136f))), Struct_1(min(global2.a.x, 3048u) | firstTrailingBit(u_input.a), _wgslsmith_mod_vec3_u32(vec3<u32>(31387u, 40577u, global2.b.x), global2.a) ^ global2.e.b, select(select(vec3<bool>(true, false, global2.e.c.x), vec3<bool>(global2.e.c.x, global2.e.c.x, global2.e.c.x), global2.e.c.x), global2.e.c, true), firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(global2.d, -45052i, var_0), vec3<i32>(global2.e.d.x, -1i, 0i)))), Struct_1(73949u, ~abs(global2.e.b), global2.e.c, global2.e.d), global2.e.d.yx, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-926f, global2.c, -173f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(267f, global2.c, global2.c) - vec3<f32>(289f, global2.c, 901f))))))), !select(vec3<bool>(global2.e.c.x, global2.c == global2.c, any(global2.e.c)), vec3<bool>(false | global2.e.c.x, true, true), global2.e.c), vec2<bool>(!((false & global2.e.c.x) && !global2.e.c.x), all(select(select(vec4<bool>(false, false, true, global2.e.c.x), vec4<bool>(false, false, global2.e.c.x, false), vec4<bool>(global2.e.c.x, false, false, global2.e.c.x)), select(vec4<bool>(global2.e.c.x, global2.e.c.x, true, global2.e.c.x), vec4<bool>(true, global2.e.c.x, global2.e.c.x, true), false), !vec4<bool>(global2.e.c.x, global2.e.c.x, false, false)))));
    var var_2 = global2.e;
    let var_3 = Struct_5(vec4<bool>(select(false, (var_1.c.b.d.x <= -38403i) & all(vec2<bool>(false, global2.e.c.x)), any(select(vec4<bool>(false, global2.e.c.x, var_2.c.x, false), vec4<bool>(var_2.c.x, false, var_2.c.x, global2.e.c.x), vec4<bool>(var_2.c.x, true, var_2.c.x, var_1.c.c.c.x)))), ~(~var_1.c.b.b.x) < _wgslsmith_mult_u32(~global2.a.x, var_1.c.c.a), (-16441i > _wgslsmith_sub_i32(var_0, u_input.b.x)) | (!var_2.c.x != any(vec4<bool>(false, global2.e.c.x, true, var_1.e.x))), !global2.e.c.x), global2.b, Struct_3(_wgslsmith_f_op_vec3_f32(var_1.c.e + var_1.c.a), Struct_1(4294967295u, min(~vec3<u32>(7676u, 0u, 47685u), var_1.c.b.b ^ var_2.b), !(!var_2.c), var_1.a.wzw), Struct_1((u_input.a | u_input.a) >> (0u % 32u), countOneBits(vec3<u32>(0u, u_input.a, 32522u)), !vec3<bool>(true, global2.e.c.x, var_2.c.x), vec3<i32>(2147483647i, _wgslsmith_add_i32(27740i, var_1.a.x), -var_1.a.x)), -vec2<i32>(39548i ^ var_1.b, -1i), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1096f * 1057f), global2.c)), global2.c, _wgslsmith_f_op_f32(-global2.c))));
    var_2 = Struct_1(var_1.c.c.b.x, var_2.b, vec3<bool>(true, false, any(var_3.a.yxx) & var_2.c.x), var_1.c.c.d);
    return Struct_2(var_3.c.b.b, global2.b, _wgslsmith_f_op_f32(floor(var_1.c.e.x)), _wgslsmith_mult_i32(abs(firstTrailingBit(1i) >> (75283u % 32u)), -21935i >> (_wgslsmith_clamp_u32(12991u >> (global2.b.x % 32u), 0u, 0u) % 32u)), global2.e);
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c, 1358f) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1340f, 2057f), vec2<f32>(global2.c, -403f), global2.e.c.x))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(677f, arg_0.c))), func_2().e.c.x)))));
    let var_1 = !global2.e.c.x;
    global2 = Struct_2(firstTrailingBit(_wgslsmith_div_vec3_u32(max(global2.e.b, vec3<u32>(u_input.a, global2.b.x, global2.b.x)), arg_0.e.b) ^ (abs(vec3<u32>(u_input.a, 4294967295u, 1u)) ^ abs(vec3<u32>(u_input.a, 23266u, u_input.a)))), _wgslsmith_div_vec4_u32(vec4<u32>(1u, ~_wgslsmith_sub_u32(33321u, global2.e.b.x), 1u, ~firstLeadingBit(4294967295u)), vec4<u32>(min(~arg_0.b.x, 18292u), ~u_input.a, ~u_input.a ^ 16975u, 1u)), 300f, u_input.b.x, global2.e);
    var var_2 = arg_0.e;
    var_2 = arg_0.e;
    return func_2().e;
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: vec2<bool>, arg_3: f32) -> Struct_4 {
    global2 = Struct_2(vec3<u32>(~(~0u), ~5752u, ~(arg_0.c.b.x ^ select(arg_0.b.a, 1u, true))), global2.b, arg_3, reverseBits(max(76597i, global1.x)), func_4(func_2()));
    var var_0 = ~(~_wgslsmith_div_u32(~(~u_input.a), 34170u));
    var_0 = 39735u;
    global2 = Struct_2(abs(global2.e.b), select(global2.b, vec4<u32>(max(~arg_0.c.b.x, ~34601u), u_input.a, global2.a.x | abs(4294967295u), abs(~arg_0.b.a)), select(vec4<bool>(arg_2.x, all(arg_0.c.c), true, arg_2.x && arg_0.b.c.x), select(select(vec4<bool>(true, true, arg_0.b.c.x, false), vec4<bool>(arg_2.x, false, global2.e.c.x, arg_0.c.c.x), vec4<bool>(arg_0.c.c.x, global2.e.c.x, false, arg_0.c.c.x)), !vec4<bool>(false, global2.e.c.x, true, false), !arg_2.x), arg_0.c.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.a.x)) + arg_3), func_2().c), _wgslsmith_mult_i32(_wgslsmith_sub_i32(global1.x, ~(-77115i)), global1.x), Struct_1(arg_0.c.a, ~vec3<u32>(4294967295u, global2.b.x, ~1525u), vec3<bool>(all(!vec4<bool>(arg_0.b.c.x, true, arg_2.x, false)), any(global2.e.c.xx), !arg_2.x), _wgslsmith_mod_vec3_i32(reverseBits(max(vec3<i32>(u_input.b.x, 26060i, -1i), global2.e.d)), vec3<i32>(1i, 0i, max(arg_0.d.x, arg_1)))));
    global2 = Struct_2(~global2.b.zzw >> (firstLeadingBit(global2.b.yyz) % vec3<u32>(32u)), vec4<u32>(_wgslsmith_div_u32(30870u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(35310u, 4294967295u), abs(arg_0.b.a), u_input.a)), u_input.a, ~1u, min(arg_0.c.b.x | ~0u, ~(global2.b.x & 0u))), arg_3, arg_0.b.d.x, arg_0.b);
    return Struct_4(min(abs((vec4<i32>(arg_0.d.x, 2147483647i, arg_1, 68291i) << (vec4<u32>(u_input.a, 57002u, u_input.a, 4294967295u) % vec4<u32>(32u))) ^ vec4<i32>(arg_0.c.d.x, arg_0.b.d.x, 0i, u_input.b.x)), ~countOneBits(select(vec4<i32>(56506i, 64345i, arg_0.b.d.x, u_input.b.x), vec4<i32>(-16567i, arg_0.d.x, global1.x, -1i), arg_2.x))), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, 28382i, -2147483647i, arg_0.b.d.x) & vec4<i32>(global2.d, arg_1, arg_0.c.d.x, -9762i), countOneBits(vec4<i32>(-23011i, -2147483647i, global1.x, global2.e.d.x))), vec4<i32>(~global1.x, global2.e.d.x, 1i, firstLeadingBit(global2.d))) << (_wgslsmith_mod_u32(0u, reverseBits(4294967295u)) % 32u), arg_0, global2.e.c, global2.e.c.xz);
}

fn func_5(arg_0: Struct_4) -> vec4<bool> {
    var var_0 = ~_wgslsmith_mult_i32(u_input.b.x, select(_wgslsmith_dot_vec4_i32(vec4<i32>(-35267i, arg_0.a.x, global1.x, global2.d), vec4<i32>(19804i, global2.d, global2.e.d.x, u_input.b.x)), abs(-global1.x), arg_0.c.b.c.x));
    var var_1 = countOneBits(-15276i);
    var_1 = 1i;
    var var_2 = Struct_5(vec4<bool>(((global1.x ^ -78531i) ^ (0i & global1.x)) >= func_4(func_2()).d.x, false, true, any(vec3<bool>(true, true, false))), vec4<u32>(4294967295u, func_2().e.a | 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global2.e.b.x) & ~vec2<u32>(4294967295u, arg_0.c.c.a), ~global2.b.zw), ~(~25802u)), func_1(arg_0.c, _wgslsmith_dot_vec3_i32(-vec3<i32>(arg_0.b, u_input.b.x, -1i) & abs(vec3<i32>(global2.d, arg_0.a.x, arg_0.b)), -_wgslsmith_clamp_vec3_i32(arg_0.c.b.d, global2.e.d, arg_0.a.zxz)), vec2<bool>(all(select(vec2<bool>(false, global2.e.c.x), vec2<bool>(arg_0.e.x, false), true)), !(arg_0.e.x != false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c) - arg_0.c.a.x)).c);
    var var_3 = arg_0.a;
    return !var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(global2.e.c.x, true), global2.e.c.yz, all(!func_5(func_1(Struct_3(vec3<f32>(global2.c, 889f, -248f), global2.e, Struct_1(global2.e.b.x, vec3<u32>(4294967295u, 0u, 64099u), global2.e.c, global2.e.d), vec2<i32>(u_input.b.x, global1.x), vec3<f32>(2399f, global2.c, global2.c)), global1.x, global2.e.c.xz, global2.c))));
    var var_1 = Struct_4(_wgslsmith_div_vec4_i32(-vec4<i32>(19675i, -1i, ~2147483647i, 6293i), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.x, -11393i, global1.x, global1.x), vec4<i32>(u_input.b.x, -24991i, global1.x, global1.x), vec4<i32>(global1.x, -1i, 2147483647i, -24857i)), vec4<i32>(25976i, u_input.b.x, global2.d, -12213i)) ^ ~(vec4<i32>(global1.x, -27490i, global2.e.d.x, -2387i) | vec4<i32>(global1.x, 10454i, -43055i, 0i))), firstTrailingBit(func_2().d), Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1293f, global2.c, global2.c))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-331f, global2.c, 1027f), vec3<f32>(336f, global2.c, -982f), global2.e.c)))), vec3<f32>(_wgslsmith_f_op_f32(sign(-1165f)), -201f, -318f)), Struct_1(~_wgslsmith_mult_u32(u_input.a, 56876u), ~func_2().b.ywz, global2.e.c, vec3<i32>(firstLeadingBit(global1.x), 1i, global2.e.d.x)), Struct_1(~u_input.a, vec3<u32>(1u, 2548u, _wgslsmith_mod_u32(9086u, 8371u)), !select(global2.e.c, global2.e.c, global2.e.c.x), select(vec3<i32>(u_input.b.x, 1i, global1.x), global2.e.d | vec3<i32>(u_input.b.x, -60320i, -2147483647i), global2.e.c)), global2.e.d.xz, _wgslsmith_div_vec3_f32(vec3<f32>(global2.c, _wgslsmith_div_f32(global2.c, -745f), _wgslsmith_f_op_f32(-global2.c)), vec3<f32>(_wgslsmith_f_op_f32(max(global2.c, -844f)), _wgslsmith_f_op_f32(global2.c * global2.c), 1000f))), vec3<bool>(all(global2.e.c.xx), var_0.x, !(!var_0.x)), !var_0);
    var var_2 = var_0.x;
    global2 = func_2();
    var var_3 = Struct_2(firstLeadingBit(global2.b.yxy), ~global2.b, global2.c, -1i, var_1.c.c);
    global2 = Struct_2(vec3<u32>(4294967295u, _wgslsmith_mult_u32(firstTrailingBit(0u), ~u_input.a), _wgslsmith_add_u32(u_input.a, ~_wgslsmith_add_u32(global2.b.x, var_1.c.b.a))), global2.b, global2.c, -firstTrailingBit(-2147483647i | var_3.e.d.x) << (_wgslsmith_mod_u32(u_input.a, ~max(57853u, 0u)) % 32u), Struct_1(~abs(1u), global2.a, select(global2.e.c, global2.e.c, !func_1(Struct_3(vec3<f32>(-120f, var_1.c.a.x, 1000f), Struct_1(92194u, global2.b.xzx, vec3<bool>(true, var_1.c.b.c.x, var_0.x), vec3<i32>(u_input.b.x, var_3.e.d.x, 16074i)), Struct_1(10613u, var_1.c.c.b, var_3.e.c, vec3<i32>(global2.d, 505i, -19816i)), var_1.a.yz, vec3<f32>(1326f, global2.c, global2.c)), u_input.b.x, global2.e.c.xz, 430f).c.b.c), var_3.e.d));
    var var_4 = vec2<bool>(!func_4(Struct_2(var_3.e.b, vec4<u32>(23361u, u_input.a, var_3.b.x, u_input.a), -2699f, 2147483647i, Struct_1(var_3.a.x, var_1.c.c.b, global2.e.c, vec3<i32>(var_1.b, var_1.c.d.x, -3870i)))).c.x == true, var_3.e.c.x);
    var var_5 = _wgslsmith_f_op_f32(func_1(func_1(Struct_3(var_1.c.e, global2.e, var_1.c.c, var_3.e.d.zx, vec3<f32>(global2.c, var_3.c, var_3.c)), 25851i, var_0, -791f).c, -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), var_1.c.c.d.xy), !vec2<bool>(global2.e.c.x, var_0.x), -166f).c.e.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(927f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(global2.e.b, global2.e.b), 0u, global2.a.x), _wgslsmith_f_op_f32(1000f + var_3.c), var_1.a.xx);
}

