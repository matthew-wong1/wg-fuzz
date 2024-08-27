struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec2<bool> {
    global0 = array<i32, 15>();
    var var_0 = !(!vec4<bool>(false, all(vec3<bool>(true, true, true)), true, any(vec2<bool>(true, true))));
    var var_1 = max(vec4<u32>(~_wgslsmith_clamp_u32(1u, 1u, 74523u), _wgslsmith_add_u32(~53298u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 53479u, 0u), vec3<u32>(32159u, 7851u, 0u))), ~1u, 1u), min(firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u))) << (firstTrailingBit(firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(18669u, 37675u, 0u, 50897u), vec4<u32>(32261u, 97732u, 1u, 7042u))) ^ vec4<u32>(_wgslsmith_mult_u32(43132u, 41737u), 52102u, abs(95172u), 1u)) % vec4<u32>(32u));
    let var_2 = Struct_1(any(select(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), true), vec4<bool>(true, true, var_0.x, all(var_0.zxy)), _wgslsmith_f_op_f32(step(1087f, -434f)) >= _wgslsmith_div_f32(1122f, 658f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-623f - -146f))))), !vec4<bool>(max(-2147483647i, global0[_wgslsmith_index_u32(42947u, 15u)]) == countOneBits(u_input.a), any(var_0.xzy), true && var_0.x, _wgslsmith_clamp_i32(0i, global0[_wgslsmith_index_u32(1u, 15u)], 1i) >= (8087i << (0u % 32u))), (firstLeadingBit(~var_1.x) >> (reverseBits(11375u) % 32u)) > ~_wgslsmith_div_u32(var_1.x, _wgslsmith_mod_u32(var_1.x, 4294967295u)));
    var var_3 = ~(7085i << (_wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(14389u), _wgslsmith_sub_u32(var_1.x, var_1.x)), ~_wgslsmith_div_vec2_u32(var_1.yy, var_1.xw)) % 32u));
    return var_2.c.wx;
}

fn func_2() -> Struct_1 {
    let var_0 = all(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), func_3(), any(vec3<bool>(true, true, true))));
    var var_1 = Struct_2(~(min(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.b, 2147483647i), vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(1u, 15u)], -64748i)), _wgslsmith_mod_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(1u, 15u)], u_input.b, global0[_wgslsmith_index_u32(1u, 15u)]), vec3<i32>(-2147483647i, -2147483647i, 2147483647i))) << (_wgslsmith_mod_vec3_u32(~vec3<u32>(18901u, 47901u, 31363u), vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u))));
    global0 = array<i32, 15>();
    let var_2 = -24964i;
    var_1 = Struct_2(select(firstTrailingBit(vec3<i32>(11470i, 49780i, var_1.a.x)), vec3<i32>(var_2, global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(18432u, 15u)]), select(select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, true, true), false), select(vec3<bool>(var_0, false, true), vec3<bool>(var_0, var_0, var_0), vec3<bool>(true, false, var_0)), !vec3<bool>(var_0, false, true))) & countOneBits(~select(var_1.a, vec3<i32>(var_1.a.x, 29744i, var_2), vec3<bool>(true, var_0, var_0))));
    return Struct_1(_wgslsmith_f_op_f32(716f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -472f), -845f))) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1403f, _wgslsmith_f_op_f32(abs(1521f))))), 1652f, !(!vec4<bool>(var_0, true, true, var_0)), any(select(vec3<bool>(false, true, true), vec3<bool>(true, false | var_0, any(vec2<bool>(false, var_0))), true)));
}

fn func_1() -> Struct_2 {
    let var_0 = true;
    var var_1 = 10901i;
    var var_2 = func_2();
    var_2 = func_2();
    let var_3 = Struct_1(select(20868u, countOneBits(1u), var_2.d) != _wgslsmith_clamp_u32(~1u, reverseBits(_wgslsmith_mod_u32(1u, 57266u)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(45212u, 23213u))), -1000f, func_2().c, false);
    return Struct_2(vec3<i32>(-34036i, 45551i, -48631i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = array<i32, 15>();
    var var_1 = func_3();
    var_1 = !func_2().c.yw;
    var_1 = func_3();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(213f, -1043f))) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -990f))))))));
    let var_3 = false;
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2, 820f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(var_2, 368f), vec2<f32>(1602f, var_2)), vec2<f32>(var_2, -1661f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, -477f))))), var_3)) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(871f, -277f, true)), _wgslsmith_f_op_f32(851f + -1000f))), vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(15180u, _wgslsmith_dot_vec4_u32(abs(firstLeadingBit(vec4<u32>(4294967295u, 4294967295u, 26573u, 25084u))), vec4<u32>(0u, 0u, 1u, 0u) << (firstLeadingBit(vec4<u32>(23706u, 44494u, 18433u, 110552u)) % vec4<u32>(32u)))), min(_wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, 4294967295u), 1u), 1u) << ((~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 51209u), vec3<u32>(0u, 1u, 1u)) ^ 1u) % 32u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_4.x * var_4.x), 1095f) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-222f, var_4.x) * vec2<f32>(var_2, 1000f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-733f, var_4.x), vec2<f32>(1325f, var_4.x))), true))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2, var_2))) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1046f, var_2)))))), firstTrailingBit(1u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x * _wgslsmith_f_op_f32(var_2 * 1291f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_4.x))), var_3)));
}

