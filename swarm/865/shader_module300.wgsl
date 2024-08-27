struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 21>;

var<private> global2: f32 = 362f;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool) -> bool {
    global0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(395f - 617f) - -433f))))), arg_0 && global0.c, !(!global0.b));
    var var_0 = Struct_1(-274f, global0.b, select(true, !all(select(vec2<bool>(true, true), vec2<bool>(true, false), true)), arg_0));
    var var_1 = Struct_1(_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(var_0.a))))), global0.c, any(!(!vec2<bool>(global0.b, var_0.b))) | true);
    var var_2 = arg_0;
    var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-499f)))))) + var_0.a), !(!any(vec3<bool>(arg_0, true, arg_0)) | arg_0), ~(u_input.a.x | ~u_input.c.x) >= ~countOneBits(~8939u));
    return _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x ^ 34626u, _wgslsmith_add_u32(1u, u_input.a.x << (4294967295u % 32u))), ~u_input.a) > ((_wgslsmith_clamp_u32(~2466u, u_input.a.x, _wgslsmith_sub_u32(u_input.c.x, 9877u)) ^ ~_wgslsmith_sub_u32(32404u, 98u)) >> (countOneBits(u_input.a.x) % 32u));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec2<i32>) -> vec4<bool> {
    global0 = arg_0;
    let var_0 = ~firstTrailingBit(-(arg_3 & vec2<i32>(1i, arg_3.x))) >> (~(~vec2<u32>(abs(0u), ~61299u)) % vec2<u32>(32u));
    let var_1 = u_input.b.x;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -764f))) * global0.a)), func_3(true) && true, true);
    var var_3 = _wgslsmith_f_op_f32(sign(273f));
    return vec4<bool>(0u <= ~_wgslsmith_add_u32(select(u_input.a.x, arg_1.x, true), firstTrailingBit(4294967295u)), func_3(false), var_2.b, false);
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: i32) -> Struct_1 {
    let var_0 = ~(0i << ((u_input.a.x | _wgslsmith_mod_u32(u_input.a.x, 0u)) % 32u)) ^ -firstTrailingBit(max(_wgslsmith_dot_vec2_i32(u_input.b.wz, vec2<i32>(-29646i, arg_1)), -13744i));
    let var_1 = global0.a;
    global0 = Struct_1(global0.a, !(!all(select(vec4<bool>(global0.c, global0.c, false, global0.b), vec4<bool>(global0.c, false, true, global0.b), global0.b))), !(!all(func_2(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], vec3<u32>(11320u, u_input.a.x, 0u), Struct_1(-654f, false, true), vec2<i32>(-2147483647i, arg_0.x)))));
    var var_2 = ~vec3<u32>(5302u, _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a.x, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.c.x), vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x))), 47007u), _wgslsmith_add_u32(firstLeadingBit(0u), u_input.a.x) >> (u_input.c.x % 32u));
    var_2 = vec3<u32>(1u, 1u, var_2.x);
    return Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, global0.a)))))), true, any(func_2(Struct_1(566f, !global0.b, false), ~(~vec3<u32>(0u, 83697u, var_2.x)), global1[_wgslsmith_index_u32(var_2.x, 21u)], -_wgslsmith_div_vec2_i32(u_input.b.xw, u_input.b.zy)).wz));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(-u_input.b, _wgslsmith_sub_i32(~(-(~u_input.b.x)), -19182i), max(_wgslsmith_add_i32(u_input.b.x, _wgslsmith_div_i32(46618i, i32(-1i) * -4299i)), firstTrailingBit(u_input.b.x & u_input.b.x) & -15663i));
    global0 = func_1(vec4<i32>(u_input.b.x, _wgslsmith_mult_i32(u_input.b.x, ~_wgslsmith_mod_i32(-43656i, -1i)), select(5305i, reverseBits(3537i), global0.c), 0i), firstTrailingBit(max(0i, 2147483647i)), min(~reverseBits(u_input.b.x) >> (_wgslsmith_div_u32(~47776u, 4294967295u << (u_input.c.x % 32u)) % 32u), min(u_input.b.x, -abs(u_input.b.x))));
    var var_0 = func_1(u_input.b, u_input.b.x | abs(_wgslsmith_clamp_i32(1i, -u_input.b.x, u_input.b.x & 14665i)), 1i);
    var var_1 = func_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, ~min(4294967295u, u_input.c.x), (u_input.a.x | u_input.a.x) & 4294967295u, ~u_input.c.x), firstTrailingBit(vec4<u32>(0u, ~u_input.a.x, 4294967295u, 74432u))), 21u)], min(vec3<u32>(u_input.a.x, 37012u, 1u), vec3<u32>(_wgslsmith_sub_u32(~u_input.c.x, ~u_input.a.x), countOneBits(0u), 1u)), global1[_wgslsmith_index_u32(~(~abs(_wgslsmith_div_u32(74474u, 4294967295u))), 21u)], vec2<i32>(u_input.b.x, countOneBits(abs(u_input.b.x) & _wgslsmith_add_i32(1i, u_input.b.x))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-753f + global0.a), global0.a)))), func_2(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-111f * 1975f))), false, true), abs(abs(firstTrailingBit(vec3<u32>(84244u, 4294967295u, 1u)))), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.a.x) | vec3<u32>(64091u, 1u, 47116u), vec3<u32>(1u, u_input.c.x, u_input.a.x)), 21u)], vec2<i32>(u_input.b.x, u_input.b.x)).x, var_0.b);
    let var_2 = var_1.yx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(u_input.b.xyz, -vec3<i32>(_wgslsmith_mod_i32(-2147483647i, u_input.b.x), 1i, min(-15159i, 14182i)), vec3<i32>(u_input.b.x, u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, 9050i, 46724i), vec4<i32>(u_input.b.x, 1i, u_input.b.x, u_input.b.x))) & ~u_input.b.yxw));
}

