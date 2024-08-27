struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec4<i32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -461f;

var<private> global1: i32 = 1i;

var<private> global2: Struct_4 = Struct_4(vec4<f32>(753f, 1796f, -791f, -878f), Struct_1(vec3<i32>(-21871i, -13748i, i32(-2147483648))));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: u32) -> f32 {
    global1 = ~(~(i32(-1i) * -(i32(-1i) * -8902i)));
    var var_0 = u_input.b;
    var_0 = ~arg_2;
    global1 = i32(-1i) * -u_input.e.x;
    global2 = Struct_4(global2.a, global2.b);
    return -901f;
}

fn func_3(arg_0: u32, arg_1: vec3<f32>) -> vec4<i32> {
    var var_0 = u_input.d;
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(-global2.a.x), global2.a.x, -543f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global2.a.x + -627f), _wgslsmith_f_op_f32(ceil(global2.a.x)), global2.a.x, 629f))), global2.b);
    var_0 = _wgslsmith_mult_vec4_u32(~(~u_input.d << (vec4<u32>(arg_0, countOneBits(arg_0), ~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 1u, var_0.x), vec3<u32>(1u, 4294967295u, 60557u))) % vec4<u32>(32u))), ~vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(0u, 4294967295u), var_0.x), arg_0, u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, u_input.a.x), vec2<u32>(var_0.x, 17616u))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-arg_1))) + global2.a.xzw));
    var_0 = u_input.d;
    return ~(~firstTrailingBit(u_input.e));
}

fn func_1(arg_0: vec4<bool>) -> i32 {
    var var_0 = global2.a.yyw;
    let var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<bool>(false, true, true), _wgslsmith_div_f32(-873f, 234f), ~u_input.d.x)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a.x, global2.a.x))), var_0.x, -1337f), global2.b, firstTrailingBit(func_3(~u_input.d.x, _wgslsmith_f_op_vec3_f32(ceil(global2.a.xyz)))), _wgslsmith_mod_u32(~4294967295u, abs(u_input.a.x)) ^ ~u_input.a.x);
    let var_2 = var_1.b;
    let var_3 = select(select(vec2<bool>(true, arg_0.x), select(arg_0.xy, !select(vec2<bool>(true, arg_0.x), vec2<bool>(false, true), false), vec2<bool>(true, 0i > u_input.e.x)), select(vec2<bool>(var_0.x == 1000f, arg_0.x), select(vec2<bool>(true, arg_0.x), arg_0.wy, arg_0.yy), vec2<bool>(all(arg_0), false))), arg_0.wz, vec2<bool>(arg_0.x, 4294967295u >= _wgslsmith_dot_vec4_u32(u_input.a, abs(vec4<u32>(0u, 0u, 1u, u_input.d.x)))));
    global0 = 1275f;
    return ~var_2.a.x;
}

