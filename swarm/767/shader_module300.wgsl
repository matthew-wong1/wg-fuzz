struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<f32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec4<bool>,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> u32 {
    var var_0 = ~(~u_input.c);
    var var_1 = _wgslsmith_div_vec3_i32(select(reverseBits(vec3<i32>(21583i, 0i, u_input.b)) | _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, u_input.b, 0i), vec3<i32>(1i, 0i, 2147483647i)), abs(vec3<i32>(390i, u_input.b, u_input.b))), _wgslsmith_clamp_vec3_i32(reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, u_input.b, 0i), vec3<i32>(-24288i, 9109i, u_input.b))), firstTrailingBit(select(vec3<i32>(-21045i, 0i, u_input.b), vec3<i32>(2147483647i, 1i, -30589i), vec3<bool>(false, true, true))), -(vec3<i32>(-11624i, u_input.b, u_input.b) | vec3<i32>(-25940i, 0i, 0i))), vec3<bool>(_wgslsmith_f_op_f32(step(652f, 148f)) <= _wgslsmith_f_op_f32(round(1175f)), true, any(select(vec2<bool>(false, true), vec2<bool>(false, true), false)))), ~firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, 1i, u_input.b), vec3<i32>(0i, u_input.b, -26909i))) | abs(countOneBits(~vec3<i32>(-2147483647i, u_input.b, u_input.b))));
    var_0 = ~(u_input.c >> (u_input.a % 32u)) ^ ~0u;
    let var_2 = true || select(true, select(false, true, true), true);
    var_0 = _wgslsmith_dot_vec2_u32(u_input.d.xx, _wgslsmith_div_vec2_u32(vec2<u32>(~u_input.a, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(20350u, 68455u, 78953u, u_input.d.x)), vec4<u32>(28288u, u_input.a, u_input.d.x, 0u))), _wgslsmith_div_vec2_u32(~(~vec2<u32>(0u, u_input.c)), select(u_input.d.zx << (vec2<u32>(13728u, u_input.a) % vec2<u32>(32u)), u_input.d.zy, true))));
    return _wgslsmith_add_u32(_wgslsmith_mod_u32(~_wgslsmith_mult_u32(u_input.a, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(abs(0u), firstTrailingBit(u_input.d.x), ~41702u, ~u_input.d.x), vec4<u32>(u_input.c, 59791u, abs(u_input.d.x), 17195u))), ~u_input.c);
}

fn func_2(arg_0: i32, arg_1: vec3<i32>, arg_2: i32) -> u32 {
    let var_0 = arg_1.xy;
    var var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(729u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, u_input.d.x, u_input.d.x, u_input.c), ~vec4<u32>(u_input.c, u_input.a, 1u, u_input.c)), ~(1u | func_3())), vec3<u32>(u_input.d.x, ~4294967295u, u_input.c) & vec3<u32>(~1u, 0u, _wgslsmith_div_u32(12145u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 69901u), u_input.d.zx))));
    let var_2 = select(vec3<bool>(false, !all(vec2<bool>(true, true)), true), select(select(vec3<bool>(true, any(vec4<bool>(true, true, true, false)), true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false)), select(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), true), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))))), any(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true))));
    var var_3 = var_2.x & all(select(select(var_2, !var_2, select(vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(var_2.x, true, false), var_2.x)), select(var_2, vec3<bool>(var_2.x, false, var_2.x), all(vec2<bool>(var_2.x, true))), true));
    var var_4 = _wgslsmith_f_op_f32(2223f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2990f + _wgslsmith_f_op_f32(step(597f, -544f))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(123f + 108f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-366f - -804f))))));
    return _wgslsmith_dot_vec4_u32(u_input.d, ~u_input.d);
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: vec2<f32>, arg_3: bool) -> f32 {
    let var_0 = select(!(!(!vec3<bool>(arg_1.a.a, arg_1.a.a, false))), !vec3<bool>((123f >= arg_2.x) | false, ~(-11609i) != arg_1.a.b, _wgslsmith_mod_u32(43797u, 1u) == _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.c), vec2<u32>(0u, arg_1.c.x))), !select(select(vec3<bool>(true, false, false), !vec3<bool>(arg_3, arg_1.a.a, arg_3), false), select(select(vec3<bool>(arg_1.a.a, arg_1.a.a, false), vec3<bool>(arg_1.a.a, true, true), true), select(vec3<bool>(arg_1.a.a, false, true), vec3<bool>(false, false, false), arg_3), arg_1.d.x <= 1i), any(vec2<bool>(true, true)) & true));
    var var_1 = arg_1;
    var var_2 = Struct_2(select(_wgslsmith_sub_u32(func_2(u_input.b, abs(var_1.d.zww), _wgslsmith_div_i32(-39860i, -13612i)), u_input.a), ~func_3(), !any(!vec2<bool>(var_1.a.a, true))), ~(~5312u), _wgslsmith_sub_vec4_i32(-min(abs(arg_1.d), _wgslsmith_add_vec4_i32(arg_1.d, var_1.d)), vec4<i32>(arg_1.d.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(var_1.d.x, -1i, -2147483647i, -64263i), vec4<i32>(var_1.a.b, u_input.b, arg_1.a.b, u_input.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(-14691i, arg_1.d.x) | vec2<i32>(var_1.a.b, -2147483647i), ~var_1.d.wx), ~abs(arg_1.d.x))), select(vec4<bool>(false, select(!arg_3, var_1.a.a, true), var_1.a.a, false), vec4<bool>(var_1.a.a, !any(vec4<bool>(true, false, true, var_1.a.a)), _wgslsmith_f_op_f32(-arg_2.x) > _wgslsmith_f_op_f32(round(2601f)), var_0.x), var_0.x), arg_3);
    var_2 = Struct_2(~4294967295u, 56332u, ~var_1.d, var_2.d, any(select(select(select(vec2<bool>(true, var_2.d.x), var_0.yz, var_2.d.ww), !var_0.yy, vec2<bool>(true, true)), var_2.d.xy, all(!var_2.d))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(918f, -274f)));
    return 2828f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(1147f, _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1218f, 1822f) + vec2<f32>(-305f, 116f))), Struct_4(Struct_3(any(vec2<bool>(false, false)), _wgslsmith_add_i32(-2147483647i, 0i)), u_input.d.yy, abs(~vec4<u32>(39547u, 0u, u_input.c, u_input.a)), vec4<i32>(~(-22655i), u_input.b, ~3165i, u_input.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-316f, -1230f)), true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-753f * 1061f))));
    var var_1 = -1664f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0)) + _wgslsmith_f_op_vec3_f32(floor(var_0))), var_0)));
}

