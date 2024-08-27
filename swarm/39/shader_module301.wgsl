struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -3840i;

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 4294967295u, 30374u, 1u);

var<private> global2: vec3<bool>;

var<private> global3: array<i32, 24> = array<i32, 24>(31304i, 0i, 2147483647i, 0i, 37427i, -8369i, -9087i, 0i, -3149i, -24970i, -1i, i32(-2147483648), 0i, 1i, 20679i, -18293i, 0i, 2147483647i, 15154i, -4115i, -49220i, i32(-2147483648), i32(-2147483648), -1i);

var<private> global4: array<Struct_1, 23>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    return ~global1.x;
}

fn func_2() -> vec3<f32> {
    var var_0 = global4[_wgslsmith_index_u32(~func_3(global4[_wgslsmith_index_u32(max(~global1.x & global1.x, select(~26469u, max(1u, global1.x), false)), 23u)]), 23u)];
    let var_1 = vec4<i32>(_wgslsmith_div_i32(u_input.b.x ^ firstTrailingBit(select(global3[_wgslsmith_index_u32(0u, 24u)], -2147483647i, global2.x)), u_input.a), firstLeadingBit(global3[_wgslsmith_index_u32(37180u, 24u)]), _wgslsmith_dot_vec2_i32(~vec2<i32>(global3[_wgslsmith_index_u32(70589u, 24u)], -36890i) >> (vec2<u32>(_wgslsmith_dot_vec3_u32(global1.zyx, vec3<u32>(36775u, 25865u, 35741u)), _wgslsmith_mult_u32(33864u, global1.x)) % vec2<u32>(32u)), select(u_input.b, countOneBits(~u_input.b), global2.zz)), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1.x, ~global1.x), 24u)]);
    var var_2 = 15321u >= abs(min(~4294967295u, global1.x) << (_wgslsmith_div_u32(global1.x, _wgslsmith_div_u32(2659u, 21451u)) % 32u));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1439f, -424f, 1207f, 1003f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1583f, 2199f, -851f, 198f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-775f, -405f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -855f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_div_f32(-468f, 465f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-467f))))));
    let var_4 = select(vec4<bool>(all(global2.yy), -1i == select(global3[_wgslsmith_index_u32(59010u, 24u)], -2147483647i, false), 1u != abs(func_3(Struct_1(true))), !(true & all(vec4<bool>(false, false, global2.x, false)))), !vec4<bool>(true, true, global1.x > ~global1.x, any(!vec2<bool>(false, global2.x))), all(!select(global2.zz, global2.yz, vec2<bool>(true, true))));
    return _wgslsmith_div_vec3_f32(var_3.wyy, vec3<f32>(var_3.x, var_3.x, 860f));
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: vec3<f32>) -> vec2<u32> {
    global2 = select(!(!select(!vec3<bool>(global2.x, false, true), select(vec3<bool>(global2.x, arg_0, false), vec3<bool>(true, global2.x, false), false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, arg_0, global2.x)))), !vec3<bool>(640f != _wgslsmith_f_op_f32(abs(arg_2.x)), false, all(select(vec4<bool>(global2.x, false, false, true), vec4<bool>(false, global2.x, false, true), global2.x))), !vec3<bool>(arg_1.x == 1f, any(select(vec4<bool>(arg_0, arg_0, arg_0, global2.x), vec4<bool>(global2.x, true, global2.x, arg_0), vec4<bool>(arg_0, false, true, arg_0))), global2.x & arg_0));
    return _wgslsmith_mod_vec2_u32(~(~global1.xy), global1.xz) | _wgslsmith_mult_vec2_u32(global1.xz ^ global1.xw, ~(~max(vec2<u32>(global1.x, global1.x), vec2<u32>(83719u, global1.x))));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = 36320u;
    let var_1 = 32746u;
    global4 = array<Struct_1, 23>();
    let var_2 = ~(~vec2<i32>(arg_0.x, u_input.a));
    let var_3 = arg_3;
    return func_4(false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2))) + vec2<f32>(850f, _wgslsmith_f_op_f32(arg_2 * arg_2))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-933f, -1370f), vec2<f32>(2167f, -292f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) - vec3<f32>(_wgslsmith_f_op_f32(max(288f, arg_2)), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(arg_2 - arg_2))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1009f, arg_2, arg_2))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(629f))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(ceil(var_0))))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1682f * var_0))), -1000f)));
    global3 = array<i32, 24>();
    var var_2 = true;
    var var_3 = !vec3<bool>(_wgslsmith_dot_vec2_u32(func_1(vec4<i32>(-4750i, u_input.b.x, u_input.a, -16332i), Struct_1(true), 546f, global4[_wgslsmith_index_u32(0u, 23u)]), global1.yw & vec2<u32>(global1.x, global1.x)) > global1.x, global2.x, true);
    global2 = !select(vec3<bool>(!var_3.x, any(select(global2.yz, vec2<bool>(global2.x, global2.x), vec2<bool>(var_3.x, global2.x))), global2.x), vec3<bool>(true, true, true), select(select(!vec3<bool>(false, false, var_3.x), vec3<bool>(true, true, true), vec3<bool>(true, global2.x, true)), select(!vec3<bool>(global2.x, var_3.x, false), vec3<bool>(global2.x, var_3.x, true), global2.x), !(var_3.x || var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1288f, var_1, var_0), vec3<f32>(var_0, var_1, 458f), false))))));
}

