struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: i32,
    d: vec4<bool>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: vec3<u32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>) -> vec4<bool> {
    let var_0 = Struct_1(abs((arg_0.xy >> ((global1.xx | global1.xy) % vec2<u32>(32u))) << ((_wgslsmith_mult_vec2_u32(global1.yz, vec2<u32>(4294967295u, 42527u)) >> (global1.yy % vec2<u32>(32u))) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(109f, -112f), vec2<f32>(-1000f, 1278f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1409f, -1719f)))))), arg_0.x, vec4<bool>(!(!(!global0.x)), true, true, select(any(select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, global0.x, global0.x), true)), global0.x, !(!global0.x))), ~vec4<u32>(_wgslsmith_div_u32(20389u, 23223u), global1.x, 85027u, global1.x >> (0u % 32u)));
    global0 = vec2<bool>(any(select(!(!vec4<bool>(var_0.d.x, var_0.d.x, true, true)), !vec4<bool>(true, var_0.d.x, true, var_0.d.x), true)), global0.x);
    var var_1 = var_0;
    var var_2 = Struct_1(-abs(_wgslsmith_div_vec2_i32(-vec2<i32>(-36123i, -11630i), vec2<i32>(var_1.a.x, -3767i) & var_1.a)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -305f)), -382f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_1.b)))))), 26903i, select(select(select(!vec4<bool>(var_0.d.x, false, global0.x, false), select(var_1.d, vec4<bool>(var_1.d.x, true, true, var_0.d.x), var_1.d), !var_0.d), var_0.d, vec4<bool>(true && var_1.d.x, false, false, !var_0.d.x)), var_1.d, false), var_1.e & vec4<u32>(var_0.e.x, var_0.e.x, _wgslsmith_mult_u32(~var_0.e.x, 68916u), ~0u | reverseBits(global1.x)));
    let var_3 = var_0;
    return select(vec4<bool>(var_1.d.x, var_2.d.x, true, !(true || (false & var_0.d.x))), vec4<bool>(false, any(select(var_1.d.zy, select(var_1.d.ww, vec2<bool>(true, var_2.d.x), false), !var_2.d.yx)), global0.x, false || (885f < _wgslsmith_f_op_f32(2006f - var_3.b.x))), max(var_0.c, var_1.a.x) >= var_0.c);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec4<u32>) -> vec3<u32> {
    global0 = !(!vec2<bool>(all(func_3(vec3<i32>(arg_1.a.x, -1i, -13675i)).zw), !(!arg_1.d.x)));
    global1 = vec3<u32>(~_wgslsmith_div_u32(arg_2.x, 41998u), _wgslsmith_mod_u32(4294967295u, firstLeadingBit(select(55221u, global1.x ^ arg_2.x, !global0.x))), select(4294967295u, abs(~78396u | _wgslsmith_dot_vec2_u32(arg_1.e.ww, vec2<u32>(23914u, 27070u))), true));
    let var_0 = arg_1;
    var var_1 = var_0;
    var var_2 = firstLeadingBit(u_input.a | 29543i);
    return vec3<u32>(~_wgslsmith_sub_u32(var_1.e.x, abs(var_0.e.x)), _wgslsmith_add_u32(global1.x, ~(~max(arg_1.e.x, 1u))), arg_1.e.x);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = select(vec2<bool>(global0.x, !(_wgslsmith_f_op_f32(ceil(1033f)) > _wgslsmith_f_op_f32(trunc(-796f)))), vec2<bool>(global0.x, true || (!global0.x != !global0.x)), global0.x);
    var var_0 = arg_0;
    global1 = vec3<u32>(69381u, 1u, 74921u);
    global1 = _wgslsmith_div_vec3_u32(arg_0.e.zyx, func_4(global1.x, Struct_1(min(-vec2<i32>(-1i, arg_0.c), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, 0i), var_0.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b) * var_0.b), _wgslsmith_dot_vec3_i32(min(vec3<i32>(3749i, var_0.c, 1i), vec3<i32>(arg_0.c, u_input.a, 59044i)), -vec3<i32>(u_input.a, 5614i, -29962i)), select(select(arg_0.d, vec4<bool>(false, arg_0.d.x, false, true), var_0.d.x), func_3(vec3<i32>(1i, 8078i, -1i)), arg_0.d.x), vec4<u32>(1u, _wgslsmith_mod_u32(global1.x, var_0.e.x), 0u ^ var_0.e.x, _wgslsmith_sub_u32(1u, 0u))), countOneBits(vec4<u32>(_wgslsmith_mult_u32(1u, 1u), arg_0.e.x, global1.x, ~arg_0.e.x))));
    var var_1 = arg_0;
    return Struct_1(~_wgslsmith_add_vec2_i32(var_0.a, countOneBits(vec2<i32>(-1i, var_0.a.x))), vec2<f32>(var_0.b.x, -865f), u_input.a, select(vec4<bool>(select(global0.x, !var_1.d.x, true), func_3(vec3<i32>(var_0.a.x, var_0.c, 34005i)).x, false, false), arg_0.d, global0.x), vec4<u32>(7776u, min(var_1.e.x | _wgslsmith_dot_vec3_u32(var_0.e.zzw, var_1.e.www), 8572u), 4294967295u, _wgslsmith_sub_u32(0u, _wgslsmith_sub_u32(_wgslsmith_div_u32(global1.x, 1u), arg_0.e.x))));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global1 = arg_0.e.xyw;
    var var_0 = -(firstTrailingBit(-2720i) >> (global1.x % 32u));
    let var_1 = arg_0;
    global0 = func_2(arg_0).d.zw;
    var var_2 = -arg_0.c ^ select(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(1i, u_input.a, var_1.a.x), arg_0.c << (64599u % 32u)) | arg_0.a.x, ~u_input.a, !any(vec2<bool>(var_1.d.x, arg_0.d.x)));
    return var_1;
}

