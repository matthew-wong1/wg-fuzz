struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec2<i32>,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(0u, Struct_1(1000f, vec2<bool>(true, true), vec2<i32>(0i, 2147483647i), vec3<f32>(750f, -101f, 2727f), -207f)), Struct_2(6163u, Struct_1(-488f, vec2<bool>(true, true), vec2<i32>(i32(-2147483648), -1i), vec3<f32>(-1884f, -415f, 1031f), 507f)), Struct_2(1u, Struct_1(752f, vec2<bool>(false, true), vec2<i32>(2147483647i, 2147483647i), vec3<f32>(-1427f, 585f, -140f), 182f)), Struct_2(4294967295u, Struct_1(-512f, vec2<bool>(false, true), vec2<i32>(0i, 2147483647i), vec3<f32>(193f, -1000f, -501f), 903f)), Struct_2(6130u, Struct_1(176f, vec2<bool>(false, false), vec2<i32>(i32(-2147483648), 38286i), vec3<f32>(-1416f, -1471f, -1817f), 1017f)));

var<private> global2: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(~43333u, 5u)];
    global0 = var_0.b;
    let var_1 = vec2<u32>(4294967295u, ~7753u);
    global0 = var_0.b;
    global1 = array<Struct_2, 5>();
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.d.x - var_0.b.e)) - _wgslsmith_f_op_f32(f32(-1f) * -170f)) - _wgslsmith_f_op_f32(step(349f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -840f) * _wgslsmith_f_op_f32(-var_0.b.d.x))))), global0.b, global0.c, vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.e), _wgslsmith_f_op_f32(-791f - -2420f), _wgslsmith_f_op_f32(-var_0.b.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-2299f, var_0.b.a)))));
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: u32) -> u32 {
    global0 = Struct_1(-1004f, select(select(!(!vec2<bool>(global0.b.x, global0.b.x)), select(global0.b, select(global0.b, global0.b, global0.b.x), select(vec2<bool>(global0.b.x, true), global0.b, true)), vec2<bool>(all(global0.b), func_2(arg_0).b.x)), vec2<bool>(true, false), true), ~vec2<i32>(u_input.a.x, -1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global0.a, global0.d.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.e + global0.d.x) + _wgslsmith_f_op_f32(-global0.a))));
    var var_0 = vec3<u32>(reverseBits(arg_1.x), _wgslsmith_mult_u32(countOneBits(u_input.c), _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, arg_2) | vec2<u32>(arg_1.x, 34939u), arg_1.zx)), arg_1.x);
    var var_1 = abs(arg_2);
    return max(arg_1.x, ~_wgslsmith_sub_u32(arg_1.x, 5614u) & (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 45345u), arg_1.zz) >> (~1u % 32u))) | ~abs(4294967295u);
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = all(vec2<bool>(!any(!vec3<bool>(arg_0.b.b.x, arg_0.b.b.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.a)) == arg_0.b.a));
    global0 = func_2(false);
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.e, _wgslsmith_f_op_f32(abs(315f))) * vec2<f32>(-242f, 1332f)))));
    let var_2 = Struct_2(func_3(all(!vec3<bool>(var_0, global0.b.x, true)), vec3<u32>(arg_0.a, ~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(16097u, 54765u), vec2<u32>(u_input.c, arg_0.a))), ~(~59507u)) << (u_input.c % 32u), Struct_1(_wgslsmith_f_op_f32(-arg_0.b.e), !arg_0.b.b, -_wgslsmith_mult_vec2_i32(reverseBits(global0.c), -arg_0.b.c), _wgslsmith_f_op_vec3_f32(-global0.d), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.d.x, _wgslsmith_f_op_f32(var_1.x + -2146f)))));
    let var_3 = Struct_2(reverseBits(arg_0.a), func_2(!(_wgslsmith_f_op_f32(min(arg_0.b.e, var_1.x)) < func_2(true).a)));
    return Struct_1(1000f, var_3.b.b, u_input.a >> (vec2<u32>(1u, var_3.a) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-165f))), _wgslsmith_f_op_f32(f32(-1f) * -345f), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(exp2(var_2.b.d.x))))), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global1 = array<Struct_2, 5>();
    var var_1 = Struct_2(~1u, func_1(global1[_wgslsmith_index_u32(~4294967295u, 5u)]));
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_clamp_i32(~(var_1.b.c.x << (var_1.a % 32u)), global0.c.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(var_1.b.c.x, var_1.b.c.x, -1i, 1i)), select(1i, 2147483647i, global0.b.x))), 2147483647i) >> (4294967295u % 32u);
    global0 = Struct_1(_wgslsmith_div_f32(-1246f, _wgslsmith_f_op_f32(sign(func_1(global1[_wgslsmith_index_u32(1u, 5u)]).e))), func_1(Struct_2(var_1.a >> (u_input.c % 32u), var_1.b)).b, func_1(Struct_2(_wgslsmith_dot_vec3_u32(min(vec3<u32>(var_1.a, 4917u, 71617u), vec3<u32>(66355u, var_1.a, var_1.a)), vec3<u32>(4294967295u, u_input.c, 61700u)), Struct_1(_wgslsmith_f_op_f32(-531f + global0.e), select(global0.b, vec2<bool>(var_1.b.b.x, var_1.b.b.x), global0.b.x), vec2<i32>(global0.c.x, global0.c.x) | vec2<i32>(global0.c.x, global0.c.x), _wgslsmith_f_op_vec3_f32(trunc(global0.d)), var_1.b.d.x))).c, vec3<f32>(-604f, 880f, var_1.b.e), _wgslsmith_f_op_f32(step(var_1.b.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1215f * global0.e) + -685f))))));
    var_2 = ~reverseBits(0i);
    var var_3 = !(!(!select(vec4<bool>(var_1.b.b.x, global0.b.x, false, true), vec4<bool>(global0.b.x, var_1.b.b.x, false, true), var_1.b.b.x | var_1.b.b.x)));
    var var_4 = Struct_2(u_input.c, func_1(global1[_wgslsmith_index_u32(u_input.c, 5u)]));
    var var_5 = Struct_2(min(u_input.c, abs(abs(var_4.a) ^ ~28446u)), var_4.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.c.x, var_4.b.c);
}

