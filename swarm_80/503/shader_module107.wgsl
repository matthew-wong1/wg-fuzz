struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec4<u32>,
    d: bool,
    e: vec2<bool>,
}

struct Struct_5 {
    a: bool,
    b: vec4<i32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19> = array<u32, 19>(27705u, 1u, 0u, 25927u, 0u, 61137u, 18170u, 28176u, 1u, 1u, 67673u, 1u, 1u, 1u, 4294967295u, 10627u, 74003u, 46351u, 340u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = Struct_2(!(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false), true)), _wgslsmith_add_vec3_i32(vec3<i32>(-(u_input.a.x | u_input.a.x), 0i, _wgslsmith_add_i32(firstLeadingBit(-37416i), -u_input.a.x)), -abs(_wgslsmith_mod_vec3_i32(vec3<i32>(18076i, -34557i, u_input.a.x), u_input.a.yyw))), Struct_1(vec4<bool>(true, true, true, true)));
    var var_1 = u_input.a.yz;
    var var_2 = Struct_2(!select(select(vec2<bool>(true, false), select(var_0.a, var_0.c.a.zx, false), vec2<bool>(false, var_0.c.a.x)), select(vec2<bool>(false, var_0.a.x), select(var_0.c.a.xz, vec2<bool>(true, var_0.c.a.x), true), false), select(vec2<bool>(false, var_0.a.x), vec2<bool>(true, true), true)), firstLeadingBit(-vec3<i32>(1i, max(var_0.b.x, var_0.b.x), u_input.a.x)), var_0.c);
    var_0 = Struct_2(vec2<bool>(true, true), ~(select(vec3<i32>(var_1.x, u_input.a.x, u_input.a.x), var_2.b, true) | vec3<i32>(var_0.b.x, firstLeadingBit(var_1.x), _wgslsmith_clamp_i32(var_0.b.x, u_input.a.x, -22921i))), Struct_1(var_2.c.a));
    let var_3 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, _wgslsmith_clamp_u32(67242u, _wgslsmith_add_u32(global0[_wgslsmith_index_u32(arg_0, 19u)], global0[_wgslsmith_index_u32(arg_0, 19u)]), global0[_wgslsmith_index_u32(1u, 19u)]), countOneBits(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(arg_0, 19u)], arg_0)), ~36059u), countOneBits(_wgslsmith_div_vec4_u32(reverseBits(abs(vec4<u32>(global0[_wgslsmith_index_u32(55250u, 19u)], arg_0, 53631u, 1u))), firstTrailingBit(reverseBits(vec4<u32>(arg_0, 0u, arg_0, 39882u))))), _wgslsmith_mult_vec4_u32(max(vec4<u32>(global0[_wgslsmith_index_u32(~11675u, 19u)], select(26133u, arg_0, var_2.a.x), ~0u, ~global0[_wgslsmith_index_u32(1u, 19u)]), vec4<u32>(_wgslsmith_mult_u32(arg_0, 17232u), max(19127u, 4294967295u), ~global0[_wgslsmith_index_u32(91388u, 19u)], ~1u)), ~max(~vec4<u32>(global0[_wgslsmith_index_u32(131916u, 19u)], global0[_wgslsmith_index_u32(8576u, 19u)], arg_0, 86185u), ~vec4<u32>(global0[_wgslsmith_index_u32(arg_0, 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24234u, 19u)], 19u)], 51148u, 1u))));
    return var_2.c.a.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_5, arg_2: vec2<f32>, arg_3: vec3<u32>) -> vec2<i32> {
    let var_0 = Struct_2(vec2<bool>(arg_1.a, !(!arg_1.a) != (all(vec2<bool>(false, true)) != true)), ~countOneBits(u_input.a.zwx), Struct_1(vec4<bool>(arg_1.a, !(696f > arg_2.x), func_3(1u), -704f > _wgslsmith_f_op_f32(round(arg_1.c.x)))));
    let var_1 = u_input.a.xw << (~(vec2<u32>(1u, _wgslsmith_mod_u32(arg_0.x, 59259u)) << (vec2<u32>(arg_3.x, global0[_wgslsmith_index_u32(6565u, 19u)] << (arg_0.x % 32u)) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_2 = arg_1;
    let var_3 = vec2<bool>(true || !((arg_0.x ^ 1u) >= ~1u), var_2.a);
    global0 = array<u32, 19>();
    return ~var_0.b.zz << (~vec2<u32>(0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(12026u, 14313u, arg_3.x), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_3.x, 19u)], 19u)], arg_0.x, arg_3.x))) % vec2<u32>(32u));
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: vec4<i32>) -> u32 {
    var var_0 = Struct_5(any(vec4<bool>(_wgslsmith_add_i32(-1i, u_input.a.x) < _wgslsmith_div_i32(-39532i, u_input.a.x), true, true, false)), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(0i, 1i, 1i, arg_0.x) << (~vec4<u32>(1u, 4294967295u, global0[_wgslsmith_index_u32(72139u, 19u)], 1u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(arg_2, select(arg_2, u_input.a, false)), -_wgslsmith_mod_vec4_i32(arg_2, vec4<i32>(-1i, arg_0.x, -65718i, 2147483647i))), firstTrailingBit(vec4<i32>(2147483647i, u_input.a.x, arg_2.x, u_input.a.x)) ^ firstTrailingBit(vec4<i32>(u_input.a.x, 28030i, -60036i, arg_0.x))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-334f, 361f) * 678f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(577f, -602f)))), _wgslsmith_f_op_f32(-531f - -132f)))));
    let var_1 = Struct_5(var_0.a, vec4<i32>(1i, var_0.b.x, _wgslsmith_mult_i32(arg_0.x, countOneBits(-var_0.b.x)), i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.x, u_input.a.x), var_0.b.ww)), var_0.c);
    let var_2 = i32(-1i) * -max(1i, firstTrailingBit(min(0i, -2770i)));
    let var_3 = arg_2.zxy;
    var_0 = var_1;
    return arg_1;
}

