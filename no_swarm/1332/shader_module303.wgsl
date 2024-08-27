struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1;

var<private> global2: array<i32, 1>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: f32, arg_3: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2), 391f)) >= _wgslsmith_f_op_f32(sign(arg_2));
    var var_1 = Struct_1(vec3<u32>(105997u, ~(~global1.a.x), 1u), !global1.b);
    global1 = Struct_1(~global1.a, select(!(!select(var_1.b, var_1.b, var_1.b.x)), global1.b, global1.b));
    var var_2 = Struct_1(vec3<u32>(arg_0, 15143u, 1u), select(vec2<bool>(false, abs(var_1.a.x) < 0u), select(select(select(vec2<bool>(global1.b.x, false), vec2<bool>(var_1.b.x, global1.b.x), vec2<bool>(false, true)), global1.b, var_1.b.x), !vec2<bool>(var_1.b.x, global1.b.x), true), vec2<bool>(false, var_0)));
    var var_3 = select(vec4<bool>(var_2.b.x, all(!select(vec4<bool>(true, var_0, var_2.b.x, var_0), vec4<bool>(false, var_1.b.x, global1.b.x, false), vec4<bool>(true, global1.b.x, false, false))), true, any(vec2<bool>(var_0, global1.b.x)) == !var_2.b.x), !(!(!vec4<bool>(false, false, var_1.b.x, var_2.b.x))), all(!select(vec4<bool>(var_2.b.x, var_0, var_1.b.x, var_1.b.x), !vec4<bool>(global1.b.x, var_0, var_1.b.x, true), !vec4<bool>(true, var_1.b.x, var_0, false))));
    return _wgslsmith_div_u32(1u, var_1.a.x);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global2 = array<i32, 1>();
    global2 = array<i32, 1>();
    let var_0 = vec3<bool>(!any(!(!arg_2.b)), true, !arg_0.b.x);
    global1 = Struct_1(~(~u_input.a.yzx), select(vec2<bool>(true, arg_1.b.x | true), vec2<bool>(true, arg_0.b.x), false));
    let var_1 = _wgslsmith_div_i32(firstTrailingBit(2147483647i), global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(arg_1.a.x, arg_0.a.x), 1u)]);
    return ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(func_3(~arg_1.a.x, abs(arg_2.a), _wgslsmith_f_op_f32(f32(-1f) * -213f), u_input.a.wzx), global1.a.x), ~(~u_input.a.x));
}

