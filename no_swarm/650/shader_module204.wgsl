struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 11>;

var<private> global1: array<vec3<u32>, 21> = array<vec3<u32>, 21>(vec3<u32>(12850u, 36675u, 9827u), vec3<u32>(63879u, 0u, 0u), vec3<u32>(22819u, 0u, 4294967295u), vec3<u32>(5912u, 1u, 29782u), vec3<u32>(26206u, 44919u, 96795u), vec3<u32>(0u, 33328u, 61917u), vec3<u32>(6251u, 31398u, 4294967295u), vec3<u32>(22852u, 24898u, 61874u), vec3<u32>(1u, 4941u, 0u), vec3<u32>(1u, 22934u, 62825u), vec3<u32>(28292u, 4294967295u, 71941u), vec3<u32>(108654u, 4294967295u, 1u), vec3<u32>(4294967295u, 4294967295u, 96019u), vec3<u32>(21718u, 0u, 4643u), vec3<u32>(1u, 72586u, 0u), vec3<u32>(19366u, 2722u, 5530u), vec3<u32>(4294967295u, 34208u, 1u), vec3<u32>(1u, 1u, 17648u), vec3<u32>(4294967295u, 32464u, 1u), vec3<u32>(0u, 5576u, 4294967295u), vec3<u32>(34581u, 52538u, 0u));

var<private> global2: array<vec3<u32>, 5> = array<vec3<u32>, 5>(vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(6520u, 4294967295u, 62707u), vec3<u32>(13938u, 15663u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 42321u), vec3<u32>(0u, 16381u, 76691u));

var<private> global3: vec2<u32>;

var<private> global4: array<Struct_2, 21>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: u32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(~0u, 11u)] + _wgslsmith_f_op_vec4_f32(ceil(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(12221u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_0, 1u, 18245u), vec4<u32>(u_input.b, 32120u, 25475u, global3.x))), 11u)]))), _wgslsmith_f_op_vec4_f32(min(global0[_wgslsmith_index_u32(20129u, 11u)], _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(global0[_wgslsmith_index_u32(arg_0, 11u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(597f, 226f, -203f, 1151f))))), select(select(!vec4<bool>(arg_1.a, false, true, arg_1.b.x), select(!vec4<bool>(true, arg_1.a, true, true), select(vec4<bool>(false, arg_1.b.x, true, arg_1.b.x), vec4<bool>(true, false, arg_1.b.x, arg_1.b.x), vec4<bool>(true, false, arg_1.b.x, arg_1.b.x)), select(vec4<bool>(false, arg_1.b.x, arg_1.b.x, true), vec4<bool>(arg_1.b.x, true, false, false), arg_1.b.x)), true), select(vec4<bool>(false, arg_1.a | false, true, !arg_1.a), select(vec4<bool>(false, false, arg_1.a, true), select(vec4<bool>(arg_1.b.x, false, true, true), vec4<bool>(arg_1.a, arg_1.b.x, true, false), arg_1.b.x), false), vec4<bool>(!arg_1.a, arg_1.b.x, false, arg_1.a)), _wgslsmith_mult_i32(42427i, 2580i) != _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(arg_2.x, arg_2.x, 0i), 42613i, -48334i >> (0u % 32u)))));
    let var_1 = var_0.x;
    let var_2 = u_input.a;
    global2 = array<vec3<u32>, 5>();
    global2 = array<vec3<u32>, 5>();
    return !vec3<bool>(!all(select(vec4<bool>(true, arg_1.a, arg_1.b.x, arg_1.b.x), vec4<bool>(arg_1.b.x, arg_1.a, false, arg_1.a), arg_1.a)), any(vec2<bool>(true, true)), arg_0 >= 23698u);
}

