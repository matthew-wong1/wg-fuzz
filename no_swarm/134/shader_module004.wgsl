struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20>;

var<private> global1: bool = false;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: Struct_2) -> f32 {
    global1 = any(select(select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(arg_3.c.a, true, arg_3.c.a, true)), arg_1.c.a), !(arg_1.c.a != false)), vec2<bool>(0i <= u_input.d, !all(vec4<bool>(arg_0.c.a, true, false, false))), false));
    var var_0 = Struct_1(!(any(!vec3<bool>(arg_0.c.a, false, false)) | any(!vec4<bool>(arg_0.c.a, false, true, false))), _wgslsmith_mult_u32(arg_3.b.x, arg_3.c.c), ~_wgslsmith_dot_vec3_u32(~min(vec3<u32>(1u, 1u, arg_0.a.x), arg_2), arg_3.a.zyx));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-757f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(160f, 496f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-628f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(803f, -1000f) * _wgslsmith_f_op_f32(f32(-1f) * -292f))))));
    let var_2 = vec4<i32>(-1i) * -vec4<i32>(-u_input.d, _wgslsmith_mult_i32(_wgslsmith_mult_i32(0i, u_input.d), u_input.d), 2147483647i, 9592i);
    let var_3 = Struct_1(any(!select(vec2<bool>(arg_1.c.a, true), select(vec2<bool>(arg_3.c.a, global0[_wgslsmith_index_u32(arg_1.b.x, 20u)]), vec2<bool>(true, false), true), arg_1.c.a != arg_0.c.a)), ~4294967295u, firstLeadingBit(28009u));
    return var_1;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: vec3<bool>) -> vec4<bool> {
    var var_0 = arg_0;
    let var_1 = Struct_2(vec4<u32>(min(4294967295u, 0u), u_input.a, ~(~countOneBits(u_input.c)), 29075u), u_input.b.xz, var_0.c);
    global1 = arg_1.x < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_2(~var_0.a, vec2<u32>(arg_0.c.c, var_1.b.x), arg_0.c), var_1, _wgslsmith_sub_vec3_u32(~arg_0.a.wzy, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 40757u, u_input.c), vec3<u32>(10078u, var_0.c.b, u_input.a))), Struct_2(vec4<u32>(1u, 1u, arg_0.c.b, var_0.b.x), arg_0.b, arg_0.c)))));
    let var_2 = 1658f;
    let var_3 = Struct_2(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(var_1.c.b, 1u, u_input.c, 0u)), reverseBits(arg_0.a << (var_0.a % vec4<u32>(32u)))) << (arg_0.a % vec4<u32>(32u)), countOneBits(_wgslsmith_sub_vec2_u32(arg_2.a.zy ^ (vec2<u32>(0u, 49832u) << (arg_0.b % vec2<u32>(32u))), var_1.a.zw)), var_1.c);
    return select(!(!(!vec4<bool>(arg_3.x, true, arg_2.c.a, arg_0.c.a))), select(!select(vec4<bool>(true, arg_0.c.a, true, arg_0.c.a), vec4<bool>(var_1.c.a, true, false, true), vec4<bool>(true, var_0.c.a, var_1.c.a, true)), !vec4<bool>(!var_0.c.a, arg_2.c.a, true || arg_2.c.a, all(arg_3.zx)), select(select(!vec4<bool>(arg_2.c.a, var_0.c.a, var_0.c.a, true), select(vec4<bool>(false, false, true, var_0.c.a), vec4<bool>(arg_2.c.a, arg_3.x, arg_2.c.a, var_0.c.a), false), select(vec4<bool>(global0[_wgslsmith_index_u32(61322u, 20u)], arg_3.x, true, false), vec4<bool>(var_3.c.a, global0[_wgslsmith_index_u32(4294967295u, 20u)], false, true), vec4<bool>(arg_2.c.a, var_1.c.a, false, false))), select(vec4<bool>(var_1.c.a, false, var_0.c.a, true), vec4<bool>(true, false, arg_0.c.a, false), vec4<bool>(var_1.c.a, false, arg_3.x, false)), _wgslsmith_f_op_f32(f32(-1f) * -247f) >= _wgslsmith_f_op_f32(func_3(Struct_2(vec4<u32>(var_3.c.b, arg_0.c.b, u_input.c, 1u), u_input.b.zx, arg_0.c), arg_2, arg_2.a.zwy, var_1)))), vec4<bool>(var_1.c.a, any(arg_3.xz), true, true));
}

