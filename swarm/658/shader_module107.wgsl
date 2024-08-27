struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-6456i, 0i, 1i, 5108i);

var<private> global1: array<vec4<i32>, 19>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<f32> {
    let var_0 = Struct_2(_wgslsmith_mult_vec3_i32(abs(max(select(global0.wxy, u_input.d.wyx, true), min(vec3<i32>(global0.x, global0.x, -18909i), global0.zyx))), _wgslsmith_mult_vec3_i32(~vec3<i32>(global0.x, global0.x, u_input.d.x), vec3<i32>(~u_input.b, ~global0.x, reverseBits(u_input.d.x)))), firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 39329u), vec2<u32>(u_input.c, 16434u)), ~0u), firstLeadingBit(vec3<u32>(u_input.c, 1u, 0u)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(4294967295u, u_input.a, 56745u)) % vec3<u32>(32u)))), 10684i);
    global1 = array<vec4<i32>, 19>();
    global1 = array<vec4<i32>, 19>();
    var var_1 = Struct_4(select(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), vec3<bool>(false, false, false)), select(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), true), true), var_0, select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec2<bool>(true, false))), true));
    var var_2 = u_input.c;
    return _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(457f + -1000f))), _wgslsmith_f_op_f32(ceil(1f)), 1552f)));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: bool, arg_3: Struct_1) -> Struct_2 {
    var var_0 = arg_1.b.zz;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, 2084f, -1871f), vec3<f32>(arg_3.a, -1844f, arg_3.a)) * _wgslsmith_f_op_vec3_f32(func_3())))))));
    global0 = ~global1[_wgslsmith_index_u32(1u, 19u)];
    var var_2 = arg_3;
    let var_3 = var_0.x;
    return arg_1;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -707f) + -1655f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1311f, -697f, false)))))) - _wgslsmith_f_op_f32(f32(-1f) * -385f));
    let var_1 = max(~vec4<u32>(func_2(var_0, arg_1, true, Struct_1(var_0)).b.x, 4294967295u, arg_0.x, 1u), _wgslsmith_clamp_vec4_u32(arg_0, abs(max(arg_0 << (arg_0 % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(arg_0, vec4<u32>(u_input.a, 0u, u_input.a, 52380u), vec4<u32>(u_input.c, arg_1.b.x, 0u, u_input.c)))), ~arg_0));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1020f, var_0, var_0)))), vec4<f32>(828f, _wgslsmith_f_op_f32(var_0 + var_0), 810f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1626f - var_0), var_0)))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(var_0, var_0, false)), _wgslsmith_f_op_f32(abs(-1542f)), _wgslsmith_f_op_f32(trunc(450f)), -825f)))));
    let var_3 = 20409i;
    var var_4 = Struct_4(vec3<bool>((any(vec2<bool>(true, false)) && any(vec2<bool>(false, true))) != true, _wgslsmith_f_op_f32(var_2.x * 282f) != 1169f, -1642f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-209f - var_2.x))), Struct_2(u_input.d.zxy, ~(~arg_1.b) >> (min(arg_1.b >> (var_1.yxx % vec3<u32>(32u)), arg_1.b) % vec3<u32>(32u)), 0i), vec3<bool>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_3, global0.x), vec2<i32>(arg_1.c, global0.x)), vec2<i32>(global0.x, var_3)) == u_input.b, any(select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true))), all(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), false))));
    return ~(_wgslsmith_dot_vec2_u32(arg_1.b.zx, var_1.yz) & ~(~(arg_0.x << (arg_0.x % 32u))));
}

fn func_1(arg_0: i32) -> f32 {
    var var_0 = ~vec3<u32>(u_input.c, min(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.c), vec2<u32>(0u, 0u)), _wgslsmith_mod_u32(82380u, 17217u) ^ (u_input.a | 72431u)), _wgslsmith_div_u32(~(14509u << (0u % 32u)), _wgslsmith_div_u32(10036u, u_input.a) ^ u_input.a));
    var var_1 = vec3<u32>(func_4(vec4<u32>(~1u, ~abs(42559u), u_input.c, ~0u), func_2(-536f, Struct_2(-vec3<i32>(arg_0, -1i, 43377i), firstLeadingBit(vec3<u32>(var_0.x, u_input.c, var_0.x)), -58065i), true, Struct_1(-559f))), u_input.c, 5741u);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-225f - _wgslsmith_f_op_f32(min(365f, _wgslsmith_f_op_f32(f32(-1f) * -1126f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -123f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1f)))));
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_2.x)), -229f));
    var_0 = firstTrailingBit(firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(57442u, _wgslsmith_sub_u32(u_input.c, 118343u), ~u_input.c), vec3<u32>(0u ^ var_0.x, ~73983u, _wgslsmith_sub_u32(4294967295u, var_1.x)))));
    return 150f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-492f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(283f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -151f))), _wgslsmith_f_op_f32(1881f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.d.x)))), -662f), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1000f)), -846f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-931f * -1911f)) + -410f), 703f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2301f, -132f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1083f)), _wgslsmith_f_op_f32(sign(-1214f)))))));
    var var_1 = vec2<bool>(true, true);
    var_1 = vec2<bool>(all(vec3<bool>(true, !all(vec4<bool>(false, true, false, true)), true)), all(vec2<bool>(var_1.x, any(!vec2<bool>(var_1.x, var_1.x)))));
    var var_2 = vec4<bool>(var_1.x, true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, -893f) - _wgslsmith_f_op_f32(step(var_0.x, 802f))))) > -915f, var_1.x);
    var var_3 = -select(_wgslsmith_clamp_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.d.x), u_input.d.yw), -(~(-1i)), 42560i), _wgslsmith_div_i32(0i, _wgslsmith_div_i32(-15816i, _wgslsmith_mod_i32(u_input.d.x, 2147483647i))), true);
    let var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(var_0.x))))), var_0.x, var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(-213f, _wgslsmith_div_vec4_f32(var_0, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(var_0, var_0)), _wgslsmith_f_op_vec4_f32(trunc(var_0))))))));
}

