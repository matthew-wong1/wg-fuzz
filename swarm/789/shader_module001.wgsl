struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: vec4<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: u32 = 0u;

var<private> global2: vec2<u32> = vec2<u32>(13273u, 17544u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool) -> bool {
    global2 = vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(global2.x, 28952u), ~(~32560u), _wgslsmith_div_u32(~4294967295u, ~1u), select(~global2.x, _wgslsmith_add_u32(40814u, global2.x), true)), ~(~vec4<u32>(4294967295u, global2.x, global2.x, 23750u))), max(4294967295u, 0u) << (~global2.x % 32u));
    global1 = 4294967295u;
    var var_0 = ~_wgslsmith_mod_vec3_u32(~(~reverseBits(vec3<u32>(4757u, 80804u, 4294967295u))), vec3<u32>(~global2.x << (global2.x % 32u), 32986u, 25614u));
    return all(select(!(!select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true), true)), !select(select(vec3<bool>(false, arg_0, true), vec3<bool>(false, true, arg_0), vec3<bool>(false, false, false)), !vec3<bool>(arg_0, false, false), vec3<bool>(true, true, false)), vec3<bool>(all(select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, arg_0, arg_0))), firstTrailingBit(global2.x) >= ~1u, !(arg_0 | arg_0))));
}

fn func_4(arg_0: vec4<bool>, arg_1: bool) -> u32 {
    var var_0 = vec3<bool>(true, arg_1, arg_0.x);
    let var_1 = !arg_0.zyw;
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(329f, -503f, 1285f, -725f) - vec4<f32>(901f, 1296f, -197f, 898f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1571f, 344f, -123f, 721f) - vec4<f32>(396f, -871f, 600f, -1377f))) + vec4<f32>(_wgslsmith_f_op_f32(abs(1082f)), -413f, -1760f, _wgslsmith_f_op_f32(min(-699f, 966f))))))));
    let var_3 = u_input.a;
    var var_4 = Struct_2(~(~reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(global2.x, global2.x, 4294967295u), vec3<u32>(global2.x, 0u, 4294967295u)))), vec3<i32>(~var_3.x, -1i, select(_wgslsmith_mult_i32(1i, -16579i), 1i, !(!arg_0.x))), firstTrailingBit(_wgslsmith_mod_vec4_u32(max(_wgslsmith_mult_vec4_u32(vec4<u32>(20796u, 4294967295u, global2.x, global2.x), vec4<u32>(0u, global2.x, 42656u, 110896u)), vec4<u32>(27135u, global2.x, 37644u, 58329u)), countOneBits(vec4<u32>(global2.x, global2.x, global2.x, global2.x) << (vec4<u32>(global2.x, global2.x, global2.x, global2.x) % vec4<u32>(32u))))));
    return 87830u;
}

