struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<i32> = vec2<i32>(0i, -1i);

var<private> global2: Struct_1 = Struct_1(vec2<i32>(1i, -17240i), vec4<i32>(0i, i32(-2147483648), -1i, i32(-2147483648)), vec3<i32>(-3352i, 0i, 15018i), vec3<f32>(-1130f, -1447f, -1000f), vec3<u32>(1u, 1355u, 0u));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1015f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(arg_0.x))))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), 1636f))), _wgslsmith_f_op_f32(ceil(1000f)));
    var var_0 = Struct_2(global2.d.x, Struct_1(~global2.b.yy, -select(vec4<i32>(-2147483647i, global1.x, u_input.c, 6487i), global2.b, vec4<bool>(true, true, false, true)) | abs(global2.b), vec3<i32>(u_input.c, ~u_input.c >> (global2.e.x % 32u), 28335i), vec3<f32>(_wgslsmith_f_op_f32(abs(147f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global2.d.x)), global2.d.x), 1f), global2.e), Struct_1(~(_wgslsmith_div_vec2_i32(global2.c.yz, vec2<i32>(global2.b.x, 1i)) | abs(vec2<i32>(0i, 30281i))), vec4<i32>(-firstLeadingBit(u_input.c), 0i, _wgslsmith_dot_vec3_i32(global2.c, _wgslsmith_add_vec3_i32(vec3<i32>(1i, -4880i, u_input.c), global2.c)), global1.x), vec3<i32>(-3338i, 1i, -87604i), arg_0, ~global2.e));
    var var_1 = ~(~(~abs(vec2<u32>(var_0.b.e.x, 0u))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1191f * _wgslsmith_f_op_f32(f32(-1f) * -318f))));
}

