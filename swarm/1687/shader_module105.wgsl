struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: array<u32, 13> = array<u32, 13>(0u, 54433u, 4294967295u, 4294967295u, 4294967295u, 4294967295u, 13092u, 90392u, 49126u, 1u, 684u, 8571u, 0u);

var<private> global2: array<u32, 29>;

var<private> global3: array<u32, 9> = array<u32, 9>(85745u, 1u, 1u, 23329u, 80874u, 4294967295u, 0u, 0u, 4294967295u);

var<private> global4: vec3<i32>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> u32 {
    global2 = array<u32, 29>();
    global4 = ~arg_0.c.wzz;
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1328f, _wgslsmith_f_op_f32(-534f + -322f), -372f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1290f, -629f, 760f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-191f, 1310f, -1000f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2574f, -116f, -695f))))));
    let var_1 = vec3<bool>(true, true, true);
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-688f, var_0.x))))))));
    return 45607u;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<bool>) -> Struct_2 {
    let var_0 = 50072u < (_wgslsmith_mult_u32(select(func_3(Struct_1(vec3<bool>(true, global0.x, arg_1.x), u_input.d, vec4<i32>(u_input.b, u_input.b, global4.x, u_input.b)), vec4<bool>(false, true, false, arg_1.x)), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(5182u, global3[_wgslsmith_index_u32(0u, 9u)]), 9u)], u_input.c >= -1551i), ~(1u >> (global2[_wgslsmith_index_u32(u_input.d.x, 29u)] % 32u))) << (3105u % 32u));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(step(-2064f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)))))), _wgslsmith_f_op_f32(arg_0.x - arg_0.x), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_0.x, 979f, var_0)))) * arg_0.x) * _wgslsmith_f_op_f32(sign(arg_0.x))));
    return Struct_2(!vec3<bool>(42444u < global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.d.xy, u_input.d.zz), 29u)], 29u)], global0.x, select(true, true, false)), ~_wgslsmith_clamp_vec4_u32(u_input.d, u_input.d, ~countOneBits(vec4<u32>(u_input.d.x, 0u, u_input.a.x, 4294967295u))), Struct_1(vec3<bool>(!(!arg_1.x), arg_1.x, any(!vec4<bool>(global0.x, true, true, var_0))), ~(~vec4<u32>(global1[_wgslsmith_index_u32(47544u, 13u)], global1[_wgslsmith_index_u32(11776u, 13u)], global1[_wgslsmith_index_u32(11520u, 13u)], 0u)), -firstLeadingBit(-vec4<i32>(1i, global4.x, 1i, u_input.c))), false);
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    var var_0 = arg_2;
    global0 = vec2<bool>(true, true);
    let var_1 = arg_3.c.x;
    var var_2 = ~firstLeadingBit(-reverseBits(var_0.c.c.x));
    var var_3 = global1[_wgslsmith_index_u32(14548u, 13u)] << (17763u % 32u);
    return func_2(vec2<f32>(arg_0.x, arg_0.x), select(var_0.a.xz, arg_3.a.xz, u_input.a.x <= 3071u));
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: i32, arg_3: u32) -> f32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -127f), -707f), _wgslsmith_f_op_f32(-466f + _wgslsmith_f_op_f32(ceil(-153f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2032f * 2030f), _wgslsmith_f_op_f32(round(155f)))))), 1460f);
    global2 = array<u32, 29>();
    global1 = array<u32, 13>();
    global3 = array<u32, 9>();
    let var_1 = arg_3;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -414f));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: u32) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(func_5(true, func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.x * 401f), 775f, -472f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -1000f, arg_0.x)) + vec3<f32>(arg_0.x, arg_0.x, -507f))), !global0.x, func_2(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(abs(arg_0.x))), !(!arg_2.zy)), Struct_1(!(!arg_2.yyw), _wgslsmith_sub_vec4_u32(~u_input.d, vec4<u32>(118177u, u_input.a.x, 4294967295u, arg_3)), vec4<i32>(~u_input.c, _wgslsmith_clamp_i32(-6016i, global4.x, -1i), _wgslsmith_mult_i32(global4.x, u_input.c), u_input.b | arg_1.a.x))), ~abs(abs(_wgslsmith_mult_i32(-21877i, -21646i))), _wgslsmith_mult_u32(max(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(7473u, arg_3), vec2<u32>(u_input.a.x, 30724u))), func_4(vec3<f32>(arg_0.x, 1000f, -565f), true, func_4(vec3<f32>(arg_0.x, arg_0.x, arg_0.x), arg_2.x, Struct_2(vec3<bool>(false, true, true), vec4<u32>(56221u, 1u, 22077u, 1u), Struct_1(arg_2.zzw, u_input.d, vec4<i32>(1i, 0i, -1i, 356i)), false), Struct_1(vec3<bool>(global0.x, false, true), u_input.d, arg_1.a)), func_2(arg_0, arg_2.xz).c).b.x), arg_3)));
    global2 = array<u32, 29>();
    global4 = vec3<i32>(~global4.x, func_4(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.x, arg_0.x, -1365f))))), false, Struct_2(select(arg_2.wzz, arg_2.zxz, arg_2.x), ~(u_input.d >> (u_input.d % vec4<u32>(32u))), Struct_1(!arg_2.yxz, func_2(arg_0, arg_2.xy).b, _wgslsmith_mult_vec4_i32(arg_1.a, vec4<i32>(2147483647i, -2147483647i, 0i, 0i))), all(!arg_2)), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_0, vec2<f32>(arg_0.x, arg_0.x)))), vec2<bool>(any(vec4<bool>(true, global0.x, false, true)), func_2(arg_0, vec2<bool>(arg_1.b, global0.x)).d)).c).c.c.x, reverseBits(_wgslsmith_clamp_i32(u_input.c, reverseBits(abs(-1962i)), ~global4.x)));
    return _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.x, 1230f, arg_0.x, _wgslsmith_f_op_f32(243f - _wgslsmith_f_op_f32(round(arg_0.x))))));
}

