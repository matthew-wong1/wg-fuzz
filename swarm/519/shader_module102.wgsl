struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 23> = array<bool, 23>(false, false, true, false, false, true, false, false, false, false, false, false, false, false, true, false, false, true, true, false, true, true, false);

var<private> global2: Struct_4 = Struct_4(vec3<f32>(704f, -853f, 1415f));

var<private> global3: array<vec4<bool>, 5> = array<vec4<bool>, 5>(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    let var_0 = Struct_3(0u << (firstLeadingBit(arg_0.x) % 32u), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(global2.a.x)), _wgslsmith_f_op_f32(ceil(global2.a.x)), _wgslsmith_f_op_f32(step(1122f, global2.a.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, -1000f, 1569f)))), !global0.b, _wgslsmith_f_op_f32(-global0.c)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.c, global0.c)))), _wgslsmith_mod_vec4_u32(select(vec4<u32>(~arg_0.x, u_input.a.x, ~89974u, firstTrailingBit(u_input.a.x)), arg_0, select(true, global0.b.x, false)), ~select(arg_0, ~arg_0, vec4<bool>(true, global0.b.x, global1[_wgslsmith_index_u32(19351u, 23u)], true))));
    let var_1 = 17052i;
    let var_2 = var_0;
    global2 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.b.a)));
    return 1u;
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec2<bool>) -> i32 {
    return ~(-_wgslsmith_div_i32(-23411i, firstLeadingBit(-1i)) ^ u_input.b.x);
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: i32) -> Struct_1 {
    global1 = array<bool, 23>();
    var var_0 = u_input.b.x;
    global3 = array<vec4<bool>, 5>();
    var_0 = func_4(Struct_3(~_wgslsmith_div_u32(u_input.a.x, abs(25997u)), Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.a.x, 1030f, -711f))), global0.b, _wgslsmith_f_op_f32(global0.c + global0.c)), Struct_2(_wgslsmith_f_op_f32(global2.a.x * _wgslsmith_f_op_f32(global2.a.x + global0.a.x))), vec4<u32>(_wgslsmith_add_u32(0u, u_input.a.x), u_input.a.x, u_input.a.x >> (0u % 32u), _wgslsmith_add_u32(u_input.a.x, u_input.a.x)) & vec4<u32>(func_3(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x)), _wgslsmith_add_u32(u_input.a.x, u_input.a.x), ~u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, 1u, u_input.a.x))), _wgslsmith_mod_i32(arg_1.x, -2147483647i), vec2<bool>(!any(global3[_wgslsmith_index_u32(~4294967295u, 5u)]), u_input.a.x < _wgslsmith_mod_u32(31429u, 27670u)));
    var var_1 = global0.a.x;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-global0.a), vec3<bool>(!(!arg_0), true, _wgslsmith_f_op_f32(f32(-1f) * -357f) <= _wgslsmith_f_op_f32(-1687f + global2.a.x)), _wgslsmith_f_op_f32(global2.a.x * 1075f));
}

fn func_1(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = func_2(false, vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.b.x, arg_0.x, arg_0.x), -(arg_0.wzy & arg_0.xzz)), ~2147483647i), -u_input.b.x);
    let var_1 = global0.b.x;
    let var_2 = countOneBits(arg_0.x) < ~(-28399i);
    var var_3 = u_input.b;
    var var_4 = Struct_2(func_2(!var_0.b.x, -(-arg_0.xy ^ _wgslsmith_mod_vec2_i32(u_input.b, arg_0.yw)), ~(-(~1i))).a.x);
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -146f) - -285f));
}

fn func_5(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: bool) -> Struct_2 {
    let var_0 = u_input.b.x;
    let var_1 = global0.a.x;
    var var_2 = vec4<bool>((var_0 & 1i) == _wgslsmith_sub_i32(~(-59919i), var_0), !(!any(!global0.b)), all(!select(!vec2<bool>(false, arg_3), func_2(true, u_input.b, var_0).b.zy, global0.b.zy)), any(vec4<bool>(true & (u_input.a.x != u_input.a.x), any(vec3<bool>(true, true, true)), !any(vec2<bool>(global0.b.x, global0.b.x)), !global0.b.x)));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.a * -136f))), -156f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(f32(-1f) * -921f))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1))))), vec3<bool>(true, !global0.b.x, ~(~(-2147483647i)) >= _wgslsmith_dot_vec2_i32(-u_input.b, -u_input.b)), 169f);
    var var_3 = 25586i;
    return func_1(select(-max(reverseBits(vec4<i32>(29540i, u_input.b.x, 21184i, u_input.b.x)), vec4<i32>(-2147483647i, var_0, u_input.b.x, u_input.b.x) << (vec4<u32>(u_input.a.x, u_input.a.x, 24747u, u_input.a.x) % vec4<u32>(32u))), -vec4<i32>(i32(-1i) * -4327i, ~1i, select(1i, 3297i, false), var_0), var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(func_5(_wgslsmith_f_op_f32(max(global0.a.x, _wgslsmith_f_op_f32(exp2(global0.c)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(282f, 1415f, global2.a.x) - _wgslsmith_f_op_vec3_f32(-global2.a)))), func_1(-abs(vec4<i32>(u_input.b.x, 1i, u_input.b.x, u_input.b.x))), func_2(false, _wgslsmith_add_vec2_i32(vec2<i32>(-1i, u_input.b.x), -vec2<i32>(u_input.b.x, -2147483647i)), u_input.b.x).b.x), func_2(u_input.b.x <= u_input.b.x, u_input.b, _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, -u_input.b.x)), Struct_2(-527f));
    global3 = array<vec4<bool>, 5>();
    global0 = var_0.b;
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(var_0.b.a.xy));
    global2 = Struct_4(_wgslsmith_f_op_vec3_f32(exp2(global0.a)));
    let var_2 = func_4(Struct_3(_wgslsmith_sub_u32(4294967295u, u_input.a.x), var_0.b, func_1(vec4<i32>(21238i, -u_input.b.x, 29742i, _wgslsmith_mult_i32(u_input.b.x, u_input.b.x))), vec4<u32>(4294967295u, 12834u, _wgslsmith_div_u32(u_input.a.x, _wgslsmith_div_u32(0u, 3104u)), 1u)), -49991i, func_2(true, vec2<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-27424i, 20539i, 33783i, u_input.b.x)), vec4<i32>(-12116i, u_input.b.x, u_input.b.x, u_input.b.x) >> (u_input.a % vec4<u32>(32u)))), -11777i).b.zy);
    let x = u_input.a;
    s_output = StorageBuffer(-265f, 136f, 2147483647i, u_input.a.x, ~(-min(_wgslsmith_mult_vec2_i32(vec2<i32>(73421i, var_2), vec2<i32>(var_2, -13281i)), u_input.b)));
}

