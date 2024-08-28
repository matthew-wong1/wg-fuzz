struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: Struct_3,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 4>;

var<private> global1: array<bool, 6>;

var<private> global2: Struct_3 = Struct_3(Struct_1(vec2<i32>(-22153i, i32(-2147483648)), vec4<f32>(114f, 1628f, -395f, 160f)), Struct_1(vec2<i32>(0i, -5886i), vec4<f32>(1676f, -1000f, 165f, 852f)), 1109f, Struct_2(vec3<f32>(788f, -1317f, -371f), i32(-2147483648), -338f));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    let var_0 = global2.b;
    let var_1 = ~_wgslsmith_clamp_vec3_i32(vec3<i32>(reverseBits(-2147483647i), _wgslsmith_mult_i32(global2.d.b, global2.d.b), global2.b.a.x), _wgslsmith_mod_vec3_i32(vec3<i32>(abs(63787i), 1i, u_input.b), select(select(vec3<i32>(4973i, global2.d.b, 2147483647i), vec3<i32>(39497i, 22375i, 1i), true), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, u_input.b, var_0.a.x), vec3<i32>(u_input.b, -2147483647i, 7455i)), select(vec3<bool>(false, global1[_wgslsmith_index_u32(15345u, 6u)], global1[_wgslsmith_index_u32(u_input.c.x, 6u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(5158u, 6u)], false), vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 6u)], false)))), _wgslsmith_mod_vec3_i32(vec3<i32>(-24160i, ~var_0.a.x, _wgslsmith_sub_i32(40091i, var_0.a.x)), vec3<i32>(var_0.a.x >> (u_input.a.x % 32u), 1i, min(0i, u_input.b))));
    var var_2 = false && (all(select(select(vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 6u)]), vec2<bool>(false, true), global1[_wgslsmith_index_u32(u_input.d, 6u)]), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(1u, 6u)]), false)) | ((global2.d.b & u_input.b) > firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, var_0.a.x, -19893i, var_1.x), vec4<i32>(-1i, 0i, var_1.x, u_input.b)))));
    global0 = array<vec4<f32>, 4>();
    global1 = array<bool, 6>();
    return select(!(!global1[_wgslsmith_index_u32(countOneBits(27489u) | firstLeadingBit(u_input.c.x), 6u)]), min(i32(-1i) * -26947i, max(select(global2.b.a.x, u_input.b, false), abs(var_0.a.x))) == -var_0.a.x, !global1[_wgslsmith_index_u32(61400u, 6u)]);
}

fn func_4(arg_0: bool, arg_1: bool) -> i32 {
    global1 = array<bool, 6>();
    global1 = array<bool, 6>();
    global0 = array<vec4<f32>, 4>();
    global0 = array<vec4<f32>, 4>();
    global1 = array<bool, 6>();
    return u_input.b;
}

fn func_2() -> Struct_1 {
    global1 = array<bool, 6>();
    global1 = array<bool, 6>();
    let var_0 = u_input.d;
    global1 = array<bool, 6>();
    let var_1 = global2.d;
    return Struct_1(vec2<i32>(-global2.d.b, _wgslsmith_add_i32(global2.b.a.x, -21916i) ^ func_4(func_3(), false)), vec4<f32>(-450f, var_1.a.x, -559f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) + var_1.a.x)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> bool {
    global1 = array<bool, 6>();
    let var_0 = select(vec2<bool>(true, global1[_wgslsmith_index_u32(13797u, 6u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(~u_input.d, 6u)], all(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.d, 6u)], false))), vec2<bool>(select(global1[_wgslsmith_index_u32(~u_input.c.x, 6u)], true, !global1[_wgslsmith_index_u32(604u, 6u)]), true), global1[_wgslsmith_index_u32(u_input.a.x, 6u)]), select(vec2<bool>(func_3(), false), select(vec2<bool>(true, false), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 6u)], global1[_wgslsmith_index_u32(u_input.a.x, 6u)]), global1[_wgslsmith_index_u32(u_input.a.x, 6u)]), global1[_wgslsmith_index_u32(78773u, 6u)]));
    var var_1 = global2.b.a.x;
    let var_2 = vec2<bool>(!var_0.x, true & (!any(vec4<bool>(false, global1[_wgslsmith_index_u32(73751u, 6u)], true, var_0.x)) || select(false, arg_0.b.x != arg_0.b.x, true)));
    global2 = Struct_3(arg_0, Struct_1(arg_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(arg_0.b, global2.b.b)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * global2.d.c) * _wgslsmith_f_op_f32(abs(-1422f))), global2.c, all(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 6u)], true), vec2<bool>(false, true), vec2<bool>(false, false))))))), Struct_2(arg_1.a, _wgslsmith_sub_i32(func_4(any(vec4<bool>(false, var_2.x, true, global1[_wgslsmith_index_u32(12766u, 6u)])), var_0.x), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(5582i, arg_0.a.x, global2.d.b), _wgslsmith_add_i32(global2.d.b, arg_1.b), 2868i | arg_1.b)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -498f)), _wgslsmith_f_op_f32(abs(arg_1.c))))));
    return !var_2.x;
}

