struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec2<bool>,
    d: bool,
    e: bool,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17> = array<u32, 17>(124228u, 17430u, 70028u, 13556u, 1u, 4294967295u, 56448u, 1u, 0u, 37445u, 3324u, 26219u, 1u, 3139u, 4294967295u, 1u, 31466u);

var<private> global1: i32;

var<private> global2: array<i32, 14>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: bool) -> u32 {
    var var_0 = abs(~(-vec2<i32>(0i, i32(-1i) * -69445i)));
    var var_1 = Struct_5(Struct_3(false));
    global0 = array<u32, 17>();
    let var_2 = vec4<bool>(!any(!select(vec2<bool>(false, true), arg_0.xx, vec2<bool>(true, false))), arg_0.x, false, arg_0.x);
    global0 = array<u32, 17>();
    return _wgslsmith_div_u32(~(_wgslsmith_mod_u32(u_input.b, global0[_wgslsmith_index_u32(9936u, 17u)]) >> ((u_input.a | u_input.a) % 32u)) >> (u_input.a % 32u), u_input.a);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.x, 963f, arg_1.x, 210f), vec4<f32>(1845f, arg_1.x, arg_1.x, 438f))))))));
    var var_1 = -2147483647i;
    global1 = _wgslsmith_add_i32(-1i, firstTrailingBit(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40296u, 17u)], 14u)]));
    let var_2 = !(!select(vec3<bool>(var_0.x < var_0.x, true, true), select(vec3<bool>(arg_0.a, true, arg_0.a), select(vec3<bool>(arg_0.a, true, true), vec3<bool>(arg_0.a, false, false), false), select(vec3<bool>(arg_0.a, arg_0.a, true), vec3<bool>(false, false, arg_0.a), vec3<bool>(true, true, arg_0.a))), global2[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(101443u, 17u)], 17u)], 17u)], 17u)], 14u)] > global2[_wgslsmith_index_u32(u_input.b, 14u)]));
    global0 = array<u32, 17>();
    return _wgslsmith_mod_i32(-2147483647i, global2[_wgslsmith_index_u32(u_input.a, 14u)]);
}

fn func_1() -> i32 {
    let var_0 = Struct_3(false);
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(func_2(!(!vec3<bool>(var_0.a, false, var_0.a)), _wgslsmith_sub_vec3_i32(-vec3<i32>(global2[_wgslsmith_index_u32(26367u, 14u)], -15101i, 0i), vec3<i32>(-1i, global2[_wgslsmith_index_u32(41918u, 14u)], 20454i)), any(vec3<bool>(var_0.a, var_0.a, false))), abs(23832u)), 17u)], 379f);
    var var_2 = -2147483647i;
    let var_3 = ~vec2<i32>(func_3(Struct_3(var_0.a), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.b, var_1.b, var_1.b), vec3<f32>(var_1.b, var_1.b, 1176f)))) & -_wgslsmith_div_i32(global2[_wgslsmith_index_u32(1u, 14u)], -1i), -1i);
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1637f), _wgslsmith_f_op_f32(floor(var_1.b)));
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(func_1(), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, 1u), 14u)], global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 0u, u_input.a), vec3<u32>(26872u, 14339u, 32096u)), vec3<u32>(u_input.b, global0[_wgslsmith_index_u32(29022u, 17u)], u_input.a) & vec3<u32>(0u, 25568u, 52781u)), 4576u), 14u)], func_1());
    let var_1 = Struct_3(all(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true))));
    let var_2 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-743f * 2229f), _wgslsmith_f_op_f32(step(-950f, -1127f))))), -2294f), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(394f, 421f) * vec2<f32>(-417f, 1340f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(282f, 591f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-316f, -893f))) * _wgslsmith_div_vec2_f32(vec2<f32>(-367f, -143f), vec2<f32>(1000f, -551f))))))));
    var var_3 = false;
    var_3 = all(select(!(!select(vec3<bool>(var_1.a, false, true), vec3<bool>(false, var_1.a, var_1.a), vec3<bool>(false, true, var_1.a))), vec3<bool>(!all(vec3<bool>(true, var_1.a, false)), false, false), true));
    let x = u_input.a;
    s_output = StorageBuffer(select(-vec2<i32>(63354i, var_0.x), abs(~(~var_0.zz)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.x), -394f)) != var_2.x));
}

