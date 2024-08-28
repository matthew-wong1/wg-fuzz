struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16> = array<u32, 16>(0u, 0u, 4294967295u, 0u, 115220u, 0u, 0u, 51694u, 58470u, 4294967295u, 4294967295u, 1u, 1u, 34919u, 1u, 1779u);

var<private> global1: array<vec2<bool>, 14>;

var<private> global2: array<bool, 23>;

var<private> global3: Struct_3 = Struct_3(Struct_2(vec3<i32>(10244i, -40116i, 0i), 1u), vec4<i32>(1i, -66873i, 0i, 1i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<f32>) -> vec2<f32> {
    let var_0 = Struct_1(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -1i, ~43277i, _wgslsmith_dot_vec4_i32(vec4<i32>(global3.b.x, 0i, -1i, 32645i), vec4<i32>(-1i, -2147483647i, u_input.a.x, -1i))), ~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, global3.a.a.x), u_input.a)), abs(u_input.a.x)), reverseBits(u_input.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.xx) * vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(floor(-622f)))), vec3<u32>(32067u, 1u, 19692u));
    let var_1 = select(select(vec3<bool>(!all(vec2<bool>(true, global2[_wgslsmith_index_u32(17371u, 23u)])), false, all(global1[_wgslsmith_index_u32(57388u, 14u)]) && !global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(48580u, 16u)], 23u)]), vec3<bool>(all(select(vec4<bool>(global2[_wgslsmith_index_u32(global3.a.b, 23u)], false, global2[_wgslsmith_index_u32(var_0.d.x, 23u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.a.b, 16u)], 16u)], 23u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 23u)], global2[_wgslsmith_index_u32(52257u, 23u)], true), false)), true, !any(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 23u)], global2[_wgslsmith_index_u32(var_0.d.x, 23u)], false))), select(global2[_wgslsmith_index_u32(11151u, 23u)], all(vec3<bool>(true, true, true)), (var_0.c.x >= arg_0.x) == false)), vec3<bool>(true, all(vec2<bool>(true, all(vec4<bool>(global2[_wgslsmith_index_u32(0u, 23u)], false, true, global2[_wgslsmith_index_u32(2962u, 23u)])))), true), global2[_wgslsmith_index_u32(var_0.d.x, 23u)] || true);
    var var_2 = Struct_3(global3.a, -global3.b);
    global1 = array<vec2<bool>, 14>();
    global0 = array<u32, 16>();
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c)), _wgslsmith_f_op_vec2_f32(-arg_0.zy), global2[_wgslsmith_index_u32(~global3.a.b, 23u)] != true)) + _wgslsmith_f_op_vec2_f32(var_0.c + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.yx + var_0.c)))), var_0.c));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<i32>) -> i32 {
    var var_0 = Struct_1(-37914i, -1i, _wgslsmith_f_op_vec2_f32(arg_0 - _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.x, arg_0.x, arg_0.x), vec3<f32>(arg_0.x, -1000f, arg_0.x))))))), _wgslsmith_add_vec3_u32(vec3<u32>(~global0[_wgslsmith_index_u32(global3.a.b, 16u)], _wgslsmith_dot_vec2_u32(vec2<u32>(29742u, 0u), vec2<u32>(global3.a.b, global3.a.b)), global0[_wgslsmith_index_u32(~4294967295u, 16u)]) >> (~(vec3<u32>(50301u, 1u, global3.a.b) << (vec3<u32>(47012u, 4294967295u, 11243u) % vec3<u32>(32u))) % vec3<u32>(32u)), ~max(vec3<u32>(global3.a.b, 14480u, global0[_wgslsmith_index_u32(global3.a.b, 16u)]), vec3<u32>(4294967295u, 16338u, 15966u)) & countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, global0[_wgslsmith_index_u32(17586u, 16u)], global3.a.b), vec3<u32>(global0[_wgslsmith_index_u32(global3.a.b, 16u)], 4294967295u, 45988u)))));
    global3 = Struct_3(global3.a, -vec4<i32>(-1i, 29312i, var_0.a, u_input.a.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(var_0.c.x, 2360f)), -767f, _wgslsmith_f_op_f32(max(-671f, arg_0.x)), _wgslsmith_f_op_f32(max(-1043f, 393f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(393f, 1100f, var_0.c.x, var_0.c.x)))) * vec4<f32>(_wgslsmith_f_op_f32(529f * var_0.c.x), _wgslsmith_f_op_f32(select(var_0.c.x, 2081f, global2[_wgslsmith_index_u32(var_0.d.x, 23u)])), _wgslsmith_f_op_f32(min(arg_0.x, var_0.c.x)), -212f))));
    global0 = array<u32, 16>();
    var var_2 = Struct_2(~(-_wgslsmith_mult_vec3_i32(arg_1, global3.a.a)), 19911u);
    return firstLeadingBit(var_2.a.x);
}

