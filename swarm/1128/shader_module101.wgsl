struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: vec4<f32>,
    d: i32,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(416f, -1387f, 1370f, -400f);

var<private> global1: Struct_4 = Struct_4(true, true, vec4<f32>(-1202f, -970f, -625f, 1644f), -50781i, Struct_3(vec2<f32>(-1180f, -1166f), 358f));

var<private> global2: array<vec2<bool>, 5>;

var<private> global3: bool;

var<private> global4: array<bool, 19>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_4) -> f32 {
    global2 = array<vec2<bool>, 5>();
    global3 = true | any(!(!(!vec2<bool>(true, arg_3.b))));
    let var_0 = Struct_2(-894f, ~_wgslsmith_mod_vec4_u32(u_input.a, ~vec4<u32>(83134u, arg_1.c.x, 1u, arg_1.b)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(arg_0.c * vec4<f32>(arg_0.c.x, -570f, 1034f, global1.e.a.x))))))));
    let var_1 = u_input.b;
    let var_2 = vec3<i32>(i32(-1i) * -2147483647i, -arg_1.a, ~select(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.d, global1.d, arg_1.a), vec3<i32>(arg_3.d, global1.d, arg_3.d)), -arg_3.d), _wgslsmith_mult_i32(2147483647i, u_input.b), true));
    return arg_3.e.b;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<f32>) -> Struct_4 {
    let var_0 = Struct_5(global1.e, u_input.a, Struct_2(-349f, u_input.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + arg_1.x) + arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.c.x))), _wgslsmith_f_op_f32(func_3(Struct_2(arg_1.x, vec4<u32>(1u, 51473u, 126395u, u_input.a.x), global1.c), Struct_1(global1.d, 0u, u_input.a.yy), Struct_3(vec2<f32>(-486f, arg_0.x), arg_0.x), Struct_4(global4[_wgslsmith_index_u32(0u, 19u)], global1.b, vec4<f32>(arg_0.x, global1.c.x, -503f, 1000f), global1.d, Struct_3(vec2<f32>(arg_0.x, arg_1.x), 472f)))))));
    var var_1 = !select(select(vec3<bool>(21605u < var_0.c.b.x, true, global1.a), vec3<bool>(true, true, !global4[_wgslsmith_index_u32(var_0.c.b.x, 19u)]), vec3<bool>(!global1.b, global1.a, true)), vec3<bool>(!global1.b, global1.a, global4[_wgslsmith_index_u32(~u_input.a.x, 19u)]), select(!(!vec3<bool>(true, global1.a, false)), select(!vec3<bool>(global1.b, false, global4[_wgslsmith_index_u32(var_0.b.x, 19u)]), vec3<bool>(global4[_wgslsmith_index_u32(var_0.b.x, 19u)], true, global4[_wgslsmith_index_u32(var_0.c.b.x, 19u)]), true), vec3<bool>(global4[_wgslsmith_index_u32(var_0.b.x, 19u)], true, true)));
    var var_2 = 10683u;
    var var_3 = Struct_1(_wgslsmith_mult_i32(reverseBits(select(-2147483647i, 56903i, all(global2[_wgslsmith_index_u32(u_input.c, 5u)]))), _wgslsmith_sub_i32(-26219i, 1i)), ~_wgslsmith_sub_u32(_wgslsmith_add_u32(max(0u, var_0.b.x), 1u), 25175u), select(vec2<u32>(u_input.c, _wgslsmith_clamp_u32(u_input.a.x, 4294967295u, 4294967295u)), ~(~u_input.a.yz), global2[_wgslsmith_index_u32(~firstTrailingBit(69927u), 5u)]) & var_0.b.zy);
    var var_4 = var_0.a;
    return Struct_4(all(vec4<bool>(true, var_1.x, global1.e.b != _wgslsmith_f_op_f32(346f + var_4.b), var_1.x)), all(vec3<bool>(global1.b, any(vec4<bool>(global1.a, false, global4[_wgslsmith_index_u32(54925u, 19u)], false)), u_input.c >= 73079u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(global1.c))))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(485f, 105f, -306f, -1104f)))))), ~_wgslsmith_mult_i32(~(global1.d ^ 6922i), global1.d), var_0.a);
}

fn func_1(arg_0: f32) -> bool {
    var var_0 = func_2(global1.e.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), -1463f));
    let var_1 = Struct_1(abs(2147483647i), _wgslsmith_mult_u32(select(u_input.c | reverseBits(u_input.c), ~u_input.a.x ^ ~u_input.c, true), ~(~0u)), u_input.a.ww);
    var var_2 = global1.e.b;
    let var_3 = global1.e;
    var var_4 = _wgslsmith_f_op_vec4_f32(-global1.c);
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<bool, 19>();
    var var_0 = vec3<bool>(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.e.a.x, global0.x))) + global1.e.a.x)), any(!(!vec3<bool>(global1.b, false, global4[_wgslsmith_index_u32(u_input.a.x, 19u)]))), false);
    global3 = false;
    let var_1 = max(vec4<u32>(u_input.a.x, 2034u, 4294967295u, ~_wgslsmith_clamp_u32(1u, ~u_input.c, u_input.c)), vec4<u32>(~u_input.a.x & _wgslsmith_div_u32(u_input.c, u_input.a.x), min(1u, _wgslsmith_mult_u32(0u, 4294967295u)), _wgslsmith_mult_u32(select(24469u, 80703u, global1.b), u_input.c), _wgslsmith_sub_u32(u_input.c, u_input.c)) << (countOneBits(vec4<u32>(~4294967295u, 25577u, reverseBits(1u), 1u)) % vec4<u32>(32u)));
    let var_2 = global1.d;
    let var_3 = global1.e;
    let var_4 = vec4<f32>(global0.x, var_3.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b))), _wgslsmith_f_op_f32(-var_3.b), all(!vec4<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 19u)], global4[_wgslsmith_index_u32(u_input.c, 19u)], global4[_wgslsmith_index_u32(var_1.x, 19u)], var_0.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -581f))), 740f)))));
    var var_5 = Struct_5(Struct_3(global0.zy, var_4.x), u_input.a, Struct_2(_wgslsmith_div_f32(1060f, -122f), firstTrailingBit(vec4<u32>(select(var_1.x, 3294u, global1.b), 1u, var_1.x, ~4294967295u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.x, var_4.x, 458f, -138f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-921f, var_4.x, 1000f, 1187f) * vec4<f32>(2470f, global0.x, var_3.a.x, global0.x))) * _wgslsmith_f_op_vec4_f32(var_4 + _wgslsmith_f_op_vec4_f32(var_4 - vec4<f32>(global1.c.x, global0.x, var_4.x, -1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a.b, _wgslsmith_f_op_vec3_f32(var_5.c.c.xyz + global0.yzx));
}

