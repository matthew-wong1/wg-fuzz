struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29>;

var<private> global1: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(false, -16846i, 7659u), Struct_1(true, 11434i, 22987u), Struct_1(false, 0i, 4294967295u), Struct_1(true, i32(-2147483648), 0u), Struct_1(false, 4407i, 4294967295u), Struct_1(false, i32(-2147483648), 4294967295u), Struct_1(false, -22996i, 13155u), Struct_1(true, 0i, 0u), Struct_1(false, 0i, 33850u), Struct_1(true, i32(-2147483648), 0u), Struct_1(false, 0i, 1110u), Struct_1(true, -482i, 15596u), Struct_1(false, 2147483647i, 2567u), Struct_1(true, 31915i, 58059u), Struct_1(false, 114950i, 88627u), Struct_1(true, -32253i, 0u), Struct_1(false, -10798i, 0u), Struct_1(false, -37147i, 0u), Struct_1(false, 29226i, 37668u), Struct_1(false, 6674i, 0u));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: i32) -> bool {
    global0 = array<f32, 29>();
    var var_0 = select(select(vec3<bool>(true, all(vec4<bool>(true, false, false, true)) | all(vec2<bool>(false, true)), any(vec4<bool>(true, true, true, true))), vec3<bool>(true, true, !all(vec2<bool>(true, false))), all(vec2<bool>(all(vec2<bool>(false, false)), all(vec4<bool>(true, true, false, true))))), vec3<bool>(true, true, true), select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true)), vec3<bool>(true, true, true), all(vec4<bool>(true, true, true, true))), vec3<bool>(true, true, true), !(1494f <= global0[_wgslsmith_index_u32(22187u, 29u)]) && true));
    var var_1 = ~select(_wgslsmith_mod_vec2_u32(min(u_input.a, u_input.a), abs(u_input.a)), ~u_input.a, var_0.xy) >> (~(~(~u_input.a) >> ((vec2<u32>(4294967295u, 35100u) | ~vec2<u32>(u_input.a.x, 33563u)) % vec2<u32>(32u))) % vec2<u32>(32u));
    let var_2 = global1[_wgslsmith_index_u32(1u, 20u)];
    var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(min(_wgslsmith_mult_u32(~var_2.c, u_input.a.x), ~u_input.a.x), 71687u), vec2<u32>(var_1.x, var_1.x));
    return all(vec3<bool>(var_0.x, -1630f > global0[_wgslsmith_index_u32(u_input.a.x, 29u)], !all(!vec2<bool>(var_0.x, var_2.a))));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = vec2<bool>(arg_3.a, !arg_2.a);
    var var_1 = vec4<f32>(1071f, -1000f, arg_0, _wgslsmith_f_op_f32(select(arg_0, global0[_wgslsmith_index_u32(1u, 29u)], !arg_2.a)));
    global0 = array<f32, 29>();
    global1 = array<Struct_1, 20>();
    var var_2 = Struct_1(!((any(vec4<bool>(false, false, arg_3.a, var_0.x)) | func_3(-2147483647i)) && any(!vec3<bool>(var_0.x, var_0.x, arg_3.a))), firstTrailingBit(1i << (_wgslsmith_clamp_u32(72675u, ~0u, arg_2.c) % 32u)), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(29750u, 4294967295u, 4294967295u, 0u), vec4<u32>(arg_2.c, arg_2.c, arg_2.c, u_input.a.x), vec4<bool>(true, true, false, true)), abs(vec4<u32>(46296u, arg_1, 57038u, 0u))), 1u));
    return _wgslsmith_add_u32(38054u, abs(max(~arg_3.c, (arg_2.c & arg_2.c) ^ 27873u)));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = array<f32, 29>();
    var var_0 = Struct_1(true, countOneBits(arg_3.b) ^ ~(arg_3.b >> (~arg_2.c % 32u)), ~(~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_2.c, 62137u, 0u, arg_3.c)), vec4<u32>(arg_3.c, u_input.a.x, 53273u, arg_2.c))));
    let var_1 = firstTrailingBit(~_wgslsmith_sub_u32(abs(arg_2.c << (6062u % 32u)), ~0u));
    let var_2 = 1u;
    let var_3 = vec3<i32>(_wgslsmith_mult_i32(max(-firstTrailingBit(arg_3.b), ~arg_3.b), select(i32(-1i) * -1425i, 30732i, !(-1i >= arg_3.b))), _wgslsmith_dot_vec4_i32(firstLeadingBit(select(vec4<i32>(0i, arg_3.b, -23483i, arg_3.b), vec4<i32>(0i, 16246i, -17661i, var_0.b) | vec4<i32>(-21731i, arg_1, arg_2.b, arg_0), !vec4<bool>(true, false, arg_2.a, var_0.a))), vec4<i32>(_wgslsmith_mod_i32(arg_1, arg_1), -arg_2.b, firstLeadingBit(-50132i), arg_1) | countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.b, arg_1, -12715i, arg_2.b), vec4<i32>(-853i, 0i, 1i, arg_0), vec4<i32>(2147483647i, -1i, -1i, -1i)))), firstTrailingBit(_wgslsmith_div_i32(arg_0 >> (arg_2.c % 32u), _wgslsmith_mult_i32(arg_3.b, _wgslsmith_mod_i32(arg_2.b, -1i)))));
    return Struct_1(var_0.a || arg_3.a, _wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -7548i, -var_0.b, 1i), vec3<i32>(-1i) * -var_3), _wgslsmith_mod_i32(-1i >> (_wgslsmith_div_u32(arg_3.c, 0u) % 32u), abs(-40047i))), abs(_wgslsmith_mod_u32(~1u, _wgslsmith_mod_u32(var_2, arg_3.c << (4294967295u % 32u)))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<f32>) -> i32 {
    global0 = array<f32, 29>();
    global0 = array<f32, 29>();
    let var_0 = false && all(select(!(!vec3<bool>(arg_0.a, arg_0.a, arg_0.a)), vec3<bool>(arg_0.a, arg_0.a | arg_0.a, !arg_0.a), vec3<bool>(arg_0.a, arg_0.a, arg_0.a | true)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-arg_2), arg_1.wwz)));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1296f))) - arg_1.x), -1378f, arg_2.x);
    return -2147483647i;
}

