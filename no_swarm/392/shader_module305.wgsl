struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: f32,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27>;

var<private> global1: Struct_3;

var<private> global2: vec3<u32>;

var<private> global3: array<u32, 11>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    var var_0 = _wgslsmith_div_u32(~firstTrailingBit(u_input.a.x), countOneBits(max(firstTrailingBit(0u), ~u_input.a.x >> (~global1.a.d.x % 32u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.c, 1400f, -355f, 287f));
    var var_2 = Struct_2(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_div_i32(global1.a.e, -193i), -1i, u_input.b), ~vec3<i32>(i32(-1i) * -19679i, 37378i, ~global1.a.e)), select(select(-select(vec4<i32>(0i, global1.a.e, global1.a.e, 0i), vec4<i32>(5749i, 1i, u_input.b, 2147483647i), global1.a.a.x), firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, u_input.b, global1.a.e, -48749i), vec4<i32>(u_input.b, global1.a.e, global1.a.e, u_input.b), vec4<i32>(47511i, 12145i, -9966i, u_input.b))), any(select(arg_0.zx, global1.a.a, arg_0.x))), vec4<i32>(max(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 28587i, -35454i), vec3<i32>(u_input.b, 10665i, 0i)), i32(-1i) * -2404i), reverseBits(global1.a.e), i32(-1i) * -8290i, -2147483647i), !(!select(vec4<bool>(arg_0.x, false, arg_0.x, global1.a.a.x), vec4<bool>(arg_0.x, false, true, true), vec4<bool>(global1.a.a.x, false, false, global1.a.a.x)))), !select(!(!vec3<bool>(false, false, global1.a.a.x)), !vec3<bool>(arg_0.x, global1.a.a.x, true), any(vec4<bool>(true, false, arg_0.x, false))));
    var_2 = Struct_2(-vec3<i32>(select(-1i, u_input.b | -2147483647i, true != global1.a.a.x), _wgslsmith_div_i32(global1.a.e & 8491i, _wgslsmith_clamp_i32(u_input.b, -5276i, 29430i)), u_input.b), vec4<i32>(u_input.b, 1i, -1i, _wgslsmith_sub_i32(0i & var_2.a.x, var_2.b.x)) >> (~(~_wgslsmith_mod_vec4_u32(global1.a.d, global1.a.d)) % vec4<u32>(32u)), arg_0);
    let var_3 = Struct_2(countOneBits(vec3<i32>(var_2.b.x, 1i, firstLeadingBit(0i))), -var_2.b, var_2.c);
    return -1000f;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    let var_0 = Struct_1(vec2<bool>(false, true), vec2<u32>(global1.a.b.x, ~58313u), _wgslsmith_f_op_f32(func_3(!(!vec3<bool>(arg_2.c.x, global1.a.a.x, false)))), global1.a.d, global1.a.e);
    let var_1 = !vec4<bool>(true, var_0.a.x, global1.a.a.x, _wgslsmith_mult_u32(u_input.a.x, min(4294967295u, 4294967295u)) >= (_wgslsmith_add_u32(arg_3.b.x, 22338u) >> (~arg_3.d.x % 32u)));
    var var_2 = 27521u;
    var_2 = _wgslsmith_add_u32(global2.x, firstLeadingBit(arg_1.a.d.x)) << (var_0.d.x % 32u);
    var var_3 = arg_3;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(!(!select(var_1.zwz, vec3<bool>(true, false, false), vec3<bool>(true, false, arg_3.a.x))))), -2598f));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<i32>) -> u32 {
    var var_0 = vec4<bool>(global1.a.a.x, any(vec2<bool>(any(vec3<bool>(false, false, true)), u_input.a.x == ~u_input.a.x)), global1.a.c < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<f32>(-1910f, global1.a.c, global1.a.c, 214f), Struct_3(global1.a), Struct_2(vec3<i32>(-6121i, 38075i, 1i), vec4<i32>(u_input.b, 1i, -2147483647i, u_input.b), arg_0.c), global1.a))), global0[_wgslsmith_index_u32(4294967295u, 27u)]), !(!all(!arg_1.c.zz)));
    let var_1 = vec4<f32>(global0[_wgslsmith_index_u32(~(~(~firstTrailingBit(global2.x))), 27u)], _wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(746f, global0[_wgslsmith_index_u32(global1.a.b.x, 27u)], global0[_wgslsmith_index_u32(u_input.a.x, 27u)], global1.a.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(507f, -637f, -1084f, global1.a.c), vec4<f32>(global0[_wgslsmith_index_u32(36549u, 27u)], global1.a.c, 1000f, 970f)))), Struct_3(global1.a), arg_1, global1.a)), _wgslsmith_f_op_f32(f32(-1f) * -220f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.c + 2924f)));
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_1.ywz)));
    let var_3 = arg_0.c;
    let var_4 = !select(select(!arg_0.c, arg_0.c, !vec3<bool>(false, true, arg_1.c.x)), arg_1.c, false);
    return 1u;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec3<bool>) -> Struct_2 {
    let var_0 = 1323f;
    let var_1 = Struct_3(Struct_1(vec2<bool>(true, true), ~vec2<u32>(1u, global1.a.d.x), _wgslsmith_f_op_f32(-global1.a.c), select(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), global1.a.d), (global1.a.d << (global1.a.d % vec4<u32>(32u))) >> (vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(15089u, 11u)], 11u)], global1.a.d.x, 1u, global2.x) % vec4<u32>(32u)), true), u_input.b));
    var var_2 = select(!select(select(vec2<bool>(arg_1.c.x, arg_1.c.x), select(vec2<bool>(arg_1.c.x, true), arg_1.c.yx, vec2<bool>(false, global1.a.a.x)), select(false, false, true)), select(arg_1.c.xy, vec2<bool>(true, false), arg_1.c.zy), arg_1.c.x), arg_1.c.xy, !select(vec2<bool>(var_1.a.a.x, arg_2.x), vec2<bool>(true, true), !var_1.a.a.x));
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-762f, -627f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(346f, global1.a.c), vec2<f32>(-977f, -1890f), true))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], global1.a.c)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.a.c, 839f))), false))))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 11u)], 27u)]))))))));
    global1 = Struct_3(global1.a);
    global2 = ~(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, global3[_wgslsmith_index_u32(4294967295u, 11u)], global2.x), vec3<u32>(1u, global3[_wgslsmith_index_u32(51687u, 11u)], global2.x), vec3<u32>(0u, 2728u, global2.x)))) | vec3<u32>(global2.x, max(_wgslsmith_mult_u32(firstLeadingBit(u_input.a.x), _wgslsmith_dot_vec3_u32(global1.a.d.yzx, global1.a.d.xyx)), ~(~56481u)), ~global1.a.b.x);
    let var_1 = true;
    let var_2 = select(_wgslsmith_mod_vec3_i32(vec3<i32>(abs(min(global1.a.e, -2147483647i)), global1.a.e, _wgslsmith_clamp_i32(u_input.b, _wgslsmith_mod_i32(0i, global1.a.e), global1.a.e | global1.a.e)), -reverseBits(vec3<i32>(u_input.b, global1.a.e, 33136i))), _wgslsmith_mod_vec3_i32((vec3<i32>(u_input.b, global1.a.e, u_input.b) | vec3<i32>(9976i, u_input.b, u_input.b)) | min(-vec3<i32>(u_input.b, 45660i, global1.a.e), ~vec3<i32>(-1i, 0i, 0i)), _wgslsmith_mod_vec3_i32(~vec3<i32>(global1.a.e, -2147483647i, global1.a.e), vec3<i32>(-2147483647i, u_input.b, 38866i)) & _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, global1.a.e) | vec3<i32>(global1.a.e, global1.a.e, -1i), _wgslsmith_mult_vec3_i32(vec3<i32>(global1.a.e, global1.a.e, global1.a.e), vec3<i32>(global1.a.e, global1.a.e, u_input.b)))), select(!select(!vec3<bool>(global1.a.a.x, false, global1.a.a.x), select(vec3<bool>(global1.a.a.x, var_1, var_1), vec3<bool>(false, true, false), var_1), vec3<bool>(true, var_1, false)), select(!select(vec3<bool>(true, true, global1.a.a.x), vec3<bool>(var_1, false, var_1), vec3<bool>(true, var_1, false)), !(!vec3<bool>(false, global1.a.a.x, true)), vec3<bool>(true, true, true)), !(!(!vec3<bool>(false, var_1, false)))));
    let var_3 = func_4(_wgslsmith_mult_u32(func_1(Struct_2(reverseBits(vec3<i32>(20971i, global1.a.e, var_2.x)), ~vec4<i32>(1i, u_input.b, -23483i, 9597i), vec3<bool>(var_1, global1.a.a.x, true)), Struct_2(abs(var_2), -vec4<i32>(global1.a.e, -1i, 0i, 1i), !vec3<bool>(true, global1.a.a.x, var_1)), _wgslsmith_mod_vec2_i32(vec2<i32>(var_2.x, 1191i), var_2.yz)), global1.a.b.x), Struct_2(-_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, u_input.b, 2147483647i), ~vec3<i32>(1i, u_input.b, var_2.x), firstLeadingBit(vec3<i32>(global1.a.e, var_2.x, 22541i))), -(min(vec4<i32>(var_2.x, var_2.x, -2147483647i, -25111i), vec4<i32>(-40299i, u_input.b, u_input.b, global1.a.e)) ^ min(vec4<i32>(32194i, 52774i, u_input.b, global1.a.e), vec4<i32>(0i, 2147483647i, global1.a.e, 0i))), !vec3<bool>(any(vec4<bool>(global1.a.a.x, false, false, true)), var_1, false)), !vec3<bool>(false, true, global1.a.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(vec2<u32>(~11599u, ~(~global3[_wgslsmith_index_u32(global2.x, 11u)])), _wgslsmith_div_vec2_u32(~(~vec2<u32>(25527u, 1u)), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), _wgslsmith_sub_vec2_u32(global1.a.d.wx, vec2<u32>(0u, 90446u))))));
}

