struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec4<f32>) -> vec3<bool> {
    var var_0 = Struct_2(!(!any(select(vec2<bool>(false, false), vec2<bool>(false, false), false))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(arg_2.x, arg_2.x, true)), -1000f)), arg_2.x)), 127f), arg_1);
    var_0 = Struct_2(any(select(!select(vec4<bool>(false, var_0.a, var_0.a, false), vec4<bool>(false, var_0.a, var_0.a, var_0.a), false), !vec4<bool>(var_0.a, var_0.a, true, var_0.a), false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_2.wyy), vec3<f32>(528f, -826f, _wgslsmith_f_op_f32(min(arg_2.x, 542f)))))), Struct_1(var_0.c.a & abs(10725i)));
    let var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-212f)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1506f)));
    var var_3 = !(!(!(!select(vec2<bool>(false, true), vec2<bool>(var_0.a, false), vec2<bool>(true, var_0.a)))));
    return select(vec3<bool>(!var_0.a, any(!(!vec3<bool>(var_0.a, var_3.x, true))), var_0.a), vec3<bool>(var_3.x, !(!var_0.a), true), select(!(!vec3<bool>(var_0.a, var_3.x, var_0.a)), select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec4<bool>(var_3.x, false, true, false)), !var_3.x), vec3<bool>(var_3.x, true, !var_3.x)), vec3<bool>(all(select(vec3<bool>(true, true, var_0.a), vec3<bool>(true, var_0.a, var_0.a), var_0.a)), !var_3.x, var_3.x)));
}

fn func_4(arg_0: vec3<bool>, arg_1: u32) -> vec3<f32> {
    var var_0 = Struct_1(0i);
    let var_1 = vec2<bool>(true, (_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -2297i, var_0.a), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, var_0.a, 28150i), vec3<i32>(1i, var_0.a, u_input.b))) >= ~min(var_0.a, var_0.a)) | false);
    let var_2 = Struct_2(true, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1100f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -323f) - _wgslsmith_f_op_f32(1000f * 198f)), _wgslsmith_f_op_f32(-1786f + _wgslsmith_f_op_f32(floor(515f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(450f - 199f)), -1493f))), Struct_1(_wgslsmith_mult_i32(firstTrailingBit(0i), -1i)));
    var_0 = var_2.c;
    var_0 = Struct_1(-min(firstTrailingBit(min(u_input.a.x, u_input.a.x)), 33639i));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_2.b.x * var_2.b.x), _wgslsmith_f_op_f32(var_2.b.x * var_2.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1643f)))));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> i32 {
    var var_0 = Struct_2(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(select(vec3<bool>(true, true, true), func_3(arg_1.a, arg_1, vec4<f32>(arg_3, arg_0, 257f, -1000f)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true)), ~33139u)) - vec3<f32>(_wgslsmith_div_f32(325f, 1000f), _wgslsmith_f_op_f32(min(-168f, arg_3)), _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(floor(-203f)))))), Struct_1(reverseBits(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.a, -30260i, 13584i, 8874i), vec4<i32>(arg_2, 70508i, u_input.a.x, 1i)), -vec4<i32>(u_input.a.x, u_input.b, 0i, 2147483647i)))));
    let var_1 = Struct_2(var_0.a, var_0.b, var_0.c);
    var_0 = Struct_2(true, _wgslsmith_f_op_vec3_f32(var_0.b - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(609f, arg_0)), 1866f, _wgslsmith_f_op_f32(select(var_0.b.x, var_0.b.x, true))))), Struct_1(_wgslsmith_mult_i32(_wgslsmith_mod_i32(i32(-1i) * -37997i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 46065i), u_input.a)), -_wgslsmith_mod_i32(-11951i, -10821i))));
    var var_2 = vec3<u32>(~0u ^ _wgslsmith_clamp_u32(~(~4294967295u), reverseBits(firstLeadingBit(1u)), _wgslsmith_clamp_u32(37088u, 0u, 19936u) & 18306u), ~(~1u), 1u);
    var var_3 = _wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), var_2.zx)), 48250u), ~var_2.zz);
    return _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_clamp_i32(-1i, countOneBits(countOneBits(var_1.c.a)), ~28876i), _wgslsmith_dot_vec3_i32(select(min(vec3<i32>(-21641i, 2147483647i, arg_2), vec3<i32>(arg_1.a, var_1.c.a, 20302i)), ~vec3<i32>(var_0.c.a, arg_2, var_0.c.a), select(vec3<bool>(false, var_1.a, var_0.a), vec3<bool>(var_0.a, true, var_1.a), vec3<bool>(var_0.a, var_1.a, false))), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, var_0.c.a, var_0.c.a), vec3<i32>(arg_1.a, arg_1.a, arg_1.a)))) | var_1.c.a;
}

fn func_1(arg_0: f32) -> i32 {
    var var_0 = ~_wgslsmith_div_vec2_i32(u_input.a | abs(vec2<i32>(0i, -1i)), ~vec2<i32>(-1i, u_input.a.x));
    var var_1 = Struct_1(_wgslsmith_mod_i32(u_input.b, func_2(arg_0, Struct_1(u_input.b), 48346i, -1000f) & _wgslsmith_sub_i32(-1i, 1i)) | _wgslsmith_mult_i32(var_0.x, func_2(1377f, Struct_1(14077i), _wgslsmith_mult_i32(var_0.x, 43605i), _wgslsmith_f_op_f32(f32(-1f) * -1788f))));
    let var_2 = any(select(select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), true), !func_3(var_1.a, Struct_1(var_0.x), vec4<f32>(arg_0, -1421f, arg_0, arg_0)), all(vec2<bool>(true, true)))) != !any(func_3(-2147483647i, Struct_1(2147483647i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, -167f))).zy);
    var_1 = Struct_1(var_0.x);
    let var_3 = firstTrailingBit(u_input.a >> (~_wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, 86445u), vec2<u32>(1u, 1u)) % vec2<u32>(32u)));
    return _wgslsmith_dot_vec3_i32(-abs(max(vec3<i32>(-42467i, var_1.a, var_0.x), firstTrailingBit(vec3<i32>(0i, var_1.a, 15901i)))), ~vec3<i32>(8431i, ~var_1.a, -7079i | -u_input.a.x));
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: vec3<i32>, arg_3: vec3<i32>) -> vec2<u32> {
    var var_0 = 1u;
    let var_1 = 0i;
    var_0 = abs(1u);
    var var_2 = Struct_1(_wgslsmith_sub_i32(abs(u_input.b), -2147483647i));
    let var_3 = Struct_1(arg_1);
    return ~vec2<u32>(max(firstTrailingBit(4294967295u), 28219u >> (0u % 32u)) << (~(~4294967295u) % 32u), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(0i, func_5(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-387f, 654f)), -1618f)))), 83960i, firstLeadingBit(vec3<i32>(37969i, u_input.b, 2147483647i)) ^ firstLeadingBit(~vec3<i32>(u_input.a.x, u_input.b, u_input.b)), vec3<i32>(~func_1(-309f), _wgslsmith_add_i32(u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, 2147483647i)), 1i)), 1u);
}

