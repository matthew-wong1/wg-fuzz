struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<f32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: i32 = 1i;

var<private> global2: array<vec2<bool>, 11>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec4<bool> {
    global0 = Struct_2(Struct_1(u_input.a.x, ~global0.a.b, max(global0.a.b.zz, global0.a.b.zz), _wgslsmith_f_op_f32(max(-173f, 1959f))), 0u, vec4<f32>(1f, -391f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.a.d * global0.a.d))), global0.a.d), vec2<bool>(true, true));
    global2 = array<vec2<bool>, 11>();
    global2 = array<vec2<bool>, 11>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global0.c.zw, global0.c.xw) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c.x, 173f) + global0.c.yw))) * global0.c.wy) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global0.c.zw), vec2<f32>(_wgslsmith_f_op_f32(global0.c.x * 291f), _wgslsmith_div_f32(1282f, -613f)), !all(vec4<bool>(false, global0.d.x, global0.d.x, global0.d.x)))) + _wgslsmith_f_op_vec2_f32(global0.c.wx + vec2<f32>(_wgslsmith_f_op_f32(global0.a.d - global0.a.d), _wgslsmith_f_op_f32(f32(-1f) * -436f)))));
    global0 = Struct_2(Struct_1(countOneBits(1i), select(~_wgslsmith_add_vec4_u32(global0.a.b, global0.a.b), abs(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 8049u, global0.a.c.x, 4294967295u), global0.a.b)), select(select(vec4<bool>(false, false, global0.d.x, global0.d.x), vec4<bool>(false, false, global0.d.x, global0.d.x), vec4<bool>(true, true, false, global0.d.x)), select(vec4<bool>(false, global0.d.x, true, false), vec4<bool>(global0.d.x, true, false, true), vec4<bool>(true, true, global0.d.x, true)), global0.d.x)), ~global0.a.c, _wgslsmith_f_op_f32(round(-1826f))), ~3210u, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1248f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(198f)))), global0.a.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1185f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.d), _wgslsmith_div_f32(-396f, global0.a.d))), -1510f), global2[_wgslsmith_index_u32(4294967295u ^ (_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 19634u, global0.b), global0.a.b.wwy) | ~_wgslsmith_add_u32(u_input.d, 4294967295u)), 11u)]);
    return vec4<bool>(false, global0.d.x, global0.d.x, u_input.b <= 36263u);
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    global2 = array<vec2<bool>, 11>();
    var var_0 = select(select(!vec4<bool>(all(vec4<bool>(global0.d.x, global0.d.x, false, false)), !global0.d.x, global0.d.x & global0.d.x, -1098f <= global0.c.x), func_3(), !global0.d.x), !(!(!select(vec4<bool>(global0.d.x, global0.d.x, false, false), vec4<bool>(true, true, true, global0.d.x), false))), select(!select(vec4<bool>(global0.d.x, false, true, global0.d.x), select(vec4<bool>(global0.d.x, false, true, false), vec4<bool>(global0.d.x, true, global0.d.x, true), vec4<bool>(global0.d.x, global0.d.x, global0.d.x, false)), global0.d.x), func_3(), !(arg_0.d < _wgslsmith_f_op_f32(abs(-841f)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d, arg_0.d, _wgslsmith_f_op_f32(-global0.c.x))))));
    global2 = array<vec2<bool>, 11>();
    var var_2 = 1088f;
    return Struct_2(Struct_1(u_input.a.x, ~reverseBits(global0.a.b), vec2<u32>(~global0.b, u_input.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), 17344u, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-2052f, global0.a.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2193f)) - _wgslsmith_f_op_f32(exp2(var_1.x))), 238f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - -608f) * _wgslsmith_f_op_f32(floor(global0.a.d)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(952f, arg_0.d, 700f, global0.a.d)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.c) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d, arg_0.d, global0.a.d, -973f))))), vec2<bool>(all(var_0.yx), u_input.b < select(max(38454u, arg_0.c.x), _wgslsmith_sub_u32(1u, 0u), var_0.x)));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec2<bool>) -> Struct_3 {
    global1 = func_2(Struct_1(_wgslsmith_dot_vec4_i32(max(vec4<i32>(1i, u_input.a.x, arg_2.a.a, 48303i), ~vec4<i32>(arg_1.a.a.a, 21009i, arg_1.e.a.a, global0.a.a)), vec4<i32>(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, arg_2.a.a, -9591i), u_input.a.yxy), arg_2.a.a, 1i << (arg_1.a.b % 32u))), _wgslsmith_div_vec4_u32(~abs(vec4<u32>(52269u, 61126u, 0u, 17124u)), ~(~vec4<u32>(1u, arg_2.b, 33987u, 4294967295u))), arg_2.a.b.wy, 150f)).a.a;
    global0 = arg_1.a;
    global0 = func_2(Struct_1(_wgslsmith_sub_i32(arg_2.a.a, _wgslsmith_div_i32(global0.a.a, 1i) ^ ~global0.a.a), ~arg_2.a.b, _wgslsmith_clamp_vec2_u32(~vec2<u32>(arg_2.a.b.x, 0u), select(arg_1.a.a.c, select(global0.a.b.ww, arg_1.e.a.b.yw, false), arg_3), ~vec2<u32>(1u, 943u)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(-1041f, arg_1.d), -1000f), arg_1.d))));
    global1 = -37451i;
    let var_0 = ~firstTrailingBit(func_2(Struct_1(firstTrailingBit(u_input.a.x), vec4<u32>(0u, 4294967295u, 4294967295u, 65785u), ~vec2<u32>(global0.a.b.x, arg_1.a.b), _wgslsmith_f_op_f32(min(arg_0.x, 284f)))).b);
    return Struct_3(func_2(Struct_1(_wgslsmith_mult_i32(~global0.a.a, func_2(arg_1.a.a).a.a), ~arg_1.e.a.b, ~(~global0.a.c), global0.a.d)), func_2(arg_2.a).a, false, 1000f, Struct_2(func_2(global0.a).a, _wgslsmith_sub_u32(arg_2.b | (arg_2.b >> (arg_2.b % 32u)), ~(18645u ^ arg_2.a.c.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.d, arg_0.x, -449f, -715f), vec4<f32>(-362f, 885f, _wgslsmith_f_op_f32(select(-800f, 108f, global0.d.x)), _wgslsmith_div_f32(-950f, 353f)))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(vec2<u32>(u_input.d, global0.a.b.x) | arg_1.e.a.b.wz), vec2<u32>(1u, 1u)), 11u)]));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: vec3<u32>, arg_3: u32) -> i32 {
    var var_0 = vec2<bool>((global0.d.x | any(arg_0.yw)) || !global0.d.x, all(vec3<bool>(true, select(!global0.d.x, false, !arg_0.x), !(!arg_0.x))));
    var_0 = select(select(vec2<bool>(!(!var_0.x), var_0.x), select(vec2<bool>(any(vec2<bool>(false, true)), global0.d.x), !select(vec2<bool>(arg_0.x, false), global2[_wgslsmith_index_u32(4294967295u, 11u)], arg_0.x), vec2<bool>(true, global0.c.x >= arg_1.x)), all(!(!arg_0))), !vec2<bool>(arg_0.x, true), !(arg_1.x > _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.d - 1000f), arg_1.x)));
    var var_1 = func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * global0.c.x) * _wgslsmith_f_op_f32(arg_1.x + -1000f)), 428f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1)))), Struct_3(func_2(global0.a), Struct_1(_wgslsmith_mod_i32(u_input.a.x ^ -317i, abs(u_input.a.x)), _wgslsmith_add_vec4_u32(global0.a.b, vec4<u32>(3838u, 73679u, 4294967295u, 52258u)) ^ global0.a.b, (arg_2.yy & vec2<u32>(0u, arg_3)) << (~global0.a.c % vec2<u32>(32u)), arg_1.x), any(vec4<bool>(select(true, arg_0.x, false), false, global0.d.x, false || var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-441f))), Struct_2(global0.a, 32066u, _wgslsmith_f_op_vec4_f32(trunc(global0.c)), !arg_0.zx)), Struct_2(func_2(func_2(global0.a).a).a, ~max(global0.b, ~40496u), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(global0.c, global0.c, arg_0)))), func_3().yy), select(vec2<bool>(any(vec4<bool>(false, false, true, var_0.x)), func_2(global0.a).d.x), vec2<bool>(global0.d.x, func_3().x), (_wgslsmith_f_op_f32(-982f * arg_1.x) > _wgslsmith_f_op_f32(-global0.a.d)) && (_wgslsmith_f_op_f32(select(282f, arg_1.x, false)) > _wgslsmith_f_op_f32(-global0.c.x))));
    let var_2 = var_1.a;
    let var_3 = ~abs(_wgslsmith_clamp_vec2_i32(-firstTrailingBit(u_input.a.yy), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), firstTrailingBit(u_input.a.ww)), ~(~u_input.c)));
    return _wgslsmith_dot_vec4_i32(vec4<i32>(~var_1.b.a, ~(~1i), -2147483647i, _wgslsmith_mod_i32(_wgslsmith_div_i32(var_3.x, ~2170i), -45518i)), vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(u_input.a, max(vec4<i32>(8499i, 24447i, var_1.a.a.a, global0.a.a), vec4<i32>(global0.a.a, 35734i, 29698i, -29523i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-func_1(select(select(vec4<bool>(false, false, global0.d.x, global0.d.x), vec4<bool>(false, global0.d.x, global0.d.x, true), global0.d.x), select(vec4<bool>(global0.d.x, global0.d.x, false, global0.d.x), vec4<bool>(global0.d.x, false, global0.d.x, global0.d.x), vec4<bool>(false, global0.d.x, false, true)), select(vec4<bool>(global0.d.x, false, global0.d.x, true), vec4<bool>(false, global0.d.x, global0.d.x, global0.d.x), global0.d.x)), vec2<f32>(global0.a.d, _wgslsmith_f_op_f32(global0.c.x - 655f)), abs(~vec3<u32>(19834u, 1u, u_input.d)), ~u_input.d), select(~_wgslsmith_clamp_vec4_u32(countOneBits(global0.a.b), vec4<u32>(34131u, 37650u, 4294967295u, 15725u), func_4(vec2<f32>(1449f, 345f), Struct_3(Struct_2(global0.a, u_input.d, vec4<f32>(global0.a.d, global0.a.d, -1577f, global0.c.x), global2[_wgslsmith_index_u32(global0.a.c.x, 11u)]), global0.a, false, -1331f, Struct_2(global0.a, 31239u, global0.c, global0.d)), Struct_2(global0.a, u_input.d, vec4<f32>(-396f, -2433f, global0.c.x, global0.c.x), global0.d), global2[_wgslsmith_index_u32(57564u, 11u)]).a.a.b), global0.a.b, global0.d.x), ~vec2<u32>(64368u, ~u_input.b) & _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(_wgslsmith_mult_u32(global0.a.b.x, u_input.b), u_input.b)), global0.a.d);
    var var_1 = _wgslsmith_div_vec4_u32(~vec4<u32>(func_4(vec2<f32>(1252f, var_0.d), Struct_3(Struct_2(Struct_1(2147483647i, vec4<u32>(var_0.b.x, global0.b, 1u, 24758u), vec2<u32>(u_input.b, 1u), global0.a.d), 33513u, global0.c, global2[_wgslsmith_index_u32(var_0.c.x, 11u)]), var_0, false, var_0.d, Struct_2(var_0, global0.a.c.x, vec4<f32>(1709f, 236f, var_0.d, global0.c.x), global2[_wgslsmith_index_u32(global0.a.b.x, 11u)])), Struct_2(Struct_1(var_0.a, var_0.b, var_0.c, global0.c.x), global0.a.b.x, vec4<f32>(-1432f, var_0.d, -1127f, 139f), vec2<bool>(false, global0.d.x)), vec2<bool>(global0.d.x, true)).b.b.x & reverseBits(global0.a.c.x), ~u_input.d, 0u, var_0.c.x), reverseBits(abs(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, global0.b, var_0.c.x, 74319u), var_0.b))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(var_0.a, 0i, 25691i, 1i)), -vec4<i32>(1i, global0.a.a, -2147483647i, global0.a.a)), -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 9962i, -1084i, var_0.a), u_input.a)), var_0.b, _wgslsmith_clamp_vec2_u32(vec2<u32>(global0.a.b.x, global0.b), var_0.b.xx, min(vec2<u32>(55981u, 0u), var_0.c)) & (~vec2<u32>(4294967295u, var_1.x) << (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))), func_2(global0.a).c.x), 0u, global0.c, vec2<bool>(true, true));
    global0 = func_4(func_4(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-542f - global0.c.x), func_2(global0.a).c.x))), func_4(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-970f, global0.c.x), global0.c.xw, vec2<bool>(false, var_2.d.x))))), func_4(vec2<f32>(-982f, 623f), func_4(var_2.c.xx, Struct_3(Struct_2(Struct_1(var_0.a, global0.a.b, var_1.zw, var_0.d), var_0.b.x, vec4<f32>(933f, 269f, -1420f, -1518f), vec2<bool>(true, true)), Struct_1(var_2.a.a, vec4<u32>(68904u, 1u, 61381u, global0.b), var_2.a.c, -501f), var_2.d.x, -1153f, Struct_2(Struct_1(1286i, var_0.b, vec2<u32>(var_2.b, 0u), 573f), u_input.b, vec4<f32>(-1595f, -1226f, 2188f, var_2.a.d), vec2<bool>(var_2.d.x, false))), Struct_2(var_0, 1u, vec4<f32>(-1096f, 1516f, var_0.d, global0.a.d), vec2<bool>(true, false)), var_2.d), func_2(var_0), vec2<bool>(false, var_2.d.x)), func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1372f, 281f) * vec2<f32>(878f, global0.a.d)), func_4(vec2<f32>(var_2.a.d, -348f), Struct_3(Struct_2(Struct_1(20087i, var_0.b, vec2<u32>(4294967295u, 0u), var_0.d), var_1.x, vec4<f32>(global0.c.x, -694f, global0.a.d, global0.a.d), vec2<bool>(var_2.d.x, true)), Struct_1(-2147483647i, var_0.b, var_2.a.c, var_2.c.x), false, -329f, Struct_2(Struct_1(var_0.a, global0.a.b, vec2<u32>(var_1.x, 1u), 2259f), 46069u, var_2.c, global2[_wgslsmith_index_u32(var_0.b.x, 11u)])), Struct_2(Struct_1(var_0.a, global0.a.b, vec2<u32>(4294967295u, 4294967295u), -1601f), 1u, vec4<f32>(145f, var_2.c.x, var_2.c.x, var_2.c.x), vec2<bool>(false, false)), vec2<bool>(global0.d.x, var_2.d.x)), func_4(vec2<f32>(var_2.a.d, 138f), Struct_3(Struct_2(var_2.a, var_0.c.x, var_2.c, vec2<bool>(false, true)), Struct_1(-39373i, global0.a.b, vec2<u32>(var_2.a.c.x, var_0.b.x), 482f), true, -925f, Struct_2(Struct_1(37943i, vec4<u32>(0u, global0.b, global0.b, var_2.b), global0.a.b.xx, -633f), var_2.b, vec4<f32>(-1566f, 1687f, global0.c.x, global0.c.x), global2[_wgslsmith_index_u32(0u, 11u)])), Struct_2(var_2.a, 8062u, vec4<f32>(-681f, -1387f, global0.a.d, var_0.d), var_2.d), var_2.d).a, func_2(Struct_1(2147483647i, var_0.b, global0.a.c, global0.a.d)).d).e, vec2<bool>(var_2.d.x, !global0.d.x)), Struct_2(func_2(func_2(var_2.a).a).a, _wgslsmith_mod_u32(_wgslsmith_mod_u32(var_0.b.x, 62613u), 11988u), vec4<f32>(_wgslsmith_f_op_f32(var_2.c.x - var_0.d), _wgslsmith_f_op_f32(min(261f, global0.a.d)), var_0.d, 182f), func_2(var_0).d), !select(select(global0.d, global2[_wgslsmith_index_u32(1u, 11u)], false), !global0.d, select(vec2<bool>(var_2.d.x, var_2.d.x), global2[_wgslsmith_index_u32(0u, 11u)], var_2.d.x))).a.c.zz, func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-210f, 218f)), Struct_3(Struct_2(global0.a, 74665u, _wgslsmith_f_op_vec4_f32(-global0.c), !global2[_wgslsmith_index_u32(1u, 11u)]), Struct_1(u_input.c.x << (global0.b % 32u), vec4<u32>(1u, global0.a.b.x, u_input.d, 1u) >> (vec4<u32>(1u, 8649u, 15084u, var_1.x) % vec4<u32>(32u)), global0.a.b.zw & var_2.a.c, func_2(Struct_1(var_2.a.a, var_0.b, global0.a.b.zy, 290f)).a.d), global0.d.x, _wgslsmith_f_op_f32(-866f + _wgslsmith_div_f32(294f, var_0.d)), Struct_2(Struct_1(0i, var_2.a.b, var_0.c, -840f), 22251u, vec4<f32>(697f, var_0.d, var_2.c.x, 1661f), vec2<bool>(false, false))), func_4(global0.c.xz, func_4(vec2<f32>(var_2.c.x, global0.c.x), Struct_3(Struct_2(var_2.a, var_2.a.b.x, vec4<f32>(-413f, global0.c.x, var_0.d, 303f), global2[_wgslsmith_index_u32(0u, 11u)]), global0.a, true, -618f, Struct_2(var_2.a, u_input.d, global0.c, vec2<bool>(global0.d.x, true))), Struct_2(var_2.a, 56915u, vec4<f32>(-1011f, var_2.c.x, global0.a.d, 1010f), global0.d), !vec2<bool>(global0.d.x, true)), func_2(var_2.a), global2[_wgslsmith_index_u32(1u & _wgslsmith_clamp_u32(36999u, 9583u, 0u), 11u)]).a, select(vec2<bool>(true, false), vec2<bool>(var_0.b.x > 1u, !global0.d.x), global2[_wgslsmith_index_u32(countOneBits(abs(var_2.a.b.x)), 11u)])), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c.x, var_0.d) - vec2<f32>(var_0.d, -689f)), _wgslsmith_div_vec2_f32(var_2.c.yz, vec2<f32>(1219f, 1110f))))), Struct_3(Struct_2(Struct_1(-27222i, global0.a.b, vec2<u32>(4294967295u, var_2.b), -1000f), _wgslsmith_dot_vec3_u32(global0.a.b.xxz, vec3<u32>(var_1.x, var_0.c.x, 4294967295u)), global0.c, global0.d), global0.a, true, _wgslsmith_f_op_f32(min(-919f, -1000f)), func_2(Struct_1(1505i, global0.a.b, vec2<u32>(var_2.a.c.x, 0u), var_2.a.d))), Struct_2(Struct_1(~global0.a.a, var_2.a.b, select(var_2.a.b.zx, var_0.b.yx, global2[_wgslsmith_index_u32(42166u, 11u)]), 1234f), u_input.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1279f, var_0.d, global0.a.d, -1000f)), var_2.c, true == var_2.d.x)), vec2<bool>(!global0.d.x, true)), vec2<bool>(false, var_2.d.x)).a, select(select(global2[_wgslsmith_index_u32(4294967295u >> (~4294967295u % 32u), 11u)], !func_3().wx, vec2<bool>(global0.d.x, global0.d.x)), var_2.d, true)).e;
    var_1 = _wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 4294967295u, ~_wgslsmith_dot_vec4_u32(global0.a.b, var_0.b), ~_wgslsmith_div_u32(var_0.b.x, global0.a.c.x)), _wgslsmith_clamp_vec4_u32(firstTrailingBit(~reverseBits(vec4<u32>(global0.a.b.x, 9695u, 124168u, 1u))), _wgslsmith_mult_vec4_u32(vec4<u32>(global0.a.b.x, 4294967295u, 43152u, 4294967295u), vec4<u32>(var_2.a.b.x, global0.b, var_1.x, 18891u)) >> (~func_4(vec2<f32>(358f, var_2.a.d), Struct_3(Struct_2(Struct_1(var_0.a, vec4<u32>(var_2.b, 14248u, global0.a.b.x, u_input.b), vec2<u32>(global0.a.b.x, 4294967295u), -610f), u_input.d, vec4<f32>(-1280f, var_0.d, -454f, var_2.a.d), var_2.d), var_0, false, 394f, Struct_2(var_2.a, 1u, vec4<f32>(1977f, 1620f, -1316f, var_2.a.d), var_2.d)), Struct_2(Struct_1(-2147483647i, vec4<u32>(1863u, var_1.x, global0.b, 76150u), vec2<u32>(var_2.b, 25280u), var_2.a.d), 0u, var_2.c, global0.d), global2[_wgslsmith_index_u32(var_2.a.b.x, 11u)]).a.a.b % vec4<u32>(32u)), vec4<u32>(~2811u, 19396u, 1u, _wgslsmith_add_u32(func_4(global0.c.zx, Struct_3(Struct_2(Struct_1(var_0.a, var_2.a.b, vec2<u32>(var_0.c.x, 1u), var_0.d), var_0.c.x, vec4<f32>(-515f, -1044f, 141f, var_0.d), vec2<bool>(false, var_2.d.x)), var_2.a, global0.d.x, 1000f, Struct_2(var_0, 8850u, vec4<f32>(global0.a.d, -1000f, global0.a.d, 394f), global2[_wgslsmith_index_u32(12586u, 11u)])), Struct_2(Struct_1(u_input.c.x, global0.a.b, vec2<u32>(global0.a.b.x, 4294967295u), 699f), var_2.a.b.x, var_2.c, global2[_wgslsmith_index_u32(var_0.b.x, 11u)]), vec2<bool>(false, false)).b.c.x, var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.a >> (1u % 32u));
}

