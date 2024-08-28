struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10>;

var<private> global1: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec3<bool>(false, true, false), vec4<bool>(true, false, false, false)), Struct_2(vec3<bool>(false, false, false), vec4<bool>(true, false, false, false)), Struct_2(vec3<bool>(false, true, false), vec4<bool>(false, false, false, false)), Struct_2(vec3<bool>(false, false, true), vec4<bool>(false, true, true, false)));

var<private> global2: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(-1i, 51379u), Struct_1(2147483647i, 57663u), Struct_1(i32(-2147483648), 1u), Struct_1(0i, 4294967295u), Struct_1(1i, 4294967295u), Struct_1(2147483647i, 0u), Struct_1(58561i, 1u), Struct_1(28875i, 27563u), Struct_1(23943i, 1u), Struct_1(2147483647i, 4294967295u), Struct_1(1i, 39252u), Struct_1(-1i, 357u), Struct_1(-1i, 4294967295u), Struct_1(1i, 1u), Struct_1(-5740i, 3117u), Struct_1(45448i, 0u), Struct_1(-19614i, 100712u), Struct_1(i32(-2147483648), 4294967295u), Struct_1(4166i, 0u), Struct_1(-1i, 26145u), Struct_1(314i, 11441u));

var<private> global3: array<u32, 19> = array<u32, 19>(0u, 68914u, 0u, 4294967295u, 0u, 139437u, 4294967295u, 37792u, 1u, 0u, 1u, 51572u, 0u, 15397u, 13352u, 1u, 8265u, 7633u, 1u);

var<private> global4: array<i32, 10>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = ~firstTrailingBit(-_wgslsmith_add_vec3_i32(-u_input.a, -u_input.a));
    let var_1 = _wgslsmith_div_vec3_u32(~(~(~abs(vec3<u32>(4294967295u, arg_3.b, 18211u)))), ~(~(~u_input.e.wzy | u_input.e.zyw)));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.e.yxy, _wgslsmith_mod_vec3_u32(~(~vec3<u32>(4294967295u, 50288u, u_input.c)), vec3<u32>(4294967295u, firstLeadingBit(var_1.x), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 16273u), u_input.b)) << ((~u_input.e.wxx >> ((u_input.e.xzy ^ var_1) % vec3<u32>(32u))) % vec3<u32>(32u)))), 21u)];
    let var_3 = global1[_wgslsmith_index_u32(3289u, 4u)];
    var var_4 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_1.zz, _wgslsmith_div_vec2_u32(abs(vec2<u32>(min(arg_3.b, 1u), 82050u)), ~var_1.xx)), 4u)];
    return _wgslsmith_div_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(-974f + _wgslsmith_f_op_f32(abs(-1047f)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(-1765f)), 1f));
}

