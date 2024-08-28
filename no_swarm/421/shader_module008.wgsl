struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<bool>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1i);

var<private> global1: f32 = -1000f;

var<private> global2: i32 = 1i;

var<private> global3: vec2<f32> = vec2<f32>(766f, -1180f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    return ~_wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(1u), 1u), abs(vec2<u32>(22141u, 0u) << (vec2<u32>(1u, 0u) % vec2<u32>(32u))));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_4(~vec3<u32>(49604u, func_3(Struct_1(-9451i)), _wgslsmith_div_u32(~1u, 4294967295u)), global3.x, Struct_3(max(~vec4<i32>(19413i, -2147483647i, u_input.a.x, 10577i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, 0i, 15511i), vec4<i32>(1i, -9378i, -1i, -34508i))) & _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, global0.a, global0.a), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 24156i, 2147483647i, -25231i), vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 11919i))), abs(firstTrailingBit(vec3<u32>(21984u, 1u, 15345u))) | _wgslsmith_sub_vec3_u32(vec3<u32>(34477u, 0u, 11632u), vec3<u32>(4025u, 0u, 7798u)), vec4<bool>(true, false, true, true), Struct_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(400f, global3.x, global3.x), vec3<f32>(global3.x, global3.x, -972f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, -593f)) - vec2<f32>(global3.x, global3.x)), u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2003f - 2073f))), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1004f, global3.x, 1778f), vec3<f32>(487f, global3.x, -159f))) * _wgslsmith_div_vec3_f32(vec3<f32>(302f, global3.x, global3.x), vec3<f32>(global3.x, -800f, global3.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, 502f) * vec2<f32>(477f, -851f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, -466f)), all(vec4<bool>(false, true, false, true)))), _wgslsmith_clamp_i32(global0.a, u_input.a.x, abs(u_input.a.x)), global3.x)));
    global2 = 1i;
    let var_1 = _wgslsmith_f_op_vec3_f32(-var_0.c.d.a);
    var var_2 = -15306i;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(457f, var_0.b, 494f)))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1325f, var_0.c.d.a.x, 543f)))))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-481f, -905f, -677f)))))) - vec3<f32>(global3.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1.x, var_1.x))))), 373f));
    return var_0;
}

fn func_4(arg_0: Struct_4) -> f32 {
    var var_0 = arg_0.c.e.c;
    global0 = Struct_1((1i ^ -(12086i & global0.a)) << (_wgslsmith_mod_u32(~select(28372u, arg_0.c.b.x, true), min(0u, 84u)) % 32u));
    var var_1 = arg_0.c.b.x;
    let var_2 = func_2();
    var var_3 = Struct_3(~firstTrailingBit(var_2.c.a), max(var_2.c.b, vec3<u32>(0u, _wgslsmith_clamp_u32(~0u, ~7198u, _wgslsmith_mod_u32(var_2.c.b.x, var_2.a.x)), firstTrailingBit(0u))), select(!(!var_2.c.c), select(select(!arg_0.c.c, !var_2.c.c, false), vec4<bool>(arg_0.c.c.x, false, true, !arg_0.c.c.x), false), !(!arg_0.c.c)), func_2().c.d, func_2().c.e);
    return -1024f;
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_2, arg_3: bool) -> vec3<u32> {
    global2 = ~arg_2.c;
    global1 = _wgslsmith_f_op_f32(191f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(436f * arg_0.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2())) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3.x - 2274f))))));
    global1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(Struct_4(vec3<u32>(1u, 1u, 1u), 1656f, func_2().c)))));
    let var_0 = select(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(20827u, 6454u, 0u, 0u), vec4<u32>(0u, 92162u, 0u, 90988u), arg_3 == true) | ~vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_add_vec4_u32(~vec4<u32>(1u, 19586u, 6593u, 45887u), min(vec4<u32>(4294967295u, 0u, 4294967295u, 30835u), vec4<u32>(1u, 1u, 1u, 1u))), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(abs(_wgslsmith_clamp_u32(1u, 0u, _wgslsmith_mod_u32(1u, 4294967295u))), 53828u, _wgslsmith_div_u32(73204u, func_2().c.b.x), ~1u), all(!(!select(vec4<bool>(arg_3, arg_3, arg_3, false), vec4<bool>(arg_3, arg_3, arg_3, false), arg_3))));
    global1 = arg_2.a.x;
    return max(~vec3<u32>(firstLeadingBit(countOneBits(0u)), 28032u, firstTrailingBit(_wgslsmith_sub_u32(var_0.x, 1u))), ~(~(var_0.yww | firstTrailingBit(vec3<u32>(6780u, var_0.x, 1u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3.x - global3.x), _wgslsmith_f_op_f32(abs(global3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))))), i32(-1i) * -16231i, Struct_2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1326f, _wgslsmith_f_op_f32(-global3.x), -975f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(669f, -568f) + vec2<f32>(global3.x, global3.x)), vec2<f32>(567f, 1111f), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))))), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(0i, global0.a), 1i, 0i), _wgslsmith_f_op_f32(-global3.x)), any(vec4<bool>(true, all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true))), true, true)));
    global0 = Struct_1((firstLeadingBit(global0.a | global0.a) >> ((~44133u ^ func_3(Struct_1(40073i))) % 32u)) >> (~1u % 32u));
    var var_1 = Struct_4(~func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-353f, global3.x)) - vec2<f32>(global3.x, global3.x)), -2147483647i, func_2().c.d, false), global3.x, func_2().c);
    var var_2 = var_1.c.c;
    var var_3 = var_1.c.b.x;
    global1 = -1294f;
    var var_4 = Struct_1(var_1.c.d.c);
    let var_5 = var_1.a.x;
    let var_6 = func_2().c.d;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a);
}

