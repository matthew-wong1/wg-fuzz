struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: bool) -> f32 {
    let var_0 = Struct_1(u_input.a.x & max(~(i32(-1i) * -34531i), _wgslsmith_dot_vec4_i32(u_input.a, u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(307f - -1000f), _wgslsmith_f_op_f32(ceil(-1112f)), _wgslsmith_f_op_f32(106f * -835f)))), _wgslsmith_mult_i32(~(~(-2147483647i)), _wgslsmith_clamp_i32(min(u_input.a.x, u_input.a.x), -u_input.a.x, _wgslsmith_mod_i32(-1i, u_input.a.x))) | 0i);
    var var_1 = 1u;
    let var_2 = vec2<u32>(arg_0 & arg_0, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0 >> (arg_0 % 32u), 0u, 6638u) << (_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0, arg_0, 82371u), vec3<u32>(arg_0, arg_0, arg_0)), vec3<u32>(3354u, arg_0, 20101u)) % vec3<u32>(32u)), max(~vec3<u32>(49297u, 23910u, arg_0), (vec3<u32>(89226u, arg_0, 4294967295u) | vec3<u32>(4294967295u, 0u, arg_0)) & _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(arg_0, arg_0, 7643u)))));
    var var_3 = Struct_1(1i, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(992f))))), 1199f, var_0.b.x), var_0.c);
    let var_4 = var_2;
    return var_3.b.x;
}

fn func_2(arg_0: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1002f, -1000f, arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(0u, false))) - -1000f)));
    var var_1 = abs(_wgslsmith_dot_vec3_i32(-min(vec3<i32>(-21952i, 9982i, arg_0.c), u_input.a.xyz) & vec3<i32>(arg_0.a, ~arg_0.a, i32(-1i) * -18993i), u_input.a.xzw));
    var_1 = -2147483647i;
    var var_2 = arg_0;
    let var_3 = 18543i;
    return _wgslsmith_dot_vec4_i32(vec4<i32>(-_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, 529i, var_2.a, 2147483647i)), select(max(-28489i, -37095i), u_input.a.x | arg_0.c, true), reverseBits(~(-760i)), 47924i) & ~(~vec4<i32>(var_2.c, -2147483647i, -17876i, var_3)), _wgslsmith_mod_vec4_i32(min(u_input.a, select(~u_input.a, vec4<i32>(-1i, 1270i, -20601i, var_2.c), vec4<bool>(true, true, true, true))), u_input.a));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec2<i32>, arg_3: f32) -> i32 {
    let var_0 = vec4<bool>(true, true, true, true);
    let var_1 = u_input.a.zx;
    var var_2 = var_0.xzy;
    var var_3 = ~_wgslsmith_div_i32(select(func_2(Struct_1(arg_2.x, arg_0.b, -1939i)), -1i, true), u_input.a.x);
    let var_4 = u_input.a.x;
    return -3969i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(reverseBits(vec4<i32>(func_1(Struct_1(u_input.a.x, vec3<f32>(-2415f, 262f, 1011f), 1i), vec3<u32>(0u, 8491u, 4294967295u), _wgslsmith_mult_vec2_i32(u_input.a.xz, u_input.a.yz), _wgslsmith_f_op_f32(step(202f, 1255f))), abs(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a)), ~(-u_input.a.x), _wgslsmith_div_i32(1i, u_input.a.x))));
    var var_1 = Struct_1(countOneBits(2147483647i), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-197f, _wgslsmith_f_op_f32(565f + 286f), 556f) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1289f), _wgslsmith_f_op_f32(trunc(101f)), _wgslsmith_f_op_f32(select(1244f, -1320f, false)))))), ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, min(33326i, -2147483647i)), vec2<i32>(24162i, _wgslsmith_add_i32(var_0.x, u_input.a.x))));
    var var_2 = all(vec2<bool>(true, true));
    var var_3 = 0u;
    var_2 = any(vec4<bool>(any(vec2<bool>(true, true)), any(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), true)), true, !(_wgslsmith_clamp_i32(var_1.a, 46451i, u_input.a.x) > 2147483647i)));
    var var_4 = vec4<i32>(u_input.a.x, var_1.c, _wgslsmith_mult_i32(u_input.a.x, var_0.x | ~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_0.x), vec2<i32>(-1i, 1i))), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec4_i32(u_input.a, _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 38909i, 0i, 1i), vec4<i32>(var_1.c, var_0.x, -13865i, u_input.a.x))), _wgslsmith_add_vec4_i32(~_wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(-47733i, 2147483647i, var_4.x, -1i)) & vec4<i32>(33199i, reverseBits(7420i), 0i, func_1(Struct_1(u_input.a.x, var_1.b, var_0.x), vec3<u32>(43662u, 1u, 4294967295u), var_4.yw, var_1.b.x)), u_input.a));
}

