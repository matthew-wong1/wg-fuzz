struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25>;

var<private> global1: Struct_2 = Struct_2(-1278f, 25087u);

var<private> global2: array<f32, 19> = array<f32, 19>(357f, 1121f, 1988f, 1292f, -538f, 576f, 2001f, 1166f, 803f, -677f, -2695f, 126f, -640f, -1450f, -3028f, 1347f, 290f, 758f, -467f);

var<private> global3: Struct_1 = Struct_1(vec3<u32>(46327u, 46057u, 1u), vec3<f32>(-223f, 417f, 772f), vec4<i32>(0i, 0i, 56345i, -35796i), false, vec3<u32>(0u, 1u, 4338u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: f32) -> Struct_1 {
    var var_0 = arg_2;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) * global3.b.x), 1u);
    var_0 = _wgslsmith_f_op_f32(-1270f + _wgslsmith_f_op_f32(-arg_2));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1104f - global3.b.x), _wgslsmith_f_op_f32(-arg_2)))));
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1301f)));
    return Struct_1(abs(~(vec3<u32>(global3.a.x, 23608u, global3.e.x) | u_input.b)) << (vec3<u32>(arg_0.x, u_input.a, 1u) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.b)))) * _wgslsmith_f_op_vec3_f32(-global3.b)), -vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global3.c.x, -37999i), global3.c.wwx), 1i), -1i, ~_wgslsmith_add_i32(global3.c.x, global3.c.x), ~_wgslsmith_clamp_i32(global3.c.x, global3.c.x, global3.c.x)), true, ~firstTrailingBit(~global3.e));
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    global3 = func_1(abs(global3.a.zz), false, func_1(global3.a.zy, -1638f < _wgslsmith_f_op_f32(max(global1.a, _wgslsmith_div_f32(-550f, -1000f))), -1609f).b.x);
    var var_0 = global1.b;
    var var_1 = Struct_2(1136f, min(firstTrailingBit(func_1(~u_input.c.yz, any(vec4<bool>(global0[_wgslsmith_index_u32(global3.a.x, 25u)], true, global0[_wgslsmith_index_u32(77731u, 25u)], false)), _wgslsmith_f_op_f32(-208f + global1.a)).a.x), ~(~(global1.b & u_input.c.x))));
    var var_2 = func_1(vec2<u32>(47958u, 1u), true, -1000f);
    let var_3 = Struct_1(_wgslsmith_clamp_vec3_u32(~vec3<u32>(_wgslsmith_sub_u32(4294967295u, 64278u), var_2.e.x, ~var_1.b), vec3<u32>(~0u, u_input.c.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, u_input.a, 4294967295u), vec3<u32>(global1.b, 1u, 10878u)), ~vec3<u32>(var_1.b, 0u, var_2.a.x))), global3.a), _wgslsmith_f_op_vec3_f32(global3.b * var_2.b), _wgslsmith_clamp_vec4_i32(-var_2.c, _wgslsmith_clamp_vec4_i32(global3.c, func_1(max(vec2<u32>(43526u, 4294967295u), global3.a.yz), true, _wgslsmith_f_op_f32(exp2(var_2.b.x))).c, var_2.c << (firstLeadingBit(vec4<u32>(global1.b, 41746u, 0u, global1.b)) % vec4<u32>(32u))), abs(_wgslsmith_mod_vec4_i32(global3.c, ~vec4<i32>(4941i, global3.c.x, var_2.c.x, global3.c.x)))), arg_0.x, vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(56378u, u_input.a), u_input.b.zz), global1.b, abs(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(42327u, 11968u, u_input.b.x, var_2.e.x)), var_2.e.x))));
    return 0u & var_2.e.x;
}

fn func_2(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c.x, max(1i, -1i), abs(arg_0.c.x), -25632i), arg_0.c));
    var var_1 = Struct_2(arg_0.b.x, func_3(vec2<bool>(true, true)));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-arg_0.b.x), global1.b);
    global3 = arg_0;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.b.x, var_1.a, global0[_wgslsmith_index_u32(global1.b, 25u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-136f - arg_0.b.x) * 581f)))), var_2.b);
    return vec3<f32>(_wgslsmith_f_op_f32(-func_1(select(~arg_0.e.xz, arg_0.e.xy, select(vec2<bool>(false, global3.d), vec2<bool>(global0[_wgslsmith_index_u32(var_1.b, 25u)], false), true)), global0[_wgslsmith_index_u32(4294967295u, 25u)], _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(global3.e.x, 19u)], var_1.a, arg_0.d))).b.x), _wgslsmith_f_op_f32(-var_2.a), global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 25>();
    global2 = array<f32, 19>();
    global2 = array<f32, 19>();
    let var_0 = Struct_1(~global3.e, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(func_1(vec2<u32>(0u, 46471u), global0[_wgslsmith_index_u32(1u, 25u)], global3.b.x))) - global3.b))), vec4<i32>(~(-1i), 22431i, -(~(~(-19540i))), i32(-1i) * -2147483647i), global3.d, u_input.b);
    global0 = array<bool, 25>();
    var var_1 = -firstLeadingBit(var_0.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(var_0.b.xy, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(func_1(u_input.c.xz, var_0.d, -674f).b.yx, global3.b.zx) * var_0.b.xy))), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(var_0.a.x, 1u, 7444u)) << (vec3<u32>(select(0u, 51320u, false), _wgslsmith_dot_vec3_u32(var_0.e, var_0.a), 1u) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(u_input.b, global3.a)), -1022f, vec3<i32>(var_0.c.x, firstTrailingBit(countOneBits(1i)), _wgslsmith_clamp_i32(countOneBits(~(-1i)), global3.c.x, -2147483647i | var_0.c.x)));
}

