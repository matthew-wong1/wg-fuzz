struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_3,
    d: Struct_3,
    e: u32,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11>;

var<private> global1: array<u32, 9>;

var<private> global2: Struct_5 = Struct_5(56999u, Struct_3(21055u, 101170u), Struct_2(196f, Struct_1(true, vec3<bool>(false, false, false), vec3<u32>(4294967295u, 1u, 0u), vec2<bool>(false, false)), Struct_1(true, vec3<bool>(true, false, false), vec3<u32>(0u, 20141u, 37798u), vec2<bool>(false, true)), Struct_1(true, vec3<bool>(true, false, false), vec3<u32>(6059u, 1u, 4294967295u), vec2<bool>(true, false)), vec2<f32>(-1009f, -804f)));

var<private> global3: array<u32, 17> = array<u32, 17>(4294967295u, 1u, 4294967295u, 0u, 1u, 97795u, 98649u, 4294967295u, 4303u, 1u, 33383u, 11863u, 0u, 21093u, 4294967295u, 0u, 4294967295u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec2<u32> {
    var var_0 = select(!(!vec3<bool>(global2.c.c.a, -1772f <= global2.c.e.x, true)), global2.c.c.b, vec3<bool>(!(any(global2.c.c.b) || global2.c.b.a), true, true));
    let var_1 = u_input.e;
    var var_2 = Struct_1(all(vec3<bool>(any(select(vec4<bool>(var_0.x, true, true, false), vec4<bool>(false, false, global2.c.d.b.x, var_0.x), true)), false, any(vec4<bool>(false, var_0.x, var_0.x, global2.c.b.b.x)))), vec3<bool>(any(!vec4<bool>(false, global2.c.c.b.x, true, global2.c.b.b.x)), false, global2.c.c.d.x), u_input.c, vec2<bool>(true, true));
    var_2 = global2.c.c;
    var var_3 = u_input.c.yx;
    return vec2<u32>(firstTrailingBit(0u), ~_wgslsmith_dot_vec2_u32(global2.c.d.c.xz, u_input.c.yx));
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_2, arg_3: u32) -> vec3<i32> {
    let var_0 = Struct_5(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 11953u)), global2.b, Struct_2(-1000f, arg_2.d, arg_2.c, Struct_1(all(!vec4<bool>(true, true, arg_2.c.d.x, true)), arg_2.c.b, global2.c.b.c, vec2<bool>(global2.c.b.b.x, arg_2.c.c.x > 22957u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(280f, arg_2.e.x), vec2<f32>(-1877f, arg_2.e.x)))) + arg_2.e)));
    var var_1 = !var_0.c.c.d.x;
    var var_2 = Struct_4(_wgslsmith_sub_vec3_i32(abs(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, 1i, 55684i), vec3<i32>(arg_1, -11765i, 2147483647i)), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, -2147483647i, 1i), vec3<i32>(arg_1, u_input.b, arg_1)))), reverseBits(countOneBits(~vec3<i32>(u_input.a.x, 85407i, -1i)))), var_0.c, Struct_3(abs(u_input.c.x | ~38424u), ~92608u), Struct_3(abs(arg_2.d.c.x), ~_wgslsmith_dot_vec2_u32(func_3(), ~arg_2.b.c.xx)), ~_wgslsmith_div_u32(countOneBits(global3[_wgslsmith_index_u32(4294967295u, 17u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, arg_3, var_0.c.d.c.x, 47292u) >> (vec4<u32>(u_input.c.x, arg_2.d.c.x, global0[_wgslsmith_index_u32(arg_3, 11u)], 1u) % vec4<u32>(32u)), ~vec4<u32>(arg_0.x, u_input.c.x, 1u, arg_2.c.c.x))));
    var var_3 = global2.b;
    var var_4 = global2.c.c.b.x;
    return var_2.a;
}

