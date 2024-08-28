struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec4<u32>,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec2<bool> = vec2<bool>(false, false);

var<private> global2: Struct_4 = Struct_4(Struct_3(Struct_2(2147483647i, Struct_1(false, vec4<bool>(true, false, false, false), vec4<u32>(25133u, 4294967295u, 6802u, 31062u), vec2<bool>(false, true), vec3<i32>(-12423i, 28899i, 48863i)), Struct_1(true, vec4<bool>(false, false, true, true), vec4<u32>(4294967295u, 4294967295u, 1u, 25668u), vec2<bool>(true, false), vec3<i32>(18385i, -1i, 1i))), vec3<f32>(-713f, -943f, 1362f), vec3<i32>(-23513i, 15133i, 2147483647i)), 3603u, 1u);

var<private> global3: Struct_3;

var<private> global4: Struct_3 = Struct_3(Struct_2(-1i, Struct_1(false, vec4<bool>(false, false, false, true), vec4<u32>(70609u, 17740u, 1u, 4294967295u), vec2<bool>(false, true), vec3<i32>(-20240i, 55028i, i32(-2147483648))), Struct_1(true, vec4<bool>(true, false, true, true), vec4<u32>(69917u, 1u, 4294967295u, 0u), vec2<bool>(false, true), vec3<i32>(24040i, -7341i, -36422i))), vec3<f32>(-786f, -1159f, -970f), vec3<i32>(i32(-2147483648), 1i, 49594i));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> vec2<u32> {
    var var_0 = global3.a.c.c.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1368f, 295f, global3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3.b.x)))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1403f)) + _wgslsmith_f_op_f32(global4.b.x * _wgslsmith_f_op_f32(global3.b.x - 287f))), _wgslsmith_f_op_f32(sign(global3.b.x)), -296f, _wgslsmith_f_op_f32(global2.a.b.x + global4.b.x)));
    global2 = Struct_4(global2.a, 4294967295u, 4294967295u >> (global3.a.c.c.x % 32u));
    global0 = global3.a.c.b;
    let var_2 = Struct_3(global3.a, global2.a.b, -_wgslsmith_sub_vec3_i32(-vec3<i32>(60719i, global3.a.b.e.x, arg_0.e.x), select(~vec3<i32>(-14601i, 4916i, global2.a.a.b.e.x), min(vec3<i32>(arg_0.e.x, -41316i, arg_0.e.x), arg_0.e), global4.a.b.d.x)));
    return var_2.a.b.c.zx;
}

fn func_2() -> i32 {
    let var_0 = global3.a.b.c;
    var var_1 = global2.a.a;
    let var_2 = var_1.b.c;
    let var_3 = func_3(var_1.b, abs(~vec2<u32>(max(var_0.x, 12450u), _wgslsmith_clamp_u32(global4.a.c.c.x, global3.a.c.c.x, u_input.a))));
    let var_4 = global4.a.c.e.x;
    return -abs(abs(_wgslsmith_mult_i32(_wgslsmith_sub_i32(16918i, global4.c.x), -var_1.a)));
}

fn func_4(arg_0: vec2<bool>, arg_1: f32, arg_2: vec3<u32>) -> f32 {
    let var_0 = _wgslsmith_sub_vec3_i32(-(global4.a.b.e >> ((vec3<u32>(global2.a.a.b.c.x, 68591u, global2.c) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, global4.a.c.c.x, 18348u), global2.a.a.b.c.wxy, vec3<u32>(global4.a.b.c.x, u_input.a, 52457u)) % vec3<u32>(32u))) % vec3<u32>(32u))), -_wgslsmith_mod_vec3_i32(global4.a.b.e, firstTrailingBit(global4.a.b.e)));
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(0i), reverseBits(20030i) >> (global4.a.b.c.x % 32u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(~min(global3.c.x, -1i), ~global3.a.c.e.x), countOneBits(global3.a.b.e.yz), abs(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global4.c.x, -821i), vec2<i32>(global4.c.x, var_0.x)), abs(vec2<i32>(2147483647i, 1i)), reverseBits(global4.c.zy)))));
    global1 = global2.a.a.b.b.wy;
    global0 = !global3.a.b.b;
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.a.b) * global4.b))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1089f - 154f), _wgslsmith_f_op_f32(arg_1 - global4.b.x), _wgslsmith_f_op_f32(f32(-1f) * -176f)) + global2.a.b))));
    return -1000f;
}

