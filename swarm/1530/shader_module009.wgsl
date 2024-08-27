struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(false, true, 28556u, vec3<bool>(false, false, false), vec4<u32>(0u, 23617u, 4294967295u, 85352u)), Struct_1(false, true, 0u, vec3<bool>(true, false, true), vec4<u32>(1968u, 21039u, 0u, 4294967295u)), Struct_1(false, true, 0u, vec3<bool>(false, true, false), vec4<u32>(0u, 0u, 0u, 10548u)), Struct_1(false, false, 4060u, vec3<bool>(false, true, true), vec4<u32>(29084u, 1u, 39935u, 4294967295u)), Struct_1(false, false, 30060u, vec3<bool>(true, true, false), vec4<u32>(0u, 1u, 14351u, 44091u)), Struct_1(false, false, 59293u, vec3<bool>(true, false, false), vec4<u32>(1u, 1u, 20449u, 4294967295u)), Struct_1(false, true, 14139u, vec3<bool>(true, true, true), vec4<u32>(18415u, 1u, 6823u, 29652u)), Struct_1(false, true, 1u, vec3<bool>(true, false, false), vec4<u32>(1u, 39348u, 4294967295u, 0u)), Struct_1(true, true, 4294967295u, vec3<bool>(false, false, true), vec4<u32>(22133u, 0u, 50771u, 0u)), Struct_1(false, false, 76933u, vec3<bool>(false, false, false), vec4<u32>(35204u, 1u, 1u, 17300u)), Struct_1(false, true, 4294967295u, vec3<bool>(false, true, true), vec4<u32>(12244u, 87655u, 1u, 1u)), Struct_1(true, true, 0u, vec3<bool>(false, false, true), vec4<u32>(54620u, 4294967295u, 1371u, 3584u)), Struct_1(false, true, 6063u, vec3<bool>(false, false, true), vec4<u32>(2684u, 1u, 25663u, 1u)), Struct_1(false, true, 4294967295u, vec3<bool>(false, false, false), vec4<u32>(27590u, 0u, 4294967295u, 5133u)), Struct_1(true, false, 4294967295u, vec3<bool>(true, false, false), vec4<u32>(2675u, 4294967295u, 67885u, 1u)), Struct_1(false, true, 47961u, vec3<bool>(false, true, true), vec4<u32>(28309u, 0u, 4294967295u, 43778u)), Struct_1(true, false, 14773u, vec3<bool>(false, true, false), vec4<u32>(1u, 97839u, 21076u, 4294967295u)), Struct_1(false, false, 0u, vec3<bool>(false, true, false), vec4<u32>(23404u, 1u, 0u, 50630u)), Struct_1(false, true, 67732u, vec3<bool>(false, true, false), vec4<u32>(19525u, 1u, 0u, 56115u)), Struct_1(false, false, 0u, vec3<bool>(false, true, false), vec4<u32>(1662u, 0u, 4294967295u, 61587u)), Struct_1(true, false, 73517u, vec3<bool>(true, false, false), vec4<u32>(3170u, 22165u, 0u, 4294967295u)), Struct_1(true, true, 5209u, vec3<bool>(true, true, false), vec4<u32>(47466u, 67643u, 4294967295u, 0u)), Struct_1(true, true, 18399u, vec3<bool>(true, true, false), vec4<u32>(42832u, 55344u, 64455u, 14978u)));

var<private> global1: bool;

var<private> global2: f32 = -635f;

var<private> global3: vec4<i32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: i32) -> vec4<i32> {
    global0 = array<Struct_1, 23>();
    global1 = !all(!vec2<bool>(true, any(vec4<bool>(true, false, false, true))));
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 2377f, 1070f)))) + vec3<f32>(_wgslsmith_f_op_f32(select(378f, -746f, true)), -1603f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1145f)), _wgslsmith_f_op_f32(-343f - 1153f), false))))));
    let var_1 = Struct_1(_wgslsmith_clamp_u32(~(~23539u), 93595u, _wgslsmith_mult_u32(countOneBits(1u), _wgslsmith_clamp_u32(1770u, 13683u, 1u))) != _wgslsmith_sub_u32(~0u | _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 2746u), vec3<u32>(0u, 1u, 1u)), _wgslsmith_add_u32(0u, 103996u)), false, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_div_u32(47590u, 27374u), 4294967295u >> (0u % 32u)), ~vec2<u32>(38819u, 4294967295u)), reverseBits(vec2<u32>(1u, 1u))), select(vec3<bool>(false, all(vec2<bool>(true, true)), select(true, any(vec4<bool>(false, true, false, false)), true)), vec3<bool>(true, true, true), !vec3<bool>(true, true, any(vec3<bool>(true, true, false)))), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), abs(vec4<u32>(52605u, 4259u, 47519u, 1u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(10044u, ~1u, ~32541u, select(57867u, 1u, true)), vec4<u32>(~126141u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(1u, 19385u, 4294967295u)), ~59954u, max(1u, 1u)), vec4<u32>(countOneBits(0u), ~1u, ~0u, 1u))));
    let var_2 = var_1;
    return firstTrailingBit(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(~(~vec4<i32>(-27724i, global3.x, -68414i, 13109i)), ~vec4<i32>(63152i, -80i, u_input.a.x, u_input.a.x)), vec4<i32>(0i, -18219i >> (reverseBits(var_1.c) % 32u), ~(-1i), max(-14353i, u_input.a.x))));
}

