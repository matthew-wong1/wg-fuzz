struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<f32>,
    d: Struct_2,
    e: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    var var_0 = -firstLeadingBit(((vec4<i32>(u_input.a, u_input.a, 15303i, u_input.a) >> (vec4<u32>(u_input.b.x, 86263u, u_input.b.x, u_input.b.x) % vec4<u32>(32u))) >> (countOneBits(vec4<u32>(5747u, 18506u, u_input.b.x, u_input.b.x)) % vec4<u32>(32u))) << (~(~vec4<u32>(79904u, 18761u, 31676u, 4294967295u)) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -758f), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(false, false, true, false))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 136f, -1277f, arg_0.x) * vec4<f32>(arg_0.x, arg_0.x, 1033f, arg_0.x))))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-293f + arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-951f)) - 1882f), arg_0.x, -1899f))));
    let var_2 = ~abs(_wgslsmith_div_vec4_i32(-(~vec4<i32>(2147483647i, var_0.x, 30568i, u_input.a)), -_wgslsmith_add_vec4_i32(vec4<i32>(0i, var_0.x, var_0.x, -41490i), vec4<i32>(0i, var_0.x, 1i, var_0.x))));
    var_0 = ~(-vec4<i32>(select(u_input.a, _wgslsmith_mod_i32(-2147483647i, -32157i), false), _wgslsmith_div_i32(1i, 453i), u_input.a, ~1i));
    var var_3 = Struct_3(Struct_1(vec4<bool>(false, !(arg_0.x == -482f), true, true), _wgslsmith_add_u32(45068u, u_input.b.x), _wgslsmith_f_op_vec3_f32(var_1.yyz + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(825f, arg_0.x, var_1.x))))), var_0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.xyx * vec3<f32>(-738f, _wgslsmith_f_op_f32(f32(-1f) * -1453f), _wgslsmith_f_op_f32(var_1.x * arg_0.x)))), Struct_2(Struct_1(select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false)), u_input.a < 2147483647i), ~u_input.b.x, var_1.xwx), Struct_1(vec4<bool>(true, all(vec4<bool>(false, false, true, true)), true, true), u_input.b.x, var_1.xyx), Struct_1(vec4<bool>(all(vec2<bool>(false, true)), true, true, true), ~u_input.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.wwy) + var_1.wyw)), 26235u, Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), abs(select(u_input.b.x, u_input.b.x, true)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1612f, -111f, 2968f)))))), vec4<f32>(-706f, arg_0.x, _wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_div_f32(arg_0.x, -766f)));
    return reverseBits(~(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(var_3.a.b, var_3.a.b)) & 48351u) >> (min(var_3.d.a.b, ~countOneBits(u_input.b.x)) % 32u));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<f32>) -> vec2<f32> {
    var var_0 = _wgslsmith_div_u32(u_input.b.x, func_3(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_1.x * 1793f), _wgslsmith_f_op_f32(-111f - arg_1.x)), arg_1.yz)));
    var_0 = u_input.b.x;
    let var_1 = -countOneBits(-3667i);
    var_0 = _wgslsmith_div_u32(~_wgslsmith_add_u32((1u << (u_input.b.x % 32u)) << (u_input.b.x % 32u), countOneBits(~1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(13508u, 52021u, ~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 102335u, 1u, u_input.b.x), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 1u))) & select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x), vec4<u32>(0u, u_input.b.x, 4294967295u, 3222u)), vec4<u32>(0u, u_input.b.x, 1u, 4294967295u), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true))), ~vec4<u32>(~u_input.b.x, u_input.b.x, ~u_input.b.x, u_input.b.x)));
    var var_2 = reverseBits(~_wgslsmith_clamp_vec3_i32(-select(vec3<i32>(u_input.a, 233i, 1i), vec3<i32>(var_1, var_1, 2147483647i), false), select(-vec3<i32>(u_input.a, 1i, u_input.a), arg_0.zzz, u_input.b.x >= 4294967295u), -(~arg_0.xzx)));
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.yx, vec2<f32>(_wgslsmith_f_op_f32(-2311f + 1512f), arg_1.x)))));
}

fn func_1() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(vec4<i32>(~u_input.a, ~536i, ~(-37005i), 8883i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1697f, -1038f, -844f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 2586f), vec2<f32>(-1040f, -254f)) * vec2<f32>(-1000f, -310f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1083f, -412f)))), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), true)))));
    var var_1 = 2147483647i;
    var_1 = _wgslsmith_sub_i32(u_input.a, u_input.a);
    var var_2 = select(!vec3<bool>(true, true, all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)))), select(!vec3<bool>(any(vec4<bool>(true, true, false, true)), var_0.x <= 1000f, all(vec4<bool>(true, true, false, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), vec3<bool>(false, false, false))), true);
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, 196f, var_0.x), vec4<f32>(var_0.x, -1000f, 677f, 752f)))) + vec4<f32>(var_0.x, 1000f, _wgslsmith_f_op_f32(select(var_0.x, var_0.x, false)), _wgslsmith_f_op_f32(select(var_0.x, -693f, var_2.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-346f, var_0.x, 432f, var_0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(836f, var_0.x, var_0.x, var_0.x))) * vec4<f32>(-778f, var_0.x, -368f, 666f))))));
    return var_3.zx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-466f, -235f))) + vec2<f32>(-139f, 156f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-963f, -806f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1371f, -913f))), true))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(766f * -1195f), -760f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-821f, 830f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1066f, -961f))))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1558f, 238f)))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2250f), 616f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1767f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(abs(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 43388u, 0u)), ~vec3<u32>(u_input.b.x, u_input.b.x, 0u))), ~abs(vec3<u32>(u_input.b.x, 8344u, u_input.b.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(countOneBits(u_input.b.x), ~u_input.b.x, ~u_input.b.x), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 66288u), vec3<u32>(76452u, u_input.b.x, u_input.b.x)) ^ abs(vec3<u32>(u_input.b.x, 0u, u_input.b.x)))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(u_input.a, u_input.a), 2147483647i, ~35384i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 0i, u_input.a), vec3<i32>(u_input.a, u_input.a, -2147483647i))), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-30334i, u_input.a, u_input.a, 0i), vec4<i32>(u_input.a, 12587i, 0i, u_input.a)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 1i, u_input.a, u_input.a), vec4<i32>(u_input.a, -1i, 2147483647i, 2147483647i)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, 1257f, var_0.x, var_0.x))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 576f, -607f, var_0.x)), vec4<f32>(-1304f, var_0.x, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 967f, var_0.x, var_0.x) * vec4<f32>(var_0.x, -249f, -2011f, var_0.x))))), any(vec3<bool>(true, true, var_0.x >= var_0.x)))), 590f);
}