fn func_1(arg_0: bool, arg_1: f32) -> Struct_2 {
    var var_0 = select(select(!select(func_2(Struct_2(vec4<u32>(1u, 0u, 70478u, u_input.a), u_input.b.zz, Struct_1(true, u_input.b.x, 0u)), vec2<f32>(1016f, arg_1), Struct_2(vec4<u32>(1u, u_input.a, 4294967295u, 4294967295u), u_input.b.zx, Struct_1(arg_0, u_input.a, 8247u)), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 20u)], false)), select(vec4<bool>(false, false, arg_0, arg_0), vec4<bool>(true, arg_0, global0[_wgslsmith_index_u32(1u, 20u)], false), vec4<bool>(global0[_wgslsmith_index_u32(43198u, 20u)], global0[_wgslsmith_index_u32(u_input.c, 20u)], false, true)), u_input.c <= 56678u), vec4<bool>(!any(vec4<bool>(arg_0, false, global0[_wgslsmith_index_u32(0u, 20u)], false)), global0[_wgslsmith_index_u32(u_input.a, 20u)], true, global0[_wgslsmith_index_u32(u_input.a, 20u)]), !vec4<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.c), vec2<u32>(u_input.c, 1u)), 20u)], false, func_2(Struct_2(vec4<u32>(8040u, 4294967295u, u_input.a, 85063u), u_input.b.yz, Struct_1(global0[_wgslsmith_index_u32(0u, 20u)], 0u, u_input.a)), vec2<f32>(arg_1, arg_1), Struct_2(vec4<u32>(4294967295u, u_input.c, 0u, 11382u), vec2<u32>(0u, u_input.c), Struct_1(true, 110981u, 1336u)), vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.b.x, 20u)])).x)), func_2(Struct_2(~vec4<u32>(u_input.b.x, 1u, u_input.c, 37749u), vec2<u32>(u_input.a, u_input.c) ^ select(u_input.b.zy, u_input.b.yx, vec2<bool>(false, false)), Struct_1(false, ~4294967295u, max(1u, u_input.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1, arg_1), vec2<f32>(arg_1, -1837f))))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1748f, arg_1)))), Struct_2(vec4<u32>(~u_input.c, firstLeadingBit(u_input.a), ~u_input.a, ~u_input.c), ~(~u_input.b.zz), Struct_1(func_2(Struct_2(vec4<u32>(0u, u_input.a, u_input.a, u_input.b.x), vec2<u32>(4294967295u, 5894u), Struct_1(arg_0, u_input.a, u_input.c)), vec2<f32>(-2089f, arg_1), Struct_2(vec4<u32>(0u, 1088u, u_input.b.x, u_input.c), u_input.b.xz, Struct_1(arg_0, u_input.b.x, u_input.b.x)), vec3<bool>(arg_0, false, true)).x, ~50655u, ~0u)), !select(func_2(Struct_2(vec4<u32>(u_input.a, u_input.a, 18544u, 4294967295u), vec2<u32>(u_input.a, 19936u), Struct_1(arg_0, 40502u, 1u)), vec2<f32>(-1244f, -296f), Struct_2(vec4<u32>(22567u, 19825u, u_input.a, u_input.c), u_input.b.xz, Struct_1(arg_0, 36860u, 4294967295u)), vec3<bool>(global0[_wgslsmith_index_u32(1u, 20u)], true, arg_0)).wxy, select(vec3<bool>(false, arg_0, true), vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.c, 20u)]), true), arg_0 || true)), !select(vec4<bool>(true, all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], global0[_wgslsmith_index_u32(u_input.c, 20u)])), true, true), select(vec4<bool>(arg_0, arg_0, global0[_wgslsmith_index_u32(1u, 20u)], arg_0), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 20u)], false, global0[_wgslsmith_index_u32(0u, 20u)], arg_0), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], false, global0[_wgslsmith_index_u32(4294967295u, 20u)], arg_0)), select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(0u, 20u)], true), !vec4<bool>(global0[_wgslsmith_index_u32(57483u, 20u)], true, arg_0, arg_0), !vec4<bool>(arg_0, global0[_wgslsmith_index_u32(4294967295u, 20u)], arg_0, true))));
    var_0 = select(func_2(Struct_2(vec4<u32>(reverseBits(1u), u_input.a ^ 53667u, u_input.c, u_input.b.x), (vec2<u32>(u_input.a, u_input.a) ^ vec2<u32>(u_input.a, 0u)) | (vec2<u32>(u_input.a, u_input.b.x) | u_input.b.yx), Struct_1(false, abs(4294967295u), firstTrailingBit(35405u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -467f) + vec2<f32>(1019f, arg_1))) + vec2<f32>(arg_1, -300f)), Struct_2(~vec4<u32>(u_input.c, u_input.b.x, u_input.b.x, 596u) << (vec4<u32>(4294967295u, 31670u, u_input.b.x, 11081u) % vec4<u32>(32u)), countOneBits(~u_input.b.xx), Struct_1(arg_1 > arg_1, ~0u, _wgslsmith_add_u32(45239u, 76445u))), var_0.zzz), select(func_2(Struct_2(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, u_input.a, 9701u, 61432u), vec4<u32>(u_input.a, u_input.a, 59595u, 23424u)), abs(vec2<u32>(23690u, u_input.a)), Struct_1(var_0.x, 4294967295u, u_input.b.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) - vec2<f32>(arg_1, arg_1)) + _wgslsmith_div_vec2_f32(vec2<f32>(arg_1, 122f), vec2<f32>(-326f, arg_1))), Struct_2(vec4<u32>(12260u, u_input.a, u_input.b.x, u_input.c), vec2<u32>(1u, u_input.a), Struct_1(global0[_wgslsmith_index_u32(59319u, 20u)], 4294967295u, 1832u)), var_0.xyx), vec4<bool>(false, all(func_2(Struct_2(vec4<u32>(4294967295u, 4294967295u, 1u, 597u), vec2<u32>(u_input.c, 54633u), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 20u)], 0u, u_input.b.x)), vec2<f32>(arg_1, 1404f), Struct_2(vec4<u32>(1u, u_input.b.x, u_input.c, 0u), u_input.b.xx, Struct_1(global0[_wgslsmith_index_u32(0u, 20u)], 4294967295u, u_input.a)), var_0.xxy)), -898f <= _wgslsmith_f_op_f32(floor(arg_1)), arg_0 && arg_0), select(!select(vec4<bool>(arg_0, false, global0[_wgslsmith_index_u32(u_input.c, 20u)], false), vec4<bool>(false, arg_0, true, var_0.x), vec4<bool>(true, global0[_wgslsmith_index_u32(50830u, 20u)], false, global0[_wgslsmith_index_u32(16832u, 20u)])), select(func_2(Struct_2(vec4<u32>(7532u, 4294967295u, u_input.c, 37276u), vec2<u32>(4294967295u, u_input.b.x), Struct_1(true, 41508u, u_input.b.x)), vec2<f32>(arg_1, arg_1), Struct_2(vec4<u32>(2754u, 0u, u_input.b.x, 39951u), vec2<u32>(u_input.c, 1u), Struct_1(false, u_input.a, u_input.c)), vec3<bool>(true, true, arg_0)), vec4<bool>(var_0.x, true, arg_0, arg_0), true), !func_2(Struct_2(vec4<u32>(u_input.c, u_input.b.x, u_input.b.x, u_input.b.x), vec2<u32>(u_input.c, 4294967295u), Struct_1(global0[_wgslsmith_index_u32(1u, 20u)], 50165u, u_input.b.x)), vec2<f32>(-359f, 700f), Struct_2(vec4<u32>(u_input.b.x, 5011u, u_input.a, u_input.c), u_input.b.zx, Struct_1(true, u_input.a, 1u)), var_0.xyy).x)), !(!select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 20u)], false, var_0.x, true), !vec4<bool>(arg_0, global0[_wgslsmith_index_u32(4294967295u, 20u)], false, arg_0), arg_0)));
    let var_1 = var_0.yy;
    var_0 = select(select(func_2(Struct_2(vec4<u32>(49740u, u_input.b.x, u_input.b.x, 24385u), _wgslsmith_mod_vec2_u32(u_input.b.zy, vec2<u32>(56250u, 4294967295u)), Struct_1(global0[_wgslsmith_index_u32(u_input.a, 20u)], u_input.a, 0u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(454f, arg_1) + vec2<f32>(arg_1, 795f))), Struct_2(min(vec4<u32>(u_input.a, u_input.b.x, 4294967295u, u_input.c), vec4<u32>(u_input.c, 0u, u_input.b.x, 0u)), firstLeadingBit(u_input.b.zz), Struct_1(false, 0u, 4294967295u)), var_0.yxw), vec4<bool>(arg_0, global0[_wgslsmith_index_u32(1u, 20u)], true, arg_0), !select(vec4<bool>(var_0.x, arg_0, true, false), !vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 20u)], true, arg_0), select(vec4<bool>(var_1.x, true, var_0.x, true), vec4<bool>(var_1.x, var_1.x, var_0.x, true), arg_0))), !(!func_2(Struct_2(vec4<u32>(79178u, 4294967295u, u_input.a, 49357u), u_input.b.zz, Struct_1(arg_0, u_input.b.x, 1u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) + vec2<f32>(arg_1, -258f)), Struct_2(vec4<u32>(u_input.c, 93178u, u_input.c, u_input.c), u_input.b.yz, Struct_1(var_0.x, u_input.b.x, 23862u)), vec3<bool>(arg_0, false, false))), func_2(Struct_2(~vec4<u32>(u_input.c, u_input.c, u_input.a, u_input.b.x), u_input.b.yy, Struct_1(global0[_wgslsmith_index_u32(u_input.a, 20u)], u_input.c | u_input.c, u_input.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1))) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-812f, arg_1)))), Struct_2(vec4<u32>(_wgslsmith_sub_u32(69258u, 12258u), u_input.c, _wgslsmith_mod_u32(1u, 11259u), 0u), select(u_input.b.zx, vec2<u32>(u_input.a, u_input.c), !var_0.wy), Struct_1(true, ~u_input.c, ~u_input.a)), vec3<bool>(any(vec4<bool>(arg_0, false, false, var_1.x)), arg_0, !var_0.x)));
    let var_2 = Struct_2(max(firstLeadingBit(~(~vec4<u32>(u_input.c, 0u, 8117u, 21862u))), vec4<u32>(_wgslsmith_sub_u32(80399u, 45939u), ~u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b.zz, u_input.b.yz), 36181u) & ~vec4<u32>(u_input.b.x, 47349u, u_input.a, u_input.c)), firstTrailingBit(~vec2<u32>(4294967295u, 4294967295u)) << (vec2<u32>(69409u, ~(44649u << (0u % 32u))) % vec2<u32>(32u)), Struct_1(arg_0, 11734u, u_input.b.x));
    return var_2;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    global0 = array<bool, 20>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1021f, -1942f, -791f, 478f) * vec4<f32>(-588f, -1118f, -1038f, 341f))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -530f), _wgslsmith_f_op_f32(step(-1012f, -945f)), _wgslsmith_f_op_f32(-581f - 2069f), _wgslsmith_f_op_f32(-1073f + 1000f))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -852f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1744f, -951f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-937f - -129f), -262f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(534f, -334f))))));
    let var_1 = max(_wgslsmith_clamp_vec4_i32(abs(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 76580i, u_input.d, u_input.d), vec4<i32>(-13224i, -40224i, u_input.d, 47158i)) >> (~arg_1.a % vec4<u32>(32u))), vec4<i32>(10318i, -(u_input.d | u_input.d), min(firstTrailingBit(-1i), abs(45253i)), countOneBits(u_input.d)), -max(vec4<i32>(u_input.d, 29161i, u_input.d, u_input.d) << (vec4<u32>(u_input.b.x, 37878u, u_input.b.x, 0u) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(-1i, -1i, -2147483647i, -1i)))), vec4<i32>(-6244i, (-7531i & u_input.d) & abs(1i), firstTrailingBit(_wgslsmith_sub_i32(-15175i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.d, u_input.d, u_input.d), vec4<i32>(u_input.d, -2147483647i, 1i, 47368i)))), countOneBits(1i ^ (u_input.d << (0u % 32u)))));
    return func_1(arg_1.c.a, var_0.x).c;
}

