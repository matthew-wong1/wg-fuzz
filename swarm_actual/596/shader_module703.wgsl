struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec2<f32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 20>;

var<private> global1: array<bool, 8> = array<bool, 8>(false, true, false, true, true, true, true, false);

var<private> global2: array<vec4<u32>, 29> = array<vec4<u32>, 29>(vec4<u32>(7457u, 4294967295u, 34689u, 1u), vec4<u32>(4294967295u, 0u, 26384u, 17209u), vec4<u32>(61929u, 4294967295u, 70773u, 1u), vec4<u32>(2239u, 1u, 71665u, 35255u), vec4<u32>(110308u, 0u, 34188u, 18822u), vec4<u32>(0u, 0u, 21404u, 1u), vec4<u32>(1u, 9119u, 1509u, 4294967295u), vec4<u32>(14306u, 0u, 12533u, 28302u), vec4<u32>(48925u, 1616u, 57214u, 4294967295u), vec4<u32>(1u, 0u, 4294967295u, 106166u), vec4<u32>(101819u, 38354u, 17651u, 58898u), vec4<u32>(1u, 0u, 45304u, 51075u), vec4<u32>(1u, 50935u, 20450u, 17031u), vec4<u32>(88197u, 0u, 47042u, 19485u), vec4<u32>(0u, 51968u, 2983u, 3548u), vec4<u32>(25366u, 9277u, 1u, 54199u), vec4<u32>(54142u, 28012u, 11363u, 49590u), vec4<u32>(1u, 0u, 29413u, 1u), vec4<u32>(49515u, 75715u, 36192u, 0u), vec4<u32>(40200u, 0u, 4294967295u, 4294967295u), vec4<u32>(30982u, 39568u, 11139u, 1u), vec4<u32>(4294967295u, 1u, 24367u, 46742u), vec4<u32>(0u, 0u, 1u, 0u), vec4<u32>(0u, 1u, 4294967295u, 0u), vec4<u32>(1u, 111195u, 4294967295u, 11790u), vec4<u32>(2966u, 1u, 0u, 469u), vec4<u32>(16991u, 4294967295u, 42405u, 51533u), vec4<u32>(60411u, 0u, 4294967295u, 1u), vec4<u32>(23023u, 1u, 4294967295u, 15195u));

