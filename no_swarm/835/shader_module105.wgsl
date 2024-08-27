struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 12>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>) -> u32 {
    let var_0 = vec3<bool>(arg_0.b, !any(select(arg_0.c, vec4<bool>(true, false, false, true), vec4<bool>(arg_0.b, true, arg_0.b, false))), arg_0.b | arg_0.c.x);
    let var_1 = Struct_1(vec2<u32>((u_input.c.x & ~1u) | select(abs(arg_1.x), 4294967295u << (arg_1.x % 32u), var_0.x), u_input.c.x));
    var var_2 = select(reverseBits(firstLeadingBit(firstTrailingBit(u_input.b))), firstTrailingBit(firstTrailingBit(select(~vec3<i32>(u_input.a, arg_0.a, arg_0.a), -u_input.b, vec3<bool>(arg_0.b, true, arg_0.b)))), any(arg_0.c));
    let var_3 = Struct_3(vec4<u32>(~var_1.a.x, ~(~u_input.c.x), u_input.c.x, _wgslsmith_add_u32(1u, 68515u)), ~vec2<u32>(~var_1.a.x, _wgslsmith_mult_u32(~var_1.a.x, min(u_input.c.x, var_1.a.x))), true && any(global0[_wgslsmith_index_u32(var_1.a.x, 12u)]));
    let var_4 = -2147483647i;
    return var_1.a.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: vec3<u32>, arg_3: vec4<u32>) -> bool {
    let var_0 = !vec2<bool>(arg_1, arg_1);
    var var_1 = vec3<u32>(arg_2.x, _wgslsmith_mod_u32(func_3(Struct_2(u_input.a, false, vec4<bool>(arg_1, false, false, var_0.x)), abs(vec3<u32>(23557u, 0u, 1u))), _wgslsmith_sub_u32(~arg_2.x, arg_3.x)) | abs(u_input.c.x), arg_3.x);
    global0 = array<vec3<bool>, 12>();
    let var_2 = u_input.b.x;
    let var_3 = select(select(vec4<bool>(false != all(var_0), arg_1, true, true), !(!(!vec4<bool>(var_0.x, false, arg_1, false))), select(select(!vec4<bool>(arg_1, var_0.x, true, arg_1), !vec4<bool>(arg_1, false, false, arg_1), arg_1), !vec4<bool>(false, arg_1, var_0.x, arg_1), select(vec4<bool>(false, true, arg_1, true), select(vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(true, var_0.x, arg_1, var_0.x)), !vec4<bool>(false, var_0.x, false, var_0.x)))), select(vec4<bool>(arg_0.x != arg_0.x, any(vec3<bool>(true, var_0.x, true)), !any(vec4<bool>(false, false, true, var_0.x)), var_0.x), vec4<bool>(_wgslsmith_f_op_f32(exp2(arg_0.x)) != -124f, !(0i != var_2), arg_1, true), true), !vec4<bool>(false, true, !var_0.x, any(var_0)));
    return all(var_0);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    var var_0 = ~(-_wgslsmith_sub_vec3_i32(select(u_input.b, vec3<i32>(u_input.b.x, 0i, -28814i), any(global0[_wgslsmith_index_u32(u_input.c.x, 12u)])), ~(-u_input.b)));
    global0 = array<vec3<bool>, 12>();
    var var_1 = vec3<bool>(false, !(true | ((u_input.c.x > 64478u) && true)), _wgslsmith_f_op_f32(1208f - arg_0) < _wgslsmith_f_op_f32(arg_0 - _wgslsmith_div_f32(-878f, -345f)));
    var var_2 = Struct_2(_wgslsmith_mod_i32(u_input.a, 1i ^ abs(firstTrailingBit(-1i))), var_1.x, select(vec4<bool>(true, true, true, true), select(select(!vec4<bool>(false, true, var_1.x, var_1.x), select(vec4<bool>(false, var_1.x, false, true), vec4<bool>(var_1.x, false, false, var_1.x), false), all(vec4<bool>(var_1.x, var_1.x, var_1.x, true))), !(!vec4<bool>(false, false, false, var_1.x)), !(!vec4<bool>(true, var_1.x, false, true))), select(!vec4<bool>(true, false, false, var_1.x), vec4<bool>(any(vec2<bool>(true, false)), 517f == arg_0, true, true), vec4<bool>(true, false, true || var_1.x, true))));
    var_1 = !vec3<bool>(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, 1553f)))), !select(var_1.x, true, false), min(u_input.c >> (vec3<u32>(1u, 21834u, arg_2) % vec3<u32>(32u)), vec3<u32>(arg_2, arg_2, u_input.c.x)), vec4<u32>(u_input.c.x, ~1u, abs(79452u), ~arg_1.a.x)), !any(select(var_2.c.yx, vec2<bool>(var_1.x, true), false)), !var_1.x);
    return Struct_2(_wgslsmith_mod_i32(-var_2.a, max(~(-1i), _wgslsmith_dot_vec3_i32(u_input.b, ~u_input.b))), !(!func_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(324f, arg_0), vec2<f32>(-1184f, -444f))), true, u_input.c, countOneBits(vec4<u32>(54336u, 4294967295u, arg_2, 81524u)))), vec4<bool>(false, var_1.x, var_2.c.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1177f, 1000f)))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -577f)), vec2<f32>(-1990f, -602f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-397f, 274f) + vec2<f32>(-352f, 104f))))) + vec2<f32>(-420f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-676f - 766f))))));
    global0 = array<vec3<bool>, 12>();
    global0 = array<vec3<bool>, 12>();
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -478f)))))), var_0.x);
    let var_1 = _wgslsmith_dot_vec2_u32(u_input.c.xz, firstTrailingBit(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(6522u, u_input.c.x), vec2<u32>(u_input.c.x, 4294967295u)) ^ ~vec2<u32>(u_input.c.x, 0u), ~(~vec2<u32>(0u, u_input.c.x)))));
    let var_2 = func_1(288f, Struct_1(vec2<u32>(u_input.c.x, u_input.c.x)), u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(563f, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(347f, var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<f32>(var_0.x, var_0.x, var_0.x, 1361f)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1563f, -1313f, -914f, -746f) - vec4<f32>(-1299f, var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, -969f, 343f, 671f), vec4<f32>(-193f, var_0.x, var_0.x, var_0.x))))), vec4<f32>(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -271f), var_0.x, 986f), !select(vec4<bool>(var_2.c.x, var_2.b, true, false), vec4<bool>(var_2.c.x, false, true, var_2.c.x), var_2.c.x))), false)), _wgslsmith_div_vec3_i32(u_input.b & vec3<i32>(-2147483647i, _wgslsmith_mult_i32(-1187i, 0i), var_2.a), -vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.b.xz, vec2<i32>(-1354i, -9779i)), ~2147483647i, u_input.a >> (1u % 32u))), var_1, ~_wgslsmith_sub_u32(1u, var_1));
}

