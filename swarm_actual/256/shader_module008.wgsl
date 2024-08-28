struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = firstLeadingBit(countOneBits(u_input.a));
    let var_1 = Struct_1(arg_1.a, !(!(!vec4<bool>(arg_1.a.x, arg_1.a.x, true, false))), ~var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -409f));
    let var_2 = Struct_1(!arg_1.a, select(vec4<bool>(arg_1.b.x, var_1.b.x, arg_1.b.x, true), vec4<bool>(all(arg_1.b) | true, false, var_1.d >= _wgslsmith_f_op_f32(min(956f, arg_1.d)), 1486f < _wgslsmith_f_op_f32(arg_1.d - -1116f)), !vec4<bool>(select(false, var_1.a.x, var_1.b.x), arg_1.a.x, arg_1.b.x || arg_1.b.x, true)), ~(-1i), _wgslsmith_f_op_f32(-1048f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.d))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0, 742f)) + _wgslsmith_f_op_f32(max(-356f, arg_1.d))))));
    global0 = ~3395u;
    let var_3 = var_2;
    return var_2.b;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = !any(vec2<bool>(all(!arg_0.a), true));
    global0 = ~_wgslsmith_add_u32(firstLeadingBit(_wgslsmith_clamp_u32(max(26766u, 1u), u_input.c, u_input.c << (u_input.c % 32u))), ~u_input.c);
    let var_1 = Struct_2(firstLeadingBit(~firstTrailingBit(u_input.c) >> (u_input.c % 32u)), Struct_1(vec2<bool>(-1254f > _wgslsmith_f_op_f32(arg_0.d - arg_0.d), true), !func_3(arg_0.d, Struct_1(arg_0.a, arg_0.b, 1i, 893f)), 1i | arg_0.c, arg_0.d), firstTrailingBit(_wgslsmith_mult_vec4_u32((vec4<u32>(36186u, 20075u, u_input.c, 4294967295u) >> (vec4<u32>(u_input.c, u_input.c, u_input.c, 0u) % vec4<u32>(32u))) >> (firstLeadingBit(vec4<u32>(u_input.c, u_input.c, 1u, u_input.c)) % vec4<u32>(32u)), vec4<u32>(u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 46531u), vec2<u32>(4294967295u, 30863u)), u_input.c, 1u))));
    let var_2 = u_input.d;
    let var_3 = var_1;
    return var_3.b;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = vec2<bool>(true, arg_3.a.x);
    var var_1 = ~countOneBits(~(~(arg_1.c.ww >> (arg_1.c.xz % vec2<u32>(32u)))));
    var_1 = arg_1.c.xy;
    var var_2 = arg_1.b.d;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(2066f))))))));
    return Struct_2(1u, func_2(Struct_1(select(!arg_1.b.a, select(vec2<bool>(true, false), vec2<bool>(false, false), arg_3.a.x), vec2<bool>(arg_1.b.a.x, var_0.x)), vec4<bool>(arg_1.b.a.x, all(vec4<bool>(true, arg_1.b.a.x, arg_3.b.x, arg_0.b.x)), arg_0.b.x && var_0.x, any(arg_0.b.ww)), -countOneBits(-2147483647i), _wgslsmith_f_op_f32(step(708f, _wgslsmith_f_op_f32(f32(-1f) * -265f))))), ~abs(min(countOneBits(arg_1.c), firstTrailingBit(arg_1.c))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: bool, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec4_i32(reverseBits(u_input.d) << ((firstTrailingBit(vec4<u32>(1u, u_input.c, 78480u, 4294967295u)) ^ vec4<u32>(1u, arg_1.c.x, u_input.c, arg_1.c.x)) % vec4<u32>(32u)), vec4<i32>(-44299i << (u_input.c % 32u), 38175i | u_input.a.x, u_input.d.x, 1i) | vec4<i32>(abs(-1i), arg_1.b.c, func_1(arg_1.b, arg_1, vec3<i32>(2147483647i, -20587i, 1i), arg_1.b).b.c, arg_1.b.c >> (0u % 32u))) & -(select(select(u_input.d, u_input.d, vec4<bool>(arg_2, false, true, arg_2)), reverseBits(u_input.d), true) & u_input.d);
    let var_1 = func_1(Struct_1(vec2<bool>(false, any(!arg_1.b.b.xz)), vec4<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, u_input.b), u_input.a.zx) > 1i, false, arg_0.x > ~(-44144i), arg_1.b.a.x), 0i >> (1u % 32u), arg_3.x), arg_1, _wgslsmith_mult_vec3_i32(-abs(select(vec3<i32>(arg_0.x, 37332i, 2147483647i), var_0.zwx, true)), u_input.a), arg_1.b);
    let var_2 = var_1;
    global0 = ~var_2.a;
    global0 = 77649u;
    return Struct_1(vec2<bool>(!var_2.b.b.x, !(false != var_2.b.a.x) && all(var_1.b.b)), vec4<bool>(func_1(var_2.b, Struct_2(~1u, Struct_1(var_2.b.b.yw, arg_1.b.b, 2147483647i, arg_1.b.d), ~vec4<u32>(82794u, var_2.c.x, 49863u, arg_1.a)), -var_0.xwz, var_2.b).b.b.x, var_1.b.b.x, !(arg_2 || false), var_2.b.a.x), 1i, var_2.b.d);
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> vec2<bool> {
    var var_0 = vec2<i32>(1i, 0i);
    var var_1 = vec2<bool>(false, _wgslsmith_clamp_i32(~u_input.b ^ (arg_2 << (u_input.c % 32u)), var_0.x, u_input.d.x) == u_input.b);
    let var_2 = Struct_2(~u_input.c, arg_0, ~select(func_1(Struct_1(vec2<bool>(arg_0.a.x, arg_0.a.x), vec4<bool>(arg_1, var_1.x, var_1.x, var_1.x), -1i, arg_0.d), Struct_2(u_input.c, Struct_1(vec2<bool>(true, true), vec4<bool>(true, arg_1, arg_0.a.x, arg_1), arg_0.c, 934f), vec4<u32>(u_input.c, 16816u, 1u, 1u)), _wgslsmith_sub_vec3_i32(u_input.d.zxw, vec3<i32>(var_0.x, arg_0.c, u_input.a.x)), arg_0).c, ~(~vec4<u32>(1u, 15734u, 0u, u_input.c)), arg_0.b));
    var_1 = func_3(func_1(Struct_1(arg_0.a, !func_3(-177f, Struct_1(var_2.b.b.ww, var_2.b.b, 1602i, arg_0.d)), max(-2147483647i, 0i), arg_0.d), func_1(arg_0, func_1(arg_0, var_2, ~vec3<i32>(-32396i, 0i, u_input.d.x), func_2(Struct_1(vec2<bool>(arg_1, false), vec4<bool>(arg_0.b.x, false, false, arg_0.b.x), 0i, var_2.b.d))), (vec3<i32>(var_0.x, -1i, -1i) << (var_2.c.wxw % vec3<u32>(32u))) | -vec3<i32>(arg_0.c, arg_2, 1i), func_4(~vec2<i32>(-2147483647i, arg_0.c), func_1(var_2.b, var_2, vec3<i32>(arg_2, 2147483647i, var_0.x), arg_0), all(arg_0.b), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.d, -678f), vec2<f32>(arg_0.d, -849f))))), ~select(vec3<i32>(var_0.x, var_0.x, -23191i), ~u_input.a, var_2.b.b.xwz), var_2.b).b.d, arg_0).xx;
    var_0 = vec2<i32>(571i, _wgslsmith_dot_vec3_i32(u_input.d.yyz, vec3<i32>(arg_2, arg_2, -46038i)));
    return vec2<bool>(false, func_3(_wgslsmith_f_op_f32(var_2.b.d * func_2(var_2.b).d), arg_0).x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(vec2<bool>(true, true), func_5(func_4(u_input.a.yx, func_1(Struct_1(vec2<bool>(true, false), vec4<bool>(true, true, true, false), 1i, 578f), Struct_2(4294967295u, Struct_1(vec2<bool>(false, false), vec4<bool>(true, true, true, false), u_input.a.x, -234f), vec4<u32>(u_input.c, u_input.c, 76599u, 64590u)), vec3<i32>(0i, 2147483647i, u_input.b), Struct_1(vec2<bool>(false, false), vec4<bool>(false, false, true, false), u_input.a.x, 244f)), true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -570f))), true, ~1i), func_1(Struct_1(vec2<bool>(false, true), vec4<bool>(true, false, true, true), -u_input.d.x, 1474f), func_1(Struct_1(vec2<bool>(false, true), vec4<bool>(true, true, false, false), u_input.b, 1318f), Struct_2(0u, Struct_1(vec2<bool>(true, true), vec4<bool>(true, false, false, false), 13506i, -135f), vec4<u32>(1u, u_input.c, 1u, u_input.c)), u_input.d.xzz, func_1(Struct_1(vec2<bool>(false, true), vec4<bool>(false, false, false, false), 2147483647i, 107f), Struct_2(15306u, Struct_1(vec2<bool>(true, true), vec4<bool>(true, true, true, true), u_input.d.x, -643f), vec4<u32>(0u, u_input.c, 4294967295u, 4294967295u)), vec3<i32>(1i, -2147483647i, u_input.a.x), Struct_1(vec2<bool>(false, true), vec4<bool>(true, false, true, false), u_input.b, -232f)).b), _wgslsmith_mult_vec3_i32(-vec3<i32>(1i, u_input.a.x, u_input.d.x), min(u_input.d.yyz, vec3<i32>(-1i, 2147483647i, u_input.b))), func_4(~vec2<i32>(-19430i, 29017i), Struct_2(28598u, Struct_1(vec2<bool>(true, true), vec4<bool>(false, false, true, false), 2147483647i, 1000f), vec4<u32>(4294967295u, 30677u, u_input.c, u_input.c)), func_3(-375f, Struct_1(vec2<bool>(true, false), vec4<bool>(true, true, false, false), -94670i, -258f)).x, vec2<f32>(1f, 1f))).b.b.yy), vec4<bool>(func_4(vec2<i32>(firstTrailingBit(u_input.b), u_input.a.x >> (u_input.c % 32u)), Struct_2(u_input.c, func_1(Struct_1(vec2<bool>(false, false), vec4<bool>(true, false, true, false), u_input.b, 432f), Struct_2(u_input.c, Struct_1(vec2<bool>(false, true), vec4<bool>(true, true, true, false), u_input.b, -943f), vec4<u32>(u_input.c, u_input.c, 0u, 23929u)), vec3<i32>(-20181i, 2147483647i, 3985i), Struct_1(vec2<bool>(false, false), vec4<bool>(false, false, true, false), -2147483647i, -554f)).b, ~vec4<u32>(21797u, u_input.c, u_input.c, u_input.c)), func_1(Struct_1(vec2<bool>(false, false), vec4<bool>(false, false, true, true), u_input.a.x, 276f), func_1(Struct_1(vec2<bool>(true, false), vec4<bool>(false, false, false, false), u_input.d.x, 151f), Struct_2(u_input.c, Struct_1(vec2<bool>(false, true), vec4<bool>(false, false, false, true), u_input.b, 1000f), vec4<u32>(u_input.c, u_input.c, 1u, 1u)), vec3<i32>(-1097i, u_input.b, -7841i), Struct_1(vec2<bool>(false, true), vec4<bool>(true, true, false, false), -1i, 709f)), vec3<i32>(u_input.b, 1i, -7871i) ^ vec3<i32>(-2147483647i, u_input.d.x, u_input.a.x), Struct_1(vec2<bool>(true, true), vec4<bool>(true, true, false, true), u_input.b, 1723f)).b.a.x, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -495f))))).b.x, select((u_input.c >> (1u % 32u)) == ~4294967295u, !func_3(-1000f, Struct_1(vec2<bool>(true, true), vec4<bool>(false, true, false, true), u_input.b, 449f)).x, all(func_2(Struct_1(vec2<bool>(false, true), vec4<bool>(false, false, false, false), -16901i, -1093f)).b)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false))), true), _wgslsmith_add_i32(_wgslsmith_div_i32(2147483647i, _wgslsmith_sub_i32(-24091i, 37515i)), -_wgslsmith_mod_i32(u_input.b, func_2(Struct_1(vec2<bool>(true, false), vec4<bool>(true, false, true, false), 50845i, 309f)).c)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-188f - _wgslsmith_f_op_f32(max(-585f, _wgslsmith_f_op_f32(-943f - -1000f)))))));
    var var_1 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1828f)))), func_1(func_4(countOneBits(u_input.d.yz), Struct_2(1u, func_1(Struct_1(vec2<bool>(var_0.a.x, var_0.a.x), vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.b.x), -28288i, 1692f), Struct_2(1u, Struct_1(var_0.a, var_0.b, -65792i, -1000f), vec4<u32>(u_input.c, 0u, 4294967295u, 0u)), vec3<i32>(var_0.c, var_0.c, var_0.c), Struct_1(var_0.b.ww, vec4<bool>(true, true, true, var_0.b.x), u_input.d.x, var_0.d)).b, abs(vec4<u32>(u_input.c, u_input.c, 77809u, 1u))), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.d, -1053f), vec2<f32>(-322f, var_0.d)))), func_1(func_2(func_1(Struct_1(var_0.a, vec4<bool>(false, false, var_0.b.x, var_0.a.x), var_0.c, -923f), Struct_2(u_input.c, Struct_1(vec2<bool>(var_0.b.x, var_0.a.x), var_0.b, u_input.b, -1000f), vec4<u32>(u_input.c, 7308u, 17874u, u_input.c)), u_input.d.zzy, Struct_1(vec2<bool>(false, var_0.a.x), vec4<bool>(true, false, false, var_0.b.x), var_0.c, -265f)).b), Struct_2(563u, Struct_1(vec2<bool>(var_0.a.x, true), vec4<bool>(true, true, var_0.a.x, var_0.a.x), var_0.c, var_0.d), abs(vec4<u32>(72114u, 4294967295u, u_input.c, 0u))), u_input.d.zyy, func_2(func_1(Struct_1(var_0.b.zx, var_0.b, 9605i, -1027f), Struct_2(u_input.c, Struct_1(vec2<bool>(var_0.b.x, var_0.a.x), vec4<bool>(false, var_0.b.x, true, true), u_input.a.x, -1874f), vec4<u32>(u_input.c, u_input.c, u_input.c, 0u)), u_input.d.ywz, Struct_1(vec2<bool>(false, var_0.b.x), var_0.b, 2557i, -858f)).b)), u_input.a, func_2(Struct_1(vec2<bool>(true, true), var_0.b, -2147483647i, _wgslsmith_div_f32(var_0.d, var_0.d)))).b).zw;
    var_1 = vec2<bool>(var_0.a.x, false);
    var_0 = Struct_1(select(vec2<bool>(var_0.b.x, _wgslsmith_clamp_u32(11839u, u_input.c, 16628u) <= min(u_input.c, u_input.c)), var_0.a, !var_0.b.yy), !(!(!vec4<bool>(false, false, true, var_0.b.x))), ~(u_input.d.x << (_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, 6733u), vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(u_input.c, u_input.c)) % 32u)), _wgslsmith_f_op_f32(ceil(var_0.d)));
    var var_2 = Struct_1(vec2<bool>(var_1.x, all(vec3<bool>(var_1.x, all(var_0.b.wy), true && var_0.b.x))), vec4<bool>(all(!(!var_0.a)), !var_1.x | false, true, false || ((27868u != u_input.c) || !var_1.x)), var_0.c, var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1474f))), _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.c, 12326u), ~(~vec2<u32>(u_input.c, u_input.c))), firstTrailingBit(vec2<u32>(u_input.c, 4294967295u)) & (abs(vec2<u32>(1u, u_input.c)) ^ firstLeadingBit(vec2<u32>(60419u, 56997u)))));
}

