struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec2<bool>(false, false), 14238i), Struct_1(vec2<bool>(true, true), 3750i), Struct_1(vec2<bool>(false, false), 1i), Struct_1(vec2<bool>(true, true), -27205i), Struct_1(vec2<bool>(false, true), -94302i), Struct_1(vec2<bool>(true, false), -43800i), Struct_1(vec2<bool>(false, false), -12357i), Struct_1(vec2<bool>(true, true), 35467i), Struct_1(vec2<bool>(true, true), 1i), Struct_1(vec2<bool>(true, true), -7501i), Struct_1(vec2<bool>(true, true), 2147483647i), Struct_1(vec2<bool>(false, true), 1i), Struct_1(vec2<bool>(false, true), 2147483647i), Struct_1(vec2<bool>(false, false), i32(-2147483648)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: i32, arg_3: vec3<bool>) -> Struct_1 {
    global0 = array<Struct_1, 14>();
    let var_0 = arg_0.a.x;
    let var_1 = Struct_1(arg_3.yy, 0i);
    global0 = array<Struct_1, 14>();
    var var_2 = Struct_1(vec2<bool>(var_1.a.x, var_0), arg_2);
    return Struct_1(arg_0.a, _wgslsmith_add_i32(arg_2, 6041i));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = Struct_1(!select(!(!vec2<bool>(arg_2.a.x, arg_2.a.x)), select(vec2<bool>(false, true), arg_2.a, arg_1.xx), !(arg_2.a.x & arg_2.a.x)), -2147483647i);
    global0 = array<Struct_1, 14>();
    let var_1 = var_0;
    global0 = array<Struct_1, 14>();
    var var_2 = global0[_wgslsmith_index_u32(arg_0, 14u)];
    return select(vec2<bool>(true != any(vec3<bool>(false, var_1.a.x, var_2.a.x)), false), !vec2<bool>(var_2.a.x, true), !all(select(vec4<bool>(true, false, false, var_1.a.x), select(vec4<bool>(var_1.a.x, arg_2.a.x, var_1.a.x, arg_2.a.x), vec4<bool>(var_0.a.x, arg_2.a.x, true, var_2.a.x), vec4<bool>(arg_2.a.x, arg_1.x, var_2.a.x, arg_2.a.x)), !var_0.a.x)));
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: f32) -> Struct_1 {
    let var_0 = u_input.d.x;
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    var var_1 = func_2(Struct_1(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), true), _wgslsmith_sub_i32(u_input.a.x, firstLeadingBit(2147483647i))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, all(vec2<bool>(true, true))), true), u_input.a.x, select(vec3<bool>(true, all(vec2<bool>(true, true)), !all(vec3<bool>(false, true, false))), vec3<bool>(select(true, true, true), true, true), vec3<bool>(any(vec4<bool>(true, true, true, true)), true, any(vec2<bool>(true, true)))));
    global0 = array<Struct_1, 14>();
    return Struct_1(select(!func_3(abs(18477u), vec3<bool>(var_1.a.x, false, true), global0[_wgslsmith_index_u32(var_0, 14u)]), !func_2(global0[_wgslsmith_index_u32(abs(var_0), 14u)], vec3<bool>(true, true, true), -33786i, !vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x)).a, !var_1.a), ~_wgslsmith_add_i32(select(-2147483647i, 0i, var_1.a.x), -var_1.b) >> (u_input.b.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<bool>(~firstTrailingBit(0u) <= u_input.b.x, false), 2147483647i);
    var_0 = func_1(vec4<f32>(1090f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1580f + 226f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1220f) + _wgslsmith_f_op_f32(f32(-1f) * -1367f))), _wgslsmith_f_op_f32(f32(-1f) * -1217f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2395f))), _wgslsmith_f_op_f32(f32(-1f) * -929f))), -33264i, -663f);
    var var_1 = ~u_input.c;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1393f, 1243f, var_0.a.x)) + _wgslsmith_f_op_f32(f32(-1f) * -505f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-565f - 361f), -315f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(713f + 1794f) * _wgslsmith_f_op_f32(floor(-162f))))), 1165f, 1000f);
    let var_3 = var_0.a;
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(var_2.x + -959f), -1000f, var_2.x);
    var var_4 = func_2(Struct_1(select(!var_0.a, !vec2<bool>(var_3.x, true), false), -var_0.b), vec3<bool>(select(var_3.x, var_0.a.x, var_0.a.x), any(select(select(vec3<bool>(var_0.a.x, var_3.x, false), vec3<bool>(true, var_0.a.x, false), vec3<bool>(var_3.x, false, false)), select(vec3<bool>(false, var_3.x, true), vec3<bool>(false, var_0.a.x, true), vec3<bool>(var_0.a.x, var_0.a.x, true)), var_0.a.x)), 76239u >= ~(~u_input.b.x)), u_input.c, !(!select(!vec3<bool>(true, var_0.a.x, var_3.x), vec3<bool>(var_0.a.x, true, false), !vec3<bool>(var_0.a.x, true, false))));
    global0 = array<Struct_1, 14>();
    let var_5 = var_2.yz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(firstLeadingBit(-vec3<i32>(u_input.a.x, -2147483647i, -2147483647i)), _wgslsmith_add_vec3_i32(u_input.a.zwz, ~vec3<i32>(-1i, 0i, -2147483647i))));
}

