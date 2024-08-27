struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: i32,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1637f, 3511u, 4294967295u, vec2<i32>(-10010i, 65898i));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> i32 {
    var var_0 = select(vec3<i32>(countOneBits(reverseBits(1i)), _wgslsmith_clamp_i32(-15536i, countOneBits(-1i), u_input.c), _wgslsmith_clamp_i32(firstTrailingBit(36123i ^ global0.d.x), abs(u_input.a.x), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.a.xyw, u_input.a.yzy), _wgslsmith_add_vec3_i32(vec3<i32>(global0.d.x, -28752i, 1i), vec3<i32>(-64469i, -1i, -10611i))))), u_input.a.yxw, false);
    let var_1 = 1468f;
    let var_2 = ~global0.b;
    let var_3 = Struct_3(true);
    var_0 = select(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(u_input.c, global0.d.x, 826i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, 1i, u_input.a.x), u_input.a), reverseBits(var_0.x), -5501i), vec4<i32>(countOneBits(1i), 1i, firstLeadingBit(u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(10461i, 0i, u_input.c, global0.d.x), vec4<i32>(global0.d.x, global0.d.x, global0.d.x, u_input.c)))), -4993i, i32(-1i) * -36529i), firstLeadingBit(u_input.a.yzx), !select(!select(vec3<bool>(var_3.a, true, var_3.a), vec3<bool>(false, true, var_3.a), vec3<bool>(var_3.a, true, true)), !(!vec3<bool>(var_3.a, var_3.a, true)), var_3.a));
    return max(countOneBits(1i), 1i);
}

fn func_2(arg_0: u32) -> vec3<i32> {
    let var_0 = Struct_2(-558f, 35802u, u_input.b.x, reverseBits(-vec2<i32>(func_3(), u_input.c >> (25699u % 32u))));
    var var_1 = u_input.c;
    let var_2 = 0i;
    var_1 = abs(_wgslsmith_clamp_i32(-2147483647i, -u_input.c, min(global0.d.x, ~(~53402i))));
    let var_3 = Struct_3(!(2147483647i == var_0.d.x));
    return vec3<i32>(var_0.d.x, 7271i, global0.d.x);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: Struct_5, arg_3: Struct_4) -> vec3<u32> {
    let var_0 = true;
    global0 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1038f))))), ~arg_2.b.x, u_input.b.x, vec2<i32>(global0.d.x, select(39196i, ~_wgslsmith_sub_i32(2919i, arg_0.x), any(select(vec4<bool>(true, var_0, false, false), vec4<bool>(true, false, var_0, true), var_0)))));
    let var_1 = vec2<i32>(0i, u_input.c);
    global0 = Struct_2(-1000f, abs(arg_1.a), global0.c, min(global0.d, -select(global0.d, arg_0.zz, select(var_0, false, false))));
    let var_2 = Struct_5(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(arg_2.a, ~arg_2.b), vec3<u32>(global0.c, 66441u, global0.c) & vec3<u32>(arg_2.a.x, 26684u, arg_2.a.x)), _wgslsmith_sub_vec3_u32(~abs(arg_2.b), u_input.b), ~select(~vec3<u32>(35408u, 4294967295u, 100801u), arg_2.a, false)), vec3<u32>(global0.c, ~(_wgslsmith_mult_u32(25250u, arg_1.a) | ~arg_1.a), u_input.b.x));
    return arg_2.a;
}

