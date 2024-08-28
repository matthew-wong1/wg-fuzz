struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec4<bool>,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec3<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 7> = array<vec4<i32>, 7>(vec4<i32>(-33237i, 2147483647i, -5667i, 2147483647i), vec4<i32>(1i, -40763i, -4045i, 2147483647i), vec4<i32>(57169i, 1i, 1i, -1i), vec4<i32>(20975i, -1i, -22197i, -2309i), vec4<i32>(-23886i, 80450i, -18366i, 40074i), vec4<i32>(i32(-2147483648), 0i, 1i, 52163i), vec4<i32>(74305i, i32(-2147483648), 48929i, 1i));

var<private> global1: vec4<i32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<i32>) -> vec4<i32> {
    var var_0 = all(select(vec4<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true)), false, 1u >= ~u_input.a.x, any(vec2<bool>(false, false)) | true), vec4<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true))), true, true, any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)))), !select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, false, true, true))));
    var_0 = true;
    let var_1 = Struct_4(countOneBits(abs(~(vec2<u32>(u_input.b, 56776u) >> (u_input.a.yz % vec2<u32>(32u))))), Struct_2(_wgslsmith_add_i32(-_wgslsmith_mult_i32(arg_0.x, global1.x), (0i >> (1u % 32u)) & arg_0.x), all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), -34818i, Struct_1(~_wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, vec4<u32>(u_input.b, 55731u, 26017u, 4294967295u)), global1.x, vec4<bool>(true, true, true, true), (vec2<u32>(u_input.b, u_input.b) | vec2<u32>(u_input.b, u_input.a.x)) << (u_input.a.xx % vec2<u32>(32u)), true)), ~arg_0.xyy);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1512f)))))), -1799f);
    let var_3 = Struct_1(abs(_wgslsmith_mult_vec4_u32(reverseBits(select(u_input.a, vec4<u32>(u_input.b, u_input.a.x, 1u, u_input.a.x), true)), var_1.b.d.a)), abs(countOneBits(firstLeadingBit(global1.x)) << (~_wgslsmith_clamp_u32(0u, u_input.a.x, var_1.a.x) % 32u)), !var_1.b.d.c, _wgslsmith_clamp_vec2_u32(~u_input.a.zy, select(var_1.a, vec2<u32>(31486u, 23792u) & var_1.a, any(vec4<bool>(true, var_1.b.b, var_1.b.d.c.x, true))), u_input.a.zw) ^ _wgslsmith_add_vec2_u32(vec2<u32>(reverseBits(var_1.b.d.a.x), 57177u), u_input.a.yx), true);
    return select(vec4<i32>(arg_0.x, abs(-1i), -arg_0.x, global1.x), _wgslsmith_mult_vec4_i32(arg_0, (vec4<i32>(74590i, 0i, -18934i, arg_0.x) & vec4<i32>(-27777i, 1i, arg_0.x, -17759i)) << (abs(u_input.a) % vec4<u32>(32u))), vec4<bool>(false, var_3.c.x, any(select(vec3<bool>(false, false, false), var_1.b.d.c.zwx, var_3.c.yxy)), true)) | (vec4<i32>(-1i) * -vec4<i32>(~(-87262i), abs(var_3.b), var_3.b, var_1.b.d.b << (u_input.b % 32u)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>) -> u32 {
    var var_0 = ~arg_0.b & 2147483647i;
    global1 = func_3(select(~firstLeadingBit(global0[_wgslsmith_index_u32(arg_0.d.x >> (arg_0.a.x % 32u), 7u)]), _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(0i, 38116i, -2147483647i, arg_0.b)) & global0[_wgslsmith_index_u32(arg_0.a.x, 7u)], ~(global0[_wgslsmith_index_u32(39078u, 7u)] | global0[_wgslsmith_index_u32(0u, 7u)])), arg_0.c));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1475f, -474f) + vec2<f32>(-705f, -656f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 163f)))))), vec2<f32>(-2177f, _wgslsmith_div_f32(-495f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -992f))))), arg_0.e));
    let var_2 = Struct_3(true, Struct_1(abs(vec4<u32>(arg_0.d.x, 4294967295u, 1u >> (arg_0.d.x % 32u), max(0u, arg_0.d.x))), _wgslsmith_dot_vec2_i32(global1.wz, _wgslsmith_mod_vec2_i32(arg_1, vec2<i32>(-2147483647i, global1.x))), vec4<bool>(false, arg_0.e && any(arg_0.c), arg_0.e, arg_0.c.x), arg_0.a.wz, false == arg_0.e), var_1.x, 4294967295u);
    let var_3 = Struct_5(Struct_2(arg_1.x, var_2.a, abs(select(countOneBits(global1.x), ~(-21924i), !var_2.a)), Struct_1(~(u_input.a >> (vec4<u32>(u_input.b, arg_0.a.x, 1u, arg_0.d.x) % vec4<u32>(32u))), 25892i, arg_0.c, ~vec2<u32>(1u, u_input.a.x), var_2.a)), select(arg_0.a, vec4<u32>(~(11908u >> (0u % 32u)), max(~14804u, ~0u), ~arg_0.a.x, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(arg_0.d, vec2<u32>(u_input.b, 75883u)), firstTrailingBit(var_2.b.d))), !select(true, true, !var_2.a)), abs(global1.xz));
    return u_input.b;
}

