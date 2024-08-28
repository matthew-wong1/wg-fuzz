struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
    c: Struct_3,
    d: f32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 8>;

var<private> global1: vec3<bool> = vec3<bool>(false, false, true);

var<private> global2: i32 = -33434i;

var<private> global3: vec4<i32> = vec4<i32>(-1i, 43032i, i32(-2147483648), 55882i);

var<private> global4: Struct_4;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>) -> f32 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(483f + 639f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a * 707f)))), -vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_1.x, -2147483647i), reverseBits(u_input.d)), _wgslsmith_mod_i32(arg_1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, global3.x), u_input.a.zz)), ~select(global3.x, global3.x, global1.x), 26125i), Struct_3(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(global3.yyw), global3.xzx, vec3<i32>(arg_1.x, u_input.d.x, global4.c.a) ^ u_input.d), firstLeadingBit(global4.b.xxx & global4.b.xzy))), -1552f);
    let var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.d, var_0.d, var_0.a))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global4.a, var_0.a, -560f, var_0.d), vec4<f32>(-1417f, var_0.a, global4.d, var_0.d))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.d, global4.a, var_0.a, global4.d) * vec4<f32>(647f, -354f, -1348f, -630f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.d, var_0.d, global4.d, -904f)), vec4<f32>(var_0.a, var_0.a, -1136f, var_0.d)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(791f, var_0.d, 1376f, 1902f)))))), select(vec3<bool>((arg_1.x <= -6221i) || true, !(!global1.x), false), !(!select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(global1.x, false, true), true)), !select(select(vec3<bool>(true, global1.x, true), vec3<bool>(false, false, global1.x), global1.x), select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, global1.x, true), vec3<bool>(global1.x, global1.x, global1.x)), vec3<bool>(true, global1.x, false))), -1000f, 1i);
    var_0 = Struct_4(var_0.a, firstTrailingBit(vec4<i32>(global4.b.x ^ min(global4.c.a, arg_1.x), _wgslsmith_add_i32(arg_1.x, -21898i), -16141i ^ _wgslsmith_div_i32(2683i, global4.c.a), -9850i)), Struct_3(var_1.d), -919f);
    var var_2 = Struct_3(1i);
    global0 = array<vec3<u32>, 8>();
    return 1f;
}

fn func_2(arg_0: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1115f * -101f), _wgslsmith_f_op_f32(global4.d + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-699f, global4.a))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_mod_u32(31047u, arg_0), vec2<i32>(u_input.a.x, -2147483647i))), _wgslsmith_f_op_f32(step(241f, _wgslsmith_f_op_f32(select(-2758f, 943f, false)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global4.a, 650f, 1367f), vec3<f32>(global4.a, global4.d, global4.d), global1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.a, -527f, -899f) + vec3<f32>(global4.d, global4.a, -150f)))))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(856f, global4.a, -1807f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.a, 503f, global4.d)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global4.a, 909f, global4.d)))))))));
    global4 = Struct_4(global4.d, ~min(min(global4.b, select(global4.b, vec4<i32>(global4.c.a, global4.c.a, u_input.a.x, 2147483647i), vec4<bool>(false, global1.x, true, false))), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-45387i, u_input.d.x, 1i, u_input.a.x), global4.b, global4.b)), global4.c, -2335f);
    let var_1 = _wgslsmith_f_op_vec2_f32(-var_0.zy);
    global4 = Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -526f)), 1100f)), vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(reverseBits(global3.zyw), vec3<i32>(global3.x, -2147483647i, 0i)), firstLeadingBit(min(vec3<i32>(-45063i, 15996i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.d.x)))), ~_wgslsmith_sub_i32(u_input.a.x, min(u_input.a.x, u_input.d.x)), _wgslsmith_dot_vec2_i32(reverseBits(-u_input.a.xz), abs(u_input.a.xx) << (countOneBits(vec2<u32>(17881u, 16750u)) % vec2<u32>(32u))), (i32(-1i) * -global4.c.a) >> ((~arg_0 | arg_0) % 32u)), Struct_3(_wgslsmith_sub_i32(~53504i, 0i)), _wgslsmith_f_op_f32(sign(var_1.x)));
    var var_2 = global4.b.x;
    return vec4<bool>(global1.x, all(vec3<bool>(all(global1.yx), any(!vec2<bool>(global1.x, true)), !(global1.x || false))), any(!select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, global1.x), !vec2<bool>(false, global1.x))), any(select(select(!vec4<bool>(false, global1.x, global1.x, global1.x), select(vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(false, global1.x, global1.x, global1.x), global1.x), true), vec4<bool>(true, true, select(global1.x, false, global1.x), true), all(select(vec4<bool>(false, false, global1.x, false), vec4<bool>(true, global1.x, true, global1.x), vec4<bool>(global1.x, global1.x, true, global1.x))))));
}

