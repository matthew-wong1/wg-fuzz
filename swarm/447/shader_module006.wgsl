struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec3<i32>;

var<private> global2: vec4<i32> = vec4<i32>(2147483647i, 2147483647i, 14881i, 1i);

var<private> global3: Struct_1 = Struct_1(23809u, vec2<u32>(4294967295u, 1u));

var<private> global4: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: i32, arg_1: i32) -> i32 {
    global4 = Struct_1(global4.a, global3.b);
    global3 = Struct_1(_wgslsmith_sub_u32(global4.a, max(_wgslsmith_sub_u32(global4.a, _wgslsmith_add_u32(global3.a, 25114u)), 49334u)), ~global4.b);
    let var_0 = Struct_1(abs(min(47945u, 35517u)), global4.b);
    let var_1 = select(select(select(vec4<bool>(all(vec4<bool>(true, true, false, true)), true, false, any(vec2<bool>(false, true))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), false), select(select(vec4<bool>(false, false, true, true), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true)), select(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true)), false), !((global4.a >> (_wgslsmith_div_u32(6119u, var_0.b.x) % 32u)) < ~firstTrailingBit(40710u)));
    var var_2 = true;
    return abs(arg_0);
}

fn func_2() -> vec2<u32> {
    let var_0 = vec2<i32>(_wgslsmith_mult_i32(global1.x, func_3(~0i, (i32(-1i) * -1i) & _wgslsmith_mult_i32(2147483647i, u_input.a))), u_input.a);
    let var_1 = any(vec2<bool>(true, true));
    var var_2 = !vec3<bool>(_wgslsmith_f_op_f32(select(1513f, 904f, false)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1703f) - _wgslsmith_f_op_f32(1427f - 1324f)), all(!select(vec4<bool>(false, var_1, var_1, true), vec4<bool>(var_1, true, var_1, false), var_1)), var_1);
    var var_3 = !select(select(select(vec3<bool>(false, true, var_1), select(vec3<bool>(true, var_1, var_2.x), vec3<bool>(true, var_2.x, false), vec3<bool>(var_1, false, false)), select(vec3<bool>(false, var_1, var_2.x), vec3<bool>(var_1, var_1, var_1), vec3<bool>(var_2.x, var_1, var_2.x))), vec3<bool>(any(vec4<bool>(true, false, var_2.x, false)), select(var_2.x, var_1, var_1), any(vec3<bool>(true, false, var_1))), var_1), select(vec3<bool>(true, var_2.x, true), select(!vec3<bool>(false, var_1, var_2.x), vec3<bool>(true, false, true), true), _wgslsmith_f_op_f32(sign(-605f)) < 1432f), true);
    let var_4 = ~var_0.x | global1.x;
    return vec2<u32>(countOneBits(min(abs(max(98536u, 12792u)), 16409u)), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(global3.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global4.a, global3.b.x, global4.a), vec4<u32>(4294967295u, global3.a, 4294967295u, global3.b.x)), 79256u), ~1u) << ((~(global4.a | 0u) | global3.a) % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = abs(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, arg_0.a, arg_0.b.x, global4.a), vec4<u32>(var_0.b.x, arg_1, global3.a, 19239u)), var_0.b.x) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1, arg_1), ~arg_0.b) % vec2<u32>(32u)), vec2<u32>(~select(1u, 69477u, arg_2.x), global4.a)));
    let var_2 = Struct_1(~max(13489u, ~global4.b.x) << (countOneBits(101768u) % 32u), vec2<u32>(~((4294967295u ^ var_0.a) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 10871u), global3.b) % 32u)), global3.a));
    let var_3 = select(arg_2, vec2<bool>((0i < global2.x) == all(!vec4<bool>(arg_2.x, arg_2.x, false, true)), (_wgslsmith_add_u32(arg_0.a, var_0.a) >> (_wgslsmith_sub_u32(1u, arg_1) % 32u)) != _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(var_2.b, arg_0.b), var_1.x)), true);
    var var_4 = -109f;
    return Struct_1(~_wgslsmith_mult_u32(arg_0.a, ~(~4294967295u)), global4.b ^ ~var_2.b);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec4_i32(-abs(vec4<i32>(func_3(4223i, global2.x), ~(-16036i), countOneBits(0i), global2.x)), ~_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(0i, u_input.a, global1.x, global1.x)) << (vec4<u32>(7761u, 0u, 18731u, arg_0.a) % vec4<u32>(32u)), vec4<i32>(21295i, 0i ^ global2.x, 1i, global1.x)));
    let var_1 = -vec4<i32>(global1.x >> (1u % 32u), -func_3(global1.x, _wgslsmith_mod_i32(0i, 2147483647i)), max(countOneBits(-2147483647i), -12961i & _wgslsmith_sub_i32(global2.x, global1.x)), firstLeadingBit(_wgslsmith_sub_i32(global1.x, 2147483647i)) >> ((global3.a >> (~global3.a % 32u)) % 32u));
    var var_2 = ~countOneBits(vec3<u32>(~arg_0.b.x, firstTrailingBit(~15032u), _wgslsmith_clamp_u32(2098u, 1u, 0u)));
    let var_3 = true;
    global0 = var_3;
    return Struct_1(_wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, arg_0.b.x), vec2<u32>(global3.b.x, 1u)), global4.a), vec2<u32>(abs(~arg_0.b.x) >> (_wgslsmith_dot_vec2_u32(global3.b, arg_0.b) % 32u), var_2.x & 5138u));
}

