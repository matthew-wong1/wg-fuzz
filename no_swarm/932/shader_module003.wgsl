struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec2<bool>,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 5971i;

var<private> global1: array<Struct_1, 3>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<i32> {
    var var_0 = select(!vec4<bool>(all(vec3<bool>(false, false, true)), all(vec2<bool>(true, true)), true, true), !(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), true), vec4<bool>(false, true, true, true), false)), !any(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), true))));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-217f - 639f)))), _wgslsmith_f_op_f32(f32(-1f) * -466f), true))));
    global1 = array<Struct_1, 3>();
    var_0 = vec4<bool>(any(select(vec3<bool>(var_0.x, true, 4294967295u == u_input.a), var_0.wxw, true)), _wgslsmith_sub_u32(~u_input.a, firstTrailingBit(1u)) >= ~firstTrailingBit(u_input.b.x), true, _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -403f)))) > _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(-195f))), -849f)));
    var var_2 = countOneBits(u_input.d.zz ^ (vec2<i32>(i32(-1i) * -2147483647i, 34038i) ^ vec2<i32>(_wgslsmith_mult_i32(u_input.d.x, 12876i), -80976i)));
    return vec4<i32>(reverseBits(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(~u_input.d.wx, -u_input.d.xy, firstLeadingBit(u_input.d.ww)), u_input.d.zz)), 2147483647i, -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.d.x, u_input.d.x, 22780i, u_input.d.x), min(-vec4<i32>(u_input.d.x, u_input.d.x, -40752i, -16590i), vec4<i32>(i32(-1i) * -2333i, max(u_input.d.x, var_2.x), -var_2.x, abs(var_2.x)))));
}

fn func_2() -> i32 {
    global0 = -u_input.d.x;
    global1 = array<Struct_1, 3>();
    var var_0 = global1[_wgslsmith_index_u32(15841u, 3u)];
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, abs(_wgslsmith_mod_u32(~(~0u), 20432u))), 3u)];
    var var_2 = Struct_1(func_3(), _wgslsmith_f_op_vec4_f32(sign(var_0.b)), !var_0.e.yz, any(!vec4<bool>(all(vec2<bool>(var_1.e.x, var_1.e.x)), any(vec4<bool>(var_1.c.x, true, false, var_1.c.x)), !var_1.c.x, any(vec2<bool>(var_1.e.x, true)))), var_1.e);
    return 1i;
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = ~(~(~_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.e, arg_0.x, 0u, 1u), ~vec4<u32>(u_input.a, u_input.a, arg_0.x, 1u))));
    let var_1 = Struct_1(vec4<i32>(func_2(), ~(-(~u_input.d.x)), u_input.d.x >> (abs(1u) % 32u), reverseBits(-_wgslsmith_mult_i32(-1i, u_input.d.x))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f))), 183f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1255f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, 1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -1351f))), -510f), !select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), !any(vec2<bool>(false, true))), all(vec2<bool>(true, true)), vec3<bool>(any(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false)), any(!select(vec2<bool>(true, true), vec2<bool>(false, true), false)), _wgslsmith_dot_vec3_i32(u_input.d.xxw, abs(vec3<i32>(u_input.d.x, -13387i, u_input.d.x))) > reverseBits(-14978i)));
    var var_2 = global1[_wgslsmith_index_u32(max(arg_0.x, var_0.x ^ firstLeadingBit(17887u)), 3u)];
    var var_3 = false;
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.b.x)) + _wgslsmith_f_op_f32(-1f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-175f + _wgslsmith_f_op_f32(f32(-1f) * -352f)), _wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1.b.x, var_2.b.x), -676f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.b.x + _wgslsmith_f_op_f32(-1281f * var_2.b.x)))));
    return Struct_1(firstLeadingBit(vec4<i32>(var_2.a.x, min(-1i, 14203i), -2147483647i, func_3().x) >> ((vec4<u32>(29378u, 25733u, arg_0.x, u_input.c.x) >> (_wgslsmith_sub_vec4_u32(var_0, vec4<u32>(arg_0.x, u_input.a, 0u, 943u)) % vec4<u32>(32u))) % vec4<u32>(32u))), var_2.b, !var_2.e.yx, all(select(!vec4<bool>(var_2.e.x, var_1.c.x, true, var_1.d), vec4<bool>(any(vec2<bool>(var_2.d, var_2.e.x)), false, true, var_2.c.x), select(select(vec4<bool>(var_2.e.x, false, true, true), vec4<bool>(true, var_1.e.x, true, var_2.c.x), vec4<bool>(true, false, var_2.d, var_2.e.x)), !vec4<bool>(var_2.d, var_1.e.x, false, true), vec4<bool>(true, true, var_2.e.x, false)))), select(!var_1.e, vec3<bool>(any(select(vec4<bool>(var_2.e.x, var_2.e.x, var_2.d, false), vec4<bool>(var_2.c.x, var_2.e.x, false, var_1.c.x), false)), select(true, var_2.e.x, !var_2.c.x), true), vec3<bool>(!select(false, false, var_1.e.x), !var_1.e.x, true)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> i32 {
    return max(countOneBits(arg_0.a.x), firstTrailingBit(func_3().x) ^ 7844i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d.x;
    global1 = array<Struct_1, 3>();
    var var_1 = any(vec4<bool>(any(vec2<bool>(u_input.a > u_input.a, true)), !all(vec4<bool>(true, true, true, true)), true, any(vec2<bool>(true, true))));
    global0 = min(u_input.d.x, -func_4(func_1(u_input.c), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x, u_input.c.x), 3u)], u_input.d.x));
    let var_2 = vec4<u32>(_wgslsmith_clamp_u32(abs(0u), _wgslsmith_div_u32(u_input.a, 4294967295u), _wgslsmith_mult_u32(~(~u_input.e), ~u_input.e)), _wgslsmith_add_u32(u_input.b.x, _wgslsmith_add_u32(~u_input.c.x, u_input.a) ^ u_input.c.x), u_input.e, abs(4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(~select(var_2.xzx ^ var_2.wxy, _wgslsmith_add_vec3_u32(var_2.zyy, vec3<u32>(1u, 106728u, 0u)) | select(var_2.xzw, var_2.zxx, vec3<bool>(true, true, true)), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1210f, -1580f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1047f, -1000f) - vec2<f32>(340f, 214f)))))));
}

