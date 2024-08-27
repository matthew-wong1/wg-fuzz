struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: bool,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 23>;

var<private> global2: Struct_1 = Struct_1(-27890i, vec3<i32>(-18158i, 21774i, 1i), true, vec4<i32>(1i, 23282i, 25272i, i32(-2147483648)));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> i32 {
    global0 = Struct_1(min(~firstTrailingBit(2147483647i), select(arg_2.a, ~20418i, true)), select(-(~vec3<i32>(4794i, global2.d.x, u_input.e.x)), ~max(vec3<i32>(global0.a, global0.b.x, global2.b.x), arg_2.d.ywy), arg_0) ^ select(countOneBits(vec3<i32>(global0.d.x, 2147483647i, arg_2.a)), countOneBits(global2.b >> (vec3<u32>(1u, global1[_wgslsmith_index_u32(53631u, 23u)], 0u) % vec3<u32>(32u))), true), true, vec4<i32>(-1i, u_input.e.x, ~1676i, global0.d.x));
    let var_0 = arg_2;
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-308f))), -1000f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_div_f32(-1003f, -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-676f - 218f), 124f)))));
    global0 = Struct_1(i32(-1i) * -2147483647i, u_input.e, true, _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.d.x, arg_2.b.x, arg_2.b.x, global0.b.x), var_0.d, firstTrailingBit(_wgslsmith_mult_vec4_i32(~var_0.d, var_0.d << (u_input.c % vec4<u32>(32u))))));
    var var_2 = var_1.x;
    return firstTrailingBit(-1i >> (~arg_1 % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = Struct_1(firstTrailingBit(arg_0.a), _wgslsmith_mod_vec3_i32(arg_3.d.xxw, vec3<i32>(firstTrailingBit(~(-2147483647i)), global0.d.x, _wgslsmith_mult_i32(0i, 62433i))), true & (firstTrailingBit(1i) < -19404i), -vec4<i32>(arg_0.a, _wgslsmith_div_i32(15906i, 1i), -1i, _wgslsmith_mod_i32(global2.b.x, -40304i)) >> (reverseBits(u_input.c) % vec4<u32>(32u)));
    let var_1 = vec2<i32>(_wgslsmith_dot_vec2_i32(global0.b.yz, select(vec2<i32>(-2147483647i, -2147483647i), global2.d.xy, !(!vec2<bool>(global2.c, arg_0.c)))), 1i);
    var var_2 = var_1.x;
    var var_3 = Struct_1(-56023i << (1u % 32u), vec3<i32>(0i, var_1.x, i32(-1i) * -1i), !(false != any(!vec3<bool>(arg_1.c, global0.c, global2.c))), vec4<i32>(global0.b.x, max(1i, -24948i), 26766i, _wgslsmith_div_i32(func_3(arg_3.c, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 23u)], 23u)], Struct_1(1i, arg_3.d.www, arg_3.c, vec4<i32>(arg_0.b.x, u_input.e.x, -45924i, -2147483647i))) ^ abs(1i), -_wgslsmith_mult_i32(var_0.b.x, -9787i))));
    var var_4 = vec3<u32>(1u, _wgslsmith_clamp_u32(~(~min(u_input.a, u_input.c.x)), 0u, 71069u), ~(~(_wgslsmith_mult_u32(8780u, 3451u) >> ((global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 23u)], 23u)] >> (u_input.d % 32u)) % 32u))));
    return ~abs(_wgslsmith_mod_vec4_u32(select(u_input.c, u_input.c, any(vec4<bool>(arg_1.c, true, false, arg_0.c))), u_input.c));
}

