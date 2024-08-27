struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    var var_0 = Struct_1(vec2<bool>(true, true), ~(~global0.b), -2147483647i);
    var_0 = Struct_1(!vec2<bool>(global0.a.x, arg_1.a.x), ~(~(~33468u)), _wgslsmith_clamp_i32(var_0.c, _wgslsmith_add_i32(reverseBits(-2147483647i >> (u_input.a.x % 32u)), firstLeadingBit(_wgslsmith_div_i32(global0.c, 1i))), (global0.c ^ -var_0.c) | arg_1.c.c));
    let var_1 = select(vec3<u32>(13589u, arg_0.c.b, select(0u, arg_1.c.b, var_0.a.x)), _wgslsmith_sub_vec3_u32(u_input.a, u_input.a), !vec3<bool>(false, false, 2147483647i != var_0.c));
    var var_2 = Struct_2(select(vec2<bool>(!any(arg_1.a), arg_1.a.x), select(!select(var_0.a, arg_0.a, vec2<bool>(global0.a.x, var_0.a.x)), !(!arg_0.c.a), select(!vec2<bool>(var_0.a.x, true), arg_1.c.a, select(arg_1.a, arg_0.d.a, vec2<bool>(false, true)))), var_0.a.x), arg_0.b, arg_0.d, arg_1.c);
    let var_3 = true;
    return var_0.c;
}

fn func_2() -> f32 {
    global0 = Struct_1(!global0.a, (9550u << (global0.b % 32u)) ^ ~(~26538u), _wgslsmith_mult_i32(~select(1i, global0.c >> (4294967295u % 32u), true), 1i));
    let var_0 = -max(~26131i, _wgslsmith_sub_i32(func_3(Struct_2(vec2<bool>(global0.a.x, true), vec4<f32>(-186f, 430f, -112f, -393f), Struct_1(vec2<bool>(false, global0.a.x), 4294967295u, 5853i), Struct_1(global0.a, 1u, global0.c)), Struct_2(global0.a, vec4<f32>(-439f, -398f, 556f, -841f), Struct_1(vec2<bool>(global0.a.x, true), u_input.a.x, global0.c), Struct_1(vec2<bool>(global0.a.x, global0.a.x), u_input.a.x, global0.c))), firstTrailingBit(40735i) >> (_wgslsmith_add_u32(18910u, global0.b) % 32u)));
    let var_1 = i32(-1i) * -_wgslsmith_mult_i32(22898i, -1i);
    var var_2 = Struct_2(global0.a, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1397f), -1450f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -699f)), 1f)), 1f), Struct_1(global0.a, ~((1u & u_input.a.x) << (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 32335u, u_input.a.x), u_input.a) % 32u)), ~(~0i)), Struct_1(select(vec2<bool>(any(vec4<bool>(global0.a.x, true, false, global0.a.x)), global0.a.x), vec2<bool>(global0.a.x, global0.a.x && global0.a.x), vec2<bool>(any(vec3<bool>(global0.a.x, true, true)), false)), 0u, 20986i));
    global0 = Struct_1(!select(select(select(var_2.d.a, vec2<bool>(global0.a.x, true), false), !vec2<bool>(global0.a.x, false), false), !vec2<bool>(var_2.c.a.x, global0.a.x), countOneBits(var_0) >= abs(-23713i)), ~abs(27589u), min(_wgslsmith_div_i32(global0.c, var_2.c.c), (global0.c & global0.c) << (((0u << (1u % 32u)) << ((global0.b | var_2.d.b) % 32u)) % 32u)));
    return _wgslsmith_f_op_f32(1264f + -480f);
}

