struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8> = array<u32, 8>(21661u, 20006u, 4294967295u, 5800u, 16736u, 10830u, 4183u, 33836u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool, arg_1: u32) -> f32 {
    let var_0 = Struct_1(~abs(vec4<u32>(~27442u, ~global0[_wgslsmith_index_u32(4294967295u, 8u)], arg_1, global0[_wgslsmith_index_u32(~44635u, 8u)])), arg_0, arg_0, 1707f);
    var var_1 = Struct_2(~(~(var_0.a & var_0.a)));
    var var_2 = 4294967295u;
    let var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(340f, -111f))), var_0.c)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d * var_0.d)), _wgslsmith_f_op_f32(var_0.d + var_0.d)))), arg_0));
    global0 = array<u32, 8>();
    return -462f;
}

fn func_2(arg_0: u32) -> f32 {
    let var_0 = 1u;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(553f, -1080f, 1430f, 364f), vec4<f32>(-746f, 295f, -322f, 353f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(637f, 1359f, -1522f, -675f))))) - vec4<f32>(-968f, _wgslsmith_f_op_f32(1552f + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -975f), -603f)));
    let var_2 = Struct_1(vec4<u32>(4294967295u, 4294967295u, var_0, select(~4294967295u, u_input.b.x, any(vec2<bool>(true, false)) | true)), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1432f + -1125f)) != var_1.x), all(select(vec3<bool>(true, false, u_input.c.x != 10208i), vec3<bool>(true, all(vec2<bool>(true, false)), all(vec3<bool>(true, true, false))), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x - 1814f), _wgslsmith_f_op_f32(func_3(true, var_0)))))));
    let var_3 = vec3<bool>(false, true, true);
    let var_4 = ~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.e & u_input.c.x, _wgslsmith_sub_i32(u_input.e, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.d, -2147483647i), vec3<i32>(u_input.c.x, 54874i, u_input.c.x)))), _wgslsmith_add_vec2_i32(u_input.c, firstTrailingBit(countOneBits(vec2<i32>(-9112i, 2147483647i)))));
    return var_1.x;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> vec4<f32> {
    return vec4<f32>(413f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(1736f, arg_1.d)), _wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(0u, 8u)])))))) - _wgslsmith_f_op_f32(-arg_1.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(983f)) + _wgslsmith_f_op_f32(-arg_0.x)) + 1491f)), 531f);
}

fn func_1(arg_0: i32) -> u32 {
    global0 = array<u32, 8>();
    global0 = array<u32, 8>();
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1068f, -1587f, -1389f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(291f, -187f, _wgslsmith_f_op_f32(ceil(192f))))), Struct_1((~vec4<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 8u)], 47720u, 18021u, u_input.b.x) & ~vec4<u32>(u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17675u, 8u)], 8u)], 8u)], 0u, u_input.b.x)) & vec4<u32>(u_input.b.x, countOneBits(16945u), _wgslsmith_mult_u32(u_input.b.x, 57319u), 1u), !((u_input.b.x < u_input.b.x) & all(vec4<bool>(false, true, true, false))), true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(1u)), -856f)))));
    let var_1 = Struct_2(~(~(~max(vec4<u32>(u_input.b.x, 0u, 0u, 1u), vec4<u32>(4294967295u, u_input.b.x, 4294967295u, 42295u)))));
    var var_2 = Struct_1(abs(vec4<u32>(_wgslsmith_dot_vec3_u32(var_1.a.ywx, _wgslsmith_mod_vec3_u32(var_1.a.zzw, var_1.a.xxx)), _wgslsmith_mult_u32(1u, 54821u), 4294967295u, ~4294967295u)), true, !(!(!any(vec3<bool>(false, false, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -147f) + _wgslsmith_f_op_f32(select(-237f, _wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_div_i32(arg_0, -1i) >= firstLeadingBit(-1i)))));
    return var_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(vec4<u32>(4294967295u, 4294967295u, 0u, global0[_wgslsmith_index_u32(1u, 8u)]) | vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 17388u), vec4<u32>(1u, _wgslsmith_sub_u32(u_input.b.x, global0[_wgslsmith_index_u32(0u, 8u)]), ~4294967295u, countOneBits(4294967295u)), vec4<bool>(true, true, false, select(false, true, false))) & vec4<u32>((u_input.b.x ^ global0[_wgslsmith_index_u32(0u, 8u)]) & ~u_input.b.x, _wgslsmith_mult_u32(firstTrailingBit(4294967295u), max(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(105205u, 8u)], 8u)], 28883u)), func_1(~u_input.c.x), reverseBits(13540u)), !(!(!any(vec3<bool>(true, false, false)))), true, _wgslsmith_f_op_f32(2353f + _wgslsmith_f_op_f32(step(-981f, 1365f))));
    var var_1 = var_0.a.xz;
    let var_2 = select(_wgslsmith_f_op_f32(f32(-1f) * -1910f) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -278f) - _wgslsmith_f_op_f32(trunc(var_0.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1394f, -1025f)))), var_0.b, !((u_input.e ^ -27222i) != -1i));
    var var_3 = countOneBits(_wgslsmith_mult_vec4_u32(firstTrailingBit(max(~var_0.a, _wgslsmith_clamp_vec4_u32(var_0.a, vec4<u32>(global0[_wgslsmith_index_u32(1u, 8u)], 94250u, 0u, global0[_wgslsmith_index_u32(4294967295u, 8u)]), var_0.a))), ~var_0.a));
    var var_4 = Struct_2(var_0.a);
    let var_5 = Struct_2(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_3.x, 4294967295u, 37122u, global0[_wgslsmith_index_u32(var_3.x, 8u)]) << (vec4<u32>(550u, 32942u, 1u, 4294967295u) % vec4<u32>(32u)), abs(vec4<u32>(29027u, var_0.a.x, 0u, var_4.a.x))), ~var_0.a), var_0.a));
    global0 = array<u32, 8>();
    var_3 = (var_0.a >> (~vec4<u32>(abs(var_5.a.x), var_3.x, var_4.a.x, var_5.a.x) % vec4<u32>(32u))) >> (~(_wgslsmith_div_vec4_u32(var_4.a, _wgslsmith_clamp_vec4_u32(var_4.a, var_4.a, vec4<u32>(4294967295u, var_3.x, 0u, 69541u))) & (var_4.a ^ var_0.a)) % vec4<u32>(32u));
    var_4 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(-297f, -728f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)), -1386f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, var_0.d, var_0.d, 1000f) * vec4<f32>(var_0.d, -394f, 589f, var_0.d)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, var_0.d, var_0.d, var_0.d) - vec4<f32>(var_0.d, var_0.d, var_0.d, -1000f)))) - vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -204f), 580f, var_0.d))), 259f, abs(abs(~vec4<i32>(13766i, -19563i, u_input.e, 0i)) << (countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(var_4.a.x, 1u, u_input.b.x, var_0.a.x), vec4<u32>(0u, 15032u, 30562u, 30563u))) % vec4<u32>(32u))), ~(~(~firstTrailingBit(u_input.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(~u_input.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-587f)) * var_0.d)))));
}

