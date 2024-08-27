struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-15446i, 1i, 35574i);

var<private> global1: Struct_1;

var<private> global2: vec2<u32>;

var<private> global3: array<vec3<f32>, 14>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    var var_0 = Struct_1(334f, global1.d, global1.b, true);
    global0 = -(vec3<i32>(select(-global0.x, -global0.x, true), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, u_input.a.x, -14684i), u_input.a.wyz), 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 40699i), countOneBits(vec2<i32>(global0.x, u_input.a.x)))) ^ reverseBits(u_input.a.xyw));
    global3 = array<vec3<f32>, 14>();
    var var_1 = select(select(!vec2<bool>(!global1.c, global1.d), select(select(!vec2<bool>(true, var_0.b), select(vec2<bool>(true, false), vec2<bool>(true, false), global1.b), vec2<bool>(global1.d, global1.b)), !(!vec2<bool>(false, global1.b)), !select(vec2<bool>(false, false), vec2<bool>(global1.c, false), vec2<bool>(var_0.d, true))), select(vec2<bool>(true, true), vec2<bool>(global1.d, any(vec3<bool>(global1.c, true, true))), !(!vec2<bool>(var_0.c, false)))), !(!select(!vec2<bool>(var_0.d, global1.c), select(vec2<bool>(var_0.c, global1.c), vec2<bool>(global1.c, var_0.d), true), 54535u < global2.x)), false);
    var var_2 = Struct_1(-857f, global1.c, global1.a <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2004f))), var_0.d);
    return 1u == global2.x;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-global1.a), false, global1.d, !all(!vec4<bool>(global1.d, global1.b, true, global1.d)));
    global0 = u_input.a.yyw;
    var var_1 = select(select(vec4<bool>(var_0.b, var_0.c, func_3(), global1.d), vec4<bool>(any(select(vec3<bool>(false, global1.c, var_0.b), vec3<bool>(global1.d, false, false), vec3<bool>(global1.b, var_0.b, false))), var_0.d | !var_0.b, !global1.d, !global1.d), any(vec3<bool>(global2.x >= 0u, all(vec4<bool>(true, true, false, global1.c)), true))), !(!(!(!vec4<bool>(false, var_0.c, false, true)))), false);
    let var_2 = Struct_1(global1.a, global1.b, var_0.b, func_3());
    var var_3 = u_input.a.wx;
    return Struct_1(_wgslsmith_f_op_f32(trunc(-408f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.a)))) < 1038f, global1.b, all(var_1.yxz) == !(_wgslsmith_sub_u32(1u, global2.x) >= _wgslsmith_clamp_u32(0u, 4294967295u, 44020u)));
}

fn func_1() -> u32 {
    var var_0 = countOneBits(global2.x);
    let var_1 = func_2();
    let var_2 = !select(vec2<bool>(!global1.b, var_1.d), select(!(!vec2<bool>(true, var_1.c)), !select(vec2<bool>(var_1.c, global1.b), vec2<bool>(global1.d, true), false), (var_1.b & global1.b) || select(true, global1.b, global1.d)), vec2<bool>(any(!vec2<bool>(global1.d, global1.d)), global1.d));
    var var_3 = Struct_1(1356f, (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.a)) * _wgslsmith_f_op_f32(310f * var_1.a)) <= global1.a) & (global2.x < _wgslsmith_sub_u32(_wgslsmith_div_u32(global2.x, 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, 0u), vec2<u32>(global2.x, global2.x)))), true, _wgslsmith_mod_i32(u_input.a.x, -2147483647i) <= _wgslsmith_dot_vec3_i32(-u_input.a.yzx, _wgslsmith_clamp_vec3_i32(u_input.a.yxz, vec3<i32>(global0.x, global0.x, global0.x) ^ u_input.a.yxy, _wgslsmith_mult_vec3_i32(vec3<i32>(13298i, global0.x, u_input.a.x), vec3<i32>(global0.x, u_input.a.x, -4245i)))));
    var var_4 = var_3.a;
    return select(global2.x, _wgslsmith_add_u32(_wgslsmith_div_u32(~global2.x | 1u, global2.x), ~abs(global2.x)), var_3.c);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: i32) -> Struct_1 {
    global2 = arg_1.zy;
    let var_0 = (~(~arg_1.xx << (vec2<u32>(arg_1.x, 1u) % vec2<u32>(32u))) & arg_1.xx) & max(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 4294967295u, 51783u), ~vec3<u32>(22906u, global2.x, 0u)), 80358u), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.x << (4294967295u % 32u), ~2438u), vec2<u32>(global2.x, global2.x)));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, _wgslsmith_f_op_f32(1439f * 1605f), global1.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(max(global1.a, _wgslsmith_f_op_f32(-global1.a))), false))) + vec4<f32>(_wgslsmith_f_op_f32(exp2(func_2().a)), global1.a, 1182f, global1.a));
    let var_2 = 2147483647i;
    let var_3 = -1i;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec2<u32>(4294967295u, 0u);
    global3 = array<vec3<f32>, 14>();
    var var_0 = func_4(!vec3<bool>(global1.b, global1.b, any(vec4<bool>(true, false, false, false)) || true), ~_wgslsmith_mod_vec3_u32(vec3<u32>(global2.x, global2.x ^ global2.x, ~global2.x), vec3<u32>(func_1(), ~4294967295u, global2.x ^ 4294967295u)), u_input.a.x);
    var var_1 = func_4(select(select(!select(vec3<bool>(var_0.d, false, false), vec3<bool>(false, var_0.c, true), true), vec3<bool>(global1.c, var_0.d, global2.x == 4294967295u), global1.d), !vec3<bool>(true, !var_0.c, global1.b), !(!all(vec4<bool>(true, var_0.d, var_0.b, true)))), vec3<u32>(global2.x >> (~1u % 32u), 12540u, global2.x), ~select(~global0.x, ~(~(-1i)), func_2().d));
    var var_2 = _wgslsmith_add_vec2_i32(global0.zy, min(-(_wgslsmith_sub_vec2_i32(global0.zz, u_input.a.zx) ^ vec2<i32>(0i, -5151i)), ~firstLeadingBit(global0.xz)));
    let var_3 = (vec2<i32>(0i, -select(var_2.x, -20782i, false)) & select(~select(u_input.a.wx, vec2<i32>(-779i, -25871i), true), ~select(vec2<i32>(-66666i, global0.x), vec2<i32>(1i, 0i), vec2<bool>(true, global1.d)), true)) | reverseBits(global0.xz);
    let x = u_input.a;
    s_output = StorageBuffer(select(select(countOneBits(vec3<u32>(1u, global2.x, 38764u) & vec3<u32>(1u, 28554u, 0u)), vec3<u32>(0u, global2.x, 1u), var_0.c), vec3<u32>(27829u, _wgslsmith_div_u32(~global2.x, _wgslsmith_sub_u32(global2.x, 0u)), 26728u), !(!(true && var_1.c))), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_dot_vec3_i32(firstTrailingBit(abs(u_input.a.xxz)), u_input.a.xxz), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(509f, 795f)))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + 887f)), -437f)), _wgslsmith_sub_u32(4294967295u, _wgslsmith_clamp_u32(4294967295u, global2.x, ~_wgslsmith_mod_u32(4294967295u, global2.x))));
}

