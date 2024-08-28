struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec3<bool>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: u32,
    c: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(0u, 2712u), vec4<f32>(-417f, -891f, -522f, 1000f), vec3<i32>(1i, 14023i, i32(-2147483648)), 1i);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.b;
    var var_1 = global0.b;
    var_0 = -global0.d;
    let var_2 = global0.a.x;
    let var_3 = global0.b.x;
    return Struct_1(global0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-417f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1000f, -251f)))), _wgslsmith_f_op_f32(round(-1061f)), -535f)), global0.c, u_input.a);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: u32, arg_3: f32) -> u32 {
    let var_0 = ~_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(~(vec3<i32>(-1i, 0i, 10408i) ^ vec3<i32>(global0.c.x, arg_1.a.x, 1i)), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(global0.c, global0.c), vec3<i32>(1i, -1i, 0i))), global0.c);
    var var_1 = select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true)) & !all(vec2<bool>(false, false))), !select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), false)), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(false, false), vec2<bool>(true, true))));
    let var_2 = Struct_3(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(countOneBits(~global0.a), _wgslsmith_add_vec2_u32(~vec2<u32>(19232u, 47654u), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_2, 34458u), global0.a, vec2<u32>(arg_1.b, arg_0.b)))), 15612u), !var_1.x, !(!select(select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(true, var_1.x, false), vec3<bool>(true, var_1.x, false)), !vec3<bool>(var_1.x, false, var_1.x), !vec3<bool>(var_1.x, var_1.x, var_1.x))), ~vec4<u32>(52955u, arg_0.b, ~39237u, _wgslsmith_mult_u32(arg_1.b, arg_2 ^ global0.a.x)));
    var var_3 = func_2();
    let var_4 = false;
    return _wgslsmith_mod_u32(arg_1.b, ~_wgslsmith_add_u32(~0u, select(min(var_3.a.x, 13470u), 323u, !var_2.c.x)));
}

fn func_4(arg_0: u32, arg_1: Struct_5) -> vec2<i32> {
    global0 = func_2();
    var var_0 = _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(firstLeadingBit(1u), 1u), 117371u, ~1u, reverseBits(max(32458u, arg_1.a.a.x))), ~(~vec4<u32>(0u, arg_1.c.x, 0u, 75379u))), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(~arg_1.a.a.x, 2450u ^ arg_0), abs(~arg_0)), 28411u, arg_1.c.x, firstTrailingBit(arg_1.b.x & global0.a.x)));
    global0 = Struct_1(min(vec2<u32>(1u, ~1u), ~global0.a), _wgslsmith_f_op_vec4_f32(sign(global0.b)), -vec3<i32>(-32656i, -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a, u_input.b, 2147483647i) << (vec4<u32>(46592u, arg_1.a.a.x, var_0.x, arg_0) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(18891i, 39992i, -1i, 26606i), vec4<i32>(0i, -15205i, 0i, 2147483647i), vec4<i32>(u_input.a, arg_1.a.d, -3495i, arg_1.a.d)))), _wgslsmith_dot_vec4_i32(~select(~vec4<i32>(u_input.b, 2147483647i, arg_1.a.c.x, 65047i), vec4<i32>(global0.d, 47419i, arg_1.a.c.x, 2147483647i) | vec4<i32>(global0.c.x, -10000i, -35871i, arg_1.a.d), vec4<bool>(true, true, true, true)), ~(~_wgslsmith_mult_vec4_i32(vec4<i32>(23660i, global0.d, u_input.a, arg_1.a.c.x), vec4<i32>(2147483647i, u_input.a, global0.d, u_input.b)))));
    let var_1 = -37225i;
    var var_2 = Struct_4(vec2<i32>(u_input.a >> (max(arg_1.b.x, global0.a.x) % 32u), -27840i), ~_wgslsmith_clamp_u32(~(~arg_1.c.x), ~_wgslsmith_mult_u32(0u, var_0.x), arg_0), 668f);
    return func_2().c.xz << (var_0.ww % vec2<u32>(32u));
}