fn func_2(arg_0: i32, arg_1: i32) -> f32 {
    global3 = array<u32, 19>();
    global3 = array<u32, 19>();
    let var_0 = 66286u;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1525f, 999f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-851f, 856f) * vec2<f32>(190f, -873f)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(u_input.e, global3[_wgslsmith_index_u32(var_0, 19u)], global2[_wgslsmith_index_u32(4294967295u, 21u)], global2[_wgslsmith_index_u32(var_0, 21u)])), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-175f, 636f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(2228f, -1000f), vec2<f32>(-593f, -603f))))), all(vec3<bool>(false, true, false))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-542f, _wgslsmith_f_op_f32(-1083f + -593f))));
    global4 = array<i32, 10>();
    return var_1.x;
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(func_2(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 19u)], 10u)], u_input.a.x));
    global4 = array<i32, 10>();
    var var_1 = select(arg_2.b.xzx, !vec3<bool>(false | all(arg_2.a), all(select(arg_2.b, arg_2.b, arg_0)), false), arg_2.b.x | true);
    var_1 = arg_2.b.zwz;
    let var_2 = firstLeadingBit(firstTrailingBit(~_wgslsmith_clamp_vec4_i32(~vec4<i32>(2147483647i, -35311i, -8082i, -1546i), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 19234i, -2147483647i, u_input.a.x), vec4<i32>(u_input.a.x, 4841i, -1i, 39620i)), select(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, -13038i), vec4<i32>(u_input.a.x, u_input.a.x, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d, 19u)], 10u)], global4[_wgslsmith_index_u32(u_input.b.x, 10u)]), arg_0))));
    return global0[_wgslsmith_index_u32(~0u, 10u)];
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> i32 {
    var var_0 = firstLeadingBit(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~(vec3<u32>(1u, u_input.e.x, u_input.b.x) >> (u_input.e.yxx % vec3<u32>(32u))), select(u_input.e.zzw << (u_input.e.xwz % vec3<u32>(32u)), max(vec3<u32>(global3[_wgslsmith_index_u32(0u, 19u)], 41000u, 1u), vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(0u, 19u)], 40641u)), arg_1.a)), _wgslsmith_sub_vec3_u32(u_input.e.yxx, u_input.e.xyx)), 10u)]);
    return reverseBits(0i);
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: f32) -> vec4<bool> {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~18256u, global3[_wgslsmith_index_u32(~(~1u), 19u)]), 10u)];
    global3 = array<u32, 19>();
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(199f, arg_2)), arg_2) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(610f, -735f) + vec2<f32>(arg_2, arg_2)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-3314f, arg_2)))))));
    let var_2 = vec4<f32>(var_1.x, -1949f, var_1.x, var_1.x);
    let var_3 = 0i | ((-51440i ^ (1i << (~u_input.e.x % 32u))) ^ ~(_wgslsmith_div_i32(u_input.a.x, arg_0.x) & -2147483647i));
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-2147483647i, ~global3[_wgslsmith_index_u32(u_input.d, 19u)]);
    let var_1 = Struct_2(!select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), var_0.b == 12278u), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), true), func_5(vec4<i32>(func_4(_wgslsmith_f_op_f32(349f - 1411f), func_1(false, vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(56039u, 19u)], 19u)], 33393u), Struct_2(vec3<bool>(false, true, true), vec4<bool>(false, true, true, false)))), max(var_0.a, global4[_wgslsmith_index_u32(6541u, 10u)]), var_0.a, _wgslsmith_mult_i32(global4[_wgslsmith_index_u32(0u, 10u)], abs(u_input.a.x))), global0[_wgslsmith_index_u32(select(15861u, firstLeadingBit(_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(115048u, 19u)], 19u)], var_0.b, 25854u)), all(vec3<bool>(false, false, false)) != true), 10u)], -474f));
    global2 = array<Struct_1, 21>();
    var var_2 = select(vec4<bool>(var_1.a.x, true, ~abs(6021i) > (_wgslsmith_add_i32(1i, global4[_wgslsmith_index_u32(var_0.b, 10u)]) << (min(42702u, global3[_wgslsmith_index_u32(30415u, 19u)]) % 32u)), var_1.b.x), var_1.b, true);
    let var_3 = ~(vec4<i32>(reverseBits(u_input.a.x), ~17618i, 15428i, -var_0.a) & firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a, u_input.a.x, 0i, var_0.a) & vec4<i32>(var_0.a, global4[_wgslsmith_index_u32(0u, 10u)], var_0.a, var_0.a), vec4<i32>(1i, 16355i, var_0.a, var_0.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(-27716i, var_0.a, -56996i, global4[_wgslsmith_index_u32(var_0.b, 10u)]), vec4<i32>(0i, -18555i, 1i, 2147483647i), vec4<i32>(-3445i, -2147483647i, 34528i, var_0.a)))));
    global1 = array<Struct_2, 4>();
    global3 = array<u32, 19>();
    var var_4 = countOneBits(abs(_wgslsmith_clamp_u32(28876u, firstTrailingBit(max(24420u, 1u)), ~(~83948u))));
    var_4 = 44579u;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(9067i, 0i, global4[_wgslsmith_index_u32(u_input.b.x, 10u)], 9304i), var_3), var_3), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1268f), -155f, _wgslsmith_f_op_f32(abs(-231f))));
}

