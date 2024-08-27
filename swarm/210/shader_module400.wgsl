struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 1u);

var<private> global1: array<Struct_4, 25> = array<Struct_4, 25>(Struct_4(Struct_1(-576f, vec3<bool>(true, true, false))), Struct_4(Struct_1(352f, vec3<bool>(true, true, false))), Struct_4(Struct_1(-825f, vec3<bool>(true, false, false))), Struct_4(Struct_1(-3077f, vec3<bool>(true, true, false))), Struct_4(Struct_1(189f, vec3<bool>(true, true, false))), Struct_4(Struct_1(737f, vec3<bool>(false, true, false))), Struct_4(Struct_1(-1027f, vec3<bool>(false, true, false))), Struct_4(Struct_1(226f, vec3<bool>(true, false, true))), Struct_4(Struct_1(670f, vec3<bool>(false, true, true))), Struct_4(Struct_1(1007f, vec3<bool>(false, false, true))), Struct_4(Struct_1(-1239f, vec3<bool>(false, false, true))), Struct_4(Struct_1(624f, vec3<bool>(true, false, false))), Struct_4(Struct_1(1000f, vec3<bool>(true, false, false))), Struct_4(Struct_1(-413f, vec3<bool>(true, true, false))), Struct_4(Struct_1(1715f, vec3<bool>(false, false, true))), Struct_4(Struct_1(237f, vec3<bool>(true, true, true))), Struct_4(Struct_1(-685f, vec3<bool>(true, false, true))), Struct_4(Struct_1(1664f, vec3<bool>(false, false, true))), Struct_4(Struct_1(-214f, vec3<bool>(true, false, false))), Struct_4(Struct_1(889f, vec3<bool>(true, true, true))), Struct_4(Struct_1(-2106f, vec3<bool>(true, true, true))), Struct_4(Struct_1(-668f, vec3<bool>(false, true, true))), Struct_4(Struct_1(867f, vec3<bool>(true, false, false))), Struct_4(Struct_1(-294f, vec3<bool>(false, true, false))), Struct_4(Struct_1(-1145f, vec3<bool>(true, true, true))));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4) -> bool {
    var var_0 = _wgslsmith_add_u32(_wgslsmith_add_u32(min(global0.x, 1u), ~(_wgslsmith_div_u32(global0.x, global0.x) << (global0.x % 32u))), (_wgslsmith_sub_u32(global0.x, 1u) & (u_input.a.x & u_input.a.x)) << ((~(1u | u_input.a.x) | firstTrailingBit(select(global0.x, 4294967295u, false))) % 32u));
    var_0 = global0.x;
    global0 = u_input.a.zz;
    global1 = array<Struct_4, 25>();
    var var_1 = Struct_3(reverseBits(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a.yzx, vec3<u32>(u_input.a.x, 56717u, 56630u), _wgslsmith_add_vec3_u32(vec3<u32>(0u, global0.x, 43268u), u_input.a.yzz)), abs(vec3<u32>(9797u, 4294967295u, 42634u)) << (abs(vec3<u32>(global0.x, 49889u, 64225u)) % vec3<u32>(32u)))), _wgslsmith_div_vec2_u32(vec2<u32>(15351u, 57683u), vec2<u32>(select(u_input.a.x, ~0u, arg_1.a.b.x | false), ~1u)), select(!(!select(vec4<bool>(arg_1.a.b.x, arg_1.a.b.x, arg_0.b.x, false), vec4<bool>(true, arg_0.b.x, arg_0.b.x, arg_0.b.x), false)), !vec4<bool>(all(vec3<bool>(true, arg_0.b.x, arg_1.a.b.x)), arg_1.a.b.x & true, arg_0.b.x & arg_1.a.b.x, arg_0.b.x), all(select(!arg_0.b, !vec3<bool>(false, arg_0.b.x, true), arg_1.a.b))));
    return all(vec4<bool>(-927f > _wgslsmith_f_op_f32(trunc(1881f)), !(var_1.a >= global0.x), false, false)) || all(vec3<bool>(true, true, any(var_1.c.yzy)));
}

