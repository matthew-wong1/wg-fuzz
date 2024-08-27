struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: i32,
    b: vec3<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: i32) -> f32 {
    let var_0 = 481f;
    var var_1 = firstLeadingBit(~countOneBits(_wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(0u, 1u)), u_input.b.wy)));
    let var_2 = ~(~u_input.c.zx);
    let var_3 = ~vec3<u32>(min(4294967295u, ~_wgslsmith_sub_u32(u_input.e, 0u)), var_1.x, var_1.x);
    var_1 = var_3.xz;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b.x), arg_1.b.x);
}

fn func_2() -> vec3<f32> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<f32>(1000f, 434f, -979f), Struct_5(0i, vec3<f32>(281f, 1117f, 329f), u_input.b.x), -3883i))))))), min(~(~vec2<i32>(23825i, u_input.c.x)) | abs(u_input.c.zy), vec2<i32>(_wgslsmith_mult_i32(max(u_input.c.x, 1i), ~(-9717i)), u_input.a.x)), Struct_1(1i, vec2<u32>(~1u, ~(u_input.e >> (u_input.e % 32u))), vec4<i32>(1i, -2147483647i << (_wgslsmith_mod_u32(u_input.b.x, 1u) % 32u), _wgslsmith_mult_i32(~51354i, 16735i), u_input.a.x)));
    var_0 = Struct_2(var_0.a, var_0.c.c.wy, var_0.c);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(var_0.a - var_0.a), var_0.a, _wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 1000f, var_0.a))), Struct_5(2767i, vec3<f32>(var_0.a, 479f, 271f), u_input.b.x), var_0.b.x))));
    let var_2 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), select(true, !any(vec3<bool>(false, false, false)), !select(true, false, true))), select(select(vec4<bool>(true, any(vec4<bool>(false, false, false, false)), true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true), false), select(vec4<bool>(u_input.c.x >= u_input.a.x, var_0.a == 192f, -1305f == var_1.x, true), vec4<bool>(false, true, true, true), all(vec2<bool>(false, false))), false), vec4<bool>(true, !any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true)), (_wgslsmith_dot_vec2_u32(u_input.b.wy, var_0.c.b) >> (~var_0.c.b.x % 32u)) >= 1u, true));
    let var_3 = Struct_2(-540f, _wgslsmith_mult_vec2_i32(reverseBits(~u_input.a), _wgslsmith_add_vec2_i32(~(~u_input.a), countOneBits(var_0.b))), Struct_1(u_input.a.x | var_0.c.a, var_0.c.b, _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(var_0.c.c ^ u_input.c, ~vec4<i32>(u_input.a.x, 11400i, -26353i, var_0.b.x)), ~countOneBits(vec4<i32>(1i, -1i, -1i, 8136i)))));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(-265f, var_1.x, var_0.a));
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1010f - 902f)), _wgslsmith_f_op_f32(ceil(-1111f)), 973f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(427f, 730f, 289f) * vec3<f32>(984f, -2383f, 967f)), vec3<f32>(961f, 431f, -101f))), vec3<bool>(all(vec2<bool>(true, true)), true, any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), true))))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(434f * 364f), _wgslsmith_f_op_f32(f32(-1f) * -174f), _wgslsmith_f_op_f32(f32(-1f) * -999f)), vec3<f32>(_wgslsmith_f_op_f32(abs(-1000f)), 692f, -240f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-713f, -1000f, var_0.x), vec3<f32>(1613f, -1141f, var_0.x))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, 1239f, -827f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(floor(944f)), _wgslsmith_f_op_f32(ceil(var_0.x)))), vec3<bool>(!(u_input.b.x > 1u), true, true))) - vec3<f32>(_wgslsmith_f_op_f32(func_3(vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_vec3_f32(func_2()).x), Struct_5(2147483647i, vec3<f32>(var_0.x, 1444f, var_0.x), ~u_input.e), _wgslsmith_clamp_i32(firstTrailingBit(u_input.c.x), u_input.c.x, 22861i))), 1186f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1868f - var_0.x), _wgslsmith_div_f32(var_0.x, -736f)))));
    var var_1 = Struct_5(select(~u_input.a.x, ~(-45445i), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(150f, 702f, var_0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)) * vec3<f32>(-1555f, var_0.x, -364f)), true)) - vec3<f32>(var_0.x, _wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-915f)))))), u_input.e);
    var var_2 = Struct_1(select(1i, ~(_wgslsmith_sub_i32(-1i, var_1.a) >> (0u % 32u)), !any(vec3<bool>(true, false, false))), firstTrailingBit(u_input.b.zw), u_input.c);
    let var_3 = any(vec3<bool>(true, true, !all(vec4<bool>(true, true, true, true))));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(min(u_input.a.x, u_input.c.x), _wgslsmith_add_i32(-21433i, u_input.c.x), _wgslsmith_add_i32(u_input.d | u_input.c.x, u_input.c.x | -21991i), func_1())));
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<f32>(-424f, -879f, -1000f), Struct_5(u_input.d, vec3<f32>(112f, 911f, 737f), u_input.b.x), select(u_input.a.x, u_input.a.x, true))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), (abs(~u_input.b.zzx) << (vec3<u32>(max(4294967295u, u_input.e), ~10250u, abs(u_input.e)) % vec3<u32>(32u))) & ~u_input.b.yzz);
}

