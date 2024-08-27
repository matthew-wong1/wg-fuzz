struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: vec4<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 5> = array<vec2<u32>, 5>(vec2<u32>(6304u, 96743u), vec2<u32>(1u, 13461u), vec2<u32>(116029u, 1u), vec2<u32>(7956u, 46720u), vec2<u32>(0u, 18782u));

var<private> global1: array<Struct_2, 8>;

var<private> global2: Struct_2 = Struct_2(vec4<bool>(true, false, true, true), 1u, vec4<f32>(715f, -1682f, 935f, 890f), i32(-2147483648));

var<private> global3: array<u32, 32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec4<i32>) -> bool {
    global1 = array<Struct_2, 8>();
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1488f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(398f)))))));
    global2 = Struct_2(vec4<bool>(!(!global2.a.x), true, any(select(vec3<bool>(false, false, global2.a.x), vec3<bool>(false, false, global2.a.x), !global2.a.x)), true), firstTrailingBit(countOneBits(~min(2263u, global2.b))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.c) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.x, -698f, var_0.x, var_0.x) + global2.c))), vec4<f32>(-1693f, global2.c.x, 293f, _wgslsmith_f_op_f32(min(global2.c.x, -491f))))), -u_input.d);
    global2 = global1[_wgslsmith_index_u32(abs(~_wgslsmith_clamp_u32(4294967295u, 3092u, ~(~19756u))), 8u)];
    var var_1 = min(_wgslsmith_mod_vec2_i32(vec2<i32>(abs(countOneBits(arg_0.x)), -3202i), ~((vec2<i32>(u_input.d, u_input.a.x) & u_input.a.xx) << (select(vec2<u32>(72633u, 9149u), vec2<u32>(global2.b, 0u), global2.a.x) % vec2<u32>(32u)))), -u_input.a.xz);
    return any(vec2<bool>(all(select(vec4<bool>(global2.a.x, true, global2.a.x, true), !global2.a, !global2.a)), global2.a.x));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: bool) -> u32 {
    let var_0 = ~_wgslsmith_dot_vec3_u32(max(~vec3<u32>(global2.b, 0u, global3[_wgslsmith_index_u32(40577u, 32u)]), _wgslsmith_add_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(47084u, 32u)], global2.b, 4294967295u), vec3<u32>(2700u, 0u, u_input.c))), _wgslsmith_mult_vec3_u32(min(vec3<u32>(72514u, 0u, arg_0.b), vec3<u32>(7867u, arg_0.b, arg_0.b)) ^ (vec3<u32>(global3[_wgslsmith_index_u32(56728u, 32u)], 59833u, 4294967295u) >> (vec3<u32>(50592u, global3[_wgslsmith_index_u32(global2.b, 32u)], 90374u) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_sub_u32(arg_0.b, global2.b), ~45707u, 1u)));
    global1 = array<Struct_2, 8>();
    var var_1 = select(vec4<bool>(!arg_0.a.x, all(arg_0.a) && all(arg_0.a.zzz), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2162f * global2.c.x), _wgslsmith_f_op_f32(arg_0.c.x - global2.c.x))) <= -681f, all(arg_0.a)), !(!vec4<bool>(func_3(vec4<i32>(u_input.d, global2.d, -2147483647i, arg_0.d)), true, !arg_0.a.x, global2.a.x)), !(!(!select(vec4<bool>(false, arg_0.a.x, arg_0.a.x, arg_2), vec4<bool>(true, true, global2.a.x, false), arg_2))));
    let var_2 = Struct_2(!(!global2.a), firstTrailingBit(var_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(arg_0.c)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global2.c, vec4<f32>(-1337f, global2.c.x, global2.c.x, arg_0.c.x))))), _wgslsmith_sub_i32(reverseBits(abs(countOneBits(arg_0.d))), u_input.d));
    let var_3 = !(!(!select(global2.a.zwx, !var_1.yzy, true)));
    return select(~global2.b, 12808u, arg_0.c.x < 1515f);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>) -> bool {
    global2 = Struct_2(!global2.a, _wgslsmith_mod_u32((func_2(global1[_wgslsmith_index_u32(4294967295u, 8u)], vec3<i32>(0i, -15621i, -52210i), arg_0.a.x) >> (countOneBits(u_input.c) % 32u)) | global2.b, _wgslsmith_mod_u32(abs(~1u), 52721u)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(step(1000f, -944f))), _wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_f_op_f32(-global2.c.x))), -170f))), -36466i);
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(global2.d, -6519i, max(-59804i, reverseBits(u_input.b) >> (u_input.c % 32u)), 52468i), vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(global2.d, global2.d, u_input.a.x, 71555i), -vec4<i32>(-21568i, 17377i, 1i, 0i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-16912i, global2.d, global2.d, global2.d), vec4<i32>(-28813i, 1i, 35508i, -32647i), vec4<i32>(-1i, 47926i, u_input.a.x, 29180i)) | firstTrailingBit(vec4<i32>(-1i, 1i, global2.d, -2147483647i))), select(global2.d, -max(9755i, u_input.b), arg_0.a.x), -(-2147483647i << (_wgslsmith_add_u32(global2.b, 0u) % 32u)), -global2.d));
    var var_1 = global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 32u)], 8u)];
    global2 = global1[_wgslsmith_index_u32(~u_input.c << (0u % 32u), 8u)];
    global1 = array<Struct_2, 8>();
    return _wgslsmith_div_i32(abs(abs(23631i)), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, 1i, -16484i, 2527i), vec4<i32>(var_1.d, u_input.d, global2.d, var_0)), firstTrailingBit(-1i))) <= -_wgslsmith_sub_i32(-34485i, 0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(!select(vec4<bool>(false, true, true, global2.a.x & global2.a.x), !global2.a, vec4<bool>(select(global2.a.x, true, global2.a.x), func_1(Struct_1(vec3<bool>(true, global2.a.x, global2.a.x)), vec3<bool>(global2.a.x, global2.a.x, global2.a.x)), true, true)), 3136u, global2.c, -global2.d);
    var var_1 = vec3<i32>(-9257i, _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.d, 0i, global2.d, -4916i) | abs(vec4<i32>(var_0.d, -2147483647i, -2147483647i, u_input.a.x) << (vec4<u32>(37993u, global2.b, 0u, 1u) % vec4<u32>(32u))), ((vec4<i32>(0i, var_0.d, global2.d, global2.d) ^ vec4<i32>(var_0.d, 5035i, 7010i, 36540i)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(18218u, 41581u, 0u, var_0.b), vec4<u32>(1u, var_0.b, 4294967295u, var_0.b)) % vec4<u32>(32u))) ^ vec4<i32>(410i, ~var_0.d, ~(-1i), ~(-35112i))), _wgslsmith_dot_vec2_i32(-min(u_input.a.yx, u_input.a.yz) | -(vec2<i32>(-10850i, 2843i) & vec2<i32>(global2.d, var_0.d)), ~_wgslsmith_sub_vec2_i32(vec2<i32>(21670i, global2.d), -u_input.a.zx)));
    global0 = array<vec2<u32>, 5>();
    var var_2 = -205f;
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.c, u_input.c << ((global2.b & min(var_0.b, var_0.b)) % 32u)), 8u)];
    global3 = array<u32, 32>();
    let var_4 = firstLeadingBit(max(~(~vec3<u32>(72844u, u_input.c, var_3.b)), ~vec3<u32>(global3[_wgslsmith_index_u32(u_input.c, 32u)], u_input.c, 25169u)) & select(~(~vec3<u32>(1u, var_3.b, 1u)), abs(_wgslsmith_add_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(33154u, 32u)], var_3.b, var_3.b), vec3<u32>(20370u, var_3.b, 71183u))), vec3<bool>(var_0.a.x, true, true)));
    let var_5 = _wgslsmith_f_op_f32(-var_3.c.x);
    var var_6 = vec3<f32>(-398f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.c.x), -109f, u_input.c > 7407u))))), var_0.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~(~4294967295u), _wgslsmith_dot_vec2_u32(var_4.xx, min(~vec2<u32>(var_3.b, 0u), vec2<u32>(46042u, 1u)))), 1448f);
}

