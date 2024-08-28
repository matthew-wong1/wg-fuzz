struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: i32,
    c: Struct_3,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 8>;

var<private> global1: array<Struct_2, 23>;

var<private> global2: array<Struct_1, 3>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool) -> vec2<i32> {
    global0 = array<vec4<f32>, 8>();
    global2 = array<Struct_1, 3>();
    global0 = array<vec4<f32>, 8>();
    global2 = array<Struct_1, 3>();
    global0 = array<vec4<f32>, 8>();
    return vec2<i32>(1i, 1i) << (~_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a.zx, u_input.a.zw, vec2<u32>(4294967295u, u_input.b)) ^ ~u_input.a.wz, ~abs(vec2<u32>(u_input.a.x, u_input.b))) % vec2<u32>(32u));
}

fn func_2() -> Struct_4 {
    global0 = array<vec4<f32>, 8>();
    var var_0 = true;
    global0 = array<vec4<f32>, 8>();
    global1 = array<Struct_2, 23>();
    var var_1 = _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(max(_wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(-6170i, -23544i)), -vec2<i32>(-1981i, -28650i)), firstLeadingBit(-vec2<i32>(1i, 50710i))), select(~vec2<i32>(-1i, -321i) & func_3(false), -abs(vec2<i32>(-2147483647i, 17322i)), u_input.b < 1u)), vec2<i32>(_wgslsmith_mod_i32(2147483647i, max(abs(-21758i), -2147483647i << (u_input.a.x % 32u))), -(~1i) << ((~u_input.b ^ _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)) % 32u)), ~(~_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, -39135i), vec2<i32>(-1856i, -23223i)), func_3(false))));
    return Struct_4(~(u_input.a.yx & reverseBits(vec2<u32>(1u, u_input.a.x))), abs(0i ^ var_1.x), Struct_3(global1[_wgslsmith_index_u32(~abs(u_input.a.x), 23u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1000f) - vec2<f32>(-803f, -376f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-941f, 886f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(281f, -1639f)), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)))))));
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    let var_0 = ~4294967295u;
    let var_1 = u_input.a.wxx;
    let var_2 = u_input.b;
    return arg_0.c.a;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: vec4<f32>) -> f32 {
    global1 = array<Struct_2, 23>();
    let var_0 = _wgslsmith_mult_i32(i32(-1i) * -_wgslsmith_mod_i32(_wgslsmith_mod_i32(arg_0.x, 1i), 1i), arg_0.x);
    let var_1 = reverseBits(u_input.a.ywx);
    let var_2 = Struct_4(firstTrailingBit(vec2<u32>(u_input.b, ~var_1.x)), -var_0, Struct_3(func_4(func_2())), arg_2.xz);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d.x) * _wgslsmith_f_op_f32(-890f * arg_2.x)) * -1000f) - 1735f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-130f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 126f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1728f)), -462f)))), _wgslsmith_div_f32(-232f, _wgslsmith_f_op_f32(f32(-1f) * -991f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, 453f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -415f) + _wgslsmith_f_op_f32(func_1(vec4<i32>(7814i, 1i, 6136i, -53346i), vec4<bool>(false, false, true, false), global0[_wgslsmith_index_u32(u_input.a.x, 8u)])))))) + vec4<f32>(922f, -1498f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<i32>(-98781i, -1i, 53269i, -26429i), vec4<bool>(true, false, false, true), global0[_wgslsmith_index_u32(0u, 8u)]))) * 1f)));
    var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(-605f, 438f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x), var_0.x), vec4<f32>(_wgslsmith_f_op_f32(trunc(462f)), 118f, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(step(global0[_wgslsmith_index_u32(min(32477u | u_input.a.x, u_input.b), 8u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(max(0u, u_input.b), 1u >> (u_input.a.x % 32u)), 8u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], vec4<f32>(-715f, var_0.x, 1630f, var_0.x), vec4<bool>(true, true, true, false))), _wgslsmith_f_op_vec4_f32(step(global0[_wgslsmith_index_u32(67206u, 8u)], global0[_wgslsmith_index_u32(u_input.a.x, 8u)])))))), !(!vec4<bool>(any(vec3<bool>(true, false, false)), func_4(Struct_4(vec2<u32>(4294967295u, u_input.b), -4759i, Struct_3(Struct_2(global2[_wgslsmith_index_u32(4294967295u, 3u)], var_0.x, global2[_wgslsmith_index_u32(u_input.b, 3u)], global2[_wgslsmith_index_u32(20556u, 3u)])), var_0.xx)).c.b.x, true, true))));
    global1 = array<Struct_2, 23>();
    global2 = array<Struct_1, 3>();
    global1 = array<Struct_2, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(-38360i, ~(select(vec2<i32>(1i, 1i), vec2<i32>(1i, 1i), vec2<bool>(false, false)) ^ vec2<i32>(reverseBits(-28593i), _wgslsmith_mult_i32(3351i, 14493i))), max(vec4<i32>(-func_3(true).x, -2147483647i, abs(~(-9599i)), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -43062i), vec2<i32>(-6982i, -35984i)), abs(2147483647i))), vec4<i32>(-1i >> (u_input.b % 32u), -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-29796i, 1i, -4332i, 62464i), vec4<i32>(1i, 1i, -2147483647i, -127422i)), max(24401i, -3879i)) << (~u_input.a % vec4<u32>(32u))), ~max(u_input.a, _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, 74089u, 1871u) & vec4<u32>(1049u, 1u, u_input.a.x, u_input.b), _wgslsmith_div_vec4_u32(u_input.a, u_input.a))));
}

