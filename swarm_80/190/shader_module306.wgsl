struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 11>;

var<private> global1: Struct_3;

var<private> global2: Struct_3 = Struct_3(590f, -602f, vec2<f32>(-1000f, 210f), 532f);

var<private> global3: vec2<i32> = vec2<i32>(27993i, 35015i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
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

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> Struct_3 {
    global3 = ~vec2<i32>(-51750i, _wgslsmith_mod_i32(abs(11562i), 1i)) >> (vec2<u32>(u_input.a, arg_3.a.x) % vec2<u32>(32u));
    var var_0 = ~(~(~arg_3.a.x)) | _wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(select(arg_3.a.x, 4313u, arg_2), arg_3.a.x), _wgslsmith_mod_u32(1u, ~u_input.a)), u_input.c, 23334u);
    global0 = array<vec4<f32>, 11>();
    let var_1 = global2.d;
    global0 = array<vec4<f32>, 11>();
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(global2.c.x + -855f), vec2<f32>(arg_0.x, global2.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(select(821f, 218f, all(vec4<bool>(arg_2, arg_2, arg_2, arg_2)))))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: u32, arg_3: Struct_1) -> f32 {
    global1 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, -1000f, global2.a)) - vec3<f32>(1000f, global2.c.x, global2.b))) - vec3<f32>(global2.b, -380f, global2.c.x)), 1i, false, arg_3);
    global0 = array<vec4<f32>, 11>();
    global0 = array<vec4<f32>, 11>();
    let var_0 = Struct_3(570f, _wgslsmith_f_op_f32(abs(global1.c.x)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -474f), _wgslsmith_f_op_f32(max(global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.c.x, -947f)))))), _wgslsmith_f_op_f32(global1.b * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-558f, global1.a))), _wgslsmith_f_op_f32(-global2.b))));
    var var_1 = Struct_1(vec2<u32>(~(~(arg_3.a.x >> (0u % 32u))), arg_3.a.x));
    return var_0.a;
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<bool>) -> vec4<bool> {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -global3.x << (u_input.d % 32u), -(40125i >> (1u % 32u))) >> (_wgslsmith_div_vec3_u32(vec3<u32>(abs(1u), _wgslsmith_clamp_u32(4294967295u, u_input.a, 4294967295u), firstLeadingBit(4294967295u)), (vec3<u32>(u_input.c, 0u, u_input.d) ^ vec3<u32>(7834u, u_input.d, 4294967295u)) << (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.d), vec3<u32>(4294967295u, 4294967295u, u_input.a)) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<i32>(2147483647i, ~global3.x, -20173i));
    var var_1 = arg_1.x;
    global1 = Struct_3(-996f, _wgslsmith_f_op_f32(func_1(abs(~(vec4<u32>(u_input.a, u_input.a, u_input.a, 44334u) >> (vec4<u32>(1u, 4294967295u, 1u, 32851u) % vec4<u32>(32u)))), vec2<i32>(global3.x, global3.x), _wgslsmith_mult_u32(~_wgslsmith_add_u32(u_input.d, u_input.c), firstTrailingBit(_wgslsmith_clamp_u32(0u, u_input.d, u_input.c))), Struct_1(~_wgslsmith_add_vec2_u32(vec2<u32>(15903u, 4294967295u), vec2<u32>(u_input.c, 18193u))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.c))), -2104f);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global1.c.x, -795f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(910f, global2.c.x))))));
    let var_3 = false;
    return !(!(!(!(!vec4<bool>(true, false, false, arg_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<u32>(u_input.d, 71448u, 1u, 1u), vec2<i32>(global3.x, global3.x), u_input.a, Struct_1(vec2<u32>(u_input.c, u_input.a)))))) && (-1000f <= global2.a), Struct_1(min(firstLeadingBit(countOneBits(vec2<u32>(37540u, 93007u))), firstTrailingBit(vec2<u32>(u_input.a, u_input.c)))), global2.d);
    var var_1 = abs(vec3<i32>(u_input.b, -u_input.b, firstLeadingBit(-46689i)));
    let var_2 = var_0;
    let var_3 = !(!select(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, -707f, 747f)), select(vec3<bool>(false, var_2.a, var_0.a), vec3<bool>(var_0.a, true, var_0.a), vec3<bool>(true, false, false))), select(select(vec4<bool>(var_0.a, true, true, var_0.a), vec4<bool>(false, true, false, var_2.a), false), func_3(vec3<f32>(global2.a, -1536f, 754f), vec3<bool>(var_2.a, false, false)), !vec4<bool>(false, var_0.a, var_2.a, var_0.a)), true));
    var_1 = vec3<i32>(countOneBits(-_wgslsmith_dot_vec3_i32(select(vec3<i32>(var_1.x, 30415i, -2147483647i), vec3<i32>(var_1.x, -2147483647i, 0i), var_3.x), -vec3<i32>(u_input.e, -1i, var_1.x))), _wgslsmith_div_i32(~_wgslsmith_mod_i32(u_input.e, select(-1i, 5773i, var_3.x)), 28779i), 1i);
    var var_4 = any(vec2<bool>(all(select(var_3.yx, !vec2<bool>(var_3.x, true), func_3(vec3<f32>(733f, global1.b, -1195f), var_3.yzz).zy)), true));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec3<i32>(_wgslsmith_div_i32(var_1.x, u_input.e), _wgslsmith_add_i32(-var_1.x, firstLeadingBit(u_input.b)), _wgslsmith_clamp_i32(2147483647i, _wgslsmith_sub_i32(global3.x, global3.x), 1i))));
}

