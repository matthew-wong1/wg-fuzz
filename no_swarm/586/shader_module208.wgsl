struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: f32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(Struct_1(18821u, -1300f, -639f, vec4<i32>(0i, 1i, 30955i, -8523i)), -1167f, Struct_2(Struct_1(0u, 418f, -2386f, vec4<i32>(-40354i, 2147483647i, -1i, i32(-2147483648))), vec4<f32>(-1942f, -498f, -519f, -320f), 491f, vec4<f32>(-2260f, -556f, 518f, 173f))), Struct_3(Struct_1(8487u, -507f, 944f, vec4<i32>(-2421i, i32(-2147483648), i32(-2147483648), -17351i)), 2053f, Struct_2(Struct_1(1u, 981f, -952f, vec4<i32>(0i, -46583i, -9014i, 2147483647i)), vec4<f32>(-994f, 326f, 408f, 1000f), 240f, vec4<f32>(695f, 539f, -1000f, 102f))));

var<private> global1: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(27897u, -216f, -2761f, vec4<i32>(48606i, 1i, -14187i, -11942i)), Struct_1(17184u, 1037f, -912f, vec4<i32>(-1i, -1i, 0i, 9693i)), Struct_1(1u, -226f, 240f, vec4<i32>(28i, 0i, -4628i, 35007i)), Struct_1(1u, 1616f, -615f, vec4<i32>(-1i, 2147483647i, -1i, i32(-2147483648))), Struct_1(0u, -2222f, 818f, vec4<i32>(-457i, 14964i, 97200i, i32(-2147483648))), Struct_1(33u, -684f, -101f, vec4<i32>(2147483647i, 1i, -1i, -14847i)), Struct_1(2631u, -1390f, 280f, vec4<i32>(-51788i, 63132i, -29021i, -1i)), Struct_1(0u, -1000f, 388f, vec4<i32>(41074i, i32(-2147483648), 20929i, 2147483647i)), Struct_1(0u, 557f, 960f, vec4<i32>(500i, -44506i, -50461i, 36334i)), Struct_1(36516u, -1000f, -452f, vec4<i32>(-17737i, 2147483647i, -50035i, -1000i)));

var<private> global2: f32 = 1651f;

