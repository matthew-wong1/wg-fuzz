struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> vec4<bool> {
    return !vec4<bool>(false, true, true, !any(vec4<bool>(arg_0.a, arg_0.a, true, false)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_2) -> vec3<i32> {
    var var_0 = arg_2;
    let var_1 = !arg_0.a == true;
    let var_2 = Struct_2(Struct_1(arg_2.a.a, var_0.b.b, vec4<i32>(abs(-8390i), 68870i, -1i, arg_2.b.b.x)), arg_2.b, arg_2.a);
    var var_3 = vec2<bool>(u_input.a.x == ~u_input.c.x, true);
    var var_4 = arg_0;
    return var_0.a.b;
}

fn func_2() -> vec2<bool> {
    let var_0 = -1i;
    var var_1 = select(u_input.c.x, ~31948u, false) < _wgslsmith_mod_u32(1u, u_input.a.x);
    var_1 = true;
    var var_2 = vec3<u32>(_wgslsmith_mult_u32(0u, abs(33293u) ^ u_input.c.x), _wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, 1u, 73681u), 4294967295u) & ~(~u_input.b.x), 4294967295u);
    let var_3 = Struct_2(Struct_1(func_1(Struct_1(23265i < var_0, vec3<i32>(2147483647i, var_0, 2147483647i), -vec4<i32>(-1i, var_0, -6945i, var_0)), ~(vec4<u32>(6847u, 62779u, var_2.x, u_input.b.x) << (vec4<u32>(23123u, var_2.x, 4294967295u, var_2.x) % vec4<u32>(32u)))).x, firstLeadingBit(~(-vec3<i32>(-4804i, -1i, var_0))), firstLeadingBit(-_wgslsmith_mod_vec4_i32(vec4<i32>(var_0, var_0, -65764i, 2147483647i), vec4<i32>(var_0, var_0, var_0, var_0)))), Struct_1(true, func_3(Struct_1(true, vec3<i32>(2147483647i, var_0, var_0), vec4<i32>(24927i, 0i, var_0, 2147483647i)), select(vec3<i32>(3466i, var_0, 1i), vec3<i32>(var_0, -15026i, var_0), true), Struct_2(Struct_1(false, vec3<i32>(var_0, 1i, 64847i), vec4<i32>(var_0, var_0, -2147483647i, var_0)), Struct_1(true, vec3<i32>(0i, var_0, var_0), vec4<i32>(0i, 45114i, -6589i, 37076i)), Struct_1(true, vec3<i32>(50388i, -24838i, var_0), vec4<i32>(0i, var_0, var_0, var_0)))) ^ (-vec3<i32>(var_0, var_0, -21793i) & -vec3<i32>(2147483647i, -32630i, 1i)), firstLeadingBit(~_wgslsmith_mult_vec4_i32(vec4<i32>(var_0, var_0, -17531i, -1i), vec4<i32>(2147483647i, -2147483647i, var_0, 1i)))), Struct_1(all(vec2<bool>(true, true)), select(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0, var_0, var_0), vec3<i32>(var_0, var_0, var_0)) ^ ~vec3<i32>(347i, var_0, 1i), ~(-vec3<i32>(-2147483647i, var_0, -21925i)), all(vec4<bool>(false, false, true, true))), ~(vec4<i32>(var_0, 1i, 602i, 22317i) | vec4<i32>(var_0, var_0, var_0, -1i))));
    return !vec2<bool>(any(!select(vec2<bool>(false, true), vec2<bool>(var_3.c.a, false), true)), func_1(var_3.c, firstTrailingBit(vec4<u32>(1u, 4294967295u, 0u, 36032u))).x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(false, _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(abs(-9562i), -2472i, 1i), vec3<i32>(1i, 1i, 1i)), vec3<i32>(-1i) * -vec3<i32>(14047i, -1i, -16408i)), select(vec4<i32>(-(2147483647i << (u_input.b.x % 32u)), ~(-1i), 1i, 1i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 11547u), u_input.c.xx) % 32u)), select(_wgslsmith_sub_vec4_i32(-vec4<i32>(-1i, -18019i, -1i, 1i), firstLeadingBit(vec4<i32>(0i, 2147483647i, -1i, -1i))), -_wgslsmith_clamp_vec4_i32(vec4<i32>(5072i, 20246i, -2147483647i, -8699i), vec4<i32>(23290i, 1i, -1396i, 5148i), vec4<i32>(1i, -1i, 245i, -2147483647i)), true), !select(vec4<bool>(false, true, false, false), func_1(Struct_1(false, vec3<i32>(0i, 0i, -1i), vec4<i32>(-16081i, -19122i, -13767i, 1i)), vec4<u32>(u_input.a.x, u_input.b.x, u_input.a.x, u_input.c.x)), any(vec3<bool>(false, true, false)))));
    let var_1 = Struct_1(false, var_0.c.yyw | countOneBits(var_0.c.yyz), abs(var_0.c));
    var var_2 = func_2();
    var_2 = func_2();
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(768f, 323f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1419f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(788f + _wgslsmith_f_op_f32(sign(3482f))))));
    let var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-497f, 494f, 746f, 1378f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(972f, -1000f, -926f, -723f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(816f, 515f, 743f, 598f), vec4<f32>(219f, 1406f, 680f, -1817f))))), var_0.a)), -var_0.c.xzx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1712f, 711f))) + _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -308f)))));
}