var<private> global3: Struct_1 = Struct_1(false, vec3<i32>(2147483647i, 0i, -537i), vec2<f32>(-329f, 817f), false);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<bool>) -> f32 {
    global2 = array<vec4<u32>, 29>();
    global1 = array<bool, 8>();
    var var_0 = Struct_1(true, ~_wgslsmith_div_vec3_i32(vec3<i32>(0i, ~(-42392i), u_input.a), vec3<i32>(~54265i, global3.b.x | global3.b.x, global3.b.x)), global3.c, global3.d);
    var var_1 = !(!vec3<bool>(arg_1.x, true, !select(global1[_wgslsmith_index_u32(3256u, 8u)], global1[_wgslsmith_index_u32(49133u, 8u)], false)));
    let var_2 = _wgslsmith_dot_vec3_i32(~(-(vec3<i32>(-2147483647i, var_0.b.x, 42658i) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)))), countOneBits(select(~vec3<i32>(var_0.b.x, global3.b.x, global3.b.x), vec3<i32>(11419i, global3.b.x, u_input.a) ^ global3.b, !(!vec3<bool>(global3.d, var_1.x, var_0.a)))));
    return _wgslsmith_f_op_f32(-2413f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.c.x), _wgslsmith_f_op_f32(trunc(global3.c.x))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: i32) -> vec3<i32> {
    let var_0 = true;
    var var_1 = ~vec4<u32>(5501u, ~(~arg_1.x & 4294967295u), ~abs(_wgslsmith_dot_vec2_u32(arg_1.zx, vec2<u32>(68700u, 56639u))), arg_1.x);
    global0 = array<vec4<f32>, 20>();
    var_1 = _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(~var_1.x, _wgslsmith_add_u32(var_1.x, var_1.x), 51806u, _wgslsmith_add_u32(56575u, var_1.x)), _wgslsmith_sub_vec4_u32(max(global2[_wgslsmith_index_u32(var_1.x, 29u)], vec4<u32>(2902u, arg_1.x, var_1.x, 35702u)), ~global2[_wgslsmith_index_u32(var_1.x, 29u)])) >> (_wgslsmith_mod_vec4_u32(firstLeadingBit(~global2[_wgslsmith_index_u32(var_1.x, 29u)]), select(_wgslsmith_sub_vec4_u32(global2[_wgslsmith_index_u32(arg_1.x, 29u)], global2[_wgslsmith_index_u32(var_1.x, 29u)]), reverseBits(vec4<u32>(60884u, var_1.x, 44301u, 11380u)), arg_0)) % vec4<u32>(32u)), max(vec4<u32>(arg_1.x, ~(var_1.x ^ 0u), 1413u, 28144u), global2[_wgslsmith_index_u32(reverseBits(var_1.x), 29u)]));
    let var_2 = Struct_1(true, -abs(vec3<i32>(arg_2 & u_input.a, u_input.a, min(u_input.a, global3.b.x))), vec2<f32>(_wgslsmith_f_op_f32(floor(221f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1039f + 668f), -1267f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-184f, global3.c.x)))), all(select(vec3<bool>(false, any(arg_0.xy), true), !arg_0.zyz, arg_0.yzw)));
    return firstLeadingBit(max(vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, 1i, -2147483647i, u_input.a), firstLeadingBit(vec4<i32>(-6823i, u_input.a, arg_2, var_2.b.x))), countOneBits(-31869i), firstTrailingBit(~arg_2)), vec3<i32>(arg_2, -_wgslsmith_clamp_i32(40811i, global3.b.x, 2147483647i), _wgslsmith_mult_i32(arg_2, 11576i))));
}

