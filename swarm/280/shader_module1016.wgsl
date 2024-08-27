struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec3<u32>,
    d: Struct_3,
    e: f32,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 8>;

var<private> global1: array<Struct_2, 25>;

var<private> global2: Struct_4;

var<private> global3: array<Struct_4, 4> = array<Struct_4, 4>(Struct_4(Struct_3(1u), Struct_3(1u), vec3<u32>(50608u, 1u, 1u), Struct_3(22135u), 1370f), Struct_4(Struct_3(0u), Struct_3(59576u), vec3<u32>(0u, 1u, 3012u), Struct_3(0u), -185f), Struct_4(Struct_3(4294967295u), Struct_3(66610u), vec3<u32>(15738u, 6560u, 29803u), Struct_3(0u), 111f), Struct_4(Struct_3(4294967295u), Struct_3(45506u), vec3<u32>(62132u, 4294967295u, 8745u), Struct_3(1u), 431f));

var<private> global4: array<vec3<u32>, 20> = array<vec3<u32>, 20>(vec3<u32>(0u, 4520u, 0u), vec3<u32>(1u, 29191u, 37128u), vec3<u32>(14683u, 1u, 0u), vec3<u32>(54378u, 1u, 26554u), vec3<u32>(4294967295u, 69067u, 0u), vec3<u32>(19058u, 4294967295u, 32183u), vec3<u32>(64083u, 4294967295u, 84181u), vec3<u32>(40389u, 1309u, 103381u), vec3<u32>(50433u, 1u, 0u), vec3<u32>(1u, 94382u, 48474u), vec3<u32>(0u, 1u, 1u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(1u, 4294967295u, 19742u), vec3<u32>(0u, 0u, 8685u), vec3<u32>(25617u, 36647u, 1u), vec3<u32>(22201u, 4294967295u, 14880u), vec3<u32>(0u, 1u, 47663u), vec3<u32>(24667u, 13088u, 19863u), vec3<u32>(0u, 51039u, 0u), vec3<u32>(37223u, 1u, 4294967295u));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_4 {
    return global3[_wgslsmith_index_u32(35235u, 4u)];
}

fn func_3(arg_0: Struct_5, arg_1: vec2<bool>, arg_2: Struct_4, arg_3: i32) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(func_2().d.a, 8u)])));
    global2 = arg_2;
    let var_1 = 1i;
    var var_2 = !vec2<bool>(!arg_1.x, false);
    var var_3 = Struct_3(63698u);
    return select(arg_1, select(!arg_1, select(select(arg_1, vec2<bool>(arg_1.x, arg_1.x), true), arg_1, -11818i >= (var_1 >> (arg_0.b.a % 32u))), true), true);
}

fn func_1(arg_0: u32) -> Struct_3 {
    global2 = func_2();
    global4 = array<vec3<u32>, 20>();
    var var_0 = vec2<bool>(any(!vec3<bool>(all(vec4<bool>(true, true, true, false)), true, any(vec4<bool>(false, false, false, true)))), any(select(func_3(Struct_5(2147483647i, global2.a), vec2<bool>(true, true), func_2(), ~(-1i)), vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, false), false))));
    var var_1 = Struct_1(vec4<f32>(810f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.e) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1391f + global2.e) - global2.e)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1678f), _wgslsmith_f_op_f32(-714f - _wgslsmith_f_op_f32(min(global2.e, global2.e)))), -490f));
    global0 = array<vec4<f32>, 8>();
    return global2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~global2.a.a);
    var var_1 = Struct_5(abs(u_input.b.x), global2.b);
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(global0[_wgslsmith_index_u32(countOneBits(13114u), 8u)]));
    global4 = array<vec3<u32>, 20>();
    let var_3 = true;
    let var_4 = ~select(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(4294967295u, var_0.a, 0u, var_1.b.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a, 59659u, 0u, 123701u), vec4<u32>(58373u, 1u, var_0.a, var_1.b.a)) | vec4<u32>(0u, 20397u, 53877u, 27773u), vec4<u32>(select(var_0.a, 0u, var_3), ~4294967295u, ~var_0.a, ~var_0.a)), max(vec4<u32>(var_1.b.a, 0u, 0u, u_input.a.x) ^ vec4<u32>(var_1.b.a, global2.b.a, var_0.a, 34307u), ~vec4<u32>(global2.b.a, 15706u, u_input.a.x, 0u)), var_3);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(441f, 1188f, var_2.x, global2.e)), vec4<f32>(_wgslsmith_f_op_f32(global2.e * global2.e), func_2().e, -747f, global2.e)))), countOneBits((51214i ^ (u_input.b.x >> (u_input.a.x % 32u))) ^ u_input.b.x), firstTrailingBit(_wgslsmith_mult_vec2_i32(u_input.b.zw, vec2<i32>(_wgslsmith_mod_i32(var_1.a, -2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -1i), vec2<i32>(var_1.a, u_input.b.x))))));
}

