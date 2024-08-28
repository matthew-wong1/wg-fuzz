struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: u32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(Struct_1(73012u, -1i, 36465i, vec2<bool>(false, false)), vec4<bool>(true, true, false, false), 17852u, vec2<f32>(-626f, -1000f)), Struct_3(Struct_1(50366u, i32(-2147483648), -12948i, vec2<bool>(false, false)), vec4<bool>(true, false, false, true), 53491u, vec2<f32>(313f, -528f)), Struct_3(Struct_1(23830u, 1i, i32(-2147483648), vec2<bool>(false, false)), vec4<bool>(false, true, false, false), 28891u, vec2<f32>(-213f, -764f)), Struct_3(Struct_1(1u, 24772i, 56273i, vec2<bool>(true, false)), vec4<bool>(false, false, false, true), 4294967295u, vec2<f32>(-433f, -682f)), Struct_3(Struct_1(7301u, 45623i, i32(-2147483648), vec2<bool>(true, true)), vec4<bool>(true, false, false, false), 14390u, vec2<f32>(-1148f, -1520f)), Struct_3(Struct_1(5217u, -7288i, i32(-2147483648), vec2<bool>(true, false)), vec4<bool>(true, false, false, false), 1u, vec2<f32>(1000f, 935f)), Struct_3(Struct_1(27793u, 23020i, -58680i, vec2<bool>(false, true)), vec4<bool>(false, true, false, false), 44729u, vec2<f32>(164f, 263f)), Struct_3(Struct_1(19868u, 0i, 1i, vec2<bool>(false, true)), vec4<bool>(true, false, true, false), 14448u, vec2<f32>(-1224f, -1490f)));

var<private> global1: vec3<u32> = vec3<u32>(39023u, 69065u, 5181u);

var<private> global2: Struct_2 = Struct_2(Struct_1(37304u, 0i, -19271i, vec2<bool>(true, true)), Struct_1(11833u, 3168i, 3472i, vec2<bool>(true, false)), -441f, vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global3: array<u32, 12>;

var<private> global4: bool;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = -564f;
    let var_1 = var_0;
    let var_2 = abs(vec4<i32>(-(i32(-1i) * -30941i), ~max(_wgslsmith_div_i32(arg_0.b, -2147483647i), global2.b.c), _wgslsmith_dot_vec3_i32(-vec3<i32>(arg_0.c, arg_0.b, u_input.a.x), _wgslsmith_sub_vec3_i32(vec3<i32>(-7440i, -1i, -2147483647i) & vec3<i32>(arg_0.c, u_input.a.x, arg_0.b), vec3<i32>(23582i, u_input.a.x, 0i))), _wgslsmith_add_i32(22239i, ~(-1i)) ^ -select(0i, 59397i, global2.e.x)));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -105f), -645f);
    global1 = min(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(0u, global3[_wgslsmith_index_u32(4294967295u, 12u)], 4294967295u)), ~vec3<u32>(global3[_wgslsmith_index_u32(37144u, 12u)], global3[_wgslsmith_index_u32(global1.x, 12u)], 44750u) << (~vec3<u32>(1u, global2.a.a, 38415u) % vec3<u32>(32u)), vec3<u32>(12921u, arg_0.a | 25238u, ~u_input.b)), _wgslsmith_mod_vec3_u32(abs(vec3<u32>(global2.a.a, 38193u, 12870u) & vec3<u32>(0u, global2.b.a, global2.a.a)), _wgslsmith_add_vec3_u32(vec3<u32>(global1.x, arg_0.a, u_input.b), vec3<u32>(1u, global3[_wgslsmith_index_u32(11805u, 12u)], global1.x)))), vec3<u32>(4294967295u, firstTrailingBit((4294967295u ^ u_input.b) ^ ~u_input.b), 4294967295u | u_input.b));
    return vec4<bool>(162f != var_3.x, true, all(global2.b.d), true);
}

