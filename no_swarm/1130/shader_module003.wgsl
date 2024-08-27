struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<f32, 21>;

var<private> global2: array<Struct_1, 31>;

var<private> global3: array<vec2<i32>, 21> = array<vec2<i32>, 21>(vec2<i32>(-1i, 0i), vec2<i32>(1i, -27723i), vec2<i32>(18015i, 1i), vec2<i32>(-59159i, 1i), vec2<i32>(0i, -52202i), vec2<i32>(i32(-2147483648), 32546i), vec2<i32>(-45911i, 3280i), vec2<i32>(46084i, 49664i), vec2<i32>(2147483647i, -5768i), vec2<i32>(i32(-2147483648), -32518i), vec2<i32>(-1i, 0i), vec2<i32>(-44583i, -32286i), vec2<i32>(0i, 39001i), vec2<i32>(0i, -1i), vec2<i32>(2147483647i, 1i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(2147483647i, -73262i), vec2<i32>(i32(-2147483648), -14470i), vec2<i32>(0i, 15062i), vec2<i32>(-1058i, i32(-2147483648)), vec2<i32>(80632i, -1i));

var<private> global4: array<Struct_2, 32>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: vec3<bool>) -> vec3<bool> {
    var var_0 = vec2<i32>(select(-global0.a.x, _wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_add_i32(-2147483647i, 25941i), global0.a.x, firstLeadingBit(u_input.c)), -10993i), all(!select(vec3<bool>(arg_2.x, false, false), vec3<bool>(arg_2.x, true, arg_2.x), vec3<bool>(true, false, arg_2.x)))), _wgslsmith_add_i32(-2147483647i, firstTrailingBit(arg_0 ^ -33258i)));
    let var_1 = !any(!(!arg_2.zy));
    var_0 = vec2<i32>(_wgslsmith_mod_i32(u_input.b, -1i), min(u_input.d, -countOneBits(abs(-2147483647i))));
    var var_2 = _wgslsmith_dot_vec2_u32(select(~vec2<u32>(55056u, abs(arg_1.x)), vec2<u32>(u_input.a, 26568u & arg_1.x), !(!select(arg_2.zy, vec2<bool>(false, false), var_1))), ~abs(~arg_1.zx ^ vec2<u32>(1u, 1u)));
    var var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-567f, global1[_wgslsmith_index_u32(arg_1.x, 21u)], -1106f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(u_input.a, 21u)], -410f), vec3<f32>(707f, global1[_wgslsmith_index_u32(u_input.a, 21u)], 306f), true))))))));
    return vec3<bool>(!var_1, var_1, select(false, true, var_1));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> vec2<i32> {
    global1 = array<f32, 21>();
    global3 = array<vec2<i32>, 21>();
    let var_0 = all(func_3(u_input.b, ~_wgslsmith_add_vec3_u32(~vec3<u32>(1u, 0u, 31428u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 1u, 38448u), vec3<u32>(u_input.a, u_input.a, u_input.a))), !(!vec3<bool>(arg_1, arg_1, arg_1))));
    let var_1 = Struct_1(~_wgslsmith_div_i32(1i, u_input.c));
    var var_2 = vec3<f32>(-1121f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(872f)) * -1258f))), global1[_wgslsmith_index_u32(u_input.a, 21u)]);
    return abs(vec2<i32>(_wgslsmith_add_i32(-countOneBits(global0.a.x), -2147483647i), 1i));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = 2512f;
    let var_1 = Struct_2(select(((global0.a | vec2<i32>(arg_0.a, arg_0.a)) | func_2(arg_0, true)) << (firstTrailingBit(vec2<u32>(1u, 0u)) % vec2<u32>(32u)), -(_wgslsmith_div_vec2_i32(vec2<i32>(global0.a.x, 45897i), global0.a) >> (vec2<u32>(20673u, u_input.a) % vec2<u32>(32u))), !all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), false))), Struct_1(~arg_0.a), Struct_1(-26867i));
    global4 = array<Struct_2, 32>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(43384u, 21u)] - -1000f));
    let var_3 = true;
    return Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(reverseBits(func_2(var_1.b, true)), _wgslsmith_clamp_vec2_i32(firstTrailingBit(global3[_wgslsmith_index_u32(u_input.a, 21u)]), var_1.a, vec2<i32>(arg_0.a, -4657i) << (vec2<u32>(0u, 1u) % vec2<u32>(32u)))), abs(vec2<i32>(arg_0.a, reverseBits(var_1.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 21>();
    let var_0 = func_1(Struct_1(_wgslsmith_clamp_i32(global0.a.x, _wgslsmith_div_i32(0i, global0.c.a) & firstTrailingBit(-8255i), _wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, global0.b.a, u_input.d), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -13423i, u_input.b), vec3<i32>(u_input.b, u_input.c, global0.c.a))))));
    global2 = array<Struct_1, 31>();
    global2 = array<Struct_1, 31>();
    var var_1 = global4[_wgslsmith_index_u32(countOneBits(u_input.a), 32u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(max(~vec3<i32>(var_0.a, 6683i, u_input.d), vec3<i32>(2147483647i, u_input.d, global0.c.a)), vec3<i32>(~(-var_0.a), func_1(global0.b).a & (var_1.c.a ^ 2395i), 11877i)), _wgslsmith_dot_vec3_i32(~_wgslsmith_mult_vec3_i32(~vec3<i32>(-2147483647i, 41601i, u_input.c), vec3<i32>(global0.a.x, global0.a.x, global0.b.a) << (vec3<u32>(u_input.a, u_input.a, 38192u) % vec3<u32>(32u))), firstLeadingBit(firstTrailingBit(vec3<i32>(var_1.c.a, 0i, 1i) | vec3<i32>(global0.b.a, global0.a.x, -1i)))), -((i32(-1i) * -31817i) ^ abs(var_1.b.a)), (_wgslsmith_mod_u32(_wgslsmith_add_u32(0u, 35107u), min(u_input.a, 4943u)) << (~(~u_input.a) % 32u)) ^ _wgslsmith_add_u32(5626u, _wgslsmith_div_u32(~0u, ~4792u)), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), vec4<u32>(1u, u_input.a, 21351u, 1u)), ~(~vec4<u32>(35404u, u_input.a, 4294967295u, 117967u))), ~_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, 37507u, 0u), vec4<u32>(u_input.a, u_input.a, u_input.a, 91112u)), vec4<u32>(u_input.a, 0u, 0u, 1u) & vec4<u32>(u_input.a, 57218u, 1u, u_input.a))));
}

