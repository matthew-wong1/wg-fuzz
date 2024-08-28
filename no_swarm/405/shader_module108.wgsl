struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-2604i, 15639i, 27821i, -1i);

var<private> global1: array<i32, 5>;

var<private> global2: vec2<i32>;

var<private> global3: vec4<bool>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> bool {
    global0 = _wgslsmith_clamp_vec4_i32(u_input.e, vec4<i32>(global1[_wgslsmith_index_u32(arg_0.x, 5u)], global1[_wgslsmith_index_u32(u_input.a.x, 5u)], _wgslsmith_mult_i32(-1i, -42832i), global2.x ^ _wgslsmith_dot_vec3_i32(u_input.e.xzz, abs(vec3<i32>(global2.x, global2.x, global0.x)))), ~vec4<i32>(global2.x << (27858u % 32u), firstLeadingBit(~global0.x), global0.x, abs(-1i)));
    global1 = array<i32, 5>();
    global3 = select(!(!(!vec4<bool>(true, false, global3.x, false))), !(!select(!vec4<bool>(global3.x, false, global3.x, false), vec4<bool>(global3.x, true, true, global3.x), vec4<bool>(false, global3.x, false, global3.x))), global3.x);
    let var_0 = arg_1;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -503f), _wgslsmith_f_op_f32(f32(-1f) * -652f), var_0.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)) + _wgslsmith_f_op_f32(ceil(var_0.a.x))))));
    return var_1.x <= 1977f;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec4<bool> {
    global2 = u_input.c;
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1935f, arg_2.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.a.x + 299f), -354f))), arg_2.a.x, _wgslsmith_f_op_f32(arg_2.a.x - arg_2.a.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_0.a.yyz)))));
    global0 = ~u_input.e;
    global0 = u_input.e;
    global1 = array<i32, 5>();
    return vec4<bool>(true, false, true, !func_3(u_input.a.wxx << (~u_input.a.xzy % vec3<u32>(32u)), arg_2));
}

fn func_1(arg_0: f32) -> vec4<f32> {
    let var_0 = firstLeadingBit(7168i);
    global3 = vec4<bool>(global3.x, false, any(select(global3.xwz, vec3<bool>(global3.x, false, global3.x), true)) || true, global3.x);
    let var_1 = ~u_input.a.x;
    global3 = select(select(select(select(select(vec4<bool>(global3.x, global3.x, false, false), vec4<bool>(false, true, false, global3.x), vec4<bool>(global3.x, true, true, false)), !vec4<bool>(false, true, false, global3.x), vec4<bool>(false, false, true, false)), !(!vec4<bool>(true, global3.x, false, true)), global3.x), vec4<bool>(false, arg_0 == -421f, global3.x, arg_0 < _wgslsmith_f_op_f32(-978f - arg_0)), true), !vec4<bool>(!global3.x, global3.x, global3.x, true), global3.x);
    global3 = select(!(!(!select(vec4<bool>(false, global3.x, true, true), vec4<bool>(global3.x, global3.x, false, global3.x), vec4<bool>(true, true, global3.x, global3.x)))), select(!(!(!vec4<bool>(global3.x, false, global3.x, global3.x))), !select(select(vec4<bool>(true, global3.x, global3.x, global3.x), vec4<bool>(global3.x, true, true, false), global3.x), vec4<bool>(global3.x, global3.x, global3.x, global3.x), !vec4<bool>(global3.x, global3.x, true, global3.x)), !func_2(Struct_1(vec4<f32>(arg_0, -179f, arg_0, arg_0)), u_input.a.x, Struct_1(vec4<f32>(arg_0, 313f, arg_0, arg_0)))), !(!(!select(vec4<bool>(false, global3.x, true, global3.x), vec4<bool>(global3.x, global3.x, false, false), global3.x))));
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_div_f32(874f, arg_0), _wgslsmith_f_op_f32(max(arg_0, arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global0.ww;
    global2 = vec2<i32>(min(~u_input.e.x, -47006i), -1i);
    global0 = reverseBits(u_input.e);
    global2 = u_input.e.ww;
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1746f), -690f) - -708f))));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_0.a - _wgslsmith_f_op_vec4_f32(-var_0.a)), _wgslsmith_f_op_vec4_f32(trunc(var_0.a)), global3.x)) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(795f, var_0.a.x, -444f, var_0.a.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_0.a, vec4<f32>(var_0.a.x, var_0.a.x, -102f, -1001f))) * var_0.a)))));
    let var_1 = Struct_1(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)) + 1f), _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x))))));
    var var_2 = var_1;
    global2 = abs(-global0.yw);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~u_input.a.x << (u_input.a.x % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -423f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(279f, var_1.a.x), _wgslsmith_f_op_f32(-var_0.a.x))))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.a.x, 1084f), -573f))));
}

