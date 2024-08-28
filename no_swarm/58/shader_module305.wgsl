struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<i32>,
    d: vec4<bool>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>, arg_1: bool) -> bool {
    let var_0 = select(select(vec4<bool>(all(!vec3<bool>(arg_1, arg_1, true)), arg_1, all(vec4<bool>(arg_1, true, true, true)), select(true, false, true)), select(vec4<bool>(true, arg_1, true, any(vec2<bool>(true, arg_1))), vec4<bool>(false, false, arg_1, arg_1), false), vec4<bool>(_wgslsmith_f_op_f32(step(1000f, -1297f)) >= _wgslsmith_f_op_f32(round(-1269f)), arg_1, false, true)), vec4<bool>(!select(!arg_1, arg_1, select(arg_1, arg_1, false)), true, true, true), !vec4<bool>(true, true, arg_1 || true, false));
    let var_1 = any(vec2<bool>(true, true));
    var var_2 = Struct_1(!any(select(select(vec3<bool>(var_0.x, var_1, arg_1), var_0.yzy, false), !vec3<bool>(var_0.x, arg_1, var_1), vec3<bool>(arg_1, true, true))), -(~(u_input.a.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b, 15736u), vec3<u32>(u_input.b, 1u, 4294967295u)) % 32u))), vec3<i32>(u_input.a.x, u_input.a.x, -(~30821i)), var_0, select(!var_0.yxw, select(select(var_0.xzz, select(vec3<bool>(var_1, false, false), vec3<bool>(false, false, var_0.x), var_1), !var_0.zwz), select(select(var_0.wzx, vec3<bool>(false, false, true), false), var_0.wyx, arg_1), var_1), !var_0.wxz));
    var_2 = Struct_1(arg_1, min(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.zx, vec2<i32>(-1i, 9905i)), min(u_input.a.yx, vec2<i32>(0i, var_2.b))), ~(~1i)), (i32(-1i) * -var_2.c.x) | 41456i), vec3<i32>(-1i) * -((vec3<i32>(-1i, -6771i, var_2.b) << (vec3<u32>(u_input.b, u_input.b, 3358u) % vec3<u32>(32u))) ^ -var_2.c), vec4<bool>(true, true, var_0.x || all(var_2.e), !all(vec3<bool>(true, var_0.x, var_2.d.x))), select(select(select(var_2.e, var_0.xww, !vec3<bool>(true, arg_1, false)), var_0.yyw, var_0.zzz), vec3<bool>(!all(var_0.ww), any(select(var_2.e, var_2.e, var_0.wyw)), any(!vec4<bool>(arg_1, var_0.x, var_2.d.x, true))), var_2.d.wzz));
    var_2 = Struct_1(max(abs(var_2.b), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.xy, var_2.c.xz), -var_2.c.zy)) >= -16142i, var_2.c.x, var_2.c, var_2.d, !vec3<bool>(arg_1, false, var_2.b > -u_input.a.x));
    return var_2.d.x;
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = Struct_1(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, 1408f, 1000f, -377f)))))), !(u_input.b > u_input.b)), arg_0, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(19583i), arg_0, u_input.a.x, u_input.a.x), _wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(0i, -12292i, arg_0, arg_0)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.b, 68481u), vec4<u32>(u_input.b, 0u, u_input.b, u_input.b)) % vec4<u32>(32u))), u_input.a.x, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-2072i, i32(-1i) * -2147483647i, 1i), reverseBits(countOneBits(arg_0)), -(arg_0 << (u_input.b % 32u)))), select(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true)), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), true), all(vec4<bool>(true, true, true, true))), any(vec3<bool>(true, true, true))), select(vec3<bool>(all(vec2<bool>(true, true)), max(1i, -4990i) == (arg_0 >> (u_input.b % 32u)), !all(vec4<bool>(true, false, false, false))), vec3<bool>(true, all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false))), !func_3(vec4<f32>(-506f, 1956f, 839f, 163f), false)), vec3<bool>(true, select(false, true, false), all(vec3<bool>(true, true, true)))));
    var_0 = Struct_1(true, ~_wgslsmith_dot_vec3_i32(~u_input.a.zyx >> (select(vec3<u32>(0u, 33517u, 15819u), vec3<u32>(33030u, u_input.b, u_input.b), var_0.e) % vec3<u32>(32u)), var_0.c), u_input.a.wzz, vec4<bool>(false, !func_3(vec4<f32>(601f, 779f, 192f, 1139f), all(vec2<bool>(false, true))), all(vec4<bool>(var_0.a, var_0.e.x, false, var_0.a)) && true, (u_input.b | (u_input.b & 77287u)) > ~1u), select(!var_0.e, !(!(!vec3<bool>(var_0.e.x, var_0.a, var_0.a))), var_0.d.x));
    var_0 = Struct_1(true, var_0.c.x, var_0.c, vec4<bool>(var_0.a, var_0.e.x, false, func_3(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1280f, -668f, -1361f, 1029f))), false)), var_0.e);
    var_0 = Struct_1(u_input.b >= max(u_input.b >> ((u_input.b | u_input.b) % 32u), 0u), ~1i, _wgslsmith_mult_vec3_i32(vec3<i32>(max(abs(-75679i), 0i), arg_0, 53331i << (max(u_input.b, 4294967295u) % 32u)), vec3<i32>(var_0.c.x, -37487i, _wgslsmith_mod_i32(57400i, _wgslsmith_mod_i32(15102i, arg_0)))), select(vec4<bool>(!(!var_0.e.x), true, true, any(select(var_0.e.xz, vec2<bool>(true, var_0.a), var_0.d.ww))), !var_0.d, select(false, true, true)), vec3<bool>(true, var_0.e.x == var_0.a, all(select(var_0.e.yz, var_0.e.yz, !var_0.d.wy))));
    let var_1 = vec2<i32>(-1i) * -var_0.c.xz;
    return select(!any(vec2<bool>(5680i > arg_0, true)), true, var_0.d.x);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: bool) -> vec4<u32> {
    let var_0 = Struct_1(func_2(u_input.a.x), ~(~abs(arg_0.c.x ^ -2147483647i)), ~firstLeadingBit(u_input.a.xwy), !select(select(select(vec4<bool>(arg_2, arg_2, arg_0.a, true), vec4<bool>(arg_2, arg_2, arg_0.a, true), arg_0.d.x), select(vec4<bool>(arg_0.e.x, arg_0.a, arg_0.a, false), arg_0.d, arg_0.d), arg_2 | arg_2), !vec4<bool>(false, false, false, arg_2), func_2(0i)), !arg_0.d.yyy);
    var var_1 = abs(~vec2<u32>(max(77646u, reverseBits(u_input.b)), u_input.b));
    var_1 = ~(reverseBits(vec2<u32>(abs(16329u), 4294967295u)) & (vec2<u32>(select(0u, var_1.x, true), var_1.x) ^ ~vec2<u32>(u_input.b, u_input.b)));
    var_1 = ~(~(~max(~vec2<u32>(97984u, var_1.x), vec2<u32>(1416u, var_1.x) ^ vec2<u32>(0u, u_input.b))));
    var var_2 = arg_0;
    return reverseBits(select(vec4<u32>(_wgslsmith_mult_u32(1u, var_1.x), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, var_1.x, u_input.b), vec3<u32>(var_1.x, u_input.b, 1987u)), u_input.b), _wgslsmith_add_vec4_u32(vec4<u32>(1u, var_1.x, 4294967295u, u_input.b), vec4<u32>(4294967295u, 0u, u_input.b, 4294967295u)) << (vec4<u32>(u_input.b, 64420u, 23932u, 24451u) % vec4<u32>(32u)), arg_2) << (vec4<u32>(u_input.b, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.b, 10728u, var_1.x, u_input.b)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, var_1.x, 60102u, 3802u), vec4<u32>(4294967295u, 2251u, 0u, var_1.x))), ~u_input.b, var_1.x) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(vec2<i32>(_wgslsmith_mod_i32(5264i, u_input.a.x), ~u_input.a.x << ((~26970u | u_input.b) % 32u)), vec2<i32>(countOneBits(-u_input.a.x), -4238i));
    var var_1 = u_input.a.x;
    let var_2 = -190f;
    var var_3 = !vec4<bool>(!any(vec4<bool>(false, true, true, false)), !(~u_input.b == _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(1u, u_input.b))), all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))), !(_wgslsmith_div_f32(var_2, -283f) <= 1079f));
    var var_4 = ~(max(select(vec4<u32>(1u, 45063u, 0u, 4294967295u), countOneBits(vec4<u32>(u_input.b, 4294967295u, 1u, u_input.b)), all(vec4<bool>(var_3.x, true, false, false))), ~func_1(Struct_1(true, -2239i, u_input.a.yyw, vec4<bool>(true, var_3.x, var_3.x, false), vec3<bool>(true, var_3.x, var_3.x)), vec4<f32>(-1320f, var_2, 200f, 580f), var_3.x)) | countOneBits(vec4<u32>(4294967295u, 0u, u_input.b, 7976u) & ~vec4<u32>(u_input.b, 7770u, u_input.b, 0u)));
    var var_5 = _wgslsmith_f_op_f32(select(1553f, -1436f, var_3.x));
    var_5 = _wgslsmith_f_op_f32(select(1f, -923f, !(!var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(select(var_0.x, 1i, any(!(!vec4<bool>(var_3.x, true, true, true)))));
}

