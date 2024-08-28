struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31> = array<bool, 31>(true, true, false, true, true, true, true, false, false, true, false, false, true, true, false, true, true, false, false, false, false, false, false, false, true, true, false, true, true, false, true);

var<private> global1: vec4<i32> = vec4<i32>(2147483647i, 2147483647i, -1i, -9607i);

var<private> global2: array<Struct_3, 23>;

var<private> global3: array<vec3<u32>, 13>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool) -> i32 {
    global0 = array<bool, 31>();
    let var_0 = select(vec3<i32>(_wgslsmith_mult_i32(-u_input.b.x, firstTrailingBit(-6324i)), 1i, -_wgslsmith_sub_i32(-63876i, global1.x)) >> (select(u_input.d, global3[_wgslsmith_index_u32(reverseBits(u_input.d.x), 13u)], !vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 31u)], true, true)) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(reverseBits(~u_input.b.x), -global1.x, min(global1.x, ~u_input.b.x)), vec3<i32>(firstTrailingBit(1i), -1i, _wgslsmith_clamp_i32(u_input.b.x, ~(-10852i), -12384i)), reverseBits(_wgslsmith_clamp_vec3_i32(~vec3<i32>(-29794i, global1.x, 52804i), firstTrailingBit(global1.wwx), firstTrailingBit(global1.yxz)))), !any(select(!vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0), arg_0)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, 540f))) + _wgslsmith_div_vec2_f32(vec2<f32>(-203f, 743f), vec2<f32>(-213f, 107f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(-1507f, -698f, true)), 1169f))));
    global3 = array<vec3<u32>, 13>();
    let var_2 = firstTrailingBit(0u & _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(1u, u_input.d.x, u_input.d.x, u_input.c.x)), firstTrailingBit(0u)));
    return -1i;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<u32>) -> vec3<i32> {
    global0 = array<bool, 31>();
    var var_0 = vec2<bool>(false, _wgslsmith_sub_u32(~1u, _wgslsmith_add_u32(arg_0.x, ~0u)) <= (19996u >> (~select(1u, 0u, global0[_wgslsmith_index_u32(u_input.c.x, 31u)]) % 32u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2063f));
    global1 = countOneBits(vec4<i32>(global1.x, _wgslsmith_mult_i32(-func_3(var_0.x), 0i), _wgslsmith_add_i32(~_wgslsmith_div_i32(-39168i, u_input.b.x), _wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b, global0[_wgslsmith_index_u32(57698u, 31u)]), vec2<i32>(u_input.b.x, -1i))), ~u_input.b.x));
    global2 = array<Struct_3, 23>();
    return _wgslsmith_add_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(~(-1i), u_input.b.x, 2147483647i), ~(global1.yzy ^ vec3<i32>(-32713i, -30943i, u_input.b.x)), global1.wwz), firstTrailingBit(abs(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-41947i, -39342i, u_input.b.x), vec3<i32>(global1.x, u_input.b.x, global1.x), vec3<i32>(-1i, global1.x, 1i)), abs(vec3<i32>(-24693i, -2147483647i, -1i))))));
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: bool, arg_3: vec2<i32>) -> vec3<u32> {
    global2 = array<Struct_3, 23>();
    var var_0 = func_2(~vec3<u32>(35039u, u_input.c.x, arg_1.a) ^ countOneBits(vec3<u32>(1u, arg_1.a, ~49920u)), min(vec3<u32>(arg_1.a, 4294967295u & u_input.a, arg_1.a), _wgslsmith_clamp_vec3_u32(global3[_wgslsmith_index_u32(u_input.c.x, 13u)], vec3<u32>(19643u, 1u, 44629u), vec3<u32>(arg_1.a, 5076u, 83827u) << (vec3<u32>(u_input.c.x, 4294967295u, u_input.d.x) % vec3<u32>(32u)))) & abs(vec3<u32>(~arg_1.a, reverseBits(arg_1.a), 23297u)));
    global0 = array<bool, 31>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(780f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -924f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -436f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(885f))))))), -650f);
    var var_2 = Struct_3(select(abs(4294967295u), _wgslsmith_dot_vec4_u32(~(~u_input.c), countOneBits(u_input.c)), any(select(vec2<bool>(false, false), !vec2<bool>(true, arg_2), !arg_2))));
    return vec3<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(arg_1.a, 0u) | countOneBits(94252u), u_input.a), ~10764u >> (var_2.a % 32u)), ~abs(~abs(arg_1.a)), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, -(u_input.b.x & 7770i), global1.x, global1.x), -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, 1i, -2147483647i, 0i), ~vec4<i32>(u_input.b.x, global1.x, 6453i, u_input.b.x))) >> (select(vec4<u32>(_wgslsmith_dot_vec3_u32(func_1(u_input.b.x, Struct_3(0u), global0[_wgslsmith_index_u32(65548u, 31u)], vec2<i32>(global1.x, u_input.b.x)), _wgslsmith_clamp_vec3_u32(global3[_wgslsmith_index_u32(4294967295u, 13u)], global3[_wgslsmith_index_u32(u_input.a, 13u)], global3[_wgslsmith_index_u32(24784u, 13u)])), u_input.c.x, ~(u_input.a & u_input.c.x), ~u_input.c.x), _wgslsmith_clamp_vec4_u32(u_input.c, u_input.c >> (_wgslsmith_add_vec4_u32(u_input.c, u_input.c) % vec4<u32>(32u)), ~(vec4<u32>(u_input.d.x, u_input.a, 1u, u_input.d.x) >> (vec4<u32>(u_input.c.x, u_input.c.x, u_input.a, u_input.d.x) % vec4<u32>(32u)))), vec4<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 31u)], global0[_wgslsmith_index_u32(1u, 31u)])) || false, true, true, all(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 31u)], global0[_wgslsmith_index_u32(12190u, 31u)])))) % vec4<u32>(32u));
    let var_0 = u_input.d.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-117f, 1098f, -221f) * vec3<f32>(-1000f, 456f, -769f)), vec3<f32>(1f, 1f, 1f), vec3<bool>(global0[_wgslsmith_index_u32(~1u, 31u)], true, !global0[_wgslsmith_index_u32(56693u, 31u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + vec3<f32>(1068f, 1719f, -231f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1136f, -820f, 194f)))));
    var var_2 = Struct_3(func_1(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(global1.zw, u_input.b), select(firstLeadingBit(-20409i), abs(-15087i), global0[_wgslsmith_index_u32(~7028u, 31u)])), Struct_3(u_input.a), !(global1.x != (global1.x << (14782u % 32u))), ~u_input.b).x);
    var var_3 = ~var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(82354u, select(~vec4<u32>(var_2.a, ~4294967295u, 9233u, var_2.a & 82277u), u_input.c, true));
}

