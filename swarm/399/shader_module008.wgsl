struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_2,
    d: vec4<i32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: array<f32, 20>;

var<private> global2: u32 = 57476u;

var<private> global3: array<Struct_3, 26>;

var<private> global4: f32 = 346f;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_dot_vec3_u32(reverseBits(u_input.a.ywx << (u_input.a.zzw % vec3<u32>(32u))), u_input.a.xyx) << ((u_input.b >> ((u_input.a.x << (firstTrailingBit(arg_1) % 32u)) % 32u)) % 32u));
    let var_1 = -386f;
    var var_2 = firstLeadingBit(1i);
    let var_3 = abs(~(~(-9491i)));
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -900f);
    return Struct_1(vec4<i32>(abs(_wgslsmith_div_i32(-arg_0.a.x, 0i)), u_input.c, var_3, arg_0.a.x), 526f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c - 181f) - 1362f), _wgslsmith_f_op_f32(f32(-1f) * -454f), !all(vec4<bool>(true, true, true, true)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(610f * -1000f), _wgslsmith_f_op_f32(var_4 - -497f), true)), _wgslsmith_f_op_f32(-arg_0.c))), _wgslsmith_sub_i32(_wgslsmith_sub_i32(~(i32(-1i) * -35766i), -29810i), var_3));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_2, arg_3: vec2<bool>) -> vec4<bool> {
    var var_0 = ~firstTrailingBit(arg_0.x) >> (reverseBits(_wgslsmith_div_u32(firstTrailingBit(abs(u_input.b)), 0u)) % 32u);
    let var_1 = u_input.a.x;
    global1 = array<f32, 20>();
    var var_2 = 8105u;
    var var_3 = Struct_3(Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c, u_input.d.x, u_input.d.x), u_input.d.yzy | u_input.d.yxx), ~(-8622i), min(2147483647i, 2147483647i), min(9676i, ~(-29254i))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1002f))), -1456f, u_input.d.x), u_input.d.wy, arg_2, u_input.d, vec4<bool>(arg_3.x, arg_3.x, any(!(!vec4<bool>(false, false, false, arg_3.x))), arg_3.x));
    return var_3.e;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<u32>) -> vec4<u32> {
    var var_0 = countOneBits(57785u);
    var var_1 = Struct_3(func_2(Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, -42120i, -11201i, -14546i), arg_0), -299f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(44009u, 20u)] + 794f) * _wgslsmith_div_f32(global1[_wgslsmith_index_u32(arg_1.x, 20u)], global1[_wgslsmith_index_u32(u_input.a.x, 20u)])), _wgslsmith_add_i32(u_input.c, ~arg_0.x)), _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 6536u, arg_1.x, 113324u), vec4<u32>(0u, arg_1.x, 42243u, 4294967295u)), select(~vec4<u32>(1u, u_input.a.x, 47642u, 24732u), ~vec4<u32>(u_input.b, 1u, arg_1.x, 68972u), u_input.b <= 56271u))), arg_0.xy, Struct_2(u_input.a.x), arg_0, select(func_3(vec2<u32>(max(4294967295u, 1u), ~arg_1.x), _wgslsmith_div_u32(16079u, arg_1.x) ^ arg_1.x, Struct_2(_wgslsmith_add_u32(122003u, arg_1.x)), !select(vec2<bool>(false, false), vec2<bool>(true, false), true)), func_3(~vec2<u32>(arg_1.x, arg_1.x), select(~arg_1.x, u_input.b, false), Struct_2(u_input.a.x), !select(vec2<bool>(true, false), vec2<bool>(true, false), true)), !all(vec3<bool>(true, true, false))));
    let var_2 = u_input.b;
    var_0 = 0u;
    let var_3 = 563f;
    return _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, ~(~(var_2 & var_1.c.a)), arg_1.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(30666u, var_2, var_1.c.a), ~vec3<u32>(66849u, 21570u, 0u))), reverseBits(firstTrailingBit(select(u_input.a, vec4<u32>(4294967295u, 0u, var_1.c.a, 4294967295u), vec4<bool>(false, var_1.e.x, var_1.e.x, var_1.e.x))) >> (select(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.c.a, var_1.c.a, 52277u, 1u), vec4<u32>(43085u, arg_1.x, 7860u, var_2)), u_input.a, true) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 21>();
    var var_0 = firstTrailingBit(_wgslsmith_clamp_i32(-1i, 1i, _wgslsmith_dot_vec2_i32(u_input.d.xz, _wgslsmith_div_vec2_i32(vec2<i32>(-23765i, u_input.d.x), vec2<i32>(u_input.d.x, u_input.d.x)))) >> ((_wgslsmith_dot_vec4_u32(func_1(u_input.d, u_input.a.xyw), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.b, u_input.b)) ^ u_input.b) % 32u));
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(15417u, 20u)], global1[_wgslsmith_index_u32(u_input.a.x, 20u)], -430f, global1[_wgslsmith_index_u32(1u, 20u)]), vec4<f32>(global1[_wgslsmith_index_u32(0u, 20u)], -1000f, -210f, global1[_wgslsmith_index_u32(1u, 20u)]), false)) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 20u)], 719f, global1[_wgslsmith_index_u32(u_input.a.x, 20u)], global1[_wgslsmith_index_u32(u_input.a.x, 20u)])))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-824f, global1[_wgslsmith_index_u32(2739u, 20u)], global1[_wgslsmith_index_u32(u_input.a.x, 20u)], global1[_wgslsmith_index_u32(u_input.b, 20u)]))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 20u)], global1[_wgslsmith_index_u32(u_input.b, 20u)], 712f, global1[_wgslsmith_index_u32(0u, 20u)]))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 20u)], global1[_wgslsmith_index_u32(u_input.b, 20u)], -935f, global1[_wgslsmith_index_u32(u_input.b, 20u)]) * vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], global1[_wgslsmith_index_u32(u_input.a.x, 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(1u, 20u)])))))));
    global1 = array<f32, 20>();
    global3 = array<Struct_3, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(610f, 493f, global1[_wgslsmith_index_u32(u_input.a.x, 20u)], 1000f), vec4<f32>(687f, global1[_wgslsmith_index_u32(u_input.b, 20u)], -1000f, global1[_wgslsmith_index_u32(u_input.b, 20u)]))))))), func_2(func_2(func_2(func_2(Struct_1(u_input.d, -342f, -1018f, u_input.d.x), 8911u), 1u), firstTrailingBit(u_input.b)), 1u).c);
}

