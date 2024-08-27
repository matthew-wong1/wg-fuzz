struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: bool,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<u32>(0u, 11310u, 1u, 4294967295u), Struct_1(vec3<f32>(209f, 538f, 423f), vec4<i32>(1i, 774i, 465i, 0i), true, vec4<u32>(4294967295u, 20099u, 0u, 36250u), vec2<bool>(false, false)), Struct_1(vec3<f32>(677f, -1480f, 1000f), vec4<i32>(i32(-2147483648), -13221i, -44963i, i32(-2147483648)), true, vec4<u32>(54814u, 19852u, 1u, 4294967295u), vec2<bool>(false, true)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>) -> vec3<u32> {
    var var_0 = ~_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(39105u, u_input.c) ^ global0.b.d.yz, ~u_input.a.yx), min(2175u, ~(~32784u)));
    var var_1 = global0.b;
    var_1 = Struct_1(vec3<f32>(-717f, 1000f, global0.c.a.x), ~vec4<i32>(abs(var_1.b.x), 15931i, arg_0.c.b.x, i32(-1i) * -1i) | vec4<i32>(u_input.b, 1i, -_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b.x, 2147483647i), var_1.b.xx), ~countOneBits(-8685i)), any(!vec4<bool>(arg_0.c.c, global0.b.c, false, arg_1.x)) & false, max(global0.c.d, ~(~select(global0.b.d, vec4<u32>(arg_0.b.d.x, 13100u, 56155u, arg_0.b.d.x), arg_1))), !(!arg_0.b.e));
    var_1 = Struct_1(vec3<f32>(-673f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.b.a.x, var_1.a.x))) + 842f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.a.x) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.c.a.x), _wgslsmith_f_op_f32(round(global0.b.a.x)))))), reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(-25330i, arg_0.b.b.x, select(u_input.e, var_1.b.x, var_1.c), max(67896i, arg_0.c.b.x)), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-24750i, var_1.b.x, u_input.e, u_input.b), arg_0.c.b)))), !select(false, true, all(select(vec2<bool>(true, true), arg_1.wy, true))), ~firstTrailingBit(var_1.d), !(!arg_1.wx));
    var_0 = max(u_input.a.x, ~1u);
    return vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.a, _wgslsmith_div_vec3_u32(vec3<u32>(~17213u, _wgslsmith_dot_vec3_u32(arg_0.a.yzz, arg_0.b.d.yzy), _wgslsmith_dot_vec4_u32(var_1.d, var_1.d)), ~vec3<u32>(18090u, arg_0.b.d.x, 0u))), ~11962u, firstLeadingBit(1u));
}

