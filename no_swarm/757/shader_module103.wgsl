struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: vec4<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_4 = Struct_4(0i, 1159f);

var<private> global2: Struct_1 = Struct_1(vec3<u32>(0u, 0u, 4294967295u));

var<private> global3: array<vec3<f32>, 3> = array<vec3<f32>, 3>(vec3<f32>(-209f, 887f, -719f), vec3<f32>(791f, 2070f, -811f), vec3<f32>(-1760f, -986f, 364f));

var<private> global4: array<Struct_1, 5>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_dot_vec2_u32(~(~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), global2.a.yx), 1u)), _wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(u_input.b, u_input.b) & global2.a.xz) << (~(vec2<u32>(52090u, 0u) >> (global2.a.yx % vec2<u32>(32u))) % vec2<u32>(32u)), global2.a.yz));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1439f, global1.b, global1.b, -1000f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1142f, global1.b, global1.b, 1000f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2576f, global1.b, -150f, global1.b)))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(425f, 1710f, global1.b, global1.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global1.b, global1.b, 2068f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -205f), global1.b, _wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(-1241f * -926f)), _wgslsmith_f_op_f32(floor(-1089f)))));
    let var_2 = Struct_2(var_0, 1u);
    let var_3 = 6059u;
    global2 = global4[_wgslsmith_index_u32(global2.a.x << (51604u % 32u), 5u)];
    return any(vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)) > _wgslsmith_div_f32(global1.b, _wgslsmith_f_op_f32(var_1.x + global1.b)), u_input.a > countOneBits(27538i), true));
}

fn func_2() -> Struct_4 {
    global1 = Struct_4(-global1.a, global1.b);
    global0 = any(select(vec2<bool>(func_3(), true), vec2<bool>(true, true), all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true))))) != all(!vec4<bool>(all(vec4<bool>(false, false, true, true)), false, true, true));
    let var_0 = Struct_3(~global2.a.x);
    global1 = Struct_4(abs(u_input.a) << (var_0.a % 32u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1307f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.b)) * _wgslsmith_div_f32(global1.b, -1073f))) * _wgslsmith_f_op_f32(global1.b - _wgslsmith_f_op_f32(global1.b * 1000f))));
    global0 = true;
    return Struct_4(abs(~(~3012i | -global1.a)), 385f);
}

fn func_1() -> Struct_1 {
    let var_0 = all(vec4<bool>(false != any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false))), true, select(any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), true)), all(vec3<bool>(false, true, true)), true), true));
    var var_1 = func_2();
    let var_2 = min(vec4<i32>(global1.a, firstLeadingBit(-12854i), -_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a, var_1.a, 27344i), ~vec4<i32>(var_1.a, 0i, 56593i, -1i)), u_input.a), firstTrailingBit(vec4<i32>(var_1.a, -global1.a, ~(-2839i), -2147483647i)) << (vec4<u32>(u_input.b, 4294967295u, ~(u_input.b | 0u), global2.a.x) % vec4<u32>(32u)));
    var_1 = Struct_4(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.b, var_1.b, true)) + _wgslsmith_f_op_f32(-3206f * _wgslsmith_f_op_f32(-1332f - _wgslsmith_f_op_f32(min(1390f, 344f))))));
    var var_3 = _wgslsmith_dot_vec3_i32(select(-vec3<i32>(-1i, var_2.x, 5939i), _wgslsmith_sub_vec3_i32(var_2.xyy, var_2.wyy), vec3<bool>(var_0, var_0, false)) << (firstTrailingBit(global2.a) % vec3<u32>(32u)), vec3<i32>(-global1.a, -var_2.x, ~68868i) ^ var_2.yxz) == _wgslsmith_clamp_i32(-u_input.a, 23023i >> (~global2.a.x % 32u), 25528i);
    return Struct_1(~global2.a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    global1 = Struct_4(func_2().a, 325f);
    global0 = true;
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(global3[_wgslsmith_index_u32(15740u, 3u)])))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b, global1.b, -286f) - global3[_wgslsmith_index_u32(u_input.b, 3u)]) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_2, arg_2, arg_2)))))))));
    var var_1 = Struct_3(~1u);
    global2 = arg_0;
    return global4[_wgslsmith_index_u32(~u_input.b, 5u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), Struct_2(select(u_input.b, global2.a.x, true), ~select(global2.a.x >> (1u % 32u), 1u, true)), _wgslsmith_f_op_f32(global1.b - _wgslsmith_f_op_f32(sign(1131f))));
    var var_1 = vec3<i32>(0i, ~_wgslsmith_add_i32(-16082i, reverseBits(max(global1.a, u_input.a))), global1.a);
    global3 = array<vec3<f32>, 3>();
    global1 = func_2();
    var var_2 = _wgslsmith_dot_vec4_i32(abs(~(-vec4<i32>(var_1.x, 12276i, -2147483647i, var_1.x))), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(1i, -17755i), global1.a | 47909i), -_wgslsmith_add_i32(var_1.x, -2147483647i)), 1i, global1.a, 0i & ~(-u_input.a)));
    let var_3 = ~vec2<i32>(_wgslsmith_dot_vec4_i32(countOneBits(min(vec4<i32>(global1.a, global1.a, global1.a, 2147483647i), vec4<i32>(-32055i, 17443i, var_1.x, -2147483647i))), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-17592i, var_1.x, u_input.a, global1.a), vec4<i32>(var_1.x, global1.a, 0i, global1.a)), _wgslsmith_div_vec4_i32(vec4<i32>(36071i, global1.a, -24812i, var_1.x), vec4<i32>(26245i, 2147483647i, u_input.a, var_1.x)), select(vec4<i32>(-5262i, global1.a, var_1.x, global1.a), vec4<i32>(2147483647i, 2147483647i, u_input.a, 0i), true))), 2147483647i);
    global0 = true;
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(ceil(-1000f))), 591f), firstLeadingBit(_wgslsmith_mult_u32(var_0.a.x, 328u) << (0u % 32u)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(global1.b, global1.b, -1956f, 727f), vec4<f32>(-412f, 1520f, -1014f, -287f)), vec4<f32>(-725f, 165f, 1000f, global1.b)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(370f, 713f, -835f, -1573f)))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(1253f * -819f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * global1.b) + global1.b), _wgslsmith_div_f32(func_2().b, global1.b))), ~select(_wgslsmith_mod_vec2_i32(-var_3, _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(var_3.x, global1.a))), -vec2<i32>(0i, -4492i), !(!vec2<bool>(false, var_4))));
}

