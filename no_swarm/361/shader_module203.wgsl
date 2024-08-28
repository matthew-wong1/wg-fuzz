struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec4<u32>(28209u, 17769u, 31418u, 1u)), Struct_1(vec4<u32>(0u, 1u, 0u, 1u)), Struct_1(vec4<u32>(17946u, 52804u, 0u, 19425u)), Struct_1(vec4<u32>(1u, 38906u, 77627u, 21291u)), Struct_1(vec4<u32>(38101u, 34296u, 21759u, 0u)), Struct_1(vec4<u32>(0u, 0u, 5878u, 24595u)), Struct_1(vec4<u32>(1u, 1u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(49780u, 6219u, 0u, 4294967295u)), Struct_1(vec4<u32>(12405u, 1875u, 4294967295u, 0u)), Struct_1(vec4<u32>(8459u, 34275u, 0u, 8567u)), Struct_1(vec4<u32>(4294967295u, 12213u, 118056u, 0u)), Struct_1(vec4<u32>(39297u, 8077u, 4294967295u, 26475u)), Struct_1(vec4<u32>(40284u, 0u, 18514u, 4294967295u)), Struct_1(vec4<u32>(43453u, 0u, 4294967295u, 32165u)), Struct_1(vec4<u32>(4294967295u, 7744u, 7879u, 74370u)), Struct_1(vec4<u32>(0u, 77207u, 32614u, 4961u)), Struct_1(vec4<u32>(1u, 15022u, 7907u, 1u)), Struct_1(vec4<u32>(6129u, 4294967295u, 4294967295u, 0u)), Struct_1(vec4<u32>(4294967295u, 0u, 0u, 0u)), Struct_1(vec4<u32>(46731u, 6374u, 60554u, 1u)), Struct_1(vec4<u32>(1u, 4294967295u, 1u, 0u)), Struct_1(vec4<u32>(85626u, 4294967295u, 0u, 4294967295u)));

var<private> global3: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec4<u32>(72562u, 28393u, 0u, 0u)), Struct_1(vec4<u32>(46288u, 1u, 0u, 18915u)), Struct_1(vec4<u32>(16105u, 0u, 0u, 55759u)), Struct_1(vec4<u32>(0u, 4294967295u, 0u, 48498u)), Struct_1(vec4<u32>(1u, 1u, 31500u, 8279u)), Struct_1(vec4<u32>(0u, 100773u, 4294967295u, 7296u)), Struct_1(vec4<u32>(4111u, 23632u, 15018u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 25160u, 83767u, 0u)), Struct_1(vec4<u32>(4294967295u, 1u, 18686u, 0u)), Struct_1(vec4<u32>(46026u, 29811u, 4294967295u, 8163u)), Struct_1(vec4<u32>(1u, 67451u, 6395u, 53579u)), Struct_1(vec4<u32>(1u, 4294967295u, 0u, 50695u)), Struct_1(vec4<u32>(0u, 1u, 1u, 1u)), Struct_1(vec4<u32>(0u, 9914u, 1u, 16333u)), Struct_1(vec4<u32>(29225u, 0u, 0u, 9998u)), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 1u)), Struct_1(vec4<u32>(0u, 2300u, 4294967295u, 1u)), Struct_1(vec4<u32>(0u, 36274u, 2725u, 54451u)), Struct_1(vec4<u32>(9415u, 24295u, 41250u, 4294967295u)));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    var var_0 = vec2<f32>(-1036f, _wgslsmith_f_op_f32(-1f));
    let var_1 = firstLeadingBit(~max(vec3<i32>(_wgslsmith_mod_i32(16563i, u_input.c.x), abs(3558i), i32(-1i) * -33952i), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.c.x, u_input.a) >> (vec3<u32>(0u, 4294967295u, 1u) % vec3<u32>(32u)), vec3<i32>(u_input.c.x, u_input.a, -1i) << (vec3<u32>(99825u, 0u, 4294967295u) % vec3<u32>(32u)))));
    var var_2 = vec3<bool>(global1.x, any(select(select(!global1.xw, vec2<bool>(global1.x, false), vec2<bool>(true, true)), global1.xy, !vec2<bool>(false, global1.x))), global1.x);
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), vec2<f32>(var_0.x, var_0.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(675f, -1000f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1143f), _wgslsmith_f_op_f32(var_0.x - var_0.x))))) - vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) - _wgslsmith_f_op_f32(select(-1107f, var_0.x, true))))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(abs(231f)), 1507f);
    return _wgslsmith_mult_u32(u_input.b.x | global0.x, abs(_wgslsmith_dot_vec2_u32(~(vec2<u32>(0u, global0.x) | u_input.b.wy), abs(_wgslsmith_sub_vec2_u32(vec2<u32>(54790u, 60267u), vec2<u32>(4956u, global0.x))))));
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_1 {
    var var_0 = ~((~1u ^ ~global0.x) & 1u) ^ (41631u ^ ~u_input.b.x);
    global2 = array<Struct_1, 22>();
    var var_1 = global2[_wgslsmith_index_u32(func_3(), 22u)];
    global0 = var_1.a.yzw;
    return Struct_1(vec4<u32>(2119u, var_1.a.x, _wgslsmith_dot_vec4_u32(var_1.a, _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.a.x, 1u, u_input.b.x, 0u), var_1.a)), 4294967295u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    global3 = array<Struct_1, 19>();
    let var_0 = ~arg_3;
    global0 = (~select(vec3<u32>(global0.x, 13713u, arg_1.a.x), arg_0.a.zzw, global1.x) | arg_0.a.wzy) << (arg_2.a.yzx % vec3<u32>(32u));
    var var_1 = func_2(countOneBits(var_0), reverseBits(-2147483647i));
    var var_2 = arg_2;
    return func_2(-1i, var_0);
}

