struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: bool,
    d: vec4<i32>,
    e: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_2 = Struct_2(767f, Struct_1(-809f, -81553i), 30577u);

var<private> global2: vec4<bool> = vec4<bool>(true, true, true, false);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    let var_0 = Struct_3(84149u, ~vec2<i32>(_wgslsmith_mod_i32(reverseBits(-19161i), -global1.b.b), -2147483647i), any(vec2<bool>(true, ~u_input.b != ~92299u)), u_input.a, abs(~(~global1.c)));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-824f + global1.a), Struct_1(-626f, var_0.b.x), abs(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, var_0.a, u_input.c), select(vec3<u32>(1u, global1.c, var_0.e), vec3<u32>(28744u, 21985u, global1.c), vec3<bool>(false, true, true))), ~(vec3<u32>(global1.c, 41049u, u_input.b) | vec3<u32>(global1.c, var_0.e, 44638u)))));
    var var_2 = Struct_4(var_0);
    let var_3 = var_2.a.d.x;
    var var_4 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.b.a))) + -1445f) < 903f);
    return _wgslsmith_div_f32(global1.b.a, _wgslsmith_f_op_f32(-var_1.b.a));
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_3(u_input.b, arg_0.xz, any(vec2<bool>(global2.x, !global2.x)) || global2.x, _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(global1.b.b, u_input.a.x, -2147483647i, 2642i)) << (vec4<u32>(u_input.c, global1.c, 45465u, 0u) % vec4<u32>(32u)), (vec4<i32>(38577i, -14016i, 2147483647i, global1.b.b) & vec4<i32>(global1.b.b, 43094i, global1.b.b, -15136i)) & ~vec4<i32>(global1.b.b, global1.b.b, 0i, u_input.a.x)), u_input.a), ~(~max(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.c, 4294967295u, u_input.c, u_input.b), vec4<u32>(33619u, u_input.c, u_input.c, 24819u)), firstTrailingBit(63823u))));
    let var_1 = -(~12263i);
    global1 = Struct_2(_wgslsmith_f_op_f32(-615f - _wgslsmith_f_op_f32(func_3())), Struct_1(_wgslsmith_f_op_f32(176f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a))), var_0.b.x), _wgslsmith_clamp_u32(reverseBits(65994u), ~_wgslsmith_div_u32(~global1.c, 33459u), _wgslsmith_clamp_u32(var_0.e, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, var_0.a, u_input.c, 0u), vec4<u32>(u_input.b, 37714u, 32766u, var_0.e)), ~vec4<u32>(global1.c, 15920u, var_0.e, 6263u)), abs(global1.c))));
    let var_2 = global2.xx;
    var var_3 = var_0.e;
    return global1.b;
}

