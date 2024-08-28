struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 18>;

var<private> global1: array<Struct_1, 22>;

var<private> global2: vec3<bool>;

var<private> global3: array<vec3<u32>, 19>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: bool, arg_1: vec3<bool>, arg_2: i32, arg_3: vec2<f32>) -> f32 {
    var var_0 = reverseBits(~(~_wgslsmith_sub_u32(138485u, u_input.b.x) ^ u_input.b.x));
    var var_1 = 53712u;
    global0 = array<vec3<f32>, 18>();
    var var_2 = u_input.b.zy;
    var_2 = vec2<u32>(~_wgslsmith_div_u32(1u, ~(~var_2.x)), var_2.x);
    return _wgslsmith_f_op_f32(f32(-1f) * -572f);
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    let var_0 = u_input.a;
    var var_1 = global1[_wgslsmith_index_u32(~countOneBits(2960u), 22u)];
    global3 = array<vec3<u32>, 19>();
    global2 = !select(!(!select(vec3<bool>(global2.x, true, var_1.a.x), vec3<bool>(false, var_1.a.x, var_1.a.x), false)), !vec3<bool>(var_1.a.x, var_1.a.x, false), !vec3<bool>(!global2.x, global2.x & false, global2.x == global2.x));
    var_1 = Struct_1(!select(global2.yy, global2.zz, var_1.a));
    return -474f;
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> i32 {
    let var_0 = firstLeadingBit(~max(_wgslsmith_mult_u32(1u, u_input.b.x), u_input.b.x));
    let var_1 = _wgslsmith_dot_vec3_u32(u_input.b, _wgslsmith_mult_vec3_u32(max(_wgslsmith_div_vec3_u32(u_input.b, u_input.b), vec3<u32>(u_input.b.x, var_0, 1u)), vec3<u32>(u_input.b.x, firstTrailingBit(u_input.b.x), 0u << (1u % 32u))) >> (abs(global3[_wgslsmith_index_u32(var_0, 19u)]) % vec3<u32>(32u)));
    let var_2 = u_input.b.x;
    let var_3 = vec2<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(arg_1, vec3<bool>(arg_0.a.x, arg_1, true), u_input.a, vec2<f32>(1476f, -680f))))), _wgslsmith_f_op_f32(func_3(~vec2<i32>(21880i, 0i)))) >= _wgslsmith_f_op_f32(675f + _wgslsmith_f_op_f32(min(-2073f, _wgslsmith_f_op_f32(1203f * -1613f)))), arg_1);
    global0 = array<vec3<f32>, 18>();
    return 21294i;
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    global3 = array<vec3<u32>, 19>();
    var var_0 = Struct_1(vec2<bool>(true, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1338f, -787f), _wgslsmith_div_f32(298f, 1115f))) < 1285f));
    var var_1 = Struct_1(var_0.a);
    let var_2 = all(vec3<bool>(~countOneBits(1i) > _wgslsmith_mod_i32(2147483647i, abs(arg_1)), !any(select(vec3<bool>(true, true, global2.x), vec3<bool>(arg_0.a.x, var_0.a.x, var_0.a.x), var_0.a.x)), !var_1.a.x));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -172f);
    return Struct_1(!select(vec2<bool>(!global2.x, true), vec2<bool>(any(vec2<bool>(global2.x, var_1.a.x)), true), !var_2 && (true && var_0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 18>();
    var var_0 = func_4(global1[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(u_input.b.x, 4294967295u, u_input.b.x)), 22u)], ~func_1(Struct_1(vec2<bool>(true, true)), global2.x));
    var var_1 = global1[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(~countOneBits(~4294967295u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(1u, u_input.b.x), abs(u_input.b.x)), ~u_input.b.x)), ((~0u >> (~u_input.b.x % 32u)) ^ ~firstTrailingBit(52167u)) << (u_input.b.x % 32u)), 22u)];
    global1 = array<Struct_1, 22>();
    var var_2 = _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(u_input.b.x & u_input.b.x, 18u)] * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 18u)]))))))));
    global3 = array<vec3<u32>, 19>();
    var var_3 = global1[_wgslsmith_index_u32(30843u << (_wgslsmith_mult_u32(u_input.b.x, 63361u) % 32u), 22u)];
    var var_4 = Struct_1(!select(func_4(global1[_wgslsmith_index_u32(26372u, 22u)], 1i).a, vec2<bool>(global2.x, any(vec3<bool>(var_0.a.x, var_1.a.x, false))), any(vec3<bool>(var_1.a.x, var_3.a.x, var_3.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1276f), min(u_input.a, _wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -41716i, u_input.a, 2147483647i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))), vec4<i32>(2147483647i, -834i, u_input.a, -45258i) & countOneBits(vec4<i32>(u_input.a, 2147483647i, u_input.a, -19074i)))));
}

