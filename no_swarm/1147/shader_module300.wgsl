struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<u32>,
    d: bool,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
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

var<private> global0: array<vec2<i32>, 25>;

var<private> global1: array<Struct_1, 31>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: i32, arg_1: u32) -> i32 {
    var var_0 = Struct_2(vec2<bool>(true, true), global1[_wgslsmith_index_u32(~arg_1, 31u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-207f))) - 1000f));
    global0 = array<vec2<i32>, 25>();
    var var_1 = Struct_2(!(!select(select(vec2<bool>(false, var_0.a.x), vec2<bool>(var_0.a.x, var_0.a.x), false), !var_0.a, all(vec3<bool>(var_0.a.x, false, var_0.a.x)))), var_0.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.c))))));
    let var_2 = _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(min(arg_0, _wgslsmith_mult_i32(arg_0, var_1.b.a.x)), 1i), countOneBits(vec2<i32>(0i, -2147483647i))), _wgslsmith_add_vec2_i32(~_wgslsmith_add_vec2_i32(u_input.a.yy, vec2<i32>(0i, var_1.b.a.x)), firstLeadingBit(vec2<i32>(arg_0, -17792i))) << (u_input.d.xx % vec2<u32>(32u)));
    let var_3 = select(_wgslsmith_div_vec4_i32(firstTrailingBit(_wgslsmith_mod_vec4_i32(var_1.b.a, vec4<i32>(-7651i, 16097i, var_0.b.c.x, -2147483647i))), _wgslsmith_sub_vec4_i32(-vec4<i32>(var_0.b.b, 2147483647i, -32247i, var_2.x), vec4<i32>(-2147483647i, var_0.b.b, var_1.b.b, var_2.x))), vec4<i32>(u_input.b, 1i | _wgslsmith_sub_i32(arg_0, var_1.b.a.x), ~1074i, _wgslsmith_dot_vec2_i32(var_1.b.a.yz, -var_1.b.c.zx)), select(select(vec4<bool>(true, var_1.a.x, true, var_0.a.x), !vec4<bool>(var_0.a.x, true, true, true), any(vec3<bool>(var_0.a.x, var_1.a.x, var_1.a.x))), vec4<bool>(var_0.a.x & false, !var_1.a.x, any(vec2<bool>(var_0.a.x, true)), var_0.a.x), true)) >> (_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(abs(vec4<u32>(4294967295u, var_1.b.d, var_0.b.d, arg_1)), u_input.c), vec4<u32>(var_1.b.d, _wgslsmith_clamp_u32(2407u, 56903u, ~var_0.b.d), u_input.c.x, arg_1)) % vec4<u32>(32u));
    return _wgslsmith_sub_i32(firstTrailingBit(select(u_input.b, _wgslsmith_dot_vec2_i32(var_1.b.c.yx, ~var_1.b.c.zy), all(!vec4<bool>(false, true, var_1.a.x, true)))), -_wgslsmith_clamp_i32(-17397i, _wgslsmith_sub_i32(~var_3.x, _wgslsmith_add_i32(-2147483647i, 20927i)), 1i));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>) -> f32 {
    var var_0 = Struct_2(select(select(!vec2<bool>(true, arg_0.a.x), vec2<bool>(arg_1.x < 148f, arg_0.a.x), select(vec2<bool>(true, true), select(vec2<bool>(false, false), arg_0.a, arg_0.a), arg_0.a.x)), vec2<bool>(false, !arg_0.a.x), !(_wgslsmith_f_op_f32(ceil(526f)) == 1000f)), Struct_1(vec4<i32>(func_3(~u_input.b, arg_0.b.d), arg_0.b.b, ~_wgslsmith_mult_i32(arg_0.b.c.x, 2147483647i), reverseBits(_wgslsmith_sub_i32(45800i, u_input.a.x))), -arg_0.b.a.x, _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, 67992i, 2147483647i) ^ u_input.a, arg_0.b.a.wxy), vec3<i32>(u_input.b, arg_0.b.a.x, ~u_input.a.x)), 4294967295u), _wgslsmith_f_op_f32(-arg_0.c));
    var_0 = arg_0;
    global0 = array<vec2<i32>, 25>();
    let var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(-53852i, -arg_0.b.a.x), firstTrailingBit(-vec2<i32>(func_3(var_0.b.a.x, var_0.b.d), ~u_input.b)));
    let var_2 = arg_0.b.c.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-402f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-727f)))) * -1889f)));
}

