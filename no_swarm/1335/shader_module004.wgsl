struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec3<u32>,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: vec2<u32>,
    d: vec4<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(-376f, -125f, -564f, -490f), vec4<f32>(437f, 108f, -303f, 1540f), vec4<f32>(-706f, 1538f, 1421f, -1285f), vec4<f32>(-1000f, -840f, -197f, -945f), vec4<f32>(808f, -318f, 318f, -792f), vec4<f32>(1000f, 617f, 2570f, -328f), vec4<f32>(-150f, 1472f, 461f, -655f), vec4<f32>(270f, 2420f, 521f, 694f));

var<private> global1: Struct_4;

var<private> global2: array<Struct_1, 1>;

var<private> global3: vec4<u32> = vec4<u32>(4294967295u, 0u, 1u, 17121u);

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: u32) -> vec4<bool> {
    let var_0 = vec4<u32>(4294967295u, ~(~_wgslsmith_add_u32(abs(arg_0), _wgslsmith_add_u32(17163u, global3.x))), ~global1.b.a, _wgslsmith_dot_vec3_u32(min(vec3<u32>(0u, ~11070u, ~global3.x), vec3<u32>(global1.b.a, global3.x, global3.x) | ~vec3<u32>(1u, 109819u, 34517u)), global3.xwz));
    var var_1 = Struct_3(Struct_2(global1.a, vec4<i32>(_wgslsmith_sub_i32(-global4.e, -2147483647i), abs(_wgslsmith_mult_i32(global4.e, global1.a.x)), firstLeadingBit(reverseBits(global4.e)), global1.b.e)), ~(~global3.x), vec3<u32>(firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(var_0.ywx, vec3<u32>(var_0.x, 10282u, 1u)), ~2611u)), 44677u, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.b.a, var_0.x, arg_0, arg_0), var_0))), Struct_1(0u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(137f, _wgslsmith_f_op_f32(-global1.b.b.x), _wgslsmith_f_op_f32(global4.c.x * global1.b.b.x), 183f)), vec4<f32>(global1.b.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.b.b.x - 419f), -365f), _wgslsmith_f_op_f32(abs(global4.c.x)), global1.b.c.x), true, firstTrailingBit(0i)), !global1.b.d);
    global1 = Struct_4(abs(-var_1.a.b), global2[_wgslsmith_index_u32(234u, 1u)]);
    var_1 = Struct_3(var_1.a, global4.a, _wgslsmith_sub_vec3_u32(var_0.zxy, _wgslsmith_mod_vec3_u32(~firstLeadingBit(global3.zww), global3.yzw)), global1.b, true);
    let var_2 = var_0;
    return !vec4<bool>(global1.b.d, any(vec3<bool>(true, true, true)), true, false);
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: vec2<u32>, arg_3: vec4<u32>) -> bool {
    var var_0 = arg_3;
    global1 = Struct_4(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.x, -38456i, 1i), vec3<i32>(global1.a.x, -1i, arg_0.x)), ~2147483647i), -20766i, global1.a.x, 0i), Struct_1(~95603u, _wgslsmith_f_op_vec4_f32(abs(global1.b.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(115f, -1130f, global4.c.x, -1024f), global1.b.c)))), all(func_3(min(var_0.x, arg_3.x))), global1.b.e));
    global0 = array<vec4<f32>, 8>();
    global4 = Struct_1(~_wgslsmith_add_u32(~firstLeadingBit(4294967295u), ~abs(global1.b.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global4.c) * global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1.b.a, 52933u), 8u)])))), global0[_wgslsmith_index_u32(arg_3.x, 8u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-382f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1, global1.b.c.x, global4.d)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.b.b.x)))), _wgslsmith_add_i32(-arg_0.x, -40111i));
    let var_1 = Struct_4(vec4<i32>(1i, -29633i >> (~max(global4.a, arg_3.x) % 32u), -18779i, _wgslsmith_mod_i32(firstLeadingBit(-1i), -2147483647i) << (_wgslsmith_mult_u32(var_0.x, u_input.c.x) % 32u)), Struct_1(min(44234u, _wgslsmith_mod_u32(2238u, arg_2.x) ^ (arg_3.x | global1.b.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.b.c) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global4.c.x, global4.b.x, -280f))) + vec4<f32>(_wgslsmith_f_op_f32(round(-1326f)), _wgslsmith_f_op_f32(select(global4.b.x, global1.b.c.x, true)), global4.c.x, _wgslsmith_f_op_f32(arg_1 * global4.c.x))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(global1.b.c, vec4<f32>(global1.b.c.x, arg_1, -2007f, global4.b.x), global4.d)), vec4<f32>(1161f, global4.b.x, 315f, _wgslsmith_f_op_f32(826f * arg_1)))), false, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(arg_0, -vec3<i32>(0i, 0i, global4.e)), select(arg_0, abs(global1.a.xyy), !global4.d))));
    return true;
}