fn func_6(arg_0: bool, arg_1: vec3<bool>, arg_2: vec4<f32>) -> i32 {
    let var_0 = u_input.a.x;
    let var_1 = Struct_1(!func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, arg_2.x, arg_2.x)), arg_0, Struct_2(vec3<bool>(true, true, true), vec4<u32>(7184u, u_input.a.x, global2[_wgslsmith_index_u32(u_input.a.x, 29u)], 0u), func_2(vec2<f32>(arg_2.x, 365f), arg_1.xz).c, arg_1.x), func_2(vec2<f32>(arg_2.x, 335f), vec2<bool>(true, arg_1.x)).c).a, ~u_input.d, ~vec4<i32>(6347i, 2147483647i ^ u_input.c, firstLeadingBit(7588i), ~30188i) | -(~vec4<i32>(u_input.b, 8001i, 1i, 12313i)));
    var var_2 = _wgslsmith_clamp_vec2_i32(-global4.xy, -(~select(_wgslsmith_mult_vec2_i32(vec2<i32>(global4.x, 2600i), vec2<i32>(u_input.b, 2147483647i)), ~vec2<i32>(global4.x, -46633i), true)), vec2<i32>(countOneBits(~2147483647i), min(1i, 0i)));
    return abs(_wgslsmith_dot_vec4_i32(firstTrailingBit(~vec4<i32>(0i, global4.x, 0i, global4.x)), -_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -2147483647i, var_1.c.x, 1i) << (vec4<u32>(39742u, global1[_wgslsmith_index_u32(4294967295u, 13u)], global2[_wgslsmith_index_u32(25919u, 29u)], var_0) % vec4<u32>(32u)), vec4<i32>(-68603i, var_2.x, global4.x, 25846i))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = ~vec3<i32>(_wgslsmith_mod_i32((global4.x | global4.x) | -11076i, u_input.c), func_6(global0.x, vec3<bool>(!global0.x, true, true), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1035f, -1007f, -342f, -1521f), vec4<f32>(459f, -368f, -379f, -596f))), _wgslsmith_f_op_vec4_f32(func_1(vec2<f32>(-1186f, -148f), Struct_3(vec4<i32>(u_input.c, u_input.b, -1i, -1i), global0.x), vec4<bool>(true, global0.x, global0.x, global0.x), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d.x, 13u)], 13u)]))))), global4.x);
    global4 = vec3<i32>(-(u_input.c ^ u_input.b), -global4.x, func_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(2000f, 1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(917f, 1285f)))), vec2<bool>(global0.x, true)).c.c.x) | ~vec3<i32>(i32(-1i) * -1i, ~global4.x, _wgslsmith_add_i32(max(0i, u_input.b), u_input.c));
    global4 = _wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(u_input.c, _wgslsmith_sub_i32(26970i, 0i), -15514i)) << (_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, ~global3[_wgslsmith_index_u32(u_input.d.x, 9u)]), u_input.d.yxw & countOneBits(vec3<u32>(0u, u_input.a.x, 0u))) % vec3<u32>(32u)), firstTrailingBit(_wgslsmith_div_vec3_i32(~abs(vec3<i32>(1i, 2147483647i, 0i)), ~_wgslsmith_add_vec3_i32(vec3<i32>(0i, global4.x, u_input.b), vec3<i32>(1i, -3217i, 0i)))));
    var var_0 = Struct_2(vec3<bool>(global0.x, true, true), u_input.d, Struct_1(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1907f, -334f)), vec2<bool>(true, global0.x)).a, _wgslsmith_mod_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(~23383u, 9u)], ~global2[_wgslsmith_index_u32(5421u, 29u)], 1u, u_input.a.x), ~u_input.d), _wgslsmith_clamp_vec4_i32(-vec4<i32>(32963i, global4.x, 2147483647i, global4.x), firstLeadingBit(vec4<i32>(6531i, global4.x, u_input.c, u_input.c)), vec4<i32>(-31169i, 12916i, u_input.b, 3007i)) & vec4<i32>(-27159i, 2147483647i, u_input.b, min(u_input.c, -18548i))), global4.x != -firstTrailingBit(u_input.c));
    global4 = var_0.c.c.wyz;
    global0 = !var_0.c.a.xy;
    global4 = -func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(422f, 1201f) + vec2<f32>(-963f, -595f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-942f, 336f)))), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1099f, 422f)), func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-537f, 1557f) + vec2<f32>(1069f, -649f)), var_0.a.xz).c.a.xz).c.a.yy).c.c.yxw;
    var var_1 = _wgslsmith_clamp_i32(~(i32(-1i) * -2147483647i), -(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-381f, -866f)), var_0.a.yz).c.c.x | _wgslsmith_mult_i32(1i | u_input.c, -var_0.c.c.x)), countOneBits(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(117f, -400f, -927f)), global0.x || true, Struct_2(var_0.c.a, vec4<u32>(27627u, 4294967295u, 9896u, u_input.d.x) & vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(var_0.c.b.x, 13u)], 39810u), func_2(vec2<f32>(-147f, 1955f), vec2<bool>(global0.x, global0.x)).c, global0.x), var_0.c).c.c.x));
    let var_2 = vec3<bool>(global0.x, func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-523f)), -328f)), vec2<bool>(var_0.d, global0.x)).c.a.x, any(var_0.a.yy));
    let x = u_input.a;
    s_output = StorageBuffer(-541f, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -635f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1415f, -430f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1036f, -124f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1881f)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-377f * -770f))))), countOneBits(func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(754f, -757f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(540f, -110f))), vec2<bool>(func_4(vec3<f32>(-749f, 843f, -242f), var_0.d, Struct_2(vec3<bool>(var_0.d, true, var_0.c.a.x), vec4<u32>(7498u, global2[_wgslsmith_index_u32(0u, 29u)], u_input.a.x, global2[_wgslsmith_index_u32(4294967295u, 29u)]), var_0.c, global0.x), Struct_1(vec3<bool>(var_0.c.a.x, var_0.d, var_2.x), vec4<u32>(global3[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(var_0.b.x, 29u)], global1[_wgslsmith_index_u32(u_input.d.x, 13u)], global2[_wgslsmith_index_u32(var_0.c.b.x, 29u)]), var_0.c.c)).c.a.x, var_0.a.x)).c.b), ~global3[_wgslsmith_index_u32(u_input.a.x, 9u)]);
}

