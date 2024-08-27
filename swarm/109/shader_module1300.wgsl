struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<u32>, 9> = array<vec2<u32>, 9>(vec2<u32>(84439u, 52172u), vec2<u32>(0u, 4294967295u), vec2<u32>(38762u, 4294967295u), vec2<u32>(66173u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(56862u, 1u), vec2<u32>(66220u, 12681u), vec2<u32>(38892u, 43340u), vec2<u32>(46977u, 57755u));

var<private> global2: vec4<f32> = vec4<f32>(-160f, -1621f, 263f, -259f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = !select(true, -arg_0.c.x <= arg_0.c.x, arg_2.a.x) && (_wgslsmith_mult_i32(u_input.c, (arg_1.x | 2147483647i) >> (~arg_0.b % 32u)) <= arg_1.x);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-339f, -416f, global2.x, 271f), vec4<f32>(-1272f, -2041f, arg_0.d.x, arg_0.d.x)))))));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_1) -> Struct_3 {
    let var_0 = 1767f;
    global1 = array<vec2<u32>, 9>();
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(209f, 916f, 1767f, 280f)) - _wgslsmith_f_op_vec4_f32(func_2(Struct_2(u_input.b.x, u_input.a.x, u_input.b.yx, global2.yw), abs(vec4<i32>(-33085i, u_input.b.x, 1i, 35654i)), Struct_1(arg_2.a))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -350f)), _wgslsmith_f_op_f32(trunc(-1382f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))));
    let var_1 = arg_1;
    var var_2 = !(!arg_1.c.a.x && true);
    return Struct_3(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(452f, var_1.a)))), var_1.c);
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_3, arg_3: vec4<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_vec4_f32(func_2(Struct_2(-13630i, u_input.a.x, vec2<i32>(-1038i, u_input.c), global2.xy), -vec4<i32>(u_input.c, u_input.b.x, u_input.c, u_input.b.x), arg_2.c)).x, _wgslsmith_f_op_vec4_f32(func_2(Struct_2(1i, u_input.a.x, vec2<i32>(-1i, u_input.b.x), vec2<f32>(-232f, -510f)), min(vec4<i32>(2147483647i, u_input.c, u_input.c, 1i), vec4<i32>(-1i, u_input.c, u_input.b.x, u_input.b.x)), arg_2.c)).x, _wgslsmith_f_op_f32(f32(-1f) * -426f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global2.x + arg_2.a), 656f, _wgslsmith_f_op_f32(arg_2.b + 1567f))))));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(max(global2.x, _wgslsmith_div_f32(arg_2.a, -935f))), 1505f, _wgslsmith_f_op_f32(-global2.x), var_0.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a)), -589f, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-2399f - -302f)), _wgslsmith_f_op_f32(-var_0.x)))));
    global0 = firstLeadingBit(u_input.b.x);
    var_0 = global2.wyx;
    var var_1 = arg_2;
    return _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~((vec4<u32>(81151u, u_input.a.x, u_input.a.x, u_input.a.x) >> (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 86210u) % vec4<u32>(32u))) << (min(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(2060u, u_input.a.x, u_input.a.x, 63708u)) % vec4<u32>(32u))), vec4<u32>(abs(5928u), _wgslsmith_dot_vec2_u32(u_input.a, ~vec2<u32>(4362u, u_input.a.x)), 6894u, 0u), vec4<u32>(32974u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 74607u), vec3<u32>(33123u, 43326u, u_input.a.x)), firstTrailingBit(33431u)), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(31911u, 42986u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 78350u, u_input.a.x))), 34979u)), ~vec4<u32>(23090u, _wgslsmith_sub_u32(abs(41377u), 0u), u_input.a.x, 71803u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(_wgslsmith_add_vec3_i32(u_input.b, ~max(-u_input.b, -u_input.b)));
    let var_1 = reverseBits(~(~1i));
    var var_2 = global2.x;
    var var_3 = ~var_0;
    var_2 = global2.x;
    let var_4 = abs(~(~countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 0u), vec4<u32>(u_input.a.x, 4294967295u, 15617u, u_input.a.x)))));
    let var_5 = vec4<u32>(31490u, _wgslsmith_dot_vec2_u32(~firstLeadingBit(vec2<u32>(u_input.a.x, u_input.a.x)), firstLeadingBit(select(vec2<u32>(48328u, 1u), var_4.ww, true))) << (var_4.x % 32u), ~(func_3(all(vec2<bool>(true, false)), true, func_1(Struct_4(true), Struct_3(global2.x, 1185f, Struct_1(vec4<bool>(true, true, true, false))), Struct_1(vec4<bool>(true, false, true, true))), vec4<bool>(true, true, true, true)) ^ ~var_4.x), 49213u);
    global1 = array<vec2<u32>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(-32317i, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(global2.wy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x)), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global2.wy, global2.wz) * global2.zz)))), vec2<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2.x - 609f), _wgslsmith_f_op_f32(-global2.x))))));
}

