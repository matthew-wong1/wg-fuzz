struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(true, vec3<f32>(1102f, -429f, 535f), Struct_1(63647u, false, vec2<bool>(false, false)), 0u);

var<private> global1: vec2<f32> = vec2<f32>(-629f, 1635f);

var<private> global2: Struct_2;

var<private> global3: i32;

var<private> global4: f32;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_2, arg_3: f32) -> i32 {
    global0 = Struct_2(arg_1, vec3<f32>(_wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-323f * 369f), _wgslsmith_f_op_f32(sign(global0.b.x))) + -949f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.x)) + _wgslsmith_f_op_f32(min(arg_3, -428f))))), global2.c, _wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(countOneBits(arg_0)), 32173u), abs(_wgslsmith_div_vec2_u32(min(vec2<u32>(34745u, 47743u), u_input.b), vec2<u32>(global0.c.a, 0u)))));
    let var_0 = abs(u_input.b.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(global2.b.yz, global0.b.xz))) * vec2<f32>(-2352f, 1000f)), _wgslsmith_f_op_vec2_f32(arg_2.b.yz * vec2<f32>(arg_3, _wgslsmith_f_op_f32(min(arg_2.b.x, 343f))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(arg_2.b.yy));
    return u_input.a.x;
}

fn func_2(arg_0: f32, arg_1: vec2<f32>) -> vec2<i32> {
    var var_0 = Struct_1(global2.c.a, global2.c.c.x, vec2<bool>(false, global2.a));
    let var_1 = Struct_2(!(all(vec3<bool>(false, true, true)) & any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, global0.c.b, true, global0.a), vec4<bool>(global2.c.b, true, global2.c.b, global2.a)))), global2.b, global0.c, ~27127u);
    var var_2 = Struct_2(select(any(select(vec3<bool>(var_0.c.x, true, global0.c.b), vec3<bool>(global0.c.c.x, global0.a, var_0.c.x), vec3<bool>(true, var_0.c.x, global2.a))) & all(vec4<bool>(var_0.c.x, false, var_0.c.x, false)), false, select(any(vec4<bool>(var_1.c.b, true, false, false)) | var_1.a, false, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(global0.b, vec3<f32>(-1048f, arg_0, -333f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 1154f, -172f) - vec3<f32>(653f, arg_1.x, 1000f)))))) - global0.b), global0.c, 1u);
    let var_3 = ~min(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.c.a, 4294967295u, 0u), vec3<u32>(global0.c.a, var_0.a, var_2.c.a)), firstTrailingBit(vec3<u32>(global0.c.a, 1u, global0.c.a))), ~(~vec3<u32>(u_input.b.x, global0.c.a, 0u))) | ~_wgslsmith_mod_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(9523u, var_1.d, 23382u), vec3<u32>(u_input.b.x, global0.c.a, var_0.a), vec3<u32>(var_0.a, var_2.d, 43796u)), vec3<u32>(4294967295u, global0.c.a, reverseBits(var_1.d)));
    return vec2<i32>(-64134i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -u_input.a.x, -u_input.a.x), vec3<i32>(u_input.a.x, _wgslsmith_add_i32(u_input.a.x | u_input.a.x, -15392i), max(-u_input.a.x, func_3(4294967295u, false, Struct_2(var_1.a, vec3<f32>(325f, global1.x, global0.b.x), Struct_1(4294967295u, true, var_1.c.c), var_3.x), -582f)))));
}

