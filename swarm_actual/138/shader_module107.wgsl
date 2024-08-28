struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<i32>,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
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

var<private> global0: Struct_2 = Struct_2(Struct_1(1i), true, vec3<i32>(-1i, 67515i, 0i), Struct_1(-68172i), vec4<u32>(0u, 13329u, 13315u, 4294967295u));

var<private> global1: u32;

var<private> global2: vec2<f32> = vec2<f32>(1899f, -1727f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>) -> bool {
    let var_0 = !(global2.x >= global2.x);
    var var_1 = global0.e.x;
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.x, 470f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(arg_1.xz)))), any(!vec3<bool>(var_0, global0.b, true)))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2.x, global2.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-2097f, 650f, arg_1.x, arg_1.x))), vec4<f32>(-676f, 1000f, -1900f, 786f)) + vec4<f32>(arg_1.x, arg_1.x, _wgslsmith_f_op_f32(arg_1.x * 273f), 1400f))), arg_0, ~firstLeadingBit(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, arg_0.a, -2147483647i, 1252i), u_input.a), abs(u_input.a))));
    let var_3 = _wgslsmith_sub_i32(~(var_2.d.x ^ select(var_2.d.x | 5291i, countOneBits(u_input.b.x), !var_0)), -29399i);
    global2 = _wgslsmith_f_op_vec2_f32(arg_1.xx - arg_1.zy);
    return var_0;
}

fn func_2() -> u32 {
    var var_0 = vec4<bool>(true, true, false, !func_3(global0.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -350f, global2.x))) & false);
    global2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, 1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, 2012f) + vec2<f32>(global2.x, -1425f)), var_0.yy))))))));
    var_0 = !vec4<bool>(false, all(var_0.wyy) || true, global0.b, var_0.x);
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.x, 1046f)) * _wgslsmith_f_op_f32(-1316f * -535f)) * global2.x) * -547f)));
    let var_2 = u_input.a.x;
    return ~(~(~1u));
}

fn func_4(arg_0: vec3<u32>) -> Struct_4 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.x, -1969f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.x)))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, -2205f) * _wgslsmith_f_op_f32(step(global2.x, global2.x))), _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(1672f * global2.x)), global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(f32(-1f) * -162f))))), Struct_1(11369i), firstLeadingBit(u_input.a));
    let var_1 = Struct_1(-_wgslsmith_dot_vec2_i32(~var_0.d.zz & firstLeadingBit(global0.c.yx), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(var_0.d.xy, vec2<i32>(-2147483647i, global0.c.x)), vec2<i32>(-2147483647i, global0.d.a))));
    global1 = 2377u >> (~countOneBits(global0.e.x) % 32u);
    global1 = max(arg_0.x, max(1u, 50649u));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a.x))))))));
    return Struct_4(4294967295u ^ firstTrailingBit(global0.e.x), ~_wgslsmith_div_vec4_i32(vec4<i32>(~(-49290i), var_1.a, -1i, _wgslsmith_sub_i32(var_1.a, var_0.c.a)), vec4<i32>(u_input.b.x, -1i, var_0.c.a | -2833i, ~global0.d.a)));
}

fn func_1(arg_0: vec3<u32>) -> f32 {
    var var_0 = u_input.c;
    let var_1 = Struct_1(~u_input.b.x);
    let var_2 = func_4(countOneBits(vec3<u32>(~global0.e.x, arg_0.x, ~func_2())));
    let var_3 = _wgslsmith_clamp_vec4_i32(abs(func_4(vec3<u32>(0u, _wgslsmith_add_u32(global0.e.x, 4294967295u), ~50267u)).b), abs(-(~var_2.b)), reverseBits(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(var_2.b, var_2.b), max(vec4<i32>(-2147483647i, 1i, global0.c.x, -2147483647i), u_input.a)) & (vec4<i32>(global0.a.a, u_input.a.x, var_2.b.x, global0.d.a) << (vec4<u32>(var_2.a, 4294967295u, global0.e.x, 77291u) % vec4<u32>(32u)))));
    var var_4 = Struct_2(global0.a, any(vec2<bool>(global0.b, _wgslsmith_f_op_f32(global2.x - global2.x) == global2.x)), vec3<i32>(~_wgslsmith_dot_vec3_i32(~var_2.b.yzy, firstTrailingBit(var_2.b.yzw)), -var_3.x & abs(8957i), 1i), Struct_1(reverseBits(1i)), u_input.c);
    return global2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.x)) * _wgslsmith_f_op_f32(func_1(u_input.c.xzy)))))));
    var var_1 = u_input.c.x;
    global2 = vec2<f32>(global2.x, global2.x);
    var var_2 = Struct_4(~global0.e.x << (~_wgslsmith_div_u32(abs(41538u), _wgslsmith_div_u32(u_input.c.x, 0u)) % 32u), -reverseBits(vec4<i32>(i32(-1i) * -1i, 2147483647i, -1i | global0.a.a, _wgslsmith_div_i32(u_input.a.x, 15289i))));
    var var_3 = Struct_1(-1i);
    let var_4 = ~(_wgslsmith_sub_vec3_i32(global0.c, -abs(vec3<i32>(var_3.a, 0i, u_input.b.x))) | u_input.a.xwz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x, global0.e.x), select(global0.e.yz, u_input.c.xy, vec2<bool>(global0.b, global0.b)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(var_2.a, var_2.a), vec2<u32>(4294967295u, 34784u))), ~vec2<u32>(4294967295u, 46245u) & select(~vec2<u32>(100877u, global0.e.x), u_input.c.yw, false)));
}