fn func_1(arg_0: vec2<f32>) -> f32 {
    let var_0 = select(select(~max(global3.a.c.c.xw, global2.a.a.c.c.zz), global3.a.c.c.wz, true) | min(~firstTrailingBit(vec2<u32>(global2.b, global2.c)), ~(global3.a.b.c.zx & global2.a.a.b.c.zw)), global2.a.a.b.c.wz, true);
    let var_1 = 27070i;
    global1 = vec2<bool>(false, global3.a.c.b.x);
    var var_2 = firstLeadingBit(global3.a.b.c.wwy);
    var var_3 = !vec2<bool>(global3.a.b.b.x, global4.a.b.a);
    return _wgslsmith_f_op_f32(-360f * _wgslsmith_f_op_f32(func_4(vec2<bool>(1i != func_2(), global2.b >= ~global4.a.c.c.x), -898f, global2.a.a.c.c.xyw)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_3(global4.a, _wgslsmith_div_vec3_f32(vec3<f32>(1045f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(global3.b.zx)), global2.a.b.x, global1.x)), _wgslsmith_div_f32(global3.b.x, -195f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global2.a.b.x), _wgslsmith_f_op_f32(ceil(-1576f)), -978f))), global2.a.c);
    global3 = Struct_3(global4.a, vec3<f32>(1000f, global4.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.x + global4.b.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.a.b.x))))), vec3<i32>(_wgslsmith_mult_i32(-_wgslsmith_mod_i32(global4.c.x, -11863i), func_2()), 2147483647i, select(~1i, -2147483647i, _wgslsmith_f_op_f32(floor(global2.a.b.x)) > 582f)));
    let var_0 = Struct_3(Struct_2(global3.a.c.e.x, Struct_1(!(global0.x & global2.a.a.b.d.x), vec4<bool>(global2.a.a.b.e.x != 0i, true, false, !global1.x), ~global4.a.c.c, vec2<bool>(!global2.a.a.c.b.x, all(global4.a.b.b.zz)), max(global2.a.a.b.e, -vec3<i32>(-2147483647i, -27502i, global4.a.c.e.x))), Struct_1(any(select(global0.wy, global0.yz, true)), vec4<bool>(true, false, false, select(false, false, global0.x)), vec4<u32>(~1u, _wgslsmith_clamp_u32(47765u, 4294967295u, u_input.a), func_3(global2.a.a.c, vec2<u32>(global4.a.c.c.x, global4.a.c.c.x)).x, ~global3.a.c.c.x), select(vec2<bool>(true, true), global2.a.a.b.d, global0.zw), firstLeadingBit(countOneBits(vec3<i32>(global3.a.a, global3.a.b.e.x, global4.c.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(global4.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b.x, -1000f, 1085f) + global2.a.b))))) + global4.b), global3.a.c.e & -vec3<i32>(-38844i, 2147483647i, global2.a.a.a | -1i));
    global4 = Struct_3(Struct_2(0i, Struct_1(global4.a.b.c.x > _wgslsmith_sub_u32(global3.a.b.c.x, var_0.a.c.c.x), global3.a.b.b, global4.a.b.c, select(vec2<bool>(true, false), vec2<bool>(global2.a.a.b.d.x, global1.x), !global0.wx), _wgslsmith_mod_vec3_i32(~global3.a.c.e, ~vec3<i32>(1i, 2147483647i, var_0.c.x))), var_0.a.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-836f, global4.b.x, 1360f) - global2.a.b))))), _wgslsmith_sub_vec3_i32(global3.a.b.e, select(countOneBits(countOneBits(vec3<i32>(var_0.a.b.e.x, -10380i, var_0.c.x))), vec3<i32>(global2.a.c.x, reverseBits(global3.c.x), _wgslsmith_dot_vec2_i32(global4.c.zx, vec2<i32>(-8243i, 1i))), global2.a.a.b.b.x)));
    global1 = !select(global3.a.b.d, var_0.a.c.d, select(!vec2<bool>(global4.a.b.d.x, global1.x), !(!global4.a.c.b.xy), !global2.a.a.c.b.zw));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~firstLeadingBit(4294967295u), 0u));
}

