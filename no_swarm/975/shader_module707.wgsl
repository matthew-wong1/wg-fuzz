struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32, arg_1: f32) -> Struct_1 {
    return Struct_1(true, 1000f, u_input.a.x, ~(~(~(~vec4<i32>(arg_0, 2147483647i, -1i, u_input.a.x)))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(func_2(33253i, 359f).b, 942f, arg_0.b)))));
    var var_1 = vec4<bool>(arg_0.a, arg_0.a, !arg_0.a, !arg_0.a);
    var_1 = select(select(vec4<bool>(any(!vec4<bool>(true, false, false, arg_0.a)), var_1.x, true, true), select(!vec4<bool>(var_1.x, true, arg_0.a, var_1.x), !select(vec4<bool>(arg_0.a, true, arg_0.a, true), vec4<bool>(var_1.x, var_1.x, var_1.x, arg_0.a), vec4<bool>(var_1.x, false, var_1.x, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, var_1.x, arg_0.a, arg_0.a), select(vec4<bool>(var_1.x, arg_0.a, true, false), vec4<bool>(var_1.x, false, var_1.x, false), true))), select(vec4<bool>(false | arg_0.a, !var_1.x, var_1.x, true), vec4<bool>(true, false, var_1.x, arg_0.a), !select(true, var_1.x, false))), !(!(!select(vec4<bool>(var_1.x, false, false, false), vec4<bool>(var_1.x, false, arg_0.a, true), vec4<bool>(arg_0.a, var_1.x, var_1.x, var_1.x)))), !select(!(!vec4<bool>(true, var_1.x, arg_0.a, var_1.x)), select(select(vec4<bool>(var_1.x, false, false, true), vec4<bool>(false, arg_0.a, var_1.x, false), true), vec4<bool>(var_1.x, true, true, false), var_1.x), true));
    let var_2 = _wgslsmith_mult_i32(22663i, -arg_0.c);
    var_1 = !select(!vec4<bool>(var_1.x, any(vec4<bool>(true, false, false, var_1.x)), any(vec4<bool>(true, false, var_1.x, var_1.x)), all(vec4<bool>(true, var_1.x, var_1.x, arg_0.a))), select(!(!vec4<bool>(var_1.x, arg_0.a, true, true)), !select(vec4<bool>(false, true, true, arg_0.a), vec4<bool>(true, var_1.x, true, false), vec4<bool>(false, false, false, true)), select(select(vec4<bool>(var_1.x, true, arg_0.a, arg_0.a), vec4<bool>(true, arg_0.a, arg_0.a, false), vec4<bool>(arg_0.a, arg_0.a, var_1.x, false)), select(vec4<bool>(true, arg_0.a, false, true), vec4<bool>(false, arg_0.a, false, arg_0.a), vec4<bool>(arg_0.a, false, arg_0.a, true)), var_1.x)), vec4<bool>(false | func_2(-1i, -427f).a, false, true | all(vec2<bool>(var_1.x, false)), !any(var_1.xy)));
    return arg_0.d.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> vec4<i32> {
    var var_0 = Struct_1(all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-912f * arg_0.b), 1f, any(!select(vec3<bool>(false, false, arg_0.a), vec3<bool>(false, false, arg_0.a), arg_0.a)))), select(func_2(-(arg_1.x << (0u % 32u)), -270f).d.x, firstTrailingBit(-1i), !(!(!arg_0.a))), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(arg_1, ~vec4<i32>(arg_1.x, arg_0.c, arg_1.x, u_input.a.x) | vec4<i32>(arg_0.c, arg_1.x, -1i, arg_1.x)), _wgslsmith_div_vec4_i32(-(vec4<i32>(28922i, -2147483647i, u_input.a.x, arg_0.c) | arg_1), -firstTrailingBit(arg_0.d))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, -858f)))) * vec2<f32>(var_0.b, var_0.b)) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) * 733f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(537f + 1000f) + var_0.b)), _wgslsmith_f_op_f32(step(2273f, var_0.b))));
    let var_2 = vec2<u32>(1u, _wgslsmith_add_u32(countOneBits(max(countOneBits(1701u), abs(62640u))), 1u));
    var_0 = Struct_1(!all(select(vec4<bool>(true, false, var_0.a, false), !vec4<bool>(arg_0.a, var_0.a, true, arg_0.a), any(vec2<bool>(arg_0.a, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(27158i, arg_0.b).b * _wgslsmith_f_op_f32(-arg_0.b)))) - _wgslsmith_f_op_f32(-var_1.x)), select(max(select(var_0.d.x, arg_1.x, var_0.a), i32(-1i) * -1i), 2147483647i >> (var_2.x % 32u), all(vec2<bool>(var_0.a, false))) << ((var_2.x & countOneBits(1u)) % 32u), _wgslsmith_sub_vec4_i32(select(abs(vec4<i32>(u_input.a.x, 22828i, 6774i, -2147483647i) >> (vec4<u32>(var_2.x, 0u, 49102u, 72854u) % vec4<u32>(32u))), firstLeadingBit(firstTrailingBit(vec4<i32>(arg_0.d.x, -39420i, 2147483647i, -1i))), vec4<bool>(true, false, func_2(2147483647i, var_0.b).a, false)), arg_1));
    var_0 = arg_0;
    return -arg_0.d;
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = u_input.b;
    let var_1 = ~u_input.a.x;
    let var_2 = func_4(func_2(~(-1i), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(262f - _wgslsmith_f_op_f32(-arg_0))))), ~vec4<i32>(_wgslsmith_div_i32(-1i, var_1), func_3(Struct_1(true, arg_0, -10945i, vec4<i32>(var_0, var_0, 2898i, var_1))), var_0, var_1) << (vec4<u32>(1933u, _wgslsmith_mult_u32(1u, 0u), ~1u, 4294967295u) % vec4<u32>(32u)));
    let var_3 = _wgslsmith_f_op_f32(trunc(arg_0));
    var var_4 = Struct_1(true, _wgslsmith_f_op_f32(var_3 * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2011f)))))), 1i, var_2);
    return Struct_1(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-787f, _wgslsmith_div_f32(2269f, -737f))) * _wgslsmith_f_op_f32(floor(-570f))), -1i, var_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(142f + _wgslsmith_f_op_f32(step(-2275f, -1011f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -247f) + -223f))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(543f)))) * -1017f));
    var var_2 = Struct_1(var_0.a, var_0.b, _wgslsmith_add_i32(var_0.c, var_0.c), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.b, -2489i), ~u_input.a.x) << (_wgslsmith_clamp_u32(countOneBits(15125u), 0u, 1u) % 32u), _wgslsmith_sub_i32(func_4(func_1(-1885f), vec4<i32>(-2147483647i, -1i, -1i, 2147483647i)).x, u_input.a.x), var_0.c, 2147483647i));
    var_2 = Struct_1(u_input.b != (var_2.d.x | var_2.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)), -59303i, _wgslsmith_mult_vec4_i32(countOneBits(~(vec4<i32>(0i, 60850i, -7174i, 0i) & vec4<i32>(var_2.d.x, var_2.c, var_2.c, 1i))), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.d.x, func_2(-1i, -793f).d.x, countOneBits(-32019i), firstTrailingBit(-18201i)), _wgslsmith_add_vec4_i32(max(var_0.d, vec4<i32>(-39301i, -12716i, 2147483647i, var_0.c)), select(vec4<i32>(var_0.d.x, var_0.c, var_0.d.x, u_input.a.x), vec4<i32>(var_0.d.x, -2147483647i, -2147483647i, -2147483647i), var_0.a)))));
    var_0 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-321f)) * var_1));
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(133f, _wgslsmith_f_op_f32(var_1 + -340f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -236f)))), 1260f, 179f) * vec3<f32>(var_2.b, var_2.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-101f, -385f)), _wgslsmith_div_f32(1215f, _wgslsmith_f_op_f32(f32(-1f) * -481f)))));
    let var_4 = -2147483647i >> (select(countOneBits(0u), 1u, var_0.a) % 32u);
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d.zw);
}