fn func_2() -> bool {
    var var_0 = select(~(abs(u_input.a) << (func_3(Struct_2(global0.b.d, Struct_1(vec3<f32>(-1501f, -1201f, global0.c.a.x), vec4<i32>(u_input.b, global0.c.b.x, 30857i, u_input.e), true, global0.a, vec2<bool>(false, global0.c.c)), Struct_1(vec3<f32>(global0.c.a.x, 1002f, global0.c.a.x), vec4<i32>(-2147483647i, u_input.e, -87068i, 2147483647i), global0.b.c, global0.c.d, global0.c.e)), select(vec4<bool>(false, global0.b.e.x, global0.c.e.x, global0.b.c), vec4<bool>(true, global0.b.e.x, global0.c.c, true), global0.c.e.x)) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(57836u, 79119u, u_input.c)), ~(~global0.c.d.wzw), global0.c.d.zzx), select(vec3<bool>(_wgslsmith_mult_i32(-1i, u_input.b) < _wgslsmith_dot_vec3_i32(global0.b.b.xwx, vec3<i32>(-36538i, 20756i, 11099i)), any(!vec4<bool>(true, true, global0.c.c, global0.b.c)), any(vec2<bool>(global0.b.e.x, true)) || (global0.b.d.x != 6569u)), select(!(!vec3<bool>(global0.b.e.x, global0.c.c, true)), vec3<bool>(global0.c.e.x, any(vec4<bool>(true, false, true, global0.c.e.x)), any(vec3<bool>(true, global0.b.e.x, global0.c.c))), vec3<bool>(true, true, true)), global0.b.e.x));
    var var_1 = Struct_2(global0.a, Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(global0.c.a + vec3<f32>(global0.b.a.x, global0.c.a.x, -639f)), vec3<f32>(-1103f, 504f, -734f))))), global0.c.b, all(!vec2<bool>(global0.c.c, true)), ~(min(vec4<u32>(u_input.d.x, var_0.x, 5445u, u_input.c), vec4<u32>(1u, var_0.x, var_0.x, 0u)) ^ _wgslsmith_clamp_vec4_u32(global0.c.d, vec4<u32>(u_input.a.x, u_input.a.x, 1u, 0u), vec4<u32>(0u, 4294967295u, global0.a.x, 0u))), !(!global0.b.e)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b.a)), global0.c.b, false, (~global0.a | ~global0.c.d) >> ((~vec4<u32>(var_0.x, global0.c.d.x, 4294967295u, 19437u) & global0.a) % vec4<u32>(32u)), vec2<bool>(!(global0.b.b.x > -12046i), _wgslsmith_f_op_f32(global0.b.a.x + global0.b.a.x) == -405f)));
    var var_2 = 0u;
    var var_3 = global0.c.a.x;
    let var_4 = vec4<f32>(1f, -383f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-848f)))), global0.c.a.x);
    return true;
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    global0 = Struct_2(countOneBits(countOneBits(abs(min(global0.a, global0.a)))), Struct_1(global0.b.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(arg_0.yy, vec2<i32>(-27267i, arg_0.x)), 1i, ~12443i, ~u_input.b), -(~vec4<i32>(u_input.b, -2171i, arg_0.x, -1i)), firstTrailingBit(reverseBits(global0.b.b))), func_2() & all(!vec3<bool>(false, global0.c.e.x, global0.c.c)), _wgslsmith_add_vec4_u32(abs(countOneBits(global0.c.d)), firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 33417u, global0.a.x, global0.b.d.x), global0.a))), vec2<bool>(global0.b.e.x == false, false)), Struct_1(global0.c.a, ~max(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.c.b.x, 0i, 1810i, global0.b.b.x), vec4<i32>(-26439i, arg_0.x, arg_0.x, -29353i)), vec4<i32>(u_input.e, global0.c.b.x, arg_0.x, 1i)), global0.c.c, ~firstLeadingBit(global0.a) ^ ~vec4<u32>(4294967295u, global0.a.x, 0u, 1u), global0.b.e));
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(420f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-912f - global0.b.a.x), -1227f)), _wgslsmith_f_op_f32(-global0.b.a.x), _wgslsmith_f_op_f32(abs(global0.b.a.x))))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-430f, 443f, -786f, global0.c.a.x) + vec4<f32>(global0.c.a.x, 785f, 290f, global0.b.a.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-136f, global0.c.a.x, global0.c.a.x, 1193f)))) + vec4<f32>(_wgslsmith_f_op_f32(trunc(global0.b.a.x)), -1120f, global0.c.a.x, -412f)))));
    var var_1 = Struct_2(global0.b.d, Struct_1(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(-global0.c.a.x)), -vec4<i32>(select(0i, 2147483647i, global0.c.e.x), _wgslsmith_add_i32(arg_0.x, 5140i), -3344i, firstLeadingBit(-2059i)), global0.b.e.x, abs(vec4<u32>(abs(4294967295u), _wgslsmith_dot_vec2_u32(u_input.d, u_input.a.zy), global0.b.d.x ^ 87895u, global0.b.d.x)), !(!global0.c.e)), global0.c);
    var_1 = Struct_2(var_1.b.d, Struct_1(var_0.wxw, vec4<i32>(u_input.b, _wgslsmith_mod_i32(global0.c.b.x, 36520i), ~(-2147483647i) ^ select(-1597i, -9854i, var_1.b.e.x), reverseBits(-29292i) | _wgslsmith_clamp_i32(-2147483647i, -404i, arg_0.x)), func_2(), vec4<u32>(global0.c.d.x, 7008u, firstTrailingBit(u_input.d.x), global0.a.x), global0.b.e), var_1.c);
    var_1 = Struct_2(vec4<u32>(47361u, ~func_3(Struct_2(var_1.a, Struct_1(vec3<f32>(global0.b.a.x, var_1.b.a.x, 1739f), var_1.b.b, false, vec4<u32>(4294967295u, 1u, var_1.b.d.x, 0u), vec2<bool>(false, false)), global0.c), vec4<bool>(true, var_1.c.e.x, global0.b.e.x, false)).x, countOneBits(reverseBits(func_3(Struct_2(vec4<u32>(34371u, global0.c.d.x, var_1.a.x, var_1.a.x), Struct_1(vec3<f32>(global0.c.a.x, -699f, var_0.x), vec4<i32>(var_1.b.b.x, arg_0.x, global0.c.b.x, var_1.b.b.x), true, var_1.a, vec2<bool>(global0.c.c, var_1.c.e.x)), Struct_1(global0.b.a, vec4<i32>(-2147483647i, global0.c.b.x, -2147483647i, var_1.b.b.x), global0.c.c, vec4<u32>(0u, var_1.a.x, 77719u, global0.a.x), vec2<bool>(false, true))), vec4<bool>(var_1.c.e.x, false, global0.c.e.x, var_1.c.e.x)).x)), 0u), Struct_1(global0.b.a, vec4<i32>(countOneBits(_wgslsmith_sub_i32(1i, u_input.b)), _wgslsmith_sub_i32(var_1.c.b.x | var_1.c.b.x, ~1i), -_wgslsmith_dot_vec4_i32(global0.b.b, vec4<i32>(u_input.e, arg_0.x, var_1.b.b.x, 1i)), global0.b.b.x), true, _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.a.x, u_input.c << (global0.a.x % 32u), _wgslsmith_dot_vec3_u32(global0.c.d.zww, vec3<u32>(1u, var_1.a.x, 4294967295u)), _wgslsmith_mult_u32(0u, var_1.a.x)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, 64913u, 4294967295u, 101116u), global0.b.d) & _wgslsmith_mod_vec4_u32(vec4<u32>(global0.c.d.x, var_1.a.x, var_1.a.x, 27316u), vec4<u32>(0u, 1u, global0.b.d.x, global0.a.x))), global0.b.e), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1192f, 282f, _wgslsmith_f_op_f32(-global0.b.a.x)) - global0.c.a), ~vec4<i32>(u_input.b | 2147483647i, _wgslsmith_dot_vec2_i32(global0.b.b.yy, vec2<i32>(2954i, var_1.b.b.x)), _wgslsmith_add_i32(-3559i, 2405i), 2147483647i), global0.c.c, ~global0.b.d, vec2<bool>(true, true)));
    return Struct_2(_wgslsmith_sub_vec4_u32(firstTrailingBit(~global0.a), min(global0.c.d, ~var_1.a)), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.yyw * var_0.zwz)), vec3<f32>(-1211f, -453f, var_1.c.a.x), vec3<bool>(true | var_1.b.c, false, any(global0.b.e)))), max(vec4<i32>(~arg_0.x, arg_0.x, firstLeadingBit(-8560i), u_input.b), vec4<i32>(reverseBits(var_1.c.b.x), 0i >> (1u % 32u), reverseBits(1602i), u_input.e)), global0.c.c, firstLeadingBit(~(vec4<u32>(38822u, 0u, var_1.b.d.x, 63133u) | vec4<u32>(36290u, 81927u, 4294967295u, 1u))), global0.c.e), global0.c);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec4<u32>, arg_3: f32) -> Struct_2 {
    var var_0 = abs(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.b.d.x, 1u, arg_2.x, 4294967295u), vec4<u32>(abs(22704u), 1u, arg_0.a.x | 74516u, _wgslsmith_mod_u32(global0.b.d.x, 0u)))));
    global0 = arg_0;
    var_0 = arg_0.b.d;
    var var_1 = vec4<u32>(4294967295u, reverseBits(global0.a.x), _wgslsmith_div_u32(arg_0.c.d.x, ~min(_wgslsmith_dot_vec4_u32(global0.a, arg_2), reverseBits(var_0.x))), ~(~(~select(41347u, u_input.c, global0.b.c))));
    var var_2 = func_1(global0.c.b.yyx);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.b.b.x >> (43313u % 32u);
    global0 = func_4(func_1(vec3<i32>(global0.c.b.x, u_input.e, -1i)), global0.c.a.zz, vec4<u32>(37928u, 0u, 1u, ~u_input.d.x), global0.b.a.x);
    let var_1 = _wgslsmith_mod_i32(-1298i, var_0 >> ((global0.b.d.x << (~(~0u) % 32u)) % 32u));
    var var_2 = global0.c;
    global0 = Struct_2(~(~vec4<u32>(0u, 0u, global0.a.x, global0.b.d.x)) << (~vec4<u32>(_wgslsmith_sub_u32(12803u, u_input.d.x), ~0u, ~global0.a.x, max(0u, 27462u)) % vec4<u32>(32u)), func_1(vec3<i32>(-2147483647i, 46668i, -reverseBits(-8591i))).b, func_4(func_4(Struct_2(var_2.d & vec4<u32>(38561u, 4294967295u, var_2.d.x, u_input.c), global0.b, func_4(Struct_2(vec4<u32>(0u, var_2.d.x, 1u, global0.c.d.x), global0.c, Struct_1(vec3<f32>(813f, 741f, -275f), vec4<i32>(2147483647i, u_input.e, 1i, var_1), true, var_2.d, global0.c.e)), vec2<f32>(global0.b.a.x, var_2.a.x), global0.a, 584f).c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.a.xx)), ~var_2.d & global0.c.d, _wgslsmith_f_op_f32(var_2.a.x * _wgslsmith_div_f32(-149f, -495f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.a.x, _wgslsmith_f_op_f32(var_2.a.x * global0.b.a.x))), global0.b.d, var_2.a.x).c);
    let var_3 = select(select(vec3<bool>(var_2.d.x <= 25463u, true | var_2.e.x, !func_4(Struct_2(vec4<u32>(var_2.d.x, 4294967295u, 43171u, 0u), global0.b, global0.c), var_2.a.yz, vec4<u32>(u_input.a.x, u_input.c, 1u, global0.b.d.x), var_2.a.x).b.e.x), vec3<bool>(false, var_2.c, min(var_1, u_input.e) >= -u_input.e), global0.b.e.x | false), vec3<bool>(var_2.e.x, var_2.e.x, select(false, false, true)), select(!(!vec3<bool>(false, true, var_2.e.x)), vec3<bool>(func_1(global0.b.b.xyz).c.b.x >= -5608i, true, var_2.c), func_4(Struct_2(~global0.b.d, global0.b, func_1(vec3<i32>(var_2.b.x, -2147483647i, var_1)).b), var_2.a.zz, _wgslsmith_add_vec4_u32(max(var_2.d, vec4<u32>(20002u, u_input.a.x, 62285u, var_2.d.x)), max(global0.a, vec4<u32>(31770u, 4294967295u, 51858u, 41418u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.a.x, var_2.a.x, global0.c.e.x)))).b.c));
    global0 = Struct_2(max(reverseBits(~_wgslsmith_clamp_vec4_u32(global0.c.d, var_2.d, vec4<u32>(0u, 42665u, 13463u, global0.b.d.x))), vec4<u32>(global0.c.d.x, ~u_input.a.x, u_input.d.x | 1u, ~global0.b.d.x) & vec4<u32>(74271u, ~0u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, var_2.d.x, u_input.c), var_2.d))), Struct_1(_wgslsmith_f_op_vec3_f32(-global0.c.a), -var_2.b, (global0.b.e.x || global0.c.e.x) | true, vec4<u32>(global0.c.d.x, firstLeadingBit(var_2.d.x), ~66478u, u_input.c), !vec2<bool>(!global0.c.c, var_3.x)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-504f, 511f)), global0.b.a.x, 1371f), min((global0.b.b | vec4<i32>(var_0, 0i, 2147483647i, global0.c.b.x)) >> (_wgslsmith_sub_vec4_u32(var_2.d, vec4<u32>(u_input.a.x, 4294967295u, 0u, 0u)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(global0.c.b, reverseBits(vec4<i32>(u_input.e, global0.b.b.x, var_0, var_0)))), all(select(var_3.yx, var_2.e, global0.c.e)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_2.d.x, global0.a.x, 0u) >> (global0.c.d % vec4<u32>(32u)), reverseBits(global0.c.d)), select(var_3.yz, vec2<bool>(global0.b.c | true, true), select(global0.b.e, !vec2<bool>(var_2.e.x, false), !vec2<bool>(var_2.c, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(select(global0.b.b.yx, vec2<i32>(-2147483647i, var_1) << (u_input.d % vec2<u32>(32u)), true), vec4<f32>(-1249f, _wgslsmith_f_op_f32(-global0.c.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -294f) * _wgslsmith_f_op_f32(-var_2.a.x))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_2.a.x, -498f), -511f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(850f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.a.x, var_2.a.x))))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(548f - 1310f) * 894f)))), -92452i);
}

