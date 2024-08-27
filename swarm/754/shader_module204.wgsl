struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

var<private> global1: bool;

var<private> global2: array<vec4<bool>, 15>;

var<private> global3: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
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

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: i32) -> vec3<f32> {
    global0 = array<Struct_1, 1>();
    var var_0 = global3.b;
    let var_1 = arg_0.x;
    let var_2 = arg_1;
    let var_3 = vec3<i32>(12654i, -_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, -10900i), _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a.wx, vec2<i32>(var_2.b.x, 7011i)), min(vec2<i32>(49594i, 2147483647i), vec2<i32>(arg_1.b.x, var_2.b.x)), arg_1.b & arg_1.b)), _wgslsmith_div_i32(_wgslsmith_mod_i32(6502i, i32(-1i) * -15784i), -2147483647i));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.c, arg_1.c, 831f), vec3<f32>(arg_1.c, arg_1.c, 1000f), var_2.a))))), vec3<f32>(-186f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(280f, arg_1.c)))), -783f), arg_1.a)));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: Struct_1) -> bool {
    global0 = array<Struct_1, 1>();
    global2 = array<vec4<bool>, 15>();
    var var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(arg_2.b.x, 2147483647i, global3.b.x), select(reverseBits(select(vec3<i32>(25090i, 0i, -20190i), u_input.a.zww, true)), vec3<i32>(global3.b.x, -arg_2.b.x, reverseBits(u_input.a.x)), true)) >> (_wgslsmith_clamp_vec3_u32(select(vec3<u32>(1u, 1u, 1u), countOneBits(~vec3<u32>(0u, 14375u, 1u)), select(!vec3<bool>(arg_0.x, false, true), vec3<bool>(true, arg_0.x, arg_0.x), false)), ~_wgslsmith_clamp_vec3_u32(select(vec3<u32>(1u, 0u, 75324u), vec3<u32>(0u, 9243u, 38773u), arg_0.x), firstLeadingBit(vec3<u32>(38269u, 0u, 4294967295u)), ~vec3<u32>(74086u, 48691u, 69832u)), select(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(66578u, 4294967295u, 12288u))), vec3<u32>(1u, 1u, 1u), !arg_0.x)) % vec3<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -804f);
    let var_2 = _wgslsmith_f_op_f32(sign(arg_1.x));
    return arg_0.x;
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    var var_0 = countOneBits(-_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2917i, arg_0, 1i, 0i), vec4<i32>(-1i, arg_0, -2147483647i, 6250i)), _wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(global3.b.x, 2147483647i, 12194i, global3.a.x))), vec4<i32>(_wgslsmith_div_i32(1i, -20877i), _wgslsmith_dot_vec3_i32(vec3<i32>(-10995i, u_input.a.x, arg_1.b.x), vec3<i32>(arg_0, u_input.a.x, 13991i)), arg_1.b.x, _wgslsmith_dot_vec3_i32(u_input.a.ywy, u_input.a.wwx)), abs(u_input.a)));
    let var_1 = arg_1;
    global0 = array<Struct_1, 1>();
    var var_2 = func_4(select(vec2<bool>(any(!vec3<bool>(arg_1.a, arg_1.a, true)), arg_1.a), vec2<bool>(!(var_1.c > 1122f), arg_1.a), false), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_3(~_wgslsmith_div_vec4_u32(vec4<u32>(77526u, 26685u, 4294967295u, 1u), vec4<u32>(9900u, 4294967295u, 4294967295u, 1u)), var_1, arg_0)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.c, arg_1.c, true))), _wgslsmith_f_op_f32(-var_1.c)))), Struct_1(arg_1.b << ((vec2<u32>(1u, 1u) | _wgslsmith_clamp_vec2_u32(vec2<u32>(11010u, 30573u), vec2<u32>(0u, 11603u), vec2<u32>(0u, 1u))) % vec2<u32>(32u)), ~(~arg_1.b & (vec2<i32>(u_input.a.x, global3.b.x) >> (vec2<u32>(44616u, 4683u) % vec2<u32>(32u))))));
    let var_3 = any(global2[_wgslsmith_index_u32(min(select(1u, countOneBits(_wgslsmith_sub_u32(41404u, 26827u)), firstTrailingBit(-2147483647i) < 0i), 69898u), 15u)]);
    return var_1;
}

