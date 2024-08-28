struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: bool = false;

var<private> global2: array<bool, 7> = array<bool, 7>(true, true, false, false, true, false, false);

var<private> global3: u32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<u32> {
    var var_0 = _wgslsmith_sub_u32(1301u, ~_wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(42241u, 88095u), vec2<u32>(0u, 33216u)), ~7832u), abs(~4294967295u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-537f, -976f), vec2<f32>(-1231f, 664f))))));
    var var_2 = -2147483647i;
    var_0 = _wgslsmith_div_u32(1u, select(abs(1u), ~56079u, true));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) - vec3<f32>(var_1.x, -991f, 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 434f, var_1.x)), global2[_wgslsmith_index_u32(firstLeadingBit(0u), 7u)])))));
    return vec3<u32>(37718u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(select(vec4<u32>(11344u, 0u, 4834u, 62395u), vec4<u32>(1u, 1u, 1u, 1u), select(vec4<bool>(false, true, global2[_wgslsmith_index_u32(4294967295u, 7u)], global2[_wgslsmith_index_u32(1u, 7u)]), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 7u)], global2[_wgslsmith_index_u32(26346u, 7u)], true, global2[_wgslsmith_index_u32(58445u, 7u)]), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 7u)], global2[_wgslsmith_index_u32(4294967295u, 7u)], false, true))), ~(~vec4<u32>(4294967295u, 13023u, 45935u, 38926u))), ~abs(vec4<u32>(1u, 1u, 1u, 1u))), 25847u);
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: vec3<u32>, arg_3: vec2<bool>) -> bool {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - arg_1.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2524f), _wgslsmith_f_op_f32(446f + arg_1.x))));
    var var_0 = Struct_1(_wgslsmith_mod_vec3_u32(select(func_3(), ~arg_2, vec3<bool>(true, arg_3.x, global2[_wgslsmith_index_u32(arg_2.x, 7u)])), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_2.x, arg_2.x, arg_2.x), arg_2), ~arg_2)) >> (~vec3<u32>(~arg_2.x, _wgslsmith_dot_vec2_u32(arg_2.yy, arg_2.zy), 4294967295u) % vec3<u32>(32u)), global2[_wgslsmith_index_u32(1u, 7u)]);
    var var_1 = max(~vec3<u32>(countOneBits(var_0.a.x), select(1u, arg_2.x, global2[_wgslsmith_index_u32(4294967295u, 7u)]), var_0.a.x << (9142u % 32u)), arg_2) << (vec3<u32>(1u, 17314u, 1u >> (arg_2.x % 32u)) % vec3<u32>(32u));
    global3 = var_1.x;
    let var_2 = any(vec2<bool>(arg_3.x, !arg_3.x));
    return any(select(!select(select(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 7u)], true, global2[_wgslsmith_index_u32(arg_2.x, 7u)]), vec3<bool>(true, var_2, true), arg_3.x), !vec3<bool>(arg_3.x, arg_3.x, var_2), vec3<bool>(var_2, var_2, true)), vec3<bool>(all(select(vec3<bool>(arg_3.x, var_0.b, false), vec3<bool>(false, var_0.b, false), false)), all(!vec4<bool>(true, var_0.b, true, var_2)), true), var_0.b));
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = abs(reverseBits(countOneBits(-(u_input.b | vec2<i32>(0i, u_input.b.x)))));
    let var_1 = Struct_1(firstLeadingBit(vec3<u32>(21039u, 1u, 1u)), !any(select(!vec4<bool>(true, arg_1.x, global2[_wgslsmith_index_u32(1u, 7u)], true), select(vec4<bool>(arg_2.x, true, arg_2.x, arg_1.x), vec4<bool>(true, arg_2.x, true, arg_0), arg_1.x), select(vec4<bool>(true, true, false, arg_0), vec4<bool>(false, false, arg_1.x, false), global2[_wgslsmith_index_u32(28934u, 7u)]))));
    let var_2 = select(max(_wgslsmith_mult_vec4_i32(vec4<i32>(33688i, 0i, -1i, 0i), vec4<i32>(u_input.c, 2660i, u_input.a.x, -45279i)), max(firstTrailingBit(vec4<i32>(-2147483647i, u_input.c, -1i, -40855i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, var_0.x, 11769i, var_0.x), vec4<i32>(u_input.c, 14428i, -9797i, u_input.c), vec4<i32>(1i, var_0.x, -1i, 23122i)))), vec4<i32>(8630i, 956i << (_wgslsmith_mod_u32(1877u, var_1.a.x) % 32u), _wgslsmith_div_i32(u_input.b.x, var_0.x >> (0u % 32u)), var_0.x), true) ^ abs(vec4<i32>(-23240i, ~var_0.x, var_0.x, _wgslsmith_clamp_i32(var_0.x, -994i, 0i)));
    let var_3 = all(select(vec3<bool>(any(!vec2<bool>(global2[_wgslsmith_index_u32(27993u, 7u)], true)), global2[_wgslsmith_index_u32(~4294967295u, 7u)], any(select(vec4<bool>(true, true, false, true), vec4<bool>(arg_0, arg_2.x, arg_1.x, false), vec4<bool>(true, var_1.b, arg_2.x, arg_2.x)))), select(vec3<bool>(any(vec4<bool>(false, false, true, true)), !arg_1.x, true), !select(vec3<bool>(true, global2[_wgslsmith_index_u32(90733u, 7u)], true), arg_2, true), vec3<bool>(true, var_1.b, false)), !global2[_wgslsmith_index_u32(1u, 7u)]));
    let var_4 = vec2<u32>(_wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec4_u32(countOneBits(~vec4<u32>(18067u, 53165u, var_1.a.x, 0u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(43939u, var_1.a.x, var_1.a.x, var_1.a.x), vec4<u32>(1675u, var_1.a.x, var_1.a.x, var_1.a.x)))), 4253u);
    return var_1;
}

