struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6>;

var<private> global1: array<u32, 6>;

var<private> global2: vec4<f32> = vec4<f32>(153f, 460f, -1959f, 1195f);

var<private> global3: Struct_1 = Struct_1(vec2<u32>(1u, 0u), 68918u);

var<private> global4: Struct_1 = Struct_1(vec2<u32>(65545u, 36080u), 24694u);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    global3 = Struct_1(abs(global4.a) | ~global3.a, ~_wgslsmith_div_u32(27538u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(17909u, global1[_wgslsmith_index_u32(25283u, 6u)], global3.b, 45458u), vec4<u32>(47375u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4.b, 6u)], 6u)], 4294967295u, global4.a.x))));
    let var_0 = 23616u;
    let var_1 = -vec4<i32>(_wgslsmith_mult_i32(~_wgslsmith_mult_i32(2147483647i, u_input.b), abs(~u_input.a.x)), u_input.c, -2147483647i, -2147483647i);
    var var_2 = Struct_1(_wgslsmith_mod_vec2_u32(~vec2<u32>(countOneBits(0u), _wgslsmith_add_u32(global4.a.x, var_0)), _wgslsmith_add_vec2_u32(global3.a, ~(~global3.a))), _wgslsmith_div_u32(var_0, ~_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4.a.x, 6u)] << (var_0 % 32u), 6u)], var_0, 1u)));
    var var_3 = Struct_1(vec2<u32>(4294967295u, abs(1u)), _wgslsmith_dot_vec2_u32(global3.a, _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(14728u, global1[_wgslsmith_index_u32(var_2.a.x, 6u)]), global3.a) | ~vec2<u32>(0u, var_2.a.x), countOneBits(firstTrailingBit(vec2<u32>(111227u, 1u))))));
    return _wgslsmith_f_op_f32(f32(-1f) * -525f);
}

fn func_2(arg_0: bool, arg_1: vec3<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3()), 1212f) + global2.zy) * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-863f, global2.x) + _wgslsmith_f_op_f32(f32(-1f) * -368f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.x, 346f)))), global2.xz));
    var var_1 = !(!select(true, arg_0 & true, all(select(vec2<bool>(false, arg_1.x), arg_1.yy, arg_1.xx))));
    global0 = array<f32, 6>();
    global4 = Struct_1((~global4.a & _wgslsmith_clamp_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(1u, 6u)], 71124u), global4.a, reverseBits(vec2<u32>(global3.b, global1[_wgslsmith_index_u32(1u, 6u)])))) << (global4.a % vec2<u32>(32u)), 83518u);
    let var_2 = vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(global3.b, global3.a.x), abs(~global4.b)), 6u)] <= var_0.x, arg_0, true, any(!(!vec3<bool>(arg_1.x, false, arg_1.x))));
    return global2.x;
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: f32) -> Struct_1 {
    let var_0 = vec2<u32>(1u, abs(abs(~_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], global4.a.x, 1u))));
    let var_1 = Struct_1(var_0, ~global3.b);
    global2 = _wgslsmith_f_op_vec4_f32(arg_1 * arg_1);
    let var_2 = _wgslsmith_dot_vec2_u32(~vec2<u32>(43720u, 102041u), ~((vec2<u32>(0u, 0u) & global4.a) ^ min(global3.a, global4.a))) ^ global1[_wgslsmith_index_u32(max(select(_wgslsmith_clamp_u32(global4.b << (0u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(global4.b, global3.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4.a.x, 6u)], 6u)], 1u), vec4<u32>(0u, 0u, var_0.x, global3.a.x)), min(var_0.x, global3.a.x)), max(0u, 4294967295u), true), 0u), 6u)];
    var var_3 = (global4.a.x << (global3.a.x % 32u)) >> (_wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(select(vec4<u32>(37198u, 0u, 1u, var_0.x), vec4<u32>(14788u, global3.a.x, global1[_wgslsmith_index_u32(4294967295u, 6u)], global4.b), vec4<bool>(false, false, false, true)), vec4<u32>(var_1.b, 85879u, var_2, var_1.a.x)), max(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global4.b, global3.b, 1u, 75421u), vec4<u32>(13029u, 1u, global1[_wgslsmith_index_u32(64071u, 6u)], var_1.a.x)), ~vec4<u32>(1u, var_1.b, var_0.x, 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(30615u, var_2, 14850u, 18672u), ~vec4<u32>(var_1.b, 4294967295u, global1[_wgslsmith_index_u32(var_2, 6u)], 1u)))) % 32u);
    return Struct_1(~(~(~vec2<u32>(global3.b, 4294967295u))), var_0.x);
}

