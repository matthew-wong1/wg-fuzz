struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: vec3<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29>;

var<private> global1: array<vec3<i32>, 17>;

var<private> global2: vec3<u32>;

var<private> global3: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = u_input.d;
    var var_1 = vec4<bool>(true, false, true, !all(vec3<bool>(false, true, false)) & !(!(global0[_wgslsmith_index_u32(global2.x, 29u)] >= global0[_wgslsmith_index_u32(4294967295u, 29u)])));
    global1 = array<vec3<i32>, 17>();
    var var_2 = u_input.a;
    global0 = array<u32, 29>();
    return !(!((~63293u <= _wgslsmith_clamp_u32(1u, global0[_wgslsmith_index_u32(1u, 29u)], 22787u)) | any(!vec4<bool>(var_1.x, true, var_1.x, var_1.x))));
}

fn func_2() -> f32 {
    var var_0 = countOneBits(_wgslsmith_mult_vec4_u32(~(~(~u_input.a)), ((vec4<u32>(u_input.a.x, u_input.c, 60958u, u_input.a.x) & vec4<u32>(global2.x, 4294967295u, global2.x, 2191u)) >> (vec4<u32>(74733u, u_input.c, u_input.b, global0[_wgslsmith_index_u32(4294967295u, 29u)]) % vec4<u32>(32u))) >> (firstTrailingBit(vec4<u32>(4294967295u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 29u)], 29u)], global2.x)) % vec4<u32>(32u))));
    global3 = Struct_1(_wgslsmith_dot_vec4_i32(-(~_wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.d, 1i, -409i), vec4<i32>(26211i, u_input.d, u_input.d, 22951i))), reverseBits(min(vec4<i32>(u_input.d, global3.a, -48064i, u_input.d) | vec4<i32>(u_input.d, -34792i, u_input.d, u_input.d), ~vec4<i32>(2147483647i, u_input.d, 39323i, u_input.d)))), _wgslsmith_f_op_vec3_f32(-global3.b));
    var var_1 = select(vec3<bool>(func_3(global3.b.x, Struct_1(-8646i, _wgslsmith_f_op_vec3_f32(-global3.b)), Struct_1(u_input.d & 2147483647i, _wgslsmith_f_op_vec3_f32(-global3.b))), true, all(vec2<bool>(all(vec2<bool>(false, true)), any(vec3<bool>(true, true, false))))), vec3<bool>(1139f >= _wgslsmith_div_f32(-215f, _wgslsmith_div_f32(1596f, global3.b.x)), !(u_input.b >= var_0.x) && !(u_input.d != global3.a), any(vec4<bool>(false, false, true, false)) | all(vec2<bool>(true, true))), abs(global3.a) <= _wgslsmith_div_i32(u_input.d, 10452i));
    var var_2 = vec4<bool>(true, any(select(vec2<bool>(var_1.x, true), var_1.xz, any(vec3<bool>(var_1.x, true, var_1.x)))) & (_wgslsmith_f_op_f32(global3.b.x - _wgslsmith_f_op_f32(global3.b.x - global3.b.x)) >= global3.b.x), false, func_3(_wgslsmith_f_op_f32(-global3.b.x), Struct_1(u_input.d, _wgslsmith_f_op_vec3_f32(global3.b + global3.b)), Struct_1(reverseBits(global3.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.b)))));
    var var_3 = global1[_wgslsmith_index_u32(1u, 17u)];
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global3.b.x, _wgslsmith_f_op_f32(exp2(global3.b.x)))), 718f) + _wgslsmith_f_op_f32(global3.b.x * _wgslsmith_f_op_f32(-460f + _wgslsmith_f_op_f32(-global3.b.x))));
}

