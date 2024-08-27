struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: f32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: i32,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-4029i, 0i);

var<private> global1: array<Struct_2, 23>;

var<private> global2: u32 = 15491u;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> f32 {
    global2 = ~u_input.c;
    let var_0 = (_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b, 0i, u_input.b, 18141i), _wgslsmith_sub_vec4_i32(-vec4<i32>(11728i, -2147483647i, 2147483647i, u_input.b), -vec4<i32>(u_input.b, -2147483647i, 22841i, -28083i))) >> (_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.c, 16925u), vec3<u32>(u_input.c, u_input.c, u_input.a.x)), min(vec3<u32>(4294967295u, 4294967295u, u_input.a.x), ~vec3<u32>(10404u, 4294967295u, 25642u))) % 32u)) & -7518i;
    global0 = vec2<i32>(0i, _wgslsmith_mod_i32(~(~global0.x), 43263i));
    global1 = array<Struct_2, 23>();
    let var_1 = u_input.a.x;
    return _wgslsmith_f_op_f32(-1161f + 545f);
}

fn func_1() -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(93160u, 23u)];
    global1 = array<Struct_2, 23>();
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.a.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_0.a.b.x)))))))));
    global1 = array<Struct_2, 23>();
    var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(129f, _wgslsmith_f_op_f32(func_2())) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.d.yy), var_0.a.b.yx))), var_0.b.zz));
    return 2446f;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: bool) -> vec4<u32> {
    var var_0 = all(!(!vec4<bool>(false, arg_1.a.a.x, arg_2 && arg_1.a.a.x, arg_1.a.a.x == arg_1.a.a.x)));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(arg_1.a.b.x))));
    var_0 = false;
    global1 = array<Struct_2, 23>();
    let var_2 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1563f, _wgslsmith_div_f32(var_1, arg_1.b.x), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1196f + var_1))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, var_1)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.c, -1366f, _wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(-375f * arg_1.c)))) * _wgslsmith_f_op_vec4_f32(floor(arg_1.d)))));
    return ~_wgslsmith_clamp_vec4_u32(~countOneBits(u_input.a) >> (vec4<u32>(reverseBits(arg_1.a.c), ~14882u, ~4294967295u, ~u_input.c) % vec4<u32>(32u)), ~vec4<u32>(arg_1.a.c, ~4294967295u, 18320u, ~0u), _wgslsmith_clamp_vec4_u32(select(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.a.c, 58742u, 4294967295u, 0u), vec4<u32>(1u, 3791u, 4294967295u, 1u)), abs(vec4<u32>(arg_1.a.c, u_input.a.x, u_input.c, 0u)), !vec4<bool>(arg_1.a.a.x, arg_2, true, true)), vec4<u32>(~u_input.c, _wgslsmith_mult_u32(59644u, u_input.a.x), u_input.c, ~u_input.a.x), u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<bool>(true, ~_wgslsmith_sub_i32(global0.x, -2147483647i) <= -26235i), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), -1000f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1717f * -487f), _wgslsmith_f_op_f32(floor(1745f)))))), -210f), ~u_input.a.x & _wgslsmith_div_u32(u_input.a.x, ~(~1u)), abs(vec3<i32>(-1i, global0.x, 39325i)));
    var var_1 = Struct_3(global1[_wgslsmith_index_u32(1u, 23u)], min(global0.x, _wgslsmith_sub_i32(0i, ~reverseBits(2147483647i))), -498i, global1[_wgslsmith_index_u32((~(~var_0.c) << (_wgslsmith_clamp_u32(var_0.c, u_input.a.x, u_input.a.x) % 32u)) >> ((4294967295u ^ var_0.c) % 32u), 23u)], all(vec4<bool>(true, !(var_0.c <= u_input.c), false, false)));
    var var_2 = select(var_0.a.x, !var_0.a.x, !var_0.a.x);
    global1 = array<Struct_2, 23>();
    var var_3 = firstTrailingBit(-vec4<i32>(-var_1.d.a.d.x, u_input.b, 1i, countOneBits(0i)) >> (func_3(vec4<i32>(u_input.b, -global0.x, -1i, 93268i), Struct_2(Struct_1(vec2<bool>(var_0.a.x, true), var_1.d.a.b, var_0.c, var_0.d), var_0.b, var_1.a.b.x, var_1.a.d), all(select(vec4<bool>(var_1.e, var_0.a.x, true, var_1.e), vec4<bool>(true, var_1.e, true, false), var_1.a.a.a.x))) % vec4<u32>(32u)));
    var var_4 = global1[_wgslsmith_index_u32(~max(~max(0u, 1u), var_0.c), 23u)];
    var var_5 = Struct_2(var_4.a, _wgslsmith_f_op_vec3_f32(select(var_4.d.xzz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x)), _wgslsmith_f_op_vec3_f32(-var_4.d.zzw))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_1.a.a.b)))), select(vec3<bool>(false, any(vec4<bool>(true, true, var_4.a.a.x, false)), true), select(select(vec3<bool>(var_1.a.a.a.x, true, false), vec3<bool>(var_1.d.a.a.x, false, var_1.d.a.a.x), vec3<bool>(var_0.a.x, var_1.a.a.a.x, var_1.d.a.a.x)), vec3<bool>(var_0.a.x, true, var_1.d.a.a.x), select(vec3<bool>(true, var_4.a.a.x, var_1.e), vec3<bool>(var_4.a.a.x, var_4.a.a.x, true), vec3<bool>(false, var_4.a.a.x, true))), !vec3<bool>(var_4.a.a.x, var_1.e, var_1.a.a.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(986f, var_0.b.x)))), var_1.d.d);
    let x = u_input.a;
    s_output = StorageBuffer(-(u_input.b << (var_1.d.a.c % 32u)), var_0.b.xz);
}

