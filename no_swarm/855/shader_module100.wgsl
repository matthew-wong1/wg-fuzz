struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29>;

var<private> global1: f32;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec3<bool>(false, false, false), vec3<f32>(-307f, -412f, -1000f), 0i, true), 0i, vec2<bool>(true, true), Struct_1(vec3<bool>(false, false, false), vec3<f32>(-745f, -1000f, -1378f), 66590i, true));

var<private> global3: array<vec4<i32>, 28>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -774f), _wgslsmith_f_op_f32(global2.a.b.x + -171f), -1830f, -442f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.b.x, 1000f, 554f, arg_0.b.x))) * vec4<f32>(1328f, _wgslsmith_f_op_f32(min(global2.d.b.x, 380f)), -1305f, arg_0.b.x)))));
    return var_0.xw;
}

fn func_2(arg_0: bool, arg_1: f32) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec3<bool>(global2.a.b.x > 361f, true, any(vec2<bool>(true, arg_0))), vec3<f32>(-1000f, 463f, 1f), global2.d.c, global2.d.d)));
    global3 = array<vec4<i32>, 28>();
    global0 = array<Struct_2, 29>();
    let var_1 = vec3<bool>(-12839i > _wgslsmith_dot_vec3_i32(~u_input.c, u_input.c), true, true);
    var var_2 = vec4<u32>(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(19968u, 1u)), ~(vec2<u32>(89839u, 79284u) | vec2<u32>(53953u, u_input.b))), ~0u, ~min(countOneBits(u_input.e), u_input.b), 63118u) | vec4<u32>(~u_input.b ^ ~u_input.e, ~(~u_input.e), u_input.e, max(2194u, ~u_input.b));
    return all(!vec2<bool>(global2.d.d, true)) || !var_1.x;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = !vec3<bool>(arg_1.c.x, arg_0.x, !((arg_1.d.a.x & arg_0.x) && global2.c.x));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1460f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.b.x) + _wgslsmith_f_op_f32(select(global2.a.b.x, 1000f, arg_1.d.a.x)))))) * _wgslsmith_f_op_f32(sign(-186f)));
    global3 = array<vec4<i32>, 28>();
    var var_2 = Struct_2(arg_1.a, firstTrailingBit(~57559i), arg_0.zy, global2.a);
    var var_3 = Struct_2(Struct_1(!(!(!var_0)), _wgslsmith_f_op_vec3_f32(var_2.d.b * global2.d.b), _wgslsmith_mod_i32(~_wgslsmith_sub_i32(var_2.b, global2.a.c), firstLeadingBit(-1i)), all(!select(arg_1.c, arg_1.a.a.zz, var_2.a.a.x))), global2.d.c, select(var_0.zz, select(select(select(var_0.yy, vec2<bool>(var_2.c.x, false), true), global2.d.a.xy, select(arg_0.xx, var_2.a.a.zy, false)), global2.a.a.yz, vec2<bool>(arg_0.x, arg_1.d.d || false)), vec2<bool>(_wgslsmith_div_i32(var_2.d.c, -1i) == arg_1.b, true)), var_2.a);
    return arg_1;
}