fn func_1(arg_0: f32) -> Struct_3 {
    let var_0 = true;
    let var_1 = func_2();
    let var_2 = Struct_4(func_4(~func_3(Struct_4(global0.c.zy, var_1.a.x, 2412f), Struct_4(vec2<i32>(2147483647i, 1i), 71546u, 288f), ~global0.a.x, 1223f), Struct_5(var_1, vec3<u32>(4294967295u, ~1u, 1u), var_1.a, _wgslsmith_f_op_f32(-907f * _wgslsmith_f_op_f32(-1434f + global0.b.x)))), _wgslsmith_mod_u32(var_1.a.x, firstTrailingBit(firstLeadingBit(_wgslsmith_mod_u32(82925u, global0.a.x)))), var_1.b.x);
    let var_3 = var_2.a.x;
    let var_4 = var_2;
    return Struct_3(func_3(Struct_4(~var_4.a, (4294967295u & var_2.b) & min(0u, 0u), 1000f), var_2, 0u, _wgslsmith_f_op_f32(exp2(var_1.b.x))), var_0, select(!select(select(vec3<bool>(false, var_0, false), vec3<bool>(false, false, var_0), var_0), vec3<bool>(false, var_0, var_0), select(vec3<bool>(var_0, true, var_0), vec3<bool>(var_0, var_0, var_0), var_0)), vec3<bool>(var_0, select(var_0, all(vec3<bool>(var_0, var_0, false)), all(vec2<bool>(false, true))), any(!vec4<bool>(false, var_0, false, true))), any(vec4<bool>(var_0, var_0, false, true))), ~_wgslsmith_div_vec4_u32(vec4<u32>(4023u, firstLeadingBit(var_2.b), 13054u, var_4.b), _wgslsmith_mod_vec4_u32(vec4<u32>(62845u, global0.a.x, 0u, global0.a.x) << (vec4<u32>(var_4.b, 4294967295u, var_1.a.x, var_2.b) % vec4<u32>(32u)), vec4<u32>(var_1.a.x, 1u, 14470u, var_4.b))));
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: i32) -> u32 {
    global0 = Struct_1(~func_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.b.x)))).d.zx, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1386f, global0.b.x, -128f, global0.b.x))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(trunc(global0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -522f), _wgslsmith_f_op_f32(-865f - global0.b.x)) - vec4<f32>(_wgslsmith_f_op_f32(-global0.b.x), -1000f, _wgslsmith_f_op_f32(min(global0.b.x, global0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -349f)))), firstLeadingBit(global0.c), select(countOneBits(firstLeadingBit(u_input.a)), u_input.a, false));
    let var_0 = Struct_2(Struct_1(~(~vec2<u32>(40572u, arg_0.a) | ~arg_0.d.ww), global0.b, _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(arg_1, 1i), _wgslsmith_mod_i32(arg_2, -2147483647i), -global0.c.x), -max(vec3<i32>(global0.d, u_input.a, -39335i), global0.c), global0.c), -2147483647i), func_2(), Struct_1(arg_0.d.wy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.b) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-411f, global0.b.x, -483f, 639f)))) - vec4<f32>(global0.b.x, -198f, _wgslsmith_div_f32(global0.b.x, global0.b.x), global0.b.x)), vec3<i32>(arg_2, -2147483647i, _wgslsmith_mod_i32(~arg_2, 2147483647i ^ arg_2)), firstTrailingBit(arg_2)));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -109f);
    var var_2 = Struct_3(32772u, true, vec3<bool>(false, true == select(arg_0.b, arg_0.c.x, !arg_0.b), 1u != var_0.a.a.x), _wgslsmith_clamp_vec4_u32(arg_0.d, arg_0.d, max(arg_0.d, arg_0.d)) ^ abs(countOneBits(vec4<u32>(arg_0.a, 0u, var_0.b.a.x, 54754u))));
    var var_3 = !arg_0.c;
    return ~arg_0.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~21141u >> (global0.a.x % 32u);
    var var_1 = global0.c.x;
    let var_2 = func_5(func_1(-153f), 0i, global0.c.x | func_4(_wgslsmith_mod_u32(global0.a.x, func_1(global0.b.x).d.x), Struct_5(Struct_1(vec2<u32>(global0.a.x, global0.a.x), global0.b, global0.c, u_input.b), func_1(202f).d.zwz, ~vec2<u32>(996u, 1u), -1501f)).x);
    var var_3 = Struct_5(Struct_1(global0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(878f, -1170f)), global0.b.x, 863f, _wgslsmith_f_op_f32(-628f + 308f)) * global0.b), _wgslsmith_mod_vec3_i32(abs(select(global0.c, vec3<i32>(20074i, global0.d, global0.d), vec3<bool>(true, false, false))), vec3<i32>(func_4(var_2, Struct_5(Struct_1(vec2<u32>(global0.a.x, global0.a.x), global0.b, global0.c, u_input.a), vec3<u32>(42440u, 55294u, 4294967295u), vec2<u32>(10053u, 1u), global0.b.x)).x, i32(-1i) * -26905i, func_4(var_2, Struct_5(Struct_1(vec2<u32>(0u, 0u), vec4<f32>(406f, 720f, global0.b.x, -2538f), global0.c, 2147483647i), vec3<u32>(4294967295u, 8370u, global0.a.x), vec2<u32>(global0.a.x, 59814u), global0.b.x)).x)), func_4(~min(4294967295u, global0.a.x), Struct_5(func_2(), _wgslsmith_mod_vec3_u32(vec3<u32>(var_2, global0.a.x, 30662u), vec3<u32>(1u, 1u, global0.a.x)), _wgslsmith_mult_vec2_u32(global0.a, global0.a), 862f)).x), abs(firstTrailingBit(min(vec3<u32>(11200u, 4294967295u, var_2), vec3<u32>(var_2, var_2, 5235u)))) ^ ~(vec3<u32>(37270u, 43266u, 89986u) & ~vec3<u32>(0u, var_2, global0.a.x)), ~global0.a, global0.b.x);
    let var_4 = global0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-_wgslsmith_mod_i32(firstLeadingBit(global0.d), var_3.a.d), 37864i, -20587i, ~_wgslsmith_div_i32(reverseBits(global0.d), var_3.a.c.x ^ global0.c.x)), countOneBits(global0.d) ^ var_3.a.d, (_wgslsmith_clamp_u32(func_1(global0.b.x).d.x, abs(var_2), abs(0u)) ^ var_3.a.a.x) & var_2, var_3.b.xx);
}

