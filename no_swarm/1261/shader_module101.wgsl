struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: bool,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 18> = array<vec4<bool>, 18>(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true));

var<private> global1: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(1u, 30117u, 77849u), vec3<u32>(4294967295u, 55427u, 0u), vec3<u32>(34983u, 37642u, 1u));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<f32>) -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-arg_0.x), true);
    var var_1 = _wgslsmith_mult_i32(-6826i, 1i);
    let var_2 = Struct_2(648f, !(_wgslsmith_f_op_f32(var_0.a - arg_0.x) > _wgslsmith_f_op_f32(round(-1303f))));
    var var_3 = vec3<i32>(reverseBits(-2147483647i), -_wgslsmith_sub_i32(2147483647i, abs(28327i)), _wgslsmith_mult_i32(0i, 57117i));
    var_3 = _wgslsmith_add_vec3_i32(-(~vec3<i32>(1i, 4057i, var_3.x)), ~select(vec3<i32>(10373i, _wgslsmith_mult_i32(var_3.x, var_3.x), 2067i >> (0u % 32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(var_3.x, -28865i, 3165i), -vec3<i32>(var_3.x, var_3.x, 17868i)), any(!vec2<bool>(var_0.b, var_0.b))));
    return true;
}

fn func_2() -> bool {
    var var_0 = select(!vec3<bool>(false, false, all(vec2<bool>(true, true))), select(select(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), true), !vec3<bool>(true, all(vec3<bool>(false, true, false)), true), !all(vec2<bool>(true, true))), vec3<bool>(true, func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-110f, -617f), vec2<f32>(463f, -691f), vec2<bool>(true, true))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(163f, 712f) * vec2<f32>(-692f, -308f)))), !all(vec3<bool>(false, true, true)) && true));
    var var_1 = Struct_1(~u_input.a, var_0.zx, var_0.x, select(select(select(!vec3<bool>(false, true, var_0.x), vec3<bool>(true, var_0.x, true), !var_0.x), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true), var_0.x), vec3<bool>(true, !var_0.x, false)), !select(!vec3<bool>(var_0.x, true, var_0.x), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, var_0.x)), vec3<bool>(var_0.x, true, var_0.x)), select(select(!vec3<bool>(false, false, var_0.x), select(vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, false, false), false), select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, true, true), vec3<bool>(true, var_0.x, false))), vec3<bool>(true, !var_0.x, true), vec3<bool>(true, var_0.x, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(451f, 363f)) * vec2<f32>(_wgslsmith_f_op_f32(max(-1615f, 546f)), _wgslsmith_f_op_f32(f32(-1f) * -171f)))));
    var var_2 = select(vec2<bool>(all(!vec4<bool>(var_0.x, true, var_1.b.x, var_0.x)) || true, any(vec4<bool>(true, true, false, !var_1.d.x))), var_1.b, true);
    var var_3 = Struct_3(var_2.x);
    var var_4 = global1[_wgslsmith_index_u32(select(1u | _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.b.x, 4294967295u), select(1u, var_1.a, var_2.x)), 50387u, false), 3u)] ^ abs(_wgslsmith_sub_vec3_u32(max(firstTrailingBit(global1[_wgslsmith_index_u32(var_1.a, 3u)]), global1[_wgslsmith_index_u32(var_1.a, 3u)]), ~abs(vec3<u32>(4294967295u, u_input.b.x, u_input.b.x))));
    return var_1.b.x;
}

