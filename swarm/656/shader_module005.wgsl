struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
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

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 73628u, 0u, 0u);

var<private> global1: array<f32, 23>;

var<private> global2: Struct_2 = Struct_2(vec3<u32>(4294967295u, 1u, 68354u));

var<private> global3: array<u32, 29>;

var<private> global4: array<Struct_4, 4>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    let var_0 = Struct_4(Struct_2(global0.ywz), 0u);
    global1 = array<f32, 23>();
    global3 = array<u32, 29>();
    var var_1 = false;
    global3 = array<u32, 29>();
    return 1691f;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = -481f;
    var_0 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global2.a, global0.zyy), 23u)] * _wgslsmith_f_op_f32(min(-268f, global1[_wgslsmith_index_u32(global0.x << (46388u % 32u), 23u)])));
    let var_1 = Struct_4(Struct_2(vec3<u32>(6583u, 41870u, reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), global2.a.yy)))), global3[_wgslsmith_index_u32(global2.a.x, 29u)]);
    global1 = array<f32, 23>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()));
    return arg_0;
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = func_2(Struct_1(_wgslsmith_div_i32(_wgslsmith_sub_i32(arg_0, arg_0), -23886i >> (0u % 32u)) << (~_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(10967u, 29u)], global0.x) % 32u), true, true));
    let var_1 = global0.x;
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_mod_u32(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.a.x, 29u)], 29u)])), 23u)], -160f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global2.a.x, 23u)] + 477f)))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1[_wgslsmith_index_u32(1u, 23u)], -402f, _wgslsmith_f_op_f32(f32(-1f) * -804f)))));
    var var_3 = var_2.zx;
    let var_4 = Struct_2(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(global0.zzx, ~vec3<u32>(1u, global0.x, global2.a.x)), vec3<u32>(select(global2.a.x, global2.a.x, var_0.c), ~global2.a.x, 4294967295u) | _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(global2.a, vec3<u32>(global0.x, global0.x, 0u), vec3<u32>(global0.x, global3[_wgslsmith_index_u32(25445u, 29u)], 56193u)), firstTrailingBit(global0.zxy))));
    return _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(-1i, ~(-var_0.a))), _wgslsmith_add_vec2_i32(u_input.a ^ _wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.c, var_0.a), vec2<i32>(-1i, -15440i)), ~(~vec2<i32>(1i, 1i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(abs(-vec2<i32>(-u_input.d, _wgslsmith_sub_i32(u_input.c, 2147483647i))), select(~(u_input.a & -vec2<i32>(1i, 4969i)), abs(vec2<i32>(~u_input.d, func_1(u_input.b))), true), !select(vec2<bool>(any(vec4<bool>(true, true, true, false)), false), vec2<bool>(any(vec3<bool>(false, false, true)), func_2(Struct_1(u_input.c, false, false)).c), all(select(vec2<bool>(false, true), vec2<bool>(false, true), true))));
    var_0 = vec2<i32>(var_0.x, u_input.c);
    var var_1 = ~(_wgslsmith_mod_i32(countOneBits(var_0.x), _wgslsmith_add_i32(-21595i, var_0.x)) << (global3[_wgslsmith_index_u32(~1u, 29u)] % 32u)) | var_0.x;
    global4 = array<Struct_4, 4>();
    var_1 = min(select(_wgslsmith_clamp_i32(-(u_input.b ^ -60131i), var_0.x, var_0.x), 1i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(2741u, 23u)] * -949f), 616f) > global1[_wgslsmith_index_u32(~global2.a.x >> (global0.x % 32u), 23u)]), func_2(Struct_1(-31496i, _wgslsmith_add_i32(u_input.a.x, -32916i) > -var_0.x, true)).a);
    global0 = select(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_div_u32(global0.x, 1u), global0.x, ~global3[_wgslsmith_index_u32(8546u, 29u)], global3[_wgslsmith_index_u32(0u, 29u)]) | min(reverseBits(vec4<u32>(17675u, 1u, 91918u, global0.x)), select(vec4<u32>(8087u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(12078u, 29u)], 29u)], 21483u, global2.a.x), vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 29u)], 1u, 0u, global0.x), false)), vec4<u32>(~global2.a.x ^ _wgslsmith_div_u32(global0.x, global3[_wgslsmith_index_u32(global2.a.x, 29u)]), _wgslsmith_clamp_u32(~global3[_wgslsmith_index_u32(35876u, 29u)], ~global0.x, ~global0.x), 1u, ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.x, 29u)], 29u)])), ~select(vec4<u32>(4294967295u, 4294967295u, 28213u, global3[_wgslsmith_index_u32(global0.x, 29u)]) & min(vec4<u32>(global0.x, 4294967295u, 66119u, 41597u), vec4<u32>(153745u, global3[_wgslsmith_index_u32(global0.x, 29u)], global2.a.x, 3638u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(global2.a.x, global0.x, global2.a.x, global0.x), vec4<u32>(global0.x, global2.a.x, global3[_wgslsmith_index_u32(global0.x, 29u)], global2.a.x), ~vec4<u32>(4294967295u, 0u, 0u, 21750u)), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), true)), vec4<bool>(true, true, true, true));
    var var_2 = u_input.b ^ u_input.a.x;
    let var_3 = Struct_3(min(countOneBits(0u >> (global0.x % 32u)), global2.a.x >> (abs(3019u) % 32u)) > ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(5495u, global0.x, 22165u), global0.wxz)), func_2(func_2(func_2(func_2(Struct_1(1i, true, false))))), vec4<i32>(-1i) * -(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 1i, -2147483647i, u_input.b), vec4<i32>(var_0.x, var_0.x, var_0.x, -2147483647i), vec4<i32>(11532i, var_0.x, -2147483647i, -38943i))), ~global3[_wgslsmith_index_u32(abs(global2.a.x), 29u)] <= 1u);
    global0 = max(~(~(~vec4<u32>(64487u, global2.a.x, 1u, global0.x))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(25660u, 17171u, ~global0.x, _wgslsmith_dot_vec3_u32(global2.a, vec3<u32>(4294967295u, global2.a.x, 1559u))), ~(vec4<u32>(0u, global3[_wgslsmith_index_u32(global2.a.x, 29u)], 23258u, 23490u) ^ vec4<u32>(4969u, global2.a.x, 4294967295u, global2.a.x)), countOneBits(~vec4<u32>(4294967295u, 1u, global2.a.x, global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-32332i, var_0.x));
}

