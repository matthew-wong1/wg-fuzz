struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
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

var<private> global0: i32;

var<private> global1: Struct_1;

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: u32 = 4294967295u;

var<private> global4: vec2<f32> = vec2<f32>(-993f, -1073f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>) -> vec2<bool> {
    global4 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(712f, -1130f)));
    global3 = min(arg_0, 4294967295u);
    var var_0 = Struct_1(~vec2<i32>(-1i, _wgslsmith_div_i32(u_input.a.x, 20893i)), ~arg_0 >> (~arg_0 % 32u));
    global1 = Struct_1(min(~_wgslsmith_div_vec2_i32(-vec2<i32>(global1.a.x, var_0.a.x), vec2<i32>(u_input.b, var_0.a.x)), countOneBits(-(u_input.a ^ vec2<i32>(37504i, global1.a.x)))), min(35000u, 4294967295u));
    var var_1 = Struct_1(vec2<i32>(-1i) * -vec2<i32>(abs(u_input.a.x), 101317i | u_input.a.x), arg_0);
    return vec2<bool>(global2.x, true);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(global1.a, (_wgslsmith_div_u32(max(global1.b, 0u), 3659u) | (_wgslsmith_div_u32(global1.b, global1.b) & ~global1.b)) << ((1u << (global1.b % 32u)) % 32u));
    global2 = func_3(77735u, vec4<u32>(var_0.b, _wgslsmith_mod_u32(~min(1u, var_0.b), var_0.b), global1.b, 4294967295u));
    var var_1 = Struct_1(select(vec2<i32>(_wgslsmith_clamp_i32(global1.a.x, -2147483647i, global1.a.x) << ((var_0.b >> (var_0.b % 32u)) % 32u), u_input.b), u_input.a, vec2<bool>(false, false)), ~(~6370u | _wgslsmith_sub_u32(countOneBits(31449u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, global1.b, 1u), vec3<u32>(0u, global1.b, 0u)))));
    let var_2 = !vec4<bool>(select(global2.x, global2.x, false), true, true, any(!select(vec2<bool>(global2.x, true), vec2<bool>(global2.x, false), false)));
    global1 = Struct_1(select(vec2<i32>(-21681i, var_1.a.x), select(global1.a, vec2<i32>(var_0.a.x, ~var_1.a.x), false), true), global1.b);
    return Struct_1(-abs(-vec2<i32>(2147483647i, 4639i)), ~countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.b, global1.b), vec2<u32>(var_0.b, var_1.b)) << (select(var_1.b, var_1.b, global2.x) % 32u)));
}

fn func_1() -> Struct_1 {
    global0 = _wgslsmith_add_i32(890i, ~min(u_input.b >> (~global1.b % 32u), -(~global1.a.x)));
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(1000f)), global4.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1192f + 837f)))), global4.x) + vec4<f32>(-744f, _wgslsmith_f_op_f32(floor(170f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global4.x))), -2219f));
    let var_1 = max(global1.a << (_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(11138u, global1.b), vec2<u32>(global1.b, 4294967295u)), vec2<u32>(0u, global1.b)), ~firstTrailingBit(vec2<u32>(global1.b, global1.b))) % vec2<u32>(32u)), vec2<i32>(1i, u_input.b));
    var var_2 = reverseBits(~global1.b);
    let var_3 = func_2();
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_1 {
    global0 = -2147483647i;
    let var_0 = arg_2;
    var var_1 = firstTrailingBit(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 33649i, arg_2.a.x, arg_0.a.x), ~vec4<i32>(-1i, u_input.a.x, -7485i, -36348i)), 0i) >> (~firstTrailingBit(select(vec2<u32>(arg_0.b, global1.b), vec2<u32>(global1.b, arg_2.b), true)) % vec2<u32>(32u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(global4.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f * 689f))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-global4.x))))));
    var var_3 = max(global1.a.x, 0i);
    return func_1();
}

