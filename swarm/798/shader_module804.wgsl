struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<u32, 12> = array<u32, 12>(1u, 4294967295u, 0u, 0u, 41012u, 15028u, 4294967295u, 4294967295u, 30818u, 136839u, 18592u, 4294967295u);

var<private> global2: vec4<i32> = vec4<i32>(-1i, 0i, 2147483647i, -1i);

var<private> global3: vec4<u32> = vec4<u32>(1u, 0u, 26330u, 52003u);

var<private> global4: Struct_3 = Struct_3(-55200i, vec4<u32>(0u, 4294967295u, 60182u, 23139u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    return _wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(min(-2127f, _wgslsmith_f_op_f32(min(global0.a.x, _wgslsmith_div_f32(global0.a.x, global0.a.x)))))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> vec3<u32> {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1999f, global0.a.x, global0.a.x, global0.a.x) - vec4<f32>(-1138f, 1435f, -573f, 1104f)))))) * vec4<f32>(1f, global0.a.x, _wgslsmith_f_op_f32(abs(global0.a.x)), _wgslsmith_f_op_f32(global0.a.x + _wgslsmith_div_f32(-1127f, -613f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(178f, _wgslsmith_f_op_f32(step(global0.a.x, global0.a.x)), -342f, global0.a.x), vec4<f32>(1916f, 904f, _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(func_3(vec4<bool>(true, true, true, false)))), true)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, -578f, global0.a.x, global0.a.x) - vec4<f32>(global0.a.x, -583f, 360f, global0.a.x)), _wgslsmith_div_vec4_f32(vec4<f32>(1847f, global0.a.x, global0.a.x, -220f), vec4<f32>(-2590f, -201f, 2568f, global0.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, global0.a.x, -1027f, global0.a.x) + vec4<f32>(492f, 521f, -706f, global0.a.x)))))));
    var var_2 = vec4<f32>(213f, 530f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.x))), global0.a.x);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(arg_1)))), _wgslsmith_f_op_f32(ceil(var_2.x)), _wgslsmith_div_f32(var_2.x, -1000f), 163f);
    var_0 = Struct_1(countOneBits(0u));
    return _wgslsmith_sub_vec3_u32(global4.b.xxw, global0.c.xxz);
}

fn func_1(arg_0: bool, arg_1: u32) -> Struct_2 {
    var var_0 = func_2(global0.b, select(vec4<bool>(false, any(vec2<bool>(arg_0, false)) != (false | arg_0), all(vec4<bool>(false, arg_0, true, arg_0)) | arg_0, _wgslsmith_f_op_f32(floor(-794f)) > _wgslsmith_f_op_f32(global0.a.x + global0.a.x)), !vec4<bool>(arg_0, all(vec3<bool>(arg_0, arg_0, arg_0)), select(arg_0, false, arg_0), global0.d != -26732i), vec4<bool>(true, any(select(vec2<bool>(false, false), vec2<bool>(arg_0, true), vec2<bool>(arg_0, false))), arg_0 | any(vec4<bool>(false, true, false, arg_0)), false)));
    global3 = ~(global4.b | vec4<u32>(~abs(10932u), _wgslsmith_dot_vec2_u32(~global4.b.zz, firstLeadingBit(global3.zx)), global1[_wgslsmith_index_u32(115465u, 12u)], arg_1));
    var var_1 = vec2<i32>((i32(-1i) * -9443i) | (-20399i | _wgslsmith_add_i32(global0.d, u_input.c.x)), 0i) << (vec2<u32>(~_wgslsmith_dot_vec3_u32(u_input.a.www, global4.b.zyx) ^ global4.b.x, _wgslsmith_div_u32(global3.x << (global0.b.a % 32u), 4294967295u)) % vec2<u32>(32u));
    let var_2 = global0.b;
    var var_3 = _wgslsmith_dot_vec4_u32(global0.c, vec4<u32>(62920u, 136279u ^ ~(~var_2.a), 4294967295u, _wgslsmith_mult_u32(abs(global4.b.x), 7839u)));
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a), global0.a))), global0.b, vec4<u32>(_wgslsmith_sub_u32(0u, arg_1), reverseBits(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(global3.x, 4294967295u) | global4.b.xw, _wgslsmith_clamp_vec2_u32(global0.c.yw, vec2<u32>(1u, global0.b.a), vec2<u32>(23586u, u_input.b))), global3.x) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(66944u, _wgslsmith_mod_u32(3762u, global1[_wgslsmith_index_u32(26785u, 12u)]), _wgslsmith_mult_u32(1u, global4.b.x), global3.x), _wgslsmith_mod_vec4_u32(u_input.a << (vec4<u32>(arg_1, global3.x, global3.x, var_0.x) % vec4<u32>(32u)), global0.c >> (vec4<u32>(1u, 22098u, global0.b.a, global0.b.a) % vec4<u32>(32u)))), i32(-1i) * -global4.a, u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(true, _wgslsmith_sub_u32(_wgslsmith_mult_u32(20802u, ~_wgslsmith_add_u32(global4.b.x, global1[_wgslsmith_index_u32(global3.x, 12u)])), 0u));
    global4 = Struct_3(((global2.x | ~global0.d) | max(16064i, -56509i)) & 2147483647i, select(select(var_0.c, min(var_0.c, global0.c), vec4<bool>(true, true, true, true)), func_1(true, 34106u).c, select(true, all(vec2<bool>(true, true)), (global1[_wgslsmith_index_u32(17344u, 12u)] & global0.b.a) <= global3.x)));
    global2 = ~(~(vec4<i32>(func_1(true, 44278u).e, -2147483647i, global4.a, u_input.c.x) | (_wgslsmith_div_vec4_i32(vec4<i32>(var_0.d, -19413i, global4.a, global4.a), vec4<i32>(global4.a, var_0.d, 30546i, -26391i)) | -vec4<i32>(0i, global2.x, global2.x, var_0.d))));
    var var_1 = false;
    let var_2 = _wgslsmith_sub_vec2_u32(var_0.c.xx, min(func_2(func_1(true, _wgslsmith_add_u32(0u, 1u)).b, select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), false), vec4<bool>(false, false, false, false))).yy, min(~vec2<u32>(global1[_wgslsmith_index_u32(41952u, 12u)], 4294967295u), u_input.a.zw & var_0.c.yy)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_0.b.a, _wgslsmith_dot_vec3_u32(select(global3.xww, global4.b.wxw, vec3<bool>(true, true, false)), global0.c.zzy)) ^ u_input.a.xz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1f), global0.a.x, var_0.a.x)), _wgslsmith_add_vec3_i32(abs(vec3<i32>(firstLeadingBit(14775i), _wgslsmith_sub_i32(2147483647i, global0.d), global0.d)), u_input.c));
}

