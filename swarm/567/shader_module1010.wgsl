struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 28> = array<vec4<bool>, 28>(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true));

var<private> global1: array<vec2<bool>, 6>;

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec2<bool>(false, true), false), Struct_1(vec2<bool>(false, false), true), Struct_1(vec2<bool>(false, true), true), Struct_1(vec2<bool>(false, true), false), Struct_1(vec2<bool>(true, true), false), Struct_1(vec2<bool>(true, false), false), Struct_1(vec2<bool>(true, true), true), Struct_1(vec2<bool>(true, true), false));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> f32 {
    var var_0 = arg_1.b.e;
    let var_1 = _wgslsmith_add_u32(arg_0, _wgslsmith_div_u32(reverseBits(~arg_0) | abs(4294967295u), _wgslsmith_add_u32(abs(~arg_0), _wgslsmith_div_u32(4294967295u, 4294967295u) | min(17907u, arg_0))));
    let var_2 = 1u;
    let var_3 = arg_1;
    let var_4 = var_3.b.b;
    return _wgslsmith_f_op_f32(var_3.c * _wgslsmith_f_op_f32(671f + _wgslsmith_f_op_f32(trunc(266f))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1828f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1277f, 409f))), _wgslsmith_f_op_f32(func_3(countOneBits(1u), Struct_3(global2[_wgslsmith_index_u32(74222u, 8u)], Struct_2(vec3<bool>(true, true, true), Struct_1(vec2<bool>(false, true), false), vec2<i32>(u_input.a.x, 15592i), global2[_wgslsmith_index_u32(0u, 8u)], vec4<i32>(u_input.a.x, -1i, 70389i, -1i)), 1036f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(751f, 240f))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(166f, 734f), _wgslsmith_f_op_f32(sign(-503f)), _wgslsmith_f_op_f32(f32(-1f) * -1331f), -1531f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-694f, -100f, -2248f, -1816f)))))));
    var var_1 = ~vec2<u32>(_wgslsmith_div_u32(~(~4294967295u), 1u), _wgslsmith_div_u32(1u, 4294967295u));
    global1 = array<vec2<bool>, 6>();
    let var_2 = Struct_2(vec3<bool>(any(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(~52211u, 28u)])), !(!all(vec2<bool>(true, false))), true), Struct_1(global1[_wgslsmith_index_u32(reverseBits(~(~1u)), 6u)], any(vec3<bool>(true, true, true))), vec2<i32>(max(-44407i, -1i), 1i), global2[_wgslsmith_index_u32(~min(var_1.x, _wgslsmith_sub_u32(var_1.x, 1u)) & 8111u, 8u)], abs(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.a.x, 18470i, -12060i), reverseBits(abs(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x))))));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1641f * -743f), _wgslsmith_div_f32(-1070f, _wgslsmith_f_op_f32(f32(-1f) * -2195f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))), -1652f) - vec4<f32>(466f, _wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) - _wgslsmith_f_op_f32(f32(-1f) * -768f)) + 1065f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(var_0.x + var_0.x)))));
    return var_2.b;
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> Struct_3 {
    var var_0 = min(vec3<u32>(~40249u, _wgslsmith_sub_u32(~7351u, 61688u), ~(43467u << (1u % 32u))) ^ _wgslsmith_sub_vec3_u32(~(~vec3<u32>(26519u, 11363u, 78425u)), vec3<u32>(firstLeadingBit(4294967295u), 106234u, _wgslsmith_clamp_u32(0u, 35300u, 4294967295u))), _wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, 1u, 1u)) | firstTrailingBit(~vec3<u32>(27996u, 0u, 91917u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1220f, -1124f, 1f)));
    let var_2 = _wgslsmith_mod_i32(firstTrailingBit(arg_0.e.x), ~min(arg_1, -5066i) >> (~var_0.x % 32u)) <= _wgslsmith_mult_i32(arg_1, u_input.a.x << (43503u % 32u));
    let var_3 = arg_0;
    let var_4 = func_2();
    return Struct_3(func_2(), var_3, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.x, var_1.x, true)) + _wgslsmith_f_op_f32(-170f - var_1.x))))));
}

