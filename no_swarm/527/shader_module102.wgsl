struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: vec4<u32>,
    d: u32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-529f, -625f, 1064f);

var<private> global1: vec2<u32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec2<i32>) -> vec2<bool> {
    let var_0 = select(vec4<bool>(false, 13459u == u_input.a.x, true && (1f >= _wgslsmith_f_op_f32(1010f - arg_1.b)), false), !(!(!(!vec4<bool>(arg_0, true, true, arg_0)))), !any(select(!vec2<bool>(arg_0, true), vec2<bool>(true, arg_0), !vec2<bool>(arg_0, false))));
    var var_1 = Struct_1(false, 2927u, 54162i | arg_2.x, 708f);
    return var_0.zz;
}

fn func_2(arg_0: vec2<u32>, arg_1: i32) -> vec3<f32> {
    let var_0 = ~arg_0.x >> (u_input.a.x % 32u);
    global1 = ~u_input.a;
    global1 = reverseBits(_wgslsmith_mod_vec2_u32(select(max(vec2<u32>(7493u, 65752u), vec2<u32>(22880u, 0u)), vec2<u32>(reverseBits(19465u), arg_0.x), select(vec2<bool>(true, true), func_3(false, Struct_2(arg_1, 2351f), vec2<i32>(arg_1, arg_1)), true)), (~vec2<u32>(global1.x, 7289u) | _wgslsmith_add_vec2_u32(u_input.a, arg_0)) ^ max(u_input.a, firstTrailingBit(vec2<u32>(var_0, 5204u)))));
    let var_1 = _wgslsmith_clamp_u32(global1.x, 4294967295u, u_input.a.x);
    let var_2 = _wgslsmith_add_i32(_wgslsmith_mod_i32(-44067i, -2147483647i), abs(_wgslsmith_sub_i32(_wgslsmith_add_i32(arg_1, arg_1), _wgslsmith_mod_i32(arg_1 ^ arg_1, 5667i ^ arg_1))));
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(min(-660f, _wgslsmith_f_op_f32(max(global0.x, -869f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1005f + global0.x)))))));
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: u32) -> Struct_4 {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_2(~(vec2<u32>(arg_1.x, arg_2) >> (vec2<u32>(21806u, 1u) % vec2<u32>(32u))), arg_0 | abs(-23151i))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, -682f))), 276f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))));
    let var_0 = any(select(vec4<bool>(any(vec2<bool>(false, false)), !(arg_1.x < arg_2), true || all(vec4<bool>(false, true, true, true)), !(-1000f >= global0.x)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, any(vec2<bool>(false, false))), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false)), true)), vec4<bool>(!any(vec2<bool>(false, true)), true, true, true)));
    global1 = vec2<u32>(reverseBits(arg_1.x), ~(~arg_2) & global1.x);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-105f, 2579f, global0.x) - vec3<f32>(-1841f, -453f, 1000f)) * vec3<f32>(global0.x, global0.x, global0.x)) - vec3<f32>(_wgslsmith_f_op_f32(abs(1109f)), _wgslsmith_f_op_f32(min(524f, 522f)), _wgslsmith_f_op_f32(sign(-824f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, -639f, global0.x), vec3<f32>(global0.x, global0.x, global0.x), vec3<bool>(var_0, var_0, var_0))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, 1000f, global0.x), vec3<f32>(-507f, global0.x, global0.x))), !vec3<bool>(var_0, false, true)))))));
    var var_1 = !select(vec4<bool>(!all(vec3<bool>(var_0, var_0, true)), false || var_0, all(select(vec3<bool>(false, true, false), vec3<bool>(var_0, var_0, var_0), var_0)), var_0), !select(!vec4<bool>(var_0, false, var_0, true), vec4<bool>(var_0, true, true, var_0), arg_0 <= 50295i), false);
    return Struct_4(Struct_3(reverseBits(vec2<i32>(arg_0, arg_0) | vec2<i32>(arg_0, 2147483647i)) & vec2<i32>(36541i, arg_0 & -7078i)), vec2<bool>(false, all(select(select(vec4<bool>(var_0, false, true, true), vec4<bool>(true, true, var_0, var_1.x), vec4<bool>(var_0, var_0, false, var_0)), vec4<bool>(var_0, var_0, false, true), !vec4<bool>(var_0, var_0, true, var_1.x)))), _wgslsmith_sub_vec4_u32(min(select(vec4<u32>(188u, 64167u, 4294967295u, arg_1.x), vec4<u32>(arg_1.x, 78583u, arg_2, arg_1.x) ^ vec4<u32>(4294967295u, 44501u, global1.x, 35146u), true), _wgslsmith_div_vec4_u32(select(vec4<u32>(4294967295u, 37960u, 25822u, 4294967295u), vec4<u32>(arg_2, arg_1.x, arg_1.x, 84471u), vec4<bool>(false, true, true, false)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.x, 45398u, 39469u, u_input.a.x), vec4<u32>(arg_1.x, u_input.a.x, global1.x, 1u)))), countOneBits(vec4<u32>(~arg_2, 0u, _wgslsmith_clamp_u32(arg_1.x, global1.x, arg_1.x), 0u))), 1u, select(!select(!vec4<bool>(var_1.x, false, var_0, var_0), vec4<bool>(false, var_1.x, var_1.x, true), all(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))), vec4<bool>(var_1.x, any(func_3(var_1.x, Struct_2(0i, -798f), vec2<i32>(arg_0, arg_0))), !all(var_1.zx), false), vec4<bool>(true, func_3(true, Struct_2(arg_0, global0.x), ~vec2<i32>(-11956i, -70857i)).x, var_0, var_0)));
}

