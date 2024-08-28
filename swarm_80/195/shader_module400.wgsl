struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8> = array<u32, 8>(4294967295u, 1u, 4294967295u, 102306u, 29758u, 7254u, 4294967295u, 22191u);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<i32> {
    global0 = array<u32, 8>();
    let var_0 = vec3<bool>(global0[_wgslsmith_index_u32(13738u, 8u)] <= ~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(9571u, global0[_wgslsmith_index_u32(1u, 8u)], 4294967295u), vec3<u32>(global0[_wgslsmith_index_u32(27891u, 8u)], global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(49351u, 8u)]) ^ vec3<u32>(36841u, 19623u, global0[_wgslsmith_index_u32(1243u, 8u)])), 8u)], _wgslsmith_f_op_f32(floor(1278f)) < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), true);
    let var_1 = -36044i;
    global0 = array<u32, 8>();
    var var_2 = Struct_3(vec4<bool>(_wgslsmith_add_u32(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(63821u, 48236u), vec2<u32>(10205u, 11939u))) > global0[_wgslsmith_index_u32(min(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(46697u, 8u)], 8u)], 8u)], 25425u), 7526u >> (0u % 32u)), 8u)], true, true, true), Struct_1(0i, select(!(!vec2<bool>(true, var_0.x)), vec2<bool>(var_0.x || var_0.x, false & var_0.x), !(!var_0.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -326f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1013f)), _wgslsmith_f_op_f32(floor(-2797f)))))), 1216f));
    return firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -(vec4<i32>(var_2.b.a, var_2.b.a, var_2.b.a, 2147483647i) >> (vec4<u32>(1u, global0[_wgslsmith_index_u32(52835u, 8u)], 0u, global0[_wgslsmith_index_u32(51704u, 8u)]) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(var_1, 1i, 54952i, 1i), vec4<i32>(20349i, u_input.a.x, 264i, var_1)), select(vec4<i32>(var_1, var_2.b.a, -2147483647i, u_input.a.x), -vec4<i32>(var_2.b.a, var_1, var_2.b.a, -1i), false), _wgslsmith_mult_vec4_i32(-vec4<i32>(var_1, var_2.b.a, var_1, 2147483647i), vec4<i32>(1i, 2147483647i, 0i, -1i)))));
}

fn func_2(arg_0: i32) -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_dot_vec4_i32(~(~firstTrailingBit(vec4<i32>(1i, -2147483647i, 72620i, arg_0))), -func_3()), !vec2<bool>(false, true & (arg_0 >= 43569i)));
    var_0 = Struct_1(-2147483647i, !var_0.b);
    let var_1 = Struct_3(!vec4<bool>(true, var_0.b.x, false, !(global0[_wgslsmith_index_u32(9326u, 8u)] != 0u)), Struct_1(func_3().x, !select(select(var_0.b, var_0.b, false), vec2<bool>(false, var_0.b.x), var_0.b)), -958f, 987f);
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(2019f, var_1.d, var_1.d, -116f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(101f, 1036f, var_1.d, var_1.c) - vec4<f32>(var_1.c, -2278f, var_1.c, var_1.c)) - vec4<f32>(-1230f, 1077f, -1000f, var_1.c)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, -1535f, var_1.d, var_1.d)), _wgslsmith_div_vec4_f32(vec4<f32>(-1199f, var_1.d, 371f, var_1.c), vec4<f32>(663f, var_1.d, var_1.d, var_1.d))))))));
    let var_3 = -1i;
    return var_1;
}

fn func_1(arg_0: bool) -> i32 {
    global0 = array<u32, 8>();
    global0 = array<u32, 8>();
    let var_0 = func_2(-48811i);
    global0 = array<u32, 8>();
    var var_1 = var_0.b.a >> ((1u >> (_wgslsmith_dot_vec2_u32(select(abs(vec2<u32>(0u, 67843u)), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 8u)], 8u)], 8u)], 8u)], 8u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7000u, 8u)], 8u)], 8u)]) ^ vec2<u32>(global0[_wgslsmith_index_u32(30762u, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)]), select(var_0.a.zz, vec2<bool>(arg_0, false), arg_0)), firstLeadingBit(vec2<u32>(global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 8u)], 8u)])) | ~vec2<u32>(3894u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 8u)])) % 32u)) % 32u);
    return reverseBits(func_3().x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(-(select(u_input.a, u_input.a, any(vec3<bool>(false, true, true))) & u_input.a));
    let var_1 = vec4<i32>(u_input.b.x, 15155i, _wgslsmith_mod_i32(reverseBits(var_0.x ^ var_0.x), func_1(-2147483647i == u_input.a.x)), var_0.x) ^ _wgslsmith_sub_vec4_i32(~vec4<i32>(var_0.x, -4590i, _wgslsmith_mult_i32(u_input.a.x, -5423i), 41444i), firstTrailingBit(countOneBits(countOneBits(vec4<i32>(-2147483647i, -1i, var_0.x, u_input.c)))));
    global0 = array<u32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(-1282f, 0i);
}