fn func_1(arg_0: vec3<bool>, arg_1: bool, arg_2: u32, arg_3: vec4<f32>) -> vec4<u32> {
    global4 = func_4(~abs(-1i), vec4<f32>(global2.x, 397f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global3.b, ~arg_2), 6u)]), arg_3.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(global2.x)), _wgslsmith_f_op_f32(func_2(all(arg_0.zy), select(vec3<bool>(false, arg_0.x, arg_0.x), arg_0, true))), 1u >= ~global4.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, global0[_wgslsmith_index_u32(global3.a.x, 6u)])) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-828f, global2.x)), arg_3.x))))));
    var var_0 = func_4(i32(-1i) * -7930i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(arg_3)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3) - _wgslsmith_f_op_vec4_f32(-arg_3))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global4.b, 6u)]));
    global3 = func_4(_wgslsmith_add_i32(-(u_input.b << (reverseBits(var_0.b) % 32u)), _wgslsmith_sub_i32(~u_input.d.x, -u_input.a.x) & abs(-26058i)), vec4<f32>(arg_3.x, -727f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1696f)) - 1f)), 924f), global2.x);
    var var_1 = select(arg_0.zy, select(select(!select(arg_0.yx, arg_0.xz, false), !arg_0.yx, arg_0.x), select(select(arg_0.xz, arg_0.yy, any(vec3<bool>(true, true, true))), select(vec2<bool>(arg_0.x, false), !vec2<bool>(true, arg_0.x), arg_0.x), arg_0.xx), -1i > -_wgslsmith_sub_i32(1i, u_input.c)), arg_0.zy);
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1244f, 238f))))), 1f));
    return select(vec4<u32>(arg_2, var_0.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, 4294967295u, global3.b) & abs(vec3<u32>(97740u, global3.b, 48254u)), vec3<u32>(select(global3.a.x, 1976u, false), 4294967295u, countOneBits(4294967295u))), global3.b), ~(~vec4<u32>(_wgslsmith_div_u32(arg_2, global4.b), _wgslsmith_mult_u32(arg_2, 2450u), global4.b, 1u)), any(vec3<bool>(var_1.x, (12507i != u_input.a.x) | arg_1, all(vec2<bool>(true, false)) | true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~_wgslsmith_clamp_vec2_u32(vec2<u32>(28246u, _wgslsmith_add_u32(4294967295u, global3.a.x)), _wgslsmith_add_vec2_u32(abs(global3.a), vec2<u32>(global3.b, 60192u) >> (vec2<u32>(global1[_wgslsmith_index_u32(0u, 6u)], global3.b) % vec2<u32>(32u))), global4.a << (abs(global4.a) % vec2<u32>(32u))), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(abs(~vec4<u32>(global1[_wgslsmith_index_u32(0u, 6u)], 1072u, global4.b, global4.a.x)), func_1(vec3<bool>(false, false, true), true, 75636u, _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, 332f, global2.x, -583f) - vec4<f32>(-884f, global0[_wgslsmith_index_u32(global4.a.x, 6u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.b, 6u)], 6u)], global0[_wgslsmith_index_u32(1u, 6u)])))), firstTrailingBit(firstTrailingBit(vec4<u32>(global1[_wgslsmith_index_u32(global4.b, 6u)], global3.b, global4.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 6u)], 6u)])))));
    global0 = array<f32, 6>();
    let var_1 = var_0.a.x;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.x)) + 204f);
    let var_3 = true;
    let var_4 = vec3<u32>(var_0.a.x, abs(~(abs(global4.a.x) ^ ~0u)), ~(~(~1u)));
    global3 = func_4(u_input.d.x, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2, global2.x, global0[_wgslsmith_index_u32(4294967295u, 6u)], 237f), vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 6u)], var_2, -1890f, var_2)))))))), _wgslsmith_f_op_f32(-var_2));
    var var_5 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global2.yxz))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.xzw)), vec3<f32>(_wgslsmith_f_op_f32(-var_2), -109f, _wgslsmith_div_f32(1002f, 1443f)))) * global2.wzy));
}

