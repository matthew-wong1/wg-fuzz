struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20>;

var<private> global1: array<Struct_1, 5>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2() -> Struct_5 {
    global0 = array<bool, 20>();
    global0 = array<bool, 20>();
    let var_0 = vec4<bool>(!any(!select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], global0[_wgslsmith_index_u32(u_input.b.x, 20u)], global0[_wgslsmith_index_u32(u_input.b.x, 20u)]), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(u_input.b.x, 20u)], global0[_wgslsmith_index_u32(u_input.b.x, 20u)]), vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.b.x, 20u)]))), false, true, global0[_wgslsmith_index_u32(u_input.b.x, 20u)]);
    var var_1 = u_input.a.x;
    let var_2 = false;
    return Struct_5(1u << (1u % 32u), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), Struct_1(abs(_wgslsmith_mod_u32(firstTrailingBit(5137u), abs(1u)))));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>) -> f32 {
    let var_0 = _wgslsmith_div_f32(-408f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-827f, -2801f)) + _wgslsmith_div_f32(-971f, _wgslsmith_f_op_f32(max(-1000f, -1000f)))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -337f), _wgslsmith_f_op_f32(abs(311f))))))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0)));
    var_1 = Struct_3(-528f);
    global1 = array<Struct_1, 5>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, -376f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.a, 248f, -631f, var_0), vec4<f32>(var_1.a, var_0, 574f, -1835f))))))));
    return var_0;
}

fn func_4(arg_0: u32, arg_1: Struct_5, arg_2: Struct_3) -> Struct_3 {
    var var_0 = select(abs(firstTrailingBit(vec2<i32>(-1i) * -u_input.a)), vec2<i32>(max(_wgslsmith_add_i32(-u_input.a.x, u_input.a.x & u_input.a.x), _wgslsmith_div_i32(_wgslsmith_div_i32(arg_1.b, -1i), _wgslsmith_sub_i32(arg_1.b, arg_1.b))), ~10571i), !(!global0[_wgslsmith_index_u32(select(_wgslsmith_mod_u32(0u, 35377u), abs(u_input.b.x), false), 20u)]));
    let var_1 = abs(~vec3<u32>(19039u, ~arg_0, firstTrailingBit(u_input.b.x)));
    var var_2 = Struct_4(min(vec3<u32>(select(0u, 1u, global0[_wgslsmith_index_u32(0u, 20u)]) & var_1.x, 0u, abs(arg_0)), select(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 0u, var_1.x), vec3<u32>(arg_0, u_input.b.x, 4294967295u))), u_input.b.yww, vec3<bool>(true, true, all(vec4<bool>(global0[_wgslsmith_index_u32(var_1.x, 20u)], global0[_wgslsmith_index_u32(var_1.x, 20u)], global0[_wgslsmith_index_u32(u_input.b.x, 20u)], false))))), true);
    global0 = array<bool, 20>();
    let var_3 = Struct_1(select(66705u, abs(~arg_0), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(arg_2.a)))) <= _wgslsmith_f_op_f32(1989f + _wgslsmith_f_op_f32(-arg_2.a))));
    return Struct_3(279f);
}

