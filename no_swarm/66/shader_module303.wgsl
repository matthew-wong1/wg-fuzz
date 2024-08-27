struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> vec3<u32> {
    let var_0 = Struct_1(~u_input.a.x & reverseBits(u_input.a.x), true);
    let var_1 = vec4<u32>(u_input.b, 18407u, 18954u, ~4383u);
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, -256f)), -40419i, var_0, vec3<u32>(1u, 34986u, ~(~(~u_input.a.x))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, var_2.a.x, -951f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, -381f, var_2.a.x) + vec3<f32>(860f, 1364f, var_2.a.x)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(var_2.a.x)), _wgslsmith_f_op_f32(round(var_2.a.x)), _wgslsmith_f_op_f32(1241f + var_2.a.x)) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.a.x, var_2.a.x, var_2.a.x))))))));
    var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-147f * var_3.x)))), var_3.x, 105f));
    return _wgslsmith_clamp_vec3_u32(vec3<u32>(24280u, firstTrailingBit(98224u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(185u, 77688u), _wgslsmith_add_vec2_u32(var_2.d.yz, var_2.d.zz))), vec3<u32>(0u, ~_wgslsmith_mod_u32(var_0.a, u_input.a.x), abs(~(~1u))), vec3<u32>(var_1.x, ~(~var_0.a), u_input.a.x) | ~vec3<u32>(_wgslsmith_sub_u32(4294967295u, var_1.x), 26590u, ~u_input.a.x));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_sub_i32(-reverseBits(-39081i), arg_2.b);
    var var_1 = Struct_1(_wgslsmith_mult_u32(arg_2.d.x, u_input.b & abs(arg_2.c.a)), select(arg_2.c.b, any(vec2<bool>(true, arg_2.c.b)), arg_0 == ~_wgslsmith_dot_vec4_u32(u_input.a, u_input.a)));
    var_0 = -(~_wgslsmith_mult_i32(-arg_2.b, ~select(-1i, arg_2.b, var_1.b)));
    var var_2 = Struct_1(var_1.a, true);
    var var_3 = Struct_2(arg_3, reverseBits(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(239i, 33649i, arg_2.b, 2147483647i), vec4<i32>(0i, arg_2.b, -28234i, 0i)), -2147483647i) | (arg_2.b << (3483u % 32u))), arg_2.c, ~vec3<u32>(~(~arg_1.x), ~_wgslsmith_mult_u32(arg_1.x, arg_0), ~_wgslsmith_sub_u32(u_input.b, 4294967295u)));
    return Struct_1(66414u, var_2.b && (_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(-arg_2.a.x))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1872f)))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(ceil(-1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(143f, 806f, true)) - _wgslsmith_f_op_f32(-197f - -965f)))))));
}

fn func_1(arg_0: vec4<u32>) -> u32 {
    let var_0 = 30483i;
    let var_1 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(0u, u_input.b), ~arg_0.x, reverseBits(u_input.b)), u_input.b, 0u << (u_input.a.x % 32u)), select(max(min(u_input.a.zwy, arg_0.zzw), arg_0.yyw), abs(vec3<u32>(1u, 94585u, 17237u)) & vec3<u32>(arg_0.x, 9421u, 40137u), true)), _wgslsmith_div_u32(arg_0.x, 1u), ~abs(_wgslsmith_add_u32(~arg_0.x, 51733u)));
    var var_2 = _wgslsmith_f_op_f32(func_4(u_input.b, func_3(_wgslsmith_sub_u32(1u, u_input.a.x), ~vec3<u32>(95834u, 18996u, arg_0.x & var_1), Struct_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1330f, -706f))), 0i, Struct_1(u_input.b, true), ~func_2()), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1247f, -388f))))), Struct_1(_wgslsmith_mod_u32(var_1, 80798u), any(vec2<bool>(true, true)))));
    var var_3 = select(vec4<i32>(abs(var_0 >> ((arg_0.x ^ 31205u) % 32u)), ~var_0, max(_wgslsmith_add_i32(var_0, _wgslsmith_clamp_i32(2147483647i, var_0, -1i)), ~_wgslsmith_sub_i32(var_0, var_0)), i32(-1i) * -2147483647i), abs(~_wgslsmith_mod_vec4_i32(vec4<i32>(-17885i, var_0, -31472i, 2147483647i), vec4<i32>(var_0, var_0, -16466i, -57775i)) | abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0, var_0, 0i, var_0), vec4<i32>(var_0, 16614i, var_0, var_0), vec4<i32>(var_0, -28730i, -1i, -1i)))), any(!vec4<bool>(true, true, any(vec2<bool>(false, false)), all(vec2<bool>(true, true)))));
    var_3 = vec4<i32>(_wgslsmith_add_i32(~var_3.x, -68121i >> (arg_0.x % 32u)), ~7139i, var_0, 2147483647i);
    return 91778u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec2<bool>(all(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true))), any(vec4<bool>(true, true, true, false)));
    var var_1 = reverseBits(u_input.a.zwz);
    let var_2 = 13002u;
    var_1 = countOneBits(~_wgslsmith_div_vec3_u32(countOneBits(u_input.a.xzy << (u_input.a.xxy % vec3<u32>(32u))), abs(u_input.a.zyy)));
    var_1 = u_input.a.yyz;
    var_1 = firstLeadingBit(_wgslsmith_div_vec3_u32(~u_input.a.yww, _wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(var_1.x, u_input.b, 18422u)), vec3<u32>(4294967295u, ~var_1.x, func_1(vec4<u32>(12445u, 1u, var_2, 4294967295u))))));
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-436f, 1487f), _wgslsmith_f_op_f32(586f - 1815f)) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 178f))))))), _wgslsmith_dot_vec2_i32((vec2<i32>(-15554i, -9009i) ^ firstTrailingBit(vec2<i32>(1i, 0i))) & vec2<i32>(-2147483647i, max(-13785i, 2147483647i)), vec2<i32>(_wgslsmith_add_i32(firstTrailingBit(-2291i), 1i), -41914i)), func_3(~4294967295u, min(vec3<u32>(~var_2, var_2, ~4294967295u), ~u_input.a.zww), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(258f, 1055f)) - vec2<f32>(273f, 365f)), i32(-1i) * -11659i, Struct_1(_wgslsmith_add_u32(var_1.x, var_1.x), all(vec3<bool>(var_0.x, var_0.x, false))), _wgslsmith_div_vec3_u32(~u_input.a.yzy, ~vec3<u32>(var_2, 0u, var_1.x))), vec2<f32>(1f, 1f)), reverseBits(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(8906u, 72034u, var_2), vec3<u32>(u_input.b, var_1.x, 55660u), u_input.a.xzz), ~vec3<u32>(var_2, 49731u, 0u)) | vec3<u32>(1u ^ var_1.x, 4294967295u & var_1.x, min(u_input.a.x, var_2))));
    var var_4 = min(var_3.b, ~(var_3.b & _wgslsmith_add_i32(var_3.b, -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec4<i32>(min(abs(_wgslsmith_sub_i32(var_3.b, var_3.b)), var_3.b), var_3.b, var_3.b, ~0i), _wgslsmith_f_op_f32(var_3.a.x - var_3.a.x), ~_wgslsmith_mult_vec2_i32(max(vec2<i32>(var_3.b, 17031i) ^ vec2<i32>(0i, var_3.b), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_3.b, 0i), vec2<i32>(-1i, 1i), vec2<i32>(var_3.b, var_3.b))), reverseBits(vec2<i32>(var_3.b, -2147483647i))));
}

