struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 28>;

var<private> global1: Struct_2;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2) -> vec4<f32> {
    let var_0 = _wgslsmith_div_f32(1000f, 846f);
    let var_1 = arg_0;
    global0 = array<vec3<bool>, 28>();
    var var_2 = Struct_2(vec4<bool>(arg_0.a.x, global1.a.x, all(arg_0.a), false), Struct_1(~reverseBits(arg_0.c.x | -4481i), ~firstTrailingBit(~vec3<u32>(global1.d.b.x, 4294967295u, arg_0.b.b.x))), ~select(_wgslsmith_mod_vec2_i32(arg_0.c, global1.c) | _wgslsmith_mult_vec2_i32(global1.c, vec2<i32>(0i, global1.b.a)), countOneBits(vec2<i32>(var_1.b.a, 1323i)), !arg_0.a.wy), Struct_1(1i, abs(~arg_0.d.b)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0, var_0, var_0, -734f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1336f, -1393f, -1187f, var_0))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -2624f, var_0, 883f)))) * _wgslsmith_div_vec4_f32(vec4<f32>(var_0, 570f, var_0, _wgslsmith_f_op_f32(var_0 - 1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(766f, var_0, var_0, 1587f), vec4<f32>(1302f, -2556f, -1000f, var_0))))));
}

fn func_2(arg_0: vec3<f32>, arg_1: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.xy) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.xy)));
    let var_1 = global1.a.x && all(!(!(!global0[_wgslsmith_index_u32(u_input.b, 28u)])));
    let var_2 = Struct_2(global1.a, Struct_1(u_input.a, ~(~vec3<u32>(global1.d.b.x, global1.b.b.x, global1.d.b.x))), ~(vec2<i32>(-2147483647i, -u_input.a) & ~vec2<i32>(u_input.a, u_input.a)), Struct_1(-1i, global1.d.b));
    let var_3 = vec3<f32>(arg_1, 952f, _wgslsmith_div_f32(var_0.x, 1762f));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(!vec4<bool>(global1.a.x, var_1, true, var_1), var_2.d, _wgslsmith_add_vec2_i32(var_2.c, vec2<i32>(u_input.a, var_2.d.a)), global1.d))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, arg_1, arg_0.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, -199f, arg_1) * vec4<f32>(arg_0.x, arg_0.x, 898f, -746f)))))));
    return var_2;
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = ~arg_0;
    var var_1 = Struct_2(!vec4<bool>(all(select(vec2<bool>(global1.a.x, false), global1.a.zz, global1.a.yx)), !global1.a.x, all(global1.a.yx), false), global1.d, ~(~global1.c), Struct_1(0i, vec3<u32>(~4294967295u, _wgslsmith_mult_u32(52625u, ~u_input.b), 1u)));
    let var_2 = vec2<bool>(global1.a.x, true);
    let var_3 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1112f, -1484f)), vec3<f32>(2158f, -1511f, 1092f)))), -785f);
    let var_4 = func_2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(vec4<bool>(true, var_3.a.x, global1.a.x, var_1.a.x), Struct_1(global1.c.x, vec3<u32>(4294967295u, var_3.b.b.x, 62156u)), vec2<i32>(22654i, u_input.a), global1.d))).x + -970f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -257f) - _wgslsmith_f_op_f32(select(-247f, 365f, true))), 582f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(524f)), 1557f) - _wgslsmith_f_op_f32(463f * _wgslsmith_div_f32(545f, _wgslsmith_f_op_vec4_f32(func_3(var_3)).x)))).d.a;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~4294967295u;
    let var_1 = global1.b;
    let var_2 = vec3<bool>(true, true, 16339i == var_1.a);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-134f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1693f * -148f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1036f, -1000f))))), -102f);
    var var_4 = Struct_2(vec4<bool>(true, global1.a.x, true, 1u <= u_input.b), Struct_1(1i, select(vec3<u32>(4704u, global1.d.b.x, 0u) << (~global1.b.b % vec3<u32>(32u)), global1.b.b, vec3<bool>(true, func_1(var_1.a), all(var_2)))), ~(~(-vec2<i32>(2147483647i, -1i))), global1.b);
    let var_5 = global1.d.b.x;
    var_4 = Struct_2(!(!func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, var_3.x, 474f)), var_3.x).a), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-428f, var_3.x, false)), _wgslsmith_f_op_f32(step(1191f, var_3.x)), _wgslsmith_f_op_f32(-var_3.x))), var_3.x).b, var_4.c, Struct_1(u_input.a, select(global1.b.b, vec3<u32>(~var_4.d.b.x, countOneBits(1u), 18160u), vec3<bool>(global1.a.x, var_3.x != -2129f, global1.a.x))));
    var var_6 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(vec4<bool>(all(vec3<bool>(global1.a.x, true, global1.a.x)), true, !var_2.x, var_2.x == global1.a.x), global1.b, -(global1.c >> (vec2<u32>(1u, var_4.b.b.x) % vec2<u32>(32u))), func_2(vec3<f32>(var_3.x, var_3.x, 939f), -658f).b)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_4.d.b.x, select(u_input.b, 22917u, true) >> (4294967295u % 32u), _wgslsmith_sub_u32(var_4.d.b.x, _wgslsmith_div_u32(var_4.b.b.x, global1.d.b.x))) << (min(~select(vec3<u32>(4294967295u, 22135u, var_1.b.x), vec3<u32>(1u, 1u, 8306u), var_2), firstTrailingBit(~vec3<u32>(var_4.d.b.x, 4294967295u, var_1.b.x))) % vec3<u32>(32u)));
}

