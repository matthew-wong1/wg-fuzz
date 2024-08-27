struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13>;

var<private> global1: vec4<u32>;

var<private> global2: Struct_1;

var<private> global3: vec3<u32> = vec3<u32>(1u, 0u, 20029u);

var<private> global4: Struct_3 = Struct_3(Struct_2(vec2<i32>(-7765i, 13091i), vec2<bool>(true, false), Struct_1(vec2<f32>(1055f, 537f), 26223i, 1064f)), Struct_2(vec2<i32>(1i, 2147483647i), vec2<bool>(false, false), Struct_1(vec2<f32>(501f, -1072f), 2147483647i, 1000f)), vec4<f32>(812f, -1812f, -721f, -854f), vec4<u32>(0u, 33707u, 482u, 26698u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<u32>) -> vec2<bool> {
    global0 = array<Struct_2, 13>();
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(global4.c));
    var var_1 = u_input.a;
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global4.a.c.c, global2.c)), _wgslsmith_f_op_f32(max(1000f, -1617f))))), _wgslsmith_f_op_f32(step(-811f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1106f)) - -832f))))), 466f, -900f, _wgslsmith_f_op_f32(max(global4.a.c.a.x, -551f)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c, -632f))))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))))), ~_wgslsmith_dot_vec4_i32(vec4<i32>(global4.b.c.b, 55446i, 2147483647i, 0i), abs(vec4<i32>(0i, -3748i, global4.b.c.b, global2.b))) & global2.b, -600f);
    return !(!vec2<bool>(global4.b.b.x, any(vec4<bool>(true, global4.b.b.x, true, false))));
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_3(Struct_2(global4.a.a, select(global4.a.b, !func_3(global1.xw), any(!vec4<bool>(true, false, false, global4.b.b.x))), global4.b.c), Struct_2(-min(vec2<i32>(global4.b.a.x, -46872i), global4.a.a), vec2<bool>(!all(vec3<bool>(true, false, false)), true), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-454f, global4.a.c.c)), _wgslsmith_f_op_vec2_f32(-global4.a.c.a), select(vec2<bool>(true, false), global4.b.b, global4.b.b.x))), ~(-89162i), -392f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1270f), _wgslsmith_f_op_f32(f32(-1f) * -122f), _wgslsmith_div_f32(-742f, 148f), 1000f) * global4.c)), u_input.c);
    let var_1 = ~global4.d.x;
    var var_2 = select(0u, ~var_0.d.x, ~0u != max(var_1, u_input.b.x));
    global3 = ~vec3<u32>(u_input.b.x, 4294967295u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(4294967295u & global1.x, _wgslsmith_sub_u32(1u, 0u), min(54385u, global1.x)), var_0.d.x));
    global3 = countOneBits(min(var_0.d.zzy, reverseBits(global4.d.zxz) >> (reverseBits(global1.yxy) % vec3<u32>(32u))) >> (global4.d.wwz % vec3<u32>(32u)));
    return !select(!select(select(vec4<bool>(var_0.b.b.x, global4.b.b.x, false, global4.b.b.x), vec4<bool>(global4.a.b.x, true, var_0.b.b.x, false), true), !vec4<bool>(false, var_0.b.b.x, false, var_0.a.b.x), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(global4.b.b.x, global4.b.b.x, var_0.b.b.x, var_0.a.b.x), vec4<bool>(true, var_0.b.b.x, global4.b.b.x, var_0.a.b.x), global4.a.b.x)), vec4<bool>(true, all(!vec4<bool>(var_0.a.b.x, true, global4.b.b.x, true)), !all(vec4<bool>(false, false, true, false)), !var_0.b.b.x || (global4.d.x <= global1.x)));
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    global1 = ~_wgslsmith_div_vec4_u32(u_input.c, u_input.c);
    let var_0 = func_2();
    global3 = vec3<u32>(arg_0.d.x << (~(~u_input.a) % 32u), min(~global1.x, arg_0.d.x), ~((~u_input.b.x | global4.d.x) ^ 46290u));
    let var_1 = arg_0;
    global3 = abs(var_1.d.xzz);
    return var_1.a.c;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> vec4<bool> {
    var var_0 = global4.b.a;
    return select(func_2(), select(!(!vec4<bool>(true, global4.a.b.x, false, global4.b.b.x)), vec4<bool>(!(-1000f > arg_1.c), any(func_2()), arg_1.a.x > _wgslsmith_f_op_f32(trunc(arg_1.c)), global4.a.c.b >= _wgslsmith_mult_i32(8323i, arg_1.b)), select(vec4<bool>(false, all(vec4<bool>(global4.a.b.x, true, global4.b.b.x, false)), !global4.b.b.x, global4.b.b.x), vec4<bool>(global4.a.b.x, true, global4.a.b.x, global4.a.c.c >= -448f), !global4.a.b.x)), ~select(~0u, abs(u_input.a), true) <= global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 13>();
    let var_0 = ~1i;
    let var_1 = !(!func_4(_wgslsmith_add_u32(68032u, u_input.b.x) | ~global1.x, func_1(Struct_3(Struct_2(global4.b.a, vec2<bool>(true, false), Struct_1(vec2<f32>(-877f, -297f), global2.b, global4.a.c.a.x)), Struct_2(vec2<i32>(1415i, var_0), vec2<bool>(false, global4.b.b.x), global4.b.c), global4.c, global4.d)), global1.x << (~1u % 32u)));
    var var_2 = Struct_2(global4.a.a, !var_1.zx, func_1(Struct_3(global4.b, Struct_2(_wgslsmith_mult_vec2_i32(vec2<i32>(4097i, -1i), global4.b.a), select(global4.a.b, global4.a.b, vec2<bool>(true, var_1.x)), Struct_1(vec2<f32>(global2.a.x, 345f), global2.b, -683f)), _wgslsmith_f_op_vec4_f32(global4.c - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, 1928f, global2.a.x, global2.a.x))), ~(~global4.d))));
    global4 = Struct_3(global4.b, Struct_2(select(select(vec2<i32>(-3960i, var_0), var_2.a, global4.a.b), global4.a.a, var_1.wz) | vec2<i32>(-var_0, max(-2147483647i, -2147483647i)), global4.b.b, Struct_1(global4.b.c.a, firstLeadingBit(countOneBits(var_2.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.c.a.x, global2.c, true)) + 798f))), global4.c, ~select(u_input.c, _wgslsmith_div_vec4_u32(vec4<u32>(global4.d.x, 31531u, 70485u, 1u), vec4<u32>(154u, 9415u, 4800u, u_input.a)), vec4<bool>(var_1.x, var_2.b.x, any(var_1.xxw), true)));
    var var_3 = select(vec4<bool>(var_1.x, func_4(_wgslsmith_div_u32(select(u_input.c.x, global1.x, false), _wgslsmith_clamp_u32(20712u, 1u, global4.d.x)), func_1(Struct_3(Struct_2(global4.b.a, var_2.b, Struct_1(vec2<f32>(global4.c.x, global4.c.x), global4.b.a.x, global4.b.c.a.x)), Struct_2(global4.a.a, global4.b.b, var_2.c), vec4<f32>(1729f, global2.a.x, 756f, 2162f), vec4<u32>(4294967295u, 0u, 17077u, global3.x))), 26864u).x, func_2().x && false, (61536i ^ _wgslsmith_add_i32(global2.b, -2147483647i)) < _wgslsmith_dot_vec2_i32(-vec2<i32>(27808i, 48218i), global4.a.a)), vec4<bool>(func_4(u_input.b.x, global4.b.c, global4.d.x).x, var_1.x, !func_4(104172u, var_2.c, 4294967295u).x | !func_2().x, (1u >= (4294967295u | u_input.c.x)) & var_2.b.x), (true && var_2.b.x) && func_4(global3.x, var_2.c, ~4294967295u).x);
    global2 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_f_op_vec3_f32(global4.c.wwx - global4.c.yzz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-571f))))) * var_2.c.a.x), global4.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1262f - var_2.c.c)))));
}