fn func_1(arg_0: vec3<i32>) -> vec3<f32> {
    let var_0 = func_4(all(vec4<bool>(any(vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 7u)], false, global2[_wgslsmith_index_u32(0u, 7u)])) | global2[_wgslsmith_index_u32(64695u, 7u)], select(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 4294967295u)), 7u)], global2[_wgslsmith_index_u32(1u, 7u)], func_2(u_input.b.x, vec4<f32>(825f, 1053f, 538f, -1791f), vec3<u32>(84354u, 1u, 2664u), vec2<bool>(true, global2[_wgslsmith_index_u32(22776u, 7u)]))), !select(false, global2[_wgslsmith_index_u32(40640u, 7u)], false), !(!global2[_wgslsmith_index_u32(0u, 7u)]))), vec2<bool>(any(!(!vec2<bool>(global2[_wgslsmith_index_u32(0u, 7u)], false))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(22746u, 1u, 0u, 35731u)), ~(~vec4<u32>(0u, 3909u, 10559u, 81789u))), 7u)]), !(!(!(!vec3<bool>(true, true, global2[_wgslsmith_index_u32(40852u, 7u)])))));
    let var_1 = -22279i;
    let var_2 = firstLeadingBit(countOneBits(arg_0.x));
    var var_3 = -(~var_1);
    let var_4 = ~min(vec2<u32>(~var_0.a.x, ~var_0.a.x), ~vec2<u32>(var_0.a.x >> (var_0.a.x % 32u), var_0.a.x));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1856f, 1790f, -216f))), vec3<f32>(1f, 1f, 1f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 7>();
    let var_0 = vec2<bool>(~0u == (~(~0u) << (firstTrailingBit(~1u) % 32u)), true);
    global2 = array<bool, 7>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-921f, -437f, -371f), vec3<f32>(-678f, -312f, 560f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-196f, 855f, 155f))), any(vec2<bool>(true, false)) | (var_0.x && false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-467f, -1364f, 1280f), vec3<f32>(-822f, -825f, -1016f), false)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1175f, 673f, -1000f), vec3<f32>(449f, 1030f, 630f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1515f, 1253f, 154f), vec3<f32>(613f, -634f, 130f), vec3<bool>(global2[_wgslsmith_index_u32(0u, 7u)], false, global2[_wgslsmith_index_u32(54085u, 7u)]))))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1372f, 1000f, 791f), _wgslsmith_f_op_vec3_f32(func_1(vec3<i32>(u_input.a.x, 2147483647i, u_input.b.x)))))));
    global0 = _wgslsmith_f_op_f32(-var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1686f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-282f)), _wgslsmith_f_op_vec3_f32(func_1(u_input.a)).x))) * -1103f), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(~16532u, ~90349u, ~110657u, 1u)), vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(112481u, 38807u, 87381u), ~vec3<u32>(0u, 4294967295u, 129005u)), 22669u, ~_wgslsmith_add_u32(3255u, 29110u), _wgslsmith_mod_u32(45592u, 4294967295u)), select(firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)), ~vec4<u32>(1u, 1u, 1u, 1u), true)), firstTrailingBit(vec2<u32>(_wgslsmith_add_u32(50177u, 41897u), _wgslsmith_mult_u32(0u, 1u))) ^ abs(~(~vec2<u32>(1u, 0u))), var_1.x, -6254i);
}

