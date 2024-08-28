struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec3<i32>,
    d: f32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(true, vec3<u32>(50669u, 0u, 0u), vec3<i32>(1i, 0i, i32(-2147483648)), -307f, vec2<i32>(20737i, i32(-2147483648))), Struct_1(false, vec3<u32>(1u, 34494u, 33182u), vec3<i32>(22757i, 1i, -1i), -1000f, vec2<i32>(-1i, 1i)), Struct_1(true, vec3<u32>(32224u, 4294967295u, 56766u), vec3<i32>(1i, 2147483647i, 1i), -1710f, vec2<i32>(-12524i, -9139i)), Struct_1(true, vec3<u32>(4294967295u, 77174u, 4294967295u), vec3<i32>(51838i, 1i, -5122i), 445f, vec2<i32>(-53695i, 1i)), Struct_1(false, vec3<u32>(17114u, 0u, 46284u), vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), -523f, vec2<i32>(-28068i, -35202i)), Struct_1(true, vec3<u32>(47107u, 4294967295u, 0u), vec3<i32>(-1i, 3312i, 0i), 1000f, vec2<i32>(i32(-2147483648), -1i)), Struct_1(true, vec3<u32>(4294967295u, 1u, 4093u), vec3<i32>(-1i, 15854i, i32(-2147483648)), 1302f, vec2<i32>(10930i, -13724i)), Struct_1(false, vec3<u32>(1u, 41217u, 100370u), vec3<i32>(2147483647i, 1i, 2147483647i), -963f, vec2<i32>(1875i, 26062i)), Struct_1(true, vec3<u32>(27096u, 0u, 43976u), vec3<i32>(39453i, 17642i, -12913i), 579f, vec2<i32>(-1i, -22569i)), Struct_1(true, vec3<u32>(0u, 0u, 28505u), vec3<i32>(51537i, 36396i, 12565i), -133f, vec2<i32>(1i, i32(-2147483648))), Struct_1(false, vec3<u32>(4294967295u, 1u, 111372u), vec3<i32>(-1i, 4334i, i32(-2147483648)), 1569f, vec2<i32>(4291i, 29177i)), Struct_1(false, vec3<u32>(26468u, 4294967295u, 33459u), vec3<i32>(30735i, 5086i, -15752i), -924f, vec2<i32>(80006i, 32i)), Struct_1(true, vec3<u32>(1u, 4294967295u, 4294967295u), vec3<i32>(i32(-2147483648), -1i, 44884i), -349f, vec2<i32>(0i, i32(-2147483648))));

var<private> global1: i32;

var<private> global2: bool = true;

var<private> global3: array<vec3<bool>, 1>;

var<private> global4: array<bool, 10> = array<bool, 10>(true, false, false, false, true, true, true, true, false, true);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = arg_3;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 556f, arg_3.d)) - vec3<f32>(285f, arg_2.d, arg_2.d)) * vec3<f32>(_wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_f_op_f32(arg_0.d * -519f), _wgslsmith_f_op_f32(-607f - -1000f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1944f, 1413f, -421f)))));
    let var_2 = 1i;
    return _wgslsmith_f_op_f32(-arg_2.d) == _wgslsmith_f_op_f32(round(116f));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> i32 {
    let var_0 = Struct_2(!select(vec2<bool>(arg_3 <= -10899i, all(global3[_wgslsmith_index_u32(arg_1.b.x, 1u)])), arg_0, arg_0), _wgslsmith_sub_vec4_i32(min(~vec4<i32>(arg_1.e.x, 2147483647i, -2147483647i, -25142i), firstLeadingBit(vec4<i32>(arg_1.e.x, 2647i, 27628i, arg_1.c.x) ^ vec4<i32>(arg_1.c.x, arg_1.c.x, -94395i, arg_3))), ~vec4<i32>(arg_3, arg_1.c.x, arg_3, 0i) | -_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.c.x, -2147483647i, -422i, arg_3), vec4<i32>(-1686i, -2147483647i, -17553i, arg_3))), global0[_wgslsmith_index_u32(u_input.a.x, 13u)], abs(_wgslsmith_clamp_i32(arg_3, min(_wgslsmith_mult_i32(arg_3, -44348i), _wgslsmith_mod_i32(-33192i, -23549i)), firstTrailingBit(1i))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1199f, 758f, var_0.c.a)), arg_2)), 384f))));
    var var_2 = arg_1;
    let var_3 = Struct_3(~(-firstTrailingBit(~var_2.e.x)));
    let var_4 = vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(-var_3.a, select(var_3.a, var_2.c.x, arg_1.a)), 15647i), 25469i, arg_1.e.x), 12381i, arg_3);
    return _wgslsmith_add_i32(1i, ~_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_2.e.x, var_0.d), arg_1.e ^ var_4.yy), _wgslsmith_sub_vec2_i32(firstTrailingBit(arg_1.c.yy), vec2<i32>(var_2.e.x, -1i) ^ vec2<i32>(var_3.a, -26913i))));
}

