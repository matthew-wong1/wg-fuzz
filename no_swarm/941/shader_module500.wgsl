struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec4<bool>;

var<private> global2: vec4<bool> = vec4<bool>(true, false, true, false);

var<private> global3: f32 = -106f;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: vec3<f32>) -> u32 {
    let var_0 = vec3<bool>(all(vec2<bool>(any(global1.wzz), countOneBits(arg_0) <= (arg_0 | 44198u))), _wgslsmith_mult_i32(_wgslsmith_mult_i32(1i, min(28583i, 0i)), ~_wgslsmith_add_i32(-1i, 0i)) > -_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-14586i, -16140i, -96132i)), vec3<i32>(4428i, 2147483647i, 25203i)), true);
    global0 = false;
    var var_1 = -(~(-vec2<i32>(0i, -2147483647i)));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x - arg_1.x), _wgslsmith_f_op_f32(-arg_1.x)), -1000f)))));
    var var_3 = Struct_1(reverseBits(vec3<u32>(1u, countOneBits(4294967295u), _wgslsmith_mult_u32(0u, arg_0)) | firstLeadingBit(~vec3<u32>(u_input.a.x, 42423u, 0u))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2.x)) * _wgslsmith_f_op_f32(arg_1.x * arg_1.x)))))), _wgslsmith_dot_vec2_u32(select(vec2<u32>(76269u, u_input.b), u_input.a.yy, false) << (u_input.a.zx % vec2<u32>(32u)), ~vec2<u32>(13532u, 4294967295u)) >= abs(~4294967295u), _wgslsmith_sub_u32(arg_0, ~_wgslsmith_dot_vec2_u32(min(u_input.a.xy, u_input.a.zz), countOneBits(u_input.a.yz))));
    return min(_wgslsmith_mult_u32((4294967295u >> (var_3.a.x % 32u)) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.d, 4294967295u, 1u, u_input.a.x), ~vec4<u32>(arg_0, 4294967295u, 33452u, var_3.d)), _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(arg_0, arg_0, 0u, 35511u)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 8829u, var_3.d, 4294967295u), vec4<u32>(49319u, 35985u, u_input.a.x, u_input.a.x) ^ vec4<u32>(4294967295u, 0u, 1u, var_3.d)))), ~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~35409u, ~6575u, 1u >> (u_input.a.x % 32u)), var_3.a.x, abs(4294967295u)));
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b));
    var var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32((vec4<u32>(17459u, u_input.b, 1u, 1u) & (vec4<u32>(4294967295u, u_input.b, 4294967295u, arg_0.d) & vec4<u32>(56764u, 49696u, 4294967295u, arg_0.a.x))) | ~min(vec4<u32>(arg_0.a.x, arg_0.a.x, 23636u, 4294967295u), vec4<u32>(u_input.a.x, 1u, u_input.b, u_input.b)), vec4<u32>(~(~u_input.b), 25377u, 1817u, max(_wgslsmith_mod_u32(64812u, u_input.b), ~33497u))), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.d, 0u, func_3(arg_0.a.x, vec3<f32>(1754f, arg_0.b, 1278f), vec3<f32>(-1245f, -933f, -629f)), u_input.a.x), vec4<u32>(59502u, u_input.b, 41000u, arg_0.a.x)), select(~(~vec4<u32>(2981u, arg_0.a.x, u_input.b, 4294967295u)), vec4<u32>(max(u_input.a.x, u_input.b), firstTrailingBit(1u), ~12866u, 45716u), true)));
    let var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(-57620i, 1i, _wgslsmith_mult_i32(0i, ~(~10458i))), firstTrailingBit(-vec3<i32>(countOneBits(16604i), ~1i, _wgslsmith_mult_i32(-6496i, 1i))));
    var var_3 = false;
    let var_4 = select(vec2<bool>(!(true && !global2.x), -1i > var_2.x), vec2<bool>(any(vec4<bool>(false, arg_0.c, true, arg_0.c)), !((global2.x | arg_0.c) & global2.x)), select(vec2<bool>(select(global2.x, global1.x, !global2.x), true && any(global1.zxz)), select(select(global1.yy, select(global1.xx, global2.xx, false), vec2<bool>(global1.x, true)), !vec2<bool>(global2.x, false), !(!vec2<bool>(false, arg_0.c))), !(_wgslsmith_f_op_f32(-776f + arg_0.b) <= _wgslsmith_div_f32(arg_0.b, 806f))));
    return vec4<bool>(any(global2.zy), any(global2.yy), true, arg_0.c);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> Struct_1 {
    global0 = global2.x;
    global1 = !select(vec4<bool>(false, true, true, true), func_2(Struct_1(max(vec3<u32>(arg_1.d, arg_2, u_input.b), vec3<u32>(arg_2, 1u, 125302u)), -472f, global1.x, arg_0.x)), select(select(vec4<bool>(global1.x, true, true, arg_1.c), vec4<bool>(false, global2.x, arg_1.c, global1.x), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), !vec4<bool>(true, global1.x, false, false), all(vec2<bool>(arg_1.c, true))), global1.x));
    let var_0 = arg_3;
    global3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.b, _wgslsmith_f_op_f32(f32(-1f) * -1000f), !arg_1.c)))));
    var var_1 = ~arg_0;
    return Struct_1(_wgslsmith_add_vec3_u32(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, var_1.x, arg_0.x), arg_0.xxx, u_input.a)), arg_0.xxz), _wgslsmith_f_op_f32(arg_3 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0, arg_3), _wgslsmith_f_op_f32(floor(var_0)))) * 105f)), arg_1.c, 2650u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(reverseBits(-vec2<i32>(-1814i, 2147483647i)), (abs(vec2<i32>(1i, 1i)) >> (~arg_0.a.yx % vec2<u32>(32u))) | vec2<i32>(-1i, 1i)), countOneBits(min(countOneBits(vec2<i32>(1i, 1i)), vec2<i32>(1i, _wgslsmith_div_i32(-29549i, 1i)))));
    var var_1 = global1.x;
    let var_2 = vec2<u32>(firstTrailingBit(14016u), _wgslsmith_div_u32(arg_1.a.x | ~u_input.a.x, 60519u) << (18776u % 32u));
    let var_3 = Struct_2(func_1(abs(~(vec4<u32>(19645u, 1u, 75861u, arg_1.a.x) | vec4<u32>(4300u, arg_2.d, 4294967295u, arg_1.a.x))), func_1(select(abs(vec4<u32>(arg_1.a.x, arg_0.d, 23246u, arg_1.a.x)), vec4<u32>(4660u, 1u, 84269u, arg_1.d), select(vec4<bool>(false, true, arg_1.c, false), vec4<bool>(false, arg_2.c, global2.x, true), vec4<bool>(true, arg_1.c, false, false))), func_1(vec4<u32>(1u, 7123u, arg_0.a.x, var_2.x), Struct_1(vec3<u32>(23978u, 4294967295u, 1u), 110f, arg_1.c, u_input.a.x), ~arg_1.d, _wgslsmith_f_op_f32(min(-1045f, arg_0.b))), func_1(max(vec4<u32>(42505u, 60885u, arg_2.d, arg_0.d), vec4<u32>(arg_0.d, 1u, arg_1.a.x, var_2.x)), Struct_1(u_input.a, arg_1.b, true, 4294967295u), arg_2.a.x, _wgslsmith_f_op_f32(arg_0.b + -584f)).a.x, _wgslsmith_f_op_f32(sign(-1021f))), arg_2.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1498f)))), !(!select(func_2(arg_2), func_2(arg_1), !vec4<bool>(false, arg_2.c, true, arg_0.c))));
    var var_4 = true;
    return _wgslsmith_f_op_f32(f32(-1f) * -139f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(sign(-2502f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-545f * _wgslsmith_f_op_f32(func_4(func_1(vec4<u32>(u_input.b, u_input.b, u_input.a.x, 27519u), Struct_1(vec3<u32>(u_input.b, u_input.a.x, u_input.b), 805f, global2.x, u_input.a.x), 23256u, 787f), Struct_1(vec3<u32>(0u, 82963u, 37568u), -267f, false, u_input.a.x), func_1(vec4<u32>(17103u, u_input.a.x, u_input.a.x, 5256u), Struct_1(u_input.a, 242f, false, u_input.a.x), 98979u, -1565f)))))));
    var var_1 = vec3<bool>(true, true, all(select(func_2(func_1(vec4<u32>(49521u, 4644u, u_input.b, u_input.b), Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, 1u), 1415f, false, 110102u), 32934u, var_0.x)).yw, select(!vec2<bool>(global2.x, global1.x), global2.zz, true), !select(vec2<bool>(global1.x, true), global1.yx, true))));
    var var_2 = func_1(vec4<u32>(u_input.b, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), max(~u_input.a.x, 18796u) >> (_wgslsmith_sub_u32(~u_input.b, u_input.a.x) % 32u), u_input.a.x), Struct_1(u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -536f), true, ~11959u), 17054u, var_0.x);
    var var_3 = Struct_2(Struct_1(_wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(u_input.b, 30794u, var_2.d) | vec3<u32>(u_input.b, u_input.a.x, 7930u)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(230f - -1663f))))), var_2.c, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 0u, 70593u)), u_input.a), u_input.b << (75317u % 32u))), func_2(Struct_1(vec3<u32>(u_input.b & u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(23345u, 1u, u_input.b, 14114u), vec4<u32>(4294967295u, 12721u, 458u, 2695u)), 0u), var_2.b, all(!global1.wxx), select(8337u & u_input.a.x, var_2.a.x, all(vec3<bool>(false, false, var_1.x))))));
    let var_4 = Struct_2(func_1(vec4<u32>(~80004u << (~var_3.a.a.x % 32u), ~abs(var_3.a.d), 19633u, var_3.a.d), var_3.a, select(~0u, 0u, all(var_3.b.xyz)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-186f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1064f + var_0.x) * _wgslsmith_f_op_f32(step(646f, var_0.x))))), vec4<bool>(global1.x || true, all(vec3<bool>(true, true, true)), false, var_3.a.c));
    let var_5 = Struct_2(func_1(~(~reverseBits(vec4<u32>(var_3.a.d, var_4.a.a.x, var_4.a.d, u_input.b))), Struct_1(countOneBits(vec3<u32>(9895u, 1u, u_input.b)), _wgslsmith_f_op_f32(-var_4.a.b), 541f > _wgslsmith_f_op_f32(var_2.b - var_4.a.b), (u_input.a.x >> (var_2.a.x % 32u)) | reverseBits(0u)), 1u, _wgslsmith_f_op_f32(-var_3.a.b)), var_4.b);
    global0 = any(select(vec4<bool>(false, true, true, !any(vec4<bool>(var_4.b.x, true, global2.x, var_2.c))), !var_4.b, any(select(var_4.b.yzx, global2.xzz, !var_5.a.c))));
    var var_6 = min(func_3(func_1(_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(20310u, var_4.a.d, 4294967295u, var_3.a.a.x)), vec4<u32>(var_4.a.a.x, 0u, 1u, u_input.b)), var_3.a, _wgslsmith_div_u32(var_2.a.x, func_3(var_4.a.a.x, vec3<f32>(-1133f, var_2.b, 954f), vec3<f32>(var_4.a.b, var_3.a.b, var_4.a.b))), -764f).d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1069f, var_5.a.b, var_3.a.b), vec3<f32>(3091f, var_2.b, 953f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1059f, var_0.x, var_2.b) * vec3<f32>(var_2.b, -145f, 561f)))), vec3<f32>(-208f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -701f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 313f)))), _wgslsmith_div_u32(19841u, u_input.b));
    let var_7 = all(func_2(func_1(select(_wgslsmith_sub_vec4_u32(vec4<u32>(var_3.a.d, 1u, var_3.a.a.x, 4294967295u), vec4<u32>(u_input.b, u_input.b, var_2.d, 31276u)), ~vec4<u32>(var_4.a.a.x, 32597u, 28018u, 0u), global2.x || var_4.b.x), func_1(min(vec4<u32>(var_4.a.d, u_input.b, u_input.a.x, 1u), vec4<u32>(u_input.a.x, 4294967295u, var_2.d, var_2.a.x)), var_4.a, var_5.a.d, var_5.a.b), _wgslsmith_add_u32(min(4294967295u, 1u), func_3(u_input.b, vec3<f32>(136f, 1188f, var_3.a.b), vec3<f32>(1000f, var_5.a.b, 596f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.b), var_0.x)))).yx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(_wgslsmith_add_i32(1i, 16456i), -1i), -637f, ~abs(vec2<i32>(0i, 1i)), _wgslsmith_sub_u32(~0u, 14545u ^ ~var_5.a.d), abs(reverseBits(i32(-1i) * -1i) >> (~(53280u << (var_2.d % 32u)) % 32u)));
}

