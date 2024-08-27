struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<bool>,
    d: vec4<bool>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2) -> f32 {
    global0 = array<u32, 28>();
    global0 = array<u32, 28>();
    var var_0 = arg_1.d.yzx;
    let var_1 = arg_1.b.b.wyx;
    let var_2 = ~firstLeadingBit(reverseBits(vec2<i32>(~(-12349i), _wgslsmith_div_i32(var_1.x, 0i))));
    return _wgslsmith_f_op_f32(-824f - _wgslsmith_f_op_f32(max(arg_1.b.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1.b.c.x)), _wgslsmith_f_op_f32(arg_1.b.c.x - arg_1.b.c.x)))))));
}

fn func_2(arg_0: vec4<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.a), vec2<i32>(u_input.b, -2147483647i))), Struct_2(vec3<bool>(arg_0.x, true, true), Struct_1(!arg_0.x, ~vec4<i32>(-63469i, u_input.a, -2147483647i, u_input.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-210f, -963f, 672f, 1455f))), vec4<bool>(false | arg_0.x, !arg_0.x, any(vec2<bool>(arg_0.x, arg_0.x)), any(vec2<bool>(arg_0.x, true))), arg_0, _wgslsmith_div_u32(_wgslsmith_add_u32(5235u, global0[_wgslsmith_index_u32(8784u, 28u)]), ~1u)))));
    var_0 = _wgslsmith_f_op_f32(-327f - 650f);
    var var_1 = all(arg_0);
    var_1 = all(vec3<bool>(arg_0.x, arg_0.x, true));
    let var_2 = Struct_2(!arg_0.xyy, Struct_1(arg_0.x, vec4<i32>(_wgslsmith_mod_i32(u_input.b, -2147483647i) ^ _wgslsmith_sub_i32(u_input.a, u_input.b), firstTrailingBit(6466i >> (0u % 32u)), max(u_input.a, u_input.b), 1i), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -667f)), 1455f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(481f, 703f))), _wgslsmith_f_op_f32(f32(-1f) * -789f))), vec4<bool>(any(select(arg_0, !vec4<bool>(false, false, arg_0.x, true), vec4<bool>(arg_0.x, true, true, arg_0.x))), true, true, true), arg_0, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, ~global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(22134u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(44540u, 28u)], 28u)], 28u)], 0u, 16849u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 28u)], 28u)], 28u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 28u)], 28u)], 58963u, 1u)), 28u)]), 28u)]);
    return _wgslsmith_f_op_f32(floor(1661f));
}

fn func_4(arg_0: f32, arg_1: f32) -> Struct_1 {
    global0 = array<u32, 28>();
    let var_0 = Struct_2(select(!vec3<bool>(true, false, select(false, false, false)), select(vec3<bool>(true, true, any(vec4<bool>(true, true, false, true))), vec3<bool>(49642u != global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 28u)], 28u)], 28u)] == 0u, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true))), vec3<bool>(true, true, true)), Struct_1(true, max(vec4<i32>(0i, -2147483647i, u_input.b, _wgslsmith_add_i32(u_input.b, u_input.b)), ~select(vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a), vec4<i32>(u_input.a, 6342i, 0i, 31711i), vec4<bool>(true, false, false, true))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(arg_0 * arg_0), arg_1, _wgslsmith_f_op_f32(f32(-1f) * -913f), arg_1), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1168f, 387f, 1000f, -288f) + vec4<f32>(arg_1, -1230f, arg_0, arg_0))), true))), !(!vec4<bool>(true, false, all(vec4<bool>(false, false, false, false)), 383f >= arg_0)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !all(vec2<bool>(true, false))), countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(min(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(26721u, global0[_wgslsmith_index_u32(0u, 28u)]), 28u)] >> (firstLeadingBit(56805u) % 32u), 75050u), 28u)], 28u)]));
    var var_1 = var_0.b;
    let var_2 = var_0.b.c;
    global0 = array<u32, 28>();
    return Struct_1(all(vec2<bool>(!all(var_0.a.yz), _wgslsmith_f_op_f32(-691f * var_2.x) < _wgslsmith_f_op_f32(-var_0.b.c.x))), max(max(var_1.b << (firstTrailingBit(vec4<u32>(0u, global0[_wgslsmith_index_u32(0u, 28u)], var_0.e, 4294967295u)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 1i, 32512i, u_input.b), vec4<i32>(var_1.b.x, u_input.a, var_1.b.x, var_1.b.x)), vec4<i32>(var_1.b.x, 2147483647i, var_0.b.b.x, var_1.b.x))), _wgslsmith_div_vec4_i32(var_1.b, vec4<i32>(var_0.b.b.x << (global0[_wgslsmith_index_u32(65339u, 28u)] % 32u), var_0.b.b.x, -12781i, 1i))), var_1.c);
}

