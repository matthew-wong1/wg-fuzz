struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<i32>,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: f32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>) -> u32 {
    let var_0 = global0.d;
    global0 = Struct_2(Struct_1(any(vec4<bool>(global0.d.a, true, var_0.d | true, false)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1) - vec2<f32>(var_0.b.x, arg_1.x)), _wgslsmith_f_op_vec2_f32(step(arg_1, arg_1)), _wgslsmith_div_f32(-502f, -1786f) == _wgslsmith_f_op_f32(-arg_0))), global0.d.c & -countOneBits(vec4<i32>(1i, -2147483647i, global0.d.c.x, 1135i)), !global0.d.d, vec3<f32>(_wgslsmith_f_op_f32(-347f + _wgslsmith_f_op_f32(-arg_1.x)), 455f, _wgslsmith_f_op_f32(1458f * global0.d.e.x))), ~min(~u_input.b, ~vec2<u32>(u_input.b.x, global0.e)) & ~vec2<u32>(_wgslsmith_dot_vec2_u32(global0.b, u_input.b), _wgslsmith_mult_u32(69363u, 8093u)), var_0.b.x, global0.a, ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b.x, u_input.b.x, 4294967295u, 10130u), vec4<u32>(global0.b.x, global0.e, u_input.a, 23255u)), 4294967295u));
    let var_1 = Struct_3(vec2<f32>(-909f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), vec4<i32>(-1i) * -(~(~vec4<i32>(24430i, -1i, -23998i, global0.a.c.x))), Struct_2(Struct_1(global0.d.a, _wgslsmith_f_op_vec2_f32(-var_0.e.yz), abs(global0.d.c), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global0.a.e, var_0.e, vec3<bool>(false, global0.a.a, global0.a.a))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, 1139f, global0.c) * vec3<f32>(-208f, -1313f, var_0.e.x)))), abs(~u_input.b), arg_0, Struct_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-532f, arg_0))), max(countOneBits(vec4<i32>(global0.a.c.x, var_0.c.x, global0.a.c.x, var_0.c.x)), -vec4<i32>(global0.d.c.x, var_0.c.x, global0.a.c.x, global0.d.c.x)), select(false, any(vec2<bool>(true, false)), !var_0.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.b.x, arg_0, var_0.e.x), var_0.e)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1511f, arg_0, global0.c), global0.a.e, var_0.d)))), ~(~global0.e)));
    return 1u;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<i32>) -> u32 {
    return reverseBits(_wgslsmith_dot_vec4_u32(select(vec4<u32>(_wgslsmith_mult_u32(u_input.a, arg_0.x), 4294967295u, 0u, 34306u), ~(vec4<u32>(0u, 0u, 11939u, u_input.a) >> (vec4<u32>(0u, 87301u, u_input.b.x, 33462u) % vec4<u32>(32u))), !(!vec4<bool>(false, global0.d.a, global0.a.a, global0.a.a))), _wgslsmith_mod_vec4_u32(vec4<u32>(func_3(-1000f, global0.d.b), ~arg_0.x, global0.e, select(arg_0.x, u_input.a, false)), _wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(global0.b.x, 86972u, 25184u, global0.e)), ~vec4<u32>(4294967295u, 4294967295u, arg_0.x, u_input.b.x), vec4<u32>(global0.e, 4294967295u, 4294967295u, arg_0.x)))));
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: vec3<u32>) -> Struct_2 {
    var var_0 = -vec3<i32>(_wgslsmith_mod_i32(reverseBits(~4729i), -(global0.d.c.x | -63168i)), 13098i, abs(1i) >> (1u % 32u));
    global0 = Struct_2(Struct_1(false, vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1 * 963f))), global0.c), vec4<i32>(global0.a.c.x, ~global0.a.c.x, countOneBits(var_0.x), _wgslsmith_dot_vec2_i32(abs(var_0.zx), vec2<i32>(-42252i, 12002i))), global0.d.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(571f, global0.a.e.x, 404f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, global0.a.e.x, arg_1))))), ~arg_2.xx, arg_1, global0.a, func_2(arg_0, vec2<i32>(~(1i & global0.d.c.x), _wgslsmith_mod_i32(min(-11344i, var_0.x), abs(-2147483647i)))));
    var var_1 = global0.d;
    return Struct_2(global0.a, ~vec2<u32>(~countOneBits(11344u), _wgslsmith_dot_vec2_u32(u_input.b, select(arg_0, vec2<u32>(u_input.b.x, 5994u), false))), 2131f, global0.d, global0.e << (_wgslsmith_mult_u32(u_input.b.x, min(reverseBits(u_input.b.x), ~4294967295u)) % 32u));
}

