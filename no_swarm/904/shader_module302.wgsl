struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 8>;

var<private> global2: Struct_4 = Struct_4(vec3<bool>(true, false, true));

var<private> global3: i32;

var<private> global4: Struct_4;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2() -> Struct_4 {
    global3 = _wgslsmith_mult_i32(_wgslsmith_div_i32(global0.a.x, 21084i), 1i);
    var var_0 = select(global2.a.x, all(global4.a), all(global2.a.zy));
    global0 = Struct_1(-abs(vec3<i32>(-43571i, _wgslsmith_div_i32(global0.a.x, global0.a.x), -1i)));
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(max(~_wgslsmith_div_i32(2147483647i, global0.a.x), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(5110i, -2147483647i, global0.a.x), global0.a), -27393i)), global0.a.x), global0.a.x, ~firstLeadingBit(-52322i));
    let var_2 = min(global0.a.x | 0i, global0.a.x | _wgslsmith_sub_i32((global0.a.x << (4294967295u % 32u)) | -global0.a.x, _wgslsmith_mult_i32(global0.a.x & 2147483647i, global0.a.x)));
    return Struct_4(global2.a);
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = _wgslsmith_sub_i32(-countOneBits(global0.a.x), -1i) | _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(global0.a, -global0.a), global0.a.x);
    global4 = func_2();
    let var_1 = 960f;
    var var_2 = 2351i;
    global0 = global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(0u, 1u), 8u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1)) * var_1) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_1)), var_1))) - 181f);
}

fn func_1(arg_0: vec4<f32>) -> i32 {
    var var_0 = u_input.a.xy;
    let var_1 = func_2();
    var var_2 = Struct_5(u_input.a.zx, countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(35638u, 4294967295u), u_input.a.wz << (vec2<u32>(u_input.a.x, 0u) % vec2<u32>(32u)))) ^ ~vec2<u32>(max(var_0.x, var_0.x), var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(~0u))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(883f + arg_0.x))))));
    let var_3 = Struct_2(~_wgslsmith_dot_vec3_u32(u_input.a.wyw, ~u_input.a.yzw));
    return ~(i32(-1i) * -abs(select(global0.a.x, -11676i, true)));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<bool>) -> vec3<bool> {
    global0 = Struct_1(global0.a);
    let var_0 = 666f;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -256f))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(993f, var_0)), vec2<f32>(_wgslsmith_f_op_f32(var_0 - var_0), 163f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(896f, var_0)));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(max(var_1.x, 135f)), -245f, _wgslsmith_f_op_f32(select(793f, var_1.x, (-2781f > _wgslsmith_f_op_f32(-var_1.x)) && (_wgslsmith_f_op_f32(sign(-2412f)) > _wgslsmith_div_f32(-630f, -1000f)))));
    global4 = Struct_4(vec3<bool>(all(vec2<bool>(true, true)), !(!(!global4.a.x)), global2.a.x));
    return select(func_2().a, global4.a, func_2().a);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_4(func_4(vec3<i32>(_wgslsmith_add_i32(global0.a.x, global0.a.x), ~(-2147483647i) | _wgslsmith_mult_i32(25398i, global0.a.x), _wgslsmith_add_i32(func_1(vec4<f32>(1329f, 1000f, 1624f, 381f)), 1i)), vec3<bool>(false, true, global2.a.x)));
    global0 = global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u, u_input.a.x), 8u)];
    global2 = Struct_4(!(!func_2().a));
    let var_0 = func_2();
    let var_1 = vec3<u32>(_wgslsmith_add_u32(abs(_wgslsmith_mod_u32(~u_input.a.x, 0u)), ~u_input.a.x), 1u, u_input.a.x);
    global1 = array<Struct_1, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(402f, _wgslsmith_f_op_f32(-950f + _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(select(-1100f, 847f, true)))))), ~vec2<u32>(u_input.a.x, ~28881u));
}