fn func_5(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_1 {
    global0 = array<bool, 20>();
    var var_0 = func_1(func_1(false, 1f).c.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -583f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1122f - 841f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(910f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1035f), -160f, false))))).c;
    var var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(2321f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1058f, -142f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1134f, -1820f), vec2<f32>(-816f, -1409f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(882f, -293f) * vec2<f32>(1162f, -701f)))))))), !select(vec2<bool>(global0[_wgslsmith_index_u32(~0u, 20u)], global0[_wgslsmith_index_u32(var_0.c & 0u, 20u)]), select(vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 20u)]), func_2(Struct_2(vec4<u32>(4294967295u, arg_2.c.c, arg_2.c.c, 4294967295u), arg_2.a.zz, Struct_1(var_0.a, u_input.b.x, 90574u)), vec2<f32>(1593f, -785f), arg_2, vec3<bool>(arg_2.c.a, var_0.a, false)).zz, !vec2<bool>(global0[_wgslsmith_index_u32(0u, 20u)], false)), vec2<bool>(global0[_wgslsmith_index_u32(arg_2.b.x, 20u)], global0[_wgslsmith_index_u32(var_0.b | 1893u, 20u)]))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)));
    var var_3 = all(vec4<bool>(var_0.a, _wgslsmith_clamp_i32(-34905i, 31550i, 9542i) >= u_input.d, global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_clamp_u32(u_input.a, 1u, 34010u)), 20u)], false)) & (-491f >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) + _wgslsmith_f_op_f32(f32(-1f) * -2121f)))));
    return func_1(false, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), var_1.x))).c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(u_input.d, vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, u_input.d, u_input.d, 1i), vec4<i32>(1i, -2147483647i, -1i, -7889i)), firstTrailingBit(vec4<i32>(1i, 0i, u_input.d, u_input.d)), ~vec4<i32>(u_input.d, u_input.d, -28628i, 40575i)), Struct_2(firstTrailingBit((vec4<u32>(u_input.b.x, u_input.a, u_input.a, u_input.a) | vec4<u32>(u_input.c, 10546u, u_input.a, 4294967295u)) ^ vec4<u32>(u_input.b.x, u_input.a, u_input.c, u_input.b.x)), ~(~(~u_input.b.yz)), func_4(func_1(true, _wgslsmith_f_op_f32(min(-418f, -1070f))), Struct_2(vec4<u32>(4294967295u, u_input.a, 32556u, 0u) | vec4<u32>(4294967295u, 0u, u_input.c, 0u), ~vec2<u32>(u_input.b.x, 7020u), func_1(global0[_wgslsmith_index_u32(u_input.a, 20u)], -495f).c))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -588f))) * _wgslsmith_f_op_f32(f32(-1f) * -277f));
    global0 = array<bool, 20>();
    let var_2 = 1u;
    global1 = any(select(func_2(func_1(func_2(Struct_2(vec4<u32>(4294967295u, 0u, 0u, 1u), u_input.b.zz, Struct_1(var_0.a, var_0.c, 651u)), vec2<f32>(-1026f, 1255f), Struct_2(vec4<u32>(42756u, var_0.b, var_2, u_input.a), u_input.b.xx, var_0), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], var_0.a, global0[_wgslsmith_index_u32(var_2, 20u)])).x, 331f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-713f, -694f) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(651f, -1000f)))), Struct_2(firstTrailingBit(vec4<u32>(var_0.c, var_0.c, var_0.c, 25986u)), min(u_input.b.yz, vec2<u32>(u_input.a, var_2)), func_5(-1i, vec4<i32>(u_input.d, u_input.d, u_input.d, 0i), Struct_2(vec4<u32>(var_2, u_input.b.x, var_0.c, var_0.c), u_input.b.zy, var_0))), select(select(vec3<bool>(var_0.a, global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(var_2, 20u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 20u)], true), true), select(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 20u)], var_0.a), vec3<bool>(true, global0[_wgslsmith_index_u32(11198u, 20u)], false), vec3<bool>(false, false, global0[_wgslsmith_index_u32(3898u, 20u)])), true)).zww, func_2(func_1(any(vec3<bool>(var_0.a, false, true)), _wgslsmith_div_f32(1443f, 1000f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1065f, 187f)) + vec2<f32>(287f, 361f)), func_1(15391i < u_input.d, _wgslsmith_f_op_f32(max(-327f, -753f))), select(vec3<bool>(true, true, true), vec3<bool>(true, var_0.a, var_0.a), true)).zyz, global0[_wgslsmith_index_u32(min(~69498u, 1u), 20u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(reverseBits(~min(vec3<u32>(var_2, 1u, 70560u), vec3<u32>(var_2, var_0.b, var_2))), vec3<u32>(7929u, var_2, abs(select(u_input.a, var_2, global0[_wgslsmith_index_u32(var_2, 20u)])))), 0u, 68286u, (_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.d, u_input.d, 5828i), vec3<i32>(u_input.d, 1i, u_input.d)) & -max(vec3<i32>(2147483647i, 17764i, u_input.d), vec3<i32>(-10064i, u_input.d, -2147483647i))) << (vec3<u32>(27113u, countOneBits(6806u >> (1u % 32u)), max(~60464u, _wgslsmith_dot_vec2_u32(u_input.b.zx, u_input.b.yx))) % vec3<u32>(32u)));
}

