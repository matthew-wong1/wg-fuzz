struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: i32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec3<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: f32;

var<private> global2: vec3<u32> = vec3<u32>(1u, 101391u, 23670u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_4) -> vec4<u32> {
    global1 = 388f;
    var var_0 = Struct_3(!any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(false, false))), Struct_2(false, !vec2<bool>(all(vec3<bool>(true, false, true)), true)), !vec3<bool>(true | all(vec2<bool>(false, false)), (arg_1.d.x > arg_1.d.x) && true, all(vec4<bool>(true, true, true, true))), Struct_1(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(global2.x, 21400u, 0u)), vec3<u32>(global2.x, 55807u, 36132u)), arg_1.a.x), ~(-2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -505f), -462f))), (i32(-1i) * -29743i) ^ (i32(-1i) * -global0.x), _wgslsmith_add_vec3_i32(firstLeadingBit(arg_0.zzw ^ arg_0.yww), max(vec3<i32>(arg_1.c, global0.x, arg_0.x) | arg_0.zxx, arg_0.wyw & vec3<i32>(global0.x, arg_0.x, arg_1.c)))));
    let var_1 = Struct_3(any(var_0.c), var_0.b, !(!(!(!var_0.c))), Struct_1(~11879u, var_0.d.e.x >> (var_0.d.a % 32u), _wgslsmith_f_op_f32(trunc(arg_1.d.x)), _wgslsmith_clamp_i32(-31207i, ~1i, 0i) | firstLeadingBit(abs(var_0.d.b)), ~countOneBits(~arg_0.zzz)));
    var var_2 = var_1.b;
    let var_3 = var_1.b;
    return ~(arg_1.a << (_wgslsmith_div_vec4_u32(min(_wgslsmith_mult_vec4_u32(vec4<u32>(5788u, var_0.d.a, 135386u, 0u), vec4<u32>(global2.x, 0u, arg_1.b, 4294967295u)), vec4<u32>(var_1.d.a, 4294967295u, 22777u, 11487u)), arg_1.a) % vec4<u32>(32u)));
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_4, arg_3: Struct_4) -> vec3<bool> {
    let var_0 = vec2<bool>(_wgslsmith_dot_vec2_i32(global0.zz << (global2.xy % vec2<u32>(32u)), ~global0.xy) >= 0i, true);
    var var_1 = vec4<f32>(arg_3.d.x, arg_2.d.x, _wgslsmith_f_op_f32(-arg_3.d.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1194f)), arg_3.d.x)));
    let var_2 = arg_1 >= ~global0.x;
    global2 = vec3<u32>(arg_0.x, abs(arg_0.x), 24526u);
    global2 = _wgslsmith_add_vec3_u32(arg_2.a.zxz, countOneBits(~func_3(vec4<i32>(global0.x, arg_2.c, arg_1, 28846i), arg_2).xwy & ~vec3<u32>(4080u, arg_0.x, 95356u)));
    return select(!(!vec3<bool>(var_0.x && false, true, var_0.x)), !(!select(vec3<bool>(var_2, true, false), select(vec3<bool>(true, false, false), vec3<bool>(true, var_2, var_0.x), vec3<bool>(false, var_2, false)), vec3<bool>(true, var_0.x, false))), !(!(!(global2.x < 3269u))));
}

