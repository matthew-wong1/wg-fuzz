struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: Struct_1,
    d: vec2<bool>,
    e: i32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<bool, 17> = array<bool, 17>(true, false, false, true, true, false, true, true, true, false, false, false, true, false, false, true, true);

var<private> global2: array<Struct_1, 19>;

var<private> global3: vec2<f32>;

var<private> global4: vec3<u32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(1u, u_input.b, u_input.b)) & vec3<u32>(55146u, ~reverseBits(global4.x), u_input.b), min(countOneBits(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(global4.x, 1u, global4.x)), vec3<u32>(74359u, global4.x, 0u), ~vec3<u32>(1u, 19742u, 27037u))), _wgslsmith_mult_vec3_u32(vec3<u32>(firstTrailingBit(global4.x), global4.x | 34583u, global4.x), vec3<u32>(~17485u, _wgslsmith_div_u32(u_input.b, 45126u), global4.x)))), 19u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * _wgslsmith_f_op_f32(-global0.a)), global0.a, 1000f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(global0.a + global0.a)), global0.a))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(376f + 1000f))) + _wgslsmith_f_op_f32(727f - _wgslsmith_f_op_f32(-global0.a))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.a))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1972f * 646f)))), _wgslsmith_f_op_f32(-global0.a)));
    global0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1631f, var_1.x)));
    let var_2 = global4.x;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(global3.x, -1231f, var_0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, var_1.x)))))), _wgslsmith_f_op_f32(1358f + _wgslsmith_f_op_f32(floor(347f))), -1176f, global0.a);
    return true;
}

fn func_2() -> u32 {
    global1 = array<bool, 17>();
    var var_0 = Struct_4(515f);
    var var_1 = all(vec3<bool>(!((var_0.a <= global3.x) & global1[_wgslsmith_index_u32(~65936u, 17u)]), func_3() & false, global1[_wgslsmith_index_u32(u_input.b, 17u)]));
    let var_2 = Struct_2(min(~(~vec4<u32>(1u, 1u, u_input.b, u_input.b)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(70520u, u_input.b, u_input.b, global4.x), abs(vec4<u32>(25248u, global4.x, u_input.b, u_input.b)))), -2147483647i, global2[_wgslsmith_index_u32((_wgslsmith_mod_u32(~u_input.b, _wgslsmith_clamp_u32(u_input.b, global4.x, 1u)) ^ ~_wgslsmith_add_u32(global4.x, 33193u)) >> (global4.x % 32u), 19u)], vec2<bool>(false, !global1[_wgslsmith_index_u32(global4.x, 17u)] & true), -min(44483i, -35484i) | u_input.a);
    var_1 = var_2.e == abs(u_input.a);
    return 0u;
}

fn func_1(arg_0: Struct_4) -> vec3<u32> {
    var var_0 = vec3<bool>(global1[_wgslsmith_index_u32(func_2(), 17u)], any(select(vec2<bool>(true, true), vec2<bool>(true, all(vec4<bool>(false, false, true, false))), !select(vec2<bool>(true, global1[_wgslsmith_index_u32(40207u, 17u)]), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(u_input.b, 17u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 17u)])))), arg_0.a != global0.a);
    let var_1 = Struct_3(u_input.a);
    let var_2 = max(vec2<u32>(abs(_wgslsmith_div_u32(3913u, firstLeadingBit(global4.x))), _wgslsmith_add_u32(global4.x, u_input.b)), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 1u), min(_wgslsmith_sub_vec2_u32(global4.yx, vec2<u32>(38672u, 1u)), vec2<u32>(1u, 1u))) ^ global4.zx);
    let var_3 = global4.zy;
    var var_4 = _wgslsmith_mult_vec3_i32(((-vec3<i32>(var_1.a, -1i, 1i) >> (_wgslsmith_div_vec3_u32(vec3<u32>(84419u, 4294967295u, var_3.x), vec3<u32>(u_input.b, 22080u, 1u)) % vec3<u32>(32u))) << (vec3<u32>(~26313u, global4.x, _wgslsmith_mod_u32(u_input.b, var_2.x)) % vec3<u32>(32u))) | -(~max(vec3<i32>(-2147483647i, 16345i, u_input.a), vec3<i32>(3272i, -66523i, var_1.a))), abs(-_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-29989i, var_1.a, var_1.a), vec3<i32>(u_input.a, u_input.a, u_input.a)), firstLeadingBit(vec3<i32>(18584i, u_input.a, 9664i)))));
    return ~abs(countOneBits(~vec3<u32>(4294967295u, 22537u, u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(global4.x, 1u, u_input.b), select(abs(vec3<u32>(u_input.b, 0u, u_input.b)), func_1(Struct_4(global3.x)), select(vec3<bool>(global1[_wgslsmith_index_u32(64225u, 17u)], true, true), vec3<bool>(true, global1[_wgslsmith_index_u32(13521u, 17u)], global1[_wgslsmith_index_u32(u_input.b, 17u)]), false))), ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(40052u, u_input.b, u_input.b), vec3<u32>(57266u, global4.x, u_input.b)))));
    global3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global3.x + global0.a), _wgslsmith_f_op_f32(-global0.a)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, -427f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, global0.a))), vec2<f32>(global3.x, -845f)))), vec2<f32>(global0.a, _wgslsmith_f_op_f32(-1f)), true));
    var var_1 = vec2<i32>(-1i, 0i);
    var_1 = ~_wgslsmith_sub_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(9938i, u_input.a) >> (global4.yy % vec2<u32>(32u)), reverseBits(vec2<i32>(-44439i, 2147483647i))), ~vec2<i32>(min(29446i, var_1.x), -1i));
    let var_2 = _wgslsmith_add_vec2_i32(~select(~vec2<i32>(-11502i, var_1.x), -_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, 21912i), vec2<i32>(var_1.x, 2147483647i)), vec2<bool>(any(vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 17u)], false)), true)), vec2<i32>(var_1.x & u_input.a, -12934i));
    var_1 = max(var_2, firstTrailingBit(firstTrailingBit(_wgslsmith_add_vec2_i32(var_2, var_2)))) >> (abs(~(~vec2<u32>(u_input.b, global4.x))) % vec2<u32>(32u));
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(780f)), _wgslsmith_f_op_f32(select(1474f, global0.a, global1[_wgslsmith_index_u32(0u, 17u)]))))) - vec2<f32>(global3.x, global0.a));
    global1 = array<bool, 17>();
    global4 = select(~vec3<u32>(u_input.b, u_input.b, ~4294967295u), firstTrailingBit(countOneBits(vec3<u32>(4294967295u, var_0, var_0) & vec3<u32>(41049u, var_0, var_0))), global1[_wgslsmith_index_u32(u_input.b, 17u)]) << (vec3<u32>(global4.x, _wgslsmith_mod_u32(~func_1(Struct_4(global3.x)).x, abs(~var_0)), global4.x) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_add_u32(var_0, var_0 >> (4294967295u % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, reverseBits(u_input.b), ~71051u), ~vec4<u32>(var_0, var_0, global4.x, 43618u))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, global4.x, 28394u, var_0), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0, 1u, u_input.b, var_0), vec4<u32>(0u, 4294967295u, var_0, global4.x)), select(vec4<u32>(global4.x, var_0, var_0, u_input.b), vec4<u32>(global4.x, 1u, 45763u, var_0), global1[_wgslsmith_index_u32(u_input.b, 17u)])), vec4<u32>(var_0, 1u, _wgslsmith_mult_u32(27109u, u_input.b ^ var_0), global4.x)));
}

