struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: f32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28> = array<i32, 28>(39871i, i32(-2147483648), -42070i, i32(-2147483648), -17635i, 2147483647i, -34250i, 2147483647i, 2147483647i, i32(-2147483648), 20881i, i32(-2147483648), -9198i, 1i, 0i, -1274i, 0i, 29962i, 1i, 0i, i32(-2147483648), 18929i, 23708i, -30683i, -54702i, 2648i, i32(-2147483648), -23934i);

var<private> global1: array<u32, 9> = array<u32, 9>(1u, 12041u, 4421u, 56406u, 0u, 1u, 0u, 0u, 19082u);

var<private> global2: Struct_1;

var<private> global3: vec2<bool> = vec2<bool>(true, false);

var<private> global4: i32 = -8432i;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: f32) -> vec4<bool> {
    var var_0 = Struct_4(select(vec4<bool>(!global2.a.x, global2.b == global2.b, true, global2.c), !global2.a, global2.a), 684f, vec2<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(-11481i, -1i, 2147483647i), global2.d), 56662i) | abs(global2.d.xy));
    global3 = vec2<bool>(global3.x, any(var_0.a.zz));
    let var_1 = Struct_3(reverseBits(_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(global2.d.x, global2.d.x, arg_0)), min(vec3<i32>(arg_0, global2.d.x, global2.d.x), global2.d) | vec3<i32>(-15823i, 24287i, global2.d.x))), 1078f);
    return select(vec4<bool>(global3.x, global3.x, var_0.a.x, global3.x), select(vec4<bool>(true, global2.a.x, all(var_0.a.zw), var_0.a.x), global2.a, var_0.a.x), vec4<bool>(var_0.a.x, ~(~global2.b) > (countOneBits(0u) << (_wgslsmith_mod_u32(63129u, global2.b) % 32u)), global2.a.x, global3.x));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(697f, -2145f)), 213f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -579f))), _wgslsmith_f_op_f32(abs(-1137f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(718f, 747f, -425f), vec3<f32>(1440f, 146f, -952f), vec3<bool>(global3.x, global2.a.x, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-771f, -1837f, -845f)))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-137f, -213f, var_0.x) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.x - var_0.x), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1492f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-456f, 594f, var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -839f, var_0.x)))), vec3<f32>(-132f, _wgslsmith_f_op_f32(floor(1045f)), _wgslsmith_f_op_f32(select(var_0.x, 1030f, global3.x)))))));
    global2 = Struct_1(func_3(-24646i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(458f, -1202f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-634f, -1674f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))), var_0.x), global1[_wgslsmith_index_u32(1u, 9u)], true, ~(-vec3<i32>(-2147483647i, 2147483647i, -1i) | global2.d));
    let var_1 = 2147483647i;
    var var_2 = global2.c;
    return Struct_1(vec4<bool>(all(select(!global2.a, global2.a, !global2.a)), !global2.a.x, select(true, global2.c, true), global2.a.x), ~(1u | global1[_wgslsmith_index_u32(~countOneBits(global2.b), 9u)]), _wgslsmith_f_op_f32(var_0.x * -356f) > var_0.x, vec3<i32>(global0[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(0u, 9u)]), min(global1[_wgslsmith_index_u32(u_input.a.x, 9u)], global1[_wgslsmith_index_u32(global2.b, 9u)])), 28u)], global2.d.x, -max(-1i, global2.d.x)) >> (u_input.a % vec3<u32>(32u)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>) -> vec4<bool> {
    global3 = vec2<bool>(global3.x, false);
    global4 = 1i;
    let var_0 = func_2();
    global1 = array<u32, 9>();
    var var_1 = Struct_3(firstTrailingBit(~global2.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_div_f32(717f, -218f), _wgslsmith_f_op_f32(step(236f, -1112f))))) * -127f));
    return vec4<bool>(arg_0.a.x, !((!var_0.c && any(var_0.a)) && func_3(_wgslsmith_mod_i32(1i, -37107i), vec2<f32>(var_1.b, var_1.b), _wgslsmith_f_op_f32(150f - 1430f)).x), func_3(abs(_wgslsmith_mult_i32(arg_0.d.x, arg_1.x)) << (arg_0.b % 32u), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, var_1.b))), vec2<f32>(_wgslsmith_f_op_f32(299f * var_1.b), 462f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(663f, var_1.b)), 1000f)))).x, !any(var_0.a));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3, arg_3: Struct_3) -> Struct_2 {
    global0 = array<i32, 28>();
    var var_0 = abs(countOneBits(-13308i)) | arg_2.a.x;
    global2 = arg_0;
    global3 = global2.a.yw;
    let var_1 = arg_3.a.x;
    return Struct_2(!arg_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 9>();
    let var_0 = ~u_input.a.yy;
    var var_1 = false;
    var var_2 = -global2.d | select(-max(max(global2.d, vec3<i32>(59266i, global0[_wgslsmith_index_u32(1u, 28u)], -47747i)), select(global2.d, vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 28u)], global0[_wgslsmith_index_u32(20604u, 28u)], -45588i), vec3<bool>(global3.x, global3.x, global2.a.x))), ~vec3<i32>(-18156i, ~global2.d.x, global2.d.x | 0i), global2.a.xyx);
    var var_3 = func_4(Struct_1(select(vec4<bool>(true, true, all(vec4<bool>(true, global3.x, false, global2.c)), global3.x), !vec4<bool>(true, global3.x, true, true), func_1(Struct_1(vec4<bool>(true, global3.x, global3.x, true), global2.b, global3.x, vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 28u)], 2147483647i, global0[_wgslsmith_index_u32(global2.b, 28u)])), ~vec2<i32>(var_2.x, var_2.x))), u_input.a.x >> (_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.a.zz, vec2<u32>(4294967295u, global2.b)), _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(u_input.a.x, 9u)], var_0.x, var_0.x)) % 32u), _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.x, global1[_wgslsmith_index_u32(4294967295u, 9u)]), 28u)], global2.d.x, min(2147483647i, var_2.x)) >= ~var_2.x, select(global2.d, -func_2().d, any(vec4<bool>(true, global2.c, true, false)))), !any(func_2().a.zz), Struct_3(~(~_wgslsmith_mult_vec3_i32(global2.d, global2.d)), _wgslsmith_f_op_f32(exp2(1f))), Struct_3(~(-global2.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2501f, -407f)))));
    var var_4 = _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(-firstLeadingBit(global2.d), min(vec3<i32>(global2.d.x, 32040i, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x, 9u)], 9u)], 28u)]), global2.d) & global2.d), max(countOneBits(-global2.d & -vec3<i32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 9u)], 28u)], 0i, global2.d.x)), global2.d));
    var var_5 = func_2();
    var var_6 = global2.a.ywy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(420f + -363f), -452f, -117f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(291f, -1755f, -839f) - vec3<f32>(-1000f, -285f, 756f)) - vec3<f32>(-1025f, 814f, -1402f))))), -(~var_2.zz), -286f);
}

