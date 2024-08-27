struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 5>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> bool {
    var var_0 = -35516i;
    var var_1 = 0i;
    let var_2 = Struct_4(global0[_wgslsmith_index_u32(~arg_2.b, 5u)], arg_0.a, -u_input.b);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.a * -739f)) + -485f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -153f)), -145f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-337f * 468f))), _wgslsmith_f_op_f32(trunc(var_2.b.a)));
    global0 = array<vec4<i32>, 5>();
    return select(!(!arg_0.a.c.x), true, !(any(!arg_1.a.c.wyw) & false));
}

fn func_2() -> vec3<bool> {
    global0 = array<vec4<i32>, 5>();
    let var_0 = vec3<i32>(-6396i, u_input.b, ~u_input.b) ^ (-(~vec3<i32>(u_input.b, -1i, -6248i) << (firstLeadingBit(vec3<u32>(9592u, 9599u, u_input.a)) % vec3<u32>(32u))) >> (~vec3<u32>(min(1u, u_input.a), u_input.a, u_input.a) % vec3<u32>(32u)));
    global0 = array<vec4<i32>, 5>();
    global0 = array<vec4<i32>, 5>();
    let var_1 = var_0.xy;
    return select(!vec3<bool>(false, false, func_3(Struct_2(Struct_1(-1119f, u_input.a, vec4<bool>(true, true, false, false)), vec3<u32>(u_input.a, u_input.a, u_input.a)), Struct_2(Struct_1(-1199f, u_input.a, vec4<bool>(false, true, false, false)), vec3<u32>(3968u, u_input.a, 4753u)), Struct_1(1725f, u_input.a, vec4<bool>(true, false, true, false)))), vec3<bool>(false, true, all(vec3<bool>(true, true, true))), vec3<bool>(_wgslsmith_f_op_f32(round(-284f)) < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -444f))), true, select(false, all(vec4<bool>(true, false, false, true)), true)));
}

fn func_1() -> u32 {
    let var_0 = ~(-vec3<i32>(_wgslsmith_div_i32(u_input.b ^ u_input.b, u_input.b), ~(-u_input.b), ~u_input.b));
    var var_1 = func_2();
    let var_2 = var_1.yx;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 596f)))) - -734f));
    let var_4 = any(func_2());
    return ~_wgslsmith_sub_u32(~abs(u_input.a), ~u_input.a);
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_3) -> Struct_5 {
    var var_0 = ~(~_wgslsmith_clamp_u32(u_input.a ^ _wgslsmith_clamp_u32(4294967295u, arg_2.a.b, u_input.a), arg_1, func_1()));
    let var_1 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32((vec3<u32>(1u, arg_1, arg_2.c.b.x) ^ vec3<u32>(arg_1, 0u, 0u)) & (arg_2.b.b & arg_2.b.b), vec3<u32>(arg_1, arg_2.d.b ^ arg_1, arg_2.d.b)) | _wgslsmith_mult_u32(select(4294967295u, _wgslsmith_mult_u32(arg_2.b.a.b, 4294967295u), true), countOneBits(u_input.a)), 5856u);
    var_0 = arg_2.d.b;
    var_0 = _wgslsmith_sub_u32(39047u, var_1);
    var_0 = (1u << (~_wgslsmith_add_u32(var_1 ^ 0u, 1u) % 32u)) ^ firstTrailingBit(31632u);
    return Struct_5(~arg_2.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 5>();
    global0 = array<vec4<i32>, 5>();
    global0 = array<vec4<i32>, 5>();
    let var_0 = all(vec2<bool>(any(vec2<bool>(true, true)) & false, false));
    global0 = array<vec4<i32>, 5>();
    global0 = array<vec4<i32>, 5>();
    var var_1 = func_4(!vec2<bool>(true, !var_0), func_1(), Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(772f, 1497f)), _wgslsmith_div_u32(firstTrailingBit(u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(1u, u_input.a, 106109u))), select(select(vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(true, false, true, var_0), var_0), !vec4<bool>(false, var_0, true, false), vec4<bool>(var_0, true, var_0, var_0))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-1000f * 1283f), _wgslsmith_mod_u32(4294967295u, u_input.a), !vec4<bool>(var_0, var_0, true, var_0)), vec3<u32>(u_input.a, 11271u & u_input.a, 1u)), Struct_2(Struct_1(_wgslsmith_f_op_f32(round(1424f)), 9971u, !vec4<bool>(false, var_0, true, var_0)), ~(~vec3<u32>(4294967295u, u_input.a, 4294967295u))), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(177f + 318f))), 94519u | _wgslsmith_mod_u32(u_input.a, u_input.a), !(!vec4<bool>(var_0, true, true, true)))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(318f - 2003f) - _wgslsmith_f_op_f32(f32(-1f) * -117f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2515f))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-579f)), _wgslsmith_f_op_f32(round(118f)), var_0)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 1643f) * _wgslsmith_f_op_f32(f32(-1f) * -1210f)))))));
    var var_3 = !var_0;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, var_2)))))), _wgslsmith_sub_i32(u_input.b, 1i), vec3<i32>(-1i) * -(~_wgslsmith_clamp_vec3_i32(vec3<i32>(-47212i, u_input.b, u_input.b), vec3<i32>(u_input.b, 59130i, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b))));
}

