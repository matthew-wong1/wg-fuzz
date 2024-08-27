struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28>;

var<private> global1: f32 = 381f;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(150f, 1742f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.b))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1537f, arg_0.b)) * _wgslsmith_f_op_f32(select(arg_0.b, _wgslsmith_f_op_f32(-arg_0.b), any(vec4<bool>(true, false, true, true))))))));
    global0 = array<u32, 28>();
    var var_0 = Struct_1(firstLeadingBit(select(vec2<i32>(2147483647i, countOneBits(0i)), firstTrailingBit(u_input.e), vec2<bool>(all(vec3<bool>(true, false, true)), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) - arg_0.b));
    var_0 = Struct_1(vec2<i32>(reverseBits(-73996i | (var_0.a.x >> (u_input.d.x % 32u))), 8605i), _wgslsmith_f_op_f32(-1f));
    global1 = -1397f;
    return 0u;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: f32) -> bool {
    let var_0 = ~(~_wgslsmith_div_i32(-5748i, 2540i)) & ~countOneBits(-arg_0.x);
    let var_1 = vec4<bool>(true, _wgslsmith_sub_i32(arg_0.x, (var_0 >> (arg_1.x % 32u)) >> (global0[_wgslsmith_index_u32(max(arg_1.x, 4294967295u), 28u)] % 32u)) <= _wgslsmith_add_i32(-2147483647i, 2147483647i), true, (~select(1u, 78380u, false) & ~func_3(Struct_1(arg_0, arg_2))) <= ~max(u_input.d.x, ~11017u));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2, -1000f)));
    var var_2 = var_1.zz;
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, arg_2, arg_2))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(272f)), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(min(arg_2, -2099f)), _wgslsmith_f_op_f32(abs(arg_2))), vec4<f32>(1407f, -132f, _wgslsmith_div_f32(1106f, 145f), -110f)))), select(var_2.x, var_2.x, !(countOneBits(u_input.a) <= _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, var_0, -2147483647i, -5518i), vec4<i32>(-11043i, arg_0.x, 1i, var_0))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)) == arg_2;
}

fn func_1() -> f32 {
    let var_0 = (select(vec4<i32>(u_input.a, 1i, 13933i << (global0[_wgslsmith_index_u32(u_input.b, 28u)] % 32u), ~(-31110i)), max(vec4<i32>(35819i, -30395i, u_input.c, 1i), vec4<i32>(u_input.e.x, 1i, u_input.c, -2147483647i)) | ~vec4<i32>(-7375i, -17426i, -1i, -85i), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), true)) & -(~(-vec4<i32>(u_input.a, u_input.a, 26962i, u_input.a)))) << (select(~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.d.x, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 28u)], 18728u), vec4<u32>(4294967295u, 0u, u_input.d.x, 1219u) ^ u_input.d), u_input.d << (u_input.d % vec4<u32>(32u)), select(vec4<bool>(true, any(vec2<bool>(true, false)), func_2(vec2<i32>(1i, -39190i), vec4<u32>(global0[_wgslsmith_index_u32(29704u, 28u)], 77441u, 33313u, 0u), -827f), 1i <= u_input.a), select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true), any(vec2<bool>(false, true))), any(vec4<bool>(true, false, true, false)))) % vec4<u32>(32u));
    let var_1 = !(!(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)))));
    var var_2 = Struct_1(var_0.zy, _wgslsmith_f_op_f32(f32(-1f) * -1339f));
    let var_3 = 1i;
    var var_4 = _wgslsmith_f_op_f32(-var_2.b);
    return _wgslsmith_f_op_f32(max(1784f, 2015f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(func_1());
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1f, -702f));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, -237f, var_0.x, -1670f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-998f, var_0.x, var_0.x, var_0.x) - vec4<f32>(var_0.x, 899f, var_0.x, var_0.x))))))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1019f, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(633f * var_0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1188f)))), vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + 919f), _wgslsmith_f_op_f32(exp2(var_0.x)))))));
    var var_2 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(max(83991u, global0[_wgslsmith_index_u32(2740u, 28u)]) >> (u_input.d.x % 32u), _wgslsmith_sub_u32(min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 28u)], 28u)], 28u)], 18262u), u_input.d.x), reverseBits(26392u), 1u), select(_wgslsmith_mult_vec4_u32(reverseBits(u_input.d), ~u_input.d), u_input.d | u_input.d, all(vec4<bool>(true, true, true, true)))), 1u);
    var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(35873u, reverseBits(56022u), ~(~(~u_input.d.x)), ~1u), ~firstTrailingBit(max(u_input.d, u_input.d)));
    let var_3 = Struct_1(min(vec2<i32>(-11890i, _wgslsmith_mult_i32(-u_input.a, u_input.a << (38112u % 32u))), vec2<i32>(u_input.e.x, i32(-1i) * -15738i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x))));
    var var_4 = _wgslsmith_add_u32(~109201u, _wgslsmith_clamp_u32(min((u_input.d.x | 0u) << (global0[_wgslsmith_index_u32(u_input.b, 28u)] % 32u), reverseBits(~4294967295u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, u_input.d.x) & vec2<u32>(u_input.d.x, 4294967295u), _wgslsmith_div_vec2_u32(u_input.d.yw, firstTrailingBit(u_input.d.zx))), ~(~u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(_wgslsmith_add_i32(i32(-1i) * -2147483647i, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, var_3.a.x, u_input.e.x, var_3.a.x), vec4<i32>(var_3.a.x, u_input.e.x, u_input.e.x, -1i)))), _wgslsmith_dot_vec3_i32(vec3<i32>(~27733i, u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_3.a.x), var_3.a)), reverseBits(-vec3<i32>(-18719i, var_3.a.x, var_3.a.x))), ~(~(~u_input.c))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -353f))), var_0.x) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -986f), var_3.b, var_0.x, _wgslsmith_f_op_f32(-1f))), u_input.d.xw, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(var_3.b, _wgslsmith_f_op_f32(trunc(994f)))), var_1.x, _wgslsmith_f_op_f32(ceil(var_3.b)), _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_3.b, -1000f, -1000f) + vec4<f32>(var_0.x, 1000f, 1000f, var_0.x)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, var_3.b, var_1.x), vec4<f32>(-1333f, -715f, 959f, var_3.b), vec4<bool>(true, true, true, false)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-772f, 867f, var_1.x, 285f), vec4<f32>(var_3.b, var_3.b, -1482f, var_3.b), true)), true))));
}

