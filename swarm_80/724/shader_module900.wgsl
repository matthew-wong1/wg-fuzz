struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(-1000f, 48706i), Struct_2(-1639f, -1i), Struct_2(-786f, -1i), Struct_2(108f, i32(-2147483648)), Struct_2(1216f, 1i), Struct_2(-1555f, i32(-2147483648)), Struct_2(166f, -1i), Struct_2(-1276f, 28688i), Struct_2(-852f, 2147483647i), Struct_2(-1118f, 71074i), Struct_2(937f, 1i), Struct_2(-719f, 20059i), Struct_2(-111f, -19880i), Struct_2(-984f, 0i), Struct_2(473f, 2147483647i), Struct_2(-837f, 47480i), Struct_2(1895f, i32(-2147483648)), Struct_2(1334f, 2147483647i), Struct_2(-1280f, 0i), Struct_2(888f, 1i));

var<private> global1: Struct_1 = Struct_1(-30499i, vec4<bool>(true, true, true, true));

var<private> global2: bool = false;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: Struct_1) -> bool {
    var var_0 = arg_2.b.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1772f, -595f, arg_0.x)))))))));
    global2 = !(!arg_2.b.x);
    var var_2 = global1.b.wwy;
    let var_3 = select(select(vec4<bool>(global1.b.x, true, all(global1.b), any(vec4<bool>(arg_2.b.x, false, global1.b.x, true))), !(!(!vec4<bool>(arg_2.b.x, global1.b.x, global1.b.x, arg_2.b.x))), !var_2.x | true), vec4<bool>(global1.b.x, !(!all(vec2<bool>(true, true))), (!var_2.x && all(vec3<bool>(true, false, var_2.x))) != (~u_input.b.x != _wgslsmith_div_u32(u_input.d.x, 30574u)), any(global1.b.wxy)), global1.b);
    return arg_0.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-arg_0.x))));
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_3(arg_2, u_input.b.xyw, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1140f, -681f, 2696f)) + vec3<f32>(_wgslsmith_f_op_f32(sign(675f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -766f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(366f, _wgslsmith_f_op_f32(select(-207f, -555f, global1.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -308f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(277f, -662f, -2145f)))))), Struct_1(countOneBits(arg_2.a), vec4<bool>(any(vec2<bool>(arg_2.b.x, arg_2.b.x)), arg_2.b.x, false, true)));
    let var_1 = true && (true | !(_wgslsmith_f_op_f32(-328f * var_0.c.x) >= 1014f));
    let var_2 = Struct_2(496f, _wgslsmith_mult_i32(global1.a, ~(-(arg_2.a | global1.a))));
    var var_3 = vec4<bool>(!(!(_wgslsmith_sub_u32(arg_0, 4294967295u) == (u_input.d.x & var_0.b.x))), arg_2.b.x || select(var_0.a.b.x, true, func_3(vec2<f32>(var_2.a, 1020f), abs(u_input.c), Struct_1(12709i, var_0.a.b))), all(global1.b.zx), true);
    var_3 = arg_2.b;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2400f))), _wgslsmith_f_op_f32(f32(-1f) * -818f)), _wgslsmith_f_op_f32(-1391f - _wgslsmith_f_op_f32(abs(var_0.c.x)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.a - -747f), -964f)), _wgslsmith_f_op_f32(-var_2.a), true)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<bool>) -> vec2<u32> {
    global0 = array<Struct_2, 20>();
    var var_0 = arg_1;
    let var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(arg_1.b.x, vec3<u32>(1u, var_0.b.x, u_input.b.x), var_1.a)), _wgslsmith_f_op_f32(-arg_1.c.x)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(208f, _wgslsmith_f_op_f32(1463f - var_0.c.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_1.c.yz, vec2<f32>(var_1.c.x, var_0.c.x)))) - var_1.c.xx)));
    let var_3 = ~(u_input.a & min(_wgslsmith_div_i32(_wgslsmith_sub_i32(var_1.a.a, 1i), 31199i), 0i));
    return _wgslsmith_add_vec2_u32(vec2<u32>(1u, ~min(7862u, 93981u) >> (~_wgslsmith_mod_u32(4294967295u, var_1.b.x) % 32u)), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(arg_1.b.zz, vec2<u32>(~0u, ~var_1.b.x)), _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(var_0.b.x, arg_1.b.x), reverseBits(arg_1.b.xz)), select(~vec2<u32>(arg_1.b.x, u_input.b.x), min(var_0.b.yz, vec2<u32>(6678u, 1u)), select(global1.b.x, false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_u32(max(u_input.d.xy << (~u_input.d.xy % vec2<u32>(32u)), ~_wgslsmith_mult_vec2_u32(select(vec2<u32>(42212u, 24351u), u_input.b.zw, vec2<bool>(global1.b.x, global1.b.x)), func_1(Struct_1(global1.a, global1.b), Struct_3(Struct_1(global1.a, vec4<bool>(global1.b.x, true, true, global1.b.x)), u_input.d, vec3<f32>(260f, -1440f, 844f), Struct_1(global1.a, vec4<bool>(true, global1.b.x, global1.b.x, global1.b.x))), global1.b.yx))), u_input.b.wz);
    let var_1 = u_input.d;
    var var_2 = vec3<bool>(!(!all(select(vec3<bool>(global1.b.x, true, false), global1.b.ywy, false))), true, false);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(890f)), -127f);
    var var_4 = all(vec3<bool>(global1.b.x, all(select(global1.b.zz, vec2<bool>(false, var_2.x), vec2<bool>(false, true))), global1.b.x));
    let var_5 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_3 - 889f), var_3, -1044f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(142f, 1799f))))), vec4<f32>(_wgslsmith_f_op_f32(floor(-529f)), _wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_3))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1129f)))))), select(select(vec4<bool>(var_2.x, false, true, global1.b.x | global1.b.x), global1.b, any(!vec4<bool>(false, false, global1.b.x, true))), select(vec4<bool>(false && var_2.x, !global1.b.x, true && var_2.x, var_2.x), vec4<bool>(!global1.b.x, true, 1276f != var_3, true), var_2.x), 29317i == ~(-1i & global1.a))));
    global1 = Struct_1(-2147483647i, global1.b);
    let var_6 = ~firstLeadingBit(u_input.c.x) & -1i;
    let var_7 = 111485u;
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(var_7 >> (var_0 % 32u), _wgslsmith_dot_vec2_u32(u_input.d.zx, vec2<u32>(35498u, 12690u)), firstLeadingBit(var_0), var_7)), _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, u_input.c.x, 2147483647i) << (vec3<u32>(1u, 24887u, var_0) % vec3<u32>(32u)), ~(-vec3<i32>(var_6, global1.a, var_6)), vec3<i32>(~(-2147483647i), 2147483647i, -54485i)), -(vec3<i32>(global1.a, 0i, 0i) | reverseBits(vec3<i32>(var_6, var_6, global1.a)))));
}

