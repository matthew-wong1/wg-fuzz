struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: bool,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: Struct_2;

var<private> global2: Struct_2;

var<private> global3: array<bool, 16> = array<bool, 16>(false, false, true, false, true, false, true, false, true, false, true, true, true, true, true, true);

var<private> global4: array<u32, 1> = array<u32, 1>(1u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_2) -> u32 {
    global2 = Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2019f, global1.a.x)) + _wgslsmith_f_op_f32(f32(-1f) * -430f)), _wgslsmith_f_op_f32(-global2.a.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1000f, global2.a.x), _wgslsmith_f_op_f32(floor(global2.a.x))) - global2.a)), global1.b, !(!global3[_wgslsmith_index_u32(~12500u, 16u)]) & !(global1.d.x <= (-1i >> (global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 1u)], 1u)], 1u)] % 32u))), abs(global1.d));
    global4 = array<u32, 1>();
    let var_0 = global3[_wgslsmith_index_u32(arg_1, 16u)];
    return _wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(48923u, global4[_wgslsmith_index_u32(14952u >> (1u % 32u), 1u)]), global4[_wgslsmith_index_u32(~16229u, 1u)]), _wgslsmith_mod_u32(~abs(u_input.c.x), arg_1)) & 24122u;
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, arg_0.x, -437f, -836f), vec4<f32>(global1.a.x, global2.a.x, global2.a.x, 1000f))))));
    global2 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1378f)) - arg_1.a.x)), -1000f), global2.b, firstTrailingBit(_wgslsmith_mod_u32(global4[_wgslsmith_index_u32(4294967295u, 1u)] & global4[_wgslsmith_index_u32(u_input.a, 1u)], min(global4[_wgslsmith_index_u32(u_input.a, 1u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 1u)], 1u)]))) != global4[_wgslsmith_index_u32(abs(~countOneBits(1u)), 1u)], _wgslsmith_clamp_vec3_i32(global2.d, -global2.d, abs(vec3<i32>(-1i) * -arg_1.d)));
    let var_1 = Struct_1((-global1.d >> (vec3<u32>(9276u, global4[_wgslsmith_index_u32(u_input.a & 18986u, 1u)], firstTrailingBit(u_input.c.x)) % vec3<u32>(32u))) | countOneBits(abs(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.d.x, 17660i, u_input.b), vec3<i32>(2147483647i, 2147483647i, global1.d.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(965f, -2295f)), arg_1.a.x)))), -global1.d);
    global2 = arg_1;
    var var_2 = max(min(~_wgslsmith_clamp_vec3_u32(vec3<u32>(19881u, global4[_wgslsmith_index_u32(2949u, 1u)], 12063u), vec3<u32>(63241u, u_input.c.x, global4[_wgslsmith_index_u32(31907u, 1u)]), vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(44376u, 1u)], 1u)], u_input.a, u_input.c.x)), u_input.c.zww), vec3<u32>(global4[_wgslsmith_index_u32(firstLeadingBit(firstLeadingBit(65739u)), 1u)] >> (_wgslsmith_mod_u32(u_input.c.x, 87255u) % 32u), ~u_input.c.x, 19667u));
    return min(~max(-36888i, ~global2.d.x), global2.d.x);
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = ~select(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, 43035i, 6i) >> (u_input.c % vec4<u32>(32u)), vec4<i32>(-30970i, -24769i, global2.d.x, -18917i)), u_input.b, 70942u >= func_2(global1.b, u_input.a, arg_1)) >= -global2.d.x;
    let var_1 = global1.b;
    let var_2 = -639f;
    return Struct_1(-vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(arg_1.d.x, arg_0), _wgslsmith_add_i32(global2.d.x, u_input.b)), func_3(global1.a, Struct_2(global1.a, vec3<bool>(var_0, true, global3[_wgslsmith_index_u32(u_input.a, 16u)]), var_0, global1.d)) << (_wgslsmith_mult_u32(17157u, u_input.c.x) % 32u), global1.d.x), _wgslsmith_f_op_f32(arg_1.a.x - var_2), global2.d ^ vec3<i32>(5901i, _wgslsmith_div_i32(-1i, arg_1.d.x), u_input.b ^ reverseBits(arg_0)));
}