fn func_6(arg_0: Struct_1, arg_1: vec4<u32>) -> f32 {
    let var_0 = arg_0.d.wz;
    global1 = ~vec3<u32>(0u, ~(~1u), ~0u);
    global0 = func_2(Struct_1(vec2<i32>(-2354i, arg_0.c), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.b - arg_0.b)), _wgslsmith_f_op_vec2_f32(arg_0.b - vec2<f32>(-293f, -108f))), _wgslsmith_mod_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(-7431i, -1i, u_input.a, u_input.a), vec4<i32>(2147483647i, u_input.a, -1i, -1i)), _wgslsmith_add_i32(u_input.a, ~arg_0.c)), func_3(-vec3<i32>(u_input.a, arg_0.c, arg_0.c) ^ firstTrailingBit(vec3<i32>(u_input.a, 1i, -50015i))), func_5(func_2(Struct_1(arg_0.a, vec2<f32>(-1000f, -906f), arg_0.a.x, arg_0.d, arg_1))).e)).d.wy;
    var var_1 = arg_0;
    var var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(-arg_0.c, -2957i, countOneBits(74628i)), ~_wgslsmith_add_vec3_i32(vec3<i32>(15194i, u_input.a, u_input.a) ^ vec3<i32>(var_1.c, var_1.c, 0i), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.c, 0i, arg_0.a.x), vec3<i32>(2147483647i, u_input.a, -24568i), vec3<i32>(var_1.c, var_1.a.x, var_1.c)), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.a.x, 0i, var_1.c), vec3<i32>(var_1.a.x, var_1.c, 2147483647i)), false)));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-750f + _wgslsmith_f_op_f32(-var_1.b.x))) - arg_0.b.x)));
}