fn func_1(arg_0: i32) -> Struct_3 {
    global1 = Struct_2(global1.a, func_2(~_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, global1.b.b, u_input.a.x), u_input.a.yxz & u_input.a.yyy)), _wgslsmith_sub_u32(~1u, 1u));
    var var_0 = vec2<f32>(global1.b.a, global1.a);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.a, global1.a))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-283f, var_0.x))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.x + 1000f), _wgslsmith_f_op_f32(sign(global1.a))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -250f), _wgslsmith_f_op_f32(ceil(-450f))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x));
    global2 = select(select(select(vec4<bool>(!global2.x, false, global2.x, any(vec3<bool>(global2.x, false, false))), select(select(vec4<bool>(global2.x, false, global2.x, true), vec4<bool>(false, global2.x, true, false), vec4<bool>(false, global2.x, global2.x, true)), select(vec4<bool>(global2.x, false, false, global2.x), vec4<bool>(true, global2.x, global2.x, false), global2.x), false), reverseBits(global1.c) <= _wgslsmith_clamp_u32(global1.c, global1.c, global1.c)), vec4<bool>(!global2.x, global2.x, false, false), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, global2.x, global2.x, global2.x), vec4<bool>(global2.x, global2.x, true, global2.x), global2.x), !vec4<bool>(global2.x, false, false, true))), vec4<bool>(global2.x, global2.x, global2.x, false), false);
    return Struct_3(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 0u) & vec3<u32>(4294967295u, _wgslsmith_mod_u32(0u, global1.c), _wgslsmith_dot_vec3_u32(vec3<u32>(59190u, 15324u, 28225u), vec3<u32>(global1.c, global1.c, u_input.c))), _wgslsmith_add_vec3_u32(~select(vec3<u32>(19123u, 40854u, 4294967295u), vec3<u32>(0u, global1.c, global1.c), global2.zyy), ~vec3<u32>(global1.c, global1.c, global1.c) & select(vec3<u32>(1u, u_input.b, u_input.b), vec3<u32>(u_input.c, global1.c, 17905u), global2.x))), ~vec2<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.a.x, global1.b.b), u_input.a.x), 1i ^ _wgslsmith_div_i32(arg_0, -10717i)), (~_wgslsmith_dot_vec2_u32(vec2<u32>(95671u, global1.c), vec2<u32>(u_input.b, 30627u)) >> ((1u | select(global1.c, 0u, global2.x)) % 32u)) != reverseBits(reverseBits(_wgslsmith_mod_u32(u_input.c, global1.c))), firstLeadingBit(abs(firstTrailingBit(~u_input.a))), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, global1.a, global1.b.a, global1.a));
    global1 = Struct_2(1671f, global1.b, ~(~u_input.c >> (0u % 32u)) & u_input.b);
    var var_1 = func_1(_wgslsmith_div_i32(-27170i, 1i));
    global2 = select(!(!select(vec4<bool>(global2.x, var_1.c, false, var_1.c), vec4<bool>(false, false, true, var_1.c), vec4<bool>(global2.x, false, global2.x, true))), !vec4<bool>(var_1.c, global2.x, global2.x, false), select(select(!vec4<bool>(var_1.c, true, false, true), !select(vec4<bool>(true, true, var_1.c, global2.x), vec4<bool>(var_1.c, global2.x, global2.x, global2.x), vec4<bool>(false, true, true, true)), select(select(vec4<bool>(global2.x, false, var_1.c, global2.x), vec4<bool>(global2.x, false, var_1.c, var_1.c), false), vec4<bool>(global2.x, global2.x, true, var_1.c), select(vec4<bool>(var_1.c, false, true, global2.x), vec4<bool>(var_1.c, false, global2.x, true), vec4<bool>(false, global2.x, true, true)))), vec4<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, global2.x), true)), all(global2.zz), all(vec2<bool>(var_1.c, var_1.c)), !global2.x), !vec4<bool>(var_1.c, var_1.c, all(global2.yx), global2.x)));
    global0 = global2.x;
    global2 = !select(vec4<bool>(!all(vec2<bool>(global2.x, true)), -1633f > _wgslsmith_f_op_f32(-global1.b.a), all(select(vec2<bool>(false, global2.x), global2.zz, global2.wz)), all(select(global2.zz, vec2<bool>(true, false), global2.yz))), !(!(!vec4<bool>(false, var_1.c, true, var_1.c))), select(global2.x, global2.x, true || select(false, var_1.c, global2.x)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3()))), true)));
    global2 = select(select(select(!vec4<bool>(false, true, false, var_1.c), vec4<bool>(true, false, var_1.c || global2.x, global2.x && global2.x), all(global2.xyz)), vec4<bool>(false, _wgslsmith_f_op_f32(var_2 + 1000f) > func_2(u_input.a.ywz).a, var_1.c, global2.x), select(select(vec4<bool>(var_1.c, false, true, false), select(vec4<bool>(false, false, global2.x, false), vec4<bool>(true, global2.x, var_1.c, true), vec4<bool>(false, var_1.c, global2.x, true)), !vec4<bool>(var_1.c, global2.x, false, var_1.c)), !vec4<bool>(true, var_1.c, global2.x, true), any(select(vec2<bool>(global2.x, var_1.c), vec2<bool>(global2.x, global2.x), global2.zz)))), vec4<bool>(true, all(global2.xw), global1.b.b != ~u_input.a.x, global2.x), vec4<bool>(all(select(vec3<bool>(var_1.c, global2.x, true), global2.wxy, all(global2.wx))), global2.x, true, true));
    global1 = Struct_2(var_2, global1.b, _wgslsmith_div_u32(select(~firstLeadingBit(0u), ~var_1.a, var_1.c), max(_wgslsmith_dot_vec3_u32(~vec3<u32>(5744u, global1.c, global1.c), firstLeadingBit(vec3<u32>(var_1.a, 8017u, 27655u))), abs(select(global1.c, 26894u, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d.x, var_1.b.x);
}

