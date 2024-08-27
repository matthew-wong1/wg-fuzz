struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<bool>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: u32,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec2<u32>;

var<private> global2: Struct_3 = Struct_3(Struct_1(-1654f, vec2<bool>(true, true), vec4<f32>(100f, 520f, -516f, -313f)), vec4<bool>(true, false, false, false), 4294967295u, 3443i, Struct_2(vec2<bool>(true, true), Struct_1(1477f, vec2<bool>(false, false), vec4<f32>(-283f, 458f, 1361f, 131f)), vec4<bool>(false, true, false, false), vec4<u32>(18571u, 50065u, 4294967295u, 52613u), vec4<u32>(0u, 1u, 44084u, 1u)));

var<private> global3: vec3<u32> = vec3<u32>(0u, 1u, 3714u);

var<private> global4: vec4<i32> = vec4<i32>(2147483647i, -1i, -1i, -14667i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec2<f32> {
    var var_0 = select(!global2.a.b, vec2<bool>(all(!(!vec3<bool>(true, global2.e.a.x, false))), !global2.a.b.x), global2.e.a.x);
    let var_1 = vec2<u32>(_wgslsmith_mod_u32(~global3.x, _wgslsmith_mod_u32(select(~10050u, 45123u, global2.b.x), u_input.a)), _wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, 1u) >> (~vec2<u32>(1u, global0.x) % vec2<u32>(32u)), vec2<u32>(reverseBits(global3.x), _wgslsmith_add_u32(1u, 1u) << (u_input.a % 32u))));
    let var_2 = true;
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global2.a.c.x), _wgslsmith_f_op_f32(trunc(1f))) * vec2<f32>(global2.a.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -662f) + 1157f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(527f - 389f), _wgslsmith_div_f32(740f, global2.e.b.c.x), all(vec4<bool>(true, global2.b.x, global2.a.b.x, false)))), global2.a.c.x))));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: vec2<f32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_3());
    let var_1 = arg_0;
    let var_2 = Struct_3(Struct_1(-1178f, !arg_1.c.zz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -170f, -2623f, 849f), arg_1.b.c) * _wgslsmith_f_op_vec4_f32(-arg_1.b.c)))), vec4<bool>(false, !(!arg_1.a.x) | ((global2.b.x || true) == arg_1.c.x), false, true), 1u, global4.x | -(countOneBits(global4.x) | -5378i), global2.e);
    let var_3 = Struct_2(vec2<bool>(var_2.e.a.x, true), var_2.a, !select(global2.e.c, vec4<bool>(var_2.a.b.x, !global2.e.b.b.x, any(global2.e.c), all(global2.b.xw)), arg_1.c), ~min(_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_1.d.x, 4294967295u, 4294967295u, global0.x), vec4<u32>(4294967295u, arg_1.d.x, u_input.a, var_2.c)), arg_1.e), ~vec4<u32>(~max(u_input.a, global2.c), global3.x, _wgslsmith_add_u32(u_input.a, 4294967295u), global2.e.e.x));
    let var_4 = Struct_4(arg_3.x, var_2, _wgslsmith_f_op_vec2_f32(func_3()));
    return vec4<bool>(any(select(!(!var_4.b.b.xy), !(!arg_1.a), arg_1.a)), true, var_4.b.e.c.x, any(var_4.b.b.zx));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(global2.a.c.x)), -793f))), Struct_3(Struct_1(_wgslsmith_f_op_f32(-global2.a.a), vec2<bool>(all(vec2<bool>(false, true)), global2.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1201f, -676f, global2.a.c.x))), func_2(global4.x, global2.e, _wgslsmith_sub_vec3_i32(u_input.b.wyz, abs(vec3<i32>(global4.x, u_input.b.x, -804i))), vec2<f32>(_wgslsmith_div_f32(global2.e.b.c.x, global2.e.b.a), 463f)), global0.x, global4.x, Struct_2(select(global2.b.zy, global2.a.b, global2.e.a.x), Struct_1(_wgslsmith_f_op_f32(-global2.a.a), select(global2.e.b.b, vec2<bool>(false, false), global2.b.wy), vec4<f32>(global2.a.c.x, 791f, -345f, global2.a.c.x)), vec4<bool>(global2.b.x, global2.b.x, true, true), ~countOneBits(global2.e.e), ~select(vec4<u32>(4294967295u, global2.e.d.x, global3.x, global0.x), global2.e.d, true))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.e.b.c.x, -1000f) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.e.b.c.x, 1616f)), global2.e.b.c.wx))), vec2<f32>(global2.a.a, global2.e.b.c.x))));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(115f - 1000f) - global2.e.b.c.x)), global2.a.c.x)), Struct_3(Struct_1(2684f, vec2<bool>(true, u_input.b.x <= global4.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-548f, global2.e.b.c.x, -1525f, global2.e.b.a) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, global2.a.c.x, -638f, 1711f) + vec4<f32>(global2.a.a, global2.e.b.c.x, 1000f, global2.a.a)))), select(vec4<bool>(global2.a.b.x, true, true, true), global2.e.c, vec4<bool>(var_0.b.b.x, global2.a.b.x, var_0.b.e.a.x, !global2.b.x)), _wgslsmith_div_u32(global1.x, _wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, global3.x), global1.x)), global4.x, Struct_2(func_2(countOneBits(u_input.b.x), Struct_2(vec2<bool>(false, false), var_0.b.a, vec4<bool>(false, false, true, global2.a.b.x), vec4<u32>(global1.x, global3.x, 53488u, 1u), vec4<u32>(4294967295u, 4294967295u, 0u, global2.e.e.x)), vec3<i32>(global4.x, 1i, global2.d), global2.a.c.zz).wz, Struct_1(-510f, select(global2.a.b, vec2<bool>(false, true), vec2<bool>(global2.e.c.x, true)), _wgslsmith_f_op_vec4_f32(step(global2.a.c, vec4<f32>(454f, var_0.b.a.c.x, 774f, 676f)))), !global2.b, abs(global2.e.d), vec4<u32>(_wgslsmith_dot_vec2_u32(var_0.b.e.e.yy, global3.zz), var_0.b.c & var_0.b.e.d.x, global0.x, global3.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1003f, _wgslsmith_f_op_f32(f32(-1f) * -301f)) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-643f))), 1098f)));
    var var_2 = -123f;
    let var_3 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(global3.x, 24777u, 4294967295u)), abs(var_0.b.e.d.zwz)), ~(~global0.x), ~4294967295u), ~max(~var_0.b.e.e.x, global0.x), global3.x, _wgslsmith_dot_vec3_u32((vec3<u32>(0u, 0u, global1.x) << (vec3<u32>(4294967295u, 95646u, u_input.a) % vec3<u32>(32u))) | ~var_1.b.e.d.zxx, var_0.b.e.d.ywx)), _wgslsmith_mod_vec4_u32(select(countOneBits(vec4<u32>(16205u, var_0.b.c, 107155u, 26281u) | vec4<u32>(0u, 61207u, global0.x, u_input.a)), firstTrailingBit(var_0.b.e.e), func_2(var_0.b.d, var_1.b.e, u_input.b.xzx | u_input.b.ywz, vec2<f32>(-202f, global2.e.b.c.x))), ~(global2.e.e >> (var_1.b.e.d % vec4<u32>(32u)))));
    var var_4 = Struct_3(Struct_1(-108f, !global2.e.a, var_1.b.e.b.c), vec4<bool>(any(select(vec2<bool>(false, false), vec2<bool>(var_1.b.a.b.x, global2.e.c.x), vec2<bool>(var_1.b.a.b.x, var_1.b.e.b.b.x))), 1i != var_1.b.d, !any(vec3<bool>(var_0.b.b.x, var_0.b.b.x, false)), !any(vec4<bool>(false, var_0.b.b.x, true, false))), ~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.b.e.d.x, var_0.b.e.e.x, global3.x, 0u) & vec4<u32>(9063u, 5491u, global3.x, global1.x), var_0.b.e.d, var_0.b.e.d), firstTrailingBit(var_1.b.e.e)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.d, 7677i, _wgslsmith_add_i32(global4.x, -2147483647i), var_0.b.d) & _wgslsmith_sub_vec4_i32(max(u_input.b, u_input.b), vec4<i32>(var_0.b.d, 13048i, global4.x, var_1.b.d)), _wgslsmith_mult_vec4_i32(-(u_input.b ^ vec4<i32>(u_input.b.x, var_1.b.d, -32887i, u_input.b.x)), -(u_input.b << (vec4<u32>(global2.c, global2.e.e.x, 15824u, 0u) % vec4<u32>(32u))))), global2.e);
    return var_0.b.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_4(1027f, Struct_3(Struct_1(_wgslsmith_div_f32(var_0.b.a, 2143f), !(!vec2<bool>(var_0.a.x, true)), global2.e.b.c), !global2.e.c, _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a, global2.c), 0u) | 0u, -2147483647i, Struct_2(select(vec2<bool>(global2.b.x, false), func_2(35643i, Struct_2(vec2<bool>(var_0.a.x, global2.b.x), Struct_1(var_0.b.a, vec2<bool>(false, true), vec4<f32>(-902f, -270f, 172f, 527f)), global2.e.c, global2.e.e, global2.e.d), u_input.b.yxy, var_0.b.c.wx).yx, vec2<bool>(global2.a.b.x, global2.b.x)), var_0.b, vec4<bool>(true, true, true, var_0.b.b.x), var_0.e, abs(var_0.d))), _wgslsmith_f_op_vec2_f32(-var_0.b.c.yz));
    var var_2 = Struct_3(var_1.b.a, func_2(-u_input.b.x >> (~global2.e.e.x % 32u), global2.e, ~u_input.b.xxy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.x, var_0.b.a))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(var_0.b.c.xy)))))), ~firstTrailingBit(~reverseBits(0u)), max(firstTrailingBit((global2.d & -1i) ^ 11507i), ~(-u_input.b.x)), Struct_2(vec2<bool>(var_0.a.x, true), Struct_1(_wgslsmith_f_op_f32(1716f - -824f), vec2<bool>(var_0.a.x, var_1.a < var_0.b.a), _wgslsmith_f_op_vec4_f32(sign(global2.a.c))), !(!(!var_1.b.b)), countOneBits(vec4<u32>(~var_0.d.x, 40512u, 4294967295u >> (var_1.b.e.d.x % 32u), 4294967295u)), vec4<u32>(max(var_0.d.x | 1u, ~1u), ~(~global1.x), ~global0.x, var_1.b.c)));
    global0 = vec2<u32>(~1u, _wgslsmith_sub_u32(~global3.x, ~29734u));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)));
    let var_4 = Struct_3(var_0.b, select(var_2.b, select(vec4<bool>(true, var_2.a.b.x, !var_1.b.e.b.b.x, global2.a.b.x && var_2.b.x), var_2.e.c, var_1.b.e.a.x), vec4<bool>(_wgslsmith_f_op_f32(-var_3) < 1f, true, !(!var_0.c.x), false)), ~4294967295u, -22654i, Struct_2(vec2<bool>(all(global2.a.b), all(var_1.b.b)), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-922f, 169f))), vec2<bool>(global2.e.c.x | var_2.e.a.x, true), global2.a.c), var_2.b, _wgslsmith_sub_vec4_u32(select(global2.e.e, _wgslsmith_mult_vec4_u32(var_1.b.e.d, var_1.b.e.d), func_1().c), ~vec4<u32>(global0.x, 4294967295u, var_0.e.x, 1u)), var_0.e));
    let var_5 = var_2.a.c.wx;
    var_0 = Struct_2(vec2<bool>(func_1().b.b.x, !var_1.b.e.b.b.x), Struct_1(_wgslsmith_f_op_f32(min(var_0.b.a, _wgslsmith_f_op_f32(-171f - 452f))), var_4.e.c.yy, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-167f, var_4.a.c.x)), _wgslsmith_f_op_vec2_f32(func_3()).x, _wgslsmith_f_op_f32(-var_0.b.a), var_5.x) * global2.e.b.c)), var_2.e.c, var_2.e.e, max(vec4<u32>(abs(~global1.x), ~var_0.e.x, var_1.b.e.e.x, ~(0u >> (global3.x % 32u))), vec4<u32>(func_1().e.x, (var_0.d.x >> (24031u % 32u)) & reverseBits(global3.x), global2.e.d.x, 1u)));
    let var_6 = vec3<i32>((abs(countOneBits(-1i)) ^ max(u_input.b.x, 2585i)) & global2.d, 8443i, var_1.b.d);
    let x = u_input.a;
    s_output = StorageBuffer(-32449i, -_wgslsmith_mult_vec3_i32(~var_6, firstTrailingBit(vec3<i32>(var_6.x, var_1.b.d, -1i))), select(_wgslsmith_add_vec4_u32(firstTrailingBit(var_0.d ^ vec4<u32>(var_0.d.x, 6199u, 27081u, var_1.b.c)), vec4<u32>(0u, countOneBits(12762u), global3.x, func_1().e.x)), firstTrailingBit(var_2.e.e), func_1().c), var_1.b.d, _wgslsmith_mult_i32(26296i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, _wgslsmith_div_i32(-1i, 56806i), global4.x, global2.d), firstTrailingBit(abs(u_input.b)))));
}

