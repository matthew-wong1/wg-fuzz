struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec2<i32>) -> vec3<u32> {
    var var_0 = Struct_1(global0.a, -2147483647i & global0.d.x, false, global0.d);
    return _wgslsmith_add_vec3_u32(~min(abs(vec3<u32>(global0.a, 33167u, var_0.a)), vec3<u32>(11970u, 22479u, global0.a)) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(max(4294967295u, 53816u), 36212u, ~global0.a), reverseBits(~vec3<u32>(var_0.a, 1u, u_input.b))), vec3<u32>(32771u, u_input.e, 1u));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec3<i32>, arg_3: vec3<i32>) -> vec4<bool> {
    let var_0 = Struct_1(12736u, _wgslsmith_add_i32(1i, 40818i), global0.c, select(firstLeadingBit(vec3<i32>(~12174i, arg_3.x, u_input.a.x)), vec3<i32>(-abs(-2147483647i), -firstTrailingBit(-1i), _wgslsmith_dot_vec3_i32(arg_3, vec3<i32>(arg_3.x, u_input.a.x, -1494i)) ^ 1i), global0.c));
    var var_1 = Struct_1(u_input.b, _wgslsmith_mult_i32(-_wgslsmith_div_i32(1i, ~2147483647i), arg_2.x), !(!global0.c), ~(vec3<i32>(-10615i, arg_3.x, arg_2.x) >> ((vec3<u32>(1u, 0u, u_input.b) | vec3<u32>(var_0.a, 14471u, 1u)) % vec3<u32>(32u))) >> (func_3(select(vec2<i32>(global0.d.x, global0.d.x), -u_input.a, select(vec2<bool>(global0.c, global0.c), vec2<bool>(var_0.c, true), true))) % vec3<u32>(32u)));
    var var_2 = var_0;
    return vec4<bool>(!(!var_2.c), !(!(true | !var_1.c)), !(u_input.a.x <= -10540i), any(vec4<bool>(true, _wgslsmith_dot_vec2_i32(var_1.d.xy, vec2<i32>(0i, 1i)) < arg_1, true || (var_1.c & true), var_1.c || true)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_1 {
    global0 = Struct_1(53683u, _wgslsmith_add_i32(2147483647i, ~arg_1.d.x), true, vec3<i32>(-65484i | -_wgslsmith_div_i32(33502i, global0.d.x), firstLeadingBit(max(_wgslsmith_div_i32(2147483647i, u_input.a.x), 52042i)), -15044i));
    global0 = Struct_1(~(~4294967295u), 2147483647i, any(vec2<bool>(false, all(!vec3<bool>(global0.c, arg_1.c, true)))), ~(~global0.d));
    global0 = Struct_1(4294967295u, global0.b, all(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1110f), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a.x), firstLeadingBit(u_input.a)), arg_1.d, global0.d)), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(arg_1.b, -1i, arg_1.b), firstLeadingBit(arg_1.d)));
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-133f, -152f, 1205f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-482f, 419f, 678f) * vec3<f32>(457f, -1000f, 186f))) + vec3<f32>(1000f, 2116f, _wgslsmith_f_op_f32(-196f * -914f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -341f), _wgslsmith_f_op_f32(ceil(-1000f)), !global0.c))), _wgslsmith_f_op_f32(ceil(1000f)), 407f), vec3<bool>(!all(func_2(-687f, arg_1.b, vec3<i32>(global0.b, 1i, -2147483647i), global0.d).zxy), all(select(func_2(1748f, global0.d.x, arg_1.d, global0.d).yzx, !vec3<bool>(true, arg_1.c, global0.c), !arg_1.c)), arg_1.c)));
    global0 = arg_1;
    return Struct_1(global0.a, ~1i, !arg_0.x, _wgslsmith_div_vec3_i32(reverseBits(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(3950i, arg_1.d.x, arg_1.b), vec3<i32>(2147483647i, global0.d.x, global0.d.x)), global0.d)), abs(~vec3<i32>(2147483647i, global0.d.x, u_input.a.x))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    global0 = func_4(select(!(!select(vec3<bool>(global0.c, global0.c, global0.c), vec3<bool>(false, true, arg_0), arg_0)), vec3<bool>(all(func_2(-646f, global0.b, vec3<i32>(u_input.a.x, global0.d.x, -109i), global0.d)), false, false), !(global0.c & false)), Struct_1(select(countOneBits(1u), 47287u, true), reverseBits(~(~global0.d.x)), false, vec3<i32>(-global0.b, global0.d.x, _wgslsmith_dot_vec2_i32(u_input.a, u_input.a)) ^ _wgslsmith_sub_vec3_i32(global0.d, -global0.d)));
    let var_0 = _wgslsmith_add_i32(-2147483647i, firstLeadingBit(~countOneBits(-29121i)) & _wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -38512i, -1i, ~(-2147483647i), select(global0.d.x, global0.d.x, arg_0)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.d.x, -1i), global0.d.zz), global0.d.x, -13892i, u_input.a.x)));
    global0 = func_4(select(vec3<bool>(!(!arg_0), true, false), vec3<bool>(reverseBits(var_0) != ~10495i, !any(vec3<bool>(arg_0, true, global0.c)), any(!vec3<bool>(arg_0, global0.c, global0.c))), true), func_4(func_2(_wgslsmith_f_op_f32(round(379f)), 26292i, vec3<i32>(_wgslsmith_sub_i32(-7644i, -1i), i32(-1i) * -21984i, ~global0.b), abs(vec3<i32>(2302i, global0.d.x, 6698i) >> (vec3<u32>(u_input.b, 1u, global0.a) % vec3<u32>(32u)))).xxw, Struct_1(_wgslsmith_mod_u32(23968u, u_input.c), u_input.a.x | _wgslsmith_div_i32(31749i, var_0), false, global0.d)));
    let var_1 = Struct_1(~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global0.a, 66108u), vec2<u32>(75368u, 53776u)) >> (~vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u)), abs(~vec2<u32>(36584u, 122495u))), u_input.a.x, func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1631f * -115f))), -20498i, global0.d, global0.d).x, _wgslsmith_clamp_vec3_i32(vec3<i32>(-91898i, -13557i, abs(global0.b) ^ -global0.b), vec3<i32>(-(~u_input.a.x), global0.b, -global0.d.x << (48514u % 32u)), global0.d));
    global0 = var_1;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(true == global0.c);
    var var_0 = Struct_1(u_input.e, global0.b, func_2(_wgslsmith_f_op_f32(1000f - -1330f), -2340i, vec3<i32>(max(countOneBits(global0.b), _wgslsmith_mult_i32(13408i, u_input.d)), 63578i, -firstTrailingBit(u_input.d)), (global0.d | _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -1i), global0.d)) & vec3<i32>(0i, 33818i, 7663i >> (global0.a % 32u))).x, func_1(!global0.c).d);
    var var_1 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~(~vec2<u32>(1u, 1u)), vec2<u32>(var_0.a, u_input.e)), vec2<u32>(29909u, ~_wgslsmith_mod_u32(0u, 12622u)));
    let x = u_input.a;
    s_output = StorageBuffer(260f, ~vec4<i32>(~(2147483647i | global0.d.x), u_input.d, global0.b, 2147483647i), _wgslsmith_div_f32(345f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1243f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(880f)))))));
}

