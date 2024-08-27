struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<f32>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: u32,
    d: vec3<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
    c: Struct_1,
    d: i32,
    e: i32,
}

struct Struct_5 {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

var<private> global1: array<Struct_5, 10>;

var<private> global2: u32 = 47611u;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_1(arg_0: vec3<bool>, arg_1: bool, arg_2: vec4<i32>) -> u32 {
    global2 = 104596u;
    let var_0 = arg_0;
    var var_1 = -vec3<i32>(u_input.b.x, reverseBits(u_input.e), i32(-1i) * -1i);
    global2 = 1u;
    var var_2 = vec4<f32>(1153f, 537f, -805f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -582f) * _wgslsmith_f_op_f32(round(211f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1357f)))));
    return ~u_input.a;
}

fn func_3() -> bool {
    let var_0 = u_input.a;
    var var_1 = all(select(select(select(select(vec4<bool>(false, true, true, global0.x), vec4<bool>(true, global0.x, global0.x, false), global0.x), select(vec4<bool>(false, true, true, true), vec4<bool>(true, global0.x, true, global0.x), vec4<bool>(global0.x, global0.x, true, true)), !vec4<bool>(true, global0.x, global0.x, false)), vec4<bool>(any(global0.xx), true, true, global0.x & true), select(true, false, 71098u > u_input.d.x)), !vec4<bool>(false, all(vec4<bool>(global0.x, global0.x, global0.x, global0.x)), select(global0.x, global0.x, global0.x), global0.x), !select(select(vec4<bool>(false, true, global0.x, true), vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(true, global0.x, global0.x, global0.x)), !vec4<bool>(false, false, global0.x, true), select(vec4<bool>(global0.x, global0.x, true, true), vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, false)))));
    global1 = array<Struct_5, 10>();
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_3 = u_input.a;
    return global0.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_5) -> vec3<i32> {
    global0 = !vec3<bool>(arg_0.a, false | (arg_0.a || false), arg_0.a);
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.e.xy + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_div_f32(arg_0.e.x, 974f), arg_0.e.x)))));
    var var_1 = !select(!vec4<bool>(-2147483647i <= arg_0.b, arg_0.a, !arg_0.a, all(vec4<bool>(arg_0.a, global0.x, true, arg_0.a))), !(!(!vec4<bool>(global0.x, true, arg_0.a, false))), vec4<bool>(!(global0.x | global0.x), arg_0.a, arg_0.a, abs(-79210i) < -arg_0.b));
    let var_2 = ~(~(~vec4<u32>(~u_input.d.x, 35306u, _wgslsmith_div_u32(u_input.a, arg_1.a), ~30192u)));
    return (abs(-_wgslsmith_sub_vec3_i32(vec3<i32>(-68653i, u_input.b.x, arg_0.b), vec3<i32>(u_input.b.x, arg_0.b, -39696i))) << ((abs(_wgslsmith_add_vec3_u32(vec3<u32>(28572u, var_2.x, var_2.x), vec3<u32>(4294967295u, u_input.d.x, 4294967295u))) << (vec3<u32>(4294967295u ^ u_input.d.x, _wgslsmith_mod_u32(49430u, arg_1.a), reverseBits(0u)) % vec3<u32>(32u))) % vec3<u32>(32u))) << (countOneBits(min(~(~var_2.zzw), _wgslsmith_add_vec3_u32(vec3<u32>(arg_1.a, var_2.x, 1u), vec3<u32>(4294967295u, 4294967295u, var_2.x)))) % vec3<u32>(32u));
}

