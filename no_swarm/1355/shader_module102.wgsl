struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: i32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 14>;

var<private> global1: vec3<bool>;

var<private> global2: array<i32, 12> = array<i32, 12>(-1i, 2147483647i, -1i, -18201i, -13858i, 17204i, i32(-2147483648), i32(-2147483648), 1i, -23009i, -1i, 10256i);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<bool>) -> vec3<u32> {
    var var_0 = vec2<i32>(global2[_wgslsmith_index_u32(arg_0.x << (~(~u_input.d.x) % 32u), 12u)] ^ -1i, ~(-(global2[_wgslsmith_index_u32(~u_input.a, 12u)] << (firstTrailingBit(u_input.d.x) % 32u))));
    return u_input.b;
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec3<f32> {
    global1 = select(vec3<bool>(global1.x, global1.x, !global1.x), !vec3<bool>(1i < global2[_wgslsmith_index_u32(1u, 12u)], any(vec3<bool>(arg_1.b, arg_1.b, global1.x)) && false, select(true, any(vec2<bool>(global1.x, global1.x)), global1.x)), any(vec3<bool>(false, false, arg_1.b)));
    global0 = array<vec3<u32>, 14>();
    global0 = array<vec3<u32>, 14>();
    global1 = vec3<bool>(true, any(vec2<bool>(true, true)), true);
    var var_0 = arg_1;
    return arg_1.a.xyx;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: vec4<f32>) -> vec3<i32> {
    var var_0 = ~vec4<u32>(1u, ~u_input.a, u_input.d.x, ~abs(countOneBits(u_input.c)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(arg_2)), (true & all(!vec3<bool>(true, true, arg_0.x))) || true, ~(~firstLeadingBit(min(2147483647i, global2[_wgslsmith_index_u32(u_input.b.x, 12u)]))), -(~vec4<i32>(-2147483647i, 31646i, ~global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(var_0.x, 12u)])));
    var var_2 = max(-(vec2<i32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, var_0.x, var_0.x, 43228u), vec4<u32>(1u, u_input.c, 1u, u_input.c)), 12u)], global2[_wgslsmith_index_u32(~1u, 12u)]) >> (~(vec2<u32>(var_0.x, var_0.x) ^ var_0.yw) % vec2<u32>(32u))), var_1.d.yw);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-832f)))));
    let var_4 = ~vec4<u32>(reverseBits(abs(24945u)), ~var_0.x, ~min(4294967295u, 34700u), 5132u) ^ (firstLeadingBit(vec4<u32>(1u, 1u, 57636u, 30708u) & vec4<u32>(u_input.b.x, 88848u, 4294967295u, 4294967295u)) ^ firstTrailingBit(vec4<u32>(u_input.b.x, 20423u, var_0.x, 27837u) >> (reverseBits(vec4<u32>(0u, u_input.e.x, 65035u, u_input.b.x)) % vec4<u32>(32u))));
    return -select(abs(_wgslsmith_add_vec3_i32(abs(var_1.d.zwx), countOneBits(var_1.d.wyw))), -_wgslsmith_div_vec3_i32(var_1.d.xwz, vec3<i32>(global2[_wgslsmith_index_u32(var_4.x, 12u)], var_2.x, global2[_wgslsmith_index_u32(var_4.x, 12u)])), true);
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> Struct_1 {
    var var_0 = max(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(select(u_input.b.x, _wgslsmith_mod_u32(1u, 55793u), !global1.x), 0u & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 0u, u_input.e.x, 15244u), vec4<u32>(19278u, 1u, 22890u, u_input.e.x))), 14u)] | ~(~global0[_wgslsmith_index_u32(~16918u, 14u)]), u_input.d);
    global1 = !vec3<bool>(!(arg_1.a.x <= arg_1.a.x), true | !(false || global1.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -656f), _wgslsmith_div_f32(-759f, arg_3))) >= 407f);
    var_0 = _wgslsmith_sub_vec3_u32(~vec3<u32>(40582u, select(5661u, ~var_0.x, all(vec2<bool>(global1.x, global1.x))), ~u_input.b.x), ~u_input.d);
    var var_1 = select(~arg_1.d, arg_1.d, !(true && any(select(global1.xy, global1.zx, global1.xz))));
    global2 = array<i32, 12>();
    return Struct_1(vec4<f32>(arg_3, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_3 - 1000f))))), 963f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1000f))))), !(true == ((var_0.x & u_input.d.x) <= 2892u)), 11242i, vec4<i32>(25608i ^ ~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, global2[_wgslsmith_index_u32(42662u, 12u)]), var_1.zz), var_1.x, -2147483647i, select(firstLeadingBit(-2147483647i), -33919i, !global1.x)));
}

