struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-6388i, i32(-2147483648));

var<private> global1: vec3<f32> = vec3<f32>(-904f, 953f, -586f);

var<private> global2: array<u32, 12>;

var<private> global3: array<vec4<i32>, 12>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.yz - vec2<f32>(global1.x, -2864f))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -193f), _wgslsmith_f_op_f32(f32(-1f) * -648f)));
    global3 = array<vec4<i32>, 12>();
    let var_1 = Struct_3(Struct_1(1i));
    let var_2 = u_input.b;
    var var_3 = _wgslsmith_f_op_f32(select(var_0.x, global1.x, any(vec3<bool>(all(vec3<bool>(true, true, true)), !all(vec3<bool>(false, false, true)), any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))))));
    return -min(vec3<i32>(-38258i, _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_dot_vec4_i32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 12u)], 12u)], 12u)], 12u)], vec4<i32>(-27887i, 15156i, 0i, global0.x)), _wgslsmith_sub_i32(13078i, 7578i)), u_input.a), reverseBits(~(~vec3<i32>(24566i, 0i, global0.x))));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = 7201i;
    global3 = array<vec4<i32>, 12>();
    global0 = ~_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, u_input.a, global0.x), func_3(global2[_wgslsmith_index_u32(24434u, 12u)])), func_3(global2[_wgslsmith_index_u32(0u, 12u)]).x | global0.x), _wgslsmith_clamp_vec2_i32(-_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, global0.x), vec2<i32>(-2147483647i, 11442i)), _wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(global0.x, global0.x)), ~vec2<i32>(global0.x, -41597i)), abs(~vec2<i32>(u_input.a, -2190i))));
    var var_1 = select(!vec4<bool>(true | !arg_0, 1f == _wgslsmith_f_op_f32(-793f - global1.x), any(vec2<bool>(arg_0, arg_0)), (global1.x > global1.x) & arg_0), vec4<bool>(true, !(_wgslsmith_f_op_f32(f32(-1f) * -920f) >= _wgslsmith_f_op_f32(exp2(global1.x))), arg_0 & (true | arg_0), true), !(!vec4<bool>(!arg_0, !arg_0, false, !arg_0)));
    global0 = vec2<i32>(reverseBits(1i ^ (global0.x & u_input.a)), 2147483647i);
    return Struct_1(global0.x);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_4(func_2(any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true))), global1.x, func_2(true), any(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))));
    let var_1 = Struct_3(func_2(true));
    global0 = vec2<i32>(firstLeadingBit(~(~var_0.a.a)), 5459i ^ reverseBits(_wgslsmith_clamp_i32(var_0.a.a, 42849i | var_0.a.a, global0.x)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(624f, 1091f, global1.x, 1984f))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(max(-1566f, var_0.b)), _wgslsmith_f_op_f32(min(var_0.b, -920f)), global1.x)), vec4<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1053f * var_0.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(global1.x + 122f)), -249f)));
    let var_3 = vec4<u32>(~(~firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(4294967295u, 4294967295u)))), u_input.b.x, 23064u, _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x, 19965u), select(vec3<u32>(0u, u_input.b.x, 53725u), vec3<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 12u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 12u)], 12u)], u_input.b.x), vec3<bool>(false, true, var_0.d))), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 34901u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 12u)], 12u)], 12u)]), firstTrailingBit(vec3<u32>(358u, 0u, u_input.b.x))), reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 56959u, 39245u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))))));
    return func_2(!(_wgslsmith_f_op_f32(-333f + _wgslsmith_f_op_f32(-833f + var_0.b)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (global2[_wgslsmith_index_u32(25280u, 12u)] | abs(reverseBits(global2[_wgslsmith_index_u32(~1u, 12u)]))) >> (_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(37964u, 12u)], ~_wgslsmith_add_u32(~u_input.b.x, u_input.b.x)) % 32u);
    var var_1 = Struct_4(func_1(), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-496f + global1.x), -811f, true)), func_1(), true);
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -755f, global1.x)), vec3<f32>(global1.x, 638f, var_1.b))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(678f, 838f, global1.x) - vec3<f32>(global1.x, global1.x, global1.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), global1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2062f * var_1.b))))));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, -444f, -294f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1578f, global1.x, var_1.b))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, -1449f, 803f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-(2147483647i & global0.x)), _wgslsmith_sub_u32(reverseBits(4294967295u), countOneBits(102286u)), _wgslsmith_sub_vec2_i32(-(vec2<i32>(u_input.a, u_input.a) << (u_input.b % vec2<u32>(32u))), firstLeadingBit(vec2<i32>(-28214i, -3693i) ^ vec2<i32>(global0.x, 1i))) & vec2<i32>(var_1.a.a, u_input.a), vec3<u32>(reverseBits(_wgslsmith_div_u32(~u_input.b.x, ~var_0)), countOneBits(global2[_wgslsmith_index_u32(firstLeadingBit(global2[_wgslsmith_index_u32(u_input.b.x, 12u)]), 12u)]) << (53799u % 32u), _wgslsmith_div_u32(1u, u_input.b.x)), 55417i | _wgslsmith_mod_i32(i32(-1i) * -var_1.a.a, -global0.x));
}