fn func_2() -> vec4<f32> {
    let var_0 = !(!vec2<bool>(global0.x, false));
    global2 = _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.d.x, _wgslsmith_div_u32(select(u_input.d.x, u_input.d.x, true), ~_wgslsmith_mult_u32(20782u, 0u))), func_1(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, var_0.x, global0.x), vec3<bool>(var_0.x, global0.x, global0.x)), !vec3<bool>(global0.x, var_0.x, false), vec3<bool>(global0.x, var_0.x, false)), true, countOneBits(_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.c, u_input.b.x, u_input.e, u_input.e), vec4<i32>(u_input.e, 22633i, 2147483647i, -2362i)))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1000f, -1355f)), -620f), -229f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(1717f)))), 1f)), Struct_1(global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(~4398i, _wgslsmith_mod_i32(u_input.c, u_input.e), ~0i, 1i), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-28423i, 18477i, 11842i, u_input.e), vec4<i32>(u_input.e, 2147483647i, u_input.c, -2102i))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1926f, 809f, _wgslsmith_f_op_f32(f32(-1f) * -372f), _wgslsmith_f_op_f32(select(145f, -195f, var_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-184f, 1620f, -975f, -428f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2121f, 371f, -1000f, -845f))), select(select(vec4<bool>(true, var_0.x, global0.x, global0.x), vec4<bool>(var_0.x, global0.x, true, var_0.x), vec4<bool>(var_0.x, global0.x, global0.x, global0.x)), select(vec4<bool>(true, var_0.x, false, global0.x), vec4<bool>(false, true, true, true), vec4<bool>(global0.x, true, false, true)), select(vec4<bool>(var_0.x, global0.x, global0.x, false), vec4<bool>(false, global0.x, false, false), vec4<bool>(true, var_0.x, false, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(485f)) - _wgslsmith_f_op_f32(round(-1253f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-105f, -976f, -2330f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-612f, -663f, -251f)))), _wgslsmith_div_vec3_f32(vec3<f32>(1083f, -979f, 889f), _wgslsmith_div_vec3_f32(vec3<f32>(-490f, 1205f, -1715f), vec3<f32>(-2681f, -903f, 1000f)))))), ~u_input.d.x, func_4(Struct_1(!func_3(), 1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1066f, 611f, 291f, 563f) * vec4<f32>(445f, 2215f, 1044f, -715f)) - vec4<f32>(277f, 468f, 957f, -502f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(914f)))), vec3<f32>(_wgslsmith_f_op_f32(step(1503f, -1051f)), -730f, _wgslsmith_f_op_f32(step(700f, 214f)))), Struct_5(max(firstLeadingBit(u_input.a), 1u), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(795f, -687f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 104f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1140f, -409f)))), Struct_2(vec4<f32>(1f, 1f, 1f, 1f)), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1578f, 898f, 1048f, 1204f) + vec4<f32>(1504f, 1217f, 196f, -1800f))))), Struct_2(vec4<f32>(-379f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -842f)), -428f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1987f, -686f)))));
    global2 = 58618u;
    global2 = u_input.a;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.a * var_1.a)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(658f, var_1.a.x, 930f, var_1.e.a.x) + var_1.b.c))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(var_1.a, vec4<f32>(2045f, var_1.b.d, -1000f, var_1.a.x)))))))));
}

fn func_5(arg_0: vec4<f32>, arg_1: f32, arg_2: i32) -> Struct_2 {
    global0 = vec3<bool>(any(global0.zx), true, !global0.x);
    let var_0 = ~_wgslsmith_sub_vec2_u32(max(~u_input.d.zx, ~_wgslsmith_div_vec2_u32(u_input.d.xz, vec2<u32>(31460u, 4294967295u))), u_input.d.xy);
    global0 = !select(vec3<bool>(false, global0.x, any(!vec2<bool>(global0.x, global0.x))), select(!select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(true, global0.x, global0.x), false), select(vec3<bool>(global0.x, false, global0.x), select(vec3<bool>(false, global0.x, true), vec3<bool>(false, global0.x, true), vec3<bool>(global0.x, true, true)), vec3<bool>(true, global0.x, true)), !vec3<bool>(global0.x, false, global0.x)), true);
    let var_1 = Struct_5(~max(u_input.d.x, _wgslsmith_mult_u32(var_0.x, 9250u) & ~0u), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x)))), vec2<f32>(_wgslsmith_f_op_f32(min(1f, arg_0.x)), arg_1), Struct_2(_wgslsmith_f_op_vec4_f32(exp2(arg_0))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(794f, -1389f, arg_1, -1094f), vec4<f32>(305f, arg_1, arg_1, 2179f)))));
    global2 = _wgslsmith_dot_vec4_u32(select(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, var_1.a, 43645u), min(vec4<u32>(24499u, u_input.d.x, 4294967295u, u_input.a), vec4<u32>(var_0.x, 7314u, var_1.a, 136697u))), vec4<u32>(u_input.a, max(53111u, 53093u), _wgslsmith_clamp_u32(4294967295u, u_input.d.x, 68384u), var_1.a), vec4<u32>(var_0.x, var_0.x, var_0.x, ~76139u)), vec4<u32>(1u, 45647u, 5527u, 9770u) ^ vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.d, u_input.d), ~u_input.d.x, firstLeadingBit(var_0.x), abs(4294967295u)), select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(global0.x, true, global0.x, global0.x)), vec4<bool>(global0.x, true, global0.x, false), !global0.x), select(select(vec4<bool>(false, global0.x, false, true), vec4<bool>(false, global0.x, global0.x, global0.x), true), select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(global0.x, global0.x, false, global0.x), true), !global0.x), !(!vec4<bool>(false, global0.x, true, global0.x)))), ~max(vec4<u32>(1u, firstTrailingBit(0u), var_1.a | var_0.x, 4294967295u), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, var_0.x, var_1.a), vec4<u32>(7014u, u_input.a, 38344u, u_input.d.x), vec4<u32>(7695u, var_1.a, 1u, u_input.a)), vec4<u32>(4294967295u, 40003u, 0u, var_1.a), all(vec2<bool>(false, global0.x)))));
    return var_1.e;
}

