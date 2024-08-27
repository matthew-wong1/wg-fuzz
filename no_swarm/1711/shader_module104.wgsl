struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<i32>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(66240u);

var<private> global1: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(true, 1u, 1u), Struct_1(false, 4294967295u, 0u), Struct_1(true, 8912u, 0u), Struct_1(true, 1u, 38467u), Struct_1(false, 14622u, 94930u), Struct_1(false, 16827u, 0u), Struct_1(true, 40010u, 62995u), Struct_1(false, 47249u, 18397u), Struct_1(true, 0u, 1u), Struct_1(true, 6727u, 180u), Struct_1(true, 28961u, 4294967295u));

var<private> global2: array<vec2<bool>, 11>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2147f * 679f))))));
}

fn func_2() -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + 676f))) > _wgslsmith_f_op_f32(max(-1348f, -292f));
    let var_1 = Struct_3(global1[_wgslsmith_index_u32(10037u | u_input.b.x, 11u)], select(global2[_wgslsmith_index_u32(4294967295u, 11u)], vec2<bool>(true, true), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(~u_input.a.x), max(1u, abs(1u))), 11u)]), _wgslsmith_clamp_vec3_i32(~(-vec3<i32>(1i, 1i, 1i)), vec3<i32>(-1i, -_wgslsmith_dot_vec3_i32(vec3<i32>(46364i, 6789i, -1i), vec3<i32>(1i, 1i, -1i)), -1i), -vec3<i32>(1i, -1i, ~0i)));
    let var_2 = Struct_4(firstTrailingBit(_wgslsmith_dot_vec3_u32(max(vec3<u32>(0u, 73155u, 5977u), ~u_input.a), vec3<u32>(_wgslsmith_add_u32(1u, var_1.a.c), _wgslsmith_add_u32(global0.a, global0.a), var_1.a.b ^ global0.a))));
    let var_3 = var_1.a;
    let var_4 = ~_wgslsmith_mult_i32(-(~(-12826i)), ~1i);
    return -vec4<i32>(0i, _wgslsmith_sub_i32(-min(7370i, 26903i), var_4), ~_wgslsmith_sub_i32(1i, var_1.c.x), max(~(-1i), i32(-1i) * -51858i));
}

fn func_1() -> vec4<i32> {
    global0 = Struct_4(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(561u, 0u, global0.a, global0.a), vec4<u32>(global0.a, u_input.c, 4294967295u, 1u))) & _wgslsmith_mult_u32(0u, _wgslsmith_dot_vec3_u32(u_input.b, max(u_input.b, u_input.b))));
    var var_0 = global1[_wgslsmith_index_u32(~(~(~(~u_input.a.x))), 11u)];
    var var_1 = -1584f;
    var var_2 = u_input.a.yy ^ _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b.zy, select(~vec2<u32>(19561u, 0u), _wgslsmith_clamp_vec2_u32(vec2<u32>(32295u, 0u), vec2<u32>(var_0.c, 59335u), u_input.a.zx), !var_0.a)), select(~vec2<u32>(32482u, var_0.b), ~vec2<u32>(74874u, var_0.c), vec2<bool>(all(vec3<bool>(var_0.a, var_0.a, true)), var_0.a)));
    let var_3 = vec2<bool>(_wgslsmith_f_op_f32(-1000f - -629f) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1273f))) - -1000f), var_0.a | true);
    return func_2();
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<bool>) -> Struct_3 {
    global1 = array<Struct_1, 11>();
    var var_0 = Struct_3(global1[_wgslsmith_index_u32(4294967295u, 11u)], select(select(arg_1.xz, !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(arg_1.zz, arg_1.zz, arg_1.yx)), select(global2[_wgslsmith_index_u32(~54751u, 11u)], !select(arg_1.xz, vec2<bool>(arg_1.x, false), vec2<bool>(arg_1.x, arg_1.x)), global2[_wgslsmith_index_u32(u_input.c | _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a, 0u, 4294967295u, 69857u), vec4<u32>(56809u, u_input.a.x, u_input.d, u_input.d)), 11u)]), true && arg_1.x), arg_0.xxz);
    let var_1 = arg_1.x;
    let var_2 = vec3<i32>(arg_0.x, -22905i, var_0.c.x);
    global2 = array<vec2<bool>, 11>();
    return Struct_3(var_0.a, vec2<bool>(!(var_1 || all(arg_1.xz)), false), _wgslsmith_mult_vec3_i32(~arg_0.xyx >> (reverseBits(vec3<u32>(70207u, 0u, 1u)) % vec3<u32>(32u)), max(~vec3<i32>(2147483647i, 5978i, 23619i), ~arg_0.xwy) | vec3<i32>(var_0.c.x, 1i, arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(-func_1(), !vec3<bool>(true, all(vec2<bool>(true, true)), true));
    var var_1 = vec4<bool>(var_0.a.a, var_0.a.a, all(!vec4<bool>(false, var_0.c.x <= var_0.c.x, var_0.a.a, var_0.a.a)), var_0.b.x);
    var_1 = vec4<bool>(false, func_2().x < var_0.c.x, var_1.x, all(var_1.yyw));
    var var_2 = var_0.c.xy;
    var_1 = select(select(vec4<bool>(var_1.x && true, false, any(vec2<bool>(true, false)), var_1.x), !(!select(vec4<bool>(var_0.a.a, var_1.x, false, true), vec4<bool>(var_0.a.a, var_0.b.x, true, true), true)), true), select(!vec4<bool>(true, 1u >= global0.a, var_1.x, var_0.b.x), vec4<bool>(var_1.x, select(false, var_0.b.x, var_0.a.a), any(vec3<bool>(var_0.a.a, true, true)), !(var_1.x == var_0.a.a)), vec4<bool>(true, false, !(!var_0.a.a), var_0.a.a)), !(!vec4<bool>(true, var_1.x, u_input.d == 46119u, true)));
    let var_3 = min(global0.a, 9146u) << (firstLeadingBit(~(~var_0.a.b) << (4294967295u % 32u)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1409f, 605f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-315f, -1127f)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-2332f, -1892f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-429f, 475f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-2017f, -1281f) - vec2<f32>(-403f, -882f))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-182f, -915f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-162f, 572f) - vec2<f32>(1626f, -1917f))))), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1359f, 1408f, -1825f, 2282f), vec4<f32>(-538f, -390f, 1000f, 237f)))))), var_3 & 32558u, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.a.c ^ var_0.a.b, ~4294967295u), vec2<u32>(~_wgslsmith_div_u32(1u, u_input.d), global0.a)), ~reverseBits(u_input.c));
}

