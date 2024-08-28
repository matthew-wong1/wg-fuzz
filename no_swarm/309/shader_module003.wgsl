struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_1, 21>;

var<private> global2: Struct_2 = Struct_2(Struct_1(false, -464f), Struct_1(false, -2646f), -1438f, 1u, Struct_1(true, 989f));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec3<u32>) -> bool {
    var var_0 = true;
    let var_1 = ~arg_2.x;
    global0 = select(select(select(select(vec3<bool>(global2.a.a, true, false), select(vec3<bool>(global2.e.a, false, global0.x), vec3<bool>(global0.x, global2.b.a, arg_0.e.a), vec3<bool>(arg_0.e.a, global2.a.a, global0.x)), arg_0.e.a), vec3<bool>(global0.x, !global2.b.a, global2.e.a), any(!vec4<bool>(true, global2.a.a, global0.x, arg_0.a.a))), !(!vec3<bool>(arg_0.e.a, global2.b.a, true)), all(!select(vec4<bool>(arg_0.e.a, true, global2.b.a, false), vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(global2.e.a, true, global0.x, global2.a.a)))), select(!vec3<bool>(true, arg_0.b.a && false, u_input.b.x <= 0u), vec3<bool>(arg_0.e.a, arg_0.a.a, arg_0.b.a), vec3<bool>(true, true, !(!arg_0.b.a))), select(!select(!vec3<bool>(arg_0.e.a, false, arg_0.b.a), vec3<bool>(global2.a.a, false, true), select(vec3<bool>(true, arg_0.e.a, arg_0.b.a), vec3<bool>(global0.x, arg_0.a.a, true), global2.b.a)), vec3<bool>(true, true, true), vec3<bool>(true, any(!vec4<bool>(global0.x, global0.x, arg_0.b.a, arg_0.b.a)), any(vec3<bool>(false, arg_0.e.a, global0.x)))));
    global1 = array<Struct_1, 21>();
    var var_2 = (any(!select(vec4<bool>(arg_0.a.a, true, false, false), vec4<bool>(false, true, true, arg_0.a.a), global0.x)) || all(vec3<bool>(select(global2.b.a, global2.b.a, false), !arg_0.a.a, !arg_0.e.a))) & !any(select(vec2<bool>(false, false), !global0.zz, global0.yy));
    return false;
}

fn func_2() -> f32 {
    global1 = array<Struct_1, 21>();
    let var_0 = u_input.b;
    global1 = array<Struct_1, 21>();
    let var_1 = Struct_2(Struct_1(true, _wgslsmith_f_op_f32(select(global2.e.b, 854f, global0.x))), global2.b, 1060f, ~abs(~1u), global1[_wgslsmith_index_u32(1u, 21u)]);
    global0 = !(!vec3<bool>(func_3(Struct_2(var_1.a, var_1.e, -1857f, 35938u, var_1.a), 376f, vec3<u32>(var_0.x, 12876u, u_input.a)), func_3(var_1, _wgslsmith_f_op_f32(global2.a.b + 302f), reverseBits(vec3<u32>(4294967295u, 0u, 0u))), !global2.e.a));
    return -1141f;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    let var_0 = !all(!select(select(vec3<bool>(false, global2.a.a, global2.a.a), vec3<bool>(arg_3.b.a, false, arg_3.b.a), vec3<bool>(false, arg_3.a.a, global2.b.a)), !vec3<bool>(true, true, global2.e.a), arg_3.b.a));
    var var_1 = max(_wgslsmith_mod_vec3_i32(select(vec3<i32>(_wgslsmith_div_i32(-49662i, 2147483647i), ~(-2147483647i), ~arg_0.x), _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(-1i, 1i, 5355i)), vec3<i32>(arg_0.x, arg_0.x, -17592i), vec3<i32>(arg_0.x, 0i, arg_0.x)), select(!vec3<bool>(arg_3.e.a, true, var_0), select(vec3<bool>(var_0, true, false), vec3<bool>(global0.x, true, false), true), true)), ~(~_wgslsmith_div_vec3_i32(vec3<i32>(1i, arg_0.x, 45690i), arg_0))), vec3<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(firstTrailingBit(arg_0.zx)), -vec2<i32>(arg_0.x, 43575i)), _wgslsmith_mult_i32(min(arg_0.x, 1i), firstTrailingBit(arg_0.x)), arg_0.x));
    var_1 = vec3<i32>(var_1.x, -_wgslsmith_mult_i32(~arg_0.x, 0i), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(firstLeadingBit(arg_0), _wgslsmith_mod_vec3_i32(arg_0, vec3<i32>(12559i, 18707i, -29027i))), arg_0), arg_0));
    let var_2 = arg_3;
    var var_3 = u_input.b;
    return Struct_2(arg_3.e, Struct_1(true, global2.a.b), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.c - arg_3.b.b), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1183f + 497f), _wgslsmith_f_op_f32(f32(-1f) * -462f)) * arg_1.x))), (_wgslsmith_mult_u32(1u, ~arg_3.d) | 0u) << ((1u << (_wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, 74407u), ~var_2.d) % 32u)) % 32u), Struct_1(true, var_2.a.b));
}