fn func_2() -> vec4<bool> {
    var var_0 = ~func_4(Struct_1(func_3(true, firstTrailingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 23u)], 23u)]), Struct_1(0i, global0.b, false, global2.d)), firstTrailingBit(global0.d.zxx ^ global0.d.zwx), (global2.d.x & global2.b.x) == ~0i, ~_wgslsmith_mult_vec4_i32(global2.d, vec4<i32>(-2147483647i, 19388i, -2147483647i, global2.b.x))), Struct_1(max(1i, global0.b.x) & -10760i, _wgslsmith_div_vec3_i32(abs(vec3<i32>(-6972i, 1i, global0.b.x)), -global0.d.wxy), (0u != global1[_wgslsmith_index_u32(u_input.c.x, 23u)]) & true, firstTrailingBit(vec4<i32>(global0.a, global0.a, u_input.e.x, global2.a))), _wgslsmith_f_op_f32(-1000f - 1000f), Struct_1(_wgslsmith_dot_vec4_i32(global2.d, firstTrailingBit(global2.d)), -select(global0.b, global0.b, vec3<bool>(false, global0.c, false)), !any(vec2<bool>(true, true)), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-12016i, 0i, -989i, global2.d.x), global2.d), vec4<i32>(0i, u_input.e.x, 1i, -2147483647i))));
    let var_1 = Struct_1(_wgslsmith_clamp_i32(-((global0.a | u_input.e.x) | 12825i), _wgslsmith_dot_vec3_i32(select(vec3<i32>(global0.b.x, u_input.e.x, global0.a), _wgslsmith_add_vec3_i32(vec3<i32>(global2.b.x, -2147483647i, -42392i), global2.b), all(vec3<bool>(false, false, global0.c))), _wgslsmith_clamp_vec3_i32(vec3<i32>(6971i, 71153i, 49975i) | global2.b, ~global2.b, abs(vec3<i32>(global0.b.x, -1i, global0.d.x)))), global2.d.x), u_input.e, global0.c, -abs(global2.d));
    let var_2 = Struct_1(-global2.a, _wgslsmith_div_vec3_i32(-(~vec3<i32>(u_input.e.x, 0i, 3481i)), global2.d.wzx) >> (var_0.xzy % vec3<u32>(32u)), var_1.c, firstTrailingBit(select(var_1.d, ~countOneBits(vec4<i32>(var_1.a, -8846i, -1i, u_input.e.x)), vec4<bool>(true, false, true, false))));
    let var_3 = select(vec4<bool>(false, global0.c, true, any(!(!vec3<bool>(false, global0.c, var_2.c)))), select(vec4<bool>(!(global2.c && global2.c), all(vec4<bool>(true, var_1.c, global2.c, global2.c)), true, var_1.c), vec4<bool>(!all(vec4<bool>(global2.c, false, var_1.c, false)), true, !var_1.c, any(vec2<bool>(true, var_1.c))), select(select(!vec4<bool>(var_2.c, false, true, true), select(vec4<bool>(false, false, var_2.c, global2.c), vec4<bool>(global2.c, false, var_2.c, false), true), vec4<bool>(global2.c, false, true, true)), select(select(vec4<bool>(global2.c, true, true, global0.c), vec4<bool>(global2.c, var_1.c, var_1.c, false), var_2.c), vec4<bool>(false, var_1.c, true, var_1.c), true), var_2.c)), select(select(select(!vec4<bool>(false, false, true, var_2.c), vec4<bool>(false, var_1.c, var_2.c, false), !vec4<bool>(true, var_2.c, var_1.c, var_1.c)), !vec4<bool>(false, global0.c, global2.c, global2.c), vec4<bool>(all(vec2<bool>(false, true)), true, true, var_2.a == u_input.e.x)), select(select(!vec4<bool>(global2.c, true, true, global0.c), !vec4<bool>(false, true, true, var_1.c), vec4<bool>(false, global0.c, true, true)), vec4<bool>(true, all(vec2<bool>(global0.c, true)), !global0.c, true), true), !vec4<bool>(var_2.c, false, all(vec4<bool>(true, true, var_1.c, var_2.c)), false)));
    var var_4 = Struct_1(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.d.x, i32(-1i) * -50250i), -_wgslsmith_mult_vec2_i32(u_input.e.yz, vec2<i32>(u_input.e.x, 1i))), _wgslsmith_clamp_vec3_i32(reverseBits(-vec3<i32>(33650i, u_input.e.x, var_2.b.x) >> (~var_0.zwz % vec3<u32>(32u))), ~_wgslsmith_mult_vec3_i32(vec3<i32>(0i, u_input.e.x, global2.a) >> (u_input.c.wxw % vec3<u32>(32u)), ~global0.b), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(-2147483647i, 1i, global0.d.x)), u_input.e & (vec3<i32>(56933i, -995i, global0.b.x) | global2.d.yzx))), !(!(false && var_3.x) & true), select(~(vec4<i32>(1i, var_2.b.x, 2147483647i, -2147483647i) & vec4<i32>(var_1.a, 1i, u_input.e.x, 0i)) & (~var_1.d << (u_input.c % vec4<u32>(32u))), vec4<i32>(-34928i, -16700i & (global0.a >> (33799u % 32u)), var_2.d.x << (~u_input.a % 32u), 2147483647i), any(!(!var_3))));
    return var_3;
}