fn func_1() -> Struct_3 {
    let var_0 = func_4(Struct_2(select(vec3<bool>(any(vec3<bool>(true, true, false)), true, true), vec3<bool>(1i >= u_input.a.x, true, false), vec3<bool>(true, true, true)), func_2(), -(~vec2<i32>(u_input.a.x, 6391i)), Struct_1(!func_2().a, true), vec4<i32>(-4867i, ~(u_input.a.x ^ u_input.a.x), -1i, u_input.a.x)), 29981i);
    let var_1 = Struct_2(var_0.b.a, func_2(), abs(_wgslsmith_add_vec2_i32((vec2<i32>(u_input.a.x, u_input.a.x) | var_0.b.c) >> (~vec2<u32>(24377u, 4294967295u) % vec2<u32>(32u)), var_0.b.c)), func_4(func_4(func_4(Struct_2(vec3<bool>(var_0.b.a.x, var_0.a.b, false), Struct_1(vec2<bool>(false, true), false), vec2<i32>(u_input.a.x, -93628i), Struct_1(vec2<bool>(false, false), false), vec4<i32>(var_0.b.e.x, var_0.b.c.x, -30361i, u_input.a.x)), -1i).b, ~(-u_input.a.x)).b, ~1i).a, ~firstTrailingBit(var_0.b.e));
    global2 = array<Struct_1, 8>();
    var var_2 = select(select(86562u, 1u, var_1.a.x), select(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(17524u, 71304u, 5671u, 69601u)), ~vec4<u32>(0u, 0u, 29550u, 25561u)) ^ 1u, countOneBits(2668u << (1u % 32u)), var_0.a.b), true);
    var var_3 = ~(~vec4<u32>(~(~13428u), 10171u, reverseBits(1u), select(4294967295u, min(0u, 38343u), !var_1.b.a.x)));
    return var_0;
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_2) -> u32 {
    global0 = array<vec4<bool>, 28>();
    var var_0 = arg_3.d.b;
    global0 = array<vec4<bool>, 28>();
    let var_1 = arg_3.c.x;
    var_0 = func_4(Struct_2(arg_3.a, func_2(), countOneBits(u_input.a), func_4(arg_3, -35709i).a, min(~arg_3.e, vec4<i32>(1i, arg_0.b.e.x | var_1, -24478i, arg_0.b.c.x))), _wgslsmith_dot_vec2_i32(vec2<i32>(39960i, ~(i32(-1i) * -2147483647i)), _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(-arg_3.e.xz, vec2<i32>(arg_0.b.c.x, 2147483647i)), _wgslsmith_add_vec2_i32(~arg_3.e.zz, arg_0.b.c)))).b.d.b;
    return select(58181u, firstTrailingBit(1u) << (abs(~reverseBits(24989u)) % 32u), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-418f, -869f), vec2<f32>(-1709f, -752f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-750f, 353f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-141f, 667f))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-118f, -715f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-823f, 1631f), vec2<f32>(902f, -222f))))), select(vec2<bool>(true, false), select(select(global1[_wgslsmith_index_u32(4294967295u, 6u)], vec2<bool>(false, false), false), vec2<bool>(false, false), global1[_wgslsmith_index_u32(1u, 6u)]), true)))));
    let var_2 = vec3<i32>(u_input.a.x >> (var_0 % 32u), u_input.a.x, abs(u_input.a.x));
    let var_3 = vec3<u32>(~30684u, 1u, var_0);
    let var_4 = !vec3<bool>(1287f <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1222f, var_1.x) + var_1.x), all(vec4<bool>(true, any(vec3<bool>(true, false, false)), true, 4294967295u >= var_3.x)), var_0 < ~var_3.x);
    var var_5 = Struct_2(vec3<bool>(var_4.x, all(var_4), all(var_4)), Struct_1(global1[_wgslsmith_index_u32(func_5(func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1547f + var_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 1034f, var_1.x, var_1.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(874f, -361f, 1879f, 716f))), Struct_2(func_4(Struct_2(var_4, Struct_1(var_4.yy, false), vec2<i32>(var_2.x, -92413i), Struct_1(var_4.zx, var_4.x), vec4<i32>(u_input.a.x, var_2.x, var_2.x, -1i)), 15758i).b.a, func_2(), vec2<i32>(-1i, var_2.x), global2[_wgslsmith_index_u32(abs(0u), 8u)], vec4<i32>(-15525i, -2147483647i, u_input.a.x, 34164i))), 6u)], firstLeadingBit(u_input.a.x) > _wgslsmith_div_i32(-var_2.x, -2147483647i)), -(~_wgslsmith_sub_vec2_i32(var_2.xy << (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u)), vec2<i32>(-39989i, var_2.x))), Struct_1(vec2<bool>(any(vec4<bool>(false, var_4.x, var_4.x, var_4.x)) & var_4.x, -1i != func_1().b.c.x), true), _wgslsmith_mult_vec4_i32(vec4<i32>(-32747i, u_input.a.x, u_input.a.x << (abs(70922u) % 32u), _wgslsmith_div_i32(var_2.x, 1i)), reverseBits(firstLeadingBit(vec4<i32>(u_input.a.x, var_2.x, -2147483647i, 2147483647i)))));
    var var_6 = var_5.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(-var_2.yx)));
}