fn func_1(arg_0: bool) -> StorageBuffer {
    var var_0 = Struct_4(vec4<i32>(global1.b.e, -7175i, global4.e, -1i), Struct_1(~min(global3.x, ~global3.x), _wgslsmith_div_vec4_f32(global1.b.c, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -370f), _wgslsmith_f_op_f32(global4.b.x - global1.b.c.x), _wgslsmith_f_op_f32(-global1.b.b.x), global1.b.c.x)), _wgslsmith_f_op_vec4_f32(global1.b.b + global1.b.b), true, _wgslsmith_div_i32(~global4.e, 2147483647i)));
    global1 = Struct_4(global1.a, global2[_wgslsmith_index_u32(~0u, 1u)]);
    let var_1 = u_input.c;
    let var_2 = !vec4<bool>(func_2(var_0.a.wxx & vec3<i32>(global1.b.e, var_0.b.e, -2147483647i), _wgslsmith_f_op_f32(global4.c.x - _wgslsmith_f_op_f32(-var_0.b.b.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(global3.x, 46242u) << (u_input.c % vec2<u32>(32u)), var_1), _wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(32136u, 1u, 21119u, 0u)), vec4<u32>(global1.b.a, 4294967295u, u_input.a, 4294967295u))), true || !all(vec2<bool>(arg_0, true)), var_0.b.d, false);
    let var_3 = global4.e;
    return StorageBuffer(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(~u_input.c << (~var_1 % vec2<u32>(32u)), vec2<u32>(global3.x, ~global1.b.a)), _wgslsmith_mult_vec2_u32(select(countOneBits(vec2<u32>(109353u, u_input.b)), reverseBits(vec2<u32>(37005u, 70755u)), true), vec2<u32>(global3.x >> (global4.a % 32u), 1u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.c.x, global4.c.x, global1.b.b.x) * var_0.b.c.yzw)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-241f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(634f * 953f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global4.c.x, global1.b.c.x)) + _wgslsmith_f_op_f32(step(global1.b.b.x, 885f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.b.x * var_0.b.b.x)), select(global4.d, var_2.x, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 1>();
    let var_0 = Struct_2(vec4<i32>(25467i, abs(i32(-1i) * -global1.a.x), 0i, global1.a.x), ((firstTrailingBit(global1.a) | vec4<i32>(-2147483647i, -2147483647i, global4.e, 34110i)) ^ global1.a) ^ _wgslsmith_clamp_vec4_i32(select(select(vec4<i32>(13952i, global4.e, global4.e, 2147483647i), vec4<i32>(global1.b.e, -2147483647i, 0i, -31590i), vec4<bool>(global4.d, global1.b.d, false, true)), vec4<i32>(-2147483647i, 0i, global4.e, global1.a.x), !vec4<bool>(global1.b.d, global4.d, global4.d, global1.b.d)), global1.a >> (vec4<u32>(5987u, global3.x, 51804u, 1u) % vec4<u32>(32u)), reverseBits(_wgslsmith_div_vec4_i32(global1.a, global1.a))));
    var var_1 = ~_wgslsmith_div_vec4_u32(~select(vec4<u32>(1u, global1.b.a, global4.a, u_input.c.x), vec4<u32>(global3.x, u_input.b, 0u, 1u), vec4<bool>(global4.d, global4.d, true, true)) >> (~(vec4<u32>(42550u, global3.x, 88761u, 48967u) << (vec4<u32>(global4.a, u_input.a, 1u, 103834u) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, global4.a, 43447u, u_input.a), vec4<u32>(4294967295u, 91870u, global4.a, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(global3.x, u_input.b, 4294967295u, 0u), vec4<u32>(17669u, global3.x, 4294967295u, u_input.a))) << (~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, global3.x, global3.x, global1.b.a), vec4<u32>(u_input.b, 0u, 15275u, 0u)) % vec4<u32>(32u)));
    global4 = global2[_wgslsmith_index_u32(~global1.b.a, 1u)];
    global2 = array<Struct_1, 1>();
    let var_2 = 44179u;
    let x = u_input.a;
    s_output = func_1(false);
}

