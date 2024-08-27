struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u, vec3<u32>(0u, 0u, 0u), 43030i);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<bool>) -> f32 {
    let var_0 = vec3<bool>(any(!(!(!vec3<bool>(arg_1.x, arg_1.x, arg_1.x)))), arg_0.x < 41231u, arg_1.x);
    global0 = Struct_1(arg_0.x, _wgslsmith_sub_vec3_u32(arg_0, arg_0), max(global0.c, -25463i));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-252f, 1883f), 556f)), _wgslsmith_f_op_f32(f32(-1f) * -976f)))));
}

fn func_2() -> vec4<bool> {
    let var_0 = ~global0.b.x;
    var var_1 = true;
    var_1 = 1181f != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(457f + 1277f) * -171f))));
    let var_2 = select(vec3<bool>(any(vec2<bool>(true, true)), true, !(!all(vec2<bool>(true, false)))), vec3<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-196f - 1518f), _wgslsmith_f_op_f32(trunc(-258f)))) != _wgslsmith_f_op_f32(-446f + -1910f), !(true != (4294967295u != global0.b.x)), (abs(4294967295u) | _wgslsmith_mod_u32(global0.b.x, var_0)) <= _wgslsmith_dot_vec3_u32(global0.b, reverseBits(vec3<u32>(u_input.b, u_input.b, 58962u)))), vec3<bool>(907f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global0.b, vec4<bool>(true, true, false, false)))), !any(vec3<bool>(true, false, true)), (any(vec4<bool>(true, false, false, false)) != true) | true));
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(~_wgslsmith_mult_vec3_u32(select(vec3<u32>(u_input.b, global0.a, u_input.b), vec3<u32>(u_input.b, 1u, var_0), vec3<bool>(var_2.x, var_2.x, var_2.x)), abs(global0.b)), select(select(!vec4<bool>(true, false, var_2.x, true), select(vec4<bool>(var_2.x, false, var_2.x, true), vec4<bool>(var_2.x, var_2.x, false, true), vec4<bool>(var_2.x, false, false, var_2.x)), true), select(select(vec4<bool>(true, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, true, var_2.x, false), var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, false), vec4<bool>(var_2.x, false, var_2.x, true)), vec4<bool>(var_2.x, var_2.x, var_2.x, true)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-332f - 902f)))))), !(u_input.b <= _wgslsmith_clamp_u32(0u, 4294967295u, 0u))));
    return !(!vec4<bool>(!var_2.x, 41532u < select(37558u, global0.b.x, false), true, all(select(vec4<bool>(false, true, var_2.x, false), vec4<bool>(var_2.x, false, false, false), vec4<bool>(var_2.x, var_2.x, var_2.x, true)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: Struct_2) -> vec2<bool> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(arg_0))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(arg_0))))))), arg_2.d, 1850f, Struct_1(15996u, global0.b, arg_2.d.c));
    let var_1 = arg_1.zxx;
    let var_2 = 0i < global0.c;
    let var_3 = var_0.d;
    var var_4 = !var_2;
    return vec2<bool>(true, false);
}