fn func_2(arg_0: Struct_4) -> f32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(1297f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.a.a - arg_0.a.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + 1f) + -409f), 1f);
    var var_1 = u_input.b;
    let var_2 = Struct_3(0u, min(abs(u_input.a.ww), vec2<u32>(global0.x, global0.x)), vec4<bool>(!arg_0.a.b.x, false, !arg_0.a.b.x, arg_0.a.b.x));
    let var_3 = select(vec2<bool>((u_input.b >> (global0.x % 32u)) < _wgslsmith_div_i32(u_input.b & -29811i, u_input.b), true), vec2<bool>(!(max(u_input.b, -63394i) <= -26032i), select(var_2.c.x, all(vec2<bool>(arg_0.a.b.x, var_2.c.x)), !var_2.c.x)), select(vec2<bool>(!(global0.x > u_input.a.x), func_3(Struct_1(var_0.x, arg_0.a.b), Struct_4(arg_0.a))), vec2<bool>(all(var_2.c), func_3(arg_0.a, arg_0)), select(vec2<bool>(arg_0.a.b.x, true), select(vec2<bool>(false, arg_0.a.b.x), vec2<bool>(false, false), select(vec2<bool>(false, arg_0.a.b.x), vec2<bool>(arg_0.a.b.x, false), var_2.c.x)), !vec2<bool>(true, arg_0.a.b.x))));
    let var_4 = ~_wgslsmith_sub_vec2_i32(~(~vec2<i32>(1i, 1i)), ~vec2<i32>(u_input.b, u_input.b));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -234f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1877f, _wgslsmith_f_op_f32(-110f - _wgslsmith_f_op_f32(trunc(arg_0.a.a))), any(select(arg_0.a.b.yx, var_3, vec2<bool>(var_2.c.x, arg_0.a.b.x))))) * arg_0.a.a), (var_3.x != var_2.c.x) || var_3.x));
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: u32) -> Struct_2 {
    return Struct_2(!select(select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), arg_0), select(vec2<bool>(false, false), vec2<bool>(arg_0, arg_0), true), vec2<bool>(arg_0, false)), !select(vec2<bool>(true, false), vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0)), true), select(!vec2<bool>(false && arg_0, false), vec2<bool>(true, select(false, arg_0, arg_0) & all(vec4<bool>(false, true, false, true))), true));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: i32, arg_3: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-940f, -1225f, 101f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, arg_1.x) + arg_1.yzx)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-601f, arg_1.x, arg_1.x), arg_1.xxy)), _wgslsmith_div_vec3_f32(vec3<f32>(172f, -475f, arg_1.x), arg_1.wzw))))));
    var var_1 = Struct_5(func_4(any(vec3<bool>(arg_0.a.x, select(true, arg_0.b.x, false), any(vec3<bool>(true, true, arg_0.b.x)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1829f, var_0.x, -442f), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(541f, -360f, arg_1.x)))))), (_wgslsmith_div_u32(1u, 4294967295u) << (_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(1u, arg_3)) % 32u)) >> (5902u % 32u)));
    let var_2 = arg_1.zxx;
    var var_3 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~firstLeadingBit(vec2<u32>(1u, 4294967295u)) >> (~(vec2<u32>(4294967295u, 1u) >> (u_input.a.yw % vec2<u32>(32u))) % vec2<u32>(32u)), ~min(u_input.a.zz ^ vec2<u32>(26989u, 0u), min(u_input.a.wy, vec2<u32>(u_input.a.x, 0u)))), ~_wgslsmith_div_vec2_u32(reverseBits(~vec2<u32>(27309u, global0.x)), ~abs(u_input.a.zy)));
    global0 = ~firstLeadingBit(firstTrailingBit(u_input.a.xx));
    return var_1.a;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: i32, arg_3: vec2<f32>) -> Struct_2 {
    let var_0 = true;
    let var_1 = _wgslsmith_sub_u32(global0.x, global0.x);
    global0 = _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(global0.x, var_1), vec2<u32>(0u, 4294967295u)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(57794u, global0.x), u_input.a.wx), u_input.a.x)), u_input.a.zy) >> (~countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1, arg_1) >> (vec2<u32>(var_1, 0u) % vec2<u32>(32u)), vec2<u32>(var_1, arg_1) ^ u_input.a.wx, u_input.a.wx | vec2<u32>(u_input.a.x, u_input.a.x))) % vec2<u32>(32u));
    global0 = firstLeadingBit(~u_input.a.zw);
    global1 = array<Struct_4, 25>();
    return func_5(func_4(true, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_3.x, -1000f, var_0)) - _wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(1292u, 25u)]))), -726f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-983f)) - _wgslsmith_div_f32(arg_3.x, 745f))), 20430u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_3.x)), _wgslsmith_f_op_f32(f32(-1f) * -782f), _wgslsmith_f_op_f32(-arg_3.x), 1f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(106f, 1316f, -913f, arg_3.x)))))), -75i, _wgslsmith_div_u32(~(~(~40417u)), 17776u));
}

