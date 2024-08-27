struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec3<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0u, 1000f, 726f, vec3<u32>(0u, 4294967295u, 0u));

var<private> global1: Struct_2;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool) -> vec4<bool> {
    let var_0 = select(_wgslsmith_sub_vec3_u32(~vec3<u32>(40504u ^ global1.a.d.x, _wgslsmith_add_u32(u_input.b, 18242u), 0u << (global1.a.d.x % 32u)), ~firstLeadingBit(countOneBits(vec3<u32>(u_input.b, global0.a, 4294967295u)))), _wgslsmith_clamp_vec3_u32(abs(~select(vec3<u32>(0u, 0u, global0.d.x), global1.a.d, vec3<bool>(false, arg_0, true))), ~(~(~global0.d)), ~(firstTrailingBit(global0.d) & global0.d)), !arg_0);
    let var_1 = -select(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i), _wgslsmith_mod_vec4_i32(vec4<i32>(-12002i, 0i, 2147483647i, 1i), vec4<i32>(u_input.a.x, -1i, u_input.a.x, 2147483647i))), -_wgslsmith_dot_vec4_i32(vec4<i32>(16595i, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a), !(u_input.a.x < 4844i)) | u_input.a.x;
    let var_2 = 418f;
    let var_3 = Struct_3(vec4<bool>((_wgslsmith_mult_i32(1i, 2147483647i) | (0i ^ u_input.a.x)) >= 1i, false, true, arg_0));
    var var_4 = ~vec4<u32>(_wgslsmith_mod_u32(max(var_0.x, 1u), _wgslsmith_div_u32(global1.a.a >> (global0.a % 32u), _wgslsmith_sub_u32(u_input.b, var_0.x))), _wgslsmith_mult_u32(~(~u_input.b), global1.a.d.x), ~global0.a, _wgslsmith_dot_vec3_u32(var_0 >> ((global1.a.d | global0.d) % vec3<u32>(32u)), reverseBits(select(global0.d, vec3<u32>(global0.a, global0.a, global0.a), arg_0))));
    return var_3.a;
}

fn func_2(arg_0: f32, arg_1: bool) -> vec4<bool> {
    var var_0 = u_input.a.zw;
    global1 = Struct_2(Struct_1(1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.a.b)) + _wgslsmith_f_op_f32(ceil(-570f)))), 1f, vec3<u32>(~select(1u, global1.a.a, arg_1), 66419u, 22920u)));
    global0 = Struct_1(21502u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), -286f), _wgslsmith_f_op_f32(-239f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + 249f) - _wgslsmith_f_op_f32(f32(-1f) * -200f))))), global1.a.d);
    global0 = global1.a;
    let var_1 = vec3<i32>(var_0.x << (global0.d.x % 32u), 2147483647i << (global1.a.a % 32u), 1i);
    return func_3(arg_1);
}

fn func_4(arg_0: f32, arg_1: Struct_3) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(max(global1.a.b, 342f));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.b + -166f), arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.c))), _wgslsmith_f_op_f32(1309f * -246f), var_0);
    var var_2 = !arg_1.a.wz;
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1032f * -1478f), _wgslsmith_f_op_f32(f32(-1f) * -545f), !var_2.x)) - global0.b), _wgslsmith_f_op_f32(round(global1.a.b))))));
    var var_4 = arg_1;
    return (~(~max(-13061i, u_input.a.x)) & min(firstTrailingBit(3717i), -1i)) << ((_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0.a, 1u, 34661u), ~vec4<u32>(u_input.b, u_input.b, 89583u, global1.a.a)), _wgslsmith_add_u32(global0.a, _wgslsmith_mult_u32(global1.a.a, 1u))) << (max(1u, 2573u) % 32u)) % 32u);
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = func_4(global1.a.c, Struct_3(!func_2(global0.b, true)));
    let var_1 = min(global0.a, 4294967295u | u_input.b);
    global1 = Struct_2(global1.a);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-155f, global0.b) * _wgslsmith_f_op_f32(-209f - 1936f)))), arg_0)), _wgslsmith_f_op_f32(-global0.b), global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-551f, -845f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(355f)), _wgslsmith_f_op_f32(-arg_0))))));
    global1 = Struct_2(global1.a);
    return Struct_1(0u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_2.x)), _wgslsmith_f_op_f32(trunc(-540f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(337f)))), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(global0.d, countOneBits(vec3<u32>(global0.a, var_1, 3831u)), (vec3<u32>(1u, 1u, 1u) & global0.d) >> (~global1.a.d % vec3<u32>(32u))), vec3<u32>(_wgslsmith_add_u32(~global0.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, global1.a.d.x), global1.a.d.zy)), 49282u, _wgslsmith_div_u32(42735u, max(0u, 4294967295u)))));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec3<bool>) -> Struct_3 {
    var var_0 = Struct_3(vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1846f)) >= _wgslsmith_f_op_f32(-global0.c), !(_wgslsmith_f_op_f32(f32(-1f) * -139f) > func_1(1606f).c), u_input.a.x == u_input.a.x, false));
    let var_1 = true;
    var_0 = Struct_3(func_3(true));
    let var_2 = !(!(!vec4<bool>(true, !arg_1.x, all(var_0.a.yxy), true)));
    global0 = func_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1354f))));
    return Struct_3(arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a;
    var var_1 = var_0.d.zx;
    var_0 = global1.a;
    global0 = Struct_1(82360u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_0.b)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -188f), global0.c))), var_0.b, global0.d);
    var var_2 = func_5(Struct_2(func_1(_wgslsmith_f_op_f32(-1974f + _wgslsmith_f_op_f32(f32(-1f) * -454f)))), vec4<bool>(any(select(func_2(var_0.b, true).zyw, select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(false, true, true))), select(true, all(vec2<bool>(false, false)), !(global0.a >= u_input.b)), !(true & all(vec4<bool>(false, true, false, false))), true), vec3<bool>(true, false, !all(vec2<bool>(true, true))));
    let var_3 = vec3<bool>(select(false, false, all(vec2<bool>(var_2.a.x, var_2.a.x))), func_3(true).x, false);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.b) - _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(133f, global1.a.b))));
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(22382u & (global1.a.a >> ((80009u & global0.a) % 32u)), -641f, 1785f, ~(~(select(u_input.a.yww, u_input.a.zwy, var_3) ^ (u_input.a.wxz << (vec3<u32>(var_1.x, 60419u, var_0.d.x) % vec3<u32>(32u))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-932f, 371f, var_0.c, 1144f) - vec4<f32>(global1.a.b, var_0.b, var_0.b, global0.c))))))));
}