fn func_2() -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-828f, global2.d.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(1648f, 280f, global2.d.x) * global2.d))))))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1142f)) + global2.d.x);
    var var_0 = _wgslsmith_mult_u32(~(~min(43966u, countOneBits(u_input.b))), 19578u);
    global0 = _wgslsmith_f_op_f32(-global2.d.x);
    let var_1 = Struct_2(1288f, Struct_1(global2.c.zy, global2.b, min(~vec3<i32>(-2147483647i, 1354i, 36973i) >> ((vec3<u32>(global2.e.x, global2.e.x, 0u) ^ vec3<u32>(1u, global2.e.x, u_input.b)) % vec3<u32>(32u)), -vec3<i32>(u_input.c, u_input.c, global1.x)), vec3<f32>(global2.d.x, _wgslsmith_f_op_f32(trunc(460f)), 768f), _wgslsmith_clamp_vec3_u32(global2.e, _wgslsmith_sub_vec3_u32(global2.e ^ global2.e, ~vec3<u32>(41197u, u_input.b, 1u)), select(global2.e, ~vec3<u32>(0u, global2.e.x, 1u), 427f == global2.d.x))), Struct_1(global2.c.xx, max(abs(global2.b), global2.b ^ global2.b), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(global2.b.xzw, global2.b.xzw), _wgslsmith_clamp_vec3_i32(vec3<i32>(-14630i, global2.a.x, u_input.c), global2.c, global2.b.zzw), reverseBits(vec3<i32>(global1.x, global1.x, -1i))), max(global2.b.wyw, -vec3<i32>(46567i, global2.b.x, global1.x))), global2.d, vec3<u32>(~countOneBits(global2.e.x), 9140u, u_input.b)));
    return var_1.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> vec3<u32> {
    global0 = func_2().d.x;
    var var_0 = select(!vec2<bool>((arg_0.a.x <= arg_0.c.x) == (arg_1.b.b.x < global1.x), true), !(!select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true))), vec2<bool>(all(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true)) == false));
    global2 = Struct_1(countOneBits(countOneBits(vec2<i32>(global2.c.x, -15501i) | vec2<i32>(global2.a.x, 59442i)) << (~arg_0.e.xz % vec2<u32>(32u))), arg_1.b.b, ~abs(vec3<i32>(1i, arg_0.c.x, global1.x & 2147483647i)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(step(arg_1.c.d.x, _wgslsmith_f_op_f32(select(1000f, 1090f, var_0.x))))), global2.d.x, _wgslsmith_f_op_f32(405f * 204f)), global2.e);
    var var_1 = 1u;
    var_0 = select(select(vec2<bool>(!(!var_0.x), any(select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x), false))), vec2<bool>((global1.x ^ arg_1.c.a.x) > reverseBits(global1.x), true), !(!var_0.x)), select(!select(select(vec2<bool>(false, var_0.x), vec2<bool>(false, true), vec2<bool>(false, var_0.x)), select(vec2<bool>(false, var_0.x), vec2<bool>(false, var_0.x), var_0.x), var_0.x), vec2<bool>(any(vec4<bool>(var_0.x, false, var_0.x, var_0.x)) || (6898u < u_input.a), true & (-887f < arg_1.c.d.x)), vec2<bool>(_wgslsmith_f_op_f32(684f * 796f) < _wgslsmith_f_op_f32(func_3(vec3<f32>(291f, 814f, -639f))), false | (arg_1.c.c.x != arg_1.c.c.x))), !vec2<bool>((false || var_0.x) == var_0.x, any(!vec3<bool>(true, var_0.x, var_0.x))));
    return ~_wgslsmith_add_vec3_u32(~max(max(arg_0.e, vec3<u32>(72866u, 62925u, 1u)), global2.e), ~arg_1.b.e);
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: f32) -> vec3<bool> {
    global2 = Struct_1(~max(arg_2.c.c.zy, -max(vec2<i32>(arg_2.b.c.x, arg_2.b.b.x), vec2<i32>(2147483647i, 2147483647i))), ~global2.b, _wgslsmith_mod_vec3_i32(max(-(arg_2.b.b.xxw & vec3<i32>(global1.x, 2147483647i, 0i)), _wgslsmith_div_vec3_i32(vec3<i32>(global2.a.x, global1.x, global1.x), vec3<i32>(-4526i, u_input.c, 48782i) >> (arg_2.b.e % vec3<u32>(32u)))), min(-arg_2.c.c, -abs(vec3<i32>(40579i, 1i, global2.a.x)))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.d.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, arg_2.c.d.x) - _wgslsmith_f_op_f32(525f - -1921f)), arg_0), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(995f, arg_1.x, arg_2.c.d.x))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, 342f, arg_0))), true)))), max(func_4(func_2(), arg_2), func_4(func_2(), Struct_2(1000f, Struct_1(global2.c.xx, vec4<i32>(global1.x, global1.x, 12978i, global1.x), vec3<i32>(0i, global1.x, 0i), global2.d, arg_2.b.e), arg_2.b)) >> (~(~arg_2.c.e) % vec3<u32>(32u))));
    global0 = -1684f;
    let var_0 = arg_2.c;
    global2 = Struct_1((vec2<i32>(-1i) * -(vec2<i32>(-2147483647i, global2.a.x) & arg_2.c.c.zy)) >> (var_0.e.yz % vec2<u32>(32u)), vec4<i32>(_wgslsmith_dot_vec4_i32(abs(-arg_2.c.b), ~vec4<i32>(arg_2.c.c.x, global2.c.x, -40019i, global1.x) ^ ~vec4<i32>(-1i, arg_2.b.a.x, -5591i, global2.b.x)), _wgslsmith_add_i32(1i, max(-28785i, var_0.a.x) & min(arg_2.b.c.x, 2071i)), 2147483647i, _wgslsmith_sub_i32(-var_0.b.x, 21109i)), _wgslsmith_sub_vec3_i32(vec3<i32>(i32(-1i) * -1i, arg_2.b.a.x, -18552i) << (vec3<u32>(~18052u, u_input.a, global2.e.x) % vec3<u32>(32u)), -(vec3<i32>(1i, var_0.a.x, 1i) & var_0.c)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(678f, _wgslsmith_f_op_f32(select(-2133f, _wgslsmith_f_op_f32(abs(arg_1.x)), 892f != arg_1.x)), _wgslsmith_f_op_f32(-arg_3)), _wgslsmith_f_op_vec3_f32(select(var_0.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(229f, arg_2.c.d.x, global2.d.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(713f, arg_1.x, 1000f) - var_0.d)), func_4(Struct_1(arg_2.b.a, var_0.b, vec3<i32>(1i, -34976i, arg_2.c.a.x), vec3<f32>(-1000f, 1560f, arg_2.b.d.x), vec3<u32>(4294967295u, var_0.e.x, var_0.e.x)), arg_2).x == 0u)))), _wgslsmith_div_vec3_u32(vec3<u32>(0u, reverseBits(1u), 4633u), ~select(vec3<u32>(0u, global2.e.x, arg_2.b.e.x), var_0.e, vec3<bool>(true, false, true))));
    var var_1 = Struct_1(vec2<i32>(reverseBits(global2.a.x), -_wgslsmith_mod_i32(global2.c.x, ~27347i)), ~((_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, 38823i, 1i, global2.a.x), vec4<i32>(arg_2.c.b.x, global2.c.x, var_0.b.x, 1i)) & -var_0.b) ^ vec4<i32>(~global2.c.x, 0i, _wgslsmith_dot_vec3_i32(arg_2.b.c, vec3<i32>(global2.c.x, global2.b.x, var_0.a.x)), global1.x >> (u_input.b % 32u))), vec3<i32>(-1i, _wgslsmith_add_i32(firstLeadingBit(45082i), -47411i >> (firstTrailingBit(var_0.e.x) % 32u)), -global1.x), arg_2.c.d, vec3<u32>(~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global2.e.x, var_0.e.x, global2.e.x, 51141u), vec4<u32>(24527u, 14153u, 0u, 4294967295u), vec4<u32>(global2.e.x, 51019u, 0u, 4294967295u)), ~vec4<u32>(0u, var_0.e.x, global2.e.x, global2.e.x)), arg_2.b.e.x, arg_2.b.e.x << (arg_2.c.e.x % 32u)));
    return vec3<bool>(true, !(false & any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false))), true);
}