fn func_4(arg_0: f32, arg_1: u32) -> Struct_1 {
    let var_0 = any(vec4<bool>(true && all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true)), true, (i32(-1i) * -44769i) > global3.a, true));
    let var_1 = true;
    var var_2 = Struct_2(4294967295u, ~abs(vec4<i32>(-2526i, u_input.d, global3.a, 1i) << (vec4<u32>(arg_1, global0[_wgslsmith_index_u32(4294967295u, 29u)], arg_1, arg_1) % vec4<u32>(32u))) >> (u_input.a % vec4<u32>(32u)), select(vec2<bool>(!(u_input.d > -2147483647i), var_1), !select(!vec2<bool>(var_1, var_1), vec2<bool>(var_0, true), var_0), select(select(vec2<bool>(true, true), !vec2<bool>(var_0, false), true), vec2<bool>(false, var_1), !select(vec2<bool>(var_1, var_0), vec2<bool>(false, false), var_1))));
    let var_3 = vec2<f32>(-381f, global3.b.x);
    let var_4 = var_3.x;
    return Struct_1(~abs(-7999i), global3.b);
}

fn func_1() -> Struct_1 {
    global3 = func_4(_wgslsmith_f_op_f32(func_2()), reverseBits(19562u));
    var var_0 = abs(_wgslsmith_clamp_i32(-5119i, 11901i, global3.a));
    let var_1 = true;
    var var_2 = Struct_2(global0[_wgslsmith_index_u32(61360u, 29u)], reverseBits(-vec4<i32>(_wgslsmith_mod_i32(-1i, 2147483647i), ~global3.a, global3.a, _wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(36372u, 17u)], vec3<i32>(global3.a, 2147483647i, 20547i)))), vec2<bool>(true, all(vec4<bool>(var_1, select(var_1, var_1, var_1), any(vec3<bool>(true, false, false)), var_1))));
    let var_3 = func_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(268f, _wgslsmith_f_op_f32(global3.b.x + 697f)))))), ~1u);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_f_op_f32(1000f * global3.b.x), global3.b.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, -1631f, -1623f, -203f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(320f, -158f, 610f, -344f) + vec4<f32>(1106f, global3.b.x, global3.b.x, 323f)))))));
    global2 = abs(vec3<u32>(1u, 4294967295u, ~(_wgslsmith_add_u32(1u, 50517u) & global2.x)));
    var var_1 = select(0u, 0u, false);
    let var_2 = func_1();
    global2 = vec3<u32>(4294967295u, firstLeadingBit(firstLeadingBit(global0[_wgslsmith_index_u32(58883u, 29u)] ^ u_input.c)) >> (u_input.b % 32u), global2.x);
    var var_3 = Struct_2(firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.a.x, global2.x)), firstLeadingBit(u_input.a.zy)), global2.x)), ~(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 0i, var_2.a, global3.a), vec4<i32>(-11460i, var_2.a, u_input.d, -78642i), -vec4<i32>(var_2.a, -1i, -1i, 1i)) & _wgslsmith_mod_vec4_i32(~vec4<i32>(23i, var_2.a, -2147483647i, var_2.a), ~vec4<i32>(var_2.a, -22904i, u_input.d, global3.a))), !select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, true), false));
    var_3 = Struct_2(0u, ~(-select(-vec4<i32>(var_2.a, var_2.a, var_2.a, -2147483647i), abs(vec4<i32>(var_3.b.x, u_input.d, u_input.d, var_2.a)), true)), !(!vec2<bool>(any(vec3<bool>(true, false, var_3.c.x)), !var_3.c.x)));
    let var_4 = var_2.b;
    var var_5 = Struct_2(_wgslsmith_add_u32(~firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(111234u, global2.x, global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(global2.x, 29u)]), vec4<u32>(global2.x, 64255u, global2.x, 10142u))), var_3.a), _wgslsmith_div_vec4_i32(~(-(~var_3.b)), var_3.b), !var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, ~abs(global2.xx), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))), vec3<u32>(var_3.a, _wgslsmith_clamp_u32(~u_input.a.x, ~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(31192u, 29u)], 58900u), _wgslsmith_sub_u32(_wgslsmith_sub_u32(var_5.a, 11785u), 1u)), 35276u), vec2<i32>(9924i >> (global2.x % 32u), func_4(var_4.x, var_3.a ^ var_3.a).a >> (abs(select(global2.x, 0u, true)) % 32u)));
}

