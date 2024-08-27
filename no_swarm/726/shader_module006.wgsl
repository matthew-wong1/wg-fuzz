struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: vec3<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32;

var<private> global2: array<vec4<i32>, 19>;

var<private> global3: array<u32, 3> = array<u32, 3>(0u, 8510u, 24297u);

var<private> global4: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec2<i32> {
    let var_0 = Struct_1(vec2<i32>(~(-14841i), _wgslsmith_sub_i32(-min(u_input.a.x, global0.a.x), countOneBits(abs(arg_1.a.x)))), global4.b);
    var var_1 = 17911u;
    let var_2 = vec3<bool>(any(!(!select(vec4<bool>(false, true, arg_1.b, true), vec4<bool>(false, true, global4.b, arg_1.b), false))), !(_wgslsmith_f_op_f32(round(-589f)) > _wgslsmith_f_op_f32(1177f * _wgslsmith_f_op_f32(208f + -956f))), true);
    var var_3 = global0.a.x;
    let var_4 = vec3<u32>(0u ^ ~firstTrailingBit(global3[_wgslsmith_index_u32(max(93621u, 4294967295u), 3u)]), 1781u, abs(1u) ^ _wgslsmith_mult_u32(1u, ~(0u & global3[_wgslsmith_index_u32(8194u, 3u)])));
    return ~(~_wgslsmith_add_vec2_i32(vec2<i32>(-1i, global0.a.x), var_0.a));
}

fn func_2(arg_0: u32) -> bool {
    var var_0 = Struct_1(global0.a, (i32(-1i) * -2147483647i) > _wgslsmith_sub_i32(_wgslsmith_div_i32(54607i, u_input.a.x), abs(_wgslsmith_clamp_i32(-31231i, global0.a.x, global4.a.x))));
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -449f);
    global4 = Struct_1(func_3(global0.a.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(75767u, arg_0), max(u_input.e, vec2<u32>(arg_0, 4294967295u))) % 32u), Struct_1(var_0.a, true)), all(vec2<bool>(global0.b, false)));
    return all(!vec4<bool>(!var_0.b, var_0.b, global4.b, any(vec3<bool>(false, global0.b, false)))) && !global4.b;
}

fn func_4(arg_0: vec4<bool>) -> vec3<u32> {
    global4 = Struct_1(vec2<i32>(_wgslsmith_mult_i32(countOneBits(func_3(u_input.a.x, Struct_1(vec2<i32>(-1i, 1i), false)).x), -12559i), (_wgslsmith_add_i32(global0.a.x, 16064i) << (4294967295u % 32u)) | 43242i), !(-1i <= ~u_input.a.x));
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -252f) + _wgslsmith_f_op_f32(max(-370f, 1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1360f))), 139f)), 2299f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-250f, _wgslsmith_div_f32(-740f, -1092f))), _wgslsmith_f_op_f32(min(-1841f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    return ~u_input.d;
}

fn func_1(arg_0: bool) -> i32 {
    var var_0 = u_input.e.x;
    var var_1 = ~func_4(select(!vec4<bool>(arg_0, true, false, global4.b), !(!vec4<bool>(true, global0.b, true, global4.b)), func_2(1u)));
    var var_2 = ~min(3396u, 1u);
    var_2 = countOneBits(u_input.e.x >> (_wgslsmith_clamp_u32(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], u_input.d.x) % 32u));
    var var_3 = Struct_1(_wgslsmith_sub_vec2_i32(~vec2<i32>(-1i, _wgslsmith_clamp_i32(u_input.a.x, -39235i, 1i)), countOneBits(u_input.a.wy) >> (u_input.d.yx % vec2<u32>(32u))), true);
    return _wgslsmith_dot_vec2_i32(u_input.a.zx, vec2<i32>(-u_input.a.x, i32(-1i) * -40243i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(func_1(!(!global0.b)), global0.a.x);
    let var_1 = (-_wgslsmith_dot_vec2_i32(-var_0, _wgslsmith_add_vec2_i32(global0.a, vec2<i32>(-2147483647i, global4.a.x))) >> (10278u % 32u)) ^ -global4.a.x;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1131f)), _wgslsmith_f_op_f32(-293f - -881f)))))) + -254f);
    global3 = array<u32, 3>();
    var var_2 = Struct_1(-select(vec2<i32>(-3866i, _wgslsmith_mod_i32(global0.a.x, var_1)), firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(0i, 0i), global0.a)), all(select(vec4<bool>(false, true, global4.b, global0.b), vec4<bool>(true, false, true, global0.b), vec4<bool>(global0.b, global0.b, true, false)))), false);
    var var_3 = countOneBits(firstLeadingBit(u_input.a.xwz));
    global2 = array<vec4<i32>, 19>();
    var var_4 = ~15488u;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-1000f, -1214f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-639f, _wgslsmith_f_op_f32(f32(-1f) * -608f)))), _wgslsmith_add_u32(4294967295u, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, u_input.b) >> ((50223u ^ u_input.b) % 32u), 3u)], _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 0u, 69392u), u_input.d)), 3u)]), _wgslsmith_f_op_f32(-681f + _wgslsmith_f_op_f32(select(-1049f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(699f * -1384f), _wgslsmith_f_op_f32(-455f + 445f)), all(vec2<bool>(false, var_2.b))))), ~_wgslsmith_div_vec3_i32(firstTrailingBit(u_input.a.wwy) & ~u_input.a.wxz, firstLeadingBit(~vec3<i32>(2147483647i, u_input.a.x, -5349i))), vec3<i32>(global0.a.x & _wgslsmith_clamp_i32(var_2.a.x, _wgslsmith_clamp_i32(0i, 0i, -2147483647i), u_input.a.x), firstTrailingBit(~(-1i)), _wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.a.xww), vec3<i32>(abs(var_3.x), ~var_1, 1i))));
}