fn func_1() -> Struct_2 {
    var var_0 = vec4<u32>(countOneBits(0u) >> (global0.e % 32u), 34747u, u_input.b.x, firstTrailingBit(u_input.a));
    global0 = func_4(~vec2<u32>(1u, func_2(vec2<u32>(29155u, var_0.x), global0.d.c.xw | global0.a.c.yx)), global0.c, abs(_wgslsmith_mod_vec3_u32(var_0.wxz, ~vec3<u32>(global0.e, global0.e, 41878u))));
    var var_1 = func_4(select(vec2<u32>(u_input.b.x, u_input.a), vec2<u32>(4294967295u, countOneBits(0u)) << (_wgslsmith_clamp_vec2_u32(global0.b, u_input.b, countOneBits(u_input.b)) % vec2<u32>(32u)), !vec2<bool>(any(vec3<bool>(false, true, global0.a.d)), true)), global0.d.b.x, vec3<u32>(~var_0.x ^ ~var_0.x, 4294967295u, u_input.a) << (reverseBits(vec3<u32>(global0.e, var_0.x, 1u)) % vec3<u32>(32u))).a.c.zww;
    return func_4(~func_4(vec2<u32>(global0.e, 11944u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 1099f) + _wgslsmith_div_f32(262f, -1072f)), abs(abs(vec3<u32>(1u, var_0.x, 20805u)))).b, -248f, select(select(select(abs(var_0.zyw), ~vec3<u32>(4294967295u, u_input.b.x, u_input.b.x), !vec3<bool>(global0.a.d, global0.d.d, false)), _wgslsmith_add_vec3_u32(select(vec3<u32>(58914u, u_input.a, u_input.b.x), var_0.wwy, true), ~var_0.yxy), vec3<bool>(!global0.d.a, !global0.a.a, global0.d.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(func_2(var_0.zw, vec2<i32>(var_1.x, 1i)), var_0.x, min(var_0.x, var_0.x)), var_0.zyw), vec3<bool>(true, false, !(global0.a.a != true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = all(!vec3<bool>(false, !global0.a.d, !any(vec3<bool>(true, false, global0.d.d))));
    let var_1 = select((func_1().d.c.wy << (global0.b % vec2<u32>(32u))) << (abs(~(~u_input.b)) % vec2<u32>(32u)), func_1().d.c.yz, !vec2<bool>(func_1().a.a, global0.d.c.x == -9617i));
    var var_2 = func_4(max(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 4294967295u), select(u_input.b, firstLeadingBit(global0.b), true), ~vec2<u32>(global0.b.x, u_input.a)), global0.b), _wgslsmith_f_op_f32(-global0.a.b.x), vec3<u32>(95668u, 1u << (global0.b.x % 32u), abs(4294967295u))).a;
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.e.x, -786f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.e.zx * vec2<f32>(global0.c, global0.c)) * vec2<f32>(240f, var_2.b.x)))), select(func_1().d.c, _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(var_1.x, global0.a.c.x, 23601i, 0i), global0.d.c), true), func_1());
    var_2 = Struct_1(func_4(var_3.c.b, _wgslsmith_f_op_f32(f32(-1f) * -2466f), vec3<u32>(98335u, min(20373u, 1u), ~max(var_3.c.b.x, 0u))).a.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-func_4(vec2<u32>(global0.e, 0u), 981f, vec3<u32>(30655u, 1u, 1u)).a.b.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1724f, 1034f, global0.a.a)))))), (vec4<i32>(-30076i, ~var_3.c.d.c.x, abs(var_3.b.x), -global0.a.c.x) ^ var_3.b) & var_3.b, true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-func_1().a.e), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1514f, var_3.c.c, 1404f) + var_2.e) * vec3<f32>(184f, global0.c, -260f)), false))));
    var var_4 = Struct_3(var_3.c.d.b, ~abs(global0.a.c), func_4(var_3.c.b, var_2.e.x, vec3<u32>(14025u, reverseBits(18503u), var_3.c.b.x)));
    var var_5 = Struct_1(global0.a.d, global0.d.e.xx, _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(max(global0.d.c.x, var_4.b.x), global0.a.c.x | var_2.c.x, var_3.b.x, _wgslsmith_sub_i32(global0.a.c.x, global0.a.c.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, var_4.c.d.c.x, var_1.x, var_3.b.x), _wgslsmith_clamp_vec4_i32(var_4.b, vec4<i32>(var_2.c.x, 9628i, 23251i, 2147483647i), var_4.b))), var_2.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.c.c) * var_2.b.x) < var_4.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(var_3.c.d.e)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(global0.a.e.zx * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.c, var_4.a.x))) * _wgslsmith_f_op_vec2_f32(max(var_5.e.xx, _wgslsmith_f_op_vec2_f32(vec2<f32>(574f, var_5.e.x) + vec2<f32>(var_5.b.x, var_4.a.x)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(func_1().d.b.x)))))), func_4(vec2<u32>(global0.e, ~23029u) ^ global0.b, var_2.e.x, _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.b.x, var_4.c.e, 95911u), vec3<u32>(u_input.b.x, var_3.c.e, 49858u), vec3<u32>(var_4.c.e, 0u, 1u) | vec3<u32>(global0.b.x, var_4.c.e, var_3.c.e)) & ~vec3<u32>(9049u, 26824u, u_input.b.x)).a.c.x);
}

