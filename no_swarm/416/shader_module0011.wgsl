struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 3>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3) -> vec4<u32> {
    global0 = array<vec2<bool>, 3>();
    return vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 1u), vec2<u32>(1u, 1u)), 0u, 1u) << (1u % 32u), ~(~_wgslsmith_mod_u32(~4294967295u, firstTrailingBit(0u))), 26402u & _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(4294967295u, 0u, 2316u, 39673u), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(69183u, 43495u, 4294967295u, 17584u), vec4<u32>(16738u, 29630u, 41050u, 76871u), vec4<u32>(1u, 0u, 165158u, 0u)) ^ ~vec4<u32>(1u, 1u, 21981u, 4294967295u)), abs(_wgslsmith_clamp_u32(max(4294967295u, 4294967295u >> (0u % 32u)), _wgslsmith_mod_u32(67898u, 3888u), 20617u)));
}

fn func_2() -> vec3<u32> {
    global0 = array<vec2<bool>, 3>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1207f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1214f)) - _wgslsmith_f_op_f32(f32(-1f) * -1392f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1183f, -1774f)), -784f);
    global0 = array<vec2<bool>, 3>();
    let var_1 = _wgslsmith_sub_i32(firstTrailingBit(min(4000i, 19709i)), u_input.a);
    let var_2 = abs(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(1u, 1u), _wgslsmith_mod_u32(35916u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(109973u, 33579u, 1u), vec3<u32>(1u, 1u, 6575u)), ~72334u), vec4<u32>(4294967295u, ~42275u, ~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 4294967295u, 3254u), vec4<u32>(4294967295u, 0u, 74262u, 4294967295u))), ~vec4<u32>(1u, 1u, 1u, 1u)), func_3(Struct_3(Struct_1(-373f), 0i ^ var_1, vec3<f32>(var_0.x, var_0.x, var_0.x), 1i))));
    return ~(max(~(~var_2.zww), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 4294967295u, 14405u), vec3<u32>(51933u, var_2.x, 0u), var_2.zzz) << ((var_2.yyy | var_2.xxx) % vec3<u32>(32u))) | ~(~var_2.ywy));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_3 {
    global0 = array<vec2<bool>, 3>();
    let var_0 = select(-abs(-2147483647i), u_input.a, ~(~21500u) > countOneBits(arg_2.c));
    var var_1 = arg_2.b.x;
    var var_2 = Struct_3(Struct_1(-1012f), reverseBits(firstTrailingBit(_wgslsmith_dot_vec2_i32(firstTrailingBit(arg_1.zz), vec2<i32>(var_0, 25165i)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_2.a, arg_2.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(773f)), arg_2.a), -1000f) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, arg_2.a, 239f))))), arg_1.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-767f, 119f))))))), var_2.c.yx));
    return Struct_3(var_2.a, select(_wgslsmith_div_i32(var_2.d, -arg_1.x) | ~2147483647i, arg_1.x, ~func_2().x >= _wgslsmith_div_u32(func_3(Struct_3(Struct_1(arg_2.a), -15131i, var_2.c, -74228i)).x, _wgslsmith_mult_u32(arg_0.x, arg_0.x))), var_2.c, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(43966i, 2147483647i), -(vec2<i32>(arg_1.x, u_input.a) | arg_1.xx)), _wgslsmith_sub_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, -44078i, var_0), vec4<i32>(-2147483647i, -5723i, var_0, var_2.b)), countOneBits(i32(-1i) * -34430i)), -2147483647i));
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-302f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, -1045f)) * _wgslsmith_f_op_f32(834f + -1702f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -1424f)))), true)) - _wgslsmith_div_f32(-312f, 936f));
    var var_1 = 1u;
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-139f - 637f)), ~_wgslsmith_sub_i32(23064i, _wgslsmith_mod_i32(2759i, u_input.a) & _wgslsmith_mod_i32(u_input.a, 49255i)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-698f + -429f), _wgslsmith_f_op_f32(floor(-1093f)), _wgslsmith_f_op_f32(f32(-1f) * -471f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1048f, 799f, -2304f))))))), ~0i ^ u_input.a);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -742f) - -997f)));
    var_2 = func_4(max(func_2(), vec3<u32>(1u, 1u, 1u)), ~(vec3<i32>(var_2.d, ~(-9719i), _wgslsmith_clamp_i32(-5750i, var_2.b, 38026i)) | vec3<i32>(20779i, 0i, var_2.d)), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.x) + _wgslsmith_f_op_f32(select(var_2.c.x, _wgslsmith_f_op_f32(f32(-1f) * -335f), true))), global0[_wgslsmith_index_u32(~0u, 3u)], ~_wgslsmith_div_u32(abs(86103u), _wgslsmith_dot_vec4_u32(vec4<u32>(14711u, 4294967295u, 13460u, 0u), vec4<u32>(1u, 0u, 28542u, 4294967295u)))));
    return ~(-40003i);
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_3) -> Struct_1 {
    var var_0 = select(-9178i, -_wgslsmith_div_i32(~(-4514i), _wgslsmith_div_i32(5493i | u_input.a, 2225i)), all(global0[_wgslsmith_index_u32(arg_0, 3u)]));
    var_0 = select(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, ~1i, ~(~2147483647i), max(~arg_3.d, _wgslsmith_sub_i32(u_input.a, arg_3.b))), vec4<i32>(~(arg_3.b << (arg_0 % 32u)), ~(-45601i) << (1u % 32u), 0i, -79511i)), arg_3.b, arg_1);
    global0 = array<vec2<bool>, 3>();
    var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>((i32(-1i) * -2147483647i) >> (arg_0 % 32u), max(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_3.d, -2147483647i, u_input.a, u_input.a), vec4<i32>(arg_3.b, arg_3.b, 0i, arg_3.d)), vec4<i32>(u_input.a, arg_3.b, u_input.a, u_input.a)), ~(arg_3.b >> (4294967295u % 32u))), -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, -arg_3.b, -arg_3.d), vec4<i32>(19138i, countOneBits(u_input.a), ~2147483647i, ~25017i))), ~reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, arg_3.d, -1i, 1i), vec4<i32>(u_input.a, -54545i, 48785i, 2147483647i) >> (vec4<u32>(1u, arg_0, 14860u, 1u) % vec4<u32>(32u)))));
    return Struct_1(arg_3.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 3>();
    let var_0 = -380f;
    global0 = array<vec2<bool>, 3>();
    let var_1 = u_input.a;
    let var_2 = func_5(~(18641u << (countOneBits(_wgslsmith_sub_u32(0u, 0u)) % 32u)), false, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0)), var_0)), Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), ~func_1() & ~var_1, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-func_4(vec3<u32>(32036u, 0u, 4294967295u), vec3<i32>(-49757i, 1i, 6284i), Struct_2(176f, vec2<bool>(true, true), 4294967295u)).c))), 2147483647i));
    let var_3 = _wgslsmith_sub_vec3_i32(select(vec3<i32>(u_input.a, 2147483647i, _wgslsmith_clamp_i32(-2147483647i, 12985i, 2147483647i)) | abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(4190i, var_1, 14950i), vec3<i32>(-2147483647i, 151i, 1i), vec3<i32>(36539i, -7374i, -2208i))), _wgslsmith_sub_vec3_i32(vec3<i32>(~(-2147483647i), 1i, countOneBits(-42337i)), abs(vec3<i32>(u_input.a, -35860i, -14079i) ^ vec3<i32>(u_input.a, 6131i, -30334i))), vec3<bool>(true, true, true)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(var_1, _wgslsmith_div_i32(u_input.a, -2147483647i), -8703i), vec3<i32>(1i, func_4(vec3<u32>(1u, 46395u, 2345u), vec3<i32>(-28519i, u_input.a, u_input.a), Struct_2(-316f, global0[_wgslsmith_index_u32(30640u, 3u)], 0u)).d, u_input.a)));
    global0 = array<vec2<bool>, 3>();
    var var_4 = func_4(vec3<u32>(1u, 1u, 1u), vec3<i32>(~_wgslsmith_mult_i32(~var_3.x, func_1()), -67324i, i32(-1i) * -_wgslsmith_clamp_i32(1i, var_1, u_input.a)), Struct_2(1147f, select(vec2<bool>(true, any(global0[_wgslsmith_index_u32(4294967295u, 3u)])), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(32663u, 4294967295u, 23036u), vec3<u32>(1u, 0u, 39688u)), 3u)], global0[_wgslsmith_index_u32(~80523u, 3u)]), func_3(Struct_3(Struct_1(888f), var_3.x << (15796u % 32u), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a, var_0, var_0) + vec3<f32>(-1279f, var_0, var_2.a)), _wgslsmith_mult_i32(var_3.x, u_input.a))).x));
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_mult_vec4_u32(~(~vec4<u32>(0u, 20623u, 4294967295u, 64308u)), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(1u, 4294967295u, 9024u, 35675u)), _wgslsmith_clamp_vec4_u32(func_3(Struct_3(var_2, -6330i, var_4.c, var_3.x)), vec4<u32>(11315u, 34508u, 4294967295u, 18031u), ~vec4<u32>(5299u, 43839u, 22122u, 4294967295u)))), 21495i, ~u_input.a, _wgslsmith_mult_u32(_wgslsmith_mult_u32(~func_3(Struct_3(Struct_1(888f), -2147483647i, var_4.c, -2147483647i)).x, 24331u), func_2().x ^ ~1u));
}