fn func_6(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(abs(arg_0.a.x));
    global0 = select(!select(vec3<bool>(true, false, global0.x), select(!vec3<bool>(global0.x, false, global0.x), vec3<bool>(false, global0.x, global0.x), any(vec4<bool>(true, true, global0.x, global0.x))), !(!global0.x)), !select(vec3<bool>(func_3(), true, true), !vec3<bool>(global0.x, global0.x, true), !global0.x), _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_div_i32(0i, u_input.e), -5057i), ~u_input.c) == _wgslsmith_mod_i32(abs(13483i ^ u_input.c), u_input.b.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(301f, arg_0.a.x, var_0, var_0), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(648f, 1227f, arg_0.a.x, -1023f), vec4<f32>(1078f, 1277f, var_0, 138f))))))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_2()))));
    var var_2 = vec2<u32>(u_input.d.x, countOneBits(u_input.d.x));
    let var_3 = arg_2 >= 0u;
    return _wgslsmith_mod_i32(_wgslsmith_clamp_i32(~u_input.c ^ u_input.e, -38730i, ~u_input.c), 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_5, 10>();
    global0 = !(!vec3<bool>(all(vec4<bool>(global0.x, true, false, global0.x)), !(55521u > u_input.d.x), func_1(vec3<bool>(false, global0.x, global0.x), true, vec4<i32>(u_input.b.x, -3571i, u_input.c, u_input.b.x)) <= firstLeadingBit(15980u)));
    let var_0 = _wgslsmith_add_i32(16195i, func_6(func_5(_wgslsmith_f_op_vec4_f32(func_2()), 845f, (u_input.e >> (u_input.d.x % 32u)) ^ ~31296i), ~(~(~vec4<u32>(u_input.d.x, 0u, 4294967295u, u_input.a))), reverseBits(~u_input.a)));
    let var_1 = _wgslsmith_mult_i32(var_0, 5016i);
    let var_2 = var_0;
    var var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-623f, -539f, -1794f, 1069f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-362f, -1155f, -1075f, 1000f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - vec4<f32>(361f, 1219f, -323f, -667f))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-405f, -1000f, -1230f, 1000f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(843f, -2265f, 1000f, 322f)))))), _wgslsmith_mult_i32(_wgslsmith_div_i32(var_2 & (var_2 << (u_input.d.x % 32u)), -(~var_0)), reverseBits(~(-2100i))), Struct_1(!(95416u > u_input.d.x), ~_wgslsmith_mod_i32(27207i, var_2), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-803f * -189f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-785f - -242f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(756f)), 271f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-307f * -492f)))), 108f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2121f, _wgslsmith_f_op_f32(1245f + 265f), 176f))), _wgslsmith_dot_vec3_i32(min(-firstLeadingBit(vec3<i32>(-1i, var_2, 0i)), abs(vec3<i32>(var_2, u_input.b.x, 21635i) | vec3<i32>(var_1, var_0, var_2))), max(vec3<i32>(u_input.c, var_1, 2147483647i), ~vec3<i32>(var_2, -2147483647i, var_0)) & min(vec3<i32>(var_2, 2147483647i, 49944i), _wgslsmith_mod_vec3_i32(vec3<i32>(var_2, 20645i, var_0), vec3<i32>(49613i, var_0, var_2)))), -2147483647i);
    var var_4 = Struct_1(true, -61179i, var_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, var_3.c.d))), func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1631f, -181f, -1431f, var_3.a.x))) - var_3.a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3.c.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1064f - var_3.c.d) - var_3.c.e.x), any(select(vec3<bool>(var_3.c.a, var_3.c.a, global0.x), vec3<bool>(var_3.c.a, true, true), true)))), _wgslsmith_mod_i32(var_3.b, -9611i)).a.xyz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(1153f, _wgslsmith_f_op_f32(var_3.c.e.x - var_4.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(348f)) + _wgslsmith_f_op_f32(-183f + var_4.e.x)), 1112f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(var_3.c.d, -814f), var_4.c.x, 1146f, _wgslsmith_f_op_f32(-var_3.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1606f, var_3.c.d, var_4.c.x, 678f) - _wgslsmith_f_op_vec4_f32(step(var_4.c, var_4.c)))))), _wgslsmith_f_op_vec2_f32(-var_4.e.zy));
}