fn func_4(arg_0: bool, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = abs(u_input.a);
    var var_1 = 4294967295u;
    let var_2 = min(u_input.a.zx, vec2<i32>(-_wgslsmith_div_i32(i32(-1i) * -2147483647i, u_input.a.x), _wgslsmith_mult_i32(u_input.a.x, _wgslsmith_mod_i32(u_input.b, var_0.x))));
    let var_3 = all(select(!vec3<bool>(false, false, arg_0), !vec3<bool>(arg_0, true, true), !all(vec4<bool>(arg_0, true, arg_0, arg_0)))) | true;
    var var_4 = _wgslsmith_f_op_f32(-1199f + _wgslsmith_div_f32(1008f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.x, -2475f), arg_1.x) - _wgslsmith_f_op_f32(ceil(arg_1.x)))));
    return global1[_wgslsmith_index_u32(~1517u, 31u)];
}

fn func_1() -> Struct_3 {
    return Struct_3(func_4(true, vec4<f32>(396f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-409f, -924f)) + _wgslsmith_f_op_f32(func_2(Struct_2(vec2<bool>(false, true), Struct_1(vec4<i32>(u_input.a.x, -40172i, -1i, u_input.b), 2147483647i, u_input.a, 22557u), -2135f), vec4<f32>(-573f, -1000f, -478f, -1015f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -863f)), _wgslsmith_f_op_f32(f32(-1f) * -369f))), select(vec3<bool>(false, !all(vec4<bool>(true, false, true, true)), !any(vec4<bool>(true, false, false, false))), vec3<bool>(u_input.c.x <= _wgslsmith_sub_u32(u_input.c.x, 74475u), !all(vec3<bool>(true, false, false)), u_input.c.x != _wgslsmith_div_u32(u_input.d.x, u_input.d.x)), !vec3<bool>(all(vec4<bool>(false, true, true, true)), any(vec2<bool>(true, false)), true)), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(~firstTrailingBit(vec4<u32>(4294967295u, u_input.d.x, 33536u, 4294967295u)), vec4<u32>(~85361u, ~36273u, _wgslsmith_mod_u32(4294967295u, u_input.c.x), ~4294967295u)), u_input.c), any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true)) && true, vec2<i32>(u_input.b, u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -var_0.a.c, vec3<i32>(var_0.e.x, -2147483647i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(-var_0.e.x, u_input.a.x), u_input.a.x)));
    var var_2 = any(select(!select(vec4<bool>(false, true, true, true), vec4<bool>(var_0.d, var_0.d, var_0.d, var_0.d), select(vec4<bool>(var_0.d, var_0.d, false, true), vec4<bool>(false, true, var_0.b.x, var_0.b.x), vec4<bool>(var_0.d, var_0.d, false, false))), !vec4<bool>(true, var_0.d, false, all(vec4<bool>(false, var_0.d, var_0.b.x, false))), true));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(146f, 1238f, -832f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1921f, -691f, 904f))))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(859f, -2540f, -2169f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-468f, 272f, -2186f) + vec3<f32>(1723f, -656f, 1155f)))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1265f, -865f, 525f)))))));
    let var_4 = select(vec2<bool>(true & !all(var_0.b.yx), !(func_1().b.x & true)), var_0.b.xz, select(!(!vec2<bool>(false, var_0.b.x)), var_0.b.zy, func_1().b.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x);
}

