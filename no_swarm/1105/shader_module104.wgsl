struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 19> = array<vec2<u32>, 19>(vec2<u32>(40897u, 4294967295u), vec2<u32>(29244u, 22404u), vec2<u32>(4294967295u, 75362u), vec2<u32>(4294967295u, 28370u), vec2<u32>(23765u, 1u), vec2<u32>(31175u, 0u), vec2<u32>(56787u, 28815u), vec2<u32>(0u, 92398u), vec2<u32>(1u, 0u), vec2<u32>(3644u, 615u), vec2<u32>(12193u, 0u), vec2<u32>(4294967295u, 32560u), vec2<u32>(4294967295u, 7398u), vec2<u32>(1u, 1u), vec2<u32>(48414u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(7368u, 7376u), vec2<u32>(10564u, 1u));

var<private> global1: array<Struct_3, 16>;

var<private> global2: array<Struct_4, 7>;

var<private> global3: Struct_2 = Struct_2(Struct_1(vec2<u32>(101248u, 1u), vec2<f32>(-2726f, 1029f), 1i, vec4<bool>(false, false, false, false)), 2147483647i, Struct_1(vec2<u32>(123922u, 1u), vec2<f32>(-378f, 1125f), 16509i, vec4<bool>(false, true, true, true)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_5, arg_1: bool, arg_2: i32) -> vec2<f32> {
    global1 = array<Struct_3, 16>();
    global2 = array<Struct_4, 7>();
    var var_0 = all(global3.a.d);
    var var_1 = max(global3.a.c, ~(select(global3.a.c, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, 2147483647i, -1i, arg_0.d.a.c), vec4<i32>(23427i, 2147483647i, global3.a.c, u_input.b)), any(vec3<bool>(arg_0.b.a.a.d.x, true, false))) & arg_2));
    var_1 = -arg_2;
    return global3.a.b;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: i32) -> bool {
    let var_0 = Struct_5(!any(vec3<bool>(!arg_0, global3.a.d.x, true)), Struct_3(Struct_2(global3.a, global3.a.c, global3.a), vec4<i32>(1i, ~(-arg_2), abs(2147483647i), -8334i), _wgslsmith_div_f32(_wgslsmith_div_f32(-765f, arg_1), global3.c.b.x), global3.a), global1[_wgslsmith_index_u32(max(26382u, reverseBits(1u) & global3.a.a.x), 16u)], Struct_2(global3.a, 0i, Struct_1(~vec2<u32>(4294967295u, 79858u), _wgslsmith_f_op_vec2_f32(func_3(Struct_5(global3.a.d.x, Struct_3(Struct_2(Struct_1(vec2<u32>(u_input.c.x, u_input.c.x), global3.a.b, u_input.b, global3.a.d), -22327i, Struct_1(vec2<u32>(0u, 1u), vec2<f32>(global3.c.b.x, arg_1), global3.b, vec4<bool>(arg_0, true, false, arg_0))), vec4<i32>(39581i, global3.a.c, 2147483647i, -14886i), -1617f, Struct_1(vec2<u32>(0u, 47001u), vec2<f32>(1184f, -1000f), arg_2, vec4<bool>(global3.c.d.x, true, true, global3.a.d.x))), Struct_3(Struct_2(global3.a, arg_2, global3.c), vec4<i32>(u_input.b, u_input.b, 20548i, global3.b), 1165f, global3.a), Struct_2(Struct_1(u_input.c, global3.c.b, -7551i, global3.c.d), 2147483647i, Struct_1(vec2<u32>(global3.c.a.x, 72024u), global3.a.b, -1i, global3.a.d))), all(vec2<bool>(false, true)), global3.c.c)), abs(max(global3.b, u_input.b)), !(!vec4<bool>(arg_0, true, global3.c.d.x, false)))));
    var var_1 = reverseBits(global3.c.a);
    let var_2 = Struct_2(global3.c, reverseBits(-max(arg_2, 2147483647i)), var_0.d.c);
    var var_3 = ~(~(~u_input.a.xy & vec2<u32>(0u, 0u)) | max(_wgslsmith_add_vec2_u32(vec2<u32>(var_2.a.a.x, 4294967295u) >> (vec2<u32>(52295u, 41270u) % vec2<u32>(32u)), abs(vec2<u32>(u_input.a.x, 52376u))), select(~vec2<u32>(487u, global3.c.a.x), vec2<u32>(var_2.a.a.x, 1u), select(var_0.b.d.d.xw, var_2.a.d.xz, vec2<bool>(var_2.a.d.x, true)))));
    global3 = var_2;
    return false;
}

fn func_4(arg_0: bool) -> Struct_5 {
    global2 = array<Struct_4, 7>();
    let var_0 = u_input.b;
    let var_1 = Struct_4(Struct_1(~u_input.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global3.a.b, global3.c.b, vec2<bool>(false, false))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.c.b.x, 1147f) - vec2<f32>(-1144f, -1000f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(2313f, -512f), vec2<f32>(global3.c.b.x, global3.c.b.x))) - global3.c.b)), u_input.b, !select(vec4<bool>(global3.a.d.x, false, arg_0, false), select(global3.a.d, global3.a.d, global3.a.d.x), global3.c.d)));
    var var_2 = global3.a.b;
    let var_3 = global3.c.b.x;
    return Struct_5(false, global1[_wgslsmith_index_u32(var_1.a.a.x, 16u)], global1[_wgslsmith_index_u32(~countOneBits(0u), 16u)], Struct_2(var_1.a, max(-2147483647i, -max(var_1.a.c, 0i)), var_1.a));
}

fn func_1() -> Struct_4 {
    let var_0 = func_4(func_2(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-354f))) + _wgslsmith_f_op_f32(global3.a.b.x - global3.a.b.x)), min(firstTrailingBit(-u_input.b), -36580i)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(303f + _wgslsmith_f_op_f32(-var_0.b.c)));
    global3 = func_4(false).d;
    var var_2 = ~var_0.c.b;
    var var_3 = var_0.d;
    return global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global3.a.a.x, min(global3.a.a.x | global3.c.a.x, u_input.a.x) << (select(u_input.c.x, 1u, var_0.b.a.c.d.x) % 32u)), 7u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = 11804i;
    let var_2 = func_4(true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(-abs(_wgslsmith_sub_vec4_i32(var_2.c.b, var_2.c.b)), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i >> (global3.a.a.x % 32u), -u_input.b, u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, var_1, var_1, var_0.a.c), var_2.c.b)), vec4<i32>(var_0.a.c | var_2.c.b.x, ~var_0.a.c, global3.b, ~var_0.a.c)), var_2.b.b), -41214i, ~(select(reverseBits(vec2<u32>(global3.c.a.x, u_input.a.x)), ~var_0.a.a, select(vec2<bool>(false, false), vec2<bool>(false, global3.c.d.x), var_0.a.d.x)) >> (vec2<u32>(u_input.a.x, ~38786u) % vec2<u32>(32u))), -firstTrailingBit(min(-vec3<i32>(var_1, var_1, 0i), -vec3<i32>(var_0.a.c, global3.a.c, -12919i))), vec2<i32>(firstTrailingBit(_wgslsmith_mult_i32(-2147483647i, _wgslsmith_clamp_i32(global3.a.c, var_1, var_0.a.c))), -10172i));
}