fn func_1() -> vec4<i32> {
    let var_0 = func_5(-global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(func_2(vec4<u32>(u_input.b.x, u_input.c, 32913u, u_input.e.x), vec3<bool>(global1.x, true, global1.x)), firstTrailingBit(vec3<u32>(u_input.d.x, u_input.c, 17938u))), vec3<u32>(12083u, u_input.d.x, u_input.b.x) ^ abs(global0[_wgslsmith_index_u32(4294967295u, 14u)])), 12u)], Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1683f - 825f), _wgslsmith_f_op_f32(-1084f * 1000f), _wgslsmith_f_op_f32(-582f * 1000f), _wgslsmith_f_op_f32(f32(-1f) * -130f)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, -531f, 226f, 383f)))))), global1.x, max(-1i, abs(-global2[_wgslsmith_index_u32(u_input.c, 12u)])), vec4<i32>(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(61365u ^ u_input.d.x, 12u)], 1i), -_wgslsmith_div_i32(1i, global2[_wgslsmith_index_u32(94234u, 12u)]), _wgslsmith_sub_i32(-global2[_wgslsmith_index_u32(0u, 12u)], 11161i), countOneBits(-16431i))), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(u_input.d.x, 12u)], global2[_wgslsmith_index_u32(12477u, 12u)]), ~global2[_wgslsmith_index_u32(u_input.a, 12u)]), i32(-1i) * -22767i, -2147483647i), ~func_4(vec2<bool>(global1.x, false), _wgslsmith_f_op_vec3_f32(func_3(1164f, Struct_1(vec4<f32>(1000f, -238f, -1000f, 596f), false, -7858i, vec4<i32>(30580i, global2[_wgslsmith_index_u32(u_input.c, 12u)], 2147483647i, global2[_wgslsmith_index_u32(33194u, 12u)])))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-438f, -193f, 174f, 1000f), vec4<f32>(-1093f, 1409f, -2284f, -663f))))), 259f);
    let var_1 = Struct_1(var_0.a, global1.x, 0i, _wgslsmith_mult_vec4_i32(vec4<i32>(0i, -global2[_wgslsmith_index_u32(u_input.c, 12u)], var_0.c, ~max(1i, -1i)), var_0.d));
    var var_2 = vec2<bool>(true, any(select(vec3<bool>(var_1.b, any(vec4<bool>(false, false, global1.x, false)), var_1.b & var_1.b), vec3<bool>(true, false, !var_0.b), !select(false, true, var_1.b))));
    var var_3 = var_1.d;
    var_3 = -(vec4<i32>(-1i) * -vec4<i32>(-3284i, 33385i, global2[_wgslsmith_index_u32(u_input.b.x, 12u)], 58224i)) >> (vec4<u32>(~((u_input.a >> (u_input.e.x % 32u)) >> (~u_input.d.x % 32u)), ~_wgslsmith_dot_vec2_u32(u_input.d.zy, u_input.d.yy), select(4294967295u, firstTrailingBit(select(u_input.d.x, u_input.d.x, true)), all(vec4<bool>(var_2.x, false, var_0.b, var_2.x))), ~_wgslsmith_div_u32(abs(u_input.b.x), _wgslsmith_add_u32(0u, u_input.d.x))) % vec4<u32>(32u));
    return firstLeadingBit(_wgslsmith_mult_vec4_i32(var_0.d, ~vec4<i32>(var_0.d.x ^ global2[_wgslsmith_index_u32(u_input.b.x, 12u)], _wgslsmith_dot_vec2_i32(var_0.d.yw, var_3.wy), var_0.d.x, var_1.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(42209u, _wgslsmith_mult_u32(countOneBits(3041u), 1460u));
    let var_1 = ~func_1();
    global2 = array<i32, 12>();
    var var_2 = ~u_input.b.yx;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1656f, -466f, 1298f, 499f))), vec4<f32>(2355f, -1557f, -771f, 100f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1461f, 312f, 105f, 585f)))))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, var_2.x, 12818u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 1u), vec4<u32>(var_0.x, 1u, var_2.x, 50150u))) == var_0.x, var_1.x, ~((vec4<i32>(var_1.x, 19871i, -46569i, -28077i) & min(vec4<i32>(-11914i, 48079i, 22341i, -1i), vec4<i32>(67449i, global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(var_0.x, 12u)], -18773i))) | var_1));
    var_3 = func_5(abs(var_3.c), func_5(0i, Struct_1(var_3.a, var_3.b && true, firstLeadingBit(min(-30614i, var_3.c)), var_1), ~(var_1.x ^ -var_1.x), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1000f, 1000f)), _wgslsmith_f_op_f32(trunc(var_3.a.x)))))), 2147483647i, -1027f);
    var var_4 = 293f != _wgslsmith_f_op_f32(func_5(max(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_2.x, var_0.x), 12u)], _wgslsmith_div_i32(0i, 38963i)), Struct_1(var_3.a, global1.x, _wgslsmith_dot_vec4_i32(var_3.d, var_3.d), reverseBits(var_1)), ~max(var_1.x, -3436i), var_3.a.x).a.x * _wgslsmith_f_op_f32(select(var_3.a.x, _wgslsmith_div_f32(var_3.a.x, _wgslsmith_f_op_f32(-636f - var_3.a.x)), false)));
    let x = u_input.a;
    s_output = StorageBuffer(11344i, vec2<i32>(var_1.x, _wgslsmith_add_i32(countOneBits(5015i), -_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(17248u, 12u)], global2[_wgslsmith_index_u32(var_2.x, 12u)], global2[_wgslsmith_index_u32(var_2.x, 12u)]), var_1))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.x) + _wgslsmith_f_op_f32(-var_3.a.x)), _wgslsmith_div_f32(-1000f, 739f)));
}

