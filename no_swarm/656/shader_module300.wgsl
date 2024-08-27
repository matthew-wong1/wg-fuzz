struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: i32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_3;

var<private> global2: Struct_2 = Struct_2(vec3<u32>(1u, 1u, 4294967295u), vec3<bool>(true, true, false), -8709i, vec3<i32>(-1i, 1i, 1i), vec2<u32>(71783u, 32324u));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<u32>) -> vec3<u32> {
    let var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_2.x, arg_2.x, 1u, global0.a)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(59997u, 3773u, global2.e.x, arg_2.x), vec4<u32>(global2.a.x, global2.a.x, arg_2.x, 1u))), 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(~u_input.a, ~66143u), vec2<u32>(65353u, _wgslsmith_clamp_u32(4294967295u, 31500u, global2.e.x))) >> (vec2<u32>(global2.e.x, global0.a) % vec2<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, global0.b, global0.b, 1826f) - vec4<f32>(-1614f, 1000f, global0.b, -364f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.b, global0.b, global0.b, global0.b), vec4<f32>(global0.b, global0.b, 363f, -1288f)))))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(223f, 1000f, 679f, global0.b))) + vec4<f32>(1000f, global0.b, global0.b, -1000f))) - vec4<f32>(global0.b, -1524f, _wgslsmith_f_op_f32(step(173f, global0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.b)) + -585f))));
    global1 = arg_0;
    let var_2 = true;
    let var_3 = _wgslsmith_clamp_i32(reverseBits(global2.c), min(firstLeadingBit(_wgslsmith_add_i32(i32(-1i) * -9533i, 1i)), -global2.d.x), 21330i);
    return arg_2;
}

