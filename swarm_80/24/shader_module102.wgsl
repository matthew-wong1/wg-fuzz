struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec2<u32>,
    d: vec2<i32>,
    e: f32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 8>;

var<private> global1: Struct_2;

var<private> global2: Struct_4 = Struct_4(vec4<bool>(true, true, false, true), Struct_3(-1i, false, vec2<u32>(21570u, 0u), vec2<i32>(-1i, i32(-2147483648)), -2169f));

var<private> global3: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(false, vec4<i32>(1i, -13815i, 7315i, 0i), vec2<i32>(2147483647i, 54192i)), Struct_2(true, vec4<i32>(-30574i, -1i, 94718i, 28928i), vec2<i32>(2147483647i, i32(-2147483648))), Struct_2(false, vec4<i32>(0i, 31514i, 37492i, -1i), vec2<i32>(2147483647i, -1i)), Struct_2(true, vec4<i32>(-1i, 1i, 19861i, -27891i), vec2<i32>(32774i, 2147483647i)), Struct_2(false, vec4<i32>(1i, -10511i, 0i, 1i), vec2<i32>(1i, 0i)), Struct_2(false, vec4<i32>(-10255i, -62431i, -1i, 2147483647i), vec2<i32>(6i, 2174i)), Struct_2(false, vec4<i32>(-7233i, 24851i, -98637i, 0i), vec2<i32>(1i, i32(-2147483648))), Struct_2(true, vec4<i32>(-7038i, 0i, -1i, i32(-2147483648)), vec2<i32>(3767i, 22587i)), Struct_2(true, vec4<i32>(0i, 0i, -53537i, 37368i), vec2<i32>(10466i, -67496i)), Struct_2(false, vec4<i32>(59673i, -1i, 16820i, -55188i), vec2<i32>(-53782i, -37353i)), Struct_2(true, vec4<i32>(-20726i, -13889i, 1i, -1i), vec2<i32>(-1i, 17355i)), Struct_2(true, vec4<i32>(31784i, 0i, 21211i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -10784i)));

var<private> global4: array<vec2<u32>, 3> = array<vec2<u32>, 3>(vec2<u32>(23144u, 8202u), vec2<u32>(24115u, 13766u), vec2<u32>(735u, 4294967295u));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(any(global2.a.zwz), max(-global1.b, firstTrailingBit(reverseBits(vec4<i32>(global1.b.x, 0i, -2147483647i, global1.c.x)))), -vec2<i32>(max(-1593i, -2147483647i) << (~4294967295u % 32u), _wgslsmith_div_i32(-u_input.b.x, ~1i)));
    global2 = Struct_4(vec4<bool>(global2.a.x, select(global2.a.x, !global2.b.b, true), true, !var_0.a), global2.b);
    global3 = array<Struct_2, 12>();
    var_0 = global3[_wgslsmith_index_u32(0u, 12u)];
    let var_1 = countOneBits(firstTrailingBit(global4[_wgslsmith_index_u32(global2.b.c.x, 3u)]));
    return global3[_wgslsmith_index_u32(u_input.c, 12u)];
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_3) -> f32 {
    global1 = func_2();
    var var_0 = _wgslsmith_mult_vec3_i32(abs(select(firstTrailingBit(~vec3<i32>(23053i, -1i, global2.b.a)), vec3<i32>(20139i, -56633i, global2.b.a), global2.b.b)), ~_wgslsmith_sub_vec3_i32(~(-global1.b.ywx), ~global1.b.zwy));
    let var_1 = 1u <= arg_1;
    global3 = array<Struct_2, 12>();
    global3 = array<Struct_2, 12>();
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-360f * global2.b.e)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-arg_3.a);
    let var_1 = arg_0.a;
    var var_2 = ~89032u;
    global3 = array<Struct_2, 12>();
    let var_3 = ~abs(~global2.b.c);
    return Struct_3(global1.c.x, false, ~_wgslsmith_mod_vec2_u32(abs(var_3), arg_1.zz), abs(firstTrailingBit(global2.b.d)) ^ vec2<i32>(~(-49934i), global2.b.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -289f), -740f)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_4(vec4<bool>(true, _wgslsmith_f_op_f32(sign(global2.b.e)) >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.b.e, global2.b.e) - -712f), global1.a, u_input.c < u_input.a.x), func_3(Struct_1(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(func_1(global2.b.e, 1749u, Struct_1(-2050f, -1000f), Struct_3(global2.b.a, true, u_input.a.xz, vec2<i32>(-10529i, u_input.b.x), -569f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.e * -1252f))), vec3<u32>(1u, _wgslsmith_div_u32(u_input.c, _wgslsmith_dot_vec3_u32(u_input.a, u_input.a)), 1u), global2.a.wyx, Struct_1(-1602f, -1003f)));
    let var_0 = u_input.a.xx;
    let var_1 = func_2();
    global3 = array<Struct_2, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(71100u, 1722u), _wgslsmith_div_vec2_u32(global4[_wgslsmith_index_u32(0u, 3u)], u_input.a.zz))), ~1u), var_0.x, vec2<f32>(global2.b.e, global2.b.e), -65966i & _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.b.x >> (4294967295u % 32u), 30347i), -1968i));
}

