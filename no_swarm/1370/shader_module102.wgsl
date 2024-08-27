struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: i32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 33117i;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<f32>(1618f, 316f, 396f, -1373f), 6569i, vec3<i32>(1i, -1i, 2147483647i), false), vec2<f32>(-272f, 615f), 8505i, vec4<bool>(true, false, true, false));

var<private> global2: vec4<bool> = vec4<bool>(true, true, true, true);

var<private> global3: vec4<f32> = vec4<f32>(1546f, -1084f, -149f, 1465f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1() -> f32 {
    return _wgslsmith_f_op_f32(-global3.x);
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_2) -> i32 {
    let var_0 = arg_2.a;
    global3 = vec4<f32>(-587f, _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * -373f), 1000f);
    let var_1 = arg_2.c;
    global0 = _wgslsmith_clamp_i32(-3630i, _wgslsmith_div_i32((_wgslsmith_mult_i32(global1.c, arg_2.a.b) ^ 0i) | ~1i, _wgslsmith_mult_i32(_wgslsmith_add_i32(1i, 1i), _wgslsmith_div_i32(~global1.c, abs(arg_2.a.b)))), ~u_input.b.x);
    var var_2 = var_0;
    return (((_wgslsmith_clamp_i32(u_input.c, arg_2.a.b, arg_2.c) >> (select(u_input.a, u_input.a, arg_0) % 32u)) | -_wgslsmith_add_i32(-2147483647i, arg_2.c)) & _wgslsmith_dot_vec2_i32(-arg_2.a.c.yy >> (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 17546u)) % vec2<u32>(32u)), var_2.c.zx)) | (_wgslsmith_mod_i32(-arg_2.c, ~(~u_input.b.x)) & _wgslsmith_mult_i32(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.c, global1.a.c.x, var_0.c.x, var_1), vec4<i32>(-1i, u_input.d, 20721i, -17521i))), -6250i));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: i32) -> vec3<i32> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(978f, 1000f, global3.x, global3.x)))), 29145i, _wgslsmith_mult_vec3_i32(global1.a.c, abs(vec3<i32>(arg_1.x, global1.a.b, 1i))), global1.a.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.a.a.yz + vec2<f32>(-746f, 1f))), _wgslsmith_mult_i32(~_wgslsmith_sub_i32(func_3(arg_0.x, true, Struct_2(Struct_1(vec4<f32>(global1.b.x, global3.x, global3.x, 1196f), global1.a.b, vec3<i32>(arg_1.x, arg_2, arg_2), true), global1.a.a.zz, 12781i, global1.d)), 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -arg_1.x, global1.a.b, arg_1.x), firstTrailingBit(-vec4<i32>(-45329i, -26029i, arg_2, 1i)))), select(global1.d, vec4<bool>(!all(global1.d), global1.d.x & !global2.x, true, _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a) > _wgslsmith_mod_u32(0u, 4294967295u)), select(true, !(!global1.a.d), all(vec3<bool>(false, false, arg_0.x)))));
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-211f - global3.x), global3.x, _wgslsmith_f_op_f32(var_0.b.x - 1035f), var_0.b.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(253f, global1.a.a.x, global1.a.a.x, global1.a.a.x))), ~(-2147483647i), -(_wgslsmith_add_vec3_i32(vec3<i32>(-40803i, global1.c, u_input.d), vec3<i32>(2147483647i, -39461i, global1.a.b)) ^ u_input.b), all(select(vec4<bool>(false, false, false, true), global1.d, select(var_0.d, vec4<bool>(true, arg_0.x, arg_0.x, var_0.d.x), false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(global3.wx, var_0.a.a.zw, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1046f, 1000f)), select(vec2<bool>(false, false), global1.d.zz, arg_0.x))) - vec2<f32>(_wgslsmith_f_op_f32(min(global3.x, var_0.a.a.x)), _wgslsmith_f_op_f32(func_1())))), -13162i, vec4<bool>(any(!global2.zx), true != global1.d.x, var_0.d.x, true));
    var_0 = Struct_2(global1.a, global3.xx, 1i, vec4<bool>(select(firstLeadingBit(12581i) != (-2147483647i ^ u_input.d), arg_0.x, (-630f < global3.x) && (global2.x || false)), false, any(var_0.d.xwz), !(!arg_0.x & global2.x)));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(trunc(global3.x))), _wgslsmith_f_op_vec2_f32(global3.zy - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(round(var_0.b.x)), var_0.b.x), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(global1.a.a.wy + vec2<f32>(-766f, 775f))))))), true));
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-520f, 706f, global3.x, 670f)), _wgslsmith_div_i32(arg_1.x ^ -global1.a.b, u_input.b.x), _wgslsmith_div_vec3_i32(vec3<i32>(min(arg_1.x, 0i), -8436i ^ global1.c, 11849i), u_input.b), global1.a.d), var_1, -1i, var_0.d);
    return var_0.a.c << (min(vec3<u32>(u_input.a, _wgslsmith_clamp_u32(~4496u, 1u, ~4294967295u), 63049u), vec3<u32>(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(16457u, 9087u, u_input.a), vec3<u32>(0u, 1u, u_input.a))), u_input.a, 0u)) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - global1.b.x);
    let var_1 = global1.c;
    global1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1411f, global1.a.a.x, global1.b.x, global3.x))), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, global1.c) | vec2<i32>(-100116i, 37656i), vec2<i32>(u_input.b.x, 5511i)), func_2(select(global2.wzx, vec3<bool>(global2.x, global1.d.x, false), vec3<bool>(global1.a.d, global1.d.x, true)), vec2<i32>(13895i, global1.c), global1.a.b), !all(select(global2.wz, vec2<bool>(true, global2.x), vec2<bool>(global1.a.d, global2.x)))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2818f), _wgslsmith_div_f32(global1.b.x, _wgslsmith_f_op_f32(-134f - global3.x)))), _wgslsmith_f_op_f32(step(1393f, _wgslsmith_f_op_f32(-global3.x)))), -1i ^ u_input.c, global1.d);
    global0 = 0i;
    var_0 = _wgslsmith_f_op_f32(ceil(-1000f));
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.a, -countOneBits(-global1.a.c.zx));
}