fn func_2(arg_0: vec4<u32>) -> Struct_3 {
    let var_0 = ~vec3<i32>(0i, func_4(vec2<bool>(false, true), Struct_1(func_3(Struct_1(false, vec3<u32>(u_input.a.x, 814u, u_input.a.x), vec3<i32>(-2147483647i, 17117i, -28435i), -481f, vec2<i32>(-2147483647i, -1i)), vec2<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 10u)], false), Struct_1(true, arg_0.yyw, vec3<i32>(50482i, 2729i, 0i), 1266f, vec2<i32>(0i, 66156i)), global0[_wgslsmith_index_u32(arg_0.x, 13u)]), vec3<u32>(4294967295u, 4294967295u, u_input.a.x), ~vec3<i32>(-19319i, 33046i, -30668i), 566f, reverseBits(vec2<i32>(-38958i, 0i))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(153f)))), 13273i), ~(-1i));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(360f, 387f), _wgslsmith_f_op_f32(839f + -943f)))));
    global1 = 2147483647i;
    let var_2 = Struct_2(!vec2<bool>(!any(vec2<bool>(global4[_wgslsmith_index_u32(15236u, 10u)], global4[_wgslsmith_index_u32(arg_0.x, 10u)])), any(select(vec2<bool>(true, false), vec2<bool>(global4[_wgslsmith_index_u32(arg_0.x, 10u)], false), vec2<bool>(false, global4[_wgslsmith_index_u32(u_input.a.x, 10u)])))), -vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_0.x, 63054i), var_0), ~(-2776i), 1i, -12849i) << (~(~(arg_0 | vec4<u32>(arg_0.x, u_input.a.x, 19235u, 1u))) % vec4<u32>(32u)), Struct_1(!(!any(vec2<bool>(true, global4[_wgslsmith_index_u32(u_input.a.x, 10u)]))), arg_0.wyz | arg_0.xyx, vec3<i32>(-2147483647i, var_0.x, var_0.x) << (vec3<u32>(16537u, 1u, ~u_input.a.x) % vec3<u32>(32u)), var_1.x, vec2<i32>(46818i, ~(1i >> (arg_0.x % 32u)))), firstTrailingBit(~var_0.x));
    let var_3 = var_2.a.x;
    return Struct_3(var_2.c.e.x);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_mod_u32(~_wgslsmith_sub_u32(u_input.a.x, arg_1.b.x), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.b.x, 4294967295u & u_input.a.x), arg_1.b.xy & vec2<u32>(u_input.a.x, u_input.a.x)), _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(10715u, arg_1.b.x), ~u_input.a.x), _wgslsmith_mult_vec2_u32(arg_1.b.xz, vec2<u32>(u_input.a.x, arg_1.b.x)))));
    let var_1 = func_2(~_wgslsmith_add_vec4_u32(~abs(vec4<u32>(var_0, arg_1.b.x, var_0, var_0)), reverseBits(vec4<u32>(4294967295u, arg_1.b.x, 4294967295u, var_0) ^ vec4<u32>(36031u, arg_1.b.x, var_0, 39900u))));
    global0 = array<Struct_1, 13>();
    let var_2 = arg_0;
    let var_3 = Struct_2(!(!(!select(vec2<bool>(global4[_wgslsmith_index_u32(54552u, 10u)], arg_1.a), vec2<bool>(arg_1.a, global4[_wgslsmith_index_u32(u_input.a.x, 10u)]), false))), ~(~vec4<i32>(2147483647i, 2147483647i, func_2(vec4<u32>(var_0, arg_1.b.x, 1u, arg_1.b.x)).a, ~2147483647i)), arg_1, (~(~arg_0.a) & ~(~35972i)) << (29184u % 32u));
    return arg_0.a;
}

