struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<u32>;

var<private> global2: vec3<u32>;

var<private> global3: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: i32, arg_1: f32) -> u32 {
    var var_0 = Struct_1(select(select(select(select(vec2<bool>(false, false), global3.a, global0.a.x), !global3.a, vec2<bool>(true, global3.a.x)), vec2<bool>(!global3.a.x, false), any(!vec3<bool>(global3.a.x, true, global0.a.x))), vec2<bool>(false, all(select(vec3<bool>(global0.a.x, global0.a.x, global3.a.x), vec3<bool>(true, true, true), true))), vec2<bool>(true, global3.a.x)));
    global2 = u_input.a.yyz;
    global3 = Struct_1(vec2<bool>(var_0.a.x, all(vec2<bool>(false, false))));
    global2 = u_input.a.zyz | firstTrailingBit(~u_input.a.wzy);
    let var_1 = arg_1;
    return min(~0u, global2.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    global0 = Struct_1(!vec2<bool>(all(vec4<bool>(arg_0.a.x, global0.a.x, true, arg_0.a.x)), global0.a.x));
    var var_0 = select(_wgslsmith_clamp_vec3_i32(vec3<i32>(min(u_input.d, u_input.c), ~select(20251i, -2147483647i, global3.a.x), -41527i), u_input.b.yyy, reverseBits(u_input.b.xzy ^ -u_input.b.zzz)), firstLeadingBit(vec3<i32>(u_input.d, u_input.d, _wgslsmith_clamp_i32(i32(-1i) * -1i, ~u_input.b.x, -u_input.b.x))), select(vec3<bool>(any(arg_3.a), true != global3.a.x, arg_0.a.x), vec3<bool>(func_3(u_input.b.x, -1720f) >= ~u_input.a.x, any(arg_2.a), arg_2.a.x), !select(vec3<bool>(true, false, false), !vec3<bool>(arg_3.a.x, true, false), true)));
    var_0 = -_wgslsmith_add_vec3_i32(((u_input.b.wxz ^ vec3<i32>(var_0.x, var_0.x, u_input.b.x)) >> (_wgslsmith_mult_vec3_u32(u_input.a.yzy, vec3<u32>(1u, 31598u, 14207u)) % vec3<u32>(32u))) | vec3<i32>(~(-50284i), countOneBits(var_0.x), var_0.x), countOneBits(countOneBits(vec3<i32>(var_0.x, var_0.x, var_0.x)) | firstTrailingBit(u_input.b.zww)));
    global1 = vec3<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x) ^ u_input.a.x, func_3(45654i, 612f), u_input.a.x) & abs(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(0u, 75612u, arg_1.x)), vec3<u32>(global1.x, 78480u, 0u) >> (vec3<u32>(55647u, global1.x, 37654u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(arg_1, arg_1)), vec3<u32>(global1.x, select(global1.x, global2.x, true), arg_1.x)));
    let var_1 = Struct_1(global0.a);
    return !global3.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_1(vec2<bool>(false, func_4(Struct_1(vec2<bool>(global3.a.x, global3.a.x)), vec3<u32>(4294967295u, _wgslsmith_add_u32(global1.x, u_input.a.x), func_3(arg_1.x, 1347f)), arg_0, arg_0)));
    let var_1 = 365f;
    var var_2 = Struct_1(select(vec2<bool>(_wgslsmith_f_op_f32(trunc(var_1)) > _wgslsmith_f_op_f32(trunc(478f)), global3.a.x), select(var_0.a, global0.a, global0.a.x), select(var_0.a.x, true, any(!global0.a))));
    return Struct_1(!vec2<bool>(571f > _wgslsmith_f_op_f32(var_1 * var_1), true));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<i32>) -> bool {
    global0 = func_2(Struct_1(vec2<bool>(true, true)), vec2<i32>(arg_0.x, 1i));
    let var_0 = Struct_1(vec2<bool>(true & global0.a.x, global3.a.x));
    global1 = u_input.a.wzy;
    let var_1 = Struct_1(var_0.a);
    global1 = _wgslsmith_add_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.a.x, _wgslsmith_add_u32(u_input.a.x, 21113u)), vec3<u32>(min(4294967295u, global1.x), u_input.a.x, global1.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(~u_input.a.x ^ (53489u >> (global1.x % 32u)), ~global2.x ^ _wgslsmith_div_u32(12119u, global1.x), ~(~2019u)), vec3<u32>(~u_input.a.x, 1u, 4294967295u)));
    return any(select(!vec4<bool>(!global3.a.x, func_4(Struct_1(vec2<bool>(false, false)), u_input.a.xyw, Struct_1(var_0.a), Struct_1(global3.a)), var_1.a.x || true, global3.a.x), vec4<bool>(true, !func_4(var_0, u_input.a.yyx, Struct_1(vec2<bool>(global0.a.x, var_1.a.x)), var_0), true, arg_1.x > 1i), !(!select(vec4<bool>(var_1.a.x, false, global3.a.x, var_0.a.x), vec4<bool>(var_0.a.x, var_1.a.x, true, true), global0.a.x))));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: vec4<i32>, arg_3: u32) -> vec3<u32> {
    let var_0 = Struct_1(global0.a);
    global1 = arg_1;
    global1 = u_input.a.yyy ^ arg_1;
    global0 = func_2(Struct_1(global3.a), u_input.b.yy);
    global3 = var_0;
    return _wgslsmith_clamp_vec3_u32(~arg_1, vec3<u32>(_wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(~1u, ~4294967295u, _wgslsmith_add_u32(global1.x, 0u))), arg_1.x, ~arg_1.x), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_sub_vec3_u32(u_input.a.wxw, u_input.a.wwx);
    global2 = min(firstLeadingBit(u_input.a.xxz), reverseBits(func_5(vec4<bool>(true, func_1(vec3<i32>(u_input.b.x, u_input.b.x, 5055i), vec2<i32>(u_input.d, u_input.c)), global0.a.x, global0.a.x), ~(~vec3<u32>(global2.x, 39760u, global2.x)), u_input.b, _wgslsmith_mod_u32(max(4294967295u, global2.x), u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-937f, -203f)), func_5(!vec4<bool>(any(vec4<bool>(global0.a.x, false, false, false)), global0.a.x, false | global3.a.x, true), u_input.a.xzx, firstLeadingBit(vec4<i32>(_wgslsmith_mod_i32(49393i, -2147483647i), countOneBits(u_input.b.x), u_input.b.x, 1i)), 37977u));
}

