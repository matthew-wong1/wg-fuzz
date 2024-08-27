struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec3<u32>,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 11> = array<vec4<u32>, 11>(vec4<u32>(4294967295u, 0u, 0u, 0u), vec4<u32>(0u, 1u, 44627u, 21122u), vec4<u32>(12991u, 4118u, 30852u, 53495u), vec4<u32>(1u, 4294967295u, 0u, 8813u), vec4<u32>(3508u, 1u, 19548u, 1u), vec4<u32>(99169u, 59064u, 2212u, 26748u), vec4<u32>(0u, 1u, 0u, 4294967295u), vec4<u32>(4294967295u, 47502u, 98250u, 39428u), vec4<u32>(21905u, 0u, 128174u, 1u), vec4<u32>(4294967295u, 59614u, 4294967295u, 51450u), vec4<u32>(0u, 1u, 10337u, 4294967295u));

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<u32> {
    var var_0 = firstTrailingBit(-u_input.b);
    global0 = array<vec4<u32>, 11>();
    let var_1 = _wgslsmith_clamp_vec3_u32(~vec3<u32>(abs(0u), reverseBits(abs(30481u)), 1u), ~(~_wgslsmith_add_vec3_u32(global1.c | vec3<u32>(global1.c.x, 25449u, global1.c.x), ~vec3<u32>(1u, 1u, global1.c.x))), vec3<u32>(~(~global1.c.x) << (24464u % 32u), ~global1.c.x, abs(countOneBits(global1.c.x ^ u_input.d))));
    var_0 = _wgslsmith_mult_vec4_i32(~(-vec4<i32>(~33275i, -427i, u_input.b.x, -18547i)), ~u_input.b);
    global1 = Struct_1(global1.a, 1446f, global1.c << (~var_1 % vec3<u32>(32u)), global1.a.yyy, all(select(select(global1.d.xz, global1.d.yy, global1.e), global1.a.zw, true)));
    return global1.c.zx;
}

fn func_2() -> Struct_3 {
    global1 = Struct_1(!(!vec4<bool>(global1.d.x, global1.b > global1.b, true, global1.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-501f)) * _wgslsmith_f_op_f32(global1.b - global1.b)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global1.b)), 2666f))), _wgslsmith_mult_vec3_u32((~global1.c & ~global1.c) >> ((~global1.c | global1.c) % vec3<u32>(32u)), select(countOneBits(~vec3<u32>(17658u, 1u, 0u)), select(global1.c, vec3<u32>(4294967295u, 47009u, 47035u), global1.c.x < global1.c.x), !(!global1.a.x))), !(!global1.a.wwx), true);
    var var_0 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.b, 1024f, -1109f)));
    var var_1 = Struct_2(func_3(), Struct_1(!select(select(vec4<bool>(global1.e, global1.a.x, global1.d.x, global1.a.x), vec4<bool>(false, global1.e, false, false), global1.e), !vec4<bool>(true, global1.a.x, true, false), !vec4<bool>(global1.e, true, true, global1.a.x)), -1611f, firstLeadingBit(global1.c), global1.d, !(global1.e | select(global1.e, global1.d.x, global1.a.x))));
    let var_2 = reverseBits(global1.c.yz);
    let var_3 = Struct_3(Struct_2(abs(vec2<u32>(var_2.x, ~83949u)), var_1.b), Struct_1(select(!select(vec4<bool>(true, global1.e, true, var_1.b.d.x), vec4<bool>(global1.d.x, false, var_1.b.d.x, var_1.b.a.x), vec4<bool>(true, true, true, var_1.b.a.x)), vec4<bool>(all(vec4<bool>(false, global1.e, false, global1.e)), true, true, var_1.b.d.x | global1.d.x), global1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) + _wgslsmith_f_op_f32(max(var_0.x, -895f))) * _wgslsmith_div_f32(-1360f, _wgslsmith_f_op_f32(-var_0.x))), ~(~(~vec3<u32>(u_input.d, global1.c.x, 11094u))), !vec3<bool>(var_1.b.d.x, true, true), false), Struct_1(vec4<bool>(true, false, true, var_1.b.e), global1.b, vec3<u32>(var_2.x & var_2.x, ~u_input.d, ~countOneBits(4294967295u)), vec3<bool>((var_2.x <= 26187u) & true, true, all(vec2<bool>(var_1.b.d.x, false))), true), abs(vec2<u32>(0u, 1u)));
    return var_3;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec3<u32>, arg_3: vec4<u32>) -> vec4<bool> {
    var var_0 = func_2();
    return !select(global1.a, vec4<bool>(all(!vec4<bool>(true, var_0.b.e, true, true)), true, true, any(func_2().c.a)), var_0.c.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(!select(func_1(Struct_1(global1.a, -504f, global1.c, vec3<bool>(false, global1.d.x, global1.e), global1.a.x), u_input.b.x, vec3<u32>(global1.c.x, 1u, global1.c.x), global0[_wgslsmith_index_u32(u_input.d, 11u)]), !vec4<bool>(global1.d.x, global1.d.x, false, global1.d.x), false), global1.a, global1.d.x), _wgslsmith_f_op_f32(-global1.b), func_2().a.b.c, !global1.d, true);
    var var_1 = _wgslsmith_mult_vec3_i32(~(~vec3<i32>(u_input.c.x ^ 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(20361i, 19353i, u_input.c.x, 2147483647i), vec4<i32>(16807i, 1i, u_input.a.x, u_input.b.x)), 1i)), vec3<i32>(-1i) * -vec3<i32>(-u_input.b.x, 49678i, firstTrailingBit(u_input.c.x)));
    var_1 = ~_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_div_i32(18465i, 2147483647i), 25963i, var_1.x), -u_input.c);
    let var_2 = 46254u;
    var var_3 = -1i;
    var var_4 = u_input.d;
    var var_5 = func_2().a;
    let var_6 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_5.b.b, 1575f, _wgslsmith_f_op_f32(exp2(var_5.b.b)), _wgslsmith_f_op_f32(min(var_5.b.b, 129f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-542f, -235f, var_0.b, 1000f), vec4<f32>(697f, global1.b, global1.b, 342f)))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(func_2().b.b, 1000f, _wgslsmith_div_f32(global1.b, var_5.b.b), 1502f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~(~(i32(-1i) * -39357i)), u_input.a.x));
}