fn func_2(arg_0: f32, arg_1: vec4<bool>, arg_2: i32) -> vec4<u32> {
    global4 = arg_1.x;
    var var_0 = Struct_3(global2.a, func_3(Struct_1(31014u, ~(-global2.b.c), -arg_2, vec2<bool>(true, global2.d.x))), global3[_wgslsmith_index_u32(0u, 12u)], _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0, arg_0)))))))));
    global1 = ~vec3<u32>(~(~global2.b.a | ~var_0.c), ~global1.x, ~(~var_0.a.a));
    return reverseBits(vec4<u32>(346u, 4294967295u >> (_wgslsmith_dot_vec2_u32(global1.zy, min(vec2<u32>(global3[_wgslsmith_index_u32(global1.x, 12u)], 24622u), vec2<u32>(global3[_wgslsmith_index_u32(50631u, 12u)], 4294967295u))) % 32u), ~_wgslsmith_mult_u32(reverseBits(global3[_wgslsmith_index_u32(var_0.a.a, 12u)]), _wgslsmith_add_u32(global2.b.a, 0u)), 1u));
}

fn func_4(arg_0: i32, arg_1: vec4<u32>) -> bool {
    global3 = array<u32, 12>();
    global4 = all(func_3(global2.b).zx);
    var var_0 = 0i;
    global1 = ~(~arg_1.zwz);
    var var_1 = Struct_3(Struct_1(_wgslsmith_sub_u32(global2.b.a & 72685u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 4294967295u, 11896u), select(vec3<u32>(arg_1.x, arg_1.x, global3[_wgslsmith_index_u32(global1.x, 12u)]), vec3<u32>(global2.a.a, 0u, 1u), vec3<bool>(true, true, false)))), abs(26745i), 0i & ~global2.b.b, select(vec2<bool>(all(vec2<bool>(true, global2.e.x)), true), func_3(Struct_1(u_input.b, u_input.a.x, global2.a.b, global2.e)).xy, func_3(global2.b).xw)), vec4<bool>(false, true, true, _wgslsmith_f_op_f32(477f + _wgslsmith_f_op_f32(trunc(global2.c))) != _wgslsmith_f_op_f32(global2.c + -1249f)), arg_1.x, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2344f, global2.c) * vec2<f32>(768f, -1937f)) * vec2<f32>(348f, global2.c))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(trunc(-541f)), _wgslsmith_f_op_f32(-global2.c)), vec2<f32>(_wgslsmith_f_op_f32(-1977f + 1000f), _wgslsmith_f_op_f32(global2.c + global2.c)), global2.d)))));
    return var_1.b.x;
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    global0 = array<Struct_3, 8>();
    let var_0 = select(vec4<bool>(false, func_4(abs(countOneBits(u_input.a.x)), func_2(_wgslsmith_f_op_f32(abs(-764f)), select(vec4<bool>(global2.e.x, false, global2.e.x, global2.a.d.x), vec4<bool>(false, global2.b.d.x, true, global2.e.x), vec4<bool>(false, global2.b.d.x, global2.b.d.x, true)), -global2.a.b)), true, all(global2.b.d)), select(!func_3(global2.b), vec4<bool>(global2.e.x, global2.d.x, !global2.b.d.x, !any(global2.a.d)), true), true);
    global1 = ~(abs(~vec3<u32>(global2.b.a, global1.x, global2.a.a) & vec3<u32>(global1.x, global1.x, global1.x)) & (~vec3<u32>(global1.x, 42118u, 4294967295u) ^ (min(vec3<u32>(global2.b.a, global1.x, 38441u), vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(global2.a.a, 12u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 12u)], 12u)])) | ~vec3<u32>(global2.a.a, global3[_wgslsmith_index_u32(0u, 12u)], global1.x))));
    var var_1 = reverseBits(u_input.a.x);
    global2 = Struct_2(global2.a, global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.c, _wgslsmith_f_op_f32(258f - _wgslsmith_f_op_f32(-global2.c))))), select(!var_0.xy, vec2<bool>(!global2.b.d.x, true), select(vec2<bool>(!global2.b.d.x, var_0.x && false), select(global2.e, !global2.e, vec2<bool>(false, global2.d.x)), select(var_0.wz, !var_0.zz, global2.e))), !(!global2.e));
    return Struct_2(Struct_1(~(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.b.a, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 12u)], 12u)], u_input.b, global1.x), vec4<u32>(global2.a.a, global3[_wgslsmith_index_u32(global2.b.a, 12u)], global2.a.a, global1.x)) << (global3[_wgslsmith_index_u32(1u, 12u)] % 32u)), select(global2.b.b, global2.b.c, any(var_0)), ~min(arg_0.x ^ 9280i, arg_0.x), !select(global2.e, select(vec2<bool>(true, false), global2.a.d, var_0.x), var_0.x && false)), Struct_1(_wgslsmith_mult_u32(~global2.b.a, _wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.b, 4294967295u, 1u), vec3<u32>(u_input.b, 1u, 4294967295u)), select(vec3<u32>(global1.x, 62039u, global2.b.a), vec3<u32>(83052u, global1.x, 57885u), vec3<bool>(var_0.x, global2.a.d.x, false)))), -31574i, 0i, vec2<bool>(_wgslsmith_div_f32(global2.c, 1000f) >= _wgslsmith_f_op_f32(exp2(global2.c)), var_0.x)), -2143f, func_3(global2.b).wz, vec2<bool>(false, global2.a.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec3<i32>(u_input.a.x, u_input.a.x, select(u_input.a.x, ~_wgslsmith_sub_i32(0i, u_input.a.x), !(global2.d.x && false))));
    let var_1 = !vec2<bool>(all(select(vec2<bool>(false, true), !vec2<bool>(var_0.a.d.x, global2.b.d.x), !vec2<bool>(false, global2.e.x))), all(!(!vec4<bool>(true, var_0.e.x, false, true))));
    var var_2 = i32(-1i) * -22734i;
    let var_3 = !(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(global2.c)))) == _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c, var_0.c)));
    var var_4 = Struct_1(0u, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, var_0.b.c), vec2<i32>(global2.b.c, -2147483647i), vec2<i32>(6468i, global2.b.b)), vec2<i32>(92669i, global2.b.c), vec2<i32>(global2.b.b, -1i)), select(vec2<i32>(-39478i, 17512i), vec2<i32>(-1i, u_input.a.x), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.a.a, 12u)], 12u)] < global2.b.a)), -_wgslsmith_dot_vec4_i32(vec4<i32>(23625i, u_input.a.x, -47662i, global2.b.b), vec4<i32>(-14442i, -13205i, u_input.a.x, -3240i) & vec4<i32>(2147483647i, 2147483647i, u_input.a.x, 78129i))), _wgslsmith_dot_vec2_i32(-(~u_input.a & vec2<i32>(u_input.a.x, -3684i)), u_input.a), vec2<bool>(true, any(vec3<bool>(true, all(vec4<bool>(false, var_3, true, false)), false))));
    let var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.c, -1309f))))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(444f + var_0.c), -982f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, var_0.c))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1146f, var_0.c))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-592f, global2.c), vec2<f32>(-621f, 1440f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, global2.c) - vec2<f32>(var_0.c, -1073f)), var_0.d)))));
    let var_6 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(30927u, 0u), 8u)];
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_6.d.x, var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -506f) - -719f))), var_4.c, vec3<u32>(var_4.a, _wgslsmith_mult_u32(37296u, ~(~u_input.b)), ~4294967295u << (~func_1(vec3<i32>(-16259i, -41414i, u_input.a.x)).a.a % 32u)), (_wgslsmith_sub_i32(global2.a.c, var_6.a.c) & -2147483647i) & _wgslsmith_mod_i32(-25579i, global2.a.b));
}

