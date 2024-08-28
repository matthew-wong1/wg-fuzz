struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<u32, 9>;

var<private> global2: vec3<f32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
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

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: f32) -> f32 {
    global0 = arg_1;
    global0 = false;
    var var_0 = global2.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -277f)) + -342f));
    global0 = all(select(vec3<bool>(all(select(vec4<bool>(true, arg_1, arg_1, arg_1), vec4<bool>(true, arg_1, false, true), arg_1)), true, true), !vec3<bool>(true, false, arg_1 || true), arg_1));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -423f));
}

fn func_3(arg_0: bool, arg_1: vec4<u32>) -> vec3<f32> {
    var var_0 = firstLeadingBit(-_wgslsmith_clamp_vec2_i32(min(u_input.a, vec2<i32>(u_input.b.x, -38489i)), max(u_input.b.yx, -u_input.a), select(vec2<i32>(-1i, u_input.d) & vec2<i32>(-3389i, u_input.d), u_input.b.yz, arg_0)));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-114f)) + _wgslsmith_f_op_f32(127f * _wgslsmith_f_op_f32(func_1(549f, false, global2.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(global2.x - -826f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global2.x)), _wgslsmith_f_op_f32(func_1(global2.x, false, global2.x))))), -550f), global2.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 613f, global2.x)))), reverseBits(~firstLeadingBit(max(vec4<i32>(-2147483647i, var_0.x, -12487i, 2147483647i), vec4<i32>(-24376i, var_0.x, var_0.x, -5886i)))));
    global1 = array<u32, 9>();
    var var_2 = reverseBits(~(~(~(~vec2<u32>(global1[_wgslsmith_index_u32(arg_1.x, 9u)], arg_1.x)))));
    return var_1.a;
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = Struct_2(arg_0, Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 856f, -1302f)), vec3<f32>(arg_0, arg_0, global2.x))))), -363f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(false, ~vec4<u32>(0u, global1[_wgslsmith_index_u32(u_input.c, 9u)], u_input.e.x, 6278u)))), select(_wgslsmith_mod_vec4_i32(vec4<i32>(6525i, 28866i, u_input.d, u_input.d), vec4<i32>(u_input.d, 1i, 6887i, u_input.b.x)), vec4<i32>(u_input.b.x, -29357i, -6315i, u_input.b.x), true) << ((firstLeadingBit(vec4<u32>(u_input.c, 82406u, u_input.e.x, 1u)) >> (~vec4<u32>(37624u, 1520u, u_input.c, u_input.e.x) % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_1 = 84981u;
    global1 = array<u32, 9>();
    let var_2 = 4294967295u;
    global0 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - var_0.a)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1500f, global2.x)), _wgslsmith_f_op_f32(sign(global2.x))))))));
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: u32, arg_3: i32) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-385f)), _wgslsmith_f_op_f32(arg_1 + 388f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(112f)))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -203f, -694f) - vec3<f32>(global2.x, arg_1, 1482f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(191f, arg_1, global2.x), vec3<f32>(global2.x, -1795f, arg_1)))))), -396f, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-125f, global2.x, global2.x) + vec3<f32>(-197f, arg_1, -695f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 185f, 2531f)), any(vec2<bool>(false, false)))))))), firstLeadingBit(~vec4<i32>(max(-9130i, -10262i), _wgslsmith_add_i32(16536i, u_input.a.x), 5753i, -2147483647i)));
    global1 = array<u32, 9>();
    global1 = array<u32, 9>();
    let var_1 = max(4294967295u, countOneBits(abs(43170u)));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global2.x)))))), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1493f * 961f) - _wgslsmith_f_op_f32(113f - global2.x)), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1923f), true, global2.x)), 793f) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(1791f, -412f, 1139f), _wgslsmith_f_op_vec3_f32(vec3<f32>(131f, -1178f, global2.x) - vec3<f32>(global2.x, -1058f, global2.x)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 118f, global2.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1876f, 347f, -1363f))))));
    let var_0 = u_input.e;
    let var_1 = func_4(vec4<u32>(max(max(u_input.c, 4294967295u), 88895u), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(1u, u_input.c, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(79943u, 9u)], 9u)], u_input.e.x)), vec4<u32>(global1[_wgslsmith_index_u32(u_input.c, 9u)], var_0.x, u_input.e.x, 11634u)), _wgslsmith_mult_vec4_u32(vec4<u32>(7812u, u_input.e.x, 28602u, 51285u) << (vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 9u)], var_0.x, u_input.e.x, u_input.c) % vec4<u32>(32u)), vec4<u32>(12410u, 35362u, 4294967295u, 1u))), 1u, 22577u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-437f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(-929f)) + global2.x))) + _wgslsmith_f_op_f32(848f * -385f)), countOneBits(global1[_wgslsmith_index_u32(u_input.c, 9u)]), _wgslsmith_mod_i32(-47620i, u_input.b.x));
    let var_2 = _wgslsmith_add_vec2_i32(~_wgslsmith_div_vec2_i32(abs(vec2<i32>(2166i, var_1.b.d.x)), var_1.b.d.yy), select(vec2<i32>(-39683i, -u_input.b.x), u_input.b.xy, vec2<bool>(all(vec4<bool>(true, true, false, false)), false))) >> (abs(var_0.xz) % vec2<u32>(32u));
    global2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(var_1.b.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b.c)), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)))), var_1.b.c))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(var_1.b.d), reverseBits(abs(-16696i)));
}

