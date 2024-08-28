struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: f32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28>;

var<private> global1: Struct_2 = Struct_2(-989f, Struct_1(vec3<i32>(i32(-2147483648), -48616i, -5169i), -21804i, vec4<bool>(true, false, true, true)));

var<private> global2: array<Struct_1, 27>;

var<private> global3: array<vec4<bool>, 2>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: u32, arg_3: bool) -> Struct_1 {
    global0 = array<bool, 28>();
    let var_0 = Struct_3(vec2<u32>(12414u, ~arg_2), arg_0.wx, arg_1, select(global1.b.c.zx, !global1.b.c.zw, global1.b.c.wx));
    var var_1 = firstLeadingBit(~(~_wgslsmith_mult_vec2_u32(var_0.a, vec2<u32>(var_0.a.x, 12313u))) >> (vec2<u32>(var_0.a.x, var_0.a.x) % vec2<u32>(32u)));
    let var_2 = !var_0.d;
    var var_3 = Struct_1(global1.b.a, reverseBits(-27620i), global1.b.c);
    return Struct_1(~global1.b.a >> (~(~abs(vec3<u32>(4294967295u, 19494u, arg_2))) % vec3<u32>(32u)), min(0i, ~u_input.a.x), vec4<bool>(all(var_2), true, false, true));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec4<i32>) -> Struct_4 {
    global1 = arg_1;
    var var_0 = vec2<u32>(1u, countOneBits(3756u));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-695f, _wgslsmith_f_op_f32(global1.a * global1.a)))))), func_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.a, -1621f, arg_1.a, -502f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(-global1.a)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(480f)))), reverseBits(4294967295u), true));
    var var_2 = 1252f;
    var_0 = vec2<u32>(53875u, _wgslsmith_mod_u32(69140u, _wgslsmith_mult_u32(~(~var_0.x), 15580u >> (var_0.x % 32u))));
    return Struct_4(arg_0.b);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: i32) -> Struct_1 {
    let var_0 = func_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(844f, 722f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.a, global1.a, global0[_wgslsmith_index_u32(0u, 28u)])))), func_2(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -225f), 1u, false)), Struct_2(1399f, func_2(arg_0, global1.a, 1u, _wgslsmith_f_op_f32(-arg_0.x) == -587f)), !global1.b.c.xy, abs(vec4<i32>(~1i, arg_1.x, 1i, 2147483647i)));
    let var_1 = arg_0.x;
    let var_2 = select(vec3<bool>(true, var_0.a.c.x, any(var_0.a.c.zyw)), select(func_3(Struct_2(-769f, global1.b), Struct_2(global1.a, Struct_1(vec3<i32>(-1i, u_input.a.x, var_0.a.b), 14189i, global1.b.c)), global1.b.c.yw, -vec4<i32>(var_0.a.b, -1i, 6844i, arg_2)).a.c.ywz, func_3(Struct_2(-1000f, var_0.a), Struct_2(_wgslsmith_f_op_f32(-global1.a), Struct_1(vec3<i32>(-80187i, var_0.a.b, 50141i), u_input.a.x, vec4<bool>(false, global1.b.c.x, global1.b.c.x, global1.b.c.x))), !var_0.a.c.wy, -vec4<i32>(1i, u_input.a.x, global1.b.a.x, var_0.a.b)).a.c.yyw, var_0.a.c.yxz), var_0.a.c.zxy);
    global3 = array<vec4<bool>, 2>();
    let var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.x, arg_0.x))) * 1534f) - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(abs(-751f))), _wgslsmith_f_op_f32(-var_1)))), Struct_1(select(vec3<i32>(2147483647i, -1i, -4580i), ~global1.b.a, select(select(var_2, global1.b.c.xzy, var_0.a.c.x), !vec3<bool>(global1.b.c.x, var_0.a.c.x, false), select(var_0.a.c.x, var_2.x, global0[_wgslsmith_index_u32(22510u, 28u)]))), reverseBits(~2147483647i), global3[_wgslsmith_index_u32(28982u, 2u)]));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -553f, global1.a, -1367f))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -865f), _wgslsmith_f_op_f32(abs(1479f)), _wgslsmith_f_op_f32(global1.a - -1759f), _wgslsmith_f_op_f32(trunc(225f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global1.a, 1000f, global1.a))))), abs(select(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, -31199i) | u_input.a, u_input.a), vec2<i32>(abs(global1.b.b), global1.b.a.x), global1.b.c.x)), global1.b.b);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, -1215f, _wgslsmith_div_vec3_i32(max(_wgslsmith_add_vec3_i32(vec3<i32>(1i, -1i, var_0.a.x), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, -11442i, var_0.b), vec3<i32>(-2147483647i, -2147483647i, 1i))), -(~var_0.a)), -func_3(Struct_2(303f, Struct_1(vec3<i32>(-2147483647i, -2147483647i, 22739i), u_input.a.x, global1.b.c)), Struct_2(global1.a, global1.b), func_3(Struct_2(global1.a, Struct_1(vec3<i32>(1i, var_0.a.x, -27671i), global1.b.b, vec4<bool>(global0[_wgslsmith_index_u32(46499u, 28u)], true, true, var_0.c.x))), Struct_2(global1.a, Struct_1(var_0.a, -1i, global3[_wgslsmith_index_u32(1u, 2u)])), vec2<bool>(var_0.c.x, global0[_wgslsmith_index_u32(0u, 28u)]), vec4<i32>(u_input.a.x, var_0.b, var_0.b, u_input.a.x)).a.c.wz, -vec4<i32>(var_0.b, 2147483647i, var_0.a.x, var_0.a.x)).a.a), abs(~vec2<u32>(abs(74748u), ~1u)), -1274f);
}

