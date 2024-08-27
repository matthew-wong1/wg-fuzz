struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: i32) -> i32 {
    var var_0 = ~u_input.d.x;
    let var_1 = _wgslsmith_add_u32(u_input.b, 4294967295u);
    return abs(~(~_wgslsmith_div_i32(1i, ~global1.c)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>) -> bool {
    var var_0 = Struct_1(arg_0.a, reverseBits(abs(vec2<i32>(arg_0.b.x, arg_0.d.x << (46143u % 32u)))), false, _wgslsmith_mult_vec4_i32(-global0.d, ~(-select(global1.a.d, vec4<i32>(u_input.e.x, 23570i, arg_0.d.x, global0.d.x), vec4<bool>(true, true, global1.a.c, true)))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-466f)) + _wgslsmith_f_op_f32(-1782f * -411f)), vec2<i32>(_wgslsmith_dot_vec4_i32(var_0.d, -vec4<i32>(0i, u_input.e.x, global1.c, 2147483647i)), -17657i), true, vec4<i32>(_wgslsmith_mult_i32(var_0.d.x, ~(-4199i)), -14794i, ~(-11123i), global0.d.x)), _wgslsmith_mult_vec2_i32(-vec2<i32>(-2147483647i, global1.a.d.x & global1.b.x), abs(~(vec2<i32>(arg_1.x, global0.b.x) << (vec2<u32>(27631u, u_input.b) % vec2<u32>(32u))))), _wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(global1.a.d.x, global1.b.x, 0i), arg_0.d.wwy)), -firstLeadingBit(global0.d.zyz)) << (abs(1u) % 32u));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-910f, arg_0.a)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-639f, global0.a) - vec2<f32>(global0.a, arg_0.a))), vec2<f32>(_wgslsmith_div_f32(972f, 1000f), _wgslsmith_f_op_f32(f32(-1f) * -329f)), !(global0.c || true)))));
    var var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(-265f, _wgslsmith_f_op_f32(f32(-1f) * -169f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -256f) + 1000f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(var_2.x - arg_0.a), _wgslsmith_f_op_f32(step(global0.a, global1.a.a)), _wgslsmith_f_op_f32(-global0.a)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global1.a.a, -936f), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(var_1.a.a * 644f))))));
    let var_4 = ~_wgslsmith_mod_i32(~abs(global1.b.x), arg_1.x);
    return false;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_1.d.yy;
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -614f), vec2<i32>(~(-1i), global0.b.x), !func_3(arg_1, reverseBits(u_input.d)), _wgslsmith_add_vec4_i32(vec4<i32>(global1.a.b.x, 2147483647i, 37804i, 2147483647i), -arg_2.d) ^ ~vec4<i32>(-1i, 1i, global1.c, 26078i)), global1.a.b, -17676i);
    let var_2 = firstLeadingBit(~vec3<u32>(16191u, u_input.b, 1u));
    var var_3 = _wgslsmith_div_u32(60155u, _wgslsmith_clamp_u32(var_2.x, 25259u | ~abs(var_2.x), arg_0));
    var var_4 = select(!vec3<bool>(true, var_1.a.d.x == countOneBits(-1i), global0.c), select(!select(!vec3<bool>(var_1.a.c, arg_2.c, arg_1.c), select(vec3<bool>(global0.c, false, global1.a.c), vec3<bool>(arg_1.c, true, var_1.a.c), true), !global0.c), vec3<bool>(any(select(vec3<bool>(false, var_1.a.c, global0.c), vec3<bool>(true, arg_1.c, var_1.a.c), vec3<bool>(false, false, false))), any(select(vec4<bool>(var_1.a.c, global0.c, true, arg_1.c), vec4<bool>(arg_1.c, false, var_1.a.c, false), vec4<bool>(arg_1.c, false, true, true))), true), vec3<bool>(arg_1.c, false, u_input.a >= global1.a.d.x)), global0.c);
    return Struct_1(-1390f, vec2<i32>(firstTrailingBit(func_1(Struct_2(Struct_1(643f, arg_1.b, true, vec4<i32>(-8913i, -38559i, 1i, var_0.x)), vec2<i32>(2147483647i, u_input.c.x), global0.d.x), ~global1.a.d.ywy, ~65592i)), global1.a.d.x), arg_1.c, arg_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(abs(260f))) + global0.a), _wgslsmith_mod_vec2_i32(global0.b, global1.a.d.xw), !((global0.a < -1000f) && true) && (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.a)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1499f)) - global1.a.a)), reverseBits(vec4<i32>(0i, -31463i, 0i, func_1(Struct_2(global1.a, vec2<i32>(global0.b.x, u_input.d.x), u_input.a), vec3<i32>(-2147483647i, -114746i, global1.b.x), global0.d.x))));
    var var_0 = 4294967295u;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(190f - global0.a) - global1.a.a), reverseBits(_wgslsmith_mult_vec2_i32(countOneBits(_wgslsmith_sub_vec2_i32(global1.a.d.yw, vec2<i32>(global1.c, global0.b.x))), firstTrailingBit(vec2<i32>(0i, 2147483647i)))), false, abs(vec4<i32>(~20060i, ~u_input.a, i32(-1i) * -2147483647i, global0.b.x) & (~global0.d >> (~vec4<u32>(u_input.b, u_input.b, u_input.b, 18246u) % vec4<u32>(32u)))));
    global1 = Struct_2(func_2(44185u, Struct_1(global1.a.a, u_input.e, false, firstLeadingBit(_wgslsmith_add_vec4_i32(var_1.d, var_1.d))), var_1), select(firstLeadingBit(countOneBits(_wgslsmith_add_vec2_i32(u_input.e, vec2<i32>(global0.d.x, -34897i)))), select((var_1.b >> (vec2<u32>(13122u, u_input.b) % vec2<u32>(32u))) & vec2<i32>(u_input.e.x, u_input.c.x), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.d.x, global0.d.x), global1.b), vec2<i32>(global1.b.x, -1i)), select(select(vec2<bool>(global0.c, global1.a.c), vec2<bool>(false, global1.a.c), false), vec2<bool>(true, global1.a.c), global0.c)), select(vec2<bool>(true, true), !(!vec2<bool>(global1.a.c, var_1.c)), select(select(vec2<bool>(global0.c, global1.a.c), vec2<bool>(var_1.c, var_1.c), true), vec2<bool>(true, true), true))), -1i);
    global1 = Struct_2(func_2(u_input.b, Struct_1(1605f, firstTrailingBit(var_1.d.zy), !(0u > u_input.b), var_1.d), func_2(53716u, Struct_1(global0.a, func_2(u_input.b, Struct_1(var_1.a, global0.b, var_1.c, vec4<i32>(-1i, global0.b.x, global0.b.x, -2147483647i)), Struct_1(-270f, vec2<i32>(global1.b.x, 2147483647i), true, vec4<i32>(var_1.d.x, var_1.d.x, -2147483647i, 16914i))).b, !global1.a.c, abs(global1.a.d)), Struct_1(var_1.a, vec2<i32>(global0.b.x, global0.d.x), true, max(var_1.d, vec4<i32>(global0.d.x, 2147483647i, -2147483647i, global0.b.x))))), var_1.d.xw, var_1.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.a, _wgslsmith_sub_vec4_u32(firstLeadingBit(abs(~vec4<u32>(16875u, 4294967295u, u_input.b, 4294967295u))), (vec4<u32>(4294967295u, u_input.b, 1354u, u_input.b) >> ((vec4<u32>(u_input.b, 4294967295u, u_input.b, 0u) >> (vec4<u32>(7714u, u_input.b, 0u, 135581u) % vec4<u32>(32u))) % vec4<u32>(32u))) & min(reverseBits(vec4<u32>(13581u, u_input.b, u_input.b, 0u)), vec4<u32>(54015u, u_input.b, 21028u, u_input.b) >> (vec4<u32>(91221u, u_input.b, 1u, u_input.b) % vec4<u32>(32u)))), global1.b.x);
}