fn func_2() -> bool {
    var var_0 = vec4<u32>(1u, ~u_input.b, max(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(1u, 4294967295u, global3.x), _wgslsmith_sub_u32(57793u, 46027u), ~global3.x), ~global3.x & (37991u | u_input.b)) ^ _wgslsmith_clamp_u32(u_input.b, ~91402u, ~u_input.b), 47030u);
    var var_1 = Struct_1(true, select(func_3(global3.x, Struct_1(true, vec3<bool>(true, true, true)), u_input.a.xy, var_0.x), !select(vec3<bool>(true, true, true), func_3(4294967295u, Struct_1(true, vec3<bool>(true, true, false)), vec2<i32>(u_input.a.x, u_input.a.x), u_input.b), vec3<bool>(true, true, true)), any(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), false))));
    global2 = array<vec3<u32>, 5>();
    var var_2 = global4[_wgslsmith_index_u32(abs(global3.x), 21u)];
    global3 = ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, 78342u), var_2.b.zy) << (abs(~var_2.b.xz) % vec2<u32>(32u))) ^ (vec2<u32>(~var_2.b.x, ~_wgslsmith_sub_u32(82503u, 0u)) ^ ~(~_wgslsmith_sub_vec2_u32(var_2.b.zz, vec2<u32>(var_2.b.x, u_input.b))));
    return true;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32, arg_3: vec4<i32>) -> u32 {
    let var_0 = vec4<bool>(arg_0.a, func_2(), !arg_0.b.x, func_3(global3.x, Struct_1((arg_1.b.x <= 15379u) | (arg_0.a || false), !arg_0.b), arg_1.c.zw, 58201u).x);
    global3 = vec2<u32>(_wgslsmith_dot_vec2_u32(~reverseBits(arg_1.b.yy) | vec2<u32>(arg_1.b.x, u_input.b), max(firstTrailingBit(~arg_1.b.xz), arg_1.b.zy)), u_input.b);
    let var_1 = reverseBits(vec3<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.c.x, 45886i), ~vec2<i32>(arg_3.x, arg_2)), countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2, 0i, 2147483647i), ~u_input.a)), _wgslsmith_sub_i32(-arg_3.x, u_input.a.x)));
    var var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, -2334f, 679f) + vec3<f32>(var_2.a, var_2.a, 254f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(641f, var_2.e.x, arg_1.e.x))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-560f, -1222f, var_2.e.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1056f, var_2.a, 2055f), vec3<f32>(arg_1.e.x, arg_1.e.x, arg_1.a), false)))))) - vec3<f32>(467f, var_2.e.x, _wgslsmith_f_op_f32(step(990f, _wgslsmith_f_op_f32(max(arg_1.a, _wgslsmith_div_f32(arg_1.e.x, -958f)))))));
    return arg_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(select(u_input.b, 1u, any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true))) && false), 11u)];
    var var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(~func_1(Struct_1(true, vec3<bool>(true, true, false)), Struct_2(-1937f, vec3<u32>(u_input.b, 4294967295u, 4294967295u), vec4<i32>(2147483647i, 2147483647i, -2147483647i, u_input.a.x), u_input.a.x, var_0.yy), u_input.a.x, vec4<i32>(18921i, u_input.a.x, -2147483647i, u_input.a.x)), global3.x, global3.x, ~global3.x) >> (vec4<u32>(~(113184u & global3.x), global3.x, 4294967295u, global3.x) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, 51518u, countOneBits(4294967295u), u_input.b));
    var var_2 = Struct_1(all(vec3<bool>(false, false, false)), !vec3<bool>(true, !func_3(u_input.b, Struct_1(true, vec3<bool>(true, true, false)), u_input.a.yx, 5180u).x, true));
    global0 = array<vec4<f32>, 11>();
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2123f - _wgslsmith_f_op_f32(f32(-1f) * -286f)));
    let var_4 = global4[_wgslsmith_index_u32(~(var_1.x & u_input.b), 21u)];
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mod_i32(firstLeadingBit(u_input.a.x | var_4.c.x), -u_input.a.x)), min(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(50977i, 2147483647i, var_4.d) | u_input.a, firstTrailingBit(vec3<i32>(var_4.d, 6843i, 1i)), vec3<i32>(1i, var_4.c.x, u_input.a.x)), vec3<i32>(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, var_4.c.x), -2147483647i, 1i)), -countOneBits(_wgslsmith_add_i32(1i, u_input.a.x))));
}

