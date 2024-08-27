struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(6986u);

var<private> global1: f32 = 1486f;

var<private> global2: array<vec4<f32>, 18>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: vec4<i32>) -> u32 {
    let var_0 = 18396i;
    let var_1 = select(all(vec2<bool>(false, false)) && all(vec3<bool>(true, true, true)), true, false) && false;
    let var_2 = Struct_1(_wgslsmith_sub_u32(~(~(global0.a & 1u)), ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, arg_1), u_input.d.zy), u_input.b.xw)));
    var var_3 = _wgslsmith_div_f32(arg_0, arg_0);
    let var_4 = arg_0;
    return u_input.c;
}

fn func_2() -> u32 {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-856f, 1574f, 2337f) - vec3<f32>(-825f, 1000f, 2107f)))));
    var var_2 = 4294967295u;
    var_2 = ~func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-596f))) - -1000f), 0u, -u_input.a);
    var_0 = true;
    return _wgslsmith_mult_u32(~select(_wgslsmith_dot_vec2_u32(u_input.b.xw, firstLeadingBit(u_input.d.xx)), 4294967295u, true), _wgslsmith_dot_vec4_u32(reverseBits(~(~vec4<u32>(770u, global0.a, u_input.c, global0.a))), _wgslsmith_add_vec4_u32(select(u_input.b | vec4<u32>(u_input.e, 14u, 52538u, global0.a), vec4<u32>(46408u, 48254u, 22287u, 4294967295u), vec4<bool>(true, true, true, false)), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.d.x, u_input.e, 1u, global0.a), select(u_input.b, vec4<u32>(4294967295u, 14055u, global0.a, 58571u), true)))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    global0 = Struct_1(~0u);
    let var_0 = Struct_1(16214u);
    global0 = var_0;
    let var_1 = Struct_1(reverseBits(global0.a));
    var var_2 = vec4<i32>(_wgslsmith_div_i32(~59830i, (_wgslsmith_div_i32(u_input.a.x, -2147483647i) >> (min(var_1.a, 1u) % 32u)) & u_input.a.x), select(-(~(~2147483647i)), 13288i, false), _wgslsmith_mod_i32(1i, ~(-(i32(-1i) * -15015i))), _wgslsmith_mult_i32(u_input.a.x, u_input.a.x));
    return select(vec2<bool>(all(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), true), vec4<bool>(false, false, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true)))), !(!any(vec2<bool>(false, false)))), select(vec2<bool>(true, true), select(vec2<bool>(all(vec2<bool>(false, false)), true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), !select(vec2<bool>(false, false), vec2<bool>(true, true), false)), vec2<bool>(true, !select(false, true, true))), true);
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = func_4(func_2(), Struct_1(~global0.a), Struct_1(_wgslsmith_dot_vec3_u32(firstTrailingBit(~u_input.d.wxw), vec3<u32>(~u_input.b.x, ~global0.a, u_input.e))));
    var var_1 = 1u;
    var var_2 = vec4<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), arg_0.x);
    global2 = array<vec4<f32>, 18>();
    global2 = array<vec4<f32>, 18>();
    return Struct_1(global0.a);
}

fn func_5(arg_0: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-567f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -106f) + -667f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-541f + 1744f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), true)))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))));
    var var_1 = u_input.a;
    var_1 = -vec4<i32>(reverseBits(~(-1i)), -u_input.a.x, u_input.a.x, ~var_1.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, var_0.x, var_0.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(127f, 564f, var_0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1720f, -734f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -138f, _wgslsmith_f_op_f32(-var_0.x))))));
    return all(select(vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, true), false)), true, all(vec2<bool>(true, true))), vec3<bool>(all(vec2<bool>(true, false)), !any(vec4<bool>(false, false, true, true)), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false)), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), vec3<bool>(true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(819f))));
    var var_2 = any(!vec4<bool>(true, var_0 <= _wgslsmith_dot_vec2_i32(u_input.a.yy, vec2<i32>(u_input.a.x, -19950i)), func_5(func_1(vec3<f32>(var_1, 503f, 1128f))), any(vec4<bool>(true, true, true, true))));
    global0 = func_1(vec3<f32>(var_1, 619f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1, -966f, true))), -1615f))));
    var var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(~global0.a, 18u)]) * global2[_wgslsmith_index_u32(global0.a, 18u)])), global2[_wgslsmith_index_u32(12627u, 18u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(~_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(32100u, u_input.c), vec2<u32>(23482u, 1u)), vec2<u32>(global0.a, global0.a)), u_input.b.wz), firstTrailingBit(_wgslsmith_mod_u32(68761u, 43883u)));
}

