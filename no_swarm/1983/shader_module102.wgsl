struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
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

var<private> global0: f32;

var<private> global1: Struct_1;

var<private> global2: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = ~abs(~vec4<i32>(1i, 1i, 1i, 1i));
    global1 = Struct_1(~global2.a);
    var var_1 = true;
    let var_2 = global1.a.x;
    global0 = 259f;
    return global1.a.x;
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec4<u32>, arg_3: vec4<u32>) -> Struct_1 {
    global2 = Struct_1(vec3<u32>(abs(~global2.a.x), ~(~1u), global1.a.x));
    var var_0 = Struct_1(vec3<u32>(56124u, ~arg_2.x, arg_3.x));
    var var_1 = !(!vec2<bool>(_wgslsmith_f_op_f32(-592f * arg_1) == arg_1, select(any(vec3<bool>(false, false, false)), true, true)));
    let var_2 = vec4<u32>(global2.a.x, 4294967295u >> ((func_3() | min(27556u, global1.a.x)) % 32u), _wgslsmith_mod_u32(max(var_0.a.x, 4294967295u) << (1u % 32u), _wgslsmith_clamp_u32(0u, arg_3.x, u_input.a.x)), global2.a.x) | arg_3;
    let var_3 = -41255i > (i32(-1i) * -select(arg_0, 2147483647i ^ arg_0, any(vec3<bool>(var_1.x, false, var_1.x))));
    return Struct_1(max(~abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(47057u, global2.a.x, 11215u), global1.a, global2.a)), arg_2.ywz));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = min(_wgslsmith_dot_vec3_u32(~global2.a, (vec3<u32>(1u, global2.a.x, 0u) | global1.a) & vec3<u32>(18792u, arg_0.a.x, _wgslsmith_dot_vec2_u32(global1.a.yz, vec2<u32>(global1.a.x, arg_0.a.x)))), 46420u ^ _wgslsmith_add_u32(1u, ~(global1.a.x ^ 20160u)));
    let var_1 = arg_0;
    let var_2 = firstTrailingBit(_wgslsmith_mod_u32(var_1.a.x, ~_wgslsmith_sub_u32(global2.a.x & 1u, ~0u)));
    let var_3 = func_2(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(abs(-761f)))), countOneBits(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 72904u, 0u, arg_0.a.x), vec4<u32>(36591u, 0u, 46362u, 0u)) ^ vec4<u32>(u_input.a.x, u_input.a.x, var_1.a.x, var_2), (vec4<u32>(64625u, global2.a.x, u_input.a.x, var_2) << (vec4<u32>(4294967295u, u_input.a.x, 1u, 4294967295u) % vec4<u32>(32u))) << (_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, var_1.a.x, global2.a.x), vec4<u32>(var_1.a.x, 1u, global1.a.x, u_input.a.x)) % vec4<u32>(32u)))), vec4<u32>(var_2 | 1u, firstTrailingBit(4294967295u) ^ ~(28359u | global2.a.x), ~0u, ~14125u));
    let var_4 = 4916u;
    return Struct_1(vec3<u32>(4294967295u, var_2, 4294967295u));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = func_4(func_2(-13055i, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-761f - 1314f)))), ~vec4<u32>(~global1.a.x, abs(u_input.a.x), global1.a.x, 8681u), ~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a.x, global1.a.x, 74985u, global2.a.x), vec4<u32>(global1.a.x, 53235u, 0u, 38378u))), _wgslsmith_sub_vec4_i32(firstTrailingBit(~min(vec4<i32>(-6979i, 11789i, 12692i, -2147483647i), vec4<i32>(-18590i, 8462i, 11193i, 7307i))), _wgslsmith_sub_vec4_i32(~vec4<i32>(37026i, -2147483647i, -15513i, 0i), abs(vec4<i32>(20257i, -19825i, 8306i, 0i)))));
    var var_1 = func_4(Struct_1(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4053u, u_input.a.x, u_input.a.x, arg_0.x), vec4<u32>(global2.a.x, arg_0.x, 4294967295u, 28096u)), func_2(-31876i, 1114f, vec4<u32>(4294967295u, 6195u, 10720u, 40558u), vec4<u32>(var_0.a.x, arg_0.x, u_input.a.x, 30089u)).a.x, u_input.a.x)), vec4<i32>(~_wgslsmith_div_i32(-46442i, 1i), 1i, firstTrailingBit(-37548i), _wgslsmith_add_i32(_wgslsmith_sub_i32(0i, -1i), _wgslsmith_mult_i32(-29856i, 1i))) ^ countOneBits(-min(vec4<i32>(-40834i, 15019i, 69358i, 10513i), vec4<i32>(-37591i, -13093i, 1i, 1i))));
    global2 = Struct_1(vec3<u32>(u_input.a.x, 15609u, reverseBits(0u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(268f, 1566f, 410f, -1357f)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-192f, -655f, -1573f, -146f)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-704f, 846f, 900f, 745f) + vec4<f32>(449f, 1252f, -1000f, -1035f)), vec4<f32>(343f, 1000f, -973f, -923f), true))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-107f, -486f, 1495f, -425f) - vec4<f32>(-1021f, -1299f, -617f, 1400f))))));
    let var_3 = func_2(abs(max(~_wgslsmith_mod_i32(2262i, 12723i), abs(~(-11801i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))) - -1466f), vec4<u32>(select(~_wgslsmith_mult_u32(54473u, 1u), 17604u, any(vec4<bool>(true, arg_1.x, true, true))), ~(~var_1.a.x) >> (49955u % 32u), 87006u, 38054u), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(0u, u_input.a.x, 55451u), 12500u ^ arg_0.x) ^ var_1.a.x, var_1.a.x, 42857u, select(4294967295u, var_1.a.x, true)));
    return Struct_1(vec3<u32>(0u, global1.a.x, ~abs(8364u)));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_1 {
    global2 = func_1(vec2<u32>(4294967295u, u_input.a.x & arg_0.x), !select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true));
    global2 = func_4(arg_1, abs(~vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 15926i), vec2<i32>(0i, 16378i)), 0i, firstTrailingBit(20786i), abs(26035i))));
    var var_0 = _wgslsmith_mod_vec2_i32(~vec2<i32>(1i, i32(-1i) * -8807i), _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(-vec2<i32>(-3745i, 30198i), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(-5234i, -38279i))), _wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), ~vec2<i32>(20801i, -78653i)), ~firstTrailingBit(vec2<i32>(-20358i, -1i))) << (countOneBits(~arg_1.a.zx) % vec2<u32>(32u)));
    var var_1 = arg_1;
    let var_2 = arg_1;
    return func_4(Struct_1(~vec3<u32>(min(global2.a.x, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, global2.a.x, 0u, 1u), vec4<u32>(1u, u_input.a.x, var_2.a.x, global1.a.x)), ~57398u)), _wgslsmith_add_vec4_i32(vec4<i32>(~1i, var_0.x & var_0.x, ~(var_0.x ^ var_0.x), _wgslsmith_div_i32(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(33860i, var_0.x, 10427i), vec3<i32>(var_0.x, var_0.x, -1i)))), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(-53998i, -22149i, var_0.x, var_0.x)), vec4<i32>(15910i, 0i, 15338i, var_0.x) >> (vec4<u32>(global1.a.x, arg_0.x, u_input.a.x, 46431u) % vec4<u32>(32u)), vec4<i32>(-2147483647i, 8627i, var_0.x, var_0.x) >> (vec4<u32>(global1.a.x, 93487u, 1u, 89007u) % vec4<u32>(32u))), select(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, var_0.x, var_0.x, -62043i), vec4<i32>(2147483647i, 1i, -2147483647i, 7237i)), reverseBits(vec4<i32>(0i, var_0.x, 0i, var_0.x)), vec4<bool>(true, true, true, true)), abs(vec4<i32>(var_0.x, -21606i, 0i, var_0.x)))));
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1766f * 1000f))))))));
    var var_1 = select(!vec3<bool>(true, any(vec3<bool>(false, true, false)), (var_0 < 577f) || all(vec2<bool>(true, false))), vec3<bool>(true | !(1581u == arg_3.x), var_0 < 1082f, any(vec4<bool>(true, true, true, true))), any(!vec2<bool>(false, select(true, false, false))));
    var var_2 = vec3<u32>(27092u, _wgslsmith_dot_vec2_u32(func_5(global2.a, Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 1u, 93900u), vec3<u32>(arg_2.a.x, 4294967295u, 1u), vec3<u32>(13306u, 87942u, 4294967295u)))).a.xz, ~u_input.a), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x << (arg_1.a.x % 32u), firstTrailingBit(global1.a.x), ~global2.a.x), _wgslsmith_clamp_vec3_u32(select(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_3.x, arg_3.x, 41285u), vec3<u32>(1u, arg_2.a.x, arg_3.x)), ~arg_1.a, any(vec4<bool>(false, false, true, var_1.x))), vec3<u32>(22261u, _wgslsmith_clamp_u32(67252u, 41997u, 48828u), 4294967295u), ~arg_1.a)));
    let var_3 = Struct_1(_wgslsmith_add_vec3_u32(max(max(global1.a, arg_2.a), func_1(var_2.xy, vec3<bool>(var_1.x, false, true)).a) & vec3<u32>(~arg_1.a.x, _wgslsmith_mult_u32(arg_1.a.x, global2.a.x), 4294967295u), global1.a));
    global1 = var_3;
    return _wgslsmith_f_op_f32(round(1102f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -1609f;
    let var_0 = abs(global1.a.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1066f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(772f + -755f))), _wgslsmith_f_op_f32(func_6(vec4<i32>(_wgslsmith_clamp_i32(1i, -17660i, 2147483647i), countOneBits(1i), i32(-1i) * -1i, min(2147483647i, -1i)), func_5(abs(vec3<u32>(var_0, var_0, 74564u)), func_1(vec2<u32>(global1.a.x, 4294967295u), vec3<bool>(true, false, true))), Struct_1(~global1.a), global2.a))));
    var var_2 = func_4(func_2(~countOneBits(-13566i), _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(trunc(var_1.x)))), ~(~vec4<u32>(u_input.a.x, var_0, 11073u, var_0)), ~min(select(vec4<u32>(global1.a.x, 4294967295u, 0u, global1.a.x), vec4<u32>(global1.a.x, 150417u, 4294967295u, global2.a.x), vec4<bool>(false, true, true, false)), ~vec4<u32>(var_0, 11980u, 7814u, 1u))), -vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(5298i, -1i, 43680i), vec3<i32>(-37833i, -59658i, -1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 17920i, -17816i, 36483i), vec4<i32>(-6972i, -2147483647i, 41411i, 19892i)), -1i, -1i >> (u_input.a.x % 32u)) & ~(-vec4<i32>(0i, 45078i, 1i, -2147483647i)));
    let var_3 = func_2(26961i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(594f)))), firstLeadingBit(~(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 37128u, 70521u), vec4<u32>(global1.a.x, 41265u, var_2.a.x, global2.a.x)))), select(max(~select(vec4<u32>(1u, var_0, var_0, global2.a.x), vec4<u32>(var_0, 0u, var_2.a.x, global2.a.x), vec4<bool>(true, false, false, false)), ~(~vec4<u32>(var_0, 1u, global1.a.x, var_2.a.x))), ~countOneBits(vec4<u32>(10377u, global2.a.x, 1u, var_0)), vec4<bool>(true, ~88069u != select(var_2.a.x, global2.a.x, false), (var_0 ^ global2.a.x) >= (25247u ^ global1.a.x), true)));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(var_1.x)))), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(round(829f)))), 316f);
    let x = u_input.a;
    s_output = StorageBuffer(global2.a.x);
}

