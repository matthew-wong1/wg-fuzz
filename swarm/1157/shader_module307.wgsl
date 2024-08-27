struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30> = array<i32, 30>(49598i, -35540i, 0i, i32(-2147483648), 0i, 13688i, -12273i, 11766i, 31265i, -13991i, 2147483647i, 0i, -632i, 0i, 2147483647i, 2147483647i, -13182i, 41818i, 0i, 58964i, 23239i, 5201i, 15716i, -25271i, -1i, -52045i, -1i, 11707i, -1i, -5792i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>) -> vec2<bool> {
    global0 = array<i32, 30>();
    global0 = array<i32, 30>();
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1174f, -1337f)))), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, -340f))), -637f), vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(250f - _wgslsmith_f_op_f32(f32(-1f) * -255f)), arg_0.x, arg_0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1271f, arg_0.x, -1728f, arg_0.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1872f, arg_0.x, arg_0.x, arg_0.x) * vec4<f32>(-2053f, arg_0.x, arg_0.x, arg_0.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1621f, -1069f, -1000f, -1000f) * vec4<f32>(1101f, -488f, arg_0.x, arg_0.x))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(1689f, arg_0.x, arg_0.x, 1871f), vec4<f32>(930f, 402f, arg_0.x, arg_0.x))))))));
    global0 = array<i32, 30>();
    let var_1 = ~(~abs(-u_input.c.x));
    return vec2<bool>(false, false);
}

fn func_2(arg_0: vec2<bool>, arg_1: bool) -> bool {
    let var_0 = Struct_3(Struct_1(vec4<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(-39095i, -5515i), u_input.c) <= (u_input.c.x | u_input.c.x), arg_0.x, all(func_3(vec2<f32>(1147f, 2107f))), select(true, false, false) && true), arg_0, ~(~(~vec3<u32>(u_input.b, u_input.b, 7371u))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(508f + -534f))), _wgslsmith_f_op_f32(f32(-1f) * -1926f)))), firstTrailingBit(~(vec2<u32>(36132u, u_input.a) << (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u))) << (vec2<u32>(0u, select(0u, 9190u, true)) % vec2<u32>(32u))), vec3<bool>(true, all(vec3<bool>(true, any(vec3<bool>(arg_1, arg_0.x, arg_0.x)), true)), true));
    global0 = array<i32, 30>();
    global0 = array<i32, 30>();
    return func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.d * var_0.a.d) + -2119f), 1446f) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(322f, 634f) - vec2<f32>(1098f, var_0.a.d)), vec2<f32>(var_0.a.d, 590f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-413f, -1077f)))))))).x;
}