fn func_1() -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(ceil(330f)), func_2());
    var var_1 = Struct_1(29060u, !select(vec2<bool>(false || var_0.b, any(vec3<bool>(var_0.b, var_0.b, var_0.b))), select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(true, true), var_0.b), !vec2<bool>(var_0.b, true)), false, vec3<bool>(!all(select(vec3<bool>(var_0.b, var_0.b, var_0.b), vec3<bool>(false, true, false), var_0.b)), _wgslsmith_mod_u32(u_input.a, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x)) == countOneBits(~0u), var_0.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(494f * var_0.a), var_0.a)) + vec2<f32>(var_0.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.a, -1266f))))));
    var var_2 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1349f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(427f, var_0.a)))), 1f);
    var_1 = Struct_1(83796u, select(select(!(!var_1.d.zz), var_1.b, var_1.b.x), select(var_1.d.zz, select(select(vec2<bool>(false, false), var_1.b, var_0.b), var_1.d.xy, any(var_1.d.zy)), vec2<bool>(false, 26540u == u_input.a)), !(!var_0.b)), var_1.b.x, select(var_1.d, var_1.d, var_1.c), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1891f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * var_1.e.x) * _wgslsmith_f_op_f32(round(-1650f))))));
    global1 = array<vec3<u32>, 3>();
    return var_1.c;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32, arg_3: Struct_3) -> Struct_2 {
    var var_0 = firstLeadingBit(vec4<i32>(~(-45530i), -arg_2, -18647i, ~(-2147483647i)));
    var var_1 = (var_0.wz >> (abs(~_wgslsmith_mult_vec2_u32(vec2<u32>(35200u, arg_0.a), vec2<u32>(arg_0.a, 4294967295u))) % vec2<u32>(32u))) & ~_wgslsmith_clamp_vec2_i32(~max(var_0.yy, var_0.yz), select(~var_0.xy, var_0.yy, vec2<bool>(true, arg_3.a)), abs(var_0.zx));
    var_0 = vec4<i32>(-17712i, ~var_1.x, ~var_0.x, _wgslsmith_dot_vec3_i32(var_0.xzx, countOneBits(_wgslsmith_clamp_vec3_i32(var_0.wxw, vec3<i32>(-1i, 2147483647i, 1i), var_0.zxy >> (u_input.b % vec3<u32>(32u))))));
    var var_2 = select(!all(select(arg_0.d.zz, !arg_0.d.yy, !arg_0.d.zx)), func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.a, arg_0.e.x), arg_0.e) * vec2<f32>(_wgslsmith_f_op_f32(arg_1.a - 143f), 164f))), false);
    var var_3 = _wgslsmith_f_op_f32(-arg_1.a);
    return Struct_2(1000f, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(43726u, select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(true, func_1()), vec2<bool>(true, true)), !all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))), vec3<bool>(any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), true)), true, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1203f, 698f)), vec2<f32>(1f, 1f))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -786f), _wgslsmith_f_op_f32(-148f * -1750f)))), Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -246f))), !any(vec3<bool>(true, true, true)) | any(select(vec2<bool>(false, false), vec2<bool>(true, false), true))), _wgslsmith_mult_i32(firstLeadingBit(-2832i), -14488i >> (~u_input.b.x % 32u)), Struct_3(true));
    var var_1 = _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(~(min(u_input.b, vec3<u32>(0u, u_input.a, 48055u)) << (vec3<u32>(u_input.a, u_input.b.x, 33767u) % vec3<u32>(32u))), min(vec3<u32>(0u, u_input.a, 0u), _wgslsmith_add_vec3_u32(abs(global1[_wgslsmith_index_u32(u_input.b.x, 3u)]), u_input.b))), ~global1[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x << (reverseBits(1u) % 32u)), 3u)]);
    var var_2 = -(~firstLeadingBit(select(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(52734i, 2147483647i, 77215i, 1i), !var_0.b)));
    let var_3 = _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, 37051u, var_1.x, 42526u), _wgslsmith_clamp_vec4_u32(vec4<u32>(42918u, 8975u, 7092u, 10787u), vec4<u32>(var_1.x, 0u, u_input.b.x, 0u), vec4<u32>(var_1.x, var_1.x, 4294967295u, 39412u) << (vec4<u32>(u_input.a, var_1.x, u_input.a, var_1.x) % vec4<u32>(32u)))), vec4<u32>(reverseBits(var_1.x), max(~4097u, u_input.a), max(~u_input.a, u_input.a), _wgslsmith_add_u32(u_input.b.x, var_1.x) << (~u_input.a % 32u))), firstTrailingBit(max(~vec4<u32>(0u, 30005u, var_1.x, 121454u), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, var_1.x, 5421u, var_1.x), vec4<u32>(u_input.b.x, 42841u, 4294967295u, 4294967295u), vec4<u32>(1u, 4294967295u, 44459u, 4294967295u)))) ^ reverseBits(~reverseBits(vec4<u32>(var_1.x, var_1.x, var_1.x, 15840u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a, -218f), vec2<f32>(-933f, 1214f), true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-360f, var_0.a))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.a, -311f))) - vec2<f32>(var_0.a, -102f)))));
}

