struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: Struct_2,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 18>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>) -> vec2<f32> {
    var var_0 = -510f;
    let var_1 = u_input.b;
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1577f, -867f)))))));
}

fn func_2(arg_0: f32, arg_1: vec3<bool>) -> Struct_4 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(u_input.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-555f, 968f) - vec2<f32>(117f, -217f))))));
    var var_1 = _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x));
    let var_2 = _wgslsmith_sub_i32(1i, ~u_input.c.x);
    let var_3 = min(min(countOneBits(u_input.d), vec4<u32>(u_input.b, ~15038u, u_input.b, u_input.b)) >> (_wgslsmith_sub_vec4_u32(~(vec4<u32>(0u, u_input.b, 38938u, u_input.b) | u_input.d), u_input.d & u_input.d) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_sub_u32(~u_input.b, _wgslsmith_clamp_u32(48224u, u_input.b, u_input.d.x)), _wgslsmith_div_u32(4294967295u, _wgslsmith_sub_u32(u_input.b, u_input.a)), _wgslsmith_mult_u32(~u_input.b, 1u), ~4294967295u) | u_input.d);
    let var_4 = Struct_2(_wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.c.x, -_wgslsmith_mult_i32(var_2, -1i)), u_input.c.x), select(select(vec3<bool>(all(vec4<bool>(false, false, false, arg_1.x)), any(vec2<bool>(false, arg_1.x)), false || arg_1.x), !arg_1, vec3<bool>(true, arg_1.x, true)), select(select(select(vec3<bool>(true, false, arg_1.x), vec3<bool>(arg_1.x, false, false), true), arg_1, arg_1.x), select(select(arg_1, arg_1, arg_1.x), vec3<bool>(true, false, true), !arg_1.x), arg_1), all(select(vec4<bool>(false, true, true, arg_1.x), vec4<bool>(arg_1.x, false, true, arg_1.x), vec4<bool>(false, arg_1.x, false, arg_1.x))) || any(vec3<bool>(false, false, arg_1.x))), false);
    return Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1315f, 942f, 336f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0, var_0.x, -865f))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0, var_0.x, -165f)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), var_0.x)), ~(~select(global0[_wgslsmith_index_u32(var_3.x, 18u)], var_3.wyw, vec3<bool>(true, var_4.b.x, false)))), -firstLeadingBit(1i & select(u_input.c.x, 1i, arg_1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(513f, _wgslsmith_f_op_f32(var_0.x * arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

fn func_1() -> Struct_4 {
    let var_0 = func_2(_wgslsmith_f_op_f32(step(569f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1892f)))), vec3<bool>(true, true, true));
    var var_1 = vec3<bool>(select(!any(vec4<bool>(true, false, true, false)), true, true) || all(vec2<bool>(true, all(vec3<bool>(false, false, false)))), ~31601u >= _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a, 1u), ~(~34197u)), true);
    let var_2 = u_input.b;
    var var_3 = var_0;
    var var_4 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, var_3.a.a.x, var_3.c.x) * vec3<f32>(566f, var_3.a.a.x, var_0.c.x)) + _wgslsmith_f_op_vec3_f32(var_3.a.a * var_3.a.a)))) - var_0.c), !(!(!var_1.x)), Struct_2(13786i & var_3.b, select(!select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, var_1.x, false), vec3<bool>(true, var_1.x, var_1.x)), select(select(vec3<bool>(false, false, var_1.x), vec3<bool>(true, false, true), vec3<bool>(true, var_1.x, false)), select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, false)), var_1.x), select(select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(true, true, var_1.x), vec3<bool>(var_1.x, false, false)), vec3<bool>(true, var_1.x, var_1.x), true)), true), ~_wgslsmith_add_vec4_u32(max(~vec4<u32>(var_3.a.c.x, 0u, 19939u, var_0.a.c.x), vec4<u32>(1008u, 10793u, 4294967295u, 17914u)), ~u_input.d | reverseBits(vec4<u32>(0u, var_2, var_0.a.c.x, var_2))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c)), _wgslsmith_f_op_f32(max(415f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(var_3.a.a.x)), 244f)))), abs(firstLeadingBit(countOneBits(u_input.d.zzz)))));
    return Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(-var_4.e.a), _wgslsmith_f_op_f32(trunc(-221f)), ~firstLeadingBit(u_input.d.ywy) | (vec3<u32>(var_0.a.c.x, 4294967295u, 0u) & ~vec3<u32>(19436u, var_3.a.c.x, 91812u))), abs(-var_4.c.a), _wgslsmith_div_vec3_f32(var_0.a.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_3.c, _wgslsmith_f_op_vec3_f32(ceil(var_3.a.a)), vec3<bool>(var_1.x, true, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = array<vec3<u32>, 18>();
    var_0 = Struct_4(Struct_1(vec3<f32>(657f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.c.x, -133f))), -1109f), 669f, global0[_wgslsmith_index_u32(~u_input.d.x, 18u)]), -68488i ^ u_input.c.x, var_0.a.a);
    var_0 = Struct_4(var_0.a, 26595i, _wgslsmith_f_op_vec3_f32(-var_0.a.a));
    var var_1 = Struct_2(_wgslsmith_clamp_i32(-(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b, -53323i, var_0.b, 0i), vec4<i32>(u_input.c.x, 2156i, var_0.b, 1475i))), ~(-2147483647i), ~(~max(var_0.b, 0i))), select(!select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false)), vec3<bool>(true, true, true), false), true);
    let x = u_input.a;
    s_output = StorageBuffer(999f, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.c.x * var_0.c.x), var_0.c.x, 351f, var_0.c.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.a.x), _wgslsmith_f_op_f32(min(var_0.a.a.x, var_0.a.b)), -193f, -1657f) * vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_add_i32(var_1.a, (~u_input.c.x >> (1u % 32u)) & -2147483647i), var_0.c.x, _wgslsmith_f_op_vec3_f32(var_0.c + vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec2_f32(func_3(vec2<i32>(var_1.a, u_input.c.x))).x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.a.b + -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(167f * -291f) + var_0.a.b))));
}