fn func_1(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_2, arg_3: bool) -> vec2<bool> {
    let var_0 = -min(max(vec3<i32>(u_input.c.x, u_input.c.x, 2147483647i), vec3<i32>(-u_input.c.x, -1i ^ global0[_wgslsmith_index_u32(u_input.b, 30u)], 19014i)), select(select(vec3<i32>(global0[_wgslsmith_index_u32(53903u, 30u)], u_input.c.x, u_input.c.x), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)], u_input.c.x), all(vec3<bool>(false, false, true))), _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.b, 30u)], 24713i, u_input.c.x), vec3<i32>(81231i, u_input.c.x, 1i), vec3<i32>(20340i, u_input.c.x, 2147483647i)), _wgslsmith_mult_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 30u)], u_input.c.x, 6450i), vec3<i32>(global0[_wgslsmith_index_u32(0u, 30u)], u_input.c.x, u_input.c.x))), any(!arg_0)));
    let var_1 = u_input.c.x;
    global0 = array<i32, 30>();
    let var_2 = vec4<bool>(u_input.b < (~(~u_input.a) ^ _wgslsmith_clamp_u32(min(u_input.a, 4294967295u), 1193u & u_input.b, 4491u)), !arg_3 & arg_0.x, !func_2(!select(vec2<bool>(arg_3, arg_0.x), vec2<bool>(true, arg_3), arg_3), !(arg_0.x | false)), select(!(!(!arg_0.x)), !(arg_3 || any(vec4<bool>(arg_0.x, arg_3, true, arg_2.a.x))), any(select(vec3<bool>(arg_2.b, arg_3, arg_1), !vec3<bool>(arg_3, false, true), func_3(vec2<f32>(156f, 869f)).x))));
    var var_3 = firstTrailingBit(select(max(~abs(u_input.c.x), -var_0.x), firstLeadingBit(i32(-1i) * -45277i), true));
    return !arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 30>();
    var var_0 = vec3<f32>(216f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-322f - _wgslsmith_f_op_f32(sign(216f)))), -1000f);
    var var_1 = vec4<bool>(true, all(select(vec2<bool>(true, true), select(func_1(vec2<bool>(false, false), true, Struct_2(vec4<bool>(false, true, true, false), false), true), vec2<bool>(true, true), vec2<bool>(true, true)), func_2(vec2<bool>(false, false), false) & (31121i > u_input.c.x))), func_2(!vec2<bool>(false, select(false, true, false)), countOneBits(_wgslsmith_mod_i32(u_input.c.x, -32563i)) != -1i), !all(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true))));
    var_1 = select(!select(vec4<bool>(var_1.x, var_1.x != false, u_input.a == u_input.a, true), !select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, false), false), vec4<bool>(any(vec2<bool>(var_1.x, var_1.x)), var_1.x, true, false)), vec4<bool>(true, (countOneBits(2147483647i) ^ global0[_wgslsmith_index_u32(u_input.b, 30u)]) == _wgslsmith_add_i32(-43194i, i32(-1i) * -2147483647i), var_1.x, var_0.x != var_0.x), select(!select(!vec4<bool>(false, var_1.x, var_1.x, var_1.x), select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), var_1.x), vec4<bool>(false, true, var_1.x, var_1.x)), select(vec4<bool>(select(var_1.x, true, false), var_1.x, true, true), !(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), select(select(vec4<bool>(var_1.x, false, false, false), vec4<bool>(false, true, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, false, var_1.x)), vec4<bool>(true, false, false, var_1.x), all(vec3<bool>(false, false, true)))), _wgslsmith_clamp_u32(1u, ~u_input.b, 81432u << (u_input.a % 32u)) >= ~(~4294967295u)));
    let var_2 = select(u_input.b, u_input.b, var_1.x);
    let var_3 = ~u_input.c.x;
    let var_4 = select(!(!(!vec4<bool>(var_1.x, true, false, true))), select(select(vec4<bool>(true, true, !var_1.x, all(vec2<bool>(true, var_1.x))), select(!vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(true, true, false, true), var_1.x), vec4<bool>(true, global0[_wgslsmith_index_u32(var_2, 30u)] != global0[_wgslsmith_index_u32(1u, 30u)], true, !var_1.x)), select(select(vec4<bool>(true, var_1.x, var_1.x, var_1.x), select(vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(true, true, var_1.x, var_1.x)), vec4<bool>(var_1.x, var_1.x, true, var_1.x)), vec4<bool>(!var_1.x, var_1.x, true, true), !func_2(vec2<bool>(var_1.x, var_1.x), false)), vec4<bool>(true, var_1.x, any(select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, false, true, true), false)), var_1.x)), select(vec4<bool>(var_1.x || true, -1084f != _wgslsmith_f_op_f32(-var_0.x), false, false), !vec4<bool>(true, !var_1.x, true, false), 1000f <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x - 2305f)))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~vec4<i32>(global0[_wgslsmith_index_u32(0u, 30u)], 2147483647i, var_3, u_input.c.x)) << (vec4<u32>(~_wgslsmith_div_u32(89372u, 38675u), ~78869u, 36695u, 1u) % vec4<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(440f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(450f + var_0.x) - -1614f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)) * -189f), var_0.x)));
}

