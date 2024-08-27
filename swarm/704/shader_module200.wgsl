struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 20> = array<vec2<i32>, 20>(vec2<i32>(-60679i, 43514i), vec2<i32>(-1i, 1i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-68030i, -19497i), vec2<i32>(25529i, 2147483647i), vec2<i32>(i32(-2147483648), 21803i), vec2<i32>(6466i, 35988i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-13827i, -31978i), vec2<i32>(15304i, -45749i), vec2<i32>(2147483647i, 32735i), vec2<i32>(35420i, -8070i), vec2<i32>(24489i, 55577i), vec2<i32>(-43987i, 16710i), vec2<i32>(0i, 47003i), vec2<i32>(-41989i, 0i), vec2<i32>(0i, 0i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(0i, 0i), vec2<i32>(-2454i, -42077i));

var<private> global1: array<u32, 1>;

var<private> global2: array<vec4<u32>, 20>;

var<private> global3: bool;

var<private> global4: Struct_1 = Struct_1(2987u, vec2<i32>(-19389i, 2147483647i), 9857u, vec2<u32>(4294967295u, 4294967295u), false);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: vec3<i32>) -> vec2<u32> {
    global0 = array<vec2<i32>, 20>();
    let var_0 = 49597i;
    var var_1 = any(select(select(!select(vec3<bool>(false, false, global4.e), vec3<bool>(true, true, false), vec3<bool>(true, true, global4.e)), vec3<bool>(true, true, true), !vec3<bool>(true, global4.e, global4.e)), select(select(!vec3<bool>(global4.e, false, true), vec3<bool>(global4.e, global4.e, false), select(vec3<bool>(false, true, global4.e), vec3<bool>(true, false, global4.e), global4.e)), vec3<bool>(all(vec3<bool>(false, global4.e, global4.e)), true, global4.e), true || all(vec3<bool>(global4.e, false, global4.e))), !(true || global4.e)));
    var var_2 = Struct_2(Struct_1(arg_0, ~min(arg_2.yy, select(arg_2.zx, vec2<i32>(global4.b.x, 2147483647i), vec2<bool>(global4.e, false))), u_input.a.x, ~countOneBits(select(u_input.a.xz, u_input.a.xz, vec2<bool>(global4.e, global4.e))), all(vec3<bool>(true, global4.e, false)) && all(!vec4<bool>(false, global4.e, true, false))), ~(~1u), -1000f);
    let var_3 = Struct_1(13181u, vec2<i32>(1i & _wgslsmith_add_i32(global4.b.x, -1i), abs(_wgslsmith_mod_i32(arg_1.x, arg_2.x))), u_input.a.x, vec2<u32>(min(firstTrailingBit(var_2.b), 56372u), ~arg_0 >> (arg_0 % 32u)), !any(!select(vec2<bool>(false, false), vec2<bool>(global4.e, false), var_2.a.e)));
    return select(global4.d, vec2<u32>(_wgslsmith_mod_u32(firstLeadingBit(max(global4.d.x, 16800u)), ~_wgslsmith_clamp_u32(1u, 44578u, var_3.c)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global4.a, var_2.a.a, global1[_wgslsmith_index_u32(76369u, 1u)]), global2[_wgslsmith_index_u32(13118u, 20u)]) >> (var_3.a % 32u)), vec2<bool>(true, true));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: vec4<i32>) -> f32 {
    global1 = array<u32, 1>();
    var var_0 = Struct_2(Struct_1(~global1[_wgslsmith_index_u32(arg_0.x | 1u, 1u)], vec2<i32>(u_input.b.x, -2147483647i), 4294967295u, vec2<u32>(global4.a, ~u_input.a.x), arg_2.x != _wgslsmith_f_op_f32(step(arg_2.x, -325f))), _wgslsmith_add_u32(min(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~global4.d, vec2<u32>(global1[_wgslsmith_index_u32(1u, 1u)], u_input.a.x)), 1u)], global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(countOneBits(u_input.a.x), 1u)], 1u)]), ~arg_0.x), arg_2.x);
    let var_1 = vec4<bool>(false, arg_1.x, false, select(select(u_input.a.x, ~4294967295u, any(arg_1)) >= (34568u >> (~arg_0.x % 32u)), !all(select(vec3<bool>(true, true, true), vec3<bool>(var_0.a.e, true, global4.e), arg_1.zwz)), all(select(select(vec2<bool>(arg_1.x, true), arg_1.yz, true), arg_1.wy, var_0.a.e))));
    var var_2 = arg_2.x;
    let var_3 = _wgslsmith_add_u32(6120u, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(min(~vec2<u32>(0u, 36328u), _wgslsmith_div_vec2_u32(vec2<u32>(1u, var_0.b), u_input.a.zx)) >> (firstLeadingBit(var_0.a.d) % vec2<u32>(32u)), var_0.a.d), 1u)]);
    return _wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(arg_2.x))))))));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1414f, 1000f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(sign(1545f)))))))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_clamp_u32(global4.d.x, global4.d.x, ~global4.a ^ u_input.a.x), global0[_wgslsmith_index_u32(~global4.a, 20u)], 0u, ~vec2<u32>(~1u, 3596u << (global1[_wgslsmith_index_u32(u_input.a.x, 1u)] % 32u)), all(vec2<bool>(global4.e, false))), _wgslsmith_add_u32(global4.d.x ^ 1u, 71588u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(~func_3(global1[_wgslsmith_index_u32(24533u, 1u)], vec3<i32>(-1i, -2147483647i, -40249i), vec3<i32>(u_input.b.x, 13280i, 1i)), vec4<bool>(any(vec2<bool>(global4.e, false)), any(vec4<bool>(false, true, false, true)), true, global4.e), _wgslsmith_div_vec3_f32(vec3<f32>(-1053f, 884f, -1270f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-388f, -1549f, -674f))), abs(vec4<i32>(global4.b.x, -2147483647i, -2147483647i, -1i))))));
    global4 = var_1.a;
    var var_2 = global1[_wgslsmith_index_u32(firstLeadingBit(~(abs(var_1.b) << (min(6645u, u_input.a.x) % 32u))), 1u)] & ~(~0u);
    var var_3 = _wgslsmith_clamp_vec4_i32(firstLeadingBit(select(firstLeadingBit(vec4<i32>(var_1.a.b.x, 1i, u_input.b.x, var_1.a.b.x)), ~u_input.b | firstTrailingBit(u_input.b), select(!vec4<bool>(global4.e, false, global4.e, var_1.a.e), vec4<bool>(true, true, true, true), var_1.a.e))), -(abs(min(vec4<i32>(2147483647i, global4.b.x, 0i, var_1.a.b.x), vec4<i32>(-58640i, 2147483647i, 0i, var_1.a.b.x))) & ~u_input.b), vec4<i32>(11504i, _wgslsmith_add_i32(max(i32(-1i) * -1i, -2147483647i), 1i), -u_input.b.x >> (global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global4.d.x, 0u), u_input.a), ~u_input.a.x), 1u)] % 32u), 0i));
    return var_1.c;
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = 69930u;
    global0 = array<vec2<i32>, 20>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(505f, _wgslsmith_f_op_f32(func_2()), 140f) + vec3<f32>(_wgslsmith_f_op_f32(-arg_0), 590f, arg_0)), vec3<f32>(_wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), arg_0)), 248f), all(!(!vec3<bool>(global4.e, false, global4.e))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-829f, 1519f, 692f), vec3<f32>(arg_0, arg_0, -2456f))))));
    var var_2 = Struct_2(Struct_1(global1[_wgslsmith_index_u32(min(min(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, global4.d.x), 1u)], _wgslsmith_dot_vec3_u32(vec3<u32>(global4.c, 60941u, 20485u), vec3<u32>(global1[_wgslsmith_index_u32(var_0, 1u)], 0u, u_input.a.x))), global1[_wgslsmith_index_u32(0u, 1u)]), 1u)], abs(countOneBits(vec2<i32>(global4.b.x, global4.b.x))), u_input.a.x, ~(~vec2<u32>(var_0, global1[_wgslsmith_index_u32(39579u, 1u)])), false), u_input.a.x, var_1.x);
    var var_3 = -u_input.b;
    return Struct_2(var_2.a, 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(max(vec3<i32>(u_input.b.x, _wgslsmith_mod_i32(2147483647i, u_input.b.x), abs(u_input.b.x)), vec3<i32>(firstTrailingBit(u_input.b.x), _wgslsmith_add_i32(-2147483647i, u_input.b.x), firstTrailingBit(0i)))) & abs(abs(vec3<i32>(reverseBits(0i), -28293i, -1i)));
    var var_1 = _wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, 2232u, 87430u) << (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global4.c, global1[_wgslsmith_index_u32(21962u, 1u)], 0u), global2[_wgslsmith_index_u32(7652u, 20u)]) % vec4<u32>(32u)), select(_wgslsmith_mult_vec4_u32(global2[_wgslsmith_index_u32(global4.d.x, 20u)], global2[_wgslsmith_index_u32(global4.d.x, 20u)]), vec4<u32>(global4.a, global4.c, 1u, 56963u), global4.e & global4.e)), _wgslsmith_dot_vec4_u32(~vec4<u32>(755u, u_input.a.x, global4.c, global4.c), abs(select(vec4<u32>(0u, u_input.a.x, u_input.a.x, global4.d.x), vec4<u32>(4294967295u, u_input.a.x, global4.a, 0u), false))), ~abs(0u)));
    global3 = false;
    var var_2 = func_1(_wgslsmith_f_op_f32(floor(676f)));
    let var_3 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(~countOneBits(var_0.x), var_2.a.b.x), _wgslsmith_clamp_vec3_i32(var_0, vec3<i32>(global4.b.x, -u_input.b.x >> (global1[_wgslsmith_index_u32(~4294967295u, 1u)] % 32u), 2147483647i), _wgslsmith_mod_vec3_i32(~vec3<i32>(-23415i, -18880i, 2147483647i), _wgslsmith_sub_vec3_i32(vec3<i32>(-55105i, var_3.x, 8096i), var_0) | -vec3<i32>(-2147483647i, global4.b.x, global4.b.x))), firstTrailingBit(~u_input.a.x ^ ~global1[_wgslsmith_index_u32(var_2.a.c, 1u)]), reverseBits(global0[_wgslsmith_index_u32(countOneBits(firstTrailingBit(~496u)), 20u)]));
}

