struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 32> = array<vec3<u32>, 32>(vec3<u32>(2170u, 10876u, 14259u), vec3<u32>(10408u, 0u, 106255u), vec3<u32>(33386u, 48464u, 1u), vec3<u32>(4294967295u, 73028u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(20348u, 0u, 46343u), vec3<u32>(4294967295u, 0u, 23148u), vec3<u32>(3600u, 4294967295u, 0u), vec3<u32>(0u, 1u, 58204u), vec3<u32>(24346u, 4294967295u, 16408u), vec3<u32>(4294967295u, 1u, 6140u), vec3<u32>(7685u, 1u, 1u), vec3<u32>(33990u, 5731u, 90266u), vec3<u32>(163u, 1u, 0u), vec3<u32>(0u, 2699u, 1u), vec3<u32>(10569u, 4294967295u, 14024u), vec3<u32>(1u, 44943u, 58844u), vec3<u32>(4294967295u, 50536u, 6068u), vec3<u32>(2381u, 1u, 60657u), vec3<u32>(0u, 0u, 54452u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(25919u, 1u, 19331u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(13034u, 0u, 10089u), vec3<u32>(0u, 38905u, 60772u), vec3<u32>(15760u, 28387u, 1u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(0u, 66495u, 35440u), vec3<u32>(19346u, 4294967295u, 0u), vec3<u32>(1u, 35304u, 0u), vec3<u32>(0u, 1u, 1u), vec3<u32>(48504u, 59437u, 51659u));

var<private> global1: array<vec3<u32>, 32>;

var<private> global2: array<vec2<bool>, 8>;

var<private> global3: array<vec4<bool>, 3> = array<vec4<bool>, 3>(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> f32 {
    global0 = array<vec3<u32>, 32>();
    let var_0 = abs(-(~(-2147483647i)));
    let var_1 = arg_1;
    global2 = array<vec2<bool>, 8>();
    global3 = array<vec4<bool>, 3>();
    return arg_0.d;
}

fn func_2() -> i32 {
    global0 = array<vec3<u32>, 32>();
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-574f, _wgslsmith_f_op_f32(exp2(1f)), -1193f, 1f) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1070f * -384f), _wgslsmith_f_op_f32(func_3(Struct_1(vec2<i32>(-40512i, -1i), false, true, 212f), Struct_1(vec2<i32>(113i, -1i), false, true, 473f), vec3<i32>(0i, 8153i, -16521i), Struct_1(vec2<i32>(1i, -8126i), true, true, 552f))), _wgslsmith_f_op_f32(max(-1372f, -642f)), _wgslsmith_f_op_f32(sign(1000f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-130f, 427f, 1733f, 1062f)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1752f, -1317f, -767f, -905f))))));
    global2 = array<vec2<bool>, 8>();
    var var_1 = 5721i;
    let var_2 = Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(_wgslsmith_div_i32(-27691i, abs(-1i)), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, 32553i, -61632i), vec4<i32>(21710i, 0i, -41854i, 32734i))))), !(false | all(vec3<bool>(true, false, false))), all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, all(global3[_wgslsmith_index_u32(u_input.a, 3u)])), true)), _wgslsmith_f_op_f32(f32(-1f) * -836f));
    return min(_wgslsmith_mod_i32(-var_2.a.x, 1i), var_2.a.x);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(-vec2<i32>(arg_1.a.x, 7286i), any(global2[_wgslsmith_index_u32(firstTrailingBit(~(~20631u)), 8u)]), u_input.a != ~u_input.a, _wgslsmith_f_op_f32(exp2(arg_0.d)));
    let var_1 = 1u;
    let var_2 = vec3<bool>(all(!select(!vec3<bool>(false, arg_1.c, var_0.c), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(var_0.c, arg_0.c, arg_1.b), vec3<bool>(var_0.c, var_0.b, false)))), !var_0.c, var_0.c);
    global2 = array<vec2<bool>, 8>();
    let var_3 = func_2() & arg_0.a.x;
    return Struct_1(-abs(~arg_0.a), !(true != select(var_3 < -1021i, arg_1.b, -873f == arg_1.d)), true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -318f) - _wgslsmith_f_op_f32(-arg_0.d)), 1651f)), var_0.d, !any(!var_2.xz))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.d, arg_0.d) - func_1(Struct_1(vec2<i32>(2147483647i, arg_1.x), arg_0.b, true, arg_0.d), arg_0).d), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(arg_0.d))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1279f, arg_0.d))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-530f, -545f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(2136f, -917f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d, -813f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.d, -212f), vec2<f32>(-195f, 673f), vec2<bool>(true, arg_0.b))))))));
    global3 = array<vec4<bool>, 3>();
    global2 = array<vec2<bool>, 8>();
    var var_1 = func_1(arg_0, Struct_1(abs(vec2<i32>(0i, arg_0.a.x)) | vec2<i32>(0i, select(arg_1.x, -44179i, arg_0.b)), false, func_1(func_1(Struct_1(arg_1.wy, arg_0.b, false, 191f), func_1(arg_0, arg_0)), func_1(Struct_1(arg_1.yw, arg_0.b, true, var_0.x), Struct_1(arg_0.a, arg_0.c, arg_0.c, arg_0.d))).b, var_0.x));
    global1 = array<vec3<u32>, 32>();
    return vec2<i32>(_wgslsmith_div_i32(firstTrailingBit(0i), _wgslsmith_dot_vec2_i32(-vec2<i32>(-11688i, arg_0.a.x), select(var_1.a, select(var_1.a, arg_0.a, vec2<bool>(false, false)), arg_0.c))), select(var_1.a.x, ~_wgslsmith_sub_i32(var_1.a.x, abs(arg_0.a.x)), var_1.c));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 32>();
    let var_0 = 1i;
    let var_1 = Struct_1(reverseBits(~func_4(func_1(Struct_1(vec2<i32>(-25013i, var_0), false, true, -2264f), Struct_1(vec2<i32>(2387i, var_0), true, true, -1701f)), vec4<i32>(var_0, var_0, var_0, var_0) << (vec4<u32>(4294967295u, u_input.a, 4294967295u, u_input.a) % vec4<u32>(32u)))), !any(select(vec4<bool>(true, true, true, true), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 1u), 3u)], global3[_wgslsmith_index_u32(~4294967295u, 3u)])), true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-263f - _wgslsmith_f_op_f32(min(1696f, 528f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-628f, 165f))))));
    global1 = array<vec3<u32>, 32>();
    global1 = array<vec3<u32>, 32>();
    global1 = array<vec3<u32>, 32>();
    var var_2 = -(var_0 ^ -select(_wgslsmith_dot_vec2_i32(vec2<i32>(14195i, var_0), vec2<i32>(var_1.a.x, var_0)), var_1.a.x, u_input.a >= 36505u));
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d, -140f, var_1.d, 2278f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(307f * _wgslsmith_f_op_f32(select(331f, var_1.d, true))), _wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.d, 312f, false)) + _wgslsmith_f_op_f32(trunc(var_1.d))), func_1(var_1, func_1(Struct_1(vec2<i32>(1i, var_0), var_1.b, var_1.c, 258f), Struct_1(vec2<i32>(var_0, 0i), var_1.c, false, var_1.d))).d)));
    global3 = array<vec4<bool>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(0i, ~countOneBits(firstTrailingBit(vec2<u32>(1u, u_input.a)) >> (~vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u))), var_3.x, max(~reverseBits(vec4<i32>(var_1.a.x, -1i, -1i, var_0)), ~vec4<i32>(var_0, -12095i, -32190i, 14498i)) >> ((select(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), countOneBits(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)), vec4<bool>(false, var_1.c, var_1.c, var_1.b)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, 88128u) << (vec4<u32>(51892u, u_input.a, 1u, 42238u) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(u_input.a, 4294967295u, u_input.a, 4294967295u)), ~vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a))) % vec4<u32>(32u)));
}