fn func_6(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec2<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(819f)))))));
    global0 = ~u_input.a.yx;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0)))) > _wgslsmith_f_op_f32(round(361f));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0))), -532f));
    let var_3 = arg_0;
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 25>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1556f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(min(-142f, -430f))), _wgslsmith_f_op_f32(-2047f + _wgslsmith_f_op_f32(f32(-1f) * -1757f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(func_1(u_input.b, ~global0.x, 86587i, _wgslsmith_f_op_vec2_f32(vec2<f32>(1607f, -529f) - vec2<f32>(417f, 1544f))), -vec3<i32>(2147483647i, -80390i, u_input.b) << (u_input.a.xyw % vec3<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.b), min(vec2<i32>(-1i, 54994i), vec2<i32>(u_input.b, 0i)))))));
    var var_1 = Struct_3(min(1u, _wgslsmith_mult_u32(u_input.a.x, global0.x)), u_input.a.zz, select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false)), true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false)), true)), vec4<bool>(true, false, any(vec2<bool>(true, true)), false), select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, global0.x != 1u, 18362u > global0.x, true), false)));
    var var_2 = -1i >= u_input.b;
    global0 = vec2<u32>(37854u, _wgslsmith_add_u32(firstTrailingBit(var_1.b.x) | 1u, u_input.a.x) & 4294967295u);
    var var_3 = ~u_input.b;
    let var_4 = func_4(false, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(277f, 254f, 646f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-607f, -1185f, -298f))))), vec3<f32>(_wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(34452u, 25u)])), _wgslsmith_f_op_f32(f32(-1f) * -1545f), _wgslsmith_div_f32(-1273f, -704f)), var_1.c.x)), _wgslsmith_dot_vec2_u32(~var_1.b, ~_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.b.x, 17867u), u_input.a.yw)) & reverseBits(19372u));
    var_1 = Struct_3(36996u, max(var_1.b, u_input.a.zy), select(vec4<bool>(true, true, !any(vec4<bool>(var_1.c.x, var_4.b.x, var_4.a.x, var_1.c.x)), true), vec4<bool>(!var_1.c.x, func_3(Struct_1(-1004f, var_1.c.yzx), Struct_4(Struct_1(-181f, var_1.c.zxz))), true, _wgslsmith_f_op_f32(func_6(var_4, vec3<i32>(u_input.b, -2147483647i, u_input.b), vec2<i32>(u_input.b, 32814i))) != -1070f), !(!select(var_1.c, var_1.c, false))));
    let var_5 = global0.x ^ global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(~(vec3<i32>(1i, 2147483647i, -85201i) << (vec3<u32>(52374u, var_5, u_input.a.x) % vec3<u32>(32u))), max(vec3<i32>(27521i, -11354i, u_input.b), vec3<i32>(u_input.b, -29791i, u_input.b))), firstTrailingBit(firstLeadingBit(vec3<i32>(1i, 11710i, 2147483647i) >> (u_input.a.zyx % vec3<u32>(32u))))), _wgslsmith_add_vec3_i32(vec3<i32>(~_wgslsmith_clamp_i32(-2147483647i, -1i, -10833i), -_wgslsmith_div_i32(u_input.b, u_input.b), 7200i), -abs(_wgslsmith_add_vec3_i32(vec3<i32>(-17216i, -1i, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b)))), select(min(~u_input.a.wyz, u_input.a.xyx) ^ ~(~vec3<u32>(var_1.b.x, global0.x, var_1.a)), u_input.a.zyx, false), 1122f);
}

