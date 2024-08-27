struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_add_i32(firstLeadingBit(arg_0.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(arg_0.a.x, arg_0.a.x, u_input.a, arg_0.c)) >> (firstLeadingBit(0u) % 32u), firstTrailingBit(abs(arg_0.a.x))), u_input.c.xx ^ vec2<i32>(abs(u_input.c.x), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.x, -1i), arg_0.a.wy))));
    let var_1 = min(~u_input.d.x, _wgslsmith_mult_u32(_wgslsmith_add_u32(~min(12806u, arg_0.e.x), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.d.zw, arg_0.e), u_input.d.yw)), 66366u));
    let var_2 = vec4<bool>(any(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false)), !select(!select(true, true, true), true, !any(vec2<bool>(false, true))), any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(true, true, true, false))), vec2<bool>(true, false), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)))), true);
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f));
    var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_3.x - var_3.x), _wgslsmith_f_op_f32(var_3.x * -421f), _wgslsmith_f_op_f32(trunc(-296f)), var_3.x) * vec4<f32>(_wgslsmith_f_op_f32(-var_3.x), var_3.x, _wgslsmith_f_op_f32(-var_3.x), var_3.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(511f, -160f, var_3.x, -1130f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_3.x, 351f), _wgslsmith_f_op_f32(trunc(var_3.x)), var_3.x, 446f) - _wgslsmith_div_vec4_f32(vec4<f32>(var_3.x, var_3.x, var_3.x, 989f), vec4<f32>(var_3.x, 1114f, -2118f, -194f))), !var_2))));
    return !var_2;
}

fn func_2(arg_0: u32) -> i32 {
    let var_0 = select(func_3(Struct_1(u_input.c, firstLeadingBit(vec4<u32>(u_input.d.x, u_input.d.x, u_input.b, u_input.d.x)), _wgslsmith_add_i32(abs(u_input.a), u_input.a ^ 2147483647i), _wgslsmith_mult_u32(u_input.b, abs(u_input.b)), vec2<u32>(~0u, ~0u))), vec4<bool>(true, true, true, !(~arg_0 != reverseBits(arg_0))), !any(vec2<bool>(false, true)));
    let var_1 = select(u_input.d.zzx & firstLeadingBit(u_input.d.wyz), vec3<u32>(u_input.b, ~1u, ~(~u_input.d.x) | 1u), !any(var_0.zxx));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-2249f, 756f)), _wgslsmith_f_op_f32(round(-501f)))))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -973f), 1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-163f)) - _wgslsmith_f_op_f32(step(-1532f, 537f)))))));
    let var_3 = _wgslsmith_f_op_f32(-var_2.x);
    let var_4 = _wgslsmith_sub_i32(u_input.a, u_input.c.x | -(max(0i, u_input.c.x) << (4294967295u % 32u)));
    return u_input.c.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> u32 {
    var var_0 = arg_0;
    var var_1 = ~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(1i | func_2(0u), -34980i, (var_0.a.x | -13085i) & _wgslsmith_dot_vec3_i32(var_0.a.yyw, vec3<i32>(-2147483647i, -57606i, 27633i))), func_2(u_input.b));
    var var_2 = Struct_1(_wgslsmith_mult_vec4_i32(-abs(~u_input.c), ~firstLeadingBit(arg_0.a)), select(vec4<u32>(~arg_0.e.x, ~(~u_input.b), ~(var_0.d & 61254u), ~106442u & var_0.e.x), ~u_input.d, vec4<bool>(true, true, true, true)), reverseBits(~(~(-8072i))), 0u, abs(abs(~countOneBits(vec2<u32>(0u, arg_0.b.x)))));
    let var_3 = !(!(!vec2<bool>(any(vec2<bool>(true, false)), true)));
    var var_4 = Struct_1(~vec4<i32>(arg_1.x, var_0.c, 2147483647i, _wgslsmith_mult_i32(4666i, 8888i)), ~vec4<u32>(var_2.b.x, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(22589u, var_2.d, var_0.d)), ~var_0.b.zxx), _wgslsmith_add_u32(var_2.e.x, var_0.b.x), _wgslsmith_mod_u32(min(var_2.b.x, arg_0.e.x), _wgslsmith_dot_vec2_u32(u_input.d.zz, vec2<u32>(u_input.b, var_0.e.x)))), var_0.a.x, ~18061u, ~var_0.b.yy);
    return _wgslsmith_div_u32(_wgslsmith_sub_u32(reverseBits(var_4.d), min(_wgslsmith_div_u32(arg_0.b.x, 1u), var_4.e.x)), var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -543f;
    let var_1 = vec4<u32>(~1u, _wgslsmith_add_u32(u_input.d.x, u_input.d.x), abs(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.b, 4294967295u), u_input.d.ywy) | 1u, abs(_wgslsmith_sub_u32(u_input.b, 82404u)))), _wgslsmith_dot_vec4_u32(vec4<u32>(~func_1(Struct_1(u_input.c, u_input.d, -4539i, 63313u, u_input.d.yx), vec4<i32>(u_input.a, -11018i, u_input.a, u_input.c.x)), 19928u, ~(~u_input.d.x), ~countOneBits(u_input.b)), u_input.d));
    var_0 = _wgslsmith_f_op_f32(floor(-1249f));
    var var_2 = u_input.c.ww;
    let var_3 = Struct_1(u_input.c, select(select(~vec4<u32>(var_1.x, 77700u, 0u, 1u), max(select(u_input.d, var_1, vec4<bool>(false, true, true, true)), var_1 << (vec4<u32>(u_input.d.x, 33241u, 1u, u_input.d.x) % vec4<u32>(32u))), vec4<bool>(true, true, true, true)), vec4<u32>(_wgslsmith_mod_u32(var_1.x, _wgslsmith_mult_u32(var_1.x, u_input.b)), ~(~u_input.b), _wgslsmith_dot_vec2_u32(var_1.yz, vec2<u32>(u_input.d.x, 50255u)), ~(~28326u)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, any(vec4<bool>(true, true, true, true)), true, 0i >= var_2.x))), 1i, _wgslsmith_add_u32(reverseBits(u_input.b ^ firstTrailingBit(42630u)), var_1.x), vec2<u32>(~(4294967295u >> (var_1.x % 32u)), _wgslsmith_div_u32(abs(~var_1.x), _wgslsmith_div_u32(~u_input.b, var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(-1000f)), var_1.x);
}

