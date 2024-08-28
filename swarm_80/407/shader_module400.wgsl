struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<u32>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32) -> vec2<u32> {
    let var_0 = Struct_3(!vec2<bool>(select(true, any(vec3<bool>(false, true, false)), true), false));
    let var_1 = _wgslsmith_dot_vec3_i32(reverseBits(u_input.e.wwz) ^ countOneBits(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global0.a.x, global0.a.x), vec3<i32>(u_input.b, 41101i, 0i)), ~u_input.b, _wgslsmith_clamp_i32(0i, 0i, -1i))), _wgslsmith_sub_vec3_i32(u_input.e.zxx, (-vec3<i32>(u_input.e.x, 6567i, global0.a.x) >> (u_input.d.wxy % vec3<u32>(32u))) ^ -(~global0.a)));
    global0 = Struct_1(u_input.e.zwx);
    global1 = u_input.d;
    global1 = u_input.d;
    return _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(u_input.d.xx, _wgslsmith_add_vec2_u32(global1.zx, u_input.c.zz)), (u_input.c.yz & vec2<u32>(68619u, 0u)) | u_input.d.wx), abs(u_input.c.zz)) | vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 23765u, ~global1.x, u_input.d.x), abs(~vec4<u32>(1u, u_input.a, global1.x, 4294967295u))), 84284u);
}

fn func_2(arg_0: vec4<i32>, arg_1: f32) -> vec4<f32> {
    let var_0 = _wgslsmith_div_vec2_u32(~(~u_input.c.zz), _wgslsmith_mult_vec2_u32(reverseBits(~vec2<u32>(4294967295u, 0u)), ~(vec2<u32>(0u, 65420u) & u_input.c.xy))) << ((func_3(_wgslsmith_f_op_f32(trunc(arg_1))) << (countOneBits(vec2<u32>(~u_input.a, 1u)) % vec2<u32>(32u))) % vec2<u32>(32u));
    let var_1 = Struct_3(vec2<bool>(true, true));
    let var_2 = arg_0.zw;
    var var_3 = ~(~countOneBits(_wgslsmith_add_vec3_i32(~vec3<i32>(arg_0.x, 0i, 2147483647i), ~vec3<i32>(global0.a.x, arg_0.x, 37655i))));
    let var_4 = var_1;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(arg_1 + arg_1), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(f32(-1f) * -586f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_1, arg_1), _wgslsmith_f_op_f32(f32(-1f) * -1879f), _wgslsmith_f_op_f32(774f - arg_1), _wgslsmith_f_op_f32(-137f * arg_1)) - vec4<f32>(1f, _wgslsmith_f_op_f32(select(arg_1, arg_1, var_4.a.x)), arg_1, _wgslsmith_f_op_f32(round(568f))))));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(2147483647i, 1i), arg_0.a.x), u_input.b, min(u_input.b, -17535i), abs(_wgslsmith_mult_i32(u_input.e.x, 30085i))), -169f)));
    let var_1 = _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.c.x >> (1u % 32u), global1.x) ^ 1u, 55985u);
    var var_2 = vec3<i32>(47841i, ((firstLeadingBit(1i) >> (global1.x % 32u)) | 13583i) | _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.b, arg_0.a.x | 1964i), -(~25415i), _wgslsmith_add_i32(0i, u_input.e.x) ^ 0i), u_input.e.x);
    let var_3 = ~(~u_input.d.yz);
    let var_4 = 0i;
    return Struct_4(all(vec4<bool>(any(vec4<bool>(true, false, false, false)) | true, var_3.x > min(var_1, 0u), all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false))), (1u ^ var_1) < ~128286u)));
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: vec2<bool>) -> vec4<i32> {
    global1 = u_input.d;
    let var_0 = Struct_4(true);
    var var_1 = countOneBits(1u);
    var var_2 = Struct_2(reverseBits(~global1.ww), arg_1, Struct_1(u_input.e.wzw), true);
    global0 = Struct_1(firstTrailingBit(-(_wgslsmith_clamp_vec3_i32(vec3<i32>(7075i, 1i, 1i), var_2.c.a, var_2.c.a) | ~vec3<i32>(1i, -3623i, 0i))));
    return ~(~vec4<i32>(62037i, _wgslsmith_add_i32(global0.a.x, 23400i) << (func_3(973f).x % 32u), 2147483647i, _wgslsmith_add_i32(_wgslsmith_add_i32(42903i, u_input.e.x), 1110i << (u_input.c.x % 32u))));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_4 {
    global1 = vec4<u32>(abs(reverseBits(abs(~u_input.a))), ~21954u, u_input.a, firstTrailingBit(_wgslsmith_mod_u32(~global1.x, firstLeadingBit(5367u))) >> (global1.x % 32u));
    var var_0 = func_1(Struct_1(vec3<i32>(_wgslsmith_dot_vec3_i32(func_4(Struct_4(true), arg_0.x, vec2<bool>(false, true)).zxz, firstLeadingBit(vec3<i32>(arg_0.x, arg_2.a.x, u_input.b))), -(i32(-1i) * -373i), 1i)), -926f);
    var_0 = Struct_4(var_0.a);
    let var_1 = _wgslsmith_div_i32(u_input.b, ~_wgslsmith_dot_vec3_i32(vec3<i32>(~global0.a.x, u_input.e.x, -1i), abs(vec3<i32>(-4139i, u_input.b, 8630i)) ^ arg_0.ywy));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(arg_1)))))));
    return Struct_4(var_0.a);
}