fn func_1(arg_0: vec4<u32>) -> i32 {
    global2 = Struct_3(global2.b, global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.b.x)), Struct_2(global2.a.b.zww, min(~23934i, max(global2.a.a.x, 21514i)) | u_input.b, -504f));
    let var_0 = Struct_4(func_5(func_2(), Struct_2(_wgslsmith_f_op_vec3_f32(global2.d.a * global2.b.b.xwy), _wgslsmith_clamp_i32(u_input.b << (u_input.c.x % 32u), u_input.b, func_2().a.x), _wgslsmith_f_op_f32(trunc(global2.c)))), u_input.b, Struct_3(Struct_1(global2.b.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(872f, -305f, -1507f, global2.b.b.x))), Struct_1(vec2<i32>(u_input.b, ~(-23139i)), global2.b.b), 748f, global2.d), ~0i, u_input.b < -2509i);
    let var_1 = Struct_3(Struct_1(select(vec2<i32>(-1i, -2147483647i) ^ var_0.c.b.a, -(var_0.c.b.a << (u_input.a.zz % vec2<u32>(32u))), select(vec2<bool>(true, true), vec2<bool>(true, true), false || global1[_wgslsmith_index_u32(16057u, 6u)])), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(353f, global2.d.c, -562f, global2.a.b.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.a.b.x, 926f, 2311f, global2.c) + vec4<f32>(-450f, -332f, global2.c, var_0.c.c))), global2.a.b, !select(var_0.e, false, false)))), var_0.c.a, _wgslsmith_f_op_f32(abs(-699f)), var_0.c.d);
    global0 = array<vec4<f32>, 4>();
    let var_2 = 1391f;
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_i32(_wgslsmith_add_i32(countOneBits(select(~0i, global2.a.a.x | u_input.b, any(vec3<bool>(global1[_wgslsmith_index_u32(16726u, 6u)], global1[_wgslsmith_index_u32(1u, 6u)], false)))), 57630i), u_input.b, func_1(countOneBits(firstTrailingBit(vec4<u32>(0u, 0u, u_input.d, u_input.a.x))) & ~u_input.a));
    global0 = array<vec4<f32>, 4>();
    var var_1 = ~u_input.c.x;
    global1 = array<bool, 6>();
    var var_2 = vec4<u32>(abs(16728u), firstTrailingBit(u_input.d), 1u, 8959u);
    var var_3 = global1[_wgslsmith_index_u32(~1u, 6u)];
    let var_4 = global2.a.a.x;
    global0 = array<vec4<f32>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.b.b.x)) * global2.b.b.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-682f * global2.b.b.x), _wgslsmith_div_f32(1030f, global2.b.b.x), !global1[_wgslsmith_index_u32(var_2.x, 6u)]))), _wgslsmith_div_f32(-2103f, global2.a.b.x)), 4294967295u);
}