fn func_4(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: vec3<u32>) -> bool {
    let var_0 = Struct_5(arg_0.b, ~vec4<u32>(_wgslsmith_dot_vec3_u32(~arg_2, reverseBits(u_input.a.zzw)), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(42279u, arg_2.x, arg_2.x)), max(u_input.a.yyy, arg_2)), 16907u, arg_1.x), ~_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(62992u, 7u)]), _wgslsmith_mod_i32(global1.x, global1.x)), vec2<i32>(_wgslsmith_add_i32(arg_0.b.a, global1.x), -1i)));
    global1 = global0[_wgslsmith_index_u32(~(~12727u), 7u)] | _wgslsmith_add_vec4_i32(-vec4<i32>(~(-32867i), global1.x, arg_0.c.x, global1.x >> (0u % 32u)), global0[_wgslsmith_index_u32(~4294967295u, 7u)]);
    global0 = array<vec4<i32>, 7>();
    var var_1 = Struct_1(~reverseBits(vec4<u32>(arg_0.b.d.a.x, 4294967295u, arg_2.x, u_input.b) ^ (var_0.b & var_0.a.d.a)), _wgslsmith_dot_vec2_i32(var_0.c, ~(-(~global1.yw))), !arg_0.b.d.c, ~_wgslsmith_div_vec2_u32(~countOneBits(arg_2.zx), var_0.b.zz), arg_0.b.b && !(!var_0.a.b));
    let var_2 = 4294967295u;
    return true;
}