fn func_1() -> Struct_1 {
    global1 = array<Struct_1, 20>();
    var var_0 = ~40405u;
    let var_1 = vec3<bool>(any(select(vec4<bool>(u_input.a.x <= 0u, true, true, true), vec4<bool>(true, true, true, true), !select(false, false, false))), false, abs(abs(2147483647i)) >= reverseBits(max(-1i, 2147483647i) | select(1i, 0i, false)));
    let var_2 = reverseBits(_wgslsmith_sub_vec2_u32(u_input.a, _wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.a.x), vec2<u32>(4294967295u, 2771u)) ^ u_input.a)) | ~max(u_input.a & vec2<u32>(4294967295u, u_input.a.x), reverseBits(u_input.a));
    let var_3 = -func_5(func_4(~1i, 44983i, Struct_1(var_1.x, 1i, func_2(1747f, var_2.x, Struct_1(var_1.x, 2147483647i, var_2.x), global1[_wgslsmith_index_u32(u_input.a.x, 20u)])), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_2(global0[_wgslsmith_index_u32(1u, 29u)], var_2.x, global1[_wgslsmith_index_u32(u_input.a.x, 20u)], global1[_wgslsmith_index_u32(var_2.x, 20u)]), var_2.x), 20u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_2.x, 29u)]), _wgslsmith_f_op_f32(945f * global0[_wgslsmith_index_u32(u_input.a.x, 29u)]), _wgslsmith_f_op_f32(round(340f)), global0[_wgslsmith_index_u32(u_input.a.x, 29u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-139f, global0[_wgslsmith_index_u32(var_2.x, 29u)], -848f) * vec3<f32>(global0[_wgslsmith_index_u32(36283u, 29u)], -2038f, -450f))))));
    return func_4(var_3, func_4(1i, i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(var_3, -34082i, var_3), vec3<i32>(var_3, 2147483647i, -1i)), Struct_1(select(!var_1.x, true, all(vec2<bool>(var_1.x, true))), _wgslsmith_mod_i32(-19817i, ~var_3), 0u), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1620f) < _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(16499u, 29u)])), countOneBits(var_3), abs(_wgslsmith_mult_u32(4294967295u, 1u)))).b, global1[_wgslsmith_index_u32(u_input.a.x, 20u)], global1[_wgslsmith_index_u32(~31805u, 20u)]);
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: i32, arg_3: Struct_1) -> vec4<i32> {
    global1 = array<Struct_1, 20>();
    return select(vec4<i32>(arg_0.b, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, arg_0.b, 43644i) << (vec3<u32>(arg_3.c, 0u, arg_1) % vec3<u32>(32u)), countOneBits(vec3<i32>(2147483647i, 15467i, arg_0.b))), -max(vec3<i32>(arg_3.b, arg_3.b, 1i), vec3<i32>(1i, -1i, arg_2))), i32(-1i) * -_wgslsmith_sub_i32(-48348i, arg_2), arg_0.b), max(firstTrailingBit(vec4<i32>(arg_0.b, 0i, arg_2, arg_2) >> (vec4<u32>(u_input.a.x, 4294967295u, 14324u, 30302u) % vec4<u32>(32u))) ^ _wgslsmith_div_vec4_i32(abs(vec4<i32>(44939i, arg_2, -2147483647i, arg_3.b)), -vec4<i32>(arg_0.b, 0i, arg_0.b, 8551i)), abs(vec4<i32>(abs(-34244i), -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b, -34979i, arg_3.b), vec3<i32>(-23073i, arg_2, arg_3.b)), arg_2 ^ 0i))), arg_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 29>();
    let var_0 = _wgslsmith_mult_vec4_i32(select(max(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 20447i, 0i, 29668i) >> (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 38686u) % vec4<u32>(32u)), -vec4<i32>(2147483647i, 33928i, -34343i, -64684i), vec4<i32>(1i, 1i, 1i, 1i)), -vec4<i32>(-18874i, 2147483647i, -6075i, 9117i) | (vec4<i32>(18571i, -3304i, 26664i, -1i) >> (vec4<u32>(56980u, 55011u, u_input.a.x, 39813u) % vec4<u32>(32u)))), vec4<i32>(1i, 1i, 1i, 1i), ~min(47366u, u_input.a.x) < _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 145069u))), (func_6(func_1(), ~0u, _wgslsmith_mult_i32(1i, 5308i), func_1()) | vec4<i32>(func_1().b, _wgslsmith_mod_i32(-17181i, -10969i), 1i, 1i)) & (_wgslsmith_sub_vec4_i32(-vec4<i32>(44721i, 0i, -1i, 50274i), select(vec4<i32>(0i, -19675i, 16917i, -23397i), vec4<i32>(-1i, 0i, 1691i, 7645i), false)) & -firstTrailingBit(vec4<i32>(0i, 2147483647i, -51185i, -1i))));
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a.x, ~4294967295u), u_input.a.x);
    let var_2 = global1[_wgslsmith_index_u32(~u_input.a.x, 20u)];
    global0 = array<f32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(0u), ~min(reverseBits(vec3<u32>(1u, 44990u, u_input.a.x) | vec3<u32>(18981u, var_2.c, 1u)), _wgslsmith_add_vec3_u32(vec3<u32>(4364u, u_input.a.x, u_input.a.x), ~vec3<u32>(var_2.c, 0u, 26986u))), global0[_wgslsmith_index_u32(abs(1u), 29u)], vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1038f), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_2.c, 29u)], _wgslsmith_f_op_f32(min(-836f, global0[_wgslsmith_index_u32(22750u, 29u)]))), global0[_wgslsmith_index_u32(52834u, 29u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_2.c, 29u)]), global0[_wgslsmith_index_u32(22577u, 29u)])))));
}

