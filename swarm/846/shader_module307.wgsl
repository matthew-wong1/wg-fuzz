struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 7>;

var<private> global1: vec3<i32>;

var<private> global2: vec3<f32>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: f32, arg_3: Struct_3) -> bool {
    var var_0 = abs(0u);
    let var_1 = (-reverseBits(vec2<i32>(-40330i, arg_3.a) | global0[_wgslsmith_index_u32(u_input.d.x, 7u)]) << (u_input.d % vec2<u32>(32u))) ^ _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(global0[_wgslsmith_index_u32(4294967295u, 7u)], _wgslsmith_mult_vec2_i32(u_input.c, -global1.xz)), global0[_wgslsmith_index_u32(~(~(~arg_3.d)), 7u)]);
    let var_2 = arg_3.c.x;
    let var_3 = _wgslsmith_mult_vec2_i32(u_input.c, u_input.c);
    var var_4 = Struct_2(min(-_wgslsmith_sub_vec2_i32(vec2<i32>(arg_3.b, 0i), _wgslsmith_add_vec2_i32(vec2<i32>(global1.x, var_3.x), vec2<i32>(arg_3.b, var_1.x))), ~_wgslsmith_mult_vec2_i32(vec2<i32>(var_3.x, var_3.x) << (vec2<u32>(u_input.a, var_2) % vec2<u32>(32u)), vec2<i32>(var_1.x, var_1.x))), vec4<i32>(23888i, -max(2147483647i, var_1.x), arg_3.b, -2147483647i) & -vec4<i32>(1i, ~2147483647i, var_1.x, _wgslsmith_div_i32(-2147483647i, -61648i)), Struct_1(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-61120i, var_1.x, var_3.x), ~vec3<i32>(var_1.x, -32115i, -1i)), reverseBits(vec3<i32>(0i, global1.x, var_1.x) | vec3<i32>(arg_3.b, var_1.x, var_3.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.zwz * arg_3.e))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, false, false)), true), arg_3.e));
    return false;
}

fn func_2(arg_0: u32, arg_1: vec3<bool>) -> Struct_1 {
    global1 = _wgslsmith_mod_vec3_i32(~vec3<i32>(2147483647i, _wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, -59706i), u_input.c), min(1i, _wgslsmith_div_i32(0i, 5281i))), -(vec3<i32>(_wgslsmith_add_i32(0i, 36473i), global1.x & 2147483647i, 13483i ^ global1.x) << (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d.x, u_input.b, u_input.a), vec3<u32>(arg_0, u_input.d.x, u_input.b)) % vec3<u32>(32u))));
    let var_0 = Struct_1(~(-vec3<i32>(_wgslsmith_add_i32(-22732i, u_input.c.x), max(global1.x, global1.x), 0i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, global2.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, global2.x)))), vec4<bool>(select(func_3(vec4<f32>(433f, global2.x, -200f, -1000f), global2.xz, global2.x, Struct_3(-32886i, 1i, vec3<u32>(10692u, 21114u, arg_0), 1u, vec3<f32>(471f, -1000f, global2.x))), all(arg_1.zx), arg_1.x) && false, !all(vec3<bool>(false, arg_1.x, false)), true, true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -853f), -276f, 558f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -1000f, -430f) * vec3<f32>(global2.x, global2.x, -296f)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-481f)), _wgslsmith_f_op_f32(max(-1018f, 1491f))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global2.x, global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-629f))))));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-var_0.b))), _wgslsmith_f_op_vec3_f32(vec3<f32>(404f, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-var_0.d.x)) + vec3<f32>(953f, _wgslsmith_f_op_f32(ceil(-1656f)), 129f))));
    let var_1 = Struct_2(vec2<i32>(select(global1.x, ~u_input.c.x, var_0.c.x) | u_input.c.x, (-34651i << (countOneBits(u_input.a) % 32u)) & ~(~global1.x)), vec4<i32>(~var_0.a.x, _wgslsmith_mod_i32(u_input.c.x, -1i), u_input.c.x, u_input.c.x) << (~vec4<u32>(arg_0, min(u_input.d.x, arg_0), 49619u, 0u) % vec4<u32>(32u)), var_0);
    let var_2 = 26341u;
    return var_0;
}

