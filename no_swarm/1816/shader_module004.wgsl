struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_4;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<bool> {
    var var_0 = 42891u >= _wgslsmith_dot_vec2_u32(vec2<u32>(~(~42364u), _wgslsmith_add_u32(~1u, abs(0u))), firstLeadingBit(countOneBits(vec2<u32>(1u, 1u))));
    let var_1 = ~(~4294967295u) | _wgslsmith_clamp_u32(0u, ~(~(47681u >> (1u % 32u))), _wgslsmith_dot_vec3_u32(vec3<u32>(select(1u, 35414u, false), _wgslsmith_dot_vec2_u32(vec2<u32>(55205u, 44032u), vec2<u32>(33457u, 0u)), ~34286u), vec3<u32>(max(23374u, 38058u), ~0u, reverseBits(1u))));
    let var_2 = 0u;
    global1 = Struct_4(global1.a);
    let var_3 = Struct_3(select(select(global1.a.xw, select(vec2<bool>(true, true), vec2<bool>(global1.a.x, global1.a.x), global1.a.yz), select(!vec2<bool>(global1.a.x, false), global1.a.xy, global1.a.x)), select(select(vec2<bool>(global1.a.x, true), global1.a.zz, global1.a.x), select(select(global1.a.wx, global1.a.zy, global1.a.xw), !vec2<bool>(global1.a.x, true), true), all(vec2<bool>(true, global1.a.x))), !select(!vec2<bool>(global1.a.x, global1.a.x), !global1.a.xy, global1.a.x)), 0u);
    return vec2<bool>(true, true);
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_1(func_3());
    var var_1 = var_0.a;
    var var_2 = vec4<i32>(_wgslsmith_div_i32(firstTrailingBit(reverseBits(4980i)), u_input.a), _wgslsmith_sub_i32(_wgslsmith_mod_i32(reverseBits(u_input.b), u_input.a) << (~(~36000u) % 32u), u_input.a), (i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 14531i, u_input.a, u_input.a), vec4<i32>(-1i, u_input.a, 40278i, 2147483647i))) | (~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -1i, u_input.b), vec3<i32>(-41411i, 2147483647i, -35111i)) & (_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -1989i, u_input.a), vec3<i32>(-1i, u_input.a, -2147483647i)) >> (30208u % 32u))), countOneBits(0i));
    var_0 = Struct_1(var_0.a);
    var_1 = select(select(!select(global1.a.zy, !global1.a.yx, var_0.a.x), global1.a.yx, vec2<bool>(true, true)), var_0.a, global1.a.x);
    return Struct_4(select(select(select(global1.a, vec4<bool>(var_0.a.x, true, var_1.x, var_0.a.x), vec4<bool>(true, false, var_1.x, var_0.a.x)), select(!vec4<bool>(var_0.a.x, true, global1.a.x, false), global1.a, global1.a.x), func_3().x), select(global1.a, global1.a, select(global1.a, !vec4<bool>(false, true, true, var_0.a.x), vec4<bool>(var_0.a.x, var_1.x, true, true))), !(true || var_0.a.x)));
}

fn func_1() -> vec4<i32> {
    let var_0 = func_2();
    let var_1 = func_2();
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2352f, global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1711f - -627f) * _wgslsmith_f_op_f32(step(global0.x, 689f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0.x, global0.x), -549f, true)))), global0.x) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(2004f, global0.x, global0.x))), vec3<f32>(-1000f, 1540f, -894f), select(var_0.a.zzx, var_1.a.wyw, var_0.a.wyy))))));
    let var_2 = var_1.a.yzz;
    var var_3 = Struct_3(vec2<bool>(!any(select(var_2, vec3<bool>(false, false, var_2.x), var_0.a.xzw)), false), ~1u);
    return -abs(vec4<i32>((0i & u_input.b) >> (var_3.b % 32u), u_input.b, -8226i, countOneBits(~u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), -_wgslsmith_mod_vec4_i32(func_1(), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 36426i, 2147483647i), vec3<i32>(13602i, u_input.b, u_input.b)), ~0i, _wgslsmith_add_i32(60033i, 4481i), -1i)), 1u);
}