fn func_1() -> vec3<u32> {
    let var_0 = 34020u;
    global0 = vec2<bool>(!(4294967295u < _wgslsmith_clamp_u32(var_0 & var_0, var_0, global1.x)), global0.x);
    let var_1 = 21788i;
    let var_2 = _wgslsmith_f_op_f32(func_6(func_5(func_2(Struct_1(vec2<i32>(-2147483647i, u_input.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1023f, 186f)), min(0i, u_input.a), select(vec4<bool>(global0.x, false, false, global0.x), vec4<bool>(global0.x, true, global0.x, false), global0.x), ~vec4<u32>(global1.x, global1.x, 4294967295u, global1.x)))), reverseBits(vec4<u32>(global1.x, 35815u << (_wgslsmith_mod_u32(4294967295u, global1.x) % 32u), var_0, firstLeadingBit(global1.x)))));
    global1 = ~max(~reverseBits(vec3<u32>(global1.x, global1.x, global1.x)), firstLeadingBit(~vec3<u32>(53738u, 66383u, 0u))) | vec3<u32>(0u, _wgslsmith_div_u32(select(~global1.x, 49809u, false), global1.x), var_0);
    return vec3<u32>(global1.x, func_4(11649u, func_2(Struct_1(vec2<i32>(var_1, var_1), vec2<f32>(var_2, -841f), 7657i, vec4<bool>(global0.x, true, global0.x, global0.x), vec4<u32>(0u, global1.x, var_0, 28276u))), ~(vec4<u32>(61600u, 42826u, global1.x, global1.x) & vec4<u32>(var_0, 24886u, 0u, 84620u))).x | 4294967295u, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_sub_vec3_u32(func_1(), vec3<u32>(global1.x, _wgslsmith_add_u32(global1.x, 0u), 1u << (global1.x % 32u)));
    var var_0 = Struct_1(_wgslsmith_clamp_vec2_i32(~vec2<i32>(u_input.a, u_input.a) | (firstTrailingBit(vec2<i32>(u_input.a, u_input.a)) ^ firstTrailingBit(vec2<i32>(u_input.a, -1i))), vec2<i32>(6457i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -55474i), vec2<i32>(40361i, u_input.a)) & u_input.a), vec2<i32>(_wgslsmith_add_i32(u_input.a, u_input.a), _wgslsmith_add_i32(u_input.a, 38149i)) << (((global1.zy >> (vec2<u32>(global1.x, global1.x) % vec2<u32>(32u))) ^ global1.xz) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-495f, _wgslsmith_f_op_f32(-366f + -1879f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2232f, -855f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(max(318f, 694f)))), ~0i == _wgslsmith_clamp_i32(-2147483647i, 10494i, -1i))), min(abs(select(u_input.a >> (50351u % 32u), 21690i, global0.x && true)), _wgslsmith_add_i32(2147483647i, u_input.a & -51217i)), vec4<bool>(!global0.x, true, func_3(vec3<i32>(_wgslsmith_sub_i32(40318i, -46341i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(u_input.a, -6173i)), reverseBits(-2147483647i))).x, true), firstLeadingBit(_wgslsmith_mod_vec4_u32(~vec4<u32>(12840u, 3144u, 0u, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(global1.x, global1.x, global1.x, global1.x), vec4<u32>(0u, 0u, 14359u, 56694u)))) & _wgslsmith_mod_vec4_u32(abs(vec4<u32>(4294967295u, global1.x, 1u, 35197u)), ~min(vec4<u32>(45625u, 7670u, global1.x, 1391u), vec4<u32>(global1.x, 0u, global1.x, global1.x))));
    var var_1 = _wgslsmith_mod_u32(~36713u, var_0.e.x);
    var_0 = func_2(Struct_1(vec2<i32>(select(-u_input.a, var_0.c ^ u_input.a, true), u_input.a), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.b.x, -1476f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, -1033f))))), _wgslsmith_div_i32(func_5(Struct_1(var_0.a, var_0.b, 20567i, var_0.d, var_0.e)).a.x & var_0.a.x, u_input.a ^ _wgslsmith_mult_i32(var_0.a.x, -1i)), select(vec4<bool>(!var_0.d.x, !var_0.d.x, true, global0.x != global0.x), func_3(vec3<i32>(var_0.c, 2147483647i, 1i)), true), vec4<u32>(0u, ~reverseBits(var_0.e.x), func_4(global1.x, Struct_1(vec2<i32>(21684i, 2147483647i), vec2<f32>(-884f, var_0.b.x), -2147483647i, vec4<bool>(true, var_0.d.x, var_0.d.x, var_0.d.x), vec4<u32>(global1.x, 4294967295u, 6297u, 4294967295u)), var_0.e).x >> (var_0.e.x % 32u), global1.x)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, -1306f, var_0.d.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_0.b.x) - vec4<f32>(3343f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1152f)), _wgslsmith_f_op_f32(-var_0.b.x), 1093f)));
    var var_3 = 18499u;
    var_3 = ~firstLeadingBit(1u) ^ (0u & countOneBits(_wgslsmith_sub_u32(var_0.e.x, ~var_0.e.x)));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, var_2.x) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, 215f))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b.x, var_0.b.x), vec2<f32>(var_2.x, 2676f), true)), var_2.wz)))));
    let var_5 = ~countOneBits(var_0.e.zwx);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_4.x, var_0.b.x)), _wgslsmith_f_op_f32(1329f - -495f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.x)))) * -382f));
}