fn func_1() -> i32 {
    var var_0 = Struct_3(Struct_2(~vec3<i32>(-15245i, global3.b.x, global3.a.a.x) >> (firstLeadingBit(vec3<u32>(global3.a.b, 22930u, 0u)) % vec3<u32>(32u)), ~(~42884u)), ~vec4<i32>(u_input.a.x, func_2(_wgslsmith_div_vec2_f32(vec2<f32>(-742f, 845f), vec2<f32>(391f, -1382f)), global3.b.zww), u_input.a.x, ~(~global3.b.x)));
    var var_1 = Struct_3(Struct_2(vec3<i32>(-2665i, -(~global3.b.x), ~global3.b.x), 65620u), ~_wgslsmith_add_vec4_i32(global3.b, reverseBits(var_0.b)));
    var var_2 = ~_wgslsmith_div_vec4_u32(~vec4<u32>(abs(global3.a.b), reverseBits(var_1.a.b), _wgslsmith_clamp_u32(var_0.a.b, var_1.a.b, global3.a.b), 4294967295u), vec4<u32>(global3.a.b, ~(11170u >> (var_0.a.b % 32u)), 1u, global3.a.b));
    let var_3 = Struct_3(var_1.a, vec4<i32>(global3.a.a.x, _wgslsmith_clamp_i32(~49016i, var_0.a.a.x, firstLeadingBit(-11919i)), u_input.a.x, 39432i));
    var_2 = abs(vec4<u32>(global3.a.b | 9210u, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(var_3.a.b, 16u)], global3.a.b, 98290u, global0[_wgslsmith_index_u32(var_2.x, 16u)])), ~(~vec4<u32>(var_0.a.b, var_2.x, 4294967295u, global3.a.b))), global3.a.b, 4294967295u));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(func_1(), -(i32(-1i) * -36732i), abs(u_input.a.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(601f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -344f)))), -245f));
    var var_2 = Struct_2(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(-16073i, var_0.x, global3.a.a.x)), -_wgslsmith_div_vec3_i32(global3.b.zxz, global3.b.xzy)), vec3<i32>(firstLeadingBit(_wgslsmith_mult_i32(13328i, -1i)), i32(-1i) * -93188i, global3.a.a.x)), 1u);
    var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2092f, _wgslsmith_f_op_f32(-201f * _wgslsmith_div_f32(var_1.x, var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) + vec3<f32>(var_1.x, var_1.x, -313f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-361f, var_1.x, 885f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 426f, 434f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -655f, var_1.x)))))));
    var var_3 = global3.a;
    let var_4 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, var_1.x, var_1.x, 145f)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 268f, var_1.x) - vec4<f32>(var_1.x, var_1.x, var_1.x, 1180f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1012f, var_1.x, var_1.x, 2141f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1262f, var_1.x, var_1.x, var_1.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, -1244f, -388f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 1336f, 292f) - vec4<f32>(var_1.x, 1191f, -1076f, -288f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(320f, -315f, 985f, var_1.x), vec4<f32>(var_1.x, var_1.x, var_1.x, 1013f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~vec3<u32>(var_3.b, var_3.b, 4294967295u) & vec3<u32>(global3.a.b, global0[_wgslsmith_index_u32(1u, 16u)], var_2.b)), vec3<u32>(_wgslsmith_mult_u32(~61068u, 80589u ^ global0[_wgslsmith_index_u32(1u, 16u)]), 1u, 1667u), vec3<bool>(global2[_wgslsmith_index_u32((0u >> (global3.a.b % 32u)) << ((1u | var_3.b) % 32u), 23u)], true, global2[_wgslsmith_index_u32(var_3.b, 23u)])), vec4<u32>(~(~(var_3.b & 0u)), ~countOneBits(var_3.b), _wgslsmith_dot_vec4_u32(max(~vec4<u32>(var_2.b, global3.a.b, global0[_wgslsmith_index_u32(0u, 16u)], 72827u), ~vec4<u32>(var_2.b, var_2.b, global3.a.b, 45001u)), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_3.b, var_2.b, 46169u, 2522u), vec4<u32>(4294967295u, 0u, 19664u, var_3.b)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_3.b, var_2.b, global0[_wgslsmith_index_u32(var_3.b, 16u)]), vec4<u32>(var_3.b, 64184u, 26625u, 20997u)))), global3.a.b), ~abs(max(_wgslsmith_div_vec3_i32(vec3<i32>(-42688i, var_0.x, global3.a.a.x), vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i)), var_3.a)));
}

