struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<bool>,
    d: u32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: u32,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: f32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec2<f32> = vec2<f32>(-1000f, 481f);

var<private> global2: vec4<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    global0 = Struct_3(global0.a, Struct_2(Struct_1(_wgslsmith_f_op_f32(1f + global0.b.a.a), _wgslsmith_add_vec3_u32(~arg_0.b, vec3<u32>(37709u, global0.e, global0.d.a.b.x))), global0.d.b, select(global0.b.c, global0.d.c, !(global0.d.b > -1i)), 28521u, !global0.b.e), countOneBits(~global0.b.d), global0.d, u_input.b);
    var var_0 = (global2.x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * 1689f) * arg_0.a)) && true;
    var var_1 = firstLeadingBit(global0.d.a.b.yz);
    let var_2 = _wgslsmith_f_op_f32(exp2(global1.x)) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(global1.x - arg_0.a)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(784f, global2.x), _wgslsmith_f_op_f32(-global0.b.a.a))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(global2.yy - vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.d.a.a * global0.b.a.a), global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)))));
    return vec2<f32>(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(arg_0.a + 238f))), -1717f);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<u32>) -> f32 {
    global1 = _wgslsmith_f_op_vec2_f32(func_3(global0.d.a));
    global1 = _wgslsmith_f_op_vec2_f32(select(global2.xw, vec2<f32>(384f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + _wgslsmith_div_f32(850f, global2.x)) + global0.b.a.a)), true));
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 1432f) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(sign(-125f)))), global0.d.a.a));
    let var_0 = ~(vec2<i32>(-1i) * -global0.a.xy);
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 27615i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(var_0.x, 2147483647i, -2147483647i), -2147483647i)) & vec3<i32>(global0.d.b, firstLeadingBit(1i), ~max(1i, global0.a.x)), vec3<i32>(_wgslsmith_div_i32(80359i, (-22528i >> (u_input.a.x % 32u)) << (~global0.b.d % 32u)), _wgslsmith_sub_i32(2147483647i, _wgslsmith_div_i32(~1i, -45228i)), global0.b.b));
    return global1.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec4<u32>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2123f) * -548f) - _wgslsmith_f_op_f32(f32(-1f) * -459f)), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(exp2(global2.yy)), ~global0.d.a.b.xx | ~vec2<u32>(4294967295u, arg_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - -252f)), global1.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.b.a.a, -623f, 750f, global2.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.a.a, 1000f, 739f, global0.b.a.a)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-618f, global0.d.a.a, global0.b.a.a, global0.d.a.a) + vec4<f32>(arg_1.d.a.a, global2.x, 1613f, 1899f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.a.a, -961f, global0.d.a.a, global0.b.a.a))))));
    global2 = vec4<f32>(_wgslsmith_f_op_f32(step(global0.b.a.a, _wgslsmith_f_op_f32(f32(-1f) * -467f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-805f * arg_1.d.a.a) * 481f)))), global1.x, arg_1.b.a.a);
    var var_1 = global0.d;
    var_1 = arg_1.b;
    var var_2 = _wgslsmith_clamp_vec3_i32(arg_1.a, global0.a, -vec3<i32>(~(-arg_1.a.x), countOneBits(-2147483647i), global0.d.b));
    return vec3<u32>(1u, 10319u << (global0.e % 32u), firstTrailingBit(var_1.d) ^ arg_0.x) | abs(vec3<u32>(~34925u, 1u, ~arg_0.x) ^ firstLeadingBit(var_1.a.b ^ vec3<u32>(arg_2.x, 52474u, arg_1.b.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<f32>(-119f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2410f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-170f))))));
    var var_0 = func_1(vec3<u32>(u_input.a.x, ~abs(_wgslsmith_mod_u32(1u, 85940u)), u_input.b), Struct_3(global0.a, Struct_2(global0.b.a, ~global0.d.b, global0.b.e, 31005u, select(select(global0.d.c, vec4<bool>(global0.d.c.x, true, false, global0.b.e.x), global0.d.e.x), vec4<bool>(global0.b.e.x, false, false, true), !global0.d.e.x)), abs(~(~64987u)), global0.b, 24240u), ~(~u_input.a ^ vec4<u32>(19208u, ~0u, _wgslsmith_div_u32(70643u, u_input.b), firstTrailingBit(1u))));
    let var_1 = global0.d.c.x;
    global2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(global0.d.a.a + global2.x), _wgslsmith_f_op_f32(abs(-616f)), _wgslsmith_f_op_f32(sign(884f)), global1.x)))))));
    var_0 = ~vec3<u32>(min(0u, _wgslsmith_add_u32(abs(0u), 70392u)), 4294967295u >> (select(4294967295u, ~var_0.x, true) % 32u), 1347u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~global0.d.b, 14147i, -1376i, -1i), _wgslsmith_f_op_vec3_f32(-global2.zwy), _wgslsmith_f_op_f32(global0.d.a.a - 980f), firstLeadingBit(-32246i), _wgslsmith_clamp_vec2_u32(func_1(global0.b.a.b & vec3<u32>(0u, global0.c, 0u), Struct_3(vec3<i32>(0i, 3354i, -25654i), global0.b, 9599u, Struct_2(global0.b.a, global0.a.x, vec4<bool>(global0.d.e.x, true, false, false), 1u, global0.b.e), 13622u), _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, 33244u, 1u))).yy, abs(global0.b.a.b.xz), ~global0.b.a.b.yz) & _wgslsmith_sub_vec2_u32(select(vec2<u32>(var_0.x, var_0.x), vec2<u32>(var_0.x, var_0.x), vec2<bool>(false, global0.b.c.x)) | (global0.b.a.b.xy | global0.d.a.b.zx), vec2<u32>(1u, ~39769u)));
}