fn func_1(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec4<u32>) -> vec4<f32> {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_add_u32(~arg_3.x, 20888u | arg_3.x) & min(_wgslsmith_dot_vec3_u32(arg_1.zxz, ~vec3<u32>(11109u, arg_1.x, 52942u)), 1u), u_input.a), 23u)];
    let var_1 = any(select(!vec4<bool>(arg_2.c & true, select(global0.c, true, global0.c), all(vec2<bool>(global0.c, global0.c)), !arg_2.c), !func_2(), true));
    var var_2 = ~firstTrailingBit(arg_3.x) & ~4294967295u;
    var var_3 = select(vec3<bool>(global0.c, true, global0.c), vec3<bool>(true, true, true), false);
    var var_4 = -1046f;
    return vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-721f * -1177f))), _wgslsmith_f_op_f32(round(1477f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1694f)) + _wgslsmith_div_f32(1404f, _wgslsmith_div_f32(-1000f, 1110f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-500f - 714f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 226f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-491f, _wgslsmith_f_op_f32(max(-2375f, -184f)), global2.c)), -1475f)));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = arg_0.x;
    let var_2 = arg_1.c | !(!var_0.c);
    var var_3 = min(~vec4<u32>(arg_2, (7024u >> (arg_2 % 32u)) >> (~arg_2 % 32u), ~global1[_wgslsmith_index_u32(arg_2, 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 23u)], 23u)]), u_input.c);
    var var_4 = ~var_3.zy;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-761f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-736f - -1138f)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1229f)));
    let var_1 = countOneBits(~countOneBits(~u_input.c.wyz) >> (u_input.c.xyx % vec3<u32>(32u)));
    let var_2 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(487f, var_0, -404f, var_0), vec4<f32>(var_0, -121f, var_0, var_0), false))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(527f, 188f, var_0, var_0), vec4<f32>(var_0, -795f, -888f, var_0))), _wgslsmith_f_op_vec4_f32(func_1(2147483647i, u_input.c, Struct_1(-57092i, vec3<i32>(2147483647i, -2147483647i, -39499i), false, vec4<i32>(global2.b.x, global2.b.x, global0.a, 2147483647i)), vec4<u32>(var_1.x, u_input.d, global1[_wgslsmith_index_u32(40711u, 23u)], 102007u))))))), Struct_1(global2.a, global0.b, all(!vec2<bool>(global2.c, global2.c)) && !(82730u <= var_1.x), global2.d), abs(var_1.x), vec2<bool>(global0.c, true));
    global0 = var_2;
    let var_3 = vec2<i32>(func_3(!global0.c, global1[_wgslsmith_index_u32(abs(~(~17890u)), 23u)], Struct_1(-1i, min(global2.b, global2.b), global0.c | true, _wgslsmith_div_vec4_i32(global2.d << (vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 23u)], 1u, global1[_wgslsmith_index_u32(1u, 23u)], u_input.c.x) % vec4<u32>(32u)), -var_2.d))), u_input.e.x);
    global0 = var_2;
    global0 = Struct_1(global0.a, -vec3<i32>(countOneBits(~global0.a), _wgslsmith_sub_i32(global2.a, i32(-1i) * -8875i), -2147483647i), false, _wgslsmith_sub_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(0i, 1i, 1i, -1i), _wgslsmith_mult_vec4_i32(var_2.d, var_2.d)), var_2.d << (reverseBits(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 23u)], var_1.x, 48350u, 3696u)) % vec4<u32>(32u))));
    global1 = array<u32, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.c.x, 16451u), u_input.c.zz | u_input.c.zx)));
}

