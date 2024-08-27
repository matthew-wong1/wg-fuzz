struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 42339u, 47820u, 972u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    var var_0 = abs(global0.b) >= _wgslsmith_sub_i32(u_input.a.x, 11432i);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x - global0.a.x) + -484f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.x - global0.a.x), global0.a.x)) - global0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-442f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(920f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0.a.x)), -202f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.x, -277f))))));
    var_0 = false;
    var var_2 = all(select(select(vec4<bool>(false, all(vec2<bool>(true, true)), true, all(vec3<bool>(true, false, false))), vec4<bool>(global0.a.x != -1773f, true, true, true), vec4<bool>(false, true, 0i >= global0.b, true)), select(vec4<bool>(global1.x >= global1.x, any(vec2<bool>(false, true)), false, any(vec3<bool>(false, true, true))), vec4<bool>(true, true, true, all(vec4<bool>(true, true, false, false))), vec4<bool>(all(vec4<bool>(true, true, true, true)), true, false, true)), !(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), true))));
    var_0 = false;
    return max(u_input.a.x, 11967i) & abs(-global0.b & u_input.a.x);
}

fn func_2() -> Struct_1 {
    let var_0 = ~(-func_3());
    let var_1 = countOneBits(countOneBits(~_wgslsmith_mod_u32(1u, global1.x))) << (global1.x % 32u);
    let var_2 = true;
    var var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(select(global0.a.x, _wgslsmith_f_op_f32(select(global0.a.x, 1336f, select(false, false, false))), any(select(vec3<bool>(var_2, true, var_2), vec3<bool>(var_2, var_2, var_2), var_2)))), global0.a.x, global0.a.x, -506f), -global0.c.x ^ u_input.a.x, vec4<i32>(-14810i >> (firstTrailingBit(var_1) % 32u), -reverseBits(var_0), global0.c.x, u_input.a.x) >> (~vec4<u32>(~var_1, var_1, ~0u, global1.x) % vec4<u32>(32u)));
    var var_4 = true;
    return Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a), _wgslsmith_f_op_vec4_f32(min(global0.a, vec4<f32>(-1000f, var_3.a.x, -562f, var_3.a.x)))), global0.c.x, var_3.c);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> u32 {
    var var_0 = vec2<i32>(678i, max(arg_1.b, ~u_input.a.x & select(u_input.a.x, arg_1.c.x, false))) & -reverseBits(vec2<i32>(-47882i, 50830i));
    let var_1 = _wgslsmith_dot_vec4_u32(~vec4<u32>(~15499u, global1.x << (global1.x % 32u), _wgslsmith_div_u32(4294967295u, global1.x), max(11221u, 0u)) ^ (select(max(vec4<u32>(14567u, global1.x, 0u, global1.x), vec4<u32>(global1.x, 1u, 4294967295u, global1.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 21142u, global1.x, 1u), vec4<u32>(global1.x, global1.x, global1.x, 32888u)), vec4<bool>(true, true, false, false)) | vec4<u32>(global1.x, ~4294967295u, 4294967295u, 0u)), ~select(vec4<u32>(global1.x, global1.x, ~global1.x, ~0u), vec4<u32>(global1.x >> (global1.x % 32u), ~global1.x, max(30586u, 1813u), global1.x), vec4<bool>(select(true, true, true), true, true, all(vec4<bool>(true, true, false, true)))));
    let var_2 = Struct_1(arg_3.a, 2147483647i, ~firstLeadingBit(select(-global0.c, global0.c, true)));
    var_0 = global0.c.yy;
    var var_3 = Struct_1(arg_1.a, countOneBits(func_2().c.x), vec4<i32>(11109i, -firstLeadingBit(var_0.x), min(var_2.c.x, abs(-30655i)) >> (16984u % 32u), i32(-1i) * -41796i));
    return ~(~_wgslsmith_mult_u32(1u, reverseBits(~var_1)));
}

fn func_1() -> Struct_1 {
    global1 = vec4<u32>(32729u, 47507u, abs(func_4(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global0.a.wy * vec2<f32>(-184f, 2473f)))), func_2(), _wgslsmith_f_op_f32(-global0.a.x), Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(260f, 937f, global0.a.x, global0.a.x))), -1067i, -global0.c))), 33584u);
    var var_0 = global0.a.x;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(global0.a)) * global0.a))), i32(-1i) * -15776i, global0.c);
    var var_2 = func_2();
    var_1 = func_2();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = var_0;
    global1 = _wgslsmith_add_vec4_u32((firstTrailingBit(vec4<u32>(31189u, global1.x, 0u, 31134u) | vec4<u32>(global1.x, global1.x, global1.x, 4294967295u)) << (vec4<u32>(firstTrailingBit(41668u), _wgslsmith_mult_u32(global1.x, global1.x), ~4294967295u, 4294967295u) % vec4<u32>(32u))) ^ vec4<u32>(~(4294967295u ^ global1.x), _wgslsmith_clamp_u32(global1.x, abs(global1.x), global1.x), ~(~global1.x), ~25206u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(global1.x, 1u, 4294967295u, 0u), vec4<u32>(57363u, 30181u, 34660u, 1u)));
    var var_2 = var_1.c.zz;
    global1 = min(vec4<u32>(0u, select(countOneBits(select(global1.x, 0u, true)), 4294967295u, all(vec2<bool>(true, false))), firstLeadingBit((global1.x | global1.x) << ((global1.x << (global1.x % 32u)) % 32u)), 1u), vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(28729u, 4294967295u, 1u), ~vec3<u32>(4294967295u, global1.x, global1.x)), _wgslsmith_add_u32(1u, ~countOneBits(global1.x)), global1.x, global1.x));
    var var_3 = vec3<i32>(var_1.b, global0.b, var_0.b);
    var_1 = func_2();
    var_2 = global0.c.yy;
    let x = u_input.a;
    s_output = StorageBuffer(1f, global1.x, reverseBits(~_wgslsmith_clamp_vec4_u32(vec4<u32>(3379u, global1.x, 16836u, global1.x), countOneBits(vec4<u32>(1u, 0u, 0u, 0u)), ~vec4<u32>(28464u, 3006u, global1.x, 4294967295u))));
}