fn func_2() -> u32 {
    var var_0 = Struct_1(vec4<bool>(true, all(vec3<bool>(true, true, true)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), true), -1000f, vec2<bool>((38181u | global2.x) != func_4(vec4<bool>(true, true, true, true), func_3(false)), !(u_input.a.x >= u_input.c)));
    var var_1 = Struct_3(_wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -abs(vec4<i32>(1i, 21495i, 2147483647i, u_input.b)), vec4<i32>(_wgslsmith_mod_i32(~2147483647i, 1i), min(-47353i, ~(-2147483647i)), ~firstTrailingBit(-13020i), ~u_input.a.x)), Struct_1(select(var_0.a, select(!vec4<bool>(var_0.c.x, var_0.c.x, var_0.a.x, true), vec4<bool>(false, false, var_0.c.x, false), vec4<bool>(true, true, true, true)), var_0.a.x || var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-534f + _wgslsmith_f_op_f32(min(179f, var_0.b)))), vec2<bool>(true, _wgslsmith_mult_i32(u_input.c, u_input.a.x) <= min(-6595i, u_input.a.x))));
    var var_2 = Struct_5(Struct_2(_wgslsmith_mod_vec3_u32(vec3<u32>(global2.x, 4294967295u, select(global2.x, global2.x, true)), ~vec3<u32>(global2.x, 56911u, global2.x)), -vec3<i32>(u_input.a.x, 19471i, -var_1.a.x), firstLeadingBit((vec4<u32>(global2.x, 0u, 57722u, global2.x) << (vec4<u32>(global2.x, global2.x, 50346u, 47447u) % vec4<u32>(32u))) ^ vec4<u32>(42651u, 4294967295u, 54237u, 4294967295u))), Struct_2(vec3<u32>(global2.x, ~_wgslsmith_mod_u32(global2.x, 0u), 101742u), _wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.a.x, -15835i, u_input.c), vec3<i32>(u_input.c, i32(-1i) * -2147483647i, u_input.b), _wgslsmith_sub_vec3_i32(select(var_1.a.wyz, var_1.a.xyy, var_1.b.a.zzx), min(vec3<i32>(-71422i, var_1.a.x, -34277i), var_1.a.xwy))), abs(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(37894u, 4294967295u, 4907u), vec3<u32>(3303u, global2.x, global2.x)), global2.x, global2.x << (global2.x % 32u), firstLeadingBit(36150u)))));
    let var_3 = _wgslsmith_dot_vec3_i32(~(~abs(var_2.b.b)) ^ -vec3<i32>(~var_1.a.x, select(56382i, var_1.a.x, false), _wgslsmith_div_i32(0i, 2147483647i)), vec3<i32>(1i, var_2.a.b.x, select(var_1.a.x, -var_2.a.b.x, true)));
    let var_4 = u_input.b;
    return 7487u;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3, arg_2: u32) -> vec2<u32> {
    global1 = 1u << (_wgslsmith_mod_u32(~func_2(), _wgslsmith_mod_u32(arg_0.c.a.x & _wgslsmith_sub_u32(arg_0.d.x, arg_2), arg_0.d.x)) % 32u);
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1525f, -1427f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1185f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.b - arg_1.b.b)))));
    global0 = _wgslsmith_dot_vec3_u32(arg_0.d.zzy, ~vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(33404u, arg_2), select(4294967295u, 4294967295u, arg_1.b.a.x)), global2.x, ~(~arg_0.c.c.x)));
    global2 = arg_0.c.a.yx;
    var var_1 = arg_1;
    return countOneBits(arg_0.b.a.zy);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = max(vec2<u32>(_wgslsmith_mult_u32(global2.x, _wgslsmith_sub_u32(global2.x, 0u)), ~_wgslsmith_add_u32(global2.x, global2.x)), ~(~(~vec2<u32>(59722u, 0u)))) ^ countOneBits(_wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(1u, 36828u)), func_1(Struct_4(-889f, Struct_2(vec3<u32>(2375u, global2.x, global2.x), vec3<i32>(u_input.b, u_input.c, 2147483647i), vec4<u32>(global2.x, global2.x, 4294967295u, global2.x)), Struct_2(vec3<u32>(global2.x, 3583u, 31183u), vec3<i32>(18645i, u_input.a.x, u_input.c), vec4<u32>(global2.x, global2.x, global2.x, 44688u)), vec4<u32>(4294967295u, 89397u, 4294967295u, 20272u)), Struct_3(vec4<i32>(u_input.b, u_input.a.x, 5766i, u_input.c), Struct_1(vec4<bool>(true, true, false, false), -1000f, vec2<bool>(false, false))), _wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, global2.x, global2.x, global2.x), vec4<u32>(global2.x, 41652u, global2.x, 0u)))));
    let var_0 = -(~(vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, u_input.b, 42228i, 1i), vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x))));
    let var_1 = Struct_2(vec3<u32>(4294967295u, global2.x, ~global2.x), _wgslsmith_clamp_vec3_i32(firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, 2147483647i), vec3<i32>(-2147483647i, -2147483647i, 1i))) ^ (vec3<i32>(-1i) * -var_0.zxy), firstTrailingBit(reverseBits(-vec3<i32>(var_0.x, var_0.x, 2147483647i))), firstLeadingBit(abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(-3558i, -1i, -1i), var_0.xwz, vec3<i32>(var_0.x, -2147483647i, 1i))))), firstTrailingBit(vec4<u32>(4294967295u, global2.x | ~global2.x, ~(~global2.x), ~1u & ~global2.x)));
    var var_2 = _wgslsmith_dot_vec3_u32(max(var_1.c.zww, vec3<u32>(31047u >> (0u % 32u), _wgslsmith_mod_u32(global2.x, var_1.c.x), 26126u)), _wgslsmith_div_vec3_u32(var_1.a, var_1.c.zzx));
    var_2 = ~global2.x;
    let var_3 = ~countOneBits(-firstLeadingBit(_wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(2147483647i, u_input.a.x))));
    let var_4 = Struct_1(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(any(vec4<bool>(true, true, false, false)), true, true, true)), !(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1957f + 1675f)))), select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, all(vec4<bool>(true, false, true, true))), vec2<bool>(true, all(vec3<bool>(true, false, false)))));
    var_2 = _wgslsmith_mod_u32(func_1(Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_4.b)) + var_4.b), var_1, Struct_2(~var_1.a, firstTrailingBit(var_1.b), reverseBits(vec4<u32>(0u, 9826u, 3469u, 4235u))), ~_wgslsmith_mult_vec4_u32(var_1.c, var_1.c)), Struct_3(_wgslsmith_add_vec4_i32(var_0, vec4<i32>(var_0.x, 10801i, 24123i, u_input.c)), var_4), global2.x).x, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(var_1.c, var_1.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1784f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.b * var_4.b)))));
}