fn func_1(arg_0: u32, arg_1: Struct_5, arg_2: vec2<f32>, arg_3: i32) -> u32 {
    global0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-534f, arg_2.x)), _wgslsmith_f_op_f32(step(global0.a, global0.a))))), abs(52835u), ~firstTrailingBit(30077u), global0.d << (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)));
    let var_0 = Struct_5(abs(vec3<u32>(1u, ~34049u, global0.c)) | _wgslsmith_add_vec3_u32(countOneBits(~u_input.b), u_input.b), func_4(func_2(global0.c) ^ countOneBits(_wgslsmith_mod_vec3_i32(u_input.a.xxw, u_input.a.yyy)), Struct_4(~33501u), arg_1, Struct_4(2474u)));
    global0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a))), 12100u, _wgslsmith_sub_u32(func_4(vec3<i32>(-23152i, _wgslsmith_sub_i32(arg_3, 1i), ~6664i), Struct_4(61401u), var_0, Struct_4(arg_0)).x, arg_1.b.x), u_input.a.xx);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.a, arg_2.x)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.a, arg_2.x), vec2<f32>(-1691f, arg_2.x)))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-909f - global0.a))), _wgslsmith_f_op_f32(f32(-1f) * -373f))), _wgslsmith_f_op_f32(-global0.a), -1000f, 2237f), -2147483647i, vec3<bool>(any(vec3<bool>(true, true, arg_3 < -5292i)), global0.d.x >= _wgslsmith_mod_i32(9164i, 1i), !all(vec3<bool>(true, true, true))), ~select(~firstTrailingBit(vec4<u32>(0u, 20151u, arg_1.a.x, u_input.b.x)), abs(vec4<u32>(38432u, var_0.b.x, 1u, u_input.b.x) & vec4<u32>(var_0.a.x, global0.c, u_input.b.x, 0u)), !(70220u < arg_1.b.x)));
    let var_2 = i32(-1i) * -global0.d.x;
    return _wgslsmith_add_u32(0u, select(global0.b, reverseBits(_wgslsmith_mult_u32(1u, 4294967295u)), any(vec4<bool>(var_1.d.x, false, var_1.d.x, !var_1.d.x))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3) -> Struct_2 {
    let var_0 = Struct_5(~(vec3<u32>(~global0.c, max(1u, 1u), ~arg_0.e.x) >> (~arg_0.e.wyx % vec3<u32>(32u))), ~(~(~abs(vec3<u32>(59246u, u_input.b.x, 4294967295u)))));
    global0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.b.x)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(arg_0.a.x)))))), var_0.b.x, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(arg_0.e & arg_0.e, _wgslsmith_mod_vec4_u32(arg_0.e, vec4<u32>(1u, 26983u, arg_0.e.x, global0.c))), ~reverseBits(vec4<u32>(var_0.b.x, global0.b, 30213u, 8443u)), _wgslsmith_mult_vec4_u32(min(arg_0.e, arg_0.e), vec4<u32>(u_input.b.x, arg_0.e.x, 81821u, 0u))), arg_0.e), abs(vec2<i32>(_wgslsmith_mod_i32(u_input.c, arg_0.c), -arg_0.c) << (vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_0.e.x), u_input.b.xx), _wgslsmith_mod_u32(0u, var_0.a.x)) % vec2<u32>(32u))));
    global0 = Struct_2(global0.a, var_0.b.x, 109629u << (max(max(~global0.b, abs(0u)), _wgslsmith_div_u32(1u, u_input.b.x)) % 32u), -u_input.a.zy << (vec2<u32>(func_4(select(vec3<i32>(arg_0.c, arg_0.c, 44051i), vec3<i32>(u_input.c, -32170i, global0.d.x), vec3<bool>(true, false, true)), Struct_4(global0.b), Struct_5(var_0.a, vec3<u32>(u_input.b.x, 0u, u_input.b.x)), Struct_4(var_0.b.x)).x, u_input.b.x) % vec2<u32>(32u)));
    global0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(155f - -729f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1259f))), 4294967295u, _wgslsmith_div_u32(_wgslsmith_mult_u32(0u, ~global0.c | abs(9850u)), func_4(vec3<i32>(-54171i ^ arg_0.c, _wgslsmith_sub_i32(0i, -2147483647i), 18242i), Struct_4(0u), Struct_5(vec3<u32>(4294967295u, u_input.b.x, 75426u), vec3<u32>(27099u, arg_0.e.x, 4294967295u)), Struct_4(_wgslsmith_div_u32(105578u, 4294967295u))).x), u_input.a.zy);
    global0 = Struct_2(_wgslsmith_f_op_f32(step(1352f, global0.a)), global0.c, arg_0.e.x, vec2<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(-u_input.a.zz, _wgslsmith_clamp_vec2_i32(u_input.a.xx << (arg_0.e.xw % vec2<u32>(32u)), abs(u_input.a.zy), max(u_input.a.xy, vec2<i32>(arg_0.c, arg_0.c))))));
    return Struct_2(_wgslsmith_f_op_f32(1052f * -1378f), ~_wgslsmith_clamp_u32(abs(0u) << (1u % 32u), global0.c, ~var_0.a.x ^ 6847u), (_wgslsmith_dot_vec4_u32(firstLeadingBit(arg_0.e), _wgslsmith_add_vec4_u32(arg_0.e, vec4<u32>(22891u, 1u, 35807u, var_0.a.x))) ^ global0.c) ^ ~1u, vec2<i32>(1i, func_3()));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * global0.a), 1138f)))))), ~(~2280u | select(_wgslsmith_add_u32(38265u, u_input.b.x), 4294967295u, false)), ~u_input.b.x, ~u_input.a.wy);
    let var_0 = _wgslsmith_sub_u32(max(~reverseBits(63496u) ^ u_input.b.x, _wgslsmith_dot_vec3_u32(abs(abs(vec3<u32>(13266u, 15123u, global0.b))), select(u_input.b, vec3<u32>(u_input.b.x, u_input.b.x, 27687u), vec3<bool>(true, true, true)))), 4294967295u);
    global0 = func_5(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(1000f, global0.a), _wgslsmith_f_op_f32(f32(-1f) * -706f))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, 1038f, 948f, global0.a)), _wgslsmith_div_vec4_f32(vec4<f32>(133f, 1263f, global0.a, global0.a), vec4<f32>(global0.a, global0.a, 1985f, 792f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1074f, -1111f, global0.a, -258f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-867f, global0.a, global0.a, 1000f)))), ~global0.d.x, vec3<bool>(true, !select(true, false, true), false), vec4<u32>(0u, _wgslsmith_add_u32(func_1(6265u, Struct_5(u_input.b, u_input.b), vec2<f32>(-521f, global0.a), -1i), u_input.b.x), global0.b, ~abs(98904u))), Struct_3(any(vec4<bool>(true, true, true, true))), Struct_3(!all(vec4<bool>(false, true, false, false))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -231f), _wgslsmith_f_op_f32(-global0.a)));
    var var_2 = global0.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.x), global0.d.x);
}

