struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(440f, 1704f, 639f);

var<private> global1: bool;

var<private> global2: array<bool, 26> = array<bool, 26>(true, true, false, true, false, false, true, true, true, false, true, false, true, true, false, false, true, false, false, false, false, false, true, true, false, true);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_4) -> u32 {
    var var_0 = min(arg_0.b.b, _wgslsmith_mult_i32(reverseBits(-16643i), _wgslsmith_dot_vec4_i32(abs(-vec4<i32>(0i, u_input.a, 66751i, arg_0.a.x)), vec4<i32>(_wgslsmith_add_i32(-50417i, u_input.a), -1i, i32(-1i) * -23577i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -2147483647i, arg_0.a.x), arg_0.a)))));
    var var_1 = Struct_3(-17933i, u_input.c | _wgslsmith_mult_vec4_u32(u_input.c, ~max(vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, u_input.d.x), u_input.c)), ~_wgslsmith_add_i32(countOneBits(reverseBits(29247i)), -_wgslsmith_mult_i32(u_input.a, 0i)), 0u);
    let var_2 = vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 1u), 26u)], all(vec2<bool>((653f <= arg_0.b.c) | true, all(vec2<bool>(arg_0.c, arg_0.c)) && (arg_0.a.x >= var_1.c))));
    var var_3 = vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 26u)], select(global2[_wgslsmith_index_u32(firstTrailingBit(~(~24322u)), 26u)], false, true));
    global1 = var_2.x;
    return _wgslsmith_div_u32(46321u, ~(~abs(var_1.b.x)));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(func_3(Struct_4(-vec3<i32>(u_input.a, 2147483647i, 8936i), Struct_1(vec3<f32>(251f, global0.x, -752f), u_input.a, 110f), true, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.d.x, 1u, u_input.d.x), u_input.c), Struct_1(vec3<f32>(global0.x, -192f, global0.x), 41417i, -1000f))), u_input.b.x));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(max(-2447f, global0.x)), _wgslsmith_f_op_f32(global0.x - 2625f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-606f, global0.x, -185f) * vec3<f32>(-1137f, 484f, 2131f)))), vec3<f32>(global0.x, global0.x, -350f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1055f * global0.x), -175f, _wgslsmith_f_op_f32(global0.x - 469f)))));
    let var_1 = select(~_wgslsmith_sub_vec3_u32(u_input.c.xyw, ~(u_input.c.wwz | vec3<u32>(u_input.c.x, var_0.x, var_0.x))), u_input.d, select(vec3<bool>(422f == global0.x, select(true, select(false, false, global2[_wgslsmith_index_u32(27282u, 26u)]), true), global2[_wgslsmith_index_u32(var_0.x, 26u)]), select(!(!vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.c.x, 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)])), vec3<bool>(false, global2[_wgslsmith_index_u32(var_0.x, 26u)], !global2[_wgslsmith_index_u32(55160u, 26u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 26u)], true, global2[_wgslsmith_index_u32(4294967295u, 26u)]), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 26u)], true, global2[_wgslsmith_index_u32(u_input.b.x, 26u)]), select(vec3<bool>(false, false, true), vec3<bool>(false, false, global2[_wgslsmith_index_u32(u_input.b.x, 26u)]), true))), global2[_wgslsmith_index_u32(u_input.d.x, 26u)]));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(global0.x, -1000f), _wgslsmith_div_f32(-2024f, global0.x)) * vec3<f32>(-104f, _wgslsmith_f_op_f32(round(global0.x)), global0.x)), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-32338i, u_input.a, u_input.a, u_input.a)), max(firstLeadingBit(vec4<i32>(47504i, 0i, u_input.e.x, 2147483647i)), ~vec4<i32>(-1i, u_input.e.x, u_input.a, u_input.e.x))), global0.x), -1000f, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.x * -350f), _wgslsmith_f_op_f32(global0.x * global0.x))), _wgslsmith_f_op_f32(158f - global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.x, global0.x)) * _wgslsmith_f_op_f32(round(608f)))), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(0i, 1i), vec2<i32>(8632i, u_input.e.x)), _wgslsmith_add_i32(u_input.a >> (var_1.x % 32u), u_input.e.x)), -620f), -2147483647i << (_wgslsmith_dot_vec2_u32(var_1.xx | vec2<u32>(1u, 101220u), vec2<u32>(_wgslsmith_clamp_u32(var_1.x, 6710u, var_0.x), 1u)) % 32u));
    let var_3 = 23154i;
    return var_2;
}

fn func_1() -> Struct_2 {
    global1 = all(select(vec4<bool>(_wgslsmith_f_op_f32(floor(global0.x)) == _wgslsmith_div_f32(-716f, global0.x), global2[_wgslsmith_index_u32(~u_input.d.x, 26u)], false, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 26360u, u_input.c.x, 19519u), vec4<u32>(u_input.d.x, 65595u, 2544u, 0u)), 26u)] & false), !(!vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 26u)], global2[_wgslsmith_index_u32(u_input.c.x, 26u)], true)), vec4<bool>(!(!global2[_wgslsmith_index_u32(u_input.b.x, 26u)]), !select(global2[_wgslsmith_index_u32(u_input.c.x, 26u)], false, global2[_wgslsmith_index_u32(13474u, 26u)]), all(select(vec2<bool>(false, false), vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 26u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 26u)]))), ~u_input.b.x <= _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 0u), u_input.d))));
    var var_0 = _wgslsmith_sub_vec4_i32(-vec4<i32>(~u_input.a, 0i, -21655i, ~u_input.a ^ -u_input.e.x), -(~firstLeadingBit(max(vec4<i32>(u_input.a, -49227i, u_input.e.x, 1i), vec4<i32>(u_input.a, 2147483647i, u_input.e.x, u_input.a)))));
    global2 = array<bool, 26>();
    var_0 = -vec4<i32>(u_input.e.x, -((1i & u_input.e.x) << (_wgslsmith_mult_u32(u_input.b.x, u_input.c.x) % 32u)), _wgslsmith_mult_i32((28694i ^ u_input.e.x) | (2147483647i << (u_input.d.x % 32u)), countOneBits(~53537i)), -(var_0.x | var_0.x));
    global1 = global2[_wgslsmith_index_u32(13585u, 26u)];
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-824f + global0.x)));
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(min(_wgslsmith_mod_u32(u_input.b.x, 1u), ~7580u), u_input.d.x), 26u)];
    var var_1 = func_1();
    var var_2 = 265f;
    global0 = _wgslsmith_div_vec3_f32(func_2().c.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-679f, 653f, var_0))), _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, -1000f), vec3<f32>(735f, global0.x, var_0)))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(var_1.c.a, vec3<f32>(var_0, -835f, -469f), vec3<bool>(global2[_wgslsmith_index_u32(0u, 26u)], true, true)))))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.c.c, _wgslsmith_f_op_f32(round(-191f)), _wgslsmith_div_f32(1854f, 1074f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(global0.x, 1236f, false)), _wgslsmith_add_vec2_i32(-u_input.e, vec2<i32>(~(-15985i), var_1.a.b)), 292f, vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_0, global0.x)))))), 1587f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1730f, _wgslsmith_div_f32(1569f, 745f), true))))));
}

