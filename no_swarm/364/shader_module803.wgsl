struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec3<u32>, 30>;

var<private> global2: i32 = -24355i;

var<private> global3: i32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_3, arg_3: Struct_3) -> i32 {
    global1 = array<vec3<u32>, 30>();
    let var_0 = u_input.b.xy;
    let var_1 = arg_2.a;
    let var_2 = arg_3;
    let var_3 = Struct_4(arg_3.b.d.c.x, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(913f, -245f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(223f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * 1f));
    return _wgslsmith_div_i32(-(~_wgslsmith_dot_vec2_i32(global0.a.c.a, vec2<i32>(var_3.a, var_3.a))), reverseBits(2147483647i)) << (u_input.b.x % 32u);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1) -> bool {
    let var_0 = Struct_3(Struct_2(vec4<bool>(-1562f < _wgslsmith_f_op_f32(arg_0.b.x + -752f), any(global0.a.a.xw), arg_1.b, false), vec4<bool>(false, all(select(global0.a.b.xxz, global0.b.b.wwx, true)), all(vec3<bool>(arg_1.b, true, global0.a.a.x)), true), Struct_1(vec2<i32>(_wgslsmith_add_i32(arg_0.a, 0i), _wgslsmith_add_i32(2147483647i, -28501i)), arg_1.b, firstLeadingBit(arg_1.c)), Struct_1(reverseBits(vec2<i32>(1i, 50842i)), !global0.b.a.x, vec3<i32>(arg_0.a >> (u_input.b.x % 32u), arg_1.a.x, arg_0.a))), global0.b);
    global2 = _wgslsmith_dot_vec2_i32(~var_0.a.d.c.yz, var_0.a.c.a);
    global1 = array<vec3<u32>, 30>();
    return any(global0.a.b);
}

fn func_2(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: vec4<i32>, arg_3: vec3<f32>) -> vec4<bool> {
    let var_0 = Struct_4(2147483647i, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(164f, arg_1.x, arg_0.c) - vec3<f32>(-1786f, -734f, arg_0.b.x)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-132f, arg_0.c, 1263f), vec3<f32>(arg_1.x, arg_0.c, 663f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, arg_3.x, 1086f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-arg_1.wwx), vec3<f32>(arg_1.x, arg_0.c, arg_3.x))))), _wgslsmith_f_op_f32(-165f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -323f), -826f))));
    let var_1 = 32809i;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-722f, arg_3.x, -427f));
    var var_3 = 0u;
    var var_4 = _wgslsmith_div_f32(-1096f, arg_1.x);
    return select(select(vec4<bool>(!any(vec4<bool>(true, global0.b.d.b, global0.b.a.x, false)), select(true, !global0.b.b.x, all(vec3<bool>(false, false, false))), false, any(select(global0.b.a.ywy, global0.a.b.wzy, global0.b.a.wzz))), !global0.a.b, true), global0.a.a, !select(vec4<bool>(global0.b.a.x, global0.b.a.x, any(global0.b.b.yyy), var_0.c <= arg_0.c), vec4<bool>(any(global0.b.b.yyw), arg_3.x > -276f, any(global0.b.b.xw), global0.b.d.b), !func_3(var_0, global0.a.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(Struct_2(select(select(global0.b.a, vec4<bool>(global0.b.c.b, true, true, true), vec4<bool>(global0.b.a.x, true, true, global0.a.a.x)), global0.a.b, select(vec4<bool>(false, global0.a.c.b, false, false), !vec4<bool>(global0.b.b.x, global0.b.c.b, global0.a.b.x, true), true)), select(vec4<bool>(false, !global0.b.b.x, true || global0.a.a.x, global0.a.c.b), global0.b.b, vec4<bool>(any(vec3<bool>(false, global0.a.d.b, global0.b.c.b)), true, !global0.b.b.x, true)), Struct_1(vec2<i32>(global0.a.d.a.x, firstTrailingBit(44521i)), false, vec3<i32>(func_1(u_input.b.xy, 2147483647i, Struct_3(global0.b, Struct_2(global0.a.a, global0.b.b, Struct_1(vec2<i32>(-922i, global0.b.c.c.x), global0.b.b.x, vec3<i32>(global0.b.d.a.x, 22109i, -2147483647i)), global0.a.c)), Struct_3(Struct_2(vec4<bool>(global0.a.c.b, false, true, false), global0.a.a, global0.b.d, global0.b.c), Struct_2(global0.a.a, vec4<bool>(global0.b.d.b, false, global0.a.b.x, global0.a.a.x), global0.b.c, global0.a.c))), reverseBits(global0.b.c.c.x), _wgslsmith_mult_i32(1i, 2147483647i))), Struct_1(-firstTrailingBit(vec2<i32>(10806i, global0.b.c.a.x)), !global0.b.b.x, global0.a.c.c)), Struct_2(select(select(!vec4<bool>(global0.a.b.x, false, global0.b.c.b, true), !vec4<bool>(global0.b.c.b, global0.b.b.x, global0.a.d.b, global0.b.a.x), 69757u > u_input.a), func_2(Struct_4(global0.a.d.c.x, vec3<f32>(-1086f, 1260f, 2547f), 1046f), _wgslsmith_div_vec4_f32(vec4<f32>(-1509f, -662f, 1522f, -1000f), vec4<f32>(-310f, 551f, 1906f, 793f)), vec4<i32>(0i, 5376i, global0.b.d.c.x, -46971i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1065f, 840f, -726f))), func_2(Struct_4(global0.b.d.a.x, vec3<f32>(224f, 2263f, -655f), 1358f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1534f, 1274f, -138f, 1525f)), abs(vec4<i32>(global0.a.c.a.x, -2207i, global0.a.c.a.x, global0.b.c.c.x)), vec3<f32>(540f, 1552f, 1323f))), func_2(Struct_4(11905i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(308f, 921f, -119f)), _wgslsmith_f_op_f32(f32(-1f) * -912f)), vec4<f32>(1f, 1f, 1f, 1f), -vec4<i32>(global0.a.d.a.x, -84291i, 1i, 0i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-438f, 2023f, 697f) * vec3<f32>(616f, -1000f, -1528f)))), global0.b.c, global0.a.d));
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -453f) * 2814f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-443f - 597f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-704f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(568f)))))));
    let var_1 = vec3<i32>(29784i, global0.b.d.a.x, _wgslsmith_sub_i32(-27082i, global0.a.d.a.x));
    global1 = array<vec3<u32>, 30>();
    var var_2 = Struct_4(35520i, _wgslsmith_f_op_vec3_f32(select(var_0.yyx, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.zwx) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -1162f))), var_0.yyw), func_2(Struct_4(var_1.x << (u_input.b.x % 32u), var_0.xww, -499f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1608f, var_0.x, var_0.x, var_0.x)), vec4<f32>(var_0.x, 1000f, -649f, -586f)), vec4<i32>(global0.a.d.c.x, global0.b.c.c.x, var_1.x, var_1.x) << (vec4<u32>(48268u, 40071u, u_input.b.x, 0u) % vec4<u32>(32u)), var_0.wxw).xyz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -746f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, vec2<u32>(30432u, ~countOneBits(abs(0u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -722f))), -664f), reverseBits(vec3<i32>(~var_2.a, ~(~(-51067i)), global0.a.d.a.x)), u_input.b.x | _wgslsmith_add_u32(1u, 9109u));
}

