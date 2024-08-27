struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_3,
    c: f32,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<Struct_4, 10> = array<Struct_4, 10>(Struct_4(vec3<bool>(true, false, true)), Struct_4(vec3<bool>(false, false, true)), Struct_4(vec3<bool>(false, true, false)), Struct_4(vec3<bool>(true, false, false)), Struct_4(vec3<bool>(true, false, false)), Struct_4(vec3<bool>(false, false, true)), Struct_4(vec3<bool>(false, false, true)), Struct_4(vec3<bool>(false, true, true)), Struct_4(vec3<bool>(false, true, true)), Struct_4(vec3<bool>(false, false, false)));

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(true, -884f), Struct_1(false, 1211f), Struct_1(false, 732f), Struct_1(false, -384f), Struct_1(true, 425f), Struct_1(true, 940f), Struct_1(true, 932f), Struct_1(false, 579f), Struct_1(true, -1151f), Struct_1(true, -349f), Struct_1(false, -234f), Struct_1(false, 919f), Struct_1(true, -2138f), Struct_1(true, -807f), Struct_1(false, 1075f), Struct_1(true, 1621f), Struct_1(true, -969f), Struct_1(false, -182f), Struct_1(true, 1000f), Struct_1(true, 370f), Struct_1(true, 1389f), Struct_1(true, 536f), Struct_1(false, 615f), Struct_1(true, -142f), Struct_1(false, -1188f), Struct_1(true, -1459f), Struct_1(true, 1713f));

var<private> global2: array<u32, 20> = array<u32, 20>(1u, 96527u, 4294967295u, 22059u, 1u, 4321u, 17954u, 4294967295u, 17123u, 4294967295u, 41060u, 36072u, 4294967295u, 46531u, 22407u, 25550u, 10706u, 0u, 36521u, 83231u);

var<private> global3: Struct_4 = Struct_4(vec3<bool>(true, false, true));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_4) -> u32 {
    global0 = array<Struct_4, 10>();
    global1 = array<Struct_1, 27>();
    let var_0 = true;
    global2 = array<u32, 20>();
    let var_1 = firstLeadingBit(1i);
    return abs(~global2[_wgslsmith_index_u32(4294967295u >> (global2[_wgslsmith_index_u32(abs(~u_input.a), 20u)] % 32u), 20u)]);
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: f32, arg_3: i32) -> vec2<i32> {
    let var_0 = 1i;
    var var_1 = firstLeadingBit(~vec4<u32>(~firstTrailingBit(arg_0), ~4294967295u, arg_0, ~1u));
    global3 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~func_3(global0[_wgslsmith_index_u32(0u, 10u)]) & 15172u), firstLeadingBit(0u), select(_wgslsmith_mod_u32(1u, 24120u), arg_0, all(!(!vec4<bool>(global3.a.x, global3.a.x, false, global3.a.x))))), 10u)];
    global1 = array<Struct_1, 27>();
    let var_2 = abs(~(~vec2<u32>(34178u, u_input.a) << ((~vec2<u32>(var_1.x, 70352u) | _wgslsmith_clamp_vec2_u32(vec2<u32>(85847u, 1u), var_1.wx, vec2<u32>(u_input.a, 13057u))) % vec2<u32>(32u))));
    return firstTrailingBit(~(-(vec2<i32>(36670i, -39790i) & _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1, arg_3), vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(var_0, arg_3)))));
}