fn func_1(arg_0: f32, arg_1: vec3<f32>) -> vec4<f32> {
    var var_0 = vec3<u32>(global0[_wgslsmith_index_u32(func_4(-func_2(vec2<u32>(global0[_wgslsmith_index_u32(0u, 19u)], 1u), Struct_5(false, vec4<i32>(-1i, u_input.a.x, u_input.a.x, -16863i), vec2<f32>(arg_1.x, arg_1.x)), vec2<f32>(arg_0, arg_1.x), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(28871u, 19u)], 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)])), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~0u, 19u)], 19u)], u_input.a) << ((0u >> (firstLeadingBit(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 19u)], 19u)], 19u)]) % 32u)) % 32u), 19u)], ~countOneBits(countOneBits(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)], 19u)])), global0[_wgslsmith_index_u32(0u, 19u)]);
    var var_1 = Struct_5(!(!(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 19u)] >= global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.x, var_0.x), 19u)])), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(-4616i, -u_input.a.x, u_input.a.x, -30160i | u_input.a.x)), u_input.a, _wgslsmith_div_vec4_i32(~u_input.a, ~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 23399i)) ^ (vec4<i32>(u_input.a.x, -1i, 4592i, u_input.a.x) << (abs(vec4<u32>(36261u, global0[_wgslsmith_index_u32(var_0.x, 19u)], 20079u, 4294967295u)) % vec4<u32>(32u)))), arg_1.yx);
    var_0 = ~vec3<u32>(~(~(var_0.x | 40957u)), 4294967295u, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(abs(select(39099u, 1u, var_1.a)), 19u)], countOneBits(22109u)));
    var var_2 = Struct_1(vec4<bool>(var_1.a, !(_wgslsmith_f_op_f32(floor(1099f)) > arg_1.x), false, var_1.a));
    let var_3 = Struct_1(!select(var_2.a, !var_2.a, var_2.a));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(134f, var_1.c.x, var_1.c.x, 477f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(147f, arg_0, 2292f, var_1.c.x))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2123f, 1875f, -437f, 630f)), vec4<f32>(-1040f, 1037f, arg_0, arg_1.x), select(var_2.a, var_2.a, var_3.a))))));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: vec2<f32>) -> Struct_1 {
    global0 = array<u32, 19>();
    var var_0 = _wgslsmith_div_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 19u)], ~0u), 19u)], global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15407u, 19u)], 19u)], 19u)]), 19u)], global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(36144u, 19u)], 19u)], 19u)], 19u)])), 19u)]), global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(max(_wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, global0[_wgslsmith_index_u32(9026u, 19u)]), ~4294967295u), max(global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(select(4294967295u, 1u, false), 19u)], 19u)], 19u)], 19u)])), 19u)], 19u)]);
    var var_1 = all(!select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), false), true), vec4<bool>(arg_1.x == 243f, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), all(vec3<bool>(false, false, true)))));
    let var_2 = Struct_3(_wgslsmith_mult_u32(~(~firstLeadingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23229u, 19u)], 19u)])), 77721u), -141f);
    let var_3 = Struct_4(Struct_1(vec4<bool>(any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), false)), all(vec4<bool>(true, true, true, true)), _wgslsmith_add_i32(u_input.a.x, -59113i) != abs(0i), select(false, select(false, true, true), true))), 0i, min(reverseBits(reverseBits(~vec4<u32>(var_2.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2.a, 19u)], 19u)], 19u)], var_2.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2.a, 19u)], 19u)]))), _wgslsmith_div_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(30161u, 19u)], 56719u, var_2.a, var_2.a), _wgslsmith_sub_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2.a, 19u)], 19u)], 190u, var_2.a, var_2.a), vec4<u32>(global0[_wgslsmith_index_u32(11360u, 19u)], var_2.a, var_2.a, var_2.a))) | max(vec4<u32>(45896u, var_2.a, 0u, 0u) | vec4<u32>(4294967295u, 1153u, 30471u, 0u), vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 19u)], 19u)], 39012u, 62627u))), true, !vec2<bool>(!any(vec2<bool>(true, false)), true));
    return var_3.a;
}