fn func_1() -> Struct_4 {
    var var_0 = true;
    var_0 = true;
    var var_1 = select(func_2(firstLeadingBit(_wgslsmith_mult_u32(~4294967295u, 4294967295u))), func_2(u_input.c.x | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.e.x), ~u_input.c)), !(!select(vec4<bool>(global1.x, true, global1.x, true), select(vec4<bool>(false, true, global1.x, false), vec4<bool>(global1.x, global1.x, global1.x, false), vec4<bool>(global1.x, global1.x, true, false)), 57921u != u_input.c.x)));
    let var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a, -981f, global4.d, 1903f)))))), !var_1.www, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-266f * global4.d)))), _wgslsmith_mult_i32(i32(-1i) * -29010i, u_input.d.x >> (41102u % 32u)));
    let var_3 = ~max(max(~countOneBits(vec4<u32>(25631u, u_input.b, 6553u, u_input.b)), ~(~vec4<u32>(0u, 5779u, 1u, 13021u))), ~(~vec4<u32>(0u, u_input.e.x, u_input.b, u_input.c.x)) ^ abs(vec4<u32>(4294967295u, 1645u, u_input.c.x, u_input.e.x)));
    return Struct_4(global4.d, global4.b, global4.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global4.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1388f))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_4) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a, arg_1.a.b.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.b.x, -489f)))))));
    let var_1 = _wgslsmith_mult_vec2_u32(u_input.c, u_input.c);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1693f + -2731f));
    let var_3 = var_1.x;
    var var_4 = func_1();
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -113f;
    var var_1 = Struct_2(Struct_1(false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1942f, 949f, -950f, global4.a), vec4<f32>(-621f, var_0, 1137f, -744f))), u_input.b));
    let var_2 = var_1.a.b.zzw;
    var var_3 = countOneBits(1i ^ global4.b.x);
    global4 = func_4(global4.c, Struct_2(Struct_1(any(vec3<bool>(false, global1.x, false)), _wgslsmith_f_op_vec4_f32(-var_1.a.b), 58308u)), func_1());
    global3 = func_4(Struct_3(1i), Struct_2(var_1.a), func_4(Struct_3(u_input.d.x), Struct_2(var_1.a), func_4(Struct_3(1i), Struct_2(Struct_1(true, vec4<f32>(-1220f, -1083f, global4.d, var_1.a.b.x), 39730u)), func_1()))).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(max(vec2<u32>(76186u, reverseBits(70192u)), vec2<u32>(var_1.a.c, _wgslsmith_clamp_u32(var_1.a.c, var_1.a.c, 74436u))), vec2<u32>(u_input.e.x, var_1.a.c)), ~(vec4<u32>(1u, _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(u_input.e.x, 8u)], global0[_wgslsmith_index_u32(u_input.e.x, 8u)]), 17118u, _wgslsmith_sub_u32(1u, var_1.a.c)) | vec4<u32>(1u, 1u, 1u, 1u)), -30450i, 14893u);
}