fn func_1(arg_0: u32) -> vec3<bool> {
    var var_0 = vec4<f32>(1f, -1000f, 403f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(781f - 787f))))), -442f));
    var var_1 = vec2<bool>(all(select(select(global0.a, select(global0.a, global0.a, vec2<bool>(global0.a.x, global0.a.x)), 726f != var_0.x), global0.a, true)), true);
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(977f, _wgslsmith_f_op_f32(2229f - var_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_0.x, -863f, true)))), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2530f))));
    var var_2 = abs(vec2<u32>(global0.b, ~(~global0.b)));
    var var_3 = _wgslsmith_sub_u32(reverseBits(min(25728u ^ var_2.x, 4294967295u >> (u_input.a.x % 32u)) >> (1u % 32u)), global0.b);
    return !vec3<bool>(var_1.x, all(!select(vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global0.a.x), vec4<bool>(var_1.x, false, var_1.x, var_1.x), false)), !global0.a.x);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    global0 = Struct_1(global0.a, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(~4294967295u, u_input.a.x >> (52894u % 32u)), _wgslsmith_add_vec2_u32(vec2<u32>(arg_2.b, global0.b), arg_3.zw) >> (arg_3.zx % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(~_wgslsmith_mod_vec2_u32(arg_3.wy, vec2<u32>(4294967295u, arg_2.b)), ~u_input.a.zy << (~vec2<u32>(global0.b, 24086u) % vec2<u32>(32u)))), -2147483647i);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-890f))))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-546f - -1000f), 281f);
    global0 = arg_2;
    var var_2 = _wgslsmith_dot_vec3_i32(-_wgslsmith_div_vec3_i32(select(vec3<i32>(1i, arg_1.c, 2147483647i), vec3<i32>(arg_1.c, arg_1.c, 2147483647i), false) << (vec3<u32>(0u, 0u, global0.b) % vec3<u32>(32u)), ~(-vec3<i32>(1i, -7356i, 11716i))), vec3<i32>(0i, arg_2.c, 0i));
    return Struct_1(select(arg_1.a, !(!func_1(29797u).zy), !select(!vec2<bool>(arg_2.a.x, true), arg_0.xz, global0.a.x)), 8244u, -1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global0.a, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-698f, -620f, -1404f, -239f)))))), Struct_1(global0.a, 92072u, -732i), func_4(!func_1(9996u), Struct_1(global0.a, ~4294967295u, -global0.c >> (30679u % 32u)), Struct_1(select(global0.a, global0.a, global0.c < global0.c), ~(global0.b & 43680u), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 3346i, global0.c), vec3<i32>(global0.c, global0.c, -2147483647i)) | _wgslsmith_dot_vec2_i32(vec2<i32>(global0.c, -2147483647i), vec2<i32>(global0.c, 68765i))), vec4<u32>(35659u, ~min(global0.b, 72673u), firstTrailingBit(global0.b), u_input.a.x)));
    var var_1 = Struct_2(vec2<bool>(global0.a.x, false & !global0.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(787f, _wgslsmith_div_f32(var_0.b.x, var_0.b.x), var_0.b.x, _wgslsmith_f_op_f32(ceil(200f))))), func_4(select(vec3<bool>(true, 93103u >= u_input.a.x, !global0.a.x), vec3<bool>(true, true, true), !(!vec3<bool>(global0.a.x, var_0.a.x, true))), Struct_1(select(!vec2<bool>(global0.a.x, var_0.a.x), var_0.c.a, any(var_0.c.a)), var_0.c.b, -5233i), func_4(!(!vec3<bool>(var_0.c.a.x, true, global0.a.x)), var_0.d, var_0.c, abs(min(vec4<u32>(54258u, 4294967295u, 51746u, u_input.a.x), vec4<u32>(1u, 1u, 4294967295u, 40841u)))), vec4<u32>(u_input.a.x, ~(~0u), ~10674u, 9258u)), Struct_1(vec2<bool>(true, select(true, !global0.a.x, true)), reverseBits(~(var_0.d.b | 4294967295u)), -func_3(Struct_2(global0.a, vec4<f32>(var_0.b.x, var_0.b.x, 838f, var_0.b.x), var_0.d, Struct_1(var_0.a, 1u, 27654i)), Struct_2(vec2<bool>(true, false), vec4<f32>(var_0.b.x, var_0.b.x, -1141f, var_0.b.x), var_0.d, var_0.d))));
    var_1 = Struct_2(var_0.c.a, vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-540f + -833f) * _wgslsmith_f_op_f32(select(599f, 1874f, global0.a.x))) + var_1.b.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(883f * 1808f) - _wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(func_2()), any(select(var_0.a, vec2<bool>(false, var_1.c.a.x), var_1.c.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(470f)) * 282f)), func_4(vec3<bool>(true, !var_0.d.a.x, var_1.d.a.x), Struct_1(!global0.a, max(reverseBits(u_input.a.x), u_input.a.x), ~global0.c >> (_wgslsmith_clamp_u32(13141u, 0u, u_input.a.x) % 32u)), var_1.d, vec4<u32>(~var_0.c.b ^ var_1.d.b, 1u >> (global0.b % 32u), 1u, global0.b)), func_4(!select(!vec3<bool>(var_1.d.a.x, false, true), vec3<bool>(var_0.d.a.x, var_0.a.x, global0.a.x), false), Struct_1(!select(var_0.c.a, global0.a, global0.a.x), ~4294967295u ^ var_0.d.b, ~var_1.d.c), Struct_1(var_1.c.a, 4294967295u, 2147483647i), vec4<u32>(~global0.b >> ((var_0.c.b ^ var_1.d.b) % 32u), ~(~14176u), 11326u, ~4294967295u)));
    let var_2 = var_0;
    let var_3 = Struct_1(var_0.a, 4294967295u, global0.c);
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.a, vec3<u32>(var_3.b, var_2.d.b, ~1u)), func_4(vec3<bool>(true, any(!vec3<bool>(global0.a.x, global0.a.x, var_0.c.a.x)), false), func_4(vec3<bool>(select(true, false, true), true, var_0.a.x), Struct_1(func_1(global0.b).yx, firstLeadingBit(var_1.d.b), global0.c), Struct_1(vec2<bool>(false, true), ~40680u, 1i | var_3.c), reverseBits(~vec4<u32>(var_3.b, var_2.c.b, var_3.b, var_1.c.b))), Struct_1(vec2<bool>(var_3.b >= 0u, var_1.c.c == var_3.c), ~(~1u), select(var_3.c, 29991i, all(vec2<bool>(var_1.d.a.x, true)))), vec4<u32>(1u, global0.b, 1u, ~var_0.c.b)).c, ~min(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, 1u), vec2<u32>(var_1.c.b, 4294967295u)), u_input.a.xz));
}