fn func_6(arg_0: Struct_1) -> Struct_3 {
    var var_0 = arg_0.a.x;
    var var_1 = Struct_3(~0u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1411f - 1000f))), 1168f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(607f)), 408f)) * 482f))));
    var_1 = Struct_3(firstTrailingBit(~(~var_1.a)), _wgslsmith_f_op_f32(509f - var_1.b));
    var var_2 = max(firstLeadingBit(-u_input.a), countOneBits(select(_wgslsmith_mult_vec4_i32(u_input.a | u_input.a, select(u_input.a, u_input.a, arg_0.a.x)), vec4<i32>(~(-1i), _wgslsmith_div_i32(u_input.a.x, 3961i), -2147483647i & u_input.a.x, 1i), !any(vec3<bool>(arg_0.a.x, false, arg_0.a.x)))));
    let var_3 = arg_0;
    return Struct_3(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(24698u, 70502u), var_1.a >> (var_1.a % 32u), ~0u) ^ var_1.a, global0[_wgslsmith_index_u32(~1u, 19u)]), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_1.b, var_1.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -123f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-614f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(105f, vec3<f32>(-109f, 1693f, 2576f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1541f, -998f))) * vec2<f32>(1197f, -153f)))));
    var_0 = Struct_3(countOneBits(~min(var_0.a, 1u >> (global0[_wgslsmith_index_u32(var_0.a, 19u)] % 32u))), -371f);
    let var_1 = u_input.a.zw;
    var_0 = Struct_3(4294967295u, var_0.b);
    let var_2 = vec3<bool>(all(vec2<bool>(true, !all(vec4<bool>(true, false, false, true)))), !((~var_0.a >> (global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.a, 1u), 19u)] % 32u)) > global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(63581u, 19u)], 19u)], global0[_wgslsmith_index_u32(54225u, 19u)]), 19u)]), !func_3(var_0.a));
    let var_3 = 1u;
    var_0 = Struct_3(~(~(~1u)), _wgslsmith_f_op_f32(max(-732f, 326f)));
    let var_4 = _wgslsmith_clamp_i32(~(u_input.a.x >> (global0[_wgslsmith_index_u32(87112u, 19u)] % 32u)), u_input.a.x, i32(-1i) * -_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, 0i, 1i, u_input.a.x), u_input.a), vec4<i32>(-8299i, var_1.x, 1i, -8554i) & u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(963f, 520f, var_0.b)))) - vec3<f32>(_wgslsmith_f_op_f32(floor(-634f)), _wgslsmith_f_op_f32(exp2(var_0.b)), -1342f))), ~(~countOneBits(1u)));
}

