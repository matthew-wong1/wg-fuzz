struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26> = array<u32, 26>(23256u, 27695u, 28068u, 29123u, 73012u, 6069u, 1u, 28973u, 88201u, 57262u, 1u, 91965u, 4294967295u, 0u, 4294967295u, 62513u, 52068u, 2724u, 4294967295u, 4152u, 1u, 18621u, 0u, 42855u, 0u, 0u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    global0 = array<u32, 26>();
    var var_0 = arg_0;
    var var_1 = select(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_div_i32(0i, _wgslsmith_add_i32(arg_0.b.x, u_input.d.x)), _wgslsmith_mult_i32(u_input.b, 14788i)), _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.d, _wgslsmith_add_vec2_i32(arg_0.b.yx, u_input.d)), arg_0.b.xw, min(vec2<i32>(-2147483647i, var_0.b.x), vec2<i32>(var_0.b.x, arg_0.b.x) ^ var_0.b.wz))), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(arg_0.b.yz, ~vec2<i32>(u_input.b, 1i)), _wgslsmith_mod_vec2_i32(arg_0.b.zx, u_input.d)), !arg_1.xz);
    global0 = array<u32, 26>();
    global0 = array<u32, 26>();
    return Struct_1(var_0.a, _wgslsmith_mod_vec4_i32(vec4<i32>(abs(~0i), -28473i, max(var_0.b.x, i32(-1i) * -24058i), var_1.x), ~(~(vec4<i32>(58227i, -30342i, 0i, var_0.b.x) ^ arg_0.b))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f - 347f), _wgslsmith_f_op_f32(min(240f, -1000f))))))));
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(func_2(Struct_1(false, vec4<i32>(56371i, u_input.d.x, 2147483647i, u_input.b)), vec4<bool>(false, false, false, true)), firstTrailingBit(arg_0.x), Struct_1(false, vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, -25876i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(816f - 200f))), -981f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1888f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(307f * 901f))))), true));
    let var_1 = _wgslsmith_div_f32(729f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-var_0)) * var_0));
    let var_2 = vec3<bool>(func_2(func_2(Struct_1(any(vec4<bool>(true, true, true, true)), vec4<i32>(u_input.b, 0i, u_input.d.x, u_input.b)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), true), true), vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true))).a, true, false);
    var var_3 = select(!select(!(!var_2), !select(var_2, vec3<bool>(true, var_2.x, true), false), false), !select(vec3<bool>(true, any(var_2), false), var_2, var_2.x), var_2.x);
    var var_4 = _wgslsmith_mult_i32(i32(-1i) * -1755i, ~0i);
    return func_2(Struct_1(true, vec4<i32>(1i, _wgslsmith_clamp_i32(u_input.b & 64053i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, 27847i), vec3<i32>(u_input.d.x, 45035i, 1i)), 1i), u_input.b, ~(-3190i))), vec4<bool>(!(global0[_wgslsmith_index_u32(min(4294967295u, arg_0.x), 26u)] <= 40224u), !var_3.x, true, all(vec3<bool>(!var_2.x, true, any(vec4<bool>(var_3.x, var_2.x, true, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~abs(u_input.a.wz));
    var var_1 = var_0;
    var var_2 = Struct_1(var_0.a, ~(var_1.b ^ vec4<i32>(1i, 1i, u_input.b, var_1.b.x << (global0[_wgslsmith_index_u32(43626u, 26u)] % 32u))));
    var var_3 = vec3<u32>(firstLeadingBit(0u), countOneBits(1u | ~u_input.a.x) << (u_input.c % 32u), global0[_wgslsmith_index_u32(abs(1u), 26u)]);
    let var_4 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~global0[_wgslsmith_index_u32(0u, 26u)], 1u, 1u), ~(~u_input.a.ywx)), ~59643u), 40510u);
}