fn func_2() -> Struct_2 {
    global1 = Struct_3(-765f <= global0.b);
    global1 = Struct_3(global1.a);
    global2 = Struct_2((select(func_3(Struct_3(global1.a), Struct_3(global1.a), global2.a), global2.a, false) ^ global2.a) << (vec3<u32>(firstTrailingBit(4294967295u) | (global2.a.x >> (global0.a % 32u)), abs(abs(global0.a)), _wgslsmith_div_u32(_wgslsmith_clamp_u32(85172u, global0.a, 62720u), min(1u, 0u))) % vec3<u32>(32u)), !global2.b, -2147483647i, ~countOneBits(vec3<i32>(~global2.d.x, 1i, -12461i)), vec2<u32>(u_input.a, ~(1u << (~u_input.a % 32u))));
    let var_0 = ~global2.d;
    let var_1 = max(~firstLeadingBit(vec3<u32>(127u, global2.e.x, global0.a)), _wgslsmith_mult_vec3_u32(~abs(global2.a), ~firstTrailingBit(vec3<u32>(global2.a.x, 1u, global0.a)))) & reverseBits(vec3<u32>(135206u, ~(~global2.e.x), 56971u));
    return Struct_2(select(countOneBits(var_1), vec3<u32>(4294967295u << (u_input.a % 32u), global0.a, var_1.x), true) | global2.a, select(global2.b, !global2.b, vec3<bool>(global1.a, all(!global2.b), false)), global2.d.x, _wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(global2.d.x, var_0.x, 15966i)) & countOneBits(var_0), var_0) & vec3<i32>(global2.c, -global2.c << (_wgslsmith_dot_vec2_u32(vec2<u32>(497u, 22207u), vec2<u32>(1u, 0u)) % 32u), _wgslsmith_dot_vec3_i32(var_0, global2.d)), global2.a.xz);
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: vec2<i32>, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = func_2();
    var var_1 = Struct_3(false);
    var var_2 = _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, var_0.c, 20971i, ~arg_2.x), select(vec4<i32>(-24804i, ~global2.c, -arg_2.x, ~var_0.d.x), vec4<i32>(-1i) * -vec4<i32>(-2147483647i, 2147483647i, 20816i, global2.c), vec4<bool>(global1.a, var_1.a & false, all(global2.b), true))), ~_wgslsmith_mod_vec4_i32(-vec4<i32>(global2.c, -1i, 1i, -12307i), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 3447i, arg_2.x, 1i), vec4<i32>(arg_2.x, 1i, arg_2.x, 0i)) & -vec4<i32>(arg_2.x, 23524i, var_0.c, 1i)), _wgslsmith_add_vec4_i32(abs(-(~vec4<i32>(37326i, 10791i, 2147483647i, var_0.d.x))), -max(_wgslsmith_sub_vec4_i32(vec4<i32>(-20307i, -1i, var_0.d.x, var_0.d.x), vec4<i32>(var_0.c, 0i, arg_2.x, arg_2.x)), abs(vec4<i32>(-14619i, arg_2.x, -22427i, arg_2.x)))));
    var var_3 = _wgslsmith_f_op_f32(abs(arg_0));
    var var_4 = Struct_3((1935f > arg_1.x) && select(all(vec4<bool>(global2.b.x, var_1.a, global2.b.x, false)), ~4294967295u >= _wgslsmith_mult_u32(4294967295u, global2.e.x), false | var_0.b.x));
    return Struct_1(abs(global2.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1613f - global0.b)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))) * -601f));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> f32 {
    let var_0 = _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(~(vec2<i32>(global2.d.x, global2.c) & vec2<i32>(-2147483647i, global2.d.x)), vec2<i32>(-12695i << (~arg_0.a % 32u), i32(-1i) * -global2.d.x)), reverseBits(vec2<i32>(max(_wgslsmith_div_i32(20690i, global2.d.x), global2.c), -_wgslsmith_add_i32(global2.c, global2.d.x))));
    var var_1 = all(global2.b);
    var var_2 = ~(~_wgslsmith_mod_vec2_u32(global2.e, global2.e));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.b, _wgslsmith_f_op_f32(select(arg_0.b, _wgslsmith_f_op_f32(-625f - _wgslsmith_f_op_f32(step(-1957f, global0.b))), select(true, global1.a, arg_1))), !global1.a)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -541f))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)), _wgslsmith_div_f32(-1578f, _wgslsmith_f_op_f32(-746f + arg_0.b)), all(vec4<bool>(true, global2.b.x, arg_1, false)) || all(vec3<bool>(true, global2.b.x, global2.b.x))))));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_1(global0.b, vec3<f32>(683f, arg_2, -509f), vec2<i32>(-27541i, -1i), global2.b.zz).b) - -937f), arg_2));
    var var_1 = global2.a;
    var var_2 = firstTrailingBit(77879u);
    return Struct_1(~global2.a.x, global0.b);
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec2<f32>) -> Struct_3 {
    let var_0 = Struct_1(global2.a.x, arg_3.x);
    let var_1 = arg_1.b;
    global0 = func_5(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a, ~abs(global0.a), ~1u, global2.a.x), abs(reverseBits(vec4<u32>(u_input.a, arg_1.a, global0.a, u_input.a)))), vec2<i32>(1i, -reverseBits(~global2.c)), -889f);
    let var_2 = Struct_2(global2.a, !(!vec3<bool>(any(vec3<bool>(global2.b.x, arg_2.a, false)), arg_2.a, global1.a)), firstTrailingBit(global2.d.x ^ global2.d.x), vec3<i32>(1i, -_wgslsmith_dot_vec4_i32(select(vec4<i32>(arg_0, global2.c, 1i, global2.d.x), vec4<i32>(1i, 1i, arg_0, global2.c), global2.b.x), ~vec4<i32>(arg_0, arg_0, -43131i, arg_0)), -57115i), global2.e);
    let var_3 = func_1(var_0.b, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-281f, global0.b, _wgslsmith_f_op_f32(sign(-594f))), vec3<f32>(-877f, 784f, -1062f), var_2.b)), max(global2.d.zz, vec2<i32>(-_wgslsmith_mod_i32(-13091i, global2.d.x), _wgslsmith_add_i32(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.c, -16170i, arg_0, 20798i), vec4<i32>(arg_0, global2.d.x, 30689i, -2147483647i))))), select(global2.b.xz, func_2().b.yx, true)).a;
    return Struct_3(false);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_6(global2.c, func_5(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 52009u, global0.a, 12072u) ^ vec4<u32>(global0.a, 71876u, 4294967295u, global2.e.x), ~(vec4<u32>(u_input.a, 1u, 4294967295u, 1706u) << (vec4<u32>(17039u, global0.a, 1u, 1u) % vec4<u32>(32u)))), ~global2.d.xz, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(func_1(global0.b, vec3<f32>(-772f, global0.b, global0.b), vec2<i32>(24048i, global2.c), global2.b.xz), false)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0.b, global0.b), global0.b, true)))), Struct_3(any(global2.b.yx)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(389f, 1627f), vec2<f32>(589f, global0.b)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b, -1000f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, global0.b)))))));
    var var_0 = _wgslsmith_f_op_f32(global0.b + -1000f);
    var var_1 = global2.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.b)) + _wgslsmith_f_op_f32(max(339f, _wgslsmith_div_f32(global0.b, 1454f)))))), ~var_1.x & ~(~1u), max(~_wgslsmith_dot_vec3_i32(global2.d, vec3<i32>(global2.d.x, global2.d.x, 46i)), ~abs(0i)), global0.a & abs(~abs(global2.e.x)), countOneBits(~var_1.yx & _wgslsmith_mult_vec2_u32(min(vec2<u32>(1465u, 1u), vec2<u32>(u_input.a, 92514u)), var_1.xx)));
}

