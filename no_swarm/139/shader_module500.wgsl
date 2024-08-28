struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<f32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_2;

var<private> global2: Struct_2;

var<private> global3: bool;

var<private> global4: array<vec2<i32>, 29>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2() -> f32 {
    var var_0 = Struct_1(countOneBits(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, 4294967295u, 4294967295u), vec4<u32>(u_input.b.x, 68416u, 54257u, u_input.b.x) ^ vec4<u32>(0u, 7183u, u_input.a, u_input.a)) >> (abs(min(u_input.b.x, u_input.b.x)) % 32u), 29u)]));
    var var_1 = -_wgslsmith_dot_vec2_i32(reverseBits(global4[_wgslsmith_index_u32(~(u_input.b.x & 55285u), 29u)]), vec2<i32>(17284i, min(~var_0.a.x, max(var_0.a.x, 0i))));
    var var_2 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global2.a))), global1.a));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(global1.a.x))));
}

fn func_3(arg_0: f32) -> vec3<u32> {
    var var_0 = Struct_1(select(~reverseBits(min(global4[_wgslsmith_index_u32(u_input.b.x, 29u)], vec2<i32>(-40897i, -8667i))), -vec2<i32>(1i, 1i), select(!select(global0.zw, global0.wz, global0.x), select(vec2<bool>(global0.x, false), vec2<bool>(true, true), global0.x), !select(vec2<bool>(false, global0.x), global0.zx, false))));
    let var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -617f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1533f)), _wgslsmith_f_op_f32(-arg_0)))));
    let var_2 = vec2<i32>(~_wgslsmith_dot_vec4_i32(-(vec4<i32>(2147483647i, -1i, var_0.a.x, 8166i) & vec4<i32>(2147483647i, var_0.a.x, -10168i, 5708i)), -vec4<i32>(var_0.a.x, var_0.a.x, -28675i, -30767i)), -(~(-32868i)));
    var var_3 = _wgslsmith_mod_vec2_u32(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), u_input.b)), vec2<u32>(reverseBits(abs(_wgslsmith_div_u32(u_input.a, u_input.b.x))), reverseBits(~1u)));
    var var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(select(var_1.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global1.a, vec2<f32>(425f, 483f)) - _wgslsmith_f_op_vec2_f32(min(global2.a, vec2<f32>(arg_0, 1870f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-504f, arg_0))) + vec2<f32>(arg_0, 651f))), !any(!vec2<bool>(global0.x, global0.x)))));
    return _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_3.x, ~(~4281u), _wgslsmith_div_u32(reverseBits(4294967295u), 35719u)), abs(vec3<u32>(_wgslsmith_mod_u32(40980u, u_input.a), ~89529u, ~u_input.a))), _wgslsmith_mult_vec3_u32(max(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, var_3.x, u_input.b.x), vec3<u32>(var_3.x, u_input.a, u_input.b.x)), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, var_3.x), vec3<u32>(29057u, 25258u, 1u))), reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, var_3.x, 4294967295u), vec3<u32>(113706u, 1u, 4294967295u)))), select(abs(vec3<u32>(u_input.b.x, u_input.a, 0u)) | abs(vec3<u32>(var_3.x, 0u, 1u)), ~firstTrailingBit(vec3<u32>(4294967295u, 1u, u_input.a)), global0.yxy)), countOneBits(_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(u_input.b.x, var_3.x, 0u)), vec3<u32>(var_3.x, u_input.b.x, 1u)) ^ vec3<u32>(41367u, _wgslsmith_add_u32(1u, 1u), _wgslsmith_mod_u32(var_3.x, 1u))));
}

fn func_1(arg_0: bool) -> Struct_2 {
    global4 = array<vec2<i32>, 29>();
    let var_0 = func_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2()))));
    global2 = Struct_2(global2.a);
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global1.a.x - -1915f), _wgslsmith_f_op_f32(step(1332f, global2.a.x))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.x, 750f) - vec2<f32>(global1.a.x, global1.a.x)) * _wgslsmith_f_op_vec2_f32(global2.a - global1.a))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.x, 330f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(163f, global1.a.x) * vec2<f32>(global2.a.x, global1.a.x))))));
    global1 = var_1;
    return Struct_2(vec2<f32>(global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global2.a.x)))) + -868f)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec2<i32>, 29>();
    global4 = array<vec2<i32>, 29>();
    global1 = func_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a.x), -1317f))) >= global1.a.x);
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) * _wgslsmith_f_op_f32(f32(-1f) * -640f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-561f + 290f)), global2.a.x) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1238f, global2.a.x, 394f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(260f, global1.a.x, -632f)))))));
    var var_1 = select(global0.zw, vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, true));
    var var_2 = ~min(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.b.x, 0u, 0u), max(select(vec4<u32>(u_input.a, 0u, 4294967295u, u_input.a), vec4<u32>(u_input.b.x, 1u, 4306u, 0u), global0.x), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.b.x, 1u, u_input.a), vec4<u32>(u_input.b.x, 4294967295u, u_input.a, 29045u)))), func_3(_wgslsmith_f_op_f32(1f + global1.a.x)).x);
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(step(global2.a.x, _wgslsmith_f_op_f32(exp2(var_0.x)))))));
    let var_4 = ~firstLeadingBit(u_input.a ^ 25617u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1353f, 557f, global1.a.x))) - vec3<f32>(666f, global1.a.x, var_3.a.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, -1786f, 452f)))), ~_wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, 18563i) >> (firstTrailingBit(u_input.b) % vec2<u32>(32u)), vec2<i32>(select(1i, 0i, var_1.x), select(25094i, -1i, var_1.x))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global2.a))), abs(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(16102i, -6866i, 0i)), vec3<i32>(-39455i, -1i, -21953i)), vec3<i32>(-1i, ~30336i, 1i))), ~67223u);
}

