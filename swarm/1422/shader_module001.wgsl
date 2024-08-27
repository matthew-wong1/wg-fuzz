struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1() -> Struct_1 {
    var var_0 = u_input.b;
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1939f), -1737f);
}

fn func_3() -> bool {
    let var_0 = max(-vec2<i32>(_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, 1i, countOneBits(global0.x)), global0.x), -vec2<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(global0.wxy, _wgslsmith_sub_vec3_i32(u_input.e, global0.wwz))));
    var var_1 = ~_wgslsmith_dot_vec4_i32(-max(_wgslsmith_add_vec4_i32(vec4<i32>(-1950i, 0i, global0.x, -36427i), vec4<i32>(global0.x, global0.x, var_0.x, -2147483647i)), vec4<i32>(global0.x, global0.x, u_input.e.x, 1i)), vec4<i32>(-2147483647i, -51343i, global0.x, -38652i));
    let var_2 = 376f;
    var var_3 = func_1();
    var var_4 = _wgslsmith_div_u32(0u, u_input.b);
    return true;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    var var_0 = !select(!vec4<bool>(true, false, func_3(), true), !vec4<bool>(true, arg_1.b >= -1000f, 13781u > u_input.b, true), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-arg_0) >= 291f));
    var var_1 = func_1();
    var var_2 = u_input.c.x;
    var_1 = Struct_1(1000f, arg_0);
    var var_3 = !vec4<bool>(select(all(!var_0.ywz), false, _wgslsmith_sub_i32(-27373i, u_input.e.x) == u_input.d.x), any(vec3<bool>(true, !var_0.x, true)), false || any(!vec3<bool>(var_0.x, true, var_0.x)), true);
    return Struct_2(_wgslsmith_div_vec3_i32(abs(u_input.c), vec3<i32>(1i, i32(-1i) * -2147483647i, ~_wgslsmith_clamp_i32(13582i, global0.x, -49341i))), func_1(), Struct_1(arg_1.b, 1985f), func_1(), u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(188f, func_1(), Struct_1(-1114f, _wgslsmith_f_op_f32(f32(-1f) * -239f)));
    var var_1 = Struct_2(min(-_wgslsmith_mult_vec3_i32(select(vec3<i32>(12164i, 1i, 1i), vec3<i32>(u_input.c.x, 1i, u_input.a.x), vec3<bool>(true, true, false)), vec3<i32>(1i, u_input.d.x, u_input.c.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.e.x, var_0.e, u_input.c.x) | global0.zxx, func_2(_wgslsmith_f_op_f32(step(163f, -276f)), var_0.c, var_0.d).a)), var_0.d, Struct_1(_wgslsmith_div_f32(func_1().a, _wgslsmith_f_op_f32(var_0.b.a - _wgslsmith_f_op_f32(-var_0.c.b))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b.a)))), var_0.d, -1i);
    let var_2 = Struct_2(select(var_0.a & ~(~global0.zwy), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a, _wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.a.x, -96004i, 2147483647i), u_input.c, vec3<i32>(global0.x, -25081i, var_0.e))), ~(~vec3<i32>(-1i, var_1.a.x, -1i))), vec3<bool>(true, true, true)), func_2(var_1.c.b, func_2(var_1.c.a, func_2(_wgslsmith_f_op_f32(914f * var_0.c.a), Struct_1(var_0.c.b, 1576f), var_1.c).c, func_1()).c, Struct_1(var_1.d.b, 1f)).c, func_1(), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(968f)) + _wgslsmith_f_op_f32(ceil(236f))) + var_1.d.b), 1181f), ~var_0.a.x);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(select(-1775f, var_2.d.b, true)), -466f);
    var_3 = var_2.d;
    let var_4 = vec4<i32>(-1i, -1i & ~(~reverseBits(global0.x)), var_0.a.x, ~1i);
    var var_5 = ~reverseBits(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b, 24816u, u_input.b, u_input.b), select(vec4<u32>(u_input.b, 10641u, 6445u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), true)), min(max(vec4<u32>(u_input.b, 48788u, u_input.b, 4294967295u), vec4<u32>(54494u, 4294967295u, 11219u, 1u)), max(vec4<u32>(u_input.b, 1u, 78118u, 0u), vec4<u32>(75263u, u_input.b, 0u, 53042u)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(abs(2147483647i)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.d.a, var_1.c.b))) * vec2<f32>(_wgslsmith_f_op_f32(ceil(var_3.b)), _wgslsmith_f_op_f32(var_3.a + var_0.b.b))), vec2<f32>(var_0.c.b, 560f), !select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(true, true))))), select(global0.x, reverseBits(_wgslsmith_dot_vec3_i32(var_0.a, vec3<i32>(1i, global0.x, 0i))), !any(vec4<bool>(false, false, false, false))), vec3<i32>(~var_1.a.x, 1i, -var_4.x), 212f);
}