fn func_1(arg_0: bool) -> StorageBuffer {
    let var_0 = !vec2<bool>(arg_0, arg_0);
    let var_1 = func_4(vec3<i32>(1i, 1i, 1i), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + -585f) + _wgslsmith_f_op_f32(-global2.a.b)), _wgslsmith_f_op_f32(global2.e.b * -1428f)), 8966u << (_wgslsmith_sub_u32(~global2.d, u_input.a) % 32u), Struct_2(Struct_1(!(!var_0.x), _wgslsmith_f_op_f32(global2.b.b + -1081f)), Struct_1(any(vec3<bool>(true, var_0.x, false)), _wgslsmith_f_op_f32(-global2.e.b)), _wgslsmith_f_op_f32(-1936f + _wgslsmith_f_op_f32(select(119f, _wgslsmith_div_f32(global2.a.b, -367f), arg_0))), global2.d, Struct_1(func_3(Struct_2(global1[_wgslsmith_index_u32(global2.d, 21u)], Struct_1(true, global2.a.b), -1172f, 40837u, global2.e), _wgslsmith_f_op_f32(-global2.c), ~vec3<u32>(global2.d, global2.d, 16701u)), 1279f)));
    global0 = !select(vec3<bool>(var_1.a.a && var_0.x, false, all(vec3<bool>(true, true, true))), select(vec3<bool>(true, true, var_1.d <= var_1.d), !(!vec3<bool>(true, true, global2.e.a)), all(!vec3<bool>(false, true, var_0.x))), all(!select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(true, true, global2.e.a), true)));
    var var_2 = func_4(-(~vec3<i32>(0i, 27277i, _wgslsmith_sub_i32(1i, 14143i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.b, 1338f) + _wgslsmith_div_vec2_f32(vec2<f32>(-1421f, var_1.e.b), vec2<f32>(global2.c, -566f))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2.e.b, 1947f))))))), ~4294967295u, func_4(vec3<i32>(max(48946i >> (0u % 32u), 1i), _wgslsmith_div_i32(77903i, 16773i), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-10183i, -9529i, 0i)), firstTrailingBit(vec3<i32>(2147483647i, -16524i, -17401i)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1032f, -106f) + vec2<f32>(global2.b.b, 1000f))))), 58173u, func_4(vec3<i32>(1i, 1i, 1i) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 86u, var_1.d), vec3<u32>(10677u, 0u, u_input.a), vec3<u32>(var_1.d, 0u, global2.d)) % vec3<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(floor(var_1.b.b)), var_1.c), ~global2.d | abs(var_1.d), var_1))).b;
    var_2 = global1[_wgslsmith_index_u32(func_4(vec3<i32>(-2147483647i, 371i, i32(-1i) * -1i), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2.e.b, -628f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.e.b, -171f))), var_0))))), _wgslsmith_sub_u32(9274u, global2.d), Struct_2(var_1.e, Struct_1(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1439f * -1689f) + _wgslsmith_f_op_f32(-var_2.b))), -689f, _wgslsmith_mod_u32(global2.d, var_1.d >> (50597u % 32u)) >> (_wgslsmith_div_u32(firstLeadingBit(global2.d), u_input.b.x & 1u) % 32u), func_4(vec3<i32>(firstTrailingBit(5312i), -4990i, abs(-2147483647i)), vec2<f32>(var_2.b, -1455f), ~_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(1u, u_input.a)), var_1).e)).d, 21u)];
    return StorageBuffer(firstLeadingBit(~vec3<u32>(var_1.d, select(1u, 25588u, var_1.e.a), ~19962u)), abs(-(~vec3<i32>(-37457i, 16827i, -28265i))) ^ _wgslsmith_mult_vec3_i32(select(~vec3<i32>(-18559i, 41049i, 54834i), firstLeadingBit(vec3<i32>(0i, 2147483647i, 1i)), vec3<bool>(true, true, true)), vec3<i32>(1i, _wgslsmith_mod_i32(2147483647i, 2147483647i), abs(-2147483647i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(var_2.b)), _wgslsmith_div_f32(var_2.b, 1540f), func_4(vec3<i32>(2147483647i, -1i, 42623i), vec2<f32>(-256f, var_1.a.b), u_input.b.x, Struct_2(Struct_1(var_0.x, var_2.b), Struct_1(false, var_2.b), -136f, global2.d, global2.b)).b.b))), ~abs(global2.d ^ var_1.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(global2.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - 1432f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(137f - _wgslsmith_f_op_f32(sign(global2.c))) - global2.a.b)));
    global1 = array<Struct_1, 21>();
    let var_1 = -564f;
    global1 = array<Struct_1, 21>();
    global0 = !vec3<bool>(_wgslsmith_f_op_f32(global2.a.b * _wgslsmith_f_op_f32(step(1010f, global2.a.b))) != global2.a.b, true, global2.e.a);
    global1 = array<Struct_1, 21>();
    let x = u_input.a;
    s_output = func_1(!all(!select(vec3<bool>(false, global0.x, global2.a.a), vec3<bool>(global0.x, false, false), true)));
}