var<private> global3: vec3<bool> = vec3<bool>(true, true, true);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_1(u_input.b, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -710f) * 550f), -899f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(min(-457f, 104f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-652f * -1412f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1599f - _wgslsmith_f_op_f32(f32(-1f) * -1513f)), _wgslsmith_f_op_f32(f32(-1f) * -1222f)))), vec4<i32>(-1i) * -(~_wgslsmith_div_vec4_i32(vec4<i32>(0i, 32857i, 21030i, 1i), vec4<i32>(u_input.e.x, u_input.e.x, u_input.a, u_input.d))));
    global0 = array<Struct_3, 2>();
    var var_1 = var_0;
    let var_2 = ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(46371i, 2147483647i), var_1.d.xy) << (~4294967295u % 32u), (i32(-1i) * -2147483647i) << (~_wgslsmith_sub_u32(var_0.a, 1u) % 32u), _wgslsmith_sub_i32(u_input.c.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a, 49343u), vec2<u32>(28688u, 4294967295u)) % 32u), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(var_1.d.zyz, var_1.d.wyy), vec3<i32>(20990i, var_0.d.x, var_0.d.x))));
    global3 = !select(vec3<bool>(true | (global3.x | global3.x), any(!vec2<bool>(global3.x, true)), max(u_input.b, 41127u) > max(var_0.a, u_input.b)), select(!select(vec3<bool>(global3.x, false, false), vec3<bool>(true, true, global3.x), vec3<bool>(global3.x, global3.x, true)), vec3<bool>(true, !global3.x, !global3.x), !(var_1.d.x < -24996i)), var_1.b == _wgslsmith_f_op_f32(-var_1.c));
    return _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1252f + _wgslsmith_f_op_f32(-var_1.c)))), var_0.c, -699f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_1.c)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: i32) -> Struct_2 {
    var var_0 = arg_2.x;
    let var_1 = select(vec3<bool>(any(select(vec3<bool>(arg_2.x, arg_2.x, arg_2.x), vec3<bool>(true, global3.x, false), !vec3<bool>(global3.x, true, true))), true, -580f >= _wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(min(arg_0.b, arg_1.b)))), !(!(!vec3<bool>(arg_2.x, false, true))), false);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_3()))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, arg_0.c, arg_0.c, arg_0.c)))))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.c, -1000f, arg_1.c, arg_1.b))), vec4<f32>(arg_0.c, arg_0.c, arg_1.c, arg_1.c))))))));
    var_0 = any(vec2<bool>(false, arg_2.x));
    var var_3 = vec3<u32>(~arg_1.a, _wgslsmith_div_u32(min(u_input.b, arg_0.a ^ arg_1.a), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, arg_1.a, 0u), ~vec3<u32>(105862u, 1u, 1u))), arg_1.a) << (_wgslsmith_add_vec3_u32(min(max(~vec3<u32>(arg_0.a, 0u, 4294967295u), vec3<u32>(4294967295u, 62624u, 1u)), _wgslsmith_sub_vec3_u32(~vec3<u32>(arg_1.a, arg_1.a, 4294967295u), select(vec3<u32>(4294967295u, u_input.b, arg_1.a), vec3<u32>(107389u, 15471u, 0u), global3.x))), vec3<u32>(u_input.b, 0u, _wgslsmith_clamp_u32(1u, 9529u, _wgslsmith_mult_u32(u_input.b, arg_1.a)))) % vec3<u32>(32u));
    return Struct_2(Struct_1(~arg_1.a, var_2.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec4_f32(func_3()).x)), vec4<i32>(~arg_0.d.x, u_input.a, abs(1i), ~countOneBits(arg_1.d.x))), _wgslsmith_f_op_vec4_f32(trunc(var_2)), _wgslsmith_f_op_f32(max(434f, -309f)), var_2);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: bool, arg_3: i32) -> Struct_1 {
    var var_0 = !vec4<bool>(!all(!vec4<bool>(false, true, global3.x, true)), all(!(!vec4<bool>(false, arg_2, global3.x, true))), any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, arg_0.x), vec3<bool>(arg_2, true, false), false), select(vec3<bool>(global3.x, arg_0.x, false), vec3<bool>(arg_2, global3.x, false), vec3<bool>(true, arg_2, global3.x)))), max(func_2(arg_1.a, Struct_1(u_input.b, arg_1.c, arg_1.c, u_input.e), arg_0, -2147483647i).a.a, 32634u) > u_input.b);
    var var_1 = !any(!var_0.wyz);
    let var_2 = _wgslsmith_f_op_f32(round(arg_1.d.x));
    var var_3 = 1i;
    let var_4 = vec2<i32>(abs(~(~_wgslsmith_mult_i32(arg_1.a.d.x, arg_3))), arg_1.a.d.x);
    return Struct_1(10530u, 663f, arg_1.c, arg_1.a.d);
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> Struct_2 {
    global3 = select(!select(!vec3<bool>(false, arg_0, false), select(!vec3<bool>(arg_0, false, global3.x), !vec3<bool>(arg_0, false, arg_0), select(vec3<bool>(false, false, true), vec3<bool>(arg_0, global3.x, global3.x), global3.x)), false), !select(!select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(false, global3.x, global3.x), arg_0), !select(vec3<bool>(true, global3.x, global3.x), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), !global3.x && global3.x), global3.x);
    var var_0 = abs(u_input.b);
    global1 = array<Struct_1, 10>();
    var_0 = 1u;
    global0 = array<Struct_3, 2>();
    return func_2(func_4(global3.zz, func_2(func_2(arg_1, Struct_1(arg_1.a, arg_1.c, -917f, vec4<i32>(arg_1.d.x, u_input.a, u_input.c.x, u_input.c.x)), global3.xx, -13985i).a, arg_1, select(global3.zy, !vec2<bool>(false, arg_0), true), 13846i), !arg_0, u_input.a), global1[_wgslsmith_index_u32(~(~countOneBits(0u)), 10u)], !select(global3.xz, !vec2<bool>(arg_0, false), all(vec4<bool>(true, true, true, true))), _wgslsmith_add_i32(arg_1.d.x, _wgslsmith_mult_i32(firstTrailingBit(i32(-1i) * -2147483647i), _wgslsmith_mult_i32(arg_1.d.x, 1i))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> u32 {
    global3 = vec3<bool>(any(vec3<bool>(any(select(vec3<bool>(global3.x, global3.x, false), vec3<bool>(true, global3.x, true), global3.x)), global3.x, false)), global3.x, 0i != (arg_0.d.x ^ -29533i));
    let var_0 = arg_0.d.x;
    global3 = vec3<bool>(true | (_wgslsmith_f_op_f32(select(arg_0.b, _wgslsmith_f_op_f32(round(arg_0.c)), global3.x)) > _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(abs(-243f)))), any(vec2<bool>(true, false)), !any(select(vec2<bool>(false, global3.x), global3.xx, !vec2<bool>(global3.x, global3.x))));
    var var_1 = func_5(global3.x, func_4(global3.zx, func_2(arg_0, global1[_wgslsmith_index_u32(u_input.b, 10u)], global3.zy, arg_1.x), all(vec2<bool>(select(global3.x, false, global3.x), true)), ~_wgslsmith_mod_i32(7846i, var_0)));
    global0 = array<Struct_3, 2>();
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec3<bool>(global3.x, true, any(vec4<bool>(any(global3.xx), any(!vec4<bool>(global3.x, true, global3.x, false)), all(vec3<bool>(false, global3.x, global3.x)), !global3.x)));
    var var_0 = Struct_2(Struct_1(_wgslsmith_mult_u32(func_1(global1[_wgslsmith_index_u32(u_input.b, 10u)], u_input.e), ~reverseBits(4294967295u)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 411f, _wgslsmith_div_vec4_i32(u_input.e, _wgslsmith_mod_vec4_i32(-u_input.e, -vec4<i32>(u_input.a, 18819i, 2147483647i, -84382i)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1280f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1230f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(435f, 736f)) + _wgslsmith_f_op_f32(min(-386f, -691f))))), _wgslsmith_f_op_f32(-524f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -461f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1209f) * _wgslsmith_f_op_f32(f32(-1f) * -1183f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1994f + 261f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-733f * _wgslsmith_f_op_vec4_f32(func_3()).x))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-492f, -173f, -1000f, 596f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(488f, -979f, -1826f, -516f))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(743f, -596f, 181f, 818f))))))));
    var var_1 = countOneBits(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(64111u, 2871u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 43046u, u_input.b)), ~vec4<u32>(4294967295u, var_0.a.a, u_input.b, var_0.a.a)), u_input.b), var_0.a.a, _wgslsmith_div_u32(_wgslsmith_div_u32(var_0.a.a, firstTrailingBit(var_0.a.a)), 53646u)));
    var_1 = _wgslsmith_mult_vec3_u32(firstTrailingBit(~vec3<u32>(4294967295u, u_input.b, var_0.a.a) & reverseBits(vec3<u32>(4294967295u, var_0.a.a, var_1.x))) & select(~vec3<u32>(4294967295u, var_1.x, 59368u), vec3<u32>(u_input.b, func_2(Struct_1(4294967295u, -466f, var_0.c, u_input.e), Struct_1(1u, var_0.b.x, var_0.c, vec4<i32>(1i, u_input.d, -29590i, 0i)), global3.xy, u_input.a).a.a, var_1.x), select(vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(false, global3.x, global3.x), any(global3.yy))), ~vec3<u32>((var_0.a.a & var_1.x) >> ((var_0.a.a << (0u % 32u)) % 32u), 1031u, countOneBits(25514u & var_0.a.a)));
    var_0 = func_5(global3.x, global1[_wgslsmith_index_u32(4294967295u, 10u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32((_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 97u, u_input.b), vec3<u32>(88525u, var_1.x, 4294967295u)) << (max(vec3<u32>(var_1.x, var_1.x, var_1.x), vec3<u32>(66215u, var_0.a.a, var_0.a.a)) % vec3<u32>(32u))) | vec3<u32>(4294967295u, var_1.x, reverseBits(12888u)), ~(vec3<u32>(var_0.a.a, var_0.a.a, 0u) >> (vec3<u32>(u_input.b, 4294967295u, 1u) % vec3<u32>(32u))) | _wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(111509u, var_0.a.a, var_1.x)), min(vec3<u32>(27077u, 63220u, 16389u), vec3<u32>(var_0.a.a, 1u, var_0.a.a))), vec3<u32>(u_input.b, abs(var_0.a.a), countOneBits(0u)) >> (reverseBits(vec3<u32>(1u, var_0.a.a, 20997u) ^ vec3<u32>(0u, var_1.x, 4294967295u)) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.b.x)) - _wgslsmith_f_op_f32(trunc(var_0.a.c)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1575f, -132f), vec2<f32>(var_0.d.x, 438f)))))))), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -select(u_input.e.ywx, vec3<i32>(var_0.a.d.x, 1i, u_input.d), true), countOneBits(vec3<i32>(u_input.d, -8220i, u_input.d) >> (vec3<u32>(1u, var_0.a.a, var_1.x) % vec3<u32>(32u))) >> (vec3<u32>(min(var_1.x, var_1.x), _wgslsmith_div_u32(4294967295u, 52056u), 14221u) % vec3<u32>(32u))), firstTrailingBit(var_0.a.d.zw));
}