fn func_1() -> Struct_3 {
    let var_0 = vec4<bool>(!(u_input.a.x != 16092u), select(true, true, false), all(vec4<bool>(all(vec2<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 10u)], true)) | (94991u <= u_input.a.x), false != global4[_wgslsmith_index_u32(62497u, 10u)], true, !all(vec2<bool>(global4[_wgslsmith_index_u32(41762u, 10u)], global4[_wgslsmith_index_u32(1u, 10u)])))), global4[_wgslsmith_index_u32(52295u, 10u)] && all(!(!vec4<bool>(false, global4[_wgslsmith_index_u32(1u, 10u)], global4[_wgslsmith_index_u32(77255u, 10u)], true))));
    let var_1 = Struct_2(var_0.yx, -vec4<i32>(1i, func_5(func_2(vec4<u32>(87550u, 46149u, u_input.a.x, 34215u)), Struct_1(var_0.x, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(-2147483647i, 0i, 2147483647i), 233f, vec2<i32>(2147483647i, 1i))), ~_wgslsmith_mult_i32(2147483647i, 0i), -2147483647i), Struct_1(global4[_wgslsmith_index_u32(0u, 10u)], vec3<u32>(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 32312u), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x))), u_input.a.x << (u_input.a.x % 32u), u_input.a.x), max(countOneBits(vec3<i32>(-41514i, 2147483647i, 4520i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(0i, 4397i, 1i), vec3<i32>(5942i, 2147483647i, -52523i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -704f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec2<i32>(i32(-1i) * -1i, -11076i)), _wgslsmith_clamp_i32(~2147483647i, _wgslsmith_mult_i32(firstLeadingBit(0i), ~1i), _wgslsmith_clamp_i32(-1i, -841i, 0i) & _wgslsmith_mod_i32(-34369i, 1i)) >> (_wgslsmith_mult_u32(countOneBits(abs(51967u)), u_input.a.x) % 32u));
    var var_2 = Struct_1(func_3(var_1.c, vec2<bool>(true, ~u_input.a.x > (u_input.a.x ^ var_1.c.b.x)), var_1.c, global0[_wgslsmith_index_u32(u_input.a.x, 13u)]), var_1.c.b, min(var_1.b.xwz, vec3<i32>(-_wgslsmith_dot_vec4_i32(var_1.b, vec4<i32>(-1i, var_1.b.x, var_1.c.c.x, var_1.c.c.x)), -2147483647i, -1i)), _wgslsmith_f_op_f32(-var_1.c.d), var_1.c.c.yx);
    let var_3 = var_1.c;
    var var_4 = Struct_1(all(vec4<bool>(!(false & var_0.x), all(vec4<bool>(false, false, true, false)), var_2.b.x < ~var_1.c.b.x, false)), vec3<u32>((34716u & (var_3.b.x & var_1.c.b.x)) << (_wgslsmith_add_u32(var_3.b.x, countOneBits(1u)) % 32u), select(firstTrailingBit(max(48624u, u_input.a.x)), 43384u, var_1.c.d != _wgslsmith_f_op_f32(max(var_3.d, var_3.d))), ~_wgslsmith_mod_u32(var_2.b.x, 4294967295u)), vec3<i32>(-55349i << (u_input.a.x % 32u), var_3.c.x, func_2(~vec4<u32>(63645u, 1u, 0u, var_2.b.x)).a) >> ((_wgslsmith_mult_vec3_u32(vec3<u32>(61274u, u_input.a.x, var_2.b.x), min(var_2.b, vec3<u32>(u_input.a.x, var_2.b.x, 56087u))) | (~var_2.b ^ ~var_1.c.b)) % vec3<u32>(32u)), -136f, vec2<i32>(firstLeadingBit(0i), 35852i) | var_2.e);
    return Struct_3(~var_1.d);
}

fn func_6(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec2<bool>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-750f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -319f)))));
    var var_1 = arg_2.x;
    var var_2 = arg_2.x;
    var_2 = any(!vec4<bool>(true, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_1.xz, arg_1.ww) | _wgslsmith_add_u32(45980u, u_input.a.x), 10u)], all(vec2<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 10u)], false)), false));
    var var_3 = arg_0;
    return vec2<i32>(~28681i, arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_1(), ~_wgslsmith_add_vec4_u32(select(~vec4<u32>(u_input.a.x, 102862u, 0u, u_input.a.x), select(vec4<u32>(u_input.a.x, 55453u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x), vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.a.x, 10u)], false, global4[_wgslsmith_index_u32(16975u, 10u)])), global4[_wgslsmith_index_u32(62646u, 10u)] | global4[_wgslsmith_index_u32(u_input.a.x, 10u)]), vec4<u32>(u_input.a.x, max(u_input.a.x, 64137u), _wgslsmith_mod_u32(4294967295u, u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(32109u, u_input.a.x, 21336u), vec3<u32>(62183u, 2552u, u_input.a.x)))), !vec2<bool>(!(!global4[_wgslsmith_index_u32(4294967295u, 10u)]), !global4[_wgslsmith_index_u32(min(u_input.a.x, 87019u), 10u)]));
    var var_1 = Struct_3(~(-var_0.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1115f, _wgslsmith_f_op_f32(-551f - -598f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(1000f, 1021f, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1415f, 449f) - _wgslsmith_f_op_f32(1204f + 152f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-427f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 3234f) + _wgslsmith_f_op_f32(ceil(883f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1000f, -507f, global4[_wgslsmith_index_u32(11095u, 10u)])))))));
    var var_3 = Struct_2(vec2<bool>(global4[_wgslsmith_index_u32(0u, 10u)], _wgslsmith_f_op_f32(f32(-1f) * -1142f) < _wgslsmith_f_op_f32(step(236f, var_2.x))), _wgslsmith_sub_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.a, var_0.x, 56587i, -23066i), vec4<i32>(2147483647i, -18176i, 2147483647i, var_0.x)) >> (vec4<u32>(max(25026u, 47212u), min(2147u, u_input.a.x), _wgslsmith_mod_u32(19858u, 4254u), u_input.a.x) % vec4<u32>(32u)), vec4<i32>(var_1.a, 1i, _wgslsmith_div_i32(-var_0.x, _wgslsmith_sub_i32(1i, 1i)), ~(~var_1.a))), global0[_wgslsmith_index_u32(1u, 13u)], ~var_1.a);
    var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(972f * 1000f)), var_2.x), 1000f, _wgslsmith_f_op_f32(step(var_3.c.d, -171f)), var_3.c.d);
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1839f, var_2.x, -2517f, 505f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.c.d, var_2.x, -1000f, -155f) * vec4<f32>(var_2.x, 931f, -1158f, 1083f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(572f, var_2.x, -1010f, 1000f))))));
    let var_4 = reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, ~13765i << (u_input.a.x % 32u)), firstTrailingBit(select(~vec2<i32>(var_0.x, -4373i), vec2<i32>(-2147483647i, -55088i), false))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec2<u32>(4294967295u, _wgslsmith_div_u32(~0u, _wgslsmith_add_u32(u_input.a.x, 4294967295u)))), var_3.c.b);
}

