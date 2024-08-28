struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: vec4<bool>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: vec4<u32>) -> vec4<u32> {
    global0 = array<vec4<bool>, 32>();
    let var_0 = Struct_2(Struct_1(abs(firstTrailingBit(u_input.c.xx)), select(global0[_wgslsmith_index_u32(abs(8437u), 32u)], select(vec4<bool>(true, true, false, arg_1.x), global0[_wgslsmith_index_u32(5070u, 32u)], !global0[_wgslsmith_index_u32(16576u, 32u)]), false), select(select(!global0[_wgslsmith_index_u32(7758u, 32u)], !global0[_wgslsmith_index_u32(1u, 32u)], true), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(arg_2.ww, vec2<u32>(82674u, arg_2.x)), 32u)], vec4<bool>(true, u_input.d.x == 1u, !arg_1.x, false)), vec4<i32>(~arg_0 | (8863i >> (u_input.d.x % 32u)), u_input.e, _wgslsmith_mod_i32(-u_input.c.x, _wgslsmith_sub_i32(u_input.b, u_input.b)), -14281i), select(vec4<i32>(_wgslsmith_div_i32(2147483647i, arg_0), -arg_0, -1i, countOneBits(0i)), vec4<i32>(-arg_0, arg_0, ~(-3737i), -33236i), all(global0[_wgslsmith_index_u32(u_input.a, 32u)]))));
    return arg_2;
}

fn func_2(arg_0: i32, arg_1: vec2<f32>) -> i32 {
    let var_0 = Struct_2(Struct_1(u_input.c.wz, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(78784u, 4294967295u, u_input.a, 1u) & func_3(arg_0, vec3<bool>(true, false, false), u_input.d), vec4<u32>(~u_input.a, func_3(u_input.e, vec3<bool>(true, true, true), u_input.d).x, firstTrailingBit(u_input.d.x), _wgslsmith_div_u32(1u, u_input.d.x))), 32u)], !select(select(vec4<bool>(false, false, false, false), global0[_wgslsmith_index_u32(u_input.d.x, 32u)], true), vec4<bool>(false, true, false, true), true), ~(~(u_input.c | u_input.c)), -firstTrailingBit(_wgslsmith_mod_vec4_i32(u_input.c, u_input.c))));
    var var_1 = Struct_2(var_0.a);
    var var_2 = vec2<i32>(u_input.b, 1i);
    let var_3 = arg_1;
    global0 = array<vec4<bool>, 32>();
    return -1i;
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.a;
    let var_1 = u_input.a;
    global0 = array<vec4<bool>, 32>();
    global0 = array<vec4<bool>, 32>();
    return Struct_1(vec2<i32>(_wgslsmith_sub_i32(func_2(~0i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(743f, -383f))), ~firstTrailingBit(u_input.c.x)), u_input.e), !global0[_wgslsmith_index_u32(func_3(_wgslsmith_dot_vec2_i32(u_input.c.ww, _wgslsmith_sub_vec2_i32(u_input.c.xx, vec2<i32>(u_input.b, 8182i))), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), vec4<u32>(u_input.a, ~114439u, 4253u, _wgslsmith_add_u32(0u, 80954u))).x, 32u)], select(!(!select(global0[_wgslsmith_index_u32(var_1, 32u)], global0[_wgslsmith_index_u32(0u, 32u)], true)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 20287u ^ u_input.d.x), 32u)], vec4<bool>(false, all(vec3<bool>(true, true, true)), 4294967295u < ~u_input.d.x, false)), min(vec4<i32>(_wgslsmith_mod_i32(-2147483647i, _wgslsmith_clamp_i32(48544i, 60220i, 0i)), 0i, ~_wgslsmith_mod_i32(u_input.c.x, 2147483647i), _wgslsmith_sub_i32(~u_input.e, _wgslsmith_dot_vec3_i32(u_input.c.yzx, u_input.c.wzw))), ~(vec4<i32>(-1i) * -vec4<i32>(u_input.b, -2147483647i, u_input.b, -38605i))), -max(_wgslsmith_sub_vec4_i32(firstTrailingBit(u_input.c), ~u_input.c), vec4<i32>(1i, u_input.b, u_input.b, abs(0i))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-311f)))));
    global0 = array<vec4<bool>, 32>();
    let var_1 = _wgslsmith_f_op_f32(-var_0) < 736f;
    global0 = array<vec4<bool>, 32>();
    var var_2 = func_1();
    return u_input.a > func_3(firstTrailingBit(-35582i), var_2.b.wyz, ~_wgslsmith_mod_vec4_u32(u_input.d, u_input.d >> (u_input.d % vec4<u32>(32u)))).x;
}

fn func_5(arg_0: vec3<bool>) -> vec4<f32> {
    var var_0 = u_input.d.yxz;
    let var_1 = vec3<f32>(-256f, -1071f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1951f - _wgslsmith_f_op_f32(trunc(-578f))))));
    var var_2 = var_1;
    let var_3 = var_0.x;
    var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(1051f, 596f)))), -748f))));
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-314f, -2443f, var_2.x, var_2.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(867f, var_2.x, var_2.x, -1048f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-543f * var_2.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.x + var_1.x))), var_2.x, var_2.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.x, 1000f, var_2.x, var_1.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 32>();
    let var_0 = _wgslsmith_f_op_vec4_f32(func_5(!vec3<bool>(true, !all(vec3<bool>(true, false, true)), func_4(vec4<bool>(true, false, false, true), func_1(), u_input.c.zw))));
    global0 = array<vec4<bool>, 32>();
    let var_1 = func_1();
    global0 = array<vec4<bool>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(~66894u);
}