fn func_6(arg_0: Struct_4, arg_1: i32, arg_2: u32) -> Struct_1 {
    global1 = vec4<u32>(abs(_wgslsmith_clamp_u32(u_input.a, _wgslsmith_clamp_u32(1u << (arg_2 % 32u), _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(1907u, global1.x, arg_2, global1.x)), 4605u), ~_wgslsmith_div_u32(6231u, arg_2))), global1.x, ~func_3(1f).x, arg_2);
    global1 = _wgslsmith_sub_vec4_u32(u_input.d, ~_wgslsmith_div_vec4_u32(u_input.d, u_input.d));
    var var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -490f))), _wgslsmith_f_op_f32(select(1445f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1864f, -1010f, arg_0.a)))), any(select(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, true), vec4<bool>(false, arg_0.a, arg_0.a, true), vec4<bool>(arg_0.a, true, arg_0.a, false))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2270f * _wgslsmith_f_op_f32(f32(-1f) * -507f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2(vec4<i32>(global0.a.x, global0.a.x, global0.a.x, 12832i), 831f)).x))), -370f), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-429f, -552f, -1000f, 1798f), vec4<f32>(883f, 197f, 146f, 372f))) + vec4<f32>(941f, -379f, 810f, -3049f)))))), !(!select(!vec4<bool>(false, arg_0.a, false, true), vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), select(vec4<bool>(arg_0.a, false, false, arg_0.a), vec4<bool>(false, arg_0.a, arg_0.a, arg_0.a), arg_0.a)))));
    var_0 = _wgslsmith_f_op_vec4_f32(func_2(~(~_wgslsmith_clamp_vec4_i32(vec4<i32>(10777i, global0.a.x, -1i, 6865i) & vec4<i32>(global0.a.x, 0i, 1i, -23258i), select(vec4<i32>(arg_1, 0i, 3589i, 1i), u_input.e, true), firstTrailingBit(u_input.e))), 325f));
    let var_1 = Struct_2(vec2<u32>(global1.x, _wgslsmith_dot_vec4_u32(u_input.d, ~(~u_input.d))), countOneBits(u_input.e.x), Struct_1(~u_input.e.yzz), (true & all(select(vec3<bool>(arg_0.a, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, false, arg_0.a), vec3<bool>(false, true, true)))) && all(vec4<bool>(false, any(vec4<bool>(arg_0.a, true, arg_0.a, arg_0.a)), any(vec3<bool>(arg_0.a, arg_0.a, true)), global0.a.x > 2147483647i)));
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(func_5(u_input.e | func_4(func_1(Struct_1(vec3<i32>(1i, u_input.e.x, -2147483647i)), 682f), global0.a.x << (0u % 32u), vec2<bool>(false, false)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1003f, 799f) + vec2<f32>(-102f, -287f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-951f, 627f))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false)))), Struct_1(firstTrailingBit(global0.a) & min(vec3<i32>(1i, -34236i, global0.a.x), vec3<i32>(global0.a.x, -1i, u_input.e.x)))), _wgslsmith_mult_i32(func_4(func_1(Struct_1(global0.a), -1000f), _wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, global0.a.x, global0.a.x, -2147483647i), ~vec4<i32>(global0.a.x, global0.a.x, u_input.e.x, -2147483647i)), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))).x, abs(abs(firstTrailingBit(0i)))), u_input.d.x);
    var var_0 = _wgslsmith_div_u32(42738u, 7847u) >> (1u % 32u);
    let var_1 = u_input.c;
    let var_2 = var_1.x;
    var var_3 = Struct_3(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)));
    var var_4 = Struct_4(func_5(u_input.e, vec2<f32>(_wgslsmith_div_f32(-1320f, _wgslsmith_f_op_f32(-185f - -744f)), _wgslsmith_f_op_f32(f32(-1f) * -1479f)), func_6(func_1(Struct_1(vec3<i32>(1i, -1i, u_input.b)), _wgslsmith_f_op_f32(f32(-1f) * -723f)), _wgslsmith_div_i32(17125i, u_input.e.x), ~(~1u))).a);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.e.x), var_2, _wgslsmith_add_vec2_u32(var_1.zx, _wgslsmith_div_vec2_u32(vec2<u32>(~47370u, 14153u), var_1.xz)));
}

