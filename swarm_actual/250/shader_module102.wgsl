struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
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

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    var var_0 = (u_input.b.xx & vec2<u32>(firstLeadingBit(u_input.a), u_input.b.x)) | vec2<u32>(~_wgslsmith_mult_u32(u_input.a, u_input.b.x), u_input.a);
    var_0 = _wgslsmith_add_vec2_u32(u_input.b.xy, ~max(u_input.b.yy, ~select(u_input.b.yy, u_input.b.yx, vec2<bool>(true, true))));
    return abs(_wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, -20841i, 1i, -4415i) & select(vec4<i32>(9812i, 1i, -1i, 0i), vec4<i32>(0i, 0i, 20783i, -22844i), vec4<bool>(false, true, true, false)), select(vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(2147483647i, -23244i, -457i, -2147483647i), false)) & firstLeadingBit(-1i));
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = u_input.b.x;
    var var_1 = func_3();
    var_1 = (-(~arg_0.x) >> (~_wgslsmith_clamp_u32(~u_input.a, select(u_input.a, 4294967295u, true), 0u) % 32u)) & arg_0.x;
    let var_2 = _wgslsmith_f_op_f32(2165f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-377f - _wgslsmith_f_op_f32(abs(-2282f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(567f, -440f)), true)))));
    let var_3 = vec4<bool>(true, true, true, !(u_input.a > firstTrailingBit(u_input.b.x)) == ((~u_input.a > u_input.a) || true));
    return Struct_1(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.b.x, ~1u), u_input.b.x), ~_wgslsmith_add_u32(59258u, _wgslsmith_add_u32(u_input.a, 73018u)), 11485u >> ((u_input.a >> (u_input.b.x % 32u)) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 8314u, ~0u, u_input.b.x), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u), reverseBits(vec4<u32>(0u, u_input.b.x, 8971u, u_input.a))))), select(vec2<bool>(true, all(vec2<bool>(false, var_3.x))), vec2<bool>(all(select(var_3, var_3, var_3)), all(var_3)), vec2<bool>(select(all(vec3<bool>(var_3.x, var_3.x, true)), any(var_3), all(var_3.zx)), all(select(var_3.wxy, vec3<bool>(true, true, var_3.x), var_3.xxx)))), arg_0);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-499f)) - _wgslsmith_f_op_f32(abs(871f))), 307f, !all(vec3<bool>(true, arg_1.b.x, true)))) + _wgslsmith_f_op_f32(f32(-1f) * -1320f)), -492f, _wgslsmith_f_op_f32(f32(-1f) * -714f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(983f - -891f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -828f)))))));
    var var_1 = func_2(~abs(~arg_2.xw)).b;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -817f));
    let var_3 = _wgslsmith_f_op_vec4_f32(-var_0);
    let var_4 = arg_0.a.x;
    return _wgslsmith_f_op_f32(var_3.x + -1000f);
}