fn func_2() -> Struct_1 {
    let var_0 = global3.c.x;
    global3 = Struct_1(!(!all(vec3<bool>(false, false, false)) == (_wgslsmith_f_op_f32(f32(-1f) * -414f) <= _wgslsmith_f_op_f32(-global3.c.x))), func_3(vec4<bool>(global3.a, true, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(min(vec2<u32>(1u, 18798u), vec2<u32>(32794u, 0u)), vec2<u32>(1u, 1u)), 8u)], abs(global3.b.x) > -16608i), vec3<u32>(1u, _wgslsmith_mod_u32(~1u, countOneBits(4294967295u)), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(17562u, 31039u, 4294967295u), vec3<u32>(49242u, 35082u, 4294967295u)))), _wgslsmith_sub_i32(_wgslsmith_div_i32(-37545i, -1i), min(max(global3.b.x, global3.b.x), 0i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-310f, global3.c.x))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(140f, global3.c.x) - global3.c)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.c.x, _wgslsmith_f_op_f32(f32(-1f) * -143f)) + global3.c)), true);
    var var_1 = Struct_1(global3.a, global3.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global3.c.x, -472f))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3.c.x, global3.c.x), global3.c, global3.a))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global3.c.x, global3.c.x))), global3.c)))), !all(vec3<bool>(false, any(vec2<bool>(global3.a, global1[_wgslsmith_index_u32(31947u, 8u)])), false)));
    global1 = array<bool, 8>();
    var_1 = Struct_1(true, abs(abs(abs(vec3<i32>(1412i, var_1.b.x, 2147483647i)))) >> (~vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), var_1.c, true);
    return Struct_1(1804f < global3.c.x, -(~global3.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(global3.c)), _wgslsmith_f_op_vec2_f32(-var_1.c))), vec2<f32>(_wgslsmith_f_op_f32(ceil(global3.c.x)), -1055f)) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2394f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -470f)))), !(!global1[_wgslsmith_index_u32(~4294967295u, 8u)]));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = Struct_1(all(!vec4<bool>(false, arg_2, false, true)) == true, vec3<i32>(1i & arg_0.b.x, -(~(~u_input.a)), -18030i), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(global3.c)))), arg_3.b.x > abs(1i));
    global1 = array<bool, 8>();
    var var_1 = vec4<u32>(abs(firstTrailingBit(24538u)), _wgslsmith_clamp_u32(47728u, abs(~firstTrailingBit(13794u)), _wgslsmith_dot_vec2_u32(vec2<u32>(93666u, ~1u), select(vec2<u32>(50345u, 4294967295u) >> (vec2<u32>(1u, 0u) % vec2<u32>(32u)), vec2<u32>(4294967295u, 39873u), any(vec2<bool>(global1[_wgslsmith_index_u32(1u, 8u)], false))))), 4294967295u, 0u);
    let var_2 = func_2();
    var_1 = vec4<u32>(var_1.x, 0u, 0u, firstLeadingBit(86076u)) ^ countOneBits(abs(~_wgslsmith_clamp_vec4_u32(global2[_wgslsmith_index_u32(28937u, 29u)], global2[_wgslsmith_index_u32(33020u, 29u)], global2[_wgslsmith_index_u32(29816u, 29u)])));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(-global3.b, vec2<bool>(true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(620f, var_2.c.x)) + _wgslsmith_f_op_f32(ceil(var_2.c.x))), arg_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.x) * -198f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(arg_1.yxx, arg_1.xyw))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_1.yxw, arg_1.yzw, arg_0.a)) * _wgslsmith_div_vec3_f32(arg_1.xwx, vec3<f32>(global3.c.x, var_0.c.x, global3.c.x)))), vec3<f32>(-1022f, -691f, _wgslsmith_f_op_f32(sign(-1228f)))), ~var_1.ww, _wgslsmith_clamp_vec2_u32(~select(vec2<u32>(0u, var_1.x) | vec2<u32>(var_1.x, 44319u), var_1.xz << (vec2<u32>(1u, 4554u) % vec2<u32>(32u)), vec2<bool>(var_2.d, arg_2)), vec2<u32>(firstTrailingBit(32980u), var_1.x), ~vec2<u32>(1u, firstTrailingBit(var_1.x))), reverseBits(1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(-2147483647i | ~_wgslsmith_dot_vec3_i32(global3.b, global3.b));
    global3 = Struct_1(global1[_wgslsmith_index_u32(1u, 8u)] | !(26064i > u_input.a), -global3.b, global3.c, true);
    let var_1 = Struct_1(all(select(vec3<bool>(!global1[_wgslsmith_index_u32(0u, 8u)], any(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(50432u, 8u)])), global1[_wgslsmith_index_u32(~4294967295u, 8u)]), select(vec3<bool>(global3.a, global1[_wgslsmith_index_u32(137u, 8u)], true), vec3<bool>(global3.a, false, false), any(vec4<bool>(global1[_wgslsmith_index_u32(70792u, 8u)], false, true, true))), global3.c.x > _wgslsmith_f_op_f32(f32(-1f) * -582f))), countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, ~(-24674i), -1i), select(-vec3<i32>(-57110i, 0i, 0i), -global3.b, vec3<bool>(false, global3.a, false)))), global3.c, global3.a);
    global0 = array<vec4<f32>, 20>();
    let var_2 = vec3<u32>(4294967295u, ~1u, 4294967295u);
    let var_3 = false;
    let var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.c.x, 558f)))), var_1.c.x) * vec3<f32>(_wgslsmith_f_op_f32(func_1(~(vec3<i32>(u_input.a, global3.b.x, 1000i) & var_1.b), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(var_3, true)))), var_1.c.x, _wgslsmith_f_op_f32(-845f - _wgslsmith_f_op_f32(f32(-1f) * -1994f))));
    global0 = array<vec4<f32>, 20>();
    let x = u_input.a;
    s_output = func_4(func_2(), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x))), global3.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.c.x, global3.c.x, false)))), _wgslsmith_f_op_f32(max(-261f, global3.c.x))), var_3, func_2());
}