fn func_4(arg_0: Struct_1) -> i32 {
    let var_0 = !(_wgslsmith_f_op_f32(min(global2.x, arg_0.d.x)) > _wgslsmith_f_op_f32(f32(-1f) * -883f));
    global2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(arg_0.d, arg_0.d, arg_0.c.wzx))))))), _wgslsmith_f_op_vec3_f32(-arg_0.b));
    global1 = _wgslsmith_mult_vec3_i32(vec3<i32>(func_2(abs(u_input.d.x | 104u), vec3<bool>(any(arg_0.c.zxy), all(arg_0.c), func_2(u_input.d.x, arg_0.c.zww).c.x)).a.x, -15631i, global1.x), _wgslsmith_mult_vec3_i32(-arg_0.a, _wgslsmith_mod_vec3_i32(vec3<i32>(global1.x, -2147483647i, global1.x) | reverseBits(arg_0.a), arg_0.a)));
    var var_1 = firstLeadingBit((global1.xx & ~global1.zz) << (~select(vec2<u32>(4294967295u, u_input.b), _wgslsmith_add_vec2_u32(u_input.d, u_input.d), true) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_f_op_f32(abs(func_2(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, 4294967295u, 1u), vec4<u32>(25081u, 10638u, 36503u, u_input.b)) | 0u), vec3<bool>(var_0, global2.x != _wgslsmith_f_op_f32(abs(global2.x)), arg_0.c.x)).b.x));
    return -(select(_wgslsmith_sub_i32(-2147483647i, _wgslsmith_mod_i32(arg_0.a.x, global1.x)), _wgslsmith_mod_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a.x, arg_0.a.x, 2147483647i), arg_0.a)), true) >> (u_input.a % 32u));
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-723f + -185f), _wgslsmith_f_op_f32(step(-1866f, global2.x)), _wgslsmith_f_op_f32(exp2(arg_2.x))))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1160f, 427f, arg_2.x)));
    var var_1 = arg_2.zxx;
    global1 = -vec3<i32>(firstTrailingBit(17420i), global1.x, func_4(func_2(57300u, vec3<bool>(true, true, false)))) & vec3<i32>(_wgslsmith_add_i32(global1.x, firstTrailingBit(_wgslsmith_add_i32(u_input.c.x, -11723i))), _wgslsmith_mult_i32(_wgslsmith_add_i32(15359i, u_input.c.x) << (~4294967295u % 32u), arg_1.x >> (~arg_0 % 32u)), global1.x);
    var var_2 = func_2(~abs(abs(firstLeadingBit(84893u))), vec3<bool>(any(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)))), true, !(global1.x >= ~u_input.c.x)));
    var_1 = vec3<f32>(var_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))))), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(min(204f, _wgslsmith_f_op_f32(1f * -695f)))));
    return Struct_2(~(~max(arg_1, u_input.c) >> (~vec2<u32>(u_input.a, arg_0) % vec2<u32>(32u))), abs(vec4<i32>(-(~global1.x), countOneBits(15993i), 10074i, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, 8218i) | vec2<i32>(204i, var_2.a.x), max(u_input.c, u_input.c)))), Struct_1(~vec3<i32>(0i, 38099i, 24903i), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.x + var_2.d.x))), func_2(u_input.b, select(vec3<bool>(var_2.c.x, true, true), vec3<bool>(false, false, false), var_2.c.yxy)).b.x, 451f), select(vec4<bool>(!var_2.c.x, !var_2.c.x, !var_2.c.x, true), !select(var_2.c, vec4<bool>(true, var_2.c.x, var_2.c.x, true), false), var_2.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_0))) - var_0)));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_1) -> vec3<i32> {
    global2 = vec3<f32>(arg_1.c.b.x, -412f, -1580f);
    var var_0 = Struct_3(arg_1.c.a.x, reverseBits(-_wgslsmith_mult_i32(_wgslsmith_add_i32(arg_2.a.x, arg_1.b.x), _wgslsmith_sub_i32(-1i, u_input.c.x))), ~(~select(vec3<u32>(32291u, 4294967295u, u_input.b), vec3<u32>(4294967295u, 0u, u_input.b), func_1(u_input.a, vec2<i32>(-1i, global1.x), vec4<f32>(arg_2.d.x, arg_1.c.b.x, arg_1.c.d.x, 1593f)).c.c.zyw)), ~5387u, func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(67152u, 1u, u_input.b, u_input.b), abs(vec4<u32>(5598u, 60846u, 64637u, u_input.d.x))) | ~select(u_input.b, u_input.a, true), !arg_2.c.wxy).b);
    var var_1 = vec4<bool>(!(!func_2(29592u << (0u % 32u), func_1(23986u, vec2<i32>(0i, -1i), vec4<f32>(arg_2.d.x, -689f, -1606f, -159f)).c.c.xyw).c.x), func_2(var_0.c.x, arg_2.c.xyz).c.x, !(!select(select(false, true, arg_0.x), var_0.e.x != arg_2.b.x, any(arg_1.c.c))), any(vec2<bool>(func_2(min(u_input.b, 39172u), vec3<bool>(true, arg_0.x, true)).c.x, arg_2.c.x)));
    global1 = arg_1.c.a & ~(~(arg_1.c.a & vec3<i32>(arg_1.a.x, 102042i, global1.x)));
    let var_2 = func_1(u_input.a & ~0u, arg_1.c.a.yy, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(global2.x)), 201f, _wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(-arg_2.b.x)) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.x, var_0.e.x, global2.x, -1205f), vec4<f32>(var_0.e.x, 175f, -2544f, 1639f))), vec4<f32>(280f, 1970f, arg_2.d.x, -1928f))))))).a.x;
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(max(func_5(vec2<bool>(true, all(vec2<bool>(false, true))), func_1(u_input.d.x, vec2<i32>(global1.x, global1.x), vec4<f32>(604f, -673f, 110f, global2.x)), func_1(_wgslsmith_mult_u32(1u, u_input.d.x), _wgslsmith_mod_vec2_i32(global1.yx, u_input.c), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.x, -1000f, 598f, 2115f)))).c), vec3<i32>(~func_5(vec2<bool>(true, true), Struct_2(global1.zz, vec4<i32>(u_input.c.x, u_input.c.x, 27735i, global1.x), Struct_1(vec3<i32>(global1.x, u_input.c.x, global1.x), vec3<f32>(global2.x, global2.x, global2.x), vec4<bool>(true, true, true, true), vec3<f32>(global2.x, -556f, global2.x))), Struct_1(vec3<i32>(2147483647i, u_input.c.x, u_input.c.x), vec3<f32>(global2.x, global2.x, global2.x), vec4<bool>(true, false, false, false), vec3<f32>(global2.x, -2001f, global2.x))).x, global1.x, func_2(~u_input.a, vec3<bool>(false, false, false)).a.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-999f, -794f), -1175f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-444f, 1540f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(534f, global2.x, global2.x) + vec3<f32>(global2.x, global2.x, 536f)))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -154f, -277f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -545f, -888f)))))), vec4<bool>(true, true, true, all(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, global2.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-700f, -706f, 1396f) + vec3<f32>(global2.x, -1681f, global2.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(562f, global2.x, global2.x))) * func_1(~4294967295u, max(vec2<i32>(1i, global1.x), vec2<i32>(global1.x, global1.x)), vec4<f32>(global2.x, 921f, global2.x, -1160f)).c.d)));
    var var_1 = func_2(1u, var_0.c.xyw);
    var var_2 = vec3<f32>(1000f, global2.x, global2.x);
    var var_3 = vec3<i32>(reverseBits(-12431i), select(var_0.a.x, _wgslsmith_mult_i32(abs(var_1.a.x), ~func_5(var_1.c.xw, Struct_2(vec2<i32>(-2147483647i, global1.x), vec4<i32>(25687i, var_0.a.x, 4566i, u_input.c.x), Struct_1(var_0.a, vec3<f32>(-1510f, 1659f, -801f), var_1.c, var_1.d)), Struct_1(var_1.a, var_1.d, var_0.c, var_0.b)).x), !var_1.c.x), 0i);
    let var_4 = vec2<i32>(min(-(i32(-1i) * -37608i), ~var_3.x), global1.x);
    var var_5 = func_1(0u ^ u_input.a, u_input.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1120f, var_0.b.x, 514f, -183f), _wgslsmith_f_op_vec4_f32(vec4<f32>(693f, var_1.b.x, global2.x, var_1.d.x) * vec4<f32>(var_2.x, 627f, var_2.x, global2.x))))));
    let var_6 = (_wgslsmith_dot_vec2_u32(select(_wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(u_input.a, 36804u)), ~vec2<u32>(u_input.d.x, 1u), !var_5.c.c.xy), ~vec2<u32>(6877u, u_input.d.x)) >= ~abs(abs(u_input.b))) || true;
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.b - _wgslsmith_f_op_vec3_f32(-var_1.b)));
    var_1 = Struct_1(var_5.c.a, _wgslsmith_f_op_vec3_f32(exp2(var_1.b)), func_2(u_input.a, select(var_0.c.yzz, var_0.c.xyy, func_2(30357u, !vec3<bool>(true, var_0.c.x, true)).c.yzz)).c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_5.c.b.xx)) - vec2<f32>(-378f, var_2.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_5.c.d.xx))), _wgslsmith_mod_vec3_i32(func_2(u_input.a >> (4294967295u % 32u), var_0.c.zyz).a << (~(~vec3<u32>(4294967295u, u_input.a, 32600u)) % vec3<u32>(32u)), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(global1.x, 61217i, 14602i), reverseBits(var_1.a)))), max(17246u, _wgslsmith_clamp_u32(1u, u_input.b, u_input.a)) >> (4294967295u % 32u), abs(firstTrailingBit(~u_input.c.x)));
}

