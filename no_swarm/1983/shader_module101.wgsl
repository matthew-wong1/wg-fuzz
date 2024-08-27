struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec4<f32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: bool,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: bool,
    d: vec2<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 25>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: f32) -> Struct_5 {
    return Struct_5(!any(vec4<bool>(true, true, true, true)), Struct_3(_wgslsmith_f_op_f32(-1553f * arg_0), Struct_2(u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2041f))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1000f, 1188f)), _wgslsmith_sub_i32(1655i, u_input.b.x), vec4<f32>(arg_0, arg_0, arg_0, -958f), -655f, u_input.a.x), false)), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1626f - _wgslsmith_f_op_f32(sign(arg_0)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(max(arg_0, 1493f)), true)) * arg_0)));
}

fn func_3() -> i32 {
    global0 = array<vec4<u32>, 25>();
    global0 = array<vec4<u32>, 25>();
    global0 = array<vec4<u32>, 25>();
    var var_0 = Struct_5(any(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(false, true)))), func_2(1f).b, all(vec3<bool>(u_input.b.x >= _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -23635i, 21897i, u_input.b.x), vec4<i32>(u_input.b.x, 2696i, -1i, -2147483647i)), firstLeadingBit(u_input.d.x) != ~u_input.c.x, ~u_input.c.x < u_input.a.x)), _wgslsmith_f_op_vec2_f32(-func_2(_wgslsmith_f_op_f32(func_2(-106f).b.b.b * -490f)).d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(343f, 518f)))) * 1f));
    var var_1 = 1i;
    return i32(-1i) * -1i;
}

fn func_1(arg_0: u32, arg_1: vec3<u32>) -> Struct_3 {
    var var_0 = func_2(-996f);
    var var_1 = _wgslsmith_mod_i32(~func_3(), min(abs(max(var_0.b.b.a, u_input.b.x)), _wgslsmith_mod_i32(i32(-1i) * -84570i, reverseBits(u_input.b.x)))) != var_0.b.b.c.b;
    var var_2 = true;
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-518f - _wgslsmith_f_op_f32(var_0.b.a * _wgslsmith_div_f32(var_0.d.x, var_0.d.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -392f) * _wgslsmith_f_op_f32(-var_0.b.b.c.d)) * -1306f)), Struct_2(_wgslsmith_div_i32(var_0.b.b.c.b, 0i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1149f, var_0.d.x))) - 740f), Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.b.b.b, var_0.b.b.c.a.x, -449f))), _wgslsmith_f_op_vec3_f32(-var_0.b.b.c.a))), firstTrailingBit(_wgslsmith_clamp_i32(var_0.b.b.a, var_0.b.b.c.b, 1i)), _wgslsmith_f_op_vec4_f32(round(var_0.b.b.c.c)), _wgslsmith_f_op_f32(-var_0.d.x), 4294967295u), !var_0.c));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4) -> Struct_2 {
    global0 = array<vec4<u32>, 25>();
    var var_0 = func_2(arg_0.a.x);
    global0 = array<vec4<u32>, 25>();
    let var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.a.x * func_2(arg_1.b.d).d.x) + 719f))).b;
    var_0 = func_2(arg_1.a.a);
    return Struct_2(0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.b.c.d)) + _wgslsmith_f_op_f32(-var_1.a)), arg_0, any(select(select(vec2<bool>(var_0.b.b.d, false), !vec2<bool>(arg_1.a.b.d, false), all(vec4<bool>(true, arg_1.a.b.d, var_1.b.d, var_1.b.d))), vec2<bool>(true, any(vec4<bool>(var_0.a, arg_1.c, false, true))), select(vec2<bool>(var_0.c, var_0.c), vec2<bool>(arg_1.c, true), vec2<bool>(true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 25>();
    let var_0 = Struct_4(Struct_3(1f, func_4(Struct_1(vec3<f32>(300f, 1571f, 2626f), -3361i, vec4<f32>(-1256f, -305f, 1780f, -894f), _wgslsmith_f_op_f32(sign(-484f)), 19871u), Struct_4(func_1(u_input.c.x, vec3<u32>(u_input.c.x, 1u, 30090u)), func_2(159f).b.b.c, true))), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(343f, -153f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-726f - -828f))))).b.b.c, true);
    let var_1 = u_input.d | firstTrailingBit(~(~global0[_wgslsmith_index_u32(u_input.c.x, 25u)]) & ~(u_input.d | global0[_wgslsmith_index_u32(4294967295u, 25u)]));
    let var_2 = vec3<bool>(!var_0.c, var_0.c, true);
    let var_3 = max(~_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b.b >> (12658u % 32u), max(-2147483647i, u_input.b.x), -44232i, -2147483647i), vec4<i32>(~u_input.b.x, 1i, u_input.b.x << (u_input.c.x % 32u), _wgslsmith_mod_i32(u_input.b.x, 2147483647i))), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a.b.c.b, u_input.b.x, -36861i, -13305i) | vec4<i32>(-18883i, 2147483647i, u_input.b.x, -8565i), ~(-vec4<i32>(2147483647i, 31028i, u_input.b.x, 1i))), -(vec4<i32>(-1i, u_input.b.x, 0i, var_0.b.b) << (vec4<u32>(17807u, var_1.x, u_input.d.x, 4294967295u) % vec4<u32>(32u))) & _wgslsmith_add_vec4_i32(min(vec4<i32>(u_input.b.x, -21033i, 0i, u_input.b.x), vec4<i32>(-13615i, -2147483647i, u_input.b.x, var_0.b.b)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.b.b, -22345i, -47177i, -2147483647i), vec4<i32>(var_0.b.b, u_input.b.x, u_input.b.x, 0i), vec4<i32>(u_input.b.x, -2147483647i, 1i, var_0.b.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x | countOneBits(_wgslsmith_add_i32(u_input.b.x, -2147483647i) ^ -1i), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(581f, var_0.a.a, 2319f), var_0.b.a))), vec3<f32>(func_2(1196f).d.x, _wgslsmith_f_op_f32(abs(var_0.a.a)), _wgslsmith_f_op_f32(-var_0.b.a.x))), var_0.a.b.c.c.xyy), u_input.c.x << (~var_1.x % 32u));
}