fn func_5(arg_0: vec4<u32>, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 268f, -1000f, -1392f) + vec4<f32>(arg_1.x, -267f, 111f, 537f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(416f, arg_1.x, 1153f, arg_1.x)))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(arg_1.x)), arg_1.x, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-arg_1.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.x, 1000f, 207f, arg_1.x), vec4<f32>(arg_1.x, arg_1.x, 924f, -917f), false)))))));
    var var_1 = false;
    return Struct_1(_wgslsmith_div_vec4_u32(abs(~(~vec4<u32>(20476u, 0u, u_input.b.x, u_input.a))), arg_0), !vec2<bool>(true, any(vec4<bool>(true, true, true, true))), -vec2<i32>(~(i32(-1i) * -1205i), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(40463i, 1i), vec2<i32>(73228i, -2147483647i)))));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = func_5(vec4<u32>(1u | _wgslsmith_add_u32(arg_2.a.x, arg_2.a.x), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.b.x, 1u, arg_2.a.x, arg_2.a.x)), arg_1.a), _wgslsmith_sub_u32(arg_2.a.x & 4294967295u, _wgslsmith_div_u32(arg_1.a.x, 4645u)), ~43468u) << (~(abs(vec4<u32>(arg_2.a.x, arg_2.a.x, 1u, 0u)) | _wgslsmith_mult_vec4_u32(arg_2.a, vec4<u32>(1u, 1u, u_input.b.x, 84598u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -959f))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(func_4(arg_2, func_2(arg_1.c), vec4<i32>(12740i, arg_1.c.x, arg_1.c.x, arg_2.c.x) << (vec4<u32>(arg_1.a.x, u_input.a, arg_1.a.x, 44822u) % vec4<u32>(32u))))) + arg_0.zww));
    var_0 = Struct_1(vec4<u32>(arg_2.a.x, ~(~1u), _wgslsmith_div_u32(arg_1.a.x, _wgslsmith_sub_u32(15150u, 5434u)), 1218u) & ~(~arg_1.a), vec2<bool>(any(select(select(vec3<bool>(var_0.b.x, true, false), vec3<bool>(arg_1.b.x, var_0.b.x, arg_2.b.x), vec3<bool>(var_0.b.x, true, arg_1.b.x)), !vec3<bool>(arg_1.b.x, false, false), select(vec3<bool>(arg_2.b.x, arg_2.b.x, arg_1.b.x), vec3<bool>(arg_2.b.x, false, true), false))), false), vec2<i32>(1i, ~52133i) ^ arg_2.c);
    var var_1 = Struct_1(~countOneBits(max(var_0.a | vec4<u32>(0u, 1u, 71514u, var_0.a.x), _wgslsmith_div_vec4_u32(var_0.a, vec4<u32>(arg_2.a.x, var_0.a.x, arg_1.a.x, 24284u)))), arg_2.b, -arg_2.c);
    let var_2 = 4294967295u;
    var var_3 = arg_2;
    return ~select(max(var_0.a.x, var_1.a.x) | var_0.a.x, arg_2.a.x, all(vec3<bool>(true, true, false))) & ~(~_wgslsmith_sub_u32(~79889u, 9466u << (1u % 32u)));
}

fn func_6(arg_0: vec4<u32>) -> Struct_1 {
    return func_2(~(~max(vec2<i32>(1i, 1i), vec2<i32>(-2147483647i, -69594i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(~(~(vec4<u32>(u_input.b.x, 101901u, 42138u, 4294967295u) << (vec4<u32>(0u, 33733u, 65381u, u_input.a) % vec4<u32>(32u)))) | (vec4<u32>(0u, u_input.a, abs(0u), func_1(vec4<f32>(-696f, -2023f, 1555f, 1058f), Struct_1(vec4<u32>(u_input.b.x, 0u, u_input.a, u_input.a), vec2<bool>(false, false), vec2<i32>(0i, -1i)), Struct_1(vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, 17125u), vec2<bool>(false, true), vec2<i32>(3684i, 1i)))) >> (func_5(vec4<u32>(0u, 4294967295u, u_input.a, 6065u), vec3<f32>(507f, 1320f, 229f)).a % vec4<u32>(32u))));
    let var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(-1i, -func_3() ^ var_0.c.x, 1i, -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_0.c.x, 2147483647i), vec3<i32>(var_0.c.x, -31005i, -1i))), (~select(vec4<i32>(2147483647i, -2147483647i, var_0.c.x, var_0.c.x), vec4<i32>(var_0.c.x, 831i, 9095i, -13406i), vec4<bool>(true, false, false, var_0.b.x)) >> ((~vec4<u32>(var_0.a.x, 11833u, var_0.a.x, 4294967295u) | vec4<u32>(1u, 0u, 0u, 1u)) % vec4<u32>(32u))) << (vec4<u32>(u_input.a, 75544u, countOneBits(_wgslsmith_mod_u32(4294967295u, 25535u)), var_0.a.x) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(675f, -1401f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-711f, 639f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(513f, -783f))), vec2<f32>(108f, _wgslsmith_f_op_f32(f32(-1f) * -1340f)), var_0.b))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -166f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-977f * -1000f))))));
    var var_3 = u_input.a;
    var var_4 = 24687u;
    let x = u_input.a;
    s_output = StorageBuffer(~func_2(-var_0.c).a.x);
}

