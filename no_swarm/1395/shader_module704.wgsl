struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18> = array<f32, 18>(-1472f, 335f, 1485f, -950f, 461f, 366f, 1590f, 211f, -681f, -468f, 1150f, -1800f, 493f, 1084f, -181f, -997f, 280f, 147f);

var<private> global1: Struct_2;

var<private> global2: Struct_2 = Struct_2(vec3<bool>(false, true, false), true, Struct_1(77714u));

var<private> global3: array<vec4<bool>, 9>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2() -> bool {
    global3 = array<vec4<bool>, 9>();
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(reverseBits(abs(global2.c.a)), 18u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(672f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(144f * 380f))))));
    let var_1 = vec4<bool>(_wgslsmith_sub_u32(_wgslsmith_div_u32(1u, ~1u), global1.c.a) <= 0u, global2.a.x, !global1.b, false);
    var var_2 = global1.c;
    global3 = array<vec4<bool>, 9>();
    return !(true && (_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(f32(-1f) * -1441f)) <= _wgslsmith_f_op_f32(-248f + 648f)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: u32) -> u32 {
    var var_0 = 63919u;
    let var_1 = global1.c;
    var_0 = arg_2;
    let var_2 = vec4<i32>(-(-25956i | arg_0), ~14289i, 4176i, 1i) ^ select(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, _wgslsmith_dot_vec2_i32(u_input.a.xy, vec2<i32>(0i, 1i)), _wgslsmith_dot_vec2_i32(u_input.a.yx, u_input.a.yx), -1i), select(vec4<i32>(1i, u_input.a.x, arg_0, -1i) << (vec4<u32>(26942u, var_1.a, 1u, 1u) % vec4<u32>(32u)), -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 2147483647i), true)), _wgslsmith_sub_vec4_i32(~(-vec4<i32>(arg_0, 0i, u_input.a.x, u_input.a.x)), _wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(-18431i, 20122i, arg_0, u_input.a.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, arg_0, u_input.a.x), vec4<i32>(arg_0, arg_0, 16744i, 1i)))), !vec4<bool>(!global2.a.x, false, select(global2.b, false, global1.a.x), global1.b));
    global2 = Struct_2(global1.a, any(vec4<bool>(true, false, true, false)), global2.c);
    return 46470u;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = func_3(-arg_1.x, select(_wgslsmith_add_u32(global1.c.a, global1.c.a) | global1.c.a, reverseBits(global1.c.a), func_2()), global2.c.a) << (_wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, _wgslsmith_mod_u32(~global2.c.a, ~4294967295u)), min(30292u, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(57947u, 66443u, 11725u), vec3<u32>(global1.c.a, 110409u, 0u))))) % 32u);
    var var_1 = Struct_1(_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(7278u, var_0, global1.c.a)), _wgslsmith_add_vec3_u32(~firstTrailingBit(vec3<u32>(global2.c.a, global2.c.a, 4294967295u)), firstTrailingBit(countOneBits(vec3<u32>(global1.c.a, 12913u, global1.c.a))))));
    var var_2 = min(-30495i, arg_1.x) > abs(~countOneBits(0i));
    global1 = Struct_2(vec3<bool>(true, true, true), any(global1.a), global2.c);
    var var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-arg_2)))));
    return Struct_2(!select(global1.a, vec3<bool>(true, global2.a.x, var_1.a != 0u), global1.b), global2.b, Struct_1(_wgslsmith_add_u32(_wgslsmith_sub_u32(~1u, 32707u), countOneBits(~2271u))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<bool>, 9>();
    let var_0 = func_1(countOneBits(vec4<i32>(u_input.a.x, -21743i, max(-3889i & u_input.a.x, 1i), firstTrailingBit(u_input.a.x))), max(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, u_input.a.x), vec2<i32>(-1i ^ u_input.a.x, _wgslsmith_add_i32(u_input.a.x, u_input.a.x))), u_input.a.yx), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 18u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global1.c.a, 18u)] * 1033f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1.c.a, 18u)]), _wgslsmith_f_op_f32(-678f * 330f))))));
    var var_1 = func_1(abs(vec4<i32>(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), firstLeadingBit(13054i), -2147483647i, 0i)), _wgslsmith_mod_vec2_i32(select(u_input.a.zx, ~abs(vec2<i32>(u_input.a.x, u_input.a.x)), vec2<bool>(true, !global2.b)), ~(vec2<i32>(-2147483647i, u_input.a.x) >> ((vec2<u32>(47857u, global2.c.a) << (vec2<u32>(var_0.c.a, global1.c.a) % vec2<u32>(32u))) % vec2<u32>(32u)))), vec4<f32>(_wgslsmith_f_op_f32(582f * 706f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1151f + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.c.a, 18u)])))), -212f, _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(firstTrailingBit(63155u), 18u)], -290f))));
    var var_2 = global1.c.a;
    var_1 = var_0;
    var var_3 = global3[_wgslsmith_index_u32(global2.c.a, 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 18u)] + global0[_wgslsmith_index_u32(var_0.c.a, 18u)]), _wgslsmith_f_op_f32(min(1311f, global0[_wgslsmith_index_u32(32979u, 18u)])), var_3.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(17879u, 18u)], 1024f)))))), vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_1.c.a, 18u)] + _wgslsmith_f_op_f32(-1158f * _wgslsmith_f_op_f32(f32(-1f) * -711f))), global0[_wgslsmith_index_u32(0u, 18u)]), u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-688f * -1000f))));
}