fn func_1() -> Struct_2 {
    var var_0 = func_2(-u_input.a.x, Struct_2(true, ~_wgslsmith_div_vec2_i32(u_input.a.zy << (vec2<u32>(48285u, 35332u) % vec2<u32>(32u)), -global3.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1565f) + -132f)));
    let var_1 = 1u;
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1882f, var_0.c, 504f))))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -336f), _wgslsmith_f_op_f32(sign(-1108f)), var_0.c, var_0.c)), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.c))))), -331f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-757f * 736f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c, var_0.c))), _wgslsmith_f_op_f32(f32(-1f) * -747f)), global2[_wgslsmith_index_u32(1u, 15u)]));
    var var_3 = true;
    return Struct_2(var_0.a, vec2<i32>(_wgslsmith_sub_i32(~min(2147483647i, 18581i), abs(~global3.a.x)), 37715i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c * -1767f)));
}

fn func_5(arg_0: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(-arg_0.c), arg_0.c)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c, arg_0.c, arg_0.c) - vec3<f32>(arg_0.c, arg_0.c, -823f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-179f, arg_0.c, -291f) * vec3<f32>(-2072f, arg_0.c, -748f)))))), select(vec3<bool>(true, arg_0.a, !arg_0.a), vec3<bool>(!arg_0.a, arg_0.a, arg_0.a), select(!vec3<bool>(arg_0.a, true, false), !vec3<bool>(true, arg_0.a, false), any(vec4<bool>(arg_0.a, false, arg_0.a, arg_0.a))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -843f) - _wgslsmith_f_op_f32(select(489f, arg_0.c, false))), -712f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1580f + -1474f))) - var_0.x), _wgslsmith_f_op_f32(arg_0.c - _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(431f, -1033f, -1002f), vec3<f32>(-1000f, var_0.x, -1055f)), _wgslsmith_div_vec3_f32(vec3<f32>(1014f, 427f, 1268f), vec3<f32>(var_0.x, var_0.x, -794f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -571f, arg_0.c) * vec3<f32>(390f, arg_0.c, arg_0.c)) + vec3<f32>(-1000f, -1617f, 1673f)))))));
    var var_1 = u_input.a.x;
    let var_2 = vec4<bool>(any(!select(select(vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, true), vec3<bool>(false, arg_0.a, false)), !vec3<bool>(arg_0.a, true, arg_0.a), arg_0.a)), all(vec3<bool>(true, arg_0.a, arg_0.a)), !arg_0.a, arg_0.a);
    var var_3 = abs(u_input.a | _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 2147483647i, -1i, _wgslsmith_div_i32(-41765i, global3.b.x)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, global3.b.x, u_input.a.x, global3.b.x), abs(u_input.a))));
    return 8389u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(~1u);
    global1 = !((max(-2147483647i, u_input.a.x) != 2147483647i) | (global3.b.x == _wgslsmith_mult_i32(countOneBits(u_input.a.x), -1i)));
    var var_1 = _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), firstLeadingBit(vec3<u32>(func_5(func_1()), firstLeadingBit(~36132u), _wgslsmith_sub_u32(4294967295u, ~69886u))));
    global1 = select(false, true, true);
    let var_2 = func_2(_wgslsmith_add_i32(-u_input.a.x, u_input.a.x), func_2(_wgslsmith_div_i32(1i, global3.b.x), Struct_2(true, abs(min(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(u_input.a.x, 2147483647i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1013f) + _wgslsmith_f_op_f32(-586f + -206f)))));
    let var_3 = var_2;
    global3 = global0[_wgslsmith_index_u32(4294967295u, 1u)];
    let var_4 = global0[_wgslsmith_index_u32(0u, 1u)];
    let var_5 = Struct_1(func_2(~1i, Struct_2(true, -vec2<i32>(1i, global3.a.x), _wgslsmith_f_op_f32(floor(-830f)))).b, u_input.a.xz);
    let x = u_input.a;
    s_output = StorageBuffer(-56682i, abs(vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_2.b.x, global3.a.x, var_4.b.x), vec3<i32>(var_3.b.x, -1i, var_5.b.x)), vec3<i32>(-1i, u_input.a.x, 0i) ^ u_input.a.wyy), -38819i | var_3.b.x)));
}