fn func_1(arg_0: bool, arg_1: Struct_5, arg_2: Struct_5) -> vec4<bool> {
    var var_0 = Struct_3(func_4(Struct_4(u_input.a.zy, Struct_2(0i, arg_1.a.b, max(-1i, -14145i), Struct_1(arg_1.b, -2147483647i, vec4<bool>(arg_2.a.b, false, arg_0, true), vec2<u32>(304u, u_input.b), arg_2.a.d.e)), global1.zxx), vec3<u32>(firstLeadingBit(u_input.b >> (u_input.b % 32u)), countOneBits(func_2(Struct_1(vec4<u32>(arg_2.a.d.d.x, u_input.b, 44649u, 1u), arg_1.a.d.b, arg_2.a.d.c, vec2<u32>(2554u, arg_1.a.d.d.x), true), arg_1.c)), ~(~69515u)), u_input.a.xww), Struct_1(arg_2.b, _wgslsmith_dot_vec3_i32(~global1.yww, countOneBits(firstTrailingBit(global1.xwx))), select(arg_2.a.d.c, arg_2.a.d.c, !vec4<bool>(arg_0, false, arg_1.a.d.e, false)), ~arg_2.a.d.a.xx, !(any(arg_2.a.d.c.zwz) && true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1026f) * _wgslsmith_f_op_f32(round(-2206f))) * _wgslsmith_f_op_f32(trunc(-1426f)))), 0u);
    global0 = array<vec4<i32>, 7>();
    return var_0.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!select(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true)), select(vec4<bool>(false, false, false, false), func_1(false, Struct_5(Struct_2(global1.x, false, 2147483647i, Struct_1(vec4<u32>(u_input.a.x, 1u, 6642u, 58124u), global1.x, vec4<bool>(true, true, true, false), vec2<u32>(4294967295u, 85142u), false)), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), global1.wz), Struct_5(Struct_2(0i, false, -28625i, Struct_1(vec4<u32>(23345u, 8701u, 4294967295u, 0u), 1i, vec4<bool>(false, true, true, false), u_input.a.yw, true)), vec4<u32>(5195u, 54988u, 4294967295u, u_input.b), vec2<i32>(1i, global1.x))), true), vec4<bool>(true, true, true, true)));
    var var_1 = Struct_4(~u_input.a.xx, Struct_2(-2147483647i | global1.x, any(select(vec2<bool>(true, true), func_1(true, Struct_5(Struct_2(global1.x, true, global1.x, Struct_1(u_input.a, global1.x, vec4<bool>(true, true, false, true), u_input.a.zw, false)), vec4<u32>(u_input.a.x, 4542u, 4294967295u, u_input.b), vec2<i32>(1i, global1.x)), Struct_5(Struct_2(20668i, true, 2147483647i, Struct_1(u_input.a, 0i, vec4<bool>(true, false, false, false), u_input.a.zy, true)), u_input.a, vec2<i32>(global1.x, -32520i))).xw, false)), _wgslsmith_div_i32(global1.x, -1i), Struct_1(~u_input.a, global1.x, vec4<bool>(true, true, true, true), ~abs(vec2<u32>(55772u, 42686u)), true)), global1.yzw << (_wgslsmith_sub_vec3_u32(u_input.a.xzz, vec3<u32>(1u, ~54904u, 4294967295u)) % vec3<u32>(32u)));
    let var_2 = Struct_2(2147483647i, any(!(!var_1.b.d.c)), 1i, var_1.b.d);
    let var_3 = _wgslsmith_mult_vec4_u32(vec4<u32>(abs(1u), ~0u, 83425u, countOneBits(u_input.a.x)) | _wgslsmith_add_vec4_u32(vec4<u32>(24248u, func_2(var_1.b.d, var_1.c.xz), 4294967295u, u_input.b), vec4<u32>(u_input.b, select(11214u, u_input.b, true), _wgslsmith_sub_u32(55016u, var_2.d.a.x), _wgslsmith_add_u32(1u, var_1.b.d.a.x))), _wgslsmith_clamp_vec4_u32(~(u_input.a << (abs(vec4<u32>(var_1.b.d.d.x, 97537u, 4294967295u, var_2.d.d.x)) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_sub_u32(select(var_1.a.x, u_input.b, true), 1u), select(~u_input.b, 4294967295u, any(vec3<bool>(var_1.b.d.e, false, false))), var_1.a.x, abs(u_input.a.x)), vec4<u32>(var_1.a.x, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(32004u, var_2.d.d.x, var_2.d.d.x), var_2.d.a.xzw), var_2.d.a.x), _wgslsmith_clamp_u32(var_1.b.d.d.x, 49577u, ~u_input.a.x), func_2(var_2.d, global1.yz))));
    var var_4 = -668f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(192f, -598f, -727f), vec3<f32>(-238f, 2176f, -2342f), var_2.d.c.zyx)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(2633f, -1893f, 139f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1931f, -1837f, -2397f))))));
}

