struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: u32,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: vec3<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 26>;

var<private> global1: array<Struct_2, 25>;

var<private> global2: array<u32, 17> = array<u32, 17>(4294967295u, 1u, 25757u, 6256u, 4294967295u, 30842u, 54106u, 0u, 30300u, 1u, 4294967295u, 17682u, 29795u, 0u, 2406u, 1u, 4294967295u);

var<private> global3: bool = false;

var<private> global4: bool;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool) -> u32 {
    global3 = false;
    global4 = false;
    var var_0 = 1f;
    var var_1 = vec4<i32>(u_input.c, countOneBits(firstTrailingBit(select(u_input.a.x, ~u_input.d.x, true))), _wgslsmith_add_i32(~_wgslsmith_sub_i32(u_input.d.x, reverseBits(3751i)), -1i), 55946i);
    let var_2 = vec4<f32>(-132f, -715f, _wgslsmith_f_op_f32(max(745f, 943f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-863f + 1210f) * -779f))));
    return global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(~(~global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(0u, 17u)], 17u)]), 17u)], 17u)];
}

fn func_2(arg_0: Struct_4, arg_1: u32) -> bool {
    global0 = array<vec4<i32>, 26>();
    global1 = array<Struct_2, 25>();
    let var_0 = _wgslsmith_mult_u32(~global2[_wgslsmith_index_u32(~func_3(true), 17u)] & ~countOneBits(arg_0.c), 4294967295u);
    var var_1 = Struct_3(~1u, arg_0.a.wz, arg_0.b);
    let var_2 = Struct_2(arg_0.d, Struct_1(max(var_1.c.x, ~(-1i)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_0.d.c)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d.e, 1563f) - vec2<f32>(arg_0.d.b.x, 313f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.d.c), vec2<f32>(arg_0.d.b.x, 1438f)), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -2147483647i, var_1.c.x), max(vec3<i32>(-7213i, 2147483647i, var_1.c.x), u_input.b.zwz)), _wgslsmith_add_i32(var_1.c.x, arg_0.d.d)), arg_0.d.b.x), arg_0.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-624f, _wgslsmith_f_op_f32(min(-2004f, arg_0.d.c.x))))), arg_0.d);
    return all(arg_0.a);
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> u32 {
    let var_0 = Struct_4(vec4<bool>(arg_3, true, true, all(vec3<bool>(true, any(vec3<bool>(arg_3, arg_3, true)), select(false, arg_0, arg_3)))), abs(u_input.b.yxz), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, ~(~(113709u << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 17u)], 17u)], 17u)] % 32u)))), 17u)], arg_2);
    global0 = array<vec4<i32>, 26>();
    let var_1 = 0u;
    let var_2 = Struct_5(Struct_1(~(-15975i) & (reverseBits(1i) << (min(var_1, 1u) % 32u)), var_0.d.b, var_0.d.b, 29389i, _wgslsmith_f_op_f32(var_0.d.b.x + 550f)), 4294967295u);
    var var_3 = _wgslsmith_clamp_vec2_i32(-(~countOneBits(vec2<i32>(var_0.d.a, var_0.b.x)) ^ _wgslsmith_mult_vec2_i32(u_input.b.xw, u_input.b.xy)), ~(_wgslsmith_div_vec2_i32(vec2<i32>(arg_2.a, 57216i), vec2<i32>(u_input.b.x, var_2.a.d)) | u_input.d) ^ (vec2<i32>(-u_input.d.x, ~var_0.b.x) >> (vec2<u32>(99436u, 1u) % vec2<u32>(32u))), var_0.b.zy);
    return var_2.b;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<i32>) -> vec4<bool> {
    global4 = all(arg_0.xx);
    var var_0 = vec4<bool>(arg_0.x, false, !arg_0.x, !(u_input.b.x >= _wgslsmith_mod_i32(u_input.c, arg_1.x)) & false);
    var var_1 = _wgslsmith_mult_u32(func_4(!select(true, false, func_2(Struct_4(vec4<bool>(arg_0.x, var_0.x, var_0.x, arg_0.x), u_input.b.zzy, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], Struct_1(u_input.d.x, vec2<f32>(-703f, 1265f), vec2<f32>(-2516f, 1762f), arg_1.x, 963f)), 29317u)), -1008f, Struct_1(~_wgslsmith_clamp_i32(-10134i, u_input.b.x, arg_1.x), vec2<f32>(1f, 1f), vec2<f32>(_wgslsmith_f_op_f32(ceil(-1078f)), _wgslsmith_f_op_f32(ceil(1587f))), _wgslsmith_dot_vec4_i32(vec4<i32>(33933i, arg_1.x, arg_1.x, arg_1.x), global0[_wgslsmith_index_u32(firstLeadingBit(global2[_wgslsmith_index_u32(1u, 17u)]), 26u)]), 241f), u_input.c == ((-58925i & u_input.d.x) ^ 2147483647i)), ~select(1u, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], var_0.x) | global2[_wgslsmith_index_u32(~(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, 0u), 17u)] ^ 1u), 17u)]);
    var var_2 = _wgslsmith_add_u32(1849u, 70049u);
    return select(select(!(!vec4<bool>(false, false, true, var_0.x)), select(select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(true, true, true, true), global2[_wgslsmith_index_u32(4294967295u, 17u)] < global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(62693u, 17u)], 17u)]), vec4<bool>(true, !var_0.x, true, arg_0.x), select(select(vec4<bool>(var_0.x, var_0.x, arg_0.x, true), vec4<bool>(false, var_0.x, var_0.x, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, false)), !vec4<bool>(true, arg_0.x, false, true), !arg_0.x)), false), !vec4<bool>(true, true, _wgslsmith_f_op_f32(trunc(-758f)) <= _wgslsmith_f_op_f32(282f - -1276f), arg_0.x), !(!select(select(var_0.x, var_0.x, false), !var_0.x, all(vec3<bool>(false, arg_0.x, arg_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(!func_1(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), select(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.b.x, u_input.b.x), false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true));
    let var_1 = global2[_wgslsmith_index_u32(firstLeadingBit(~(~4294967295u | func_3(true))), 17u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f)))), _wgslsmith_f_op_f32(2011f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -272f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-570f, -1000f, true)) - _wgslsmith_f_op_f32(f32(-1f) * -385f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(step(-676f, 804f))), 728f, all(!vec4<bool>(false, var_0.x, true, var_0.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-367f, _wgslsmith_f_op_f32(sign(810f)), _wgslsmith_f_op_f32(f32(-1f) * -1145f)))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2132f - 2173f) + -1487f), 809f, _wgslsmith_div_f32(-360f, _wgslsmith_f_op_f32(max(-1578f, 1576f))))), ~vec3<u32>(global2[_wgslsmith_index_u32(22348u & _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(0u, 17u)], 56719u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(119645u, 17u)], 17u)], 17u)], 17u)]), 17u)], ~0u, global2[_wgslsmith_index_u32(1u, 17u)]));
}