fn func_4(arg_0: i32, arg_1: i32) -> Struct_2 {
    global2 = Struct_4(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(109f - -980f), 899f, 996f, _wgslsmith_f_op_f32(max(1000f, -966f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.a.x, 2477f, global2.a.x, 753f)))), ~u_input.d.x == abs(4294967295u))))), global2.b);
    let var_0 = _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(reverseBits(u_input.a.yz) << (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u)), max(~u_input.d.xx, vec2<u32>(4294967295u, u_input.d.x))) | vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(48296u, u_input.d.x), vec2<u32>(u_input.a.x, 18212u)), u_input.d.x), u_input.a.wy);
    let var_1 = 14835i;
    let var_2 = Struct_1(-_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 2147483647i, -68183i), vec3<i32>(var_1, var_1, u_input.c.x) ^ global2.b.a), vec3<i32>(-1i) * -u_input.e.zzz));
    global1 = ~(-24901i);
    return Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(167f, _wgslsmith_f_op_f32(716f - 453f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.a.x, 1000f, true)) - 749f), _wgslsmith_f_op_f32(-global2.a.x)) * _wgslsmith_f_op_vec4_f32(global2.a - _wgslsmith_f_op_vec4_f32(global2.a + global2.a))), Struct_1(vec3<i32>(global2.b.a.x, 47694i, -1i)), vec4<i32>(select(global2.b.a.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(13211i, -9713i, -1i), vec3<i32>(arg_1, 1i, -2147483647i)), ~(-139448i) <= _wgslsmith_div_i32(-2147483647i, arg_1)), 70199i, global2.b.a.x, _wgslsmith_clamp_i32(global2.b.a.x, 2147483647i, 1i & firstLeadingBit(arg_1))), ~var_0.x);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    let var_0 = !select(!select(vec3<bool>(true, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), arg_1.d != 1u), select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(false, true, true)), true), select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, false, true), all(vec3<bool>(true, false, true))), vec3<bool>(true, true, true), vec3<bool>(false, all(vec2<bool>(true, false)), false)));
    global2 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.a.x, global2.a.x, 194f, global2.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, -383f, 688f, arg_1.a.x) - vec4<f32>(-1000f, arg_1.a.x, global2.a.x, -423f)))))), func_4(_wgslsmith_mult_i32(~(0i >> (u_input.b % 32u)), 1i ^ arg_1.b.a.x), 0i).b);
    let var_1 = arg_1.b.a.x & 0i;
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a.x, arg_1.a.x) - 125f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.a.x)) * _wgslsmith_f_op_f32(arg_1.a.x - -1470f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.a.x, 285f))), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(arg_1.a.x + arg_1.a.x)))))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.a.x, global2.a.x))) - -673f), _wgslsmith_f_op_f32(f32(-1f) * -333f), -698f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -670f), -954f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-716f, -967f, global2.a.x, arg_1.a.x))) - vec4<f32>(_wgslsmith_f_op_f32(floor(-625f)), 1000f, _wgslsmith_div_f32(1045f, global2.a.x), _wgslsmith_div_f32(-1329f, 822f))) * vec4<f32>(448f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-466f, arg_1.a.x, var_0.x))), arg_1.a.x)));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(955f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(func_5(global2.b, func_4(func_1(select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), true), true)), _wgslsmith_dot_vec3_i32(countOneBits(abs(u_input.e.xzy)), vec3<i32>(-5814i, 8005i, global2.b.a.x | global2.b.a.x)))));
    global1 = global2.b.a.x;
    global1 = _wgslsmith_mult_i32(i32(-1i) * -53741i, -8934i);
    let var_0 = global2.b.a.x;
    var var_1 = Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(450f * global2.a.x), _wgslsmith_f_op_f32(-327f * 2530f), global2.a.x, _wgslsmith_f_op_f32(global2.a.x + global2.a.x))), vec4<f32>(_wgslsmith_f_op_f32(func_2(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), _wgslsmith_f_op_f32(abs(global2.a.x)), u_input.b)), global2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1424f), 542f)), global2.b);
    let var_2 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, global2.a.x, global2.a.x, 1162f)), func_4(u_input.c.x << (0u % 32u), u_input.e.x).b, select(vec4<i32>(global2.b.a.x | -2147483647i, var_1.b.a.x, 2147483647i, u_input.e.x), vec4<i32>(-14231i, _wgslsmith_sub_i32(-39288i, u_input.c.x), global2.b.a.x, global2.b.a.x), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true), false)), 1u), func_4(firstLeadingBit(var_1.b.a.x) | _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 2147483647i), var_1.b.a.zz), global2.b.a.x), Struct_2(func_4(-33115i, firstLeadingBit(2147483647i)).a, Struct_1(max(global2.b.a, max(var_1.b.a, vec3<i32>(36751i, -2147483647i, var_1.b.a.x)))), abs(u_input.e), _wgslsmith_clamp_u32(~u_input.d.x & _wgslsmith_div_u32(25385u, u_input.a.x), 4294967295u, u_input.a.x)), func_4(global2.b.a.x | -12915i, var_1.b.a.x));
    var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(func_2(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(min(-444f, 1461f)), 4294967295u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(940f, var_1.a.x)), _wgslsmith_f_op_f32(trunc(var_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)), _wgslsmith_f_op_f32(global2.a.x - global2.a.x)), var_2.d.a)), Struct_1(firstLeadingBit(countOneBits(reverseBits(global2.b.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(765f, 433f), var_2.b.a.wz)) - var_2.d.a.ww), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2.d.a.x, 926f))))), true)) * _wgslsmith_f_op_vec2_f32(var_2.b.a.zx * vec2<f32>(-242f, _wgslsmith_f_op_f32(f32(-1f) * -157f)))), ~u_input.d.wyz);
}