fn func_5(arg_0: vec2<u32>, arg_1: u32, arg_2: f32, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = u_input.a.zz;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 - 532f), -219f));
    let var_2 = vec4<u32>(~u_input.b, 35253u, 16970u, arg_1);
    global0 = Struct_1(firstTrailingBit(39292u), ~(~(vec3<u32>(arg_0.x, 48192u, arg_1) >> (~global0.b % vec3<u32>(32u)))), -2147483647i);
    let var_3 = Struct_1(0u, ~vec3<u32>(56173u, 11290u, _wgslsmith_sub_u32(_wgslsmith_div_u32(var_2.x, 2992u), var_2.x)), ~abs(_wgslsmith_div_i32(var_0.x, u_input.c)) & -global0.c);
    return Struct_2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2)))), -1039f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2))), _wgslsmith_f_op_f32(select(-403f, -110f, !arg_3.x))), var_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-756f - -1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, -147f)))), var_3);
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(countOneBits(0i), u_input.a.x, 34988i), u_input.a.xwx);
    var var_1 = func_5(vec2<u32>(68358u, u_input.b), ~firstLeadingBit(_wgslsmith_div_u32(u_input.b, ~57413u)), -1159f, !(!func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-993f, 1425f, 935f, -1493f)), func_2(), Struct_2(vec4<f32>(-779f, 2151f, -1223f, 788f), Struct_1(4294967295u, vec3<u32>(global0.a, 0u, 0u), 11570i), 178f, Struct_1(u_input.b, global0.b, -43699i)))));
    var_1 = func_5(vec2<u32>(27665u, var_1.b.b.x), ~4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), var_1.c, !any(vec4<bool>(false, true, false, false))))), func_2().yy);
    var var_2 = !(!func_4(_wgslsmith_f_op_vec4_f32(func_5(vec2<u32>(global0.a, u_input.b), 0u, var_1.a.x, vec2<bool>(true, false)).a + var_1.a), vec4<bool>(any(vec3<bool>(true, false, false)), true, all(vec4<bool>(false, false, false, true)), false), func_5(vec2<u32>(54534u, 15608u), ~0u, -655f, func_2().xz)).x);
    var var_3 = min(countOneBits(vec4<u32>(func_5(vec2<u32>(u_input.b, 10037u), firstTrailingBit(u_input.b), _wgslsmith_f_op_f32(f32(-1f) * -627f), select(vec2<bool>(true, false), vec2<bool>(false, true), true)).d.a, select(u_input.b >> (1u % 32u), ~var_1.b.a, var_0.x <= var_0.x), var_1.b.b.x, ~_wgslsmith_clamp_u32(var_1.d.b.x, 20273u, global0.a))), max(firstLeadingBit(~vec4<u32>(global0.b.x, 4294967295u, global0.a, u_input.b)), ~(~vec4<u32>(12067u, 0u, u_input.b, 0u))) ^ (_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(0u, global0.a, u_input.b, 211u)), ~vec4<u32>(u_input.b, 73156u, u_input.b, 8804u), vec4<u32>(44994u, global0.b.x, 61662u, 68991u) ^ vec4<u32>(var_1.b.b.x, global0.b.x, 35164u, 94511u)) ^ (select(vec4<u32>(0u, 6725u, global0.a, 4294967295u), vec4<u32>(u_input.b, global0.a, 28419u, u_input.b), true) >> (vec4<u32>(1u, 4294967295u, 8453u, 4294967295u) % vec4<u32>(32u)))));
    return Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.x), var_1.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.c, _wgslsmith_div_f32(790f, var_1.a.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-792f, var_1.a.x)))), func_5(abs(firstTrailingBit(func_5(global0.b.yz, var_1.d.b.x, var_1.a.x, vec2<bool>(true, false)).b.b.xz)), global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, func_2().x), false)).b, _wgslsmith_f_op_f32(-var_1.a.x), Struct_1(_wgslsmith_div_u32(u_input.b, 44170u), var_1.b.b >> (var_1.b.b % vec3<u32>(32u)), ~_wgslsmith_mod_i32(~(-26282i), _wgslsmith_sub_i32(2147483647i, global0.c))));
}

fn func_6(arg_0: Struct_2, arg_1: u32, arg_2: i32) -> u32 {
    var var_0 = Struct_1(min(~_wgslsmith_mult_u32(16477u, 1u), 17612u), ~_wgslsmith_sub_vec3_u32(countOneBits(arg_0.b.b) >> (select(vec3<u32>(3311u, u_input.b, 4294967295u), vec3<u32>(u_input.b, 0u, global0.b.x), false) % vec3<u32>(32u)), reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.d.b.x, 26350u, 4294967295u), vec3<u32>(39868u, arg_0.d.b.x, 78844u)))), -2147483647i);
    var var_1 = countOneBits(arg_1 << (0u % 32u)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 53431u), vec3<u32>(arg_1, ~1u, u_input.b)) % 32u);
    var_0 = Struct_1(~_wgslsmith_mod_u32(max(90113u, 43632u), var_0.b.x), vec3<u32>(firstTrailingBit(4294967295u), _wgslsmith_sub_u32(20354u, abs(global0.a)), arg_1) & _wgslsmith_mod_vec3_u32(vec3<u32>(23755u, 4294967295u, abs(4294967295u)), func_5(func_1().b.b.yy, 1u, _wgslsmith_f_op_f32(floor(-979f)), vec2<bool>(true, true)).b.b), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(0i, -2147483647i, global0.c, arg_2), -u_input.a), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(var_0.c, -1i, var_0.c, u_input.a.x)), abs(u_input.a), vec4<i32>(arg_0.d.c, u_input.a.x, 1i, global0.c) << (vec4<u32>(1u, arg_0.d.b.x, 34650u, 63890u) % vec4<u32>(32u)))), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-6887i, global0.c), ~vec2<i32>(1i, 2147483647i)), 36792i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(8885u, arg_0.d.a), vec2<u32>(66195u, arg_1)) % 32u))));
    var var_2 = true;
    var var_3 = firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_add_u32(arg_0.b.b.x, 64573u), ~global0.b.x));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.c | abs(_wgslsmith_dot_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(35533i, 57644i), u_input.a.wx), vec2<i32>(12273i, -2147483647i)));
    global0 = Struct_1(func_6(func_1(), abs(select(global0.b.x, 1u, true)), ~1i), global0.b, ~(~(~global0.c)));
    var var_1 = var_0;
    global0 = func_1().b;
    var var_2 = true & any(!vec3<bool>(false, any(vec3<bool>(false, false, false)), true));
    var_2 = !any(vec4<bool>(true, true, true, true));
    let var_3 = func_1().d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~global0.a, ~reverseBits(4294967295u)) | ~1u, 0i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(423f + -351f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1413f + 211f)), 1f)));
}

