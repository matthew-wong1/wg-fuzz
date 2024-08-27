struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(-25062i, -1i));

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec2<i32>(-45629i, i32(-2147483648))), Struct_1(vec2<i32>(i32(-2147483648), 0i)), Struct_1(vec2<i32>(-1i, -1i)), Struct_1(vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(vec2<i32>(0i, 18954i)), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(vec2<i32>(-29506i, 2147483647i)), Struct_1(vec2<i32>(i32(-2147483648), 1i)), Struct_1(vec2<i32>(13619i, -1i)));

var<private> global3: u32;

var<private> global4: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> vec3<bool> {
    global0 = global2[_wgslsmith_index_u32(~21745u, 9u)];
    var var_0 = ~27441i;
    global0 = global2[_wgslsmith_index_u32(select(u_input.e.x, 17526u, false), 9u)];
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1459f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-852f, 368f) - _wgslsmith_f_op_f32(ceil(-167f))))) - _wgslsmith_f_op_f32(-2096f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2106f), _wgslsmith_f_op_f32(f32(-1f) * -1330f), true)), 101f))));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1076f, 1000f)))), -291f, 715f) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1596f, -1126f, -1000f), vec3<f32>(749f, -672f, 230f))))))));
    return vec3<bool>(false, true, true);
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = !(any(vec2<bool>(true, true)) == all(func_3()));
    var_0 = true;
    global0 = Struct_1(reverseBits(global4.a));
    var_0 = true;
    var var_1 = _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(-min(vec3<i32>(u_input.c.x, -1i, -1i), vec3<i32>(-1i, global0.a.x, arg_0) >> (vec3<u32>(u_input.b.x, 76848u, u_input.d.x) % vec3<u32>(32u))), reverseBits(~u_input.c)), ~(-global1.a.x));
    return 74969u ^ u_input.e.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> StorageBuffer {
    let var_0 = global2[_wgslsmith_index_u32(select(3611u >> (u_input.e.x % 32u), func_2(42972i & arg_0.a.x), any(vec4<bool>(func_3().x, false && any(vec4<bool>(true, false, true, false)), true, all(vec3<bool>(false, false, false)) || (u_input.e.x < u_input.a)))), 9u)];
    var var_1 = Struct_1(~max(reverseBits(-global1.a), ~select(arg_1.yx, global0.a, true)));
    var var_2 = select(arg_1.zyx, vec3<i32>(-1i, _wgslsmith_mult_i32(global1.a.x, u_input.c.x), -24175i), all(vec3<bool>(true, true, true)));
    global0 = global2[_wgslsmith_index_u32(select(firstTrailingBit(~abs(~4294967295u)), ~0u, arg_1.x >= ~(-100i)), 9u)];
    global1 = Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(var_2.x, var_1.a.x), _wgslsmith_mod_vec2_i32(vec2<i32>(global4.a.x, global1.a.x), select(arg_0.a, global1.a, vec2<bool>(false, true))) | _wgslsmith_mod_vec2_i32(vec2<i32>(50052i, global4.a.x), var_2.zz)));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-995f, -886f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1219f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1434f, 381f))))), vec2<f32>(_wgslsmith_f_op_f32(sign(-515f)), _wgslsmith_f_op_f32(-417f * 412f)), func_3().xy)), any(vec3<bool>(func_3().x, true, true)))), -299f, _wgslsmith_mod_vec3_u32(firstLeadingBit(u_input.b.wxy), _wgslsmith_add_vec3_u32(vec3<u32>(~u_input.e.x, 4294967295u, 3784u), countOneBits(~u_input.e))), vec4<f32>(186f, -185f, _wgslsmith_f_op_f32(407f + -817f), _wgslsmith_f_op_f32(sign(1739f))), firstLeadingBit(u_input.b.xxx));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 9>();
    let var_0 = global2[_wgslsmith_index_u32(0u, 9u)];
    global0 = global2[_wgslsmith_index_u32(0u, 9u)];
    var var_1 = global1.a;
    let var_2 = global2[_wgslsmith_index_u32(0u, 9u)];
    let x = u_input.a;
    s_output = func_1(Struct_1(vec2<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(-23395i, global0.a.x), u_input.c.zz), -1i)), reverseBits(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-27126i, var_0.a.x, -1i, global4.a.x), vec4<i32>(u_input.c.x, global1.a.x, u_input.c.x, var_2.a.x)), -vec4<i32>(global4.a.x, var_2.a.x, 1i, u_input.c.x))) | countOneBits(-countOneBits(vec4<i32>(17611i, global0.a.x, global0.a.x, var_0.a.x))));
}

