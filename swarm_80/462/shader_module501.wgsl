struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-39166i, -1i);

var<private> global1: Struct_2;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: u32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-384f, _wgslsmith_f_op_f32(-840f + 281f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, -588f)))))));
    let var_1 = Struct_2(abs(global1.b), _wgslsmith_mult_i32(-global1.b, _wgslsmith_mod_i32(-u_input.c, 0i)), vec3<u32>(arg_1, ~select(abs(arg_1), ~u_input.a.x, all(vec4<bool>(true, true, true, true))), ~(~_wgslsmith_add_u32(global1.c.x, arg_1))), global1.d);
    let var_2 = global1.d;
    var var_3 = ~4294967295u;
    let var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.x, arg_0)));
    return _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(0i, -2147483647i, var_1.a, var_1.a) | ~vec4<i32>(1i, var_2.b, global0.a, -1i), (~vec4<i32>(global0.b, var_2.a, u_input.b, global0.a) << (_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.c.x, u_input.d.x, 4294967295u, var_1.c.x), u_input.d) % vec4<u32>(32u))) >> (_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.d.x, 32622u, var_1.c.x, 1u), u_input.d, vec4<u32>(u_input.a.x, 4294967295u, arg_1, 1u)) % vec4<u32>(32u))), vec4<i32>(1i, ~12205i, firstTrailingBit(-var_1.a), _wgslsmith_sub_i32(0i, var_2.a)));
}

fn func_2() -> bool {
    global1 = Struct_2(u_input.c, ~u_input.b, ~u_input.d.xzy, global1.d);
    global1 = Struct_2(firstTrailingBit(17342i), -_wgslsmith_dot_vec4_i32(select(min(vec4<i32>(u_input.c, 12965i, -2147483647i, u_input.b), vec4<i32>(1i, -12771i, 0i, 40615i)), abs(vec4<i32>(2147483647i, 1i, u_input.c, 1i)), true), vec4<i32>(51997i, abs(global0.b), _wgslsmith_clamp_i32(global0.a, -32754i, 23061i), _wgslsmith_sub_i32(global1.a, -2147483647i))), countOneBits((vec3<u32>(0u, 33488u, 16996u) >> (vec3<u32>(u_input.a.x, u_input.a.x, 48296u) % vec3<u32>(32u))) << (_wgslsmith_add_vec3_u32(vec3<u32>(55108u, 1u, 4294967295u), vec3<u32>(global1.c.x, u_input.a.x, 46853u)) % vec3<u32>(32u))) << (global1.c % vec3<u32>(32u)), global1.d);
    let var_0 = countOneBits(func_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-836f + 1913f))), ~(~1553u))) ^ global1.d.b;
    var var_1 = true;
    let var_2 = vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.d, abs(~vec4<u32>(28123u, 0u, 1u, 9951u))), u_input.a.x), u_input.d.x & _wgslsmith_dot_vec3_u32(~global1.c, vec3<u32>(~global1.c.x, global1.c.x ^ 4294967295u, u_input.d.x)), _wgslsmith_div_u32((4294967295u >> ((4294967295u << (u_input.a.x % 32u)) % 32u)) >> ((_wgslsmith_dot_vec2_u32(u_input.a, u_input.a) >> (countOneBits(u_input.d.x) % 32u)) % 32u), 60972u >> (u_input.a.x % 32u)));
    return true;
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: u32) -> Struct_1 {
    let var_0 = u_input.a.x;
    var var_1 = select(select(select(vec2<bool>(true, true), vec2<bool>(u_input.b >= u_input.b, true), !select(true, true, false)), select(vec2<bool>(true, false), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true)), false || (global0.a > -2147483647i)), true), vec2<bool>(!func_2(), (_wgslsmith_f_op_f32(ceil(arg_0)) > _wgslsmith_f_op_f32(floor(arg_0))) | !(global1.b <= global0.a)), select(select(vec2<bool>(any(vec4<bool>(false, true, true, false)), true), vec2<bool>(func_2(), true), all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), true))), select(vec2<bool>(arg_0 < 598f, any(vec2<bool>(false, false))), vec2<bool>(true, false), vec2<bool>(true, true)), select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), false)));
    var var_2 = global1.d;
    var var_3 = vec3<bool>(true, !any(select(vec2<bool>(true, true), select(vec2<bool>(true, var_1.x), vec2<bool>(true, false), vec2<bool>(var_1.x, var_1.x)), !var_1.x)), true);
    var var_4 = Struct_2(u_input.c, global1.d.b, ~(~(vec3<u32>(var_0, arg_2, arg_1.x) | countOneBits(global1.c))), global1.d);
    return Struct_1(~_wgslsmith_add_i32(global0.a & max(1i, global1.b), 57855i), ~firstTrailingBit(1i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(-939f, u_input.d.xw ^ vec2<u32>(global1.c.x, countOneBits(~global1.c.x)), ~4294967295u);
    var var_0 = u_input.c;
    let var_1 = u_input.b;
    global0 = Struct_1(~abs(_wgslsmith_add_i32(~var_1, _wgslsmith_dot_vec3_i32(vec3<i32>(-28484i, -17979i, -1i), vec3<i32>(1i, -23142i, -2147483647i)))), global1.d.b);
    global1 = Struct_2(~(~40377i), _wgslsmith_dot_vec2_i32(vec2<i32>(global1.a, 0i), countOneBits(vec2<i32>(_wgslsmith_mod_i32(1i, global1.d.b), countOneBits(global0.b)))), vec3<u32>(_wgslsmith_mod_u32(global1.c.x, _wgslsmith_mult_u32(~0u, 1u)), ~global1.c.x, 2166u), func_1(-1369f, ~vec2<u32>(~global1.c.x, 1u), min(_wgslsmith_mod_u32(global1.c.x, u_input.a.x), min(1u, 4294967295u)) & _wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, u_input.d.x, 0u, u_input.a.x)), _wgslsmith_add_vec4_u32(u_input.d, vec4<u32>(89188u, 4294967295u, 31195u, u_input.d.x)))));
    var var_2 = vec4<u32>(_wgslsmith_mod_u32(1u << (~(~global1.c.x) % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(60349u, global1.c.x, 66880u), u_input.d.zyz), countOneBits(vec3<u32>(59272u, u_input.d.x, global1.c.x))) ^ abs(max(0u, u_input.d.x))), 1u, ~_wgslsmith_mult_u32(global1.c.x, 1u), global1.c.x);
    let var_3 = firstTrailingBit(1u);
    var var_4 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-563f, 140f, 875f)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-270f, -370f, -975f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(0u, min(reverseBits(u_input.d.x), abs(8273u)), _wgslsmith_add_u32(0u, 26200u) | var_3, ~1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_4.x))), 341f, all(vec2<bool>(true, true)))) * var_4.x));
}