fn func_1(arg_0: u32, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_1(~global1.a ^ (_wgslsmith_sub_vec3_u32(u_input.a.zww | global1.a, u_input.a.xyw) << (max(_wgslsmith_mult_vec3_u32(u_input.a.zyw, global1.a), _wgslsmith_sub_vec3_u32(vec3<u32>(2722u, 0u, 69282u), global1.a)) % vec3<u32>(32u))), global1.b);
    global0 = (0i & global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 55393u, arg_0), vec3<u32>(global1.a.x, 1u, u_input.a.x)) ^ func_2(Struct_1(vec3<u32>(arg_0, 1u, arg_0), global1.b), Struct_1(global1.a, global1.b), Struct_1(global1.a, vec2<bool>(false, false))), 1u)]) == _wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_clamp_i32(reverseBits(-1i), -global2[_wgslsmith_index_u32(0u, 1u)], _wgslsmith_add_i32(global2[_wgslsmith_index_u32(arg_0, 1u)], global2[_wgslsmith_index_u32(40715u, 1u)])), global2[_wgslsmith_index_u32(u_input.a.x, 1u)]), -1i);
    var var_1 = Struct_1(vec3<u32>(4294967295u, ~(~52447u), _wgslsmith_mult_u32(0u, 1u)) ^ _wgslsmith_sub_vec3_u32(select(global1.a, vec3<u32>(arg_0, 1u, u_input.a.x) & vec3<u32>(86811u, arg_0, 0u), true), u_input.a.yzw), !var_0.b);
    var var_2 = !select(vec3<bool>((arg_1.x > arg_1.x) && select(var_1.b.x, global1.b.x, true), false, true), select(vec3<bool>(false | var_0.b.x, true, global1.b.x), select(vec3<bool>(true, false, false), select(vec3<bool>(global1.b.x, true, true), vec3<bool>(false, true, var_1.b.x), vec3<bool>(false, true, var_1.b.x)), !vec3<bool>(global1.b.x, true, global1.b.x)), vec3<bool>(any(vec3<bool>(var_1.b.x, true, true)), any(vec3<bool>(global1.b.x, var_0.b.x, true)), var_1.b.x)), select(vec3<bool>(select(false, var_0.b.x, var_0.b.x), 4729i >= global2[_wgslsmith_index_u32(4928u, 1u)], var_1.b.x), !select(vec3<bool>(false, true, var_0.b.x), vec3<bool>(var_1.b.x, global1.b.x, false), vec3<bool>(var_0.b.x, false, var_0.b.x)), !(!vec3<bool>(var_1.b.x, var_0.b.x, var_1.b.x))));
    let var_3 = true;
    return Struct_1(global1.a, vec2<bool>(false, true));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = !arg_2.b.x;
    global1 = func_1(arg_2.a.x, vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) + _wgslsmith_f_op_f32(exp2(arg_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))));
    let var_1 = Struct_1(reverseBits(vec3<u32>(u_input.b, 43145u, ~77445u)), vec2<bool>(!arg_2.b.x, firstLeadingBit(~global1.a.x) <= _wgslsmith_div_u32(33633u, firstLeadingBit(64839u))));
    var var_2 = global1.a.x;
    global0 = 1f != arg_0.x;
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>) -> bool {
    let var_0 = 810f;
    var var_1 = !(!(!arg_0.b.x));
    var var_2 = Struct_1(countOneBits(vec3<u32>(~func_2(arg_0, arg_0, arg_0), 1u, _wgslsmith_clamp_u32(u_input.b, u_input.a.x, 15852u | u_input.b))), select(arg_0.b, vec2<bool>(!(!arg_0.b.x), arg_0.a.x <= 33466u), global1.b.x));
    var var_3 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(-33430i, firstTrailingBit(0i)), 2147483647i);
    global1 = arg_0;
    return !(!(true & arg_0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs((vec2<u32>(18258u, 4294967295u) | _wgslsmith_div_vec2_u32(vec2<u32>(global1.a.x, 56927u), u_input.a.xy)) ^ countOneBits(~vec2<u32>(4294967295u, 21628u) | _wgslsmith_clamp_vec2_u32(vec2<u32>(65363u, u_input.a.x), vec2<u32>(1u, global1.a.x), vec2<u32>(global1.a.x, global1.a.x))));
    var var_1 = -838f;
    let var_2 = Struct_1(~(~_wgslsmith_add_vec3_u32(firstLeadingBit(u_input.a.zyx), ~u_input.a.xxw)), vec2<bool>(func_5(func_4(vec2<f32>(-1166f, 1000f), u_input.a, func_1(1u, vec3<f32>(-505f, -156f, -1000f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(218f, 870f, 447f) + vec3<f32>(1000f, -1891f, 1346f))))), all(vec4<bool>(global1.b.x, global1.b.x, global1.b.x, true)) & !func_1(6512u, vec3<f32>(943f, 793f, 399f)).b.x));
    var var_3 = var_2;
    var var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, _wgslsmith_clamp_u32(42976u, _wgslsmith_sub_u32(_wgslsmith_add_u32(var_3.a.x, u_input.b), _wgslsmith_mod_u32(0u, 4874u)), u_input.b)), vec3<u32>(var_4.a.x | _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.x, 0u), var_2.a), var_3.a.x), _wgslsmith_clamp_u32(func_1(func_4(vec2<f32>(-984f, -1161f), u_input.a, Struct_1(vec3<u32>(0u, var_0.x, var_4.a.x), vec2<bool>(true, true))).a.x, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(101f, -310f, -415f)))).a.x, _wgslsmith_sub_u32(26110u, func_3(var_2.a.x, u_input.a.yxw, 399f, var_4.a)), _wgslsmith_sub_u32(select(var_2.a.x, 1u, var_3.b.x), ~1u)), countOneBits(u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(591f))))));
}