fn func_4(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = !global1.c;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, arg_0.b, arg_0.b, 1635f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, -1154f, global1.a.x, arg_0.b) + vec4<f32>(746f, 247f, global1.a.x, global1.a.x))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1614f, _wgslsmith_f_op_f32(step(960f, arg_0.b)), _wgslsmith_f_op_f32(-742f - 201f), _wgslsmith_f_op_f32(max(global1.a.x, -989f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, 502f, arg_0.b, global1.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1504f, -464f, -1031f, global2.a.x)))), select(vec4<bool>(false, true, false, global3[_wgslsmith_index_u32(u_input.a, 16u)]), vec4<bool>(global3[_wgslsmith_index_u32(5516u, 16u)], var_0, global1.b.x, global2.c), !vec4<bool>(false, true, true, global2.c))))));
    var var_2 = func_1(arg_0.c.x, Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(round(global1.a.x)))), vec3<bool>(true, true, true), -1103f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1486f, -402f)) - global1.a.x), reverseBits(_wgslsmith_sub_vec3_i32(global2.d, vec3<i32>(0i, u_input.b, global1.d.x)) >> (vec3<u32>(1u, global4[_wgslsmith_index_u32(1u, 1u)], 55573u) % vec3<u32>(32u)))));
    global0 = -2147483647i >> (_wgslsmith_add_u32(u_input.c.x, 1u) % 32u);
    var var_3 = _wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1972f - -1000f)), global1.a.x, var_0)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(527f - _wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_2.b, global1.a.x, global2.b.x)), arg_0.b)))));
    return abs(vec3<i32>(arg_0.a.x, 31056i, -28013i) ^ select(vec3<i32>(-25059i, ~var_2.a.x, -42598i), -max(arg_0.c, global2.d), global2.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~(i32(-1i) * -global2.d.x)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global4[_wgslsmith_index_u32(_wgslsmith_add_u32(reverseBits(global4[_wgslsmith_index_u32(91157u, 1u)]), _wgslsmith_mod_u32(4294967295u, u_input.a)), 1u)], 21536u), ~(~(~vec3<u32>(global4[_wgslsmith_index_u32(90590u, 1u)], 4294967295u, 4294967295u)))) % 32u);
    var var_0 = u_input.c.xz;
    var var_1 = Struct_1(-(~vec3<i32>(_wgslsmith_add_i32(global1.d.x, -153i), -52826i, -u_input.b)), global2.a.x, _wgslsmith_add_vec3_i32(-vec3<i32>(-32506i, u_input.b, 0i) >> (reverseBits(vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)), -(~vec3<i32>(u_input.b, global1.d.x, -2147483647i)) & abs(-vec3<i32>(0i, global2.d.x, 18880i))));
    global0 = 49983i;
    var var_2 = Struct_2(global2.a, select(vec3<bool>(true | global1.b.x, !global3[_wgslsmith_index_u32(4294967295u, 16u)], true), vec3<bool>(true, global1.b.x || all(vec4<bool>(global2.b.x, global1.c, false, false)), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 90358u), 16u)]), global1.b), !global1.c, (~max(vec3<i32>(-9529i, 6322i, -2144i), vec3<i32>(global1.d.x, u_input.b, -1i)) | _wgslsmith_div_vec3_i32(select(global1.d, vec3<i32>(-22304i, 36642i, 2147483647i), global3[_wgslsmith_index_u32(26437u, 16u)]), global2.d)) & func_4(func_1(min(-11290i, -64922i), Struct_2(vec2<f32>(global1.a.x, var_1.b), vec3<bool>(global3[_wgslsmith_index_u32(0u, 16u)], true, global1.c), global2.c, global2.d))));
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_2.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(218f, 477f) * global1.a), select(vec2<bool>(true, true), global1.b.xz, global1.b.xy))))), global1.b, global1.c, select(vec3<i32>(global1.d.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 8145i, var_2.d.x, -1i), vec4<i32>(u_input.b, global1.d.x, u_input.b, global2.d.x)), ~(~global2.d.x)), abs(global1.d), global2.b));
    var var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_3.a * var_2.a))), select(!select(vec3<bool>(global2.b.x, global3[_wgslsmith_index_u32(u_input.c.x, 16u)], var_2.c), !global2.b, var_2.c), select(var_3.b, vec3<bool>(global1.c, true, any(global1.b)), all(!var_3.b.zx)), !(select(false, true, global1.c) || !global1.b.x)), false, _wgslsmith_add_vec3_i32(~(-vec3<i32>(2147483647i, 2031i, var_2.d.x)), ~var_2.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a.x + -661f) + _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(1668f * -1000f))))), 2147483647i, _wgslsmith_mod_u32(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(18057u, 4294967295u, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(max(u_input.c.xwx, vec3<u32>(50522u, u_input.a, var_0.x)), u_input.c.yzy), 1u)]), 1u)], reverseBits(min(reverseBits(4294967295u), var_0.x))), 1001f, ~(u_input.c | ~max(u_input.c, u_input.c)));
}