fn func_1(arg_0: vec4<f32>) -> i32 {
    var var_0 = func_4(select(vec3<bool>(!func_2(global2.c.x, global2.d.b.x), global2.d.d, true), vec3<bool>(global2.d.d, all(select(vec3<bool>(false, global2.c.x, global2.a.a.x), global2.d.a, vec3<bool>(false, false, false))), !global2.c.x), global2.c.x), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.e, _wgslsmith_mult_u32(~u_input.e, ~54627u)) << (u_input.b % 32u), 29u)]);
    let var_1 = Struct_2(func_4(vec3<bool>(global2.d.a.x, ~u_input.b > _wgslsmith_mod_u32(u_input.e, 0u), func_2(var_0.c.x, _wgslsmith_f_op_f32(-arg_0.x))), global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(36228u, 26660u), 29u)]).d, _wgslsmith_sub_i32(select(-_wgslsmith_dot_vec2_i32(u_input.c.xx, vec2<i32>(-21855i, 2147483647i)), abs(-2147483647i), var_0.d.d), 2147483647i), vec2<bool>((abs(u_input.a.x) | -38593i) < _wgslsmith_dot_vec4_i32(global3[_wgslsmith_index_u32(u_input.e, 28u)] << (vec4<u32>(u_input.b, 1u, 52080u, 15250u) % vec4<u32>(32u)), global3[_wgslsmith_index_u32(65497u, 28u)] | global3[_wgslsmith_index_u32(32035u, 28u)]), false), global2.a);
    var var_2 = var_1.b;
    let var_3 = Struct_1(vec3<bool>(any(!select(vec2<bool>(true, var_0.d.d), var_0.c, vec2<bool>(false, false))), global2.c.x, false), func_4(var_0.a.a, var_1).d.b, firstTrailingBit(~(-global2.a.c)), func_2(any(vec4<bool>(global2.d.d, !global2.d.d, any(vec2<bool>(global2.d.a.x, false)), var_1.d.a.x)), 828f));
    var_0 = var_1;
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(4294967295u, u_input.e), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.e), vec2<u32>(13726u, u_input.e))), ~13160u), u_input.b), 29u)];
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_1 = global2.b;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1936f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(971f, 1000f))))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a.b.x, var_0.d.b.x)))))));
    var var_2 = -u_input.d;
    global3 = array<vec4<i32>, 28>();
    var_0 = Struct_2(Struct_1(vec3<bool>(false, true, global2.a.b.x >= _wgslsmith_f_op_f32(max(var_0.d.b.x, global2.d.b.x))), vec3<f32>(global2.a.b.x, _wgslsmith_f_op_f32(-720f - var_0.d.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.b.x))), ~func_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, global2.d.b.x, -1457f, -667f), vec4<f32>(var_0.a.b.x, 559f, var_0.d.b.x, var_0.a.b.x)))), all(select(vec2<bool>(false, var_0.d.a.x), !vec2<bool>(var_0.d.d, var_0.d.a.x), select(var_0.c, vec2<bool>(var_0.a.a.x, true), var_0.d.a.x)))), global2.d.c, vec2<bool>(var_0.d.d, !all(select(vec4<bool>(true, var_0.a.d, var_0.a.d, var_0.c.x), vec4<bool>(global2.d.d, global2.c.x, var_0.c.x, var_0.c.x), vec4<bool>(false, true, true, var_0.d.d)))), var_0.d);
    var var_3 = global2.a.a.x;
    let var_4 = Struct_2(func_4(select(func_4(global2.d.a, Struct_2(var_0.d, var_0.d.c, vec2<bool>(false, global2.a.a.x), global2.a)).a.a, vec3<bool>(var_0.a.a.x, true, true), global2.a.a), Struct_2(Struct_1(func_4(vec3<bool>(true, true, var_0.d.d), global0[_wgslsmith_index_u32(u_input.b, 29u)]).d.a, _wgslsmith_f_op_vec3_f32(max(global2.d.b, vec3<f32>(1000f, var_0.a.b.x, 686f))), max(-25060i, u_input.d), !global2.c.x), var_0.b & _wgslsmith_add_i32(23519i, 7504i), select(!vec2<bool>(global2.d.d, false), vec2<bool>(global2.c.x, var_0.c.x), false), Struct_1(!global2.a.a, _wgslsmith_f_op_vec3_f32(select(var_0.a.b, vec3<f32>(global2.a.b.x, var_0.a.b.x, 196f), false)), i32(-1i) * -5149i, !global2.c.x))).d, 1i, !(!vec2<bool>(true, global2.a.a.x)), var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, abs(max(firstTrailingBit(~vec2<u32>(0u, 1u)), vec2<u32>(1u, u_input.e) | min(vec2<u32>(u_input.b, 43429u), vec2<u32>(0u, 39493u)))), vec3<i32>(~_wgslsmith_mult_i32(reverseBits(u_input.d), firstTrailingBit(u_input.a.x)), _wgslsmith_div_i32(i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(global3[_wgslsmith_index_u32(0u, 28u)], global3[_wgslsmith_index_u32(27706u, 28u)]), ~global3[_wgslsmith_index_u32(0u, 28u)])), abs(global2.b)));
}