fn func_2() -> vec4<u32> {
    var var_0 = min(~global2.x, ~global2.x);
    var var_1 = Struct_3(true || all(select(vec2<bool>(true, false), vec2<bool>(true, true), false)), Struct_2(false, !vec2<bool>(false, u_input.a < u_input.a)), select(func_4(vec3<u32>(21025u, 0u, global2.x) >> (~vec3<u32>(global2.x, global2.x, 4294967295u) % vec3<u32>(32u)), -24499i, Struct_4(func_3(vec4<i32>(-2147483647i, -2147483647i, u_input.a, global0.x), Struct_4(vec4<u32>(0u, 4294967295u, global2.x, 26884u), 128844u, global0.x, vec4<f32>(-2881f, 804f, -1000f, 1090f))), ~13953u, -1i << (global2.x % 32u), _wgslsmith_f_op_vec4_f32(vec4<f32>(-742f, -1249f, -877f, 878f) * vec4<f32>(-357f, -711f, -851f, -782f))), Struct_4(vec4<u32>(global2.x, 0u, global2.x, global2.x) | vec4<u32>(1u, 4294967295u, 37437u, 52790u), global2.x << (global2.x % 32u), firstTrailingBit(u_input.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(-665f, -1918f, 606f, -391f) - vec4<f32>(1000f, -1000f, 1233f, 764f)))), !vec3<bool>(any(vec3<bool>(true, false, true)), all(vec3<bool>(true, false, false)), true), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, u_input.a, 41572i), -vec3<i32>(global0.x, 14593i, 1i)) < abs(-8493i | global0.x)), Struct_1(~_wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(global2.x, 4294967295u)), global0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-268f + _wgslsmith_f_op_f32(max(355f, 311f))), 817f)), max(_wgslsmith_mod_i32(-2147483647i, global0.x), -u_input.a) ^ -global0.x, max(vec3<i32>(global0.x, global0.x, 0i) & vec3<i32>(u_input.a, global0.x, global0.x), -vec3<i32>(-2147483647i, -2147483647i, u_input.a)) ^ _wgslsmith_add_vec3_i32(-vec3<i32>(global0.x, global0.x, global0.x), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, global0.x, global0.x), vec3<i32>(u_input.a, -29880i, -27579i)))));
    let var_2 = ~vec2<u32>(_wgslsmith_mod_u32(firstTrailingBit(global2.x & var_1.d.a), global2.x), _wgslsmith_div_u32(min(var_1.d.a, 0u), firstTrailingBit(func_3(vec4<i32>(global0.x, -8062i, 1i, 0i), Struct_4(vec4<u32>(global2.x, var_1.d.a, global2.x, 1u), 64539u, u_input.a, vec4<f32>(1297f, var_1.d.c, 1000f, -1447f))).x)));
    var_0 = reverseBits(~firstLeadingBit(~1000u) | _wgslsmith_dot_vec4_u32(~func_3(vec4<i32>(u_input.a, 87398i, u_input.a, global0.x), Struct_4(vec4<u32>(1u, var_2.x, 1u, var_2.x), global2.x, var_1.d.b, vec4<f32>(-361f, -746f, var_1.d.c, -578f))), vec4<u32>(1u, ~3039u, var_2.x, var_2.x)));
    var var_3 = vec3<f32>(-703f, var_1.d.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.d.c))));
    return _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(var_1.d.a, 5036u, global2.x, var_2.x), ~(~vec4<u32>(var_2.x, global2.x, var_2.x, 25149u))), abs(vec4<u32>(14168u, 10273u, var_1.d.a, 56597u)) << (vec4<u32>(_wgslsmith_mult_u32(global2.x, var_1.d.a), 1u | var_1.d.a, var_1.d.a, global2.x) % vec4<u32>(32u))), abs(_wgslsmith_sub_vec4_u32(firstLeadingBit(~vec4<u32>(19407u, global2.x, 4294967295u, 19141u)), ~func_3(vec4<i32>(-6496i, u_input.a, u_input.a, -28652i), Struct_4(vec4<u32>(global2.x, global2.x, 70557u, var_2.x), global2.x, 61211i, vec4<f32>(var_3.x, var_3.x, -988f, -109f))))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: bool) -> vec3<i32> {
    var var_0 = min(~arg_0.d.e, ~(-(vec3<i32>(3355i, u_input.a, global0.x) & arg_0.d.e)));
    var var_1 = Struct_4(select(~(~func_2()), reverseBits(select(vec4<u32>(92354u, 48040u, 31076u, 1u) ^ vec4<u32>(8479u, global2.x, 1u, global2.x), abs(vec4<u32>(arg_0.d.a, 84290u, global2.x, global2.x)), select(vec4<bool>(false, false, arg_3, false), vec4<bool>(true, arg_1.b.x, arg_1.a, true), arg_3))), vec4<bool>(true, true, all(vec3<bool>(true, false, false)), !(arg_3 || arg_1.b.x))), abs(arg_0.d.a), ~select(~u_input.a, _wgslsmith_clamp_i32(20816i, var_0.x, -23077i), true), arg_2);
    var_0 = ~_wgslsmith_add_vec3_i32(arg_0.d.e, arg_0.d.e | _wgslsmith_mult_vec3_i32(arg_0.d.e, arg_0.d.e)) >> (var_1.a.ywz % vec3<u32>(32u));
    var var_2 = -2190f;
    global0 = min(((abs(arg_0.d.e) << ((var_1.a.zxw | vec3<u32>(var_1.a.x, global2.x, global2.x)) % vec3<u32>(32u))) & firstLeadingBit(vec3<i32>(arg_0.d.d, u_input.a, 22500i))) ^ firstLeadingBit(arg_0.d.e), arg_0.d.e);
    return _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-14241i, i32(-1i) * -35571i, _wgslsmith_div_i32(28673i, 2147483647i)), _wgslsmith_div_vec3_i32(vec3<i32>(26283i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, arg_0.d.e.x, 1i, arg_0.d.d), vec4<i32>(-1i, 50192i, 6742i, u_input.a)), max(var_1.c, 0i)), ~vec3<i32>(-1i, 0i, u_input.a) & arg_0.d.e)), arg_0.d.e);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~(-_wgslsmith_sub_vec3_i32(func_1(Struct_3(true, Struct_2(false, vec2<bool>(false, false)), vec3<bool>(false, false, true), Struct_1(4294967295u, 2147483647i, -713f, 1i, vec3<i32>(u_input.a, global0.x, global0.x))), Struct_2(true, vec2<bool>(false, true)), vec4<f32>(-297f, 1511f, -890f, -327f), false), ~vec3<i32>(1i, global0.x, -14692i))));
    let var_0 = Struct_2(true, vec2<bool>(all(func_4(vec3<u32>(1u, 1u, 1u), countOneBits(u_input.a), Struct_4(vec4<u32>(global2.x, global2.x, 17400u, global2.x), global2.x, global0.x, vec4<f32>(175f, -2753f, -2950f, 271f)), Struct_4(vec4<u32>(global2.x, global2.x, global2.x, global2.x), 10293u, u_input.a, vec4<f32>(111f, -691f, 875f, -170f)))), false));
    var var_1 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(~func_2().x, ~1u >> (global2.x % 32u)), global2.xx), firstTrailingBit(global0.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(trunc(-127f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(685f)) + _wgslsmith_f_op_f32(-210f + -553f)), -223f))), 4712i, min(_wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(global0.x, 19163i, global0.x)) ^ ~vec3<i32>(-57868i, global0.x, global0.x), firstTrailingBit(-vec3<i32>(-3055i, u_input.a, -16274i))), func_1(Struct_3(true, var_0, !vec3<bool>(var_0.b.x, var_0.a, var_0.a), Struct_1(global2.x, 6469i, -422f, -2147483647i, vec3<i32>(u_input.a, global0.x, u_input.a))), var_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1529f, 158f, 1430f, 2324f))), false | any(vec3<bool>(var_0.b.x, var_0.b.x, true)))));
    global2 = ~select(select(vec3<u32>(1u, var_1.a, 4294967295u), vec3<u32>(4294967295u, 49240u, var_1.a), select(var_0.a, true, true)), vec3<u32>(global2.x, 51912u, 15751u) ^ (vec3<u32>(1u, var_1.a, global2.x) ^ vec3<u32>(16766u, var_1.a, var_1.a)), vec3<bool>(true, true, true)) << (reverseBits(reverseBits(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global2.x, var_1.a, 18437u), vec3<u32>(31215u, 4029u, 5770u)), _wgslsmith_mod_vec3_u32(vec3<u32>(global2.x, 0u, global2.x), vec3<u32>(4294967295u, 21033u, global2.x))))) % vec3<u32>(32u));
    let var_2 = Struct_3(var_0.b.x, Struct_2(any(vec3<bool>(var_0.b.x, false, !var_0.a)), select(var_0.b, var_0.b, all(vec3<bool>(true, var_0.a, true)))), select(!vec3<bool>(var_0.b.x == var_0.a, any(vec4<bool>(var_0.b.x, true, var_0.b.x, true)), var_1.c == 928f), func_4(~vec3<u32>(global2.x, 1u, var_1.a) >> (_wgslsmith_add_vec3_u32(vec3<u32>(var_1.a, global2.x, global2.x), vec3<u32>(var_1.a, var_1.a, 47159u)) % vec3<u32>(32u)), 10969i, Struct_4(~vec4<u32>(33461u, 12556u, 0u, global2.x), 0u, -9871i, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2282f, -383f, var_1.c, var_1.c)))), Struct_4(vec4<u32>(global2.x, 4294967295u, 4294967295u, 30211u) | vec4<u32>(4294967295u, var_1.a, global2.x, 4294967295u), global2.x, -1i, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(625f, 1977f, var_1.c, var_1.c))))), !var_0.a), Struct_1(var_1.a, global0.x, _wgslsmith_f_op_f32(step(var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-525f, var_1.c)))), u_input.a, var_1.e));
    var var_3 = Struct_1(_wgslsmith_div_u32(global2.x, ~var_2.d.a), -2147483647i, _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_2.d.d, firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(var_2.d.e.x, u_input.a, -17815i) & vec3<i32>(1144i, 1i, 41955i), var_1.e) | -_wgslsmith_clamp_vec3_i32(vec3<i32>(471i, -7618i, u_input.a), vec3<i32>(24919i, var_1.e.x, 1i), vec3<i32>(-27583i, global0.x, 0i))));
    let x = u_input.a;
    s_output = StorageBuffer(-877f, global2.yx, var_2.d.c, ~(~vec3<u32>(1u, ~31753u, var_1.a >> (37919u % 32u))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(var_2.d.c * var_3.c), _wgslsmith_f_op_f32(round(var_1.c)), _wgslsmith_f_op_f32(sign(var_2.d.c))))))));
}

