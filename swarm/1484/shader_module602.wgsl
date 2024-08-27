struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12>;

var<private> global1: array<i32, 15> = array<i32, 15>(-6282i, 10618i, 5959i, -1i, -3126i, -25726i, -38240i, 63962i, -19764i, 0i, -1i, 2147483647i, 52356i, 2147483647i, -24488i);

var<private> global2: vec4<bool>;

var<private> global3: Struct_2 = Struct_2(Struct_1(16498i), 0u, -1129f);

var<private> global4: array<vec4<u32>, 26> = array<vec4<u32>, 26>(vec4<u32>(72623u, 1u, 54563u, 81661u), vec4<u32>(10560u, 4294967295u, 1u, 4294967295u), vec4<u32>(1u, 4294967295u, 1u, 53609u), vec4<u32>(77729u, 4294967295u, 1u, 145u), vec4<u32>(0u, 4294967295u, 43529u, 67070u), vec4<u32>(38211u, 66262u, 1u, 4294967295u), vec4<u32>(0u, 0u, 43332u, 22579u), vec4<u32>(25380u, 0u, 1u, 61272u), vec4<u32>(43159u, 68868u, 4294967295u, 4294967295u), vec4<u32>(68639u, 90075u, 93774u, 4294967295u), vec4<u32>(10589u, 1u, 0u, 0u), vec4<u32>(0u, 1u, 41236u, 27339u), vec4<u32>(4294967295u, 26124u, 4294967295u, 0u), vec4<u32>(4294967295u, 1u, 32407u, 4294967295u), vec4<u32>(118801u, 1533u, 0u, 0u), vec4<u32>(54918u, 1u, 70040u, 18042u), vec4<u32>(1u, 35105u, 31631u, 706u), vec4<u32>(4294967295u, 32680u, 4294967295u, 0u), vec4<u32>(1u, 21564u, 17284u, 41879u), vec4<u32>(43688u, 4294967295u, 60664u, 1u), vec4<u32>(85465u, 4294967295u, 26096u, 4294967295u), vec4<u32>(1u, 0u, 1u, 11759u), vec4<u32>(46556u, 1u, 0u, 10108u), vec4<u32>(1u, 64908u, 334u, 6879u), vec4<u32>(1u, 1u, 4294967295u, 0u), vec4<u32>(1u, 0u, 0u, 1844u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    global3 = global0[_wgslsmith_index_u32(0u, 12u)];
    global1 = array<i32, 15>();
    let var_0 = global3.a;
    global2 = !select(!vec4<bool>(true, true, global3.c != global3.c, any(global2.zz)), vec4<bool>(4294967295u <= u_input.a.x, any(vec3<bool>(global2.x, true, false)), false, true), vec4<bool>(true, false, _wgslsmith_f_op_f32(-317f - global3.c) == -1366f, global2.x));
    let var_1 = Struct_2(Struct_1(abs(13843i)), (~u_input.a.x | 86621u) << (~(63802u & global3.b) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.c + 1291f)), global3.c))));
    return global0[_wgslsmith_index_u32(min(~(1u >> (_wgslsmith_clamp_u32(u_input.a.x & 33311u, min(global3.b, u_input.a.x), ~0u) % 32u)), firstLeadingBit(1u)), 12u)];
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1) -> vec3<f32> {
    var var_0 = arg_0.c;
    var var_1 = Struct_2(global3.a, 4294967295u, arg_0.c);
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, -113f, 1125f), vec3<f32>(arg_1, 1000f, global3.c))) * vec3<f32>(139f, _wgslsmith_f_op_f32(min(global3.c, -788f)), -233f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-854f, arg_1, 436f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-635f, -543f, var_1.c))))));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~u_input.a, ~(~vec2<u32>(var_1.b, var_1.b << (var_1.b % 32u)))), 12u)];
    var var_4 = func_2(-abs(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(arg_0.a.a, 1i)), ~vec2<i32>(global1[_wgslsmith_index_u32(arg_0.b, 15u)], -1i))));
    return var_2;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = 544f;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_1(global0[_wgslsmith_index_u32(global3.b, 12u)], global3.c, global3.a)), _wgslsmith_div_vec3_f32(vec3<f32>(1000f, global3.c, global3.c), vec3<f32>(-831f, -319f, -258f)), global2.wwz)) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_1(Struct_2(global3.a, global3.b, global3.c), 1696f, global3.a))))), global3.a), 39437u, global3.c);
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, ~4294967295u, 107791u), ~vec3<u32>(_wgslsmith_div_u32(var_0.b, var_0.b), max(16134u, global3.b), firstLeadingBit(23876u))) >> (~(~(~firstTrailingBit(global3.b))) % 32u), 12u)];
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global3.b, abs(global3.b)) | 22282u, 12u)];
    let var_2 = Struct_1(abs(-(~1i)));
    let var_3 = global2.x;
    let x = u_input.a;
    s_output = StorageBuffer(global3.b, reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(func_3(vec3<f32>(701f, 1000f, var_1.c), Struct_1(var_0.a.a)).a, -23320i), min(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(9676i, 0i), vec2<i32>(var_2.a, global1[_wgslsmith_index_u32(u_input.a.x, 15u)])), select(vec2<i32>(var_2.a, global1[_wgslsmith_index_u32(u_input.a.x, 15u)]), vec2<i32>(var_2.a, 0i), global2.zx)), _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(var_0.a.a, 12735i)) | _wgslsmith_clamp_vec2_i32(vec2<i32>(global3.a.a, 0i), vec2<i32>(-1i, -29969i), vec2<i32>(global1[_wgslsmith_index_u32(var_0.b, 15u)], 0i)))));
}