fn func_1(arg_0: i32) -> Struct_4 {
    let var_0 = Struct_3(min(~func_2(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(68934u, 20u)], 20u)], 20u)], -1i, 469f, 9680i) << (vec2<u32>(1u, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 20u)]) % vec2<u32>(32u)), vec2<i32>(-1i, ~(~arg_0))), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(max(min(1u, ~u_input.a), global2[_wgslsmith_index_u32(firstTrailingBit(min(global2[_wgslsmith_index_u32(0u, 20u)], 7760u)), 20u)]), u_input.a | _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(13606u, 20u)], _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(1u, 0u))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(89931u, u_input.a, u_input.a), ~vec3<u32>(u_input.a, 4294967295u, u_input.a)), 0u, reverseBits(~u_input.a))), 27u)], -vec3<i32>(1i, ~(~arg_0), firstTrailingBit(-arg_0)));
    var var_1 = !all(!vec4<bool>(any(global3.a), !var_0.b.a, true, all(vec2<bool>(var_0.b.a, false))));
    global0 = array<Struct_4, 10>();
    var var_2 = Struct_2(_wgslsmith_f_op_f32(var_0.b.b - _wgslsmith_f_op_f32(f32(-1f) * -1702f)), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(global2[_wgslsmith_index_u32(6400u, 20u)], global2[_wgslsmith_index_u32(0u, 20u)]), vec2<u32>(global2[_wgslsmith_index_u32(1u, 20u)], ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 20u)], 20u)], 20u)])), 27u)], var_0.b, global2[_wgslsmith_index_u32(~u_input.a, 20u)]);
    global3 = Struct_4(vec3<bool>(false, var_0.b.a, true));
    return global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_2.d, ~countOneBits(92623u)), 10u)];
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    let var_0 = vec2<bool>(true, arg_0.a.x);
    let var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(~_wgslsmith_add_u32(func_3(Struct_4(vec3<bool>(var_0.x, var_0.x, global3.a.x))), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~5617u, 20u)], 20u)]), 4294967295u), ~_wgslsmith_mod_vec2_u32(vec2<u32>(abs(38949u), ~4294967295u), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u) >> (vec2<u32>(u_input.a, global2[_wgslsmith_index_u32(45579u, 20u)]) % vec2<u32>(32u)), ~vec2<u32>(0u, 49762u), vec2<u32>(0u, 64591u))));
    var var_2 = global0[_wgslsmith_index_u32(var_1.x, 10u)];
    let var_3 = global3.a.x;
    let var_4 = func_1(-4066i);
    return Struct_2(_wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-215f, 178f, true)), _wgslsmith_f_op_f32(min(267f, 2063f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -350f)))), Struct_1(arg_0.a.x, 543f), Struct_1(arg_0.a.x, -1232f), ~global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~var_1.x >> (var_1.x % 32u), 52138u), 20u)]);
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: bool) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.b, arg_1.c.b, 322f, arg_1.a)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(324f, -1000f, 234f, arg_1.c.b) * vec4<f32>(arg_1.a, -874f, arg_1.b.b, 585f))), vec4<f32>(arg_1.a, -197f, _wgslsmith_f_op_f32(exp2(arg_1.b.b)), _wgslsmith_f_op_f32(f32(-1f) * -203f)))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(647f, arg_1.a, 117f, 1691f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.b, -333f, -169f, arg_1.c.b)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-2035f, 1176f, 1457f, arg_1.c.b), vec4<f32>(650f, arg_1.c.b, arg_1.b.b, arg_1.c.b)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.c.b, -364f, -482f, arg_1.b.b))))))));
    let var_1 = Struct_5(func_1(-1i).a.yy, Struct_3(~vec2<i32>(38859i, 34802i), Struct_1(arg_1.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * arg_1.b.b) - _wgslsmith_f_op_f32(-331f + 1000f))), max(vec3<i32>(_wgslsmith_clamp_i32(-1i, 23847i, -2147483647i), ~23903i, 0i), reverseBits(countOneBits(vec3<i32>(-1i, -1i, -56888i))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * arg_1.a));
    var var_2 = arg_1;
    var var_3 = vec2<bool>(true, !arg_1.c.a);
    let var_4 = func_2(~_wgslsmith_div_u32(4294967295u, firstLeadingBit(select(var_2.d, 64533u, global3.a.x))), var_1.b.a.x, -296f, var_1.b.a.x).x;
    return var_1.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 10>();
    var var_0 = Struct_3(~vec2<i32>(0i, 1i) >> (~vec2<u32>(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(4294967295u, 20u)], 0u, u_input.a), abs(u_input.a)) % vec2<u32>(32u)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(~71891u, _wgslsmith_clamp_u32(u_input.a, u_input.a, global2[_wgslsmith_index_u32(3600u, 20u)])), abs(global2[_wgslsmith_index_u32(~0u, 20u)]), global2[_wgslsmith_index_u32(~73267u, 20u)], firstLeadingBit(_wgslsmith_mod_u32(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 20u)], 20u)]))), min(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(29760u, 20u)], 20u)]), vec4<u32>(72040u, 4294967295u, 81939u, u_input.a)), abs(~vec4<u32>(global2[_wgslsmith_index_u32(u_input.a, 20u)], 1u, 1u, 4294967295u)))), 27u)], vec3<i32>(-1i) * -vec3<i32>(i32(-1i) * -2147483647i, 0i, 1i));
    global3 = global0[_wgslsmith_index_u32(~0u, 10u)];
    var var_1 = abs(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, 61351u)) & max(~_wgslsmith_div_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(29004u, 20u)], 43450u), vec2<u32>(u_input.a, 1u)), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(global2[_wgslsmith_index_u32(21872u, 20u)], u_input.a)) | vec2<u32>(1u, 1u)));
    let var_2 = -714f;
    var var_3 = ~(~firstLeadingBit(vec2<i32>(_wgslsmith_mod_i32(var_0.a.x, 2147483647i), 15713i)));
    global2 = array<u32, 20>();
    var var_4 = _wgslsmith_mult_vec3_i32(var_0.c, _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_3.x << (var_1.x % 32u), var_3.x, -21997i), var_0.c), vec3<i32>(var_3.x, var_3.x, -min(2147483647i, var_3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(func_5(~4294967295u, func_4(func_1(_wgslsmith_dot_vec2_i32(var_0.a, var_0.c.zx))), global3.a.x));
}