fn func_1() -> u32 {
    let var_0 = -1487f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-196f))) - _wgslsmith_div_f32(-203f, _wgslsmith_f_op_f32(floor(779f)))));
    var var_1 = global2.zx;
    var var_2 = Struct_1(global3.a >> (max(8816u, _wgslsmith_sub_u32(1u, 0u)) % 32u), select(vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(global4.b.x, 4294967295u, global4.a, global4.b.x), vec4<u32>(4294967295u, global3.a, 67700u, 24534u)), global4.a), global4.b, true));
    var var_3 = func_5(func_4(Struct_1(6527u, func_2()), 0u, vec2<bool>(true, !all(vec4<bool>(var_0, true, var_0, false)))));
    let var_4 = func_5(Struct_1(abs(~(var_2.a & global3.a)), _wgslsmith_mod_vec2_u32(firstTrailingBit(var_3.b << (vec2<u32>(var_2.b.x, 4294967295u) % vec2<u32>(32u))), ~(~vec2<u32>(var_2.a, 105217u)))));
    return min(0u, 4294967295u) << (~global3.b.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_1(firstTrailingBit(10894u), ~vec2<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(global4.b.x, 4294967295u), _wgslsmith_mod_u32(1u, global4.a)), _wgslsmith_add_u32(global4.a, global3.b.x) >> (4294967295u % 32u)));
    global4 = Struct_1(_wgslsmith_mult_u32(1u, 1u & (global3.b.x >> (global4.b.x % 32u))) | _wgslsmith_div_u32(~_wgslsmith_clamp_u32(global3.a, global3.a, 1u), _wgslsmith_div_u32(~global4.b.x, 1u)), reverseBits(vec2<u32>(_wgslsmith_mod_u32(1u, func_1()), global4.b.x)));
    global1 = global2.zzz;
    var var_0 = func_4(func_5(Struct_1(min(9388u, global4.a) ^ _wgslsmith_mult_u32(23114u, global4.a), _wgslsmith_div_vec2_u32(select(vec2<u32>(global3.a, global4.b.x), vec2<u32>(global3.b.x, 4294967295u), true), _wgslsmith_div_vec2_u32(global4.b, vec2<u32>(75119u, 4294967295u))))), global4.a, select(vec2<bool>(false, firstLeadingBit(1i) <= ~global1.x), !vec2<bool>(all(vec3<bool>(false, true, true)), true), vec2<bool>(true, true)));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(2014f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1398f))))), 125f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -165f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-128f, -1938f))), true))) + vec3<f32>(1597f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -918f))))), _wgslsmith_f_op_f32(1152f + _wgslsmith_f_op_f32(1203f - -1106f))));
    global2 = -(vec4<i32>(9520i << (1u % 32u), -2147483647i, (i32(-1i) * -5793i) ^ _wgslsmith_mult_i32(global2.x, global1.x), _wgslsmith_sub_i32(0i, -global2.x)) ^ countOneBits(-vec4<i32>(u_input.a, -2147483647i, 25113i, global2.x) >> (vec4<u32>(global3.a, var_0.b.x, 1u, global4.a) % vec4<u32>(32u))));
    var var_2 = -select(_wgslsmith_mod_vec4_i32(vec4<i32>(abs(u_input.a), -global2.x, i32(-1i) * -1i, ~18952i), select(-vec4<i32>(u_input.a, global1.x, -1i, 0i), -vec4<i32>(31262i, global2.x, u_input.a, 36247i), true)), -_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -1i, 2147483647i, global2.x), vec4<i32>(u_input.a, global1.x, global1.x, global1.x)), vec4<i32>(-50962i, -2147483647i, -1i, -4327i), vec4<i32>(u_input.a, 2147483647i, -2647i, -16951i)), vec4<bool>(true, true, true, true));
    let var_3 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(select((vec4<u32>(0u, global3.a, 23076u, global3.b.x) ^ vec4<u32>(global3.b.x, 42067u, global3.b.x, 30331u)) >> (select(vec4<u32>(var_0.a, 4294967295u, 1u, 36168u), vec4<u32>(global4.a, 1u, 49935u, 0u), true) % vec4<u32>(32u)), ~vec4<u32>(global3.a, 68991u, global3.a, global3.b.x), vec4<bool>(true, true, select(false, true, false), select(true, true, false))), abs(vec4<u32>(4294967295u, global4.b.x, var_0.b.x, 59893u)) | vec4<u32>(_wgslsmith_div_u32(global3.a, 38991u), ~global3.a, func_4(Struct_1(global3.b.x, vec2<u32>(4294967295u, 113179u)), global3.a, vec2<bool>(false, true)).a, ~11248u)), select(max(vec4<u32>(global4.b.x, 74578u, global3.a, global3.a), vec4<u32>(global3.b.x, 56275u, 4294967295u, var_0.b.x) << (vec4<u32>(var_0.a, 131240u, global4.a, 63142u) % vec4<u32>(32u))) << (vec4<u32>(firstLeadingBit(4294967295u), abs(global3.a), ~global3.b.x, func_5(Struct_1(var_0.b.x, global4.b)).a) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(50520u, 0u, global3.b.x, 4294967295u) ^ ~vec4<u32>(global3.b.x, global4.a, var_0.a, global3.b.x), ~countOneBits(vec4<u32>(8260u, 37373u, 0u, var_0.b.x))), false));
    let var_4 = !select(all(!select(vec2<bool>(true, false), vec2<bool>(false, false), false)), true & !(var_2.x == -2147483647i), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(_wgslsmith_div_u32(~_wgslsmith_add_u32(global4.b.x, 0u), _wgslsmith_add_u32(var_0.b.x, 24478u)), 0u), var_0.b, -(~global1.x));
}