fn func_1(arg_0: vec3<bool>, arg_1: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -198f);
    global0 = vec3<u32>(reverseBits(u_input.b.x), ~countOneBits(~(~91098u)), global0.x << (1u % 32u));
    let var_1 = func_4(global2[_wgslsmith_index_u32(u_input.b.x, 22u)], func_2(abs(u_input.c.x), countOneBits(_wgslsmith_div_i32(firstTrailingBit(-2147483647i), _wgslsmith_mult_i32(u_input.c.x, 56817i)))), Struct_1(vec4<u32>(global0.x, ~(~85868u), 4294967295u, global0.x)), firstLeadingBit(u_input.c.x));
    let var_2 = Struct_1(~(~(~max(u_input.b, vec4<u32>(global0.x, var_1.a.x, 40238u, 1u)))));
    global0 = var_2.a.wwy;
    return Struct_1(_wgslsmith_add_vec4_u32(select(~(~u_input.b), var_2.a, false), max(~(~u_input.b), ~vec4<u32>(37779u, var_2.a.x, var_2.a.x, 30647u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    global3 = array<Struct_1, 19>();
    var var_1 = global2[_wgslsmith_index_u32(~countOneBits(1u), 22u)];
    var var_2 = -2147483647i;
    let var_3 = func_1(select(select(global1.xxz, global1.wyz, all(vec4<bool>(false, true, global1.x, global1.x))), vec3<bool>(true, global1.x, select(false, global1.x, global1.x)), true), global1.x);
    let var_4 = _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, 2147483647i, -countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 9704i, u_input.c.x), vec3<i32>(-27246i, u_input.a, u_input.a))), reverseBits(i32(-1i) * -u_input.a)), ~(~(-(~vec4<i32>(2147483647i, u_input.a, 14939i, u_input.a)))));
    var var_5 = vec2<u32>(var_3.a.x, _wgslsmith_sub_u32(4294967295u, u_input.b.x >> (1u % 32u)) | (40733u << (firstTrailingBit(~global0.x) % 32u)));
    global1 = !vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-972f - 1078f)) == _wgslsmith_f_op_f32(select(-1000f, -1000f, false == global1.x)), global1.x, !global1.x, _wgslsmith_mult_u32(global0.x, firstLeadingBit(var_1.a.x)) < func_1(global1.yzw, true).a.x);
    let x = u_input.a;
    s_output = StorageBuffer(56833u, firstLeadingBit(var_4.x), var_4.x, var_0.x >> (((u_input.b.x >> (abs(43194u) % 32u)) | global0.x) % 32u), var_0.x);
}