fn func_5(arg_0: f32, arg_1: vec4<bool>, arg_2: bool, arg_3: f32) -> i32 {
    let var_0 = vec3<i32>(42916i, _wgslsmith_sub_i32(-2379i, firstTrailingBit(firstLeadingBit(-1i))), 73491i);
    var var_1 = Struct_1(~_wgslsmith_mod_vec2_i32(-(vec2<i32>(2147483647i, global2.c.x) | var_0.yz), vec2<i32>(var_0.x, _wgslsmith_add_i32(2147483647i, u_input.c))), -vec4<i32>(var_0.x << (~21364u % 32u), _wgslsmith_div_i32(92220i, _wgslsmith_dot_vec2_i32(var_0.yy, var_0.zy)), -55306i, global2.c.x), var_0, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.x)), 791f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * 550f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(320f, -201f, global2.d.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(497f, 496f, 342f), vec3<f32>(1908f, arg_3, 249f), arg_1.yyz)))))), ~(~(vec3<u32>(global2.e.x, u_input.b, 4427u) | vec3<u32>(u_input.a, u_input.a, global2.e.x))));
    var var_2 = func_2();
    let var_3 = func_2();
    let var_4 = var_3;
    return -29555i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(_wgslsmith_mult_i32(2147483647i, global1.x), ~global2.b.x, func_5(_wgslsmith_f_op_f32(global2.d.x + _wgslsmith_f_op_f32(-global2.d.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), any(func_1(314f, vec2<f32>(global2.d.x, global2.d.x), Struct_2(496f, Struct_1(vec2<i32>(1i, 2147483647i), vec4<i32>(-20451i, 639i, -2147483647i, 0i), vec3<i32>(-1i, u_input.c, global2.b.x), vec3<f32>(global2.d.x, 1000f, 1531f), vec3<u32>(36652u, 33762u, u_input.b)), Struct_1(global2.a, vec4<i32>(global2.c.x, -15340i, global2.b.x, u_input.c), vec3<i32>(1i, u_input.c, u_input.c), vec3<f32>(-247f, global2.d.x, global2.d.x), global2.e)), global2.d.x)), -1371f)) | ((-global2.c >> (~_wgslsmith_sub_vec3_u32(vec3<u32>(18612u, global2.e.x, 4294967295u), global2.e) % vec3<u32>(32u))) >> (abs(global2.e) % vec3<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-394f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -376f))))));
    let var_2 = Struct_1(global2.a, countOneBits(~global2.b), vec3<i32>(var_0.x, firstTrailingBit((-47653i | var_0.x) | ~2147483647i), _wgslsmith_mod_i32(var_0.x, -1i)), global2.d, global2.e);
    var var_3 = var_2;
    var var_4 = var_2;
    var var_5 = 1u;
    let var_6 = var_4.e;
    let x = u_input.a;
    s_output = StorageBuffer(global2.e.zx, 0u);
}