fn func_1() -> Struct_1 {
    global3 = array<u32, 17>();
    var var_0 = Struct_4(~min(min(vec3<i32>(0i, -20056i, u_input.a.x), vec3<i32>(80821i, 1i, -1i)), func_2(vec2<u32>(29788u, u_input.c.x), u_input.b, global2.c, 4294967295u)) >> (~(~(global2.c.d.c ^ global2.c.b.c)) % vec3<u32>(32u)), Struct_2(-131f, Struct_1(!(global2.c.b.d.x == global2.c.d.a), select(global2.c.d.b, select(vec3<bool>(global2.c.d.b.x, true, false), global2.c.c.b, global2.c.d.b), !vec3<bool>(true, global2.c.c.a, global2.c.b.d.x)), _wgslsmith_clamp_vec3_u32(u_input.c, vec3<u32>(55561u, global3[_wgslsmith_index_u32(0u, 17u)], 32347u), vec3<u32>(global0[_wgslsmith_index_u32(1u, 11u)], 0u, 22129u)) ^ ~vec3<u32>(4294967295u, u_input.c.x, 1u), select(vec2<bool>(false, false), select(global2.c.b.d, vec2<bool>(true, global2.c.d.a), vec2<bool>(global2.c.b.d.x, false)), any(vec4<bool>(false, global2.c.d.a, global2.c.c.d.x, true)))), global2.c.d, global2.c.c, vec2<f32>(-1606f, _wgslsmith_f_op_f32(f32(-1f) * -1578f))), global2.b, global2.b, min(~reverseBits(global2.a), ~50754u));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-var_0.b.e.x), Struct_1(true, var_0.b.b.b, firstTrailingBit(vec3<u32>(_wgslsmith_mod_u32(1u, 4294967295u), global2.c.d.c.x ^ 6374u, ~45023u)), vec2<bool>(all(vec2<bool>(var_0.b.d.a, global2.c.c.d.x)), true)), global2.c.b, Struct_1(u_input.c.x == countOneBits(global1[_wgslsmith_index_u32(u_input.c.x, 9u)]), vec3<bool>(-var_0.a.x > -u_input.a.x, _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(4294967295u, 9u)], 19692u) > global2.b.b, all(select(vec4<bool>(true, false, global2.c.d.b.x, true), vec4<bool>(false, global2.c.c.d.x, var_0.b.c.b.x, false), false))), vec3<u32>(global1[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(~u_input.c.x, 11u)]), 9u)], 0u, 34488u), vec2<bool>(select(global2.c.d.d.x, global2.c.d.b.x, true), true)), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1778f))), _wgslsmith_f_op_f32(-var_0.b.a)));
    let var_2 = ~_wgslsmith_mod_i32(~(~_wgslsmith_mod_i32(-1i, var_0.a.x)), _wgslsmith_div_i32(0i, var_0.a.x));
    let var_3 = select(_wgslsmith_dot_vec3_u32(abs(u_input.c), firstTrailingBit(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(var_1.d.c.x, 11u)], global3[_wgslsmith_index_u32(u_input.c.x, 17u)]))) << (32313u % 32u), ~(4294967295u ^ _wgslsmith_div_u32(~25691u, var_1.b.c.x)), true);
    return global2.c.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(global2.c.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1656f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1236f * _wgslsmith_f_op_f32(f32(-1f) * -310f)))), -414f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-963f - _wgslsmith_div_f32(-974f, -907f))))));
    var var_1 = !global2.c.b.d;
    let var_2 = func_1();
    var_1 = !vec2<bool>(!(u_input.a.x <= countOneBits(u_input.d)), all(vec3<bool>(true, all(vec4<bool>(global2.c.c.b.x, true, var_1.x, false)), var_1.x)));
    var var_3 = _wgslsmith_mod_vec2_i32(vec2<i32>(0i, ~max(1i, abs(u_input.b))), _wgslsmith_clamp_vec2_i32(~(vec2<i32>(u_input.e.x, u_input.d) >> (global2.c.d.c.zx % vec2<u32>(32u))) << (abs(~var_2.c.xx) % vec2<u32>(32u)), -vec2<i32>(~u_input.b, firstTrailingBit(-48627i)), ~vec2<i32>(-2147483647i, -13058i)));
    var var_4 = Struct_3(9708u, global2.b.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, ~(~abs(var_3.x)));
}