fn func_1(arg_0: i32, arg_1: bool) -> vec4<u32> {
    var var_0 = _wgslsmith_clamp_vec2_i32(-vec2<i32>(-1i, 2147483647i), firstTrailingBit(u_input.a.xx), func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -244f), _wgslsmith_f_op_f32(global0.b.x + -687f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.x, global1.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)))) ^ _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(~u_input.a.zx, func_2(1046f, vec2<f32>(-1207f, global1.x))), (u_input.a.yx ^ vec2<i32>(arg_0, arg_0)) >> (vec2<u32>(1u, global0.c.a) % vec2<u32>(32u))));
    var var_1 = select(!(!(!(!vec4<bool>(false, false, global2.a, global2.a)))), vec4<bool>(true, any(select(vec4<bool>(true, global2.a, global2.a, true), !vec4<bool>(arg_1, false, false, global0.c.b), vec4<bool>(arg_1, arg_1, false, true))), all(vec2<bool>(arg_1, true)), any(!(!vec4<bool>(global2.c.c.x, false, false, global0.a)))), any(!select(!vec2<bool>(true, global0.a), !vec2<bool>(false, arg_1), select(global0.c.c, vec2<bool>(true, arg_1), true))));
    let var_2 = vec3<bool>(true, true, global0.a);
    var var_3 = Struct_1(_wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global2.d, 26941u) << (vec3<u32>(u_input.b.x, u_input.b.x, 0u) % vec3<u32>(32u)), max(vec3<u32>(u_input.b.x, 43833u, 11388u), vec3<u32>(global2.d, u_input.b.x, global0.c.a))), reverseBits(97148u & (0u << (global2.c.a % 32u)))), !all(vec3<bool>(all(vec3<bool>(true, true, false)), arg_1, true)), !(!select(select(global0.c.c, vec2<bool>(global2.a, false), global2.c.c), select(global2.c.c, var_2.zz, var_1.wx), any(vec4<bool>(false, true, false, global2.c.c.x)))));
    var var_4 = Struct_1(~56213u, global0.a, select(global0.c.c, vec2<bool>((global1.x >= 1000f) | (u_input.b.x < var_3.a), global2.c.c.x), !any(vec2<bool>(arg_1, false))));
    return vec4<u32>(~abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.c.a, 42838u, u_input.b.x, var_3.a), vec4<u32>(78804u, global2.d, 1u, var_4.a))), ~_wgslsmith_mult_u32(0u, 0u), 25107u, var_4.a);
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: u32) -> Struct_2 {
    let var_0 = ~(func_1(-_wgslsmith_clamp_i32(-39997i, -1i, 0i), global0.c.b).wyy | arg_1.zyz);
    let var_1 = ~vec4<i32>(-28892i, ~_wgslsmith_div_i32(-47593i, 1i), -abs(u_input.a.x), _wgslsmith_mult_i32(9691i, u_input.a.x ^ u_input.a.x)) ^ ~(-(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)));
    var var_2 = firstTrailingBit(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, arg_0, 16173u, arg_0), arg_1)) & arg_1);
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2.b.x, -495f), global0.b.xy)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.b.x, global1.x)))), _wgslsmith_f_op_vec2_f32(trunc(global0.b.yx))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.x, global2.b.x), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.b.x, global1.x))), true)), global2.b.yy), false)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(global0.b.xy)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, _wgslsmith_f_op_f32(-global2.b.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global2.b.xz, global2.b.yx, global0.c.b)))), vec2<bool>(all(vec4<bool>(global2.a, global2.a, global2.a, false)), global0.b.x >= global2.b.x))));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-362f, 296f))))), -1315f);
    return Struct_2(!global0.a, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.b.x, -704f, global1.x))))) + global0.b))), global2.c, _wgslsmith_sub_u32(u_input.b.x, 1u & func_1(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, -2147483647i), u_input.a.yx), true).x));
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: vec2<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-global2.b.x);
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-global1.x)));
    let var_1 = true;
    global3 = _wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -1i, firstTrailingBit(reverseBits(-1i))) >> (vec2<u32>(func_4(1u, _wgslsmith_mult_vec4_u32(vec4<u32>(global2.c.a, 1u, 1u, global0.d), vec4<u32>(arg_0.c.a, arg_2.x, 1u, arg_0.d)), ~27427u).c.a, max(1u, ~14980u)) % vec2<u32>(32u)), -(~(-_wgslsmith_sub_vec2_i32(u_input.a.yx, u_input.a.xz))));
    let var_2 = u_input.a << (vec3<u32>(abs(arg_2.x), countOneBits(select(1u, global0.d, arg_0.a)) ^ arg_0.d, ~34626u) % vec3<u32>(32u));
    return Struct_2(any(vec4<bool>(var_1, true, global2.a, true)), global0.b, func_4(_wgslsmith_sub_u32(0u, firstTrailingBit(global0.c.a)) >> (select(_wgslsmith_div_u32(17230u, u_input.b.x), ~9796u, true) % 32u), ~(vec4<u32>(global0.c.a, arg_0.d, arg_0.d, 0u) >> (select(vec4<u32>(44934u, arg_2.x, 145124u, arg_2.x), vec4<u32>(arg_2.x, 1u, 1u, arg_0.c.a), true) % vec4<u32>(32u))), 1u).c, global2.c.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1297f) + global1.x), global0.b.x, global1.x, _wgslsmith_f_op_f32(trunc(global1.x))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global2.b.x, 862f, 1784f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(428f, global1.x, global2.b.x, global2.b.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(608f, -649f, global2.b.x, -349f)))))));
    var var_1 = u_input.a;
    global0 = func_5(func_4(min(~1u, firstLeadingBit(~78336u)), max(func_1(-var_1.x, true), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, global0.d, 60285u, global0.d), ~vec4<u32>(global2.d, 35993u, 4294967295u, 0u))), global2.d), _wgslsmith_mult_i32(1i, _wgslsmith_add_i32(-2147483647i, var_1.x)) >> (21923u % 32u), abs(u_input.b));
    global0 = Struct_2(var_0.x > _wgslsmith_f_op_f32(global0.b.x - _wgslsmith_f_op_f32(-1730f - -620f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), -832f, 811f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1129f, 257f, global0.b.x))), _wgslsmith_f_op_vec3_f32(-func_5(Struct_2(global0.a, global2.b, global2.c, u_input.b.x), 1i, u_input.b).b)))), global2.c, ~min(~firstTrailingBit(0u), abs(25518u)));
    let var_2 = func_5(func_5(func_5(Struct_2(!global0.c.c.x, _wgslsmith_f_op_vec3_f32(var_0.xyw + global0.b), global2.c, global0.d << (global0.c.a % 32u)), -1i, u_input.b), _wgslsmith_mod_i32(func_3(~global0.d, global0.c.a <= 1u, func_5(Struct_2(global2.a, vec3<f32>(612f, global1.x, -1000f), global0.c, 1u), 1i, vec2<u32>(u_input.b.x, 23110u)), global1.x), countOneBits(~u_input.a.x)), _wgslsmith_div_vec2_u32(~(~vec2<u32>(0u, 1u)), ~(~u_input.b))), var_1.x, u_input.b).c;
    let x = u_input.a;
    s_output = StorageBuffer(global0.b);
}