fn func_5(arg_0: bool, arg_1: vec3<f32>, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3;
    global4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(global4.x))))), 1000f);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-203f, arg_1.x, -969f)))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, 2043f, global4.x) - vec3<f32>(-1000f, arg_1.x, arg_1.x)) - arg_1), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(705f, -1199f, arg_1.x))), _wgslsmith_f_op_vec3_f32(-arg_1))))));
    let var_2 = _wgslsmith_clamp_i32(_wgslsmith_sub_i32(1i, var_0.a.x), 40391i, abs(~(0i)));
    var var_3 = arg_1;
    return func_4(Struct_1(vec2<i32>(~var_2 >> (min(4294967295u, global1.b) % 32u), ~54574i), ~1u), _wgslsmith_f_op_f32(abs(var_1.x)), arg_3, func_4(func_1(), -1146f, Struct_1(vec2<i32>(~(-2147483647i), ~0i), 1u), select(~arg_3.a, -vec2<i32>(5611i, 52439i), vec2<bool>(true, true))).a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(true, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global4.x, global4.x, global4.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, -137f, -672f) - vec3<f32>(819f, global4.x, -358f)))), vec3<f32>(-253f, _wgslsmith_f_op_f32(-global4.x), global4.x), any(select(vec2<bool>(global2.x, global2.x), !vec2<bool>(global2.x, true), global2.x)))), ((_wgslsmith_div_vec3_u32(vec3<u32>(0u, 0u, 77919u), vec3<u32>(0u, global1.b, 4427u)) ^ (vec3<u32>(global1.b, global1.b, 0u) ^ vec3<u32>(5534u, global1.b, 4294967295u))) ^ vec3<u32>(6913u, ~0u, global1.b)) >> (((vec3<u32>(0u, global1.b, global1.b) | _wgslsmith_div_vec3_u32(vec3<u32>(48705u, 36865u, 42436u), vec3<u32>(global1.b, 1u, 4373u))) << (_wgslsmith_sub_vec3_u32(~vec3<u32>(45994u, global1.b, 38006u), abs(vec3<u32>(19012u, 0u, 4294967295u))) % vec3<u32>(32u))) % vec3<u32>(32u)), func_4(func_1(), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.x * _wgslsmith_f_op_f32(-1905f + global4.x)), 547f), func_2(), abs(vec2<i32>(~(-28770i), i32(-1i) * -1i))));
    global0 = max(var_0.a.x, min(0i, u_input.a.x));
    global0 = -13476i;
    let var_1 = var_0;
    var var_2 = any(vec2<bool>(true, !(!global2.x)));
    var var_3 = var_1;
    let var_4 = func_5(false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, 1011f, -211f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, -485f, global4.x))))), reverseBits(~vec3<u32>(0u | var_3.b, ~var_0.b, global1.b)), func_5(false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(2509f, _wgslsmith_f_op_f32(global4.x + global4.x), _wgslsmith_f_op_f32(min(833f, 831f)))), max(~(vec3<u32>(4294967295u, var_1.b, 39710u) << (vec3<u32>(var_0.b, var_3.b, 9662u) % vec3<u32>(32u))), abs(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.b, 4294967295u, var_0.b), vec3<u32>(global1.b, global1.b, var_3.b)))), var_0));
    var var_5 = func_5(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(225f, _wgslsmith_f_op_f32(step(global4.x, global4.x)), -103f), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, global4.x, -402f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global4.x, global4.x, 956f), vec3<f32>(425f, global4.x, global4.x), vec3<bool>(global2.x, global2.x, true))))))), vec3<u32>(~0u, var_3.b, ~countOneBits(_wgslsmith_div_u32(global1.b, var_0.b))), func_5(global2.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, 519f, -614f) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global4.x, global4.x, 491f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(524f, -945f, global4.x)), vec3<bool>(all(vec3<bool>(global2.x, global2.x, global2.x)), false, any(vec2<bool>(global2.x, false))))), min(select(abs(vec3<u32>(var_3.b, var_3.b, 19682u)), ~vec3<u32>(5640u, var_3.b, 0u), vec3<bool>(true, global2.x, global2.x)), vec3<u32>(max(79218u, 4294967295u), func_5(true, vec3<f32>(1968f, 721f, 545f), vec3<u32>(var_4.b, global1.b, 1u), var_4).b, ~var_1.b)), func_2()));
    var var_6 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x);
}

