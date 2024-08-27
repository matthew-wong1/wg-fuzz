struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false);

var<private> global1: i32;

var<private> global2: array<u32, 19>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-471f, -2234f, global0.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-610f - 807f)), 371f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(2988f - 2126f), _wgslsmith_div_f32(-797f, 653f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-867f)), _wgslsmith_f_op_f32(f32(-1f) * -1434f), -2067f, -1000f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1190f, 897f, -1055f, -1000f)))));
    let var_1 = Struct_1(true);
    let var_2 = ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.c.x, u_input.d.x) | vec4<u32>(4294967295u, 0u, global2[_wgslsmith_index_u32(32315u, 19u)], 0u), vec4<u32>(u_input.b, 30560u, global2[_wgslsmith_index_u32(57283u, 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)]))) | ~19543u;
    let var_3 = 27391i & _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(_wgslsmith_add_i32(u_input.a, 1i), u_input.a)), vec2<i32>(62782i, u_input.a));
    let var_4 = u_input.a;
    return _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, firstTrailingBit(~(-var_3)), _wgslsmith_mod_i32(u_input.a, max(-2147483647i, 16139i)), -(var_3 | ~var_3)), min(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-41863i, 0i), vec2<i32>(var_4, var_4)), 1i, var_4, firstLeadingBit(64920i)), _wgslsmith_mult_vec4_i32(max(vec4<i32>(0i, -1i, 0i, var_3), vec4<i32>(-1i, 2147483647i, -1i, u_input.a)), vec4<i32>(u_input.a, var_3, 5128i, -12512i))), vec4<i32>(-1i) * -reverseBits(vec4<i32>(17010i, var_4, -1i, var_3))));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: f32) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.a, 750f)) - 750f))), arg_1.b, ~countOneBits(u_input.d), func_3());
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(trunc(767f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-arg_2)))), _wgslsmith_f_op_f32(-arg_2), -603f, 1017f)));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-arg_1.a), Struct_1(false), vec3<u32>(u_input.e, abs(~_wgslsmith_clamp_u32(46489u, 42468u, u_input.e)), _wgslsmith_add_u32(18760u, firstLeadingBit(arg_1.c.x))), firstLeadingBit(arg_1.d));
    var var_3 = Struct_1(arg_1.b.a);
    var var_4 = arg_1.b;
    return abs(firstTrailingBit(0u));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: u32) -> Struct_2 {
    var var_0 = vec3<u32>(min(~func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-356f, -333f, 135f) + vec3<f32>(-1375f, 881f, -223f)), Struct_2(1270f, arg_0, u_input.d, vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a)), -503f), ~arg_2), _wgslsmith_div_u32(global2[_wgslsmith_index_u32(~543u, 19u)], 70003u) >> (_wgslsmith_div_u32(35933u, ~0u) % 32u), global2[_wgslsmith_index_u32(0u, 19u)] ^ ~(~(~1u)));
    var var_1 = max(66142u, u_input.e);
    var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-626f, -467f, 1141f))))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -442f) + _wgslsmith_f_op_f32(floor(-859f))), arg_0, u_input.d, max(~vec4<i32>(1i, 1338i, 2147483647i, 1i), vec4<i32>(u_input.a, 0i, 0i, -36627i))), 1209f), 1u), 19u)];
    var var_2 = any(vec4<bool>(true, global0.a, true, true));
    var var_3 = max(-(i32(-1i) * -(~2147483647i)), u_input.a);
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -203f)), arg_0, vec3<u32>(arg_2, u_input.d.x, countOneBits(arg_1.x) >> (4294967295u % 32u)), -(~vec4<i32>(-2147483647i, u_input.a, u_input.a, 46224i)) & vec4<i32>(u_input.a & 1i, -2147483647i, u_input.a, abs(-57040i) ^ -u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(290f, -676f)), Struct_1(true), ~_wgslsmith_mult_vec3_u32(select(abs(u_input.d), countOneBits(u_input.d), vec3<bool>(true, true, true)), firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(26676u, 3980u, 11094u)))), ~(~((vec4<i32>(2147483647i, 0i, -2147483647i, u_input.a) << (vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(u_input.d.x, 19u)], 1u, 63421u) % vec4<u32>(32u))) >> (~vec4<u32>(global2[_wgslsmith_index_u32(43752u, 19u)], 13067u, 36769u, 132467u) % vec4<u32>(32u)))));
    global2 = array<u32, 19>();
    var var_1 = func_1(var_0.b, vec2<u32>(u_input.c.x, abs(~var_0.c.x)), 1u);
    global2 = array<u32, 19>();
    let var_2 = false | all(select(vec2<bool>(!global0.a, true), select(vec2<bool>(true, global0.a), vec2<bool>(var_1.b.a, var_0.b.a), vec2<bool>(false, var_1.b.a)), select(!vec2<bool>(global0.a, global0.a), vec2<bool>(var_0.b.a, true), vec2<bool>(true, true))));
    var_1 = Struct_2(-930f, var_0.b, vec3<u32>(~min(_wgslsmith_mod_u32(var_0.c.x, 4294967295u), 7004u), global2[_wgslsmith_index_u32(~u_input.d.x, 19u)], 1u), _wgslsmith_sub_vec4_i32(var_1.d, vec4<i32>(17139i, -(~u_input.a), countOneBits(~(-29269i)), var_0.d.x)));
    let var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(~(abs(vec4<u32>(var_1.c.x, 47032u, var_1.c.x, 0u)) << (~vec4<u32>(var_0.c.x, u_input.e, global2[_wgslsmith_index_u32(var_1.c.x, 19u)], global2[_wgslsmith_index_u32(34644u, 19u)]) % vec4<u32>(32u))), select(vec4<u32>(36680u, u_input.d.x, var_3.c.x, var_3.c.x) | max(vec4<u32>(48387u, 4599u, u_input.b, var_0.c.x), vec4<u32>(var_0.c.x, 47208u, 4294967295u, var_3.c.x)), ~(vec4<u32>(var_3.c.x, 0u, u_input.b, u_input.d.x) << (vec4<u32>(4294967295u, 70608u, var_1.c.x, 17709u) % vec4<u32>(32u))), any(!vec4<bool>(global0.a, true, var_0.b.a, false)))), var_0.d.x, ~abs(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, 1338f, 1846f) - vec3<f32>(var_3.a, -581f, 216f)), func_1(Struct_1(true), u_input.c, 4521u), var_3.a)), global2[_wgslsmith_index_u32(var_3.c.x, 19u)]);
}

