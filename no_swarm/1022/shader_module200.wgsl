struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 19>;

var<private> global2: u32;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> bool {
    global0 = arg_1.a.x;
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.d.wy)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.d.x, -1000f)) - _wgslsmith_div_vec2_f32(arg_1.d.zw, arg_1.d.zy))))));
    var var_1 = Struct_1(arg_1.a, u_input.b.zxw >> (~max(vec3<u32>(u_input.b.x, 0u, 0u), vec3<u32>(46641u, u_input.c, 4294967295u)) % vec3<u32>(32u)), vec4<bool>(true, !(_wgslsmith_div_f32(arg_1.d.x, var_0.x) < -380f), true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d.x, _wgslsmith_f_op_f32(ceil(-295f)), _wgslsmith_div_f32(var_0.x, -571f), _wgslsmith_f_op_f32(var_0.x * 1058f)) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(arg_1.d)))))));
    var var_2 = abs(~(~firstLeadingBit(arg_0)) ^ -2147483647i);
    var var_3 = ~vec4<u32>(u_input.b.x, 22924u, u_input.b.x, 1u);
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec4<f32> {
    let var_0 = abs(58229u);
    var var_1 = Struct_2(1u);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.x + _wgslsmith_f_op_f32(-arg_0.d.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.d.x))), _wgslsmith_f_op_f32(round(arg_0.d.x)));
    var_1 = Struct_2(0u);
    var_1 = Struct_2(~_wgslsmith_add_u32(u_input.d, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(arg_0.b, arg_0.b), _wgslsmith_sub_vec3_u32(arg_1.b, vec3<u32>(75146u, 25336u, 52405u)))));
    return _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-102f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.d.x + _wgslsmith_f_op_f32(abs(var_2.x))), -1706f), var_2.x, -342f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.x, _wgslsmith_f_op_f32(select(var_2.x, -769f, arg_1.c.x)), _wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(floor(var_2.x))) * arg_1.d))));
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_2 {
    let var_0 = 1i;
    let var_1 = Struct_1(vec2<i32>(58743i, ~arg_1.a.x), _wgslsmith_mult_vec3_u32((_wgslsmith_sub_vec3_u32(u_input.b.zyz, vec3<u32>(arg_1.b.x, arg_1.b.x, 82169u)) ^ vec3<u32>(80510u, 0u, 4294967295u)) ^ reverseBits(arg_1.b), firstTrailingBit(max(u_input.b.xzz, vec3<u32>(4294967295u, u_input.c, arg_1.b.x) & arg_1.b))), arg_1.c, vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d.x * arg_1.d.x) + _wgslsmith_f_op_f32(-arg_1.d.x)))), arg_1.d.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.x) * _wgslsmith_f_op_f32(sign(1063f))), arg_1.d.x)), _wgslsmith_f_op_f32(arg_1.d.x - arg_1.d.x)));
    let var_2 = Struct_2(46333u);
    var var_3 = -1i ^ var_0;
    let var_4 = arg_1.d.x;
    return var_2;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<i32>) -> f32 {
    let var_0 = vec2<i32>(_wgslsmith_mod_i32(~(-arg_3.x), select(select(-23176i, 1i, false) | ~1i, arg_3.x, false)), arg_3.x);
    var var_1 = func_4(true, Struct_1(countOneBits(abs(-var_0)), u_input.b.yxw, vec4<bool>(true, true, true, func_2(-arg_3.x, Struct_1(vec2<i32>(arg_3.x, -2147483647i), vec3<u32>(arg_2.a, 1u, arg_1.a), vec4<bool>(true, false, true, false), vec4<f32>(1799f, -801f, 1328f, 151f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-651f, 569f, 1000f, 1000f), vec4<f32>(249f, -2681f, -1475f, 1022f)), _wgslsmith_f_op_vec4_f32(func_3(global1[_wgslsmith_index_u32(45642u, 19u)], global1[_wgslsmith_index_u32(arg_1.a, 19u)], 0u))))));
    var var_2 = Struct_2(0u);
    let var_3 = Struct_2(123991u);
    global2 = _wgslsmith_add_u32(~0u, _wgslsmith_dot_vec3_u32(countOneBits(countOneBits(~vec3<u32>(0u, arg_1.a, var_3.a))), vec3<u32>(arg_1.a, arg_0.a, countOneBits(~27746u))));
    return -366f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(true, true & !any(vec4<bool>(false, true, false, false))), vec2<bool>(_wgslsmith_clamp_i32(-49881i, -2147483647i, i32(-1i) * -23695i) > _wgslsmith_div_i32(2147483647i, 1i), true), all(vec4<bool>(true, -1044f <= _wgslsmith_f_op_f32(trunc(1878f)), true, true)));
    var var_1 = ~(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, u_input.c, 30692u), u_input.b.wzz, vec3<u32>(507u, u_input.a, 1u)), vec3<u32>(62363u, u_input.b.x, 17615u)) ^ u_input.d) & reverseBits(0u);
    let var_2 = Struct_2(u_input.b.x);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(48098u), var_2, var_2, vec4<i32>(1i, -2147483647i, -2147483647i, 1i)))) - _wgslsmith_f_op_f32(-2449f - 1f)) * _wgslsmith_f_op_f32(trunc(697f))));
    var var_4 = Struct_1(_wgslsmith_add_vec2_i32(~vec2<i32>(1i, 1i), vec2<i32>(-37695i, ~1i)), ~u_input.b.wxw, !vec4<bool>(any(vec3<bool>(var_0.x, var_0.x, false)), !(true && var_0.x), true, false), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(step(var_3, _wgslsmith_f_op_f32(-var_3))), _wgslsmith_f_op_f32(var_3 + var_3), 1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -393f), var_3, var_0.x))), vec4<f32>(var_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(119f + var_3)), -441f, 897f), _wgslsmith_dot_vec2_u32(u_input.b.ww ^ u_input.b.zx, u_input.b.xz) < (14429u >> (u_input.b.x % 32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(select(-var_4.a.x, var_4.a.x, select(any(var_4.c.xw), all(select(vec4<bool>(false, true, var_4.c.x, true), vec4<bool>(var_0.x, false, true, false), false)), true || any(vec3<bool>(var_0.x, var_4.c.x, var_4.c.x)))));
}

