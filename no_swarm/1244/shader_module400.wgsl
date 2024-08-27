struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec2<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: vec3<f32>, arg_3: u32) -> u32 {
    let var_0 = 0u;
    var var_1 = 1i;
    var var_2 = Struct_3(u_input.b);
    let var_3 = _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(abs(arg_1), -5081i, -arg_1, arg_1)), vec4<i32>(-1i) * -vec4<i32>(-2147483647i, _wgslsmith_mult_i32(var_2.a.x, 1i), 10916i, countOneBits(var_2.a.x)));
    var_2 = Struct_3(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.wz, var_2.a), -var_3));
    return var_0;
}

fn func_2() -> f32 {
    var var_0 = ~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(func_3(-305f, 38426i, vec3<f32>(-994f, -678f, -195f), 4294967295u), 1u), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(5436u, 14209u, 7350u, 4294967295u)), ~vec4<u32>(0u, 292u, 13180u, 1u))), ~1621u, 20712u);
    var var_1 = 1105f;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(577f - 1229f), _wgslsmith_f_op_f32(abs(-454f)), -1073f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-341f, 1000f, -136f, -503f)))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(-725f, 741f), _wgslsmith_f_op_f32(f32(-1f) * -359f), -605f, -394f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1183f, -178f, 1000f, -702f), vec4<f32>(-994f, 2152f, 179f, -1000f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-265f, -2279f, 933f, -680f) * vec4<f32>(891f, 739f, -359f, 1884f)))))));
    var var_3 = Struct_1(var_2.wy, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a.x, _wgslsmith_div_i32(u_input.e, 1i)), vec2<i32>(~u_input.b.x, u_input.c.x) | ~vec2<i32>(41180i, -2147483647i)), ~vec2<u32>(1u, 1u), false);
    var var_4 = ~firstLeadingBit(u_input.a);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1562f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_2.x, _wgslsmith_f_op_f32(round(1008f)))), _wgslsmith_f_op_f32(f32(-1f) * -505f))), !(true && var_3.d))), 382f);
}

fn func_1() -> Struct_3 {
    var var_0 = 1u;
    let var_1 = select(select(vec3<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false)), all(select(vec2<bool>(true, false), vec2<bool>(true, false), false)), _wgslsmith_f_op_f32(func_2()) < _wgslsmith_f_op_f32(min(-557f, 312f))), select(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true), vec3<bool>(u_input.c.x <= abs(u_input.a.x), true, select(true, all(vec3<bool>(false, false, true)), any(vec4<bool>(false, false, true, false))))), vec3<bool>(true, true, true), false);
    let var_2 = select(select(!vec4<bool>(!var_1.x, false, all(vec4<bool>(var_1.x, var_1.x, var_1.x, false)), true), vec4<bool>(true, true, select(var_1.x | false, var_1.x, var_1.x), true), true), vec4<bool>((u_input.e | 2147483647i) <= -62110i, true, var_1.x, true), !(!vec4<bool>(true, false | var_1.x, true, true)));
    var_0 = _wgslsmith_dot_vec3_u32(~vec3<u32>(reverseBits(firstTrailingBit(0u)), countOneBits(~10558u), countOneBits(~4294967295u)), firstTrailingBit(min(vec3<u32>(abs(1u), 1u, 1u), ~vec3<u32>(1u, 58351u, 8919u))));
    var_0 = ~120995u;
    return Struct_3(vec2<i32>(min(countOneBits(abs(u_input.d)), 0i), abs(-1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_1();
    var_0 = func_1();
    var_0 = func_1();
    var_0 = Struct_3(~abs(u_input.c));
    var var_1 = Struct_3(vec2<i32>(var_0.a.x, _wgslsmith_clamp_i32(i32(-1i) * -10109i, 385i, _wgslsmith_sub_i32(u_input.a.x, u_input.e))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(abs(1u), 44986u, 1u, ~4294967295u), ~vec4<u32>(0u, 83608u, 0u, 0u) | _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 75556u, 33653u), vec4<u32>(4294967295u, 6548u, 19150u, 1u), vec4<u32>(4294967295u, 0u, 74873u, 4294967295u))), abs(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), firstTrailingBit(vec4<u32>(38135u, 91582u, 0u, 15783u)))), vec4<u32>(~25874u, ~(~66781u), ~816u, 1u)));
}

