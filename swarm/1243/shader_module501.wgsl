struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<u32>;

var<private> global2: array<f32, 28>;

var<private> global3: vec3<bool>;

var<private> global4: u32 = 4294967295u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec4<i32> {
    global1 = vec3<u32>(u_input.d, u_input.e, ~(~global1.x));
    var var_0 = ~u_input.a.x;
    var var_1 = Struct_3(Struct_2(!any(vec2<bool>(global3.x, global3.x)) & true, vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 28u)]), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1715f), -207f)))), _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.e, u_input.d), vec3<u32>(global1.x, global1.x, 4294967295u)) | ~u_input.b, ~global1.x), 28u)])), _wgslsmith_div_u32(_wgslsmith_clamp_u32(abs(firstTrailingBit(34059u)), _wgslsmith_mod_u32(global1.x, global1.x), ~countOneBits(global1.x)), _wgslsmith_mod_u32(~_wgslsmith_div_u32(u_input.d, global1.x), ~global1.x)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(784f, var_1.a.b.x, -1000f, var_1.b)))))));
    var_0 = u_input.a.x;
    return vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.a, _wgslsmith_mod_vec4_i32(~vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, 0i), reverseBits(u_input.a))), u_input.c.x, 2147483647i, u_input.a.x);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1205f * _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(u_input.d, 28u)]))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.e, 28u)])), global2[_wgslsmith_index_u32(~min(u_input.b, select(u_input.d, global1.x, global3.x)), 28u)], _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(abs(countOneBits(82117u)), 28u)]))), vec3<i32>(u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.c.x, 1i, u_input.c.x), func_3()) & -9093i, ~u_input.a.x));
    global1 = ~vec3<u32>(~_wgslsmith_mult_u32(_wgslsmith_add_u32(23191u, 58412u), u_input.b), ~_wgslsmith_dot_vec2_u32(min(vec2<u32>(1u, 8650u), global1.zz), vec2<u32>(global1.x, global1.x)), _wgslsmith_add_u32(global1.x, global1.x));
    var var_1 = u_input.c.x;
    let var_2 = global3.xy;
    global2 = array<f32, 28>();
    return Struct_2(false, vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mult_u32(global1.x, global1.x)), 28u)]))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = ~(~firstTrailingBit(_wgslsmith_sub_u32(arg_0.x, firstLeadingBit(34483u))));
    var var_2 = (i32(-1i) * -u_input.c.x) << (max(~_wgslsmith_dot_vec4_u32(select(vec4<u32>(9035u, u_input.d, 1u, 59367u), vec4<u32>(arg_0.x, global1.x, 4294967295u, global1.x), vec4<bool>(var_0.a, var_0.a, true, global3.x)), ~vec4<u32>(global1.x, u_input.b, 0u, u_input.d)), ~u_input.e) % 32u);
    var var_3 = max(_wgslsmith_div_vec4_i32(u_input.a, func_3()) ^ firstTrailingBit(~(~u_input.a)), ~(_wgslsmith_div_vec4_i32(~u_input.a, u_input.a) << (vec4<u32>(23508u | global1.x, _wgslsmith_mod_u32(global1.x, 4294967295u), _wgslsmith_dot_vec3_u32(arg_0, arg_0), min(arg_0.x, global1.x)) % vec4<u32>(32u))));
    var var_4 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b.x)))) != 1166f, all(select(!(!vec4<bool>(true, true, false, global3.x)), vec4<bool>(var_0.a, any(vec3<bool>(global3.x, global3.x, global3.x)), 1000f > global2[_wgslsmith_index_u32(23529u, 28u)], any(vec4<bool>(true, true, global3.x, false))), !func_2().a)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.x), -566f, _wgslsmith_f_op_f32(ceil(var_0.b.x))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.b, 28u)], global2[_wgslsmith_index_u32(u_input.e, 28u)], 357f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-744f, 1027f, arg_1.x)))))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(264f, var_0.b.x, var_0.b.x))))), abs(~vec3<i32>(u_input.a.x, u_input.a.x, 30399i) & var_3.wxy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 28u)] * global2[_wgslsmith_index_u32(0u, 28u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -161f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1.x, 28u)]) - _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(0u, 28u)], -204f))))), _wgslsmith_add_vec3_i32(vec3<i32>(-u_input.a.x, 0i, u_input.c.x), reverseBits(u_input.a.zyz) | vec3<i32>(2929i, 2400i, 1i)) << (vec3<u32>(~global1.x, min(1u, ~13539u), 11550u) % vec3<u32>(32u)));
    var var_1 = func_1(vec3<u32>(global1.x, ~78394u, u_input.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a.yy) - var_0.a.xx));
    var_0 = func_1(~(~vec3<u32>(_wgslsmith_sub_u32(75468u, u_input.b), 4294967295u, ~global1.x)), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -839f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1405f)) + _wgslsmith_f_op_f32(exp2(var_1.a.x)))));
    let var_2 = Struct_2(var_0.b.x <= _wgslsmith_mod_i32(~abs(0i), i32(-1i) * -2147483647i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.yy)));
    var var_3 = Struct_3(func_2(), _wgslsmith_f_op_f32(select(115f, 1000f, false)), global1.x);
    var var_4 = 63175u;
    var var_5 = Struct_2(all(vec4<bool>(!func_2().a, true, true, all(vec3<bool>(global3.x, true, var_3.a.a)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(var_1.a.x)), var_0.a.x) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-103f))), -1343f)));
    let var_6 = Struct_1(var_1.a, vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), 37061i, var_1.b.x));
    var var_7 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(1u, ~var_3.c & ~global1.x, 1u), _wgslsmith_div_i32(-(~var_0.b.x), -abs(firstLeadingBit(-7763i))), _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.b.x, _wgslsmith_mod_i32(firstLeadingBit(1i), func_1(vec3<u32>(var_3.c, 48319u, 1u), vec2<f32>(719f, global2[_wgslsmith_index_u32(global1.x, 28u)])).b.x)), vec2<i32>(u_input.a.x, abs(~1i))), var_2.b.x);
}

