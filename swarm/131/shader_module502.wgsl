struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 21>;

var<private> global1: array<i32, 24> = array<i32, 24>(0i, -1i, 1i, i32(-2147483648), 1i, 1i, -14374i, -20614i, 9487i, -1i, 1i, -8546i, 21296i, 2978i, -1i, 2147483647i, 41265i, i32(-2147483648), 2147483647i, 1i, -1i, 42964i, 0i, 15620i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> Struct_1 {
    return Struct_1(abs(abs(u_input.a)), vec4<bool>(true, true, true, true));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: u32, arg_3: vec2<f32>) -> vec2<i32> {
    var var_0 = func_2();
    global0 = array<vec4<f32>, 21>();
    global1 = array<i32, 24>();
    var var_1 = func_2();
    let var_2 = arg_3.x;
    return firstTrailingBit(u_input.c.xx & vec2<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(0i, 0i, global1[_wgslsmith_index_u32(35735u, 24u)], global1[_wgslsmith_index_u32(var_1.a.x, 24u)])), vec4<i32>(global1[_wgslsmith_index_u32(arg_0.a.x, 24u)], 13726i, u_input.c.x, u_input.c.x) & vec4<i32>(u_input.c.x, 0i, 44201i, -41043i)), 9267i));
}

fn func_4(arg_0: bool, arg_1: i32) -> Struct_1 {
    global0 = array<vec4<f32>, 21>();
    let var_0 = Struct_1(_wgslsmith_mult_vec3_u32(u_input.a, u_input.a), vec4<bool>(all(vec2<bool>(true, true)), any(vec2<bool>(true, false)), arg_0, arg_0));
    global0 = array<vec4<f32>, 21>();
    global1 = array<i32, 24>();
    var var_1 = countOneBits(min(u_input.c.x, reverseBits(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(u_input.b, 24u)] << (4294967295u % 32u), global1[_wgslsmith_index_u32(~u_input.a.x, 24u)]))));
    return var_0;
}

fn func_1() -> vec3<u32> {
    global0 = array<vec4<f32>, 21>();
    let var_0 = func_4(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b >> (39134u % 32u), u_input.b ^ 40119u), 24u)] < -1117i, _wgslsmith_clamp_i32(u_input.c.x, _wgslsmith_dot_vec2_i32(select(firstLeadingBit(vec2<i32>(global1[_wgslsmith_index_u32(u_input.b, 24u)], u_input.c.x)), -vec2<i32>(24311i, -57824i), vec2<bool>(true, true)), func_3(func_2(), _wgslsmith_f_op_vec3_f32(vec3<f32>(2418f, -554f, 948f) + vec3<f32>(-504f, -1332f, -1085f)), 42821u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1444f, 453f)))), 1i));
    var var_1 = func_2();
    let var_2 = vec3<u32>(countOneBits(var_0.a.x), _wgslsmith_sub_u32(~37216u, ~var_0.a.x) << (16750u % 32u), 108619u) | vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a.x, u_input.b, 26190u, 4294967295u)), vec4<u32>(23056u, 1u, 38328u, u_input.a.x), vec4<u32>(var_0.a.x, 28347u, 1u, 0u)), select(vec4<u32>(var_1.a.x, 1u, var_1.a.x, var_0.a.x), vec4<u32>(4294967295u, 1u, var_1.a.x, var_1.a.x) >> (vec4<u32>(32633u, 0u, var_1.a.x, u_input.a.x) % vec4<u32>(32u)), !var_1.b.x)), ~(~3700u), u_input.a.x);
    var var_3 = global1[_wgslsmith_index_u32(var_1.a.x | ~(1u << (0u % 32u)), 24u)];
    return vec3<u32>(4294967295u | var_2.x, var_2.x, 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1() & abs(vec3<u32>(u_input.b, u_input.a.x, _wgslsmith_div_u32(8509u, _wgslsmith_mod_u32(u_input.b, 4294967295u))));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1421f, 1658f, -1000f)))), vec3<f32>(_wgslsmith_f_op_f32(round(-1264f)), -1068f, _wgslsmith_f_op_f32(floor(1549f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(287f + 1698f), _wgslsmith_f_op_f32(step(-2391f, -354f)), _wgslsmith_f_op_f32(f32(-1f) * -933f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-910f, -268f, -225f) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-219f, 550f, -1000f), vec3<f32>(300f, 318f, 2765f)))))), vec3<bool>(any(vec4<bool>(true, true, true, true)), false, select(true, true, _wgslsmith_clamp_i32(-9345i, u_input.c.x, u_input.c.x) < abs(2147483647i)))));
    var var_2 = func_4(~(-35893i) == global1[_wgslsmith_index_u32(~reverseBits(0u), 24u)], _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(u_input.c.x, _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(0i, 0i, -2147483647i)), ~firstTrailingBit(-49980i))));
    var var_3 = abs(vec4<i32>(_wgslsmith_mult_i32(-82112i, u_input.c.x), 7799i, u_input.c.x, func_3(Struct_1(u_input.a, var_2.b), vec3<f32>(var_1.x, -451f, 2452f), 1u, var_1.xz).x) & vec4<i32>(func_3(Struct_1(var_2.a, vec4<bool>(var_2.b.x, false, var_2.b.x, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(259f, 1529f, var_1.x)), ~u_input.a.x, var_1.zx).x, _wgslsmith_div_i32(u_input.c.x, ~1i), func_3(func_4(true, 1i), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, 413f, 614f), vec3<f32>(-1627f, var_1.x, 3167f)), min(var_2.a.x, 10422u), _wgslsmith_f_op_vec2_f32(-var_1.zz)).x, ~_wgslsmith_add_i32(u_input.c.x, 3047i)));
    var var_4 = ~var_2.a.yy;
    let var_5 = Struct_1(~(~(~var_2.a)) >> (countOneBits(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a.x, var_0.x, u_input.a.x), ~vec3<u32>(var_4.x, 37023u, u_input.b))) % vec3<u32>(32u)), !func_2().b);
    let var_6 = true;
    let var_7 = ~(_wgslsmith_add_u32(min(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 9116u, 0u), vec3<u32>(62735u, var_4.x, 0u)), 1u), firstLeadingBit(~18713u)) << (~func_4(all(vec3<bool>(true, var_5.b.x, var_2.b.x)), 1i).a.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-341f, var_1.x, -526f, _wgslsmith_f_op_f32(-var_1.x)) * global0[_wgslsmith_index_u32(1u, 21u)]) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, 1015f, var_1.x, var_1.x), global0[_wgslsmith_index_u32(4294967295u, 21u)])) + vec4<f32>(var_1.x, var_1.x, -1501f, -147f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -322f, 612f))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1485f, var_1.x, 392f) * vec3<f32>(-622f, var_1.x, var_1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, 1674f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(676f)))) * 621f), firstTrailingBit(~(~(-vec4<i32>(global1[_wgslsmith_index_u32(180u, 24u)], u_input.c.x, 0i, var_3.x)))));
}

