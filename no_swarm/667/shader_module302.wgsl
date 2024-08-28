struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31>;

var<private> global1: Struct_2 = Struct_2(vec2<bool>(false, false), Struct_1(30320u, vec2<f32>(438f, 1263f), 47797u), 23062u, 17176i);

var<private> global2: bool = true;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<bool> {
    let var_0 = firstLeadingBit(select(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 30140u), vec2<u32>(global0[_wgslsmith_index_u32(29371u, 31u)], 9179u)), select(vec2<u32>(0u, global1.c), vec2<u32>(27194u, global0[_wgslsmith_index_u32(global1.b.a, 31u)]), vec2<bool>(global1.a.x, true))) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(global1.b.c, global0[_wgslsmith_index_u32(0u, 31u)])), ~(~vec2<u32>(1u, 14435u)) ^ reverseBits(vec2<u32>(global1.b.c, 50324u)), false));
    let var_1 = global1.b;
    let var_2 = global1.b.c;
    var var_3 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(35660u, ~(~var_0.x), _wgslsmith_div_u32(4294967295u, var_0.x) << (4294967295u % 32u)), vec3<u32>(0u, ~var_1.c, var_1.c) << (_wgslsmith_sub_vec3_u32(vec3<u32>(77440u, var_0.x, 4294967295u), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 31u)], 20357u, 0u) | vec3<u32>(81317u, 0u, var_1.c)) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, -573f)))), var_1.b, !select(global1.a, !global1.a, true))), ~_wgslsmith_add_u32(41241u, _wgslsmith_div_u32(_wgslsmith_mult_u32(global1.b.a, var_1.c), select(var_1.a, global1.b.a, false))));
    let var_4 = abs(firstLeadingBit(vec4<i32>(~(-2147483647i), reverseBits(firstLeadingBit(15643i)), 35971i, 1i)));
    return global1.a;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: f32) -> vec2<bool> {
    var var_0 = -arg_1;
    var var_1 = func_3();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(395f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 + -1000f) - arg_0.b.x)));
    var var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(arg_3 * 619f), _wgslsmith_f_op_f32(207f + var_2), 825f, _wgslsmith_f_op_f32(-376f - 303f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-368f, 161f, -1597f, -488f), vec4<f32>(-1000f, -788f, -504f, global1.b.b.x), true))))))));
    let var_4 = min(0u, ~(global0[_wgslsmith_index_u32(global1.b.c, 31u)] << (((global1.c << (arg_0.c % 32u)) << (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c, 48638u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.c, 31u)], 31u)], arg_0.a)) % 32u)) % 32u)));
    return select(func_3(), vec2<bool>(func_3().x, !(!var_1.x)), any(vec2<bool>(var_1.x, false)) && var_1.x);
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    return !(!func_2(Struct_1(_wgslsmith_mod_u32(45673u, global1.b.a), _wgslsmith_f_op_vec2_f32(max(arg_0.b, global1.b.b)), _wgslsmith_mod_u32(arg_0.c, 0u)), reverseBits(~u_input.a.x), false, 1561f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = all(vec3<bool>(true, any(select(global1.a, vec2<bool>(global1.a.x, global1.a.x), select(true, true, true))), global1.a.x));
    var var_0 = Struct_2(func_1(Struct_1(global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(global1.c, 31u)]), 31u)], vec2<f32>(_wgslsmith_f_op_f32(-1030f + global1.b.b.x), _wgslsmith_f_op_f32(sign(1695f))), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(~global1.c, 31u)], abs(global1.b.a)))), Struct_1(~(firstLeadingBit(global0[_wgslsmith_index_u32(18162u, 31u)]) << (~global0[_wgslsmith_index_u32(global1.c, 31u)] % 32u)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-570f, -1207f)) - global1.b.b))), global1.c), global1.c, (firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.d, -13911i), vec2<i32>(u_input.a.x, global1.d))) | (-u_input.a.x & (i32(-1i) * -2147483647i))) | _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a, u_input.a, u_input.a), vec2<i32>(2147483647i, u_input.a.x)), -select(vec2<i32>(global1.d, u_input.a.x), vec2<i32>(2147483647i, global1.d), vec2<bool>(false, global1.a.x))));
    var var_1 = Struct_2(vec2<bool>(false, var_0.a.x), Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.b.a, 42911u, global0[_wgslsmith_index_u32(0u, 31u)], 4294967295u), vec4<u32>(global1.b.a, var_0.c, 1u, 4294967295u)) << (~1u % 32u), vec2<f32>(_wgslsmith_div_f32(-432f, _wgslsmith_f_op_f32(var_0.b.b.x * 261f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2608f, 1934f)))), abs(var_0.c)), 0u, 1i);
    let var_2 = ~4294967295u;
    var_0 = Struct_2(var_1.a, Struct_1(reverseBits((global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.b.a, 31u)], 31u)] ^ 28545u) >> (~4294967295u % 32u)), vec2<f32>(var_1.b.b.x, 1556f), 4294967295u), reverseBits(global1.c), 1i);
    var var_3 = vec2<u32>(1u << (countOneBits(_wgslsmith_mult_u32(17666u >> (global1.b.a % 32u), var_0.b.c)) % 32u), select(select(var_1.b.c, _wgslsmith_mult_u32(firstTrailingBit(42876u), ~1u), _wgslsmith_mod_u32(var_0.c, var_1.b.a) >= ~global1.b.a), global1.c, ~(~1u) == (global0[_wgslsmith_index_u32(global1.c, 31u)] | ~var_1.b.a)));
    var_3 = abs(reverseBits(firstTrailingBit(abs(vec2<u32>(0u, 4294967295u)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-1i), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-851f, global1.b.b.x, -295f, 1467f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.b.b.x), _wgslsmith_f_op_f32(-var_1.b.b.x))) + 282f))));
}