fn func_1() -> Struct_3 {
    global1 = array<Struct_1, 5>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -721f)));
    let var_1 = _wgslsmith_mod_u32(~1u, u_input.b.x);
    var var_2 = u_input.a.x;
    var var_3 = _wgslsmith_sub_i32(u_input.a.x, u_input.a.x) >> (4294967295u % 32u);
    return func_4(var_1, func_2(), Struct_3(_wgslsmith_f_op_f32(func_3(~(~u_input.a.x), vec3<i32>(u_input.a.x ^ -42958i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 1i, 1274i, u_input.a.x), vec4<i32>(-2147483647i, -20160i, u_input.a.x, u_input.a.x)), 0i)))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3) -> vec4<i32> {
    var var_0 = firstTrailingBit(u_input.a.x);
    let var_1 = Struct_2(true, abs(vec3<i32>(1i, -(u_input.a.x & u_input.a.x), _wgslsmith_dot_vec4_i32(~vec4<i32>(3014i, -80223i, -7224i, u_input.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.a.x, u_input.a.x, 1i), vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.a.x))))), firstLeadingBit(u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1066f + _wgslsmith_f_op_f32(exp2(func_4(4294967295u, Struct_5(u_input.b.x, 18723i, Struct_1(4429u)), Struct_3(arg_1.a)).a)))));
    var var_2 = vec4<bool>(!all(!vec3<bool>(false, global0[_wgslsmith_index_u32(var_1.c, 20u)], global0[_wgslsmith_index_u32(0u, 20u)])), !global0[_wgslsmith_index_u32(4294967295u & u_input.b.x, 20u)], select(_wgslsmith_f_op_f32(sign(-402f)) == -566f, any(select(vec2<bool>(true, true), select(vec2<bool>(var_1.a, true), vec2<bool>(var_1.a, false), vec2<bool>(true, true)), all(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 20u)], false)))), all(!vec2<bool>(false, var_1.a)) || global0[_wgslsmith_index_u32(4294967295u, 20u)]), all(vec2<bool>(false, all(select(vec4<bool>(true, true, var_1.a, true), vec4<bool>(true, false, true, true), false)))));
    var_2 = vec4<bool>(all(!var_2.xzx), any(!select(!vec4<bool>(true, var_1.a, var_1.a, false), !vec4<bool>(true, var_2.x, false, true), false)), !global0[_wgslsmith_index_u32(~var_1.c, 20u)] && true, true);
    return ~(~_wgslsmith_mult_vec4_i32(min(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -2436i, 1i, u_input.a.x), vec4<i32>(10924i, 27053i, 51852i, 2147483647i)), ~vec4<i32>(var_1.b.x, 23865i, 2147483647i, 0i)), vec4<i32>(_wgslsmith_sub_i32(var_1.b.x, -40645i), 2147483647i, -14368i, _wgslsmith_clamp_i32(u_input.a.x, 38123i, -61557i))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_mod_vec3_i32(-vec3<i32>(17826i, 2147483647i, -u_input.a.x), _wgslsmith_mod_vec3_i32(~(-vec3<i32>(-21440i, u_input.a.x, u_input.a.x)), vec3<i32>(1i, 2147483647i, u_input.a.x) | min(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, -1i)))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1404f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -747f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2141f), -1023f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1119f * _wgslsmith_f_op_f32(f32(-1f) * -630f))))), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(select(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 83962i, -18660i), vec4<i32>(u_input.a.x, u_input.a.x, -2503i, -10470i)), -vec4<i32>(u_input.a.x, 25792i, -1i, u_input.a.x), false), func_5(Struct_3(1002f), func_1())), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, 1i), vec4<i32>(0i, u_input.a.x, u_input.a.x, 0i)) << (firstTrailingBit(u_input.b) % vec4<u32>(32u)), abs(select(vec4<i32>(u_input.a.x, -6472i, u_input.a.x, u_input.a.x), vec4<i32>(-1i, u_input.a.x, -1i, u_input.a.x), vec4<bool>(global0[_wgslsmith_index_u32(61002u, 20u)], true, false, false))), vec4<bool>(true, all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], true, global0[_wgslsmith_index_u32(u_input.b.x, 20u)], global0[_wgslsmith_index_u32(1u, 20u)])), true, global0[_wgslsmith_index_u32(u_input.b.x, 20u)])), _wgslsmith_clamp_vec4_i32(~(vec4<i32>(u_input.a.x, -37473i, u_input.a.x, u_input.a.x) & vec4<i32>(u_input.a.x, -25903i, u_input.a.x, u_input.a.x)), abs(vec4<i32>(-8731i, -1i, 1i, -1i)), firstTrailingBit(vec4<i32>(u_input.a.x, 0i, 1850i, u_input.a.x)))), _wgslsmith_add_i32(-7776i, 52036i));
}

