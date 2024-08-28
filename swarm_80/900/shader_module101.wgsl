struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: vec4<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_5 {
    a: f32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: Struct_2,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 3889i;

var<private> global1: bool;

var<private> global2: array<bool, 27>;

var<private> global3: Struct_5 = Struct_5(-1131f, vec3<u32>(0u, 1u, 4294967295u), vec2<f32>(-693f, -1667f), Struct_2(Struct_1(false, vec2<bool>(true, false), -1277f, vec4<i32>(31684i, -33303i, 5408i, 2147483647i), 21071u), Struct_1(false, vec2<bool>(true, true), -356f, vec4<i32>(-1i, -54088i, 36239i, i32(-2147483648)), 4294967295u)), vec4<i32>(2147483647i, -9280i, 0i, i32(-2147483648)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    let var_0 = vec2<i32>(1i, _wgslsmith_clamp_i32(7266i, abs(abs(_wgslsmith_sub_i32(41049i, -1i))), u_input.b.x));
    var var_1 = ~(~(global3.d.b.d.x << (global3.d.a.e % 32u))) | -var_0.x;
    let var_2 = ~(~_wgslsmith_div_vec4_u32(vec4<u32>(~global3.d.b.e, firstLeadingBit(29715u), global3.b.x, firstLeadingBit(global3.d.b.e)), ~(~vec4<u32>(global3.b.x, 36787u, global3.d.b.e, 4294967295u))));
    let var_3 = global3.d.b;
    var var_4 = Struct_4(!(!var_3.b), 26592u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.c - global3.d.b.c)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_3.c + 809f), -1029f)), true))));
}

fn func_2() -> Struct_5 {
    var var_0 = countOneBits(~_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(firstLeadingBit(global3.e), _wgslsmith_sub_vec4_i32(global3.d.b.d, vec4<i32>(global3.e.x, -30945i, u_input.a, global3.e.x))), ~countOneBits(vec4<i32>(-51411i, 0i, -2147483647i, -37672i))));
    global3 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), min(vec3<u32>(firstTrailingBit(_wgslsmith_sub_u32(88649u, 16351u)), 0u, _wgslsmith_dot_vec3_u32(global3.b >> (vec3<u32>(4294967295u, global3.b.x, global3.b.x) % vec3<u32>(32u)), vec3<u32>(110657u, global3.b.x, 1u))), ~select(reverseBits(vec3<u32>(27797u, 8505u, global3.b.x)), global3.b, !global2[_wgslsmith_index_u32(4294967295u, 27u)])), global3.c, Struct_2(Struct_1(global3.d.b.a, vec2<bool>(true, true), _wgslsmith_f_op_f32(global3.c.x * _wgslsmith_f_op_f32(f32(-1f) * -1916f)), -global3.e, ~global3.b.x ^ ~4294967295u), Struct_1(false, vec2<bool>(true, true), _wgslsmith_f_op_f32(select(global3.c.x, _wgslsmith_f_op_f32(832f - 1965f), global2[_wgslsmith_index_u32(1u, 27u)])), global3.d.b.d, firstLeadingBit(_wgslsmith_mult_u32(4294967295u, global3.d.a.e)))), -(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(6725i, 26658i, u_input.a, u_input.a)), select(global3.e, vec4<i32>(u_input.b.x, u_input.b.x, global3.e.x, 1i), vec4<bool>(global3.d.a.b.x, global2[_wgslsmith_index_u32(1u, 27u)], global3.d.b.b.x, global2[_wgslsmith_index_u32(global3.d.b.e, 27u)]))) ^ (countOneBits(vec4<i32>(-2350i, global3.d.a.d.x, 1i, u_input.b.x)) | global3.e)));
    var var_1 = vec3<u32>(0u, ~(38653u >> (global3.b.x % 32u)), ~global3.d.b.e);
    var var_2 = Struct_2(global3.d.a, Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(var_1.x, 66415u)), 27u)], global3.d.a.b, 864f, ~global3.e, global3.b.x));
    let var_3 = vec4<bool>(global2[_wgslsmith_index_u32(0u, 27u)], !var_2.a.a | (all(vec3<bool>(false, global3.d.b.a, false)) && global3.d.b.b.x), true, !(!((81556u & global3.d.a.e) != 36537u)));
    return Struct_5(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1084f, _wgslsmith_f_op_f32(-global3.d.a.c)))), ~(~firstTrailingBit(~vec3<u32>(0u, 22997u, var_2.a.e))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global3.c)) - global3.c), Struct_2(Struct_1(select(true, true, false & var_2.a.b.x), select(vec2<bool>(true, true), select(var_2.a.b, var_2.b.b, global3.d.b.b), var_3.x || var_3.x), -483f, firstTrailingBit(reverseBits(var_2.b.d)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.e, global3.b.x, 1u, 0u), vec4<u32>(global3.d.b.e, var_1.x, 1u, var_1.x))), global3.d.b), vec4<i32>(var_2.b.d.x, 7942i, 1i, countOneBits(~(~global3.d.a.d.x))));
}

fn func_1() -> i32 {
    var var_0 = -174f;
    global0 = u_input.a;
    global3 = func_2();
    let var_1 = u_input.b;
    global1 = global2[_wgslsmith_index_u32(global3.b.x, 27u)];
    return _wgslsmith_dot_vec4_i32(min(-min(reverseBits(global3.e), firstLeadingBit(global3.e)), global3.d.a.d), abs(global3.d.a.d));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = firstTrailingBit(_wgslsmith_add_vec4_u32(~abs(~vec4<u32>(1u, 1u, global3.b.x, 0u)), vec4<u32>(global3.d.b.e, 73405u, global3.b.x, ~(~16248u))));
    global3 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.a))), vec3<u32>(45558u, global3.b.x, var_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.d.a.c, _wgslsmith_f_op_f32(f32(-1f) * -1629f))), Struct_2(Struct_1(any(global3.d.b.b), func_2().d.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -484f) * 116f), countOneBits(vec4<i32>(u_input.b.x, u_input.a, 32835i, 0i)), abs(global3.b.x)), Struct_1(any(vec3<bool>(false, global2[_wgslsmith_index_u32(22167u, 27u)], true)), select(func_2().d.a.b, vec2<bool>(true, false), vec2<bool>(global2[_wgslsmith_index_u32(36137u, 27u)], false)), global3.c.x, countOneBits(select(global3.e, global3.e, true)), global3.b.x)), ~(-vec4<i32>(~(-2147483647i), max(-2147483647i, -2147483647i), ~u_input.b.x, ~1i)));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3.d.a.c * 937f), -1656f));
    let var_2 = func_2().d.b;
    global3 = func_2();
    let var_3 = func_2();
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, var_1))), _wgslsmith_div_f32(-234f, -153f), _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(-448f * 1099f)), _wgslsmith_f_op_f32(global3.c.x + 454f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-1603f * _wgslsmith_div_f32(338f, var_2.c)), -1365f, global3.c.x, 1f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-129f, -1844f, global3.d.b.c, 749f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c, 866f, -2954f, 326f))))), !vec4<bool>(!var_2.b.x, global3.d.b.b.x, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

