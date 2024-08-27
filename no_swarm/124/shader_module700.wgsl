struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: f32,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: u32,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec3<u32>, 5>;

var<private> global2: Struct_2 = Struct_2(vec4<i32>(-1i, 26206i, 1i, -20497i), vec4<i32>(1i, 1i, -14612i, -39035i), -357f, vec3<bool>(false, true, false));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec3<u32> {
    var var_0 = 1000f;
    return global1[_wgslsmith_index_u32(0u >> (~(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 62873u), firstLeadingBit(vec2<u32>(11273u, 6224u))) | 0u) % 32u), 5u)];
}

fn func_2(arg_0: vec4<bool>, arg_1: bool) -> Struct_3 {
    var var_0 = select(arg_0.wwx, !vec3<bool>(-606f != _wgslsmith_f_op_f32(-global2.c), global2.d.x, all(global2.d.yx)), any(!vec3<bool>(true, global0.x, !arg_0.x)));
    let var_1 = Struct_4(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(444f)) * _wgslsmith_f_op_f32(-global2.c)), _wgslsmith_f_op_f32(f32(-1f) * -2283f)), !(_wgslsmith_f_op_f32(-global2.c) >= _wgslsmith_f_op_f32(round(-1000f))), vec2<bool>(all(!global2.d), false), 917f), _wgslsmith_f_op_f32(ceil(1f)), any(select(!vec3<bool>(arg_1, true, true), vec3<bool>(all(vec4<bool>(false, global0.x, true, arg_0.x)), select(global2.d.x, var_0.x, false), arg_1), vec3<bool>(true, global2.c != global2.c, true))), ~(~23596u));
    global1 = array<vec3<u32>, 5>();
    global1 = array<vec3<u32>, 5>();
    return Struct_3(arg_0.yxw, reverseBits(func_3()));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: vec2<bool>) -> u32 {
    let var_0 = !vec3<bool>(false | arg_1.x, arg_1.x, arg_0.x);
    let var_1 = func_2(!(!(!select(vec4<bool>(arg_0.x, global0.x, global2.d.x, arg_2.x), vec4<bool>(false, var_0.x, arg_1.x, var_0.x), vec4<bool>(false, true, true, arg_0.x)))), (true && any(vec3<bool>(global2.d.x, false, true))) && (max(-1i, global2.b.x) < ~min(-28248i, u_input.a)));
    return var_1.b.x;
}

fn func_4(arg_0: vec4<u32>, arg_1: u32) -> bool {
    var var_0 = global2.c;
    var var_1 = Struct_2(vec4<i32>(global2.a.x, u_input.a, abs(firstTrailingBit(-1i)), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(global2.a.zwz, ~vec3<i32>(u_input.a, global2.a.x, 1i)), -u_input.a)), -select(vec4<i32>(~(-19412i), ~global2.a.x, _wgslsmith_dot_vec2_i32(global2.b.wy, global2.b.wz), global2.a.x), vec4<i32>(-1i) * -global2.b, global0.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -286f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), global2.d);
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global2.c, var_1.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, -689f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.c, var_1.c))))), !(!any(select(vec4<bool>(true, false, false, true), vec4<bool>(global2.d.x, global2.d.x, global2.d.x, global0.x), vec4<bool>(global2.d.x, true, global0.x, global2.d.x)))), func_2(vec4<bool>(_wgslsmith_f_op_f32(-global2.c) <= global2.c, var_1.d.x, true, all(vec3<bool>(var_1.d.x, false, global2.d.x))), select(global0.x, true, all(!vec2<bool>(true, global2.d.x)))).a.zz, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.c, _wgslsmith_f_op_f32(max(227f, global2.c)), func_2(vec4<bool>(global0.x, false, global0.x, var_1.d.x), global0.x).a.x)) - _wgslsmith_f_op_f32(floor(var_1.c))))));
    var var_3 = func_2(!select(vec4<bool>(false, false != var_2.b, true, global2.d.x), select(vec4<bool>(true, global2.d.x, var_2.b, global2.d.x), select(vec4<bool>(true, false, false, global2.d.x), vec4<bool>(var_1.d.x, true, var_2.b, true), vec4<bool>(var_2.c.x, var_2.c.x, var_1.d.x, var_1.d.x)), false), vec4<bool>(any(global2.d.zx), global2.c < 1225f, all(vec4<bool>(var_1.d.x, true, global2.d.x, global2.d.x)), true)), any(select(select(select(vec4<bool>(false, global2.d.x, var_1.d.x, var_2.b), vec4<bool>(var_1.d.x, false, var_1.d.x, global2.d.x), vec4<bool>(global0.x, global0.x, true, true)), vec4<bool>(true, true, true, true), !vec4<bool>(var_2.b, false, true, var_2.b)), vec4<bool>(var_1.a.x < 55609i, true, !global2.d.x, true), vec4<bool>(global0.x || false, true, true, true))));
    global1 = array<vec3<u32>, 5>();
    return !var_1.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<bool>(global2.d.x, !func_4(min(vec4<u32>(87071u, 94154u, 32990u, 31895u), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_mod_u32(34412u, func_1(global2.d, global2.d, vec2<bool>(global2.d.x, false)))));
    let var_0 = _wgslsmith_f_op_f32(global2.c * _wgslsmith_f_op_f32(f32(-1f) * -1972f));
    var var_1 = _wgslsmith_f_op_f32(-var_0);
    var_1 = global2.c;
    var var_2 = u_input.a ^ ~_wgslsmith_add_i32(max(abs(-2147483647i), ~u_input.a), _wgslsmith_add_i32(_wgslsmith_clamp_i32(global2.a.x, global2.b.x, -7803i), _wgslsmith_dot_vec2_i32(vec2<i32>(global2.b.x, global2.a.x), global2.b.zx)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1340f, _wgslsmith_f_op_f32(-global2.c)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-486f, -1343f) + vec2<f32>(global2.c, 541f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2.c, global2.c))))))))), global2.d.x, select(vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, false), global2.d.xz)), !global2.d.x), vec2<bool>(any(global2.d), 1u >= firstTrailingBit(1u)), global2.d.yy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-244f * -840f) + _wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(-1005f - var_0))))));
    let var_4 = vec4<i32>(countOneBits(u_input.a), global2.b.x ^ u_input.a, ~(-25968i), u_input.a);
    let var_5 = _wgslsmith_div_u32(func_2(select(select(!vec4<bool>(var_3.b, var_3.b, true, false), vec4<bool>(true, var_3.b, false, var_3.b), select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(false, global2.d.x, false, true), vec4<bool>(global2.d.x, false, true, global2.d.x))), !select(vec4<bool>(true, global2.d.x, false, var_3.c.x), vec4<bool>(true, var_3.b, true, false), false), !select(vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(global2.d.x, true, global2.d.x, global0.x), vec4<bool>(true, var_3.b, true, global2.d.x))), true).b.x, reverseBits(58595u));
    var var_6 = -vec3<i32>(-(~countOneBits(global2.b.x)), var_4.x, 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(global2.b.x, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_5, 765u, 62938u, 1u), vec4<u32>(var_5, var_5, var_5, var_5)), countOneBits(vec4<u32>(0u, 66747u, 64662u, 1u))), vec4<u32>(~1u, var_5, 1u, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_5, var_5), ~var_5, var_5 | var_5))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(336f, 676f, -1581f, 296f)) + _wgslsmith_div_vec4_f32(vec4<f32>(global2.c, var_3.a.x, 195f, var_0), vec4<f32>(-474f, global2.c, var_0, var_3.d))))))), ~abs(vec2<u32>(var_5, 4294967295u)));
}

