struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
    c: Struct_1,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(2147483647i, vec2<bool>(true, false)), Struct_1(-1i, vec2<bool>(true, true)), Struct_1(66714i, vec2<bool>(true, false)), Struct_1(-1i, vec2<bool>(false, true)), Struct_1(-23356i, vec2<bool>(true, true)), Struct_1(-22192i, vec2<bool>(true, true)), Struct_1(2147483647i, vec2<bool>(false, false)), Struct_1(i32(-2147483648), vec2<bool>(true, true)), Struct_1(i32(-2147483648), vec2<bool>(true, true)), Struct_1(-28485i, vec2<bool>(true, true)), Struct_1(22042i, vec2<bool>(true, true)), Struct_1(-31972i, vec2<bool>(true, true)), Struct_1(1i, vec2<bool>(false, true)), Struct_1(-1i, vec2<bool>(true, true)), Struct_1(0i, vec2<bool>(false, true)), Struct_1(1i, vec2<bool>(true, true)), Struct_1(28866i, vec2<bool>(true, false)), Struct_1(-14678i, vec2<bool>(false, false)), Struct_1(i32(-2147483648), vec2<bool>(false, true)), Struct_1(-1i, vec2<bool>(true, true)), Struct_1(1771i, vec2<bool>(true, true)), Struct_1(2147483647i, vec2<bool>(false, false)), Struct_1(-28993i, vec2<bool>(true, true)), Struct_1(i32(-2147483648), vec2<bool>(true, false)), Struct_1(-20757i, vec2<bool>(false, false)), Struct_1(-3813i, vec2<bool>(true, true)), Struct_1(2147483647i, vec2<bool>(true, false)), Struct_1(-1i, vec2<bool>(false, true)), Struct_1(2147483647i, vec2<bool>(true, true)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_1, arg_2: vec4<i32>) -> vec3<f32> {
    let var_0 = Struct_3(!select(vec4<bool>(arg_1.b.x, arg_0.a.b.x, arg_1.b.x & false, arg_0.a.b.x | true), !vec4<bool>(true, true, false, arg_0.a.b.x), arg_0.a.b.x), vec3<bool>(all(!(!vec3<bool>(arg_1.b.x, true, arg_0.a.b.x))), all(select(select(vec2<bool>(false, arg_1.b.x), vec2<bool>(arg_1.b.x, arg_0.a.b.x), arg_1.b.x), vec2<bool>(arg_0.a.b.x, false), arg_1.b.x)), arg_0.a.b.x), vec3<bool>(true, true, true), Struct_1(u_input.b.x, arg_0.a.b));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2244f, 943f, -1344f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-534f, 633f, 435f), vec3<f32>(551f, -1194f, 1094f))) + _wgslsmith_div_vec3_f32(vec3<f32>(-480f, -322f, 509f), vec3<f32>(1030f, 951f, 1000f))))));
}

fn func_2() -> bool {
    var var_0 = Struct_2(firstTrailingBit(u_input.b.x), -(~_wgslsmith_div_vec3_i32(u_input.b.zwx, -vec3<i32>(1i, u_input.b.x, 30033i))));
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_5(Struct_1(-24871i, vec2<bool>(true, true))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(8152u, 4294967295u, 18028u), vec3<u32>(22525u, 0u, 52519u)), 29u)], vec4<i32>(-16062i, -1065i, 2147483647i, u_input.b.x))))))));
    global1 = array<Struct_1, 29>();
    let var_2 = Struct_3(select(vec4<bool>(select(true, true, true), true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)))), select(vec4<bool>(true, u_input.a >= var_0.b.x, true, all(vec4<bool>(false, true, false, false))), vec4<bool>(var_0.a > 19804i, true, any(vec4<bool>(true, false, true, false)), 445f != var_1.x), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true))), false), !select(select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), true), vec3<bool>(true, var_1.x != -1221f, true), all(vec2<bool>(true, true))), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), !vec3<bool>(false, true, all(vec4<bool>(true, true, false, false))), any(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), true))), Struct_1(_wgslsmith_mod_i32(var_0.b.x, _wgslsmith_add_i32(u_input.a, u_input.b.x) & var_0.b.x), select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(false, false), true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), !any(vec4<bool>(true, true, false, true)))));
    var_0 = Struct_2(var_0.a, ~firstLeadingBit(select(max(u_input.b.zyw, var_0.b), var_0.b, !vec3<bool>(var_2.a.x, true, true))));
    return any(vec2<bool>(true & var_2.b.x, !(var_1.x > -275f)));
}

fn func_1(arg_0: vec3<bool>) -> Struct_3 {
    global1 = array<Struct_1, 29>();
    global0 = ~29749u;
    let var_0 = firstLeadingBit(23321i);
    var var_1 = arg_0;
    var var_2 = Struct_1(496i, vec2<bool>(func_2(), arg_0.x));
    return Struct_3(!vec4<bool>(true, all(select(vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(arg_0.x, true, var_1.x, arg_0.x), var_2.b.x)), false, any(var_2.b)), arg_0, arg_0, Struct_1(_wgslsmith_div_i32(-2147483647i, 2147483647i), select(vec2<bool>(true, true), arg_0.xz, arg_0.yx)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_4) -> f32 {
    global1 = array<Struct_1, 29>();
    let var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(63709u, ~_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, 0u)), select(vec2<u32>(1u, 1u), vec2<u32>(67811u, 1u), arg_1.d.d.b)), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 63289u, 4294967295u), vec3<u32>(55088u, 4294967295u, 0u))), 4294967295u), select(~vec4<u32>(1u, 1u, 1u, 1u), min(abs(abs(vec4<u32>(4294967295u, 64166u, 57087u, 0u))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 32645u), vec3<u32>(100653u, 1u, 1u)), 1u, 1u, 1u)), select(!(!vec4<bool>(arg_1.b.d.b.x, true, arg_0.x, arg_0.x)), select(vec4<bool>(true, true, true, false), arg_1.b.a, false || arg_1.a.x), vec4<bool>(all(vec4<bool>(arg_0.x, arg_1.c.b.x, arg_0.x, arg_1.a.x)), func_2(), !arg_0.x, true))));
    let var_1 = 1i;
    let var_2 = firstTrailingBit(~(~vec3<u32>(117417u, var_0, var_0) | ~vec3<u32>(var_0, 25942u, 0u)));
    var var_3 = select(var_2.zy, var_2.zy, any(!select(arg_1.a, vec2<bool>(arg_0.x, arg_0.x), arg_1.a.x)));
    return 1297f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(1408f, 699f, all(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(func_4(select(vec2<bool>(true, true), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), true), true), Struct_4(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false)), func_1(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), Struct_1(u_input.b.x, vec2<bool>(true, true)), func_1(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)))))), 1007f);
    let x = u_input.a;
    s_output = StorageBuffer(-2214f, _wgslsmith_mod_i32(u_input.a, u_input.b.x));
}