fn func_2() -> Struct_2 {
    let var_0 = -1000f;
    global3 = _wgslsmith_sub_vec4_i32(max(vec4<i32>(_wgslsmith_add_i32(46400i, 18255i), 58276i, _wgslsmith_clamp_i32(global3.x, -17717i, global3.x), u_input.a.x) | (-vec4<i32>(49052i, 24605i, u_input.a.x, u_input.a.x) & _wgslsmith_div_vec4_i32(vec4<i32>(global3.x, 1i, -19060i, u_input.a.x), vec4<i32>(-41123i, 2147483647i, u_input.a.x, 7941i))), -(vec4<i32>(-1i) * -vec4<i32>(global3.x, -35996i, -1i, -2147483647i))), ~reverseBits(select(vec4<i32>(-7393i, u_input.a.x, -2147483647i, global3.x), vec4<i32>(global3.x, global3.x, 28877i, 6911i), true)) & min(select(-vec4<i32>(-51378i, -2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(-32790i, 31613i, u_input.a.x, u_input.a.x), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), false)), func_3(global3.x) | func_3(1i)));
    global2 = 575f;
    var var_1 = global0[_wgslsmith_index_u32(reverseBits(35273u), 23u)];
    var var_2 = Struct_2(48599u, _wgslsmith_div_f32(-377f, var_0));
    return Struct_2(1u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-723f)))));
}

fn func_1(arg_0: bool) -> vec4<i32> {
    global1 = arg_0;
    let var_0 = func_2();
    global1 = firstLeadingBit(global3.x << (0u % 32u)) < -35824i;
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(func_2().b)), _wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(max(-227f, var_1.b)))));
    return -countOneBits(vec4<i32>(-(~global3.x), _wgslsmith_sub_i32(u_input.a.x, countOneBits(global3.x)), global3.x, global3.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(281f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-910f * -336f), _wgslsmith_f_op_f32(select(-2163f, -1000f, false))))), -694f), vec3<f32>(-506f, -1307f, -381f));
    let var_1 = firstLeadingBit(-(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x), vec4<i32>(u_input.a.x, global3.x, 0i, u_input.a.x)) << (select(vec4<u32>(1u, 4294967295u, 0u, 0u), vec4<u32>(56732u, 56957u, 4294967295u, 2186u), vec4<bool>(true, false, true, true)) % vec4<u32>(32u)))) & _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(func_1(true), min(vec4<i32>(2147483647i, u_input.a.x, global3.x, global3.x), vec4<i32>(u_input.a.x, 0i, 73485i, u_input.a.x))) >> (~vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), func_1(all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true))));
    global0 = array<Struct_1, 23>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_0.x, 574f), var_0.x, _wgslsmith_f_op_f32(var_0.x * 371f), func_2().b) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) * vec4<f32>(-1041f, -162f, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1661f, 274f, var_0.x, 939f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-244f, var_0.x, -1000f, var_0.x)))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2112f, 552f, var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1000f, var_0.x, 737f))))))));
    global3 = vec4<i32>(select(-1i, -2147483647i, _wgslsmith_mod_u32(4294967295u, _wgslsmith_clamp_u32(49124u, 80388u, 4294967295u)) == _wgslsmith_dot_vec4_u32(vec4<u32>(40742u, 37160u, 4294967295u, 4294967295u), vec4<u32>(1u, 85064u, 4294967295u, 43225u))), 0i >> (0u % 32u), 6985i, ~((var_1.x << (1u % 32u)) ^ global3.x) | -min(_wgslsmith_add_i32(global3.x, -2147483647i), ~(-60387i)));
    var var_3 = true;
    global1 = any(!(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false))) && select(true, any(vec2<bool>(true, global3.x != u_input.a.x)), true);
    global0 = array<Struct_1, 23>();
    var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(~max(u_input.a.zy, _wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.x, -24221i), vec2<i32>(var_1.x, -28659i), u_input.a.xx)), -reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(-41567i, -2147483647i))), u_input.a.xy));
}