fn func_4(arg_0: Struct_4) -> vec4<bool> {
    let var_0 = arg_0.a.a.x ^ (-86493i | (i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.a.x, arg_0.a.a.x, 11363i, arg_0.a.a.x), vec4<i32>(1i, arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x))));
    let var_1 = func_1(-(-_wgslsmith_sub_i32(-2147483647i, arg_0.a.a.x) ^ firstLeadingBit(abs(var_0))), _wgslsmith_mult_vec3_u32(~(arg_0.c.yxx & arg_0.c.yyx) & vec3<u32>(1u, 1u, 1u), arg_0.c.zzw), 1u).a;
    let var_2 = Struct_3(arg_0.a.a);
    var var_3 = global0.x;
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1020f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(step(534f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1148f))))), _wgslsmith_f_op_f32(ceil(global0.x))) + vec4<f32>(_wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(floor(-1002f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x))))), _wgslsmith_f_op_f32(trunc(global0.x))));
    return arg_0.e;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2) -> Struct_3 {
    global0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, _wgslsmith_f_op_f32(abs(-1568f)), -391f)));
    global0 = vec3<f32>(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_mult_vec2_u32(u_input.a, u_input.a) & _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(42683u, u_input.a.x), u_input.a), ~u_input.a), arg_1.a)).x, 992f, _wgslsmith_f_op_f32(-arg_1.b));
    return func_1(-2174i, _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(global1.x, u_input.a.x, 4294967295u), vec3<u32>(u_input.b, 19569u, 46910u))), vec3<u32>(~120062u, 125256u, u_input.b)), vec3<u32>(max(global1.x, 0u) & countOneBits(u_input.a.x), u_input.a.x, 0u)), 21553u).a;
}

fn func_6(arg_0: bool, arg_1: bool, arg_2: Struct_3, arg_3: vec4<i32>) -> Struct_3 {
    let var_0 = vec4<u32>(global1.x, ~firstLeadingBit(~1u), u_input.a.x, abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, global1.x, 18504u, 4294967295u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global1.x, 25616u, 0u), vec4<u32>(u_input.a.x, 6932u, global1.x, 1801u)))));
    global0 = vec3<f32>(-1545f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-363f * _wgslsmith_f_op_f32(-934f + -512f)) + global0.x))));
    global1 = _wgslsmith_mod_vec2_u32(var_0.zw, ~u_input.a);
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - _wgslsmith_div_f32(global0.x, 1559f)) - _wgslsmith_f_op_f32(f32(-1f) * -1346f)), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + _wgslsmith_div_f32(-113f, global0.x)) * global0.x), global0.x)));
    global1 = ~abs(select(_wgslsmith_clamp_vec2_u32(~var_0.xz, u_input.a | u_input.a, abs(var_0.zy)), ~vec2<u32>(var_0.x, u_input.a.x), select(func_3(arg_0, Struct_2(0i, var_1.x), arg_3.yw), vec2<bool>(true, true), arg_1)));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(any(vec4<bool>(true, true, true, true)), true, func_5(func_4(func_1(0i, vec3<u32>(global1.x, u_input.b, 5555u), ~global1.x)), Struct_2(13283i, _wgslsmith_f_op_f32(sign(-144f)))), max(select(max(vec4<i32>(-41047i, 1i, -6622i, -15035i), min(vec4<i32>(10579i, 18581i, 0i, 0i), vec4<i32>(0i, -40205i, -1i, 1i))), max(vec4<i32>(27156i, 18477i, -28141i, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 0i, -1i, -1i), vec4<i32>(-22300i, -2147483647i, 1i, 0i))), vec4<bool>(false, all(vec3<bool>(true, false, true)), true, all(vec2<bool>(false, false)))), ~vec4<i32>(1i, 1i, 1i, 1i) << (vec4<u32>(u_input.a.x, countOneBits(1u), global1.x, ~u_input.a.x) % vec4<u32>(32u))));
    let var_1 = ~24525u;
    let var_2 = firstTrailingBit(_wgslsmith_clamp_i32(~(-_wgslsmith_mult_i32(var_0.a.x, -42733i)), var_0.a.x, min(-2147483647i, ~var_0.a.x & 1i)));
    global0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(112f, global0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x))))), vec3<f32>(_wgslsmith_f_op_f32(trunc(347f)), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1066f)))))));
    let var_3 = !(!vec3<bool>(_wgslsmith_f_op_f32(-global0.x) > _wgslsmith_f_op_f32(global0.x - global0.x), true, any(vec3<bool>(true, true, true))));
    global1 = ~(~select(countOneBits(vec2<u32>(7608u, global1.x)), ~(~u_input.a), func_1(-var_2, vec3<u32>(u_input.a.x, 0u, global1.x), 1u ^ var_1).b));
    var var_4 = reverseBits(~43684u);
    var var_5 = ~(~min(0u, _wgslsmith_add_u32(~0u, _wgslsmith_add_u32(global1.x, 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(1347f, 2743f)), _wgslsmith_add_u32(global1.x, 37702u), -max(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, var_0.a.x, 1i) >> (vec3<u32>(global1.x, u_input.a.x, 1u) % vec3<u32>(32u)), max(vec3<i32>(27396i, var_0.a.x, 1i), vec3<i32>(13877i, 2147483647i, var_0.a.x))), 6848i), -(_wgslsmith_clamp_i32(-var_2, ~var_2, func_1(-690i, vec3<u32>(global1.x, u_input.a.x, 41284u), 42559u).a.a.x) << (15760u % 32u)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, 732f, -1354f, global0.x), vec4<f32>(-1504f, -319f, global0.x, -115f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(699f, global0.x, global0.x, 1190f) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, global0.x, global0.x, -165f)))))))));
}

