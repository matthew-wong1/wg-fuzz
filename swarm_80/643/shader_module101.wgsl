struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: bool,
    d: vec3<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
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

var<private> global0: array<i32, 28>;

var<private> global1: Struct_2 = Struct_2(10928i, Struct_1(vec3<f32>(-747f, -660f, -1587f), true));

var<private> global2: array<bool, 20> = array<bool, 20>(false, false, true, true, false, false, true, false, true, false, false, true, false, false, false, true, true, true, true, true);

var<private> global3: array<vec4<i32>, 27>;

var<private> global4: array<bool, 4>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2(arg_0: vec3<i32>) -> Struct_4 {
    let var_0 = global1.b.a.x;
    global4 = array<bool, 4>();
    var var_1 = vec2<i32>(-1i, global1.a);
    global4 = array<bool, 4>();
    var var_2 = ~vec2<i32>(_wgslsmith_add_i32(i32(-1i) * -2147483647i, _wgslsmith_mult_i32(u_input.a.x | -9409i, ~global0[_wgslsmith_index_u32(0u, 28u)])), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, -global1.a, 0i), _wgslsmith_mod_vec3_i32(select(vec3<i32>(-2147483647i, -2147483647i, 36880i), arg_0, vec3<bool>(global1.b.b, false, false)), max(arg_0, vec3<i32>(-2147483647i, -1i, global0[_wgslsmith_index_u32(6159u, 28u)])))));
    return Struct_4(Struct_2(-_wgslsmith_add_i32(59259i, var_2.x), global1.b), abs(_wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(var_1.x, -2147483647i, 16789i), vec3<i32>(11434i, -6i, var_1.x))), vec3<i32>(-var_2.x, -arg_0.x, -2147483647i))), global4[_wgslsmith_index_u32(1u, 4u)], !select(select(select(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.d.x, 20u)], true), vec3<bool>(false, false, false), global2[_wgslsmith_index_u32(u_input.c.x, 20u)]), !vec3<bool>(global2[_wgslsmith_index_u32(0u, 20u)], true, true), global1.b.a.x > global1.b.a.x), select(vec3<bool>(true, true, true), vec3<bool>(global4[_wgslsmith_index_u32(u_input.d.x, 4u)], true, false), false), true));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: bool) -> u32 {
    var var_0 = all(vec4<bool>(true, ((u_input.a.x == global0[_wgslsmith_index_u32(arg_1.b, 28u)]) | true) || arg_1.a.x, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, arg_1.b, select(u_input.d.x, arg_1.b, global4[_wgslsmith_index_u32(93835u, 4u)])) | 1u, 20u)], false));
    var_0 = arg_1.e.b;
    var var_1 = Struct_4(func_2(_wgslsmith_clamp_vec3_i32(countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i), arg_1.d)), max(arg_1.c | arg_1.c, _wgslsmith_sub_vec3_i32(arg_1.d, vec3<i32>(global0[_wgslsmith_index_u32(arg_1.b, 28u)], global0[_wgslsmith_index_u32(u_input.d.x, 28u)], -1i))), -vec3<i32>(global0[_wgslsmith_index_u32(arg_0.x, 28u)], -61032i, 15218i) >> (_wgslsmith_mult_vec3_u32(u_input.c, vec3<u32>(u_input.d.x, 1u, arg_1.b)) % vec3<u32>(32u)))).a, arg_1.c.x, false, vec3<bool>(all(arg_1.a.zxx), arg_2, any(arg_1.a.ww)));
    let var_2 = arg_1.a.ywx;
    let var_3 = arg_1.b | 42213u;
    return 1u;
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: i32, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = arg_1;
    let var_1 = Struct_2(~arg_1.a.a, global1.b);
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 1000f))));
    global1 = Struct_2(global0[_wgslsmith_index_u32(countOneBits(0u), 28u)], Struct_1(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.b.a.x - var_1.b.a.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(855f, arg_1.a.b.a.x) + _wgslsmith_f_op_f32(select(1357f, 141f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.b.a.x)))), global4[_wgslsmith_index_u32(~abs(~u_input.c.x), 4u)]));
    return var_1;
}

fn func_1() -> vec2<i32> {
    global4 = array<bool, 4>();
    let var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(447f + -1000f)), func_2(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 28u)], global1.a, 8945i)), u_input.a.x, ~vec4<u32>(min(func_3(vec3<u32>(1u, u_input.c.x, u_input.c.x), Struct_5(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 20u)], global1.b.b, false, false), u_input.c.x, vec3<i32>(global1.a, global1.a, 1i), vec3<i32>(global0[_wgslsmith_index_u32(0u, 28u)], u_input.b.x, 25954i), global1.b), false), 0u), ~(5727u ^ u_input.d.x), u_input.c.x, u_input.d.x));
    global0 = array<i32, 28>();
    var var_1 = Struct_3(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global1.b.a.x, _wgslsmith_f_op_f32(895f * -308f), true)), global1.b.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-690f - -872f) - -199f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.a.x - -1045f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(738f, 471f))))), func_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(428f - -1246f), global1.b.a.x)), func_2(vec3<i32>(-1i) * -vec3<i32>(16954i, 13230i, 2147483647i)), 1i, vec4<u32>(~reverseBits(1u), 0u, 76163u, 4294967295u)).b, vec2<f32>(var_0.b.a.x, _wgslsmith_f_op_f32(1f * var_0.b.a.x)));
    global4 = array<bool, 4>();
    return abs(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-2147483647i, global1.a), -29817i), -vec2<i32>(1i, 2147483647i)), -select(vec2<i32>(var_0.a, 16325i), u_input.b, global1.b.b) | u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b.a)), global1.b.a));
    global4 = array<bool, 4>();
    var var_1 = func_1();
    var var_2 = vec2<bool>(global2[_wgslsmith_index_u32(~firstTrailingBit(abs(0u ^ u_input.d.x)), 20u)], !any(select(select(vec4<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 4u)], false, global2[_wgslsmith_index_u32(u_input.c.x, 20u)], global1.b.b), vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 20u)], global4[_wgslsmith_index_u32(u_input.c.x, 4u)], true), true), vec4<bool>(true, false, false, false), !vec4<bool>(true, global4[_wgslsmith_index_u32(u_input.c.x, 4u)], global4[_wgslsmith_index_u32(u_input.c.x, 4u)], false))));
    let var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.a.x, global1.b.a.x, var_0.x, -1744f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -769f, 844f, var_0.x))), vec4<f32>(1000f, 1392f, 395f, global1.b.a.x))))));
    let var_4 = 4294967295u;
    var var_5 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-851f, _wgslsmith_f_op_f32(abs(global1.b.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1339f)))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1.b.a.x + _wgslsmith_f_op_f32(var_3.x * var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, var_0.x) + _wgslsmith_div_f32(-580f, 213f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) * _wgslsmith_f_op_f32(min(var_0.x, 231f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-func_2(vec3<i32>(u_input.a.x, global0[_wgslsmith_index_u32(u_input.c.x, 28u)], -105137i)).a.b.a))));
    let var_6 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -1i, ~global1.a ^ -1i, (var_1.x >> (var_6 % 32u)) >> (_wgslsmith_sub_u32(1u, var_6) % 32u)), abs(countOneBits(~vec3<i32>(var_1.x, var_1.x, 2147483647i)))));
}

