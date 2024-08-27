struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-2101i, -11738i, 0i);

var<private> global1: array<vec3<bool>, 30> = array<vec3<bool>, 30>(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true));

var<private> global2: array<vec2<f32>, 20>;

var<private> global3: bool = false;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec3<i32>) -> vec4<f32> {
    let var_0 = select(select(!select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), true), vec4<bool>(true, false, false, true)), vec4<bool>(true, all(vec3<bool>(true, true, false)) && true, true, select(true, true, any(vec2<bool>(true, true)))), vec4<bool>(true, u_input.a < (arg_0.x | 15595u), all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), true)), true)), !select(vec4<bool>(true, true, true, arg_2.x <= arg_2.x), vec4<bool>(arg_1.b >= 61137u, 997f > arg_2.x, true, all(global1[_wgslsmith_index_u32(1u, 30u)])), vec4<bool>(all(vec2<bool>(false, true)), true, arg_1.b != u_input.a, any(global1[_wgslsmith_index_u32(arg_1.b, 30u)]))), any(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))) & ((select(false, true, false) || false) | true));
    let var_1 = abs(vec3<u32>(firstLeadingBit(~u_input.a), ~_wgslsmith_clamp_u32(1u, arg_1.b, select(u_input.b, 1u, var_0.x)), max(5270u, countOneBits(u_input.c))));
    let var_2 = ~(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(4294967295u, 1u, var_1.x, arg_0.x)), reverseBits(vec4<u32>(46041u, 25712u, 1u, arg_1.b))), ~firstTrailingBit(vec4<u32>(u_input.a, var_1.x, arg_0.x, 4294967295u))) & _wgslsmith_mult_vec4_u32(select(vec4<u32>(arg_1.b, 4294967295u, 4049u, 107711u) & vec4<u32>(arg_0.x, 2665u, var_1.x, u_input.a), vec4<u32>(arg_1.b, 8090u, 51836u, u_input.a), var_0), max(vec4<u32>(26733u, 4294967295u, arg_0.x, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(68901u, 33103u, arg_0.x, 5367u), vec4<u32>(arg_1.b, var_1.x, 9191u, arg_1.b)))));
    global3 = true;
    var var_3 = vec2<bool>(!any(select(vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.zzw, select(var_0.x, true, false))), var_0.x);
    return vec4<f32>(-256f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + arg_2.x)), _wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(ceil(arg_2.x)))), arg_2.x);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>) -> i32 {
    var var_0 = vec2<bool>(true, !(false || (any(global1[_wgslsmith_index_u32(u_input.b, 30u)]) || true)));
    global2 = array<vec2<f32>, 20>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(countOneBits(~firstLeadingBit(vec2<u32>(u_input.c, 4294967295u))), Struct_1(-8406i, 20475u, arg_0.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(961f, -833f, arg_1.x, 908f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 197f, arg_1.x, -299f)))), vec3<i32>(global0.x, arg_0.c, arg_0.c))));
    let var_2 = arg_0;
    let var_3 = ~arg_0.b;
    return global0.x;
}

fn func_1() -> vec3<bool> {
    let var_0 = _wgslsmith_sub_vec3_i32(-vec3<i32>(min(global0.x, max(global0.x, global0.x)), (global0.x >> (u_input.a % 32u)) >> (19500u % 32u), global0.x), vec3<i32>(min(_wgslsmith_dot_vec4_i32(-vec4<i32>(global0.x, -1i, -2147483647i, 0i), _wgslsmith_mult_vec4_i32(vec4<i32>(global0.x, 0i, -20979i, global0.x), vec4<i32>(-2147483647i, 0i, 0i, global0.x))), ~func_2(Struct_1(2147483647i, 4294967295u, global0.x), vec3<f32>(-1347f, 466f, -1011f))), global0.x, -(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 208i, global0.x, global0.x), vec4<i32>(global0.x, global0.x, -13842i, global0.x)) ^ select(816i, global0.x, false))));
    var var_1 = -vec3<i32>(1i, 1i, global0.x);
    let var_2 = _wgslsmith_clamp_i32(var_0.x, var_0.x, _wgslsmith_add_i32(8873i, ~_wgslsmith_sub_i32(reverseBits(var_1.x), var_1.x)));
    var_1 = ~var_0;
    var var_3 = Struct_1(-16532i, 0u, i32(-1i) * -var_1.x);
    return !vec3<bool>(~reverseBits(u_input.a) > ~13002u, false, any(vec2<bool>(true, false)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstTrailingBit(vec3<i32>(_wgslsmith_div_i32(~(-56488i), _wgslsmith_dot_vec4_i32(vec4<i32>(13370i, global0.x, -27114i, global0.x) & vec4<i32>(global0.x, global0.x, global0.x, 5237i), reverseBits(vec4<i32>(0i, 2147483647i, global0.x, -29850i)))), _wgslsmith_dot_vec2_i32(firstTrailingBit(global0.zx << (vec2<u32>(4294967295u, 19956u) % vec2<u32>(32u))), abs(global0.yz)), i32(-1i) * -20822i));
    var var_0 = all(func_1());
    var_0 = !(true & ((~u_input.a ^ u_input.b) > _wgslsmith_sub_u32(~1u, u_input.a)));
    let var_1 = -6711i;
    global2 = array<vec2<f32>, 20>();
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-653f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-127f)))) * _wgslsmith_div_f32(625f, 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - -1732f))));
    let var_3 = Struct_1(~(~(-22540i)), select(~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, u_input.b, u_input.a), vec3<u32>(4294967295u, 0u, u_input.a)), vec3<u32>(1u, u_input.b, 7823u)), 1u, ~u_input.c != _wgslsmith_mod_u32(4896u << (u_input.c % 32u), _wgslsmith_add_u32(53430u, u_input.c))), -var_1);
    let x = u_input.a;
    s_output = StorageBuffer(1609f, ~global0.x, _wgslsmith_mult_vec4_i32(select(vec4<i32>(16637i, min(global0.x, 38821i), -21002i, var_3.a), firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(22341i, var_3.a, var_3.c, var_3.a), vec4<i32>(-13381i, var_1, -4750i, var_1))), vec4<bool>(true, true, true, true)), -_wgslsmith_mult_vec4_i32(vec4<i32>(85266i, var_3.c, 28165i, 0i) & vec4<i32>(var_3.c, var_1, global0.x, var_3.a), _wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, 2147483647i, var_3.c, global0.x), vec4<i32>(2147483647i, global0.x, var_1, var_1)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -149f) - _wgslsmith_f_op_f32(step(-167f, 1220f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-344f + 186f), _wgslsmith_f_op_f32(floor(-1763f))), -1895f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(815f)))))));
}

