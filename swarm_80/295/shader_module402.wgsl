struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 4>;

var<private> global1: bool;

var<private> global2: array<Struct_1, 14>;

var<private> global3: vec3<u32>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec3<f32>) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(-109f, _wgslsmith_f_op_f32(-arg_1), true)), arg_1)));
}

fn func_2(arg_0: vec2<u32>, arg_1: f32) -> vec2<f32> {
    var var_0 = Struct_2(Struct_1(u_input.b.x));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1), -663f)))));
}

fn func_3(arg_0: u32) -> vec3<bool> {
    var var_0 = !select(select(select(vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, false, true), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), true)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), true);
    var var_1 = firstLeadingBit(4294967295u);
    var_0 = vec3<bool>(var_0.x, true | var_0.x, any(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(var_0.x, var_0.x, false, var_0.x), true))));
    let var_2 = global2[_wgslsmith_index_u32(abs(arg_0), 14u)];
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global3.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, 31582u), u_input.b.zzx), abs(u_input.b.zxz)), _wgslsmith_mult_u32(0u, _wgslsmith_dot_vec3_u32(u_input.b.xyy, vec3<u32>(arg_0, 16753u, global3.x))))) << ((firstTrailingBit(~min(84170u, u_input.b.x)) | _wgslsmith_div_u32(global3.x, _wgslsmith_add_u32(25985u, _wgslsmith_sub_u32(1u, var_2.a)))) % 32u), 14u)];
    return select(select(vec3<bool>(true, any(vec3<bool>(true, true, false)), !(false | var_0.x)), vec3<bool>(any(!vec3<bool>(var_0.x, true, var_0.x)), true, all(!vec3<bool>(var_0.x, var_0.x, var_0.x))), !var_0.x), select(select(vec3<bool>(!var_0.x, 0u > global3.x, any(vec3<bool>(false, var_0.x, true))), vec3<bool>(var_0.x, !var_0.x, var_0.x & false), all(vec3<bool>(var_0.x, var_0.x, false))), vec3<bool>(true, -u_input.a <= 1i, !any(vec4<bool>(true, var_0.x, var_0.x, var_0.x))), vec3<bool>(true, false, select(var_0.x, true, false) == var_0.x)), vec3<bool>(!(!(var_0.x && var_0.x)), var_0.x, select(false, !any(vec4<bool>(var_0.x, false, true, var_0.x)), var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(func_1(Struct_1(~1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-168f * 243f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-2503f, 839f, 689f), vec3<f32>(313f, 746f, 1118f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2641f, 509f, 1124f) + vec3<f32>(101f, 118f, -165f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(119f, -1134f) - vec2<f32>(1f, 1f))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(func_2(global3.yy, _wgslsmith_f_op_f32(f32(-1f) * -1792f)))));
    var var_1 = false;
    var var_2 = global3.x;
    var_1 = all(func_3(u_input.b.x));
    global1 = any(!vec2<bool>(true, _wgslsmith_f_op_f32(var_0.x * 201f) >= _wgslsmith_f_op_f32(1532f * var_0.x)));
    var var_3 = global2[_wgslsmith_index_u32(~(~u_input.b.x), 14u)];
    var_3 = global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_clamp_u32(~u_input.b.x, _wgslsmith_add_u32(~firstTrailingBit(0u), ~_wgslsmith_sub_u32(48691u, 1u)), u_input.b.x)), 14u)];
    var var_4 = Struct_2(Struct_1(_wgslsmith_mod_u32(4294967295u, global3.x)));
    let var_5 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(abs(-189f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(366f, -147f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.x, var_0.x, 148f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-797f, -1000f, 837f), vec3<f32>(var_5.x, -106f, 218f)))))))), ~_wgslsmith_mult_vec3_u32(u_input.b.zyz, u_input.b.wyx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(249f, 1170f, var_5.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 1000f, 168f) - vec3<f32>(1688f, var_5.x, -1090f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_5.x, var_5.x, 1589f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, 367f, -115f))), u_input.a == u_input.a)))));
}

