struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: bool,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct Struct_5 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(2396u, -604f);

var<private> global1: array<bool, 28>;

var<private> global2: array<vec4<u32>, 22>;

var<private> global3: bool = true;

var<private> global4: array<bool, 16> = array<bool, 16>(true, true, true, true, true, true, true, false, true, false, false, true, false, false, true, true);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<i32>) -> bool {
    var var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a | u_input.a, global0.a, countOneBits(~1u), global0.a), global2[_wgslsmith_index_u32(1u, 22u)]), ~(~(~vec4<u32>(global0.a, u_input.a, 9942u, u_input.a))));
    var var_1 = ~vec2<i32>(15326i, arg_1.x);
    global1 = array<bool, 28>();
    var var_2 = countOneBits(~max(countOneBits(vec3<u32>(u_input.a, global0.a, 67599u)), vec3<u32>(1u, global0.a, 4294967295u))) << (_wgslsmith_mult_vec3_u32(abs(_wgslsmith_add_vec3_u32(vec3<u32>(8292u, global0.a, global0.a) & vec3<u32>(351u, u_input.a, global0.a), vec3<u32>(29638u, u_input.a, 1u))), vec3<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, global0.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(66981u, global0.a), vec2<u32>(global0.a, u_input.a), vec2<u32>(0u, global0.a))), ~39568u)) % vec3<u32>(32u));
    global1 = array<bool, 28>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.b), 1289f)) + 729f) <= _wgslsmith_f_op_f32(floor(-2021f));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<u32>) -> vec3<i32> {
    global3 = select(u_input.b.x > (i32(-1i) * -_wgslsmith_dot_vec2_i32(u_input.b, u_input.b)), !(_wgslsmith_mod_i32(-1i, u_input.b.x) > u_input.b.x), true);
    var var_0 = select(!vec3<bool>(global4[_wgslsmith_index_u32(abs(~global0.a), 16u)], false, false), !select(!select(vec3<bool>(global4[_wgslsmith_index_u32(5956u, 16u)], global4[_wgslsmith_index_u32(arg_1.x, 16u)], global1[_wgslsmith_index_u32(1u, 28u)]), vec3<bool>(true, false, true), global1[_wgslsmith_index_u32(53581u, 28u)]), !(!vec3<bool>(global4[_wgslsmith_index_u32(91675u, 16u)], true, false)), select(vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(15689u, 28u)]), !vec3<bool>(global1[_wgslsmith_index_u32(0u, 28u)], global1[_wgslsmith_index_u32(arg_1.x, 28u)], false), true)), -_wgslsmith_sub_i32(-u_input.b.x, firstLeadingBit(15538i)) <= (i32(-1i) * -abs(u_input.b.x)));
    let var_1 = arg_0.xwx;
    var var_2 = Struct_1(vec3<bool>(var_1.x != reverseBits(arg_1.x), global1[_wgslsmith_index_u32(72332u, 28u)], func_3(!vec4<bool>(false, true, global1[_wgslsmith_index_u32(var_1.x, 28u)], false), vec4<i32>(1i, u_input.b.x, u_input.b.x, u_input.b.x)) && all(vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 28u)], true))), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b, u_input.b), vec2<i32>(~(i32(-1i) * -24797i), -1705i)), (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b + global0.b) * global0.b) > _wgslsmith_f_op_f32(-global0.b)) & select(true, !(!var_0.x), all(vec4<bool>(true, true, true, true))), 1u, arg_1.x ^ _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(var_1, arg_0.wwz) & ~arg_1.x, _wgslsmith_clamp_u32(arg_1.x, ~var_1.x, _wgslsmith_dot_vec2_u32(arg_1, arg_1))));
    global4 = array<bool, 16>();
    return countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(var_2.b.x, -min(var_2.b.x, 25561i), ~(-64257i)), -vec3<i32>(1i, 0i, -27470i) ^ (vec3<i32>(22072i, var_2.b.x, 745i) | countOneBits(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)))));
}

fn func_1(arg_0: bool, arg_1: vec4<bool>, arg_2: bool, arg_3: i32) -> StorageBuffer {
    let var_0 = -u_input.b.x;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global0.b)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b + global0.b)))), global0.b);
    let var_2 = _wgslsmith_sub_vec2_i32(~u_input.b >> (vec2<u32>(1u, global0.a) % vec2<u32>(32u)), u_input.b);
    let var_3 = Struct_4(Struct_2(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(var_2.x, -1i, var_0), func_2(global2[_wgslsmith_index_u32(1u, 22u)], vec2<u32>(u_input.a, global0.a)), ~vec3<i32>(2147483647i, var_2.x, 2147483647i)), vec3<i32>(-1i, var_0, var_2.x) & (vec3<i32>(0i, var_2.x, u_input.b.x) >> (vec3<u32>(19100u, global0.a, u_input.a) % vec3<u32>(32u))))), ~u_input.a);
    var var_4 = select(1u, select(~29302u, ~1u, true) << (min(1u << (var_3.b % 32u), _wgslsmith_add_u32(1u, u_input.a >> (4294967295u % 32u))) % 32u), !arg_2);
    return StorageBuffer(~abs(u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1.x, var_1.x), var_1.x))))), vec3<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(var_2.x, var_2.x), vec2<i32>(var_3.a.a.x, var_3.a.a.x)) & arg_3, var_0, -1i), _wgslsmith_f_op_f32(var_1.x + var_1.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(var_1.x)), 581f, -1360f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-216f, 1030f) + global0.b), !global4[_wgslsmith_index_u32(_wgslsmith_div_u32(98954u, 50220u), 16u)])) * 132f), _wgslsmith_f_op_f32(423f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b))));
    global2 = array<vec4<u32>, 22>();
    global3 = true;
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b, 516f) - vec2<f32>(-1000f, 1000f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b, global0.b) * vec2<f32>(global0.b, -831f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-112f, 822f) + vec2<f32>(-1000f, 676f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1392f, global0.b)))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(705f, 605f), vec2<f32>(global0.b, global0.b)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, global0.b))))))));
    let x = u_input.a;
    s_output = func_1(true, !select(vec4<bool>(true || global1[_wgslsmith_index_u32(global0.a, 28u)], !global4[_wgslsmith_index_u32(u_input.a, 16u)], true, true), vec4<bool>(true, !global4[_wgslsmith_index_u32(global0.a, 16u)], !global4[_wgslsmith_index_u32(global0.a, 16u)], true), true), global1[_wgslsmith_index_u32(global0.a, 28u)], 14258i);
}