fn func_1() -> i32 {
    var var_0 = Struct_2(!(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, false, false), true)), func_4(_wgslsmith_f_op_f32(1f - 798f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<bool>(false, true, true, true)))), _wgslsmith_f_op_f32(f32(-1f) * -1252f)))), select(vec4<bool>(false, any(vec2<bool>(true, true)), true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(false, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true)), select(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, -2147483647i), vec3<i32>(u_input.b, 40099i, u_input.b)) == _wgslsmith_mod_i32(u_input.b, 19158i), all(vec4<bool>(false, false, true, false)), _wgslsmith_div_i32(u_input.a, 1i) <= -33195i)), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, any(vec3<bool>(true, false, true)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 28u)], 28u)], 28u)] >= 14708u, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), true), true)), vec4<bool>(true, true, true, true), all(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true)))), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~0u), 48334u, ~firstTrailingBit(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(60014u, 28u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3646u, 28u)], 28u)]), 28u)])), 28u)], 28u)]);
    var_0 = Struct_2(vec3<bool>(var_0.c.x, abs(-2147483647i >> (var_0.e % 32u)) != 20688i, var_0.b.a), func_4(-1557f, _wgslsmith_f_op_f32(-var_0.b.c.x)), var_0.c, !var_0.c, select(0u, reverseBits(var_0.e), var_0.a.x));
    var_0 = Struct_2(vec3<bool>(all(var_0.d), func_4(var_0.b.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.b.c.x, -1918f)) * _wgslsmith_div_f32(var_0.b.c.x, 398f))).a, true), func_4(var_0.b.c.x, _wgslsmith_f_op_f32(func_2(vec4<bool>(var_0.a.x, var_0.b.a, select(false, true, false), true)))), select(var_0.d, !var_0.c, vec4<bool>(all(vec2<bool>(true, false)), all(vec3<bool>(var_0.b.a, var_0.b.a, var_0.a.x)), all(!var_0.c.ww), true)), var_0.d, ~19721u | (~(~global0[_wgslsmith_index_u32(var_0.e, 28u)]) << (~(~0u) % 32u)));
    var var_1 = var_0.b;
    var_1 = Struct_1(var_0.c.x, vec4<i32>(min(0i, -49747i), var_1.b.x, ~var_0.b.b.x, _wgslsmith_div_i32(-u_input.a, 2147483647i >> (var_0.e % 32u)) << (~abs(4294967295u) % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.b.c.x - var_1.c.x), _wgslsmith_f_op_f32(floor(var_1.c.x)), _wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(f32(-1f) * -851f)) - _wgslsmith_f_op_vec4_f32(var_0.b.c * var_0.b.c))));
    return max(-max(var_0.b.b.x, 2147483647i), u_input.a & _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.b, -40002i), reverseBits(-48857i))) | ~(-4697i);
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    var var_0 = arg_0.b.wzy;
    var_0 = vec3<i32>(abs(1i), ~min(1i, -2147483647i) << (_wgslsmith_mod_u32(~(~global0[_wgslsmith_index_u32(1u, 28u)]), 42584u) % 32u), func_4(_wgslsmith_f_op_f32(f32(-1f) * -694f), 1931f).b.x);
    let var_1 = false;
    var var_2 = _wgslsmith_dot_vec2_i32(countOneBits(min(_wgslsmith_div_vec2_i32(vec2<i32>(-22236i, 2147483647i), vec2<i32>(-15632i, u_input.b)) & (arg_0.b.xx ^ vec2<i32>(0i, u_input.b)), var_0.yz | var_0.zx)), vec2<i32>(-(-2147483647i << (_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32832u, 28u)], 28u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 28u)], 28u)], 28u)], 28u)], 28u)], 28u)], 28u)], 33963u) % 32u)), _wgslsmith_dot_vec3_i32(arg_0.b.yxz, select(_wgslsmith_mod_vec3_i32(arg_0.b.wzx, arg_0.b.yyz), vec3<i32>(-2147483647i, u_input.a, -1i) >> (vec3<u32>(global0[_wgslsmith_index_u32(36325u, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)], 0u) % vec3<u32>(32u)), select(vec3<bool>(var_1, var_1, false), vec3<bool>(arg_0.a, true, false), vec3<bool>(false, true, true))))));
    var_0 = _wgslsmith_sub_vec3_i32(arg_0.b.yyx, arg_0.b.zxw) | ((_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(arg_0.b.zyx, arg_0.b.xyw), select(vec3<i32>(var_0.x, -2147483647i, -18105i), arg_0.b.xyw, vec3<bool>(true, var_1, false))) >> (~abs(vec3<u32>(global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(44962u, 28u)], 22841u)) % vec3<u32>(32u))) | vec3<i32>(countOneBits(var_0.x ^ u_input.b), min(select(1i, u_input.b, false), u_input.a & 77710i), 2147483647i));
    return Struct_2(!select(vec3<bool>(arg_0.a || true, false, arg_0.c.x <= 1205f), select(!vec3<bool>(arg_0.a, true, true), !vec3<bool>(false, arg_0.a, var_1), vec3<bool>(false, true, true)), any(vec4<bool>(true, arg_0.a, false, false)) & all(vec3<bool>(true, false, false))), func_4(_wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) + -769f)), arg_0.c.x), select(!select(vec4<bool>(false, true, arg_0.a, true), vec4<bool>(arg_0.a, true, true, true), vec4<bool>(var_1, true, arg_0.a, false)), select(!(!vec4<bool>(true, var_1, arg_0.a, var_1)), !vec4<bool>(true, arg_0.a, true, var_1), _wgslsmith_f_op_f32(-arg_0.c.x) >= _wgslsmith_f_op_f32(1000f + arg_0.c.x)), vec4<bool>((global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(91291u, 28u)], 28u)], 28u)], 28u)], 28u)] | 61654u) > ~1u, any(select(vec4<bool>(false, arg_0.a, arg_0.a, false), vec4<bool>(arg_0.a, false, arg_0.a, var_1), vec4<bool>(true, true, arg_0.a, arg_0.a))), false, var_1)), !(!vec4<bool>(-344f > arg_0.c.x, var_1, select(var_1, false, var_1), true)), ~1497u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(335f, 1599f) + _wgslsmith_f_op_f32(-533f - -856f))) * _wgslsmith_f_op_f32(-395f + 1f)));
    let var_1 = func_5(Struct_1(global0[_wgslsmith_index_u32(9047u, 28u)] <= global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29228u, 28u)], 28u)]), _wgslsmith_mod_u32(0u, global0[_wgslsmith_index_u32(4294967295u, 28u)]), 0u), 28u)], vec4<i32>(-(u_input.b & u_input.b), u_input.a, -u_input.a, func_1()), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(999f, 247f, -1517f, -254f) + vec4<f32>(2416f, -798f, -909f, -532f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-974f, -457f, -109f, -1009f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1525f, -526f, -115f, -1000f))), vec4<bool>(true, true, true, true))))));
    let var_2 = func_5(func_4(var_1.b.c.x, _wgslsmith_f_op_f32(var_1.b.c.x - var_1.b.c.x)));
    global0 = array<u32, 28>();
    var var_3 = func_5(Struct_1(var_1.e == 4294967295u, func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.c.x), 587f), var_2.b.c.x).b, vec4<f32>(var_1.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<bool>(false, var_2.c.x, true, false)))), func_4(_wgslsmith_f_op_f32(f32(-1f) * -847f), _wgslsmith_f_op_f32(-1523f - 1343f)).c.x, _wgslsmith_f_op_f32(var_1.b.c.x - _wgslsmith_f_op_f32(968f * var_1.b.c.x))))).b;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(464f + var_2.b.c.x)))), var_2.b.c.x) - 893f);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, vec4<i32>(var_2.b.b.x, u_input.a, var_1.b.b.x, 18272i), var_2.b.c.x, _wgslsmith_sub_i32(~var_3.b.x, 0i), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_1.b.c.x, 678f)))), var_2.b.c.x));
}

