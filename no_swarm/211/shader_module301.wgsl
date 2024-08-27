struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_1(vec3<i32>(0i, -51465i, 22693i), false, 1u, vec4<f32>(735f, -405f, -1234f, 135f)), Struct_2(vec4<bool>(true, true, true, true), Struct_1(vec3<i32>(-1i, 1i, -1i), false, 0u, vec4<f32>(-2083f, -909f, -246f, -106f)), Struct_1(vec3<i32>(-6219i, 21010i, 2147483647i), false, 1u, vec4<f32>(-275f, -755f, -152f, 256f))));

var<private> global1: Struct_3 = Struct_3(-34855i, 4294967295u, Struct_1(vec3<i32>(1i, -1i, -41997i), true, 27449u, vec4<f32>(-930f, 1099f, 1010f, 2322f)));

var<private> global2: u32;

var<private> global3: array<i32, 14> = array<i32, 14>(16075i, -1i, 1i, i32(-2147483648), -60168i, -1i, 1i, 2147483647i, i32(-2147483648), i32(-2147483648), -53017i, -1i, 1i, 2147483647i);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    global1 = Struct_3(-15995i, u_input.d.x, global1.c);
    let var_0 = Struct_1(vec3<i32>(-1i) * -u_input.b, true, _wgslsmith_add_u32(global1.c.c, 1u), vec4<f32>(_wgslsmith_f_op_f32(global1.c.d.x + _wgslsmith_f_op_f32(abs(global0.b.c.d.x))), _wgslsmith_f_op_f32(global1.c.d.x * _wgslsmith_f_op_f32(step(-990f, _wgslsmith_div_f32(global0.a.d.x, -371f)))), _wgslsmith_f_op_f32(f32(-1f) * -141f), _wgslsmith_f_op_f32(global0.b.c.d.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.a.d.x))))));
    let var_1 = Struct_4(global1.c, Struct_2(global0.b.a, global0.a, global0.b.b));
    var var_2 = global0.b.a.zxy;
    var var_3 = var_1.a.b;
    return ~_wgslsmith_mult_u32(var_1.a.c, _wgslsmith_add_u32(~global1.c.c, ~4294967295u));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec3<f32>, arg_3: vec3<f32>) -> u32 {
    var var_0 = Struct_3(abs(global3[_wgslsmith_index_u32(110091u, 14u)]), 62272u, global0.a);
    return _wgslsmith_dot_vec4_u32(abs(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.d, vec4<u32>(global0.a.c, 34199u, 4294967295u, 76723u)), vec4<u32>(1u, 20592u, arg_0, arg_0)) | vec4<u32>(~83874u, global1.b | u_input.d.x, abs(global0.b.c.c), firstTrailingBit(global1.c.c))), vec4<u32>(func_3(), min(0u, ~1u), 1u & _wgslsmith_clamp_u32(0u, global1.b, 4294967295u), (global1.b >> (31515u % 32u)) | _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(global1.b, 14986u, 4294967295u, 20227u))) << (_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, 33834u, _wgslsmith_div_u32(global1.b, u_input.a.x), select(39263u, 1u, global0.b.b.b)), u_input.d | ~u_input.d) % vec4<u32>(32u)));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: u32) -> Struct_1 {
    var var_0 = Struct_3(u_input.c.x, arg_1.c, Struct_1(_wgslsmith_sub_vec3_i32(u_input.b ^ ~vec3<i32>(2147483647i, -2147483647i, -14321i), vec3<i32>(arg_1.a.x, global1.c.a.x >> (arg_1.c % 32u), global1.a >> (u_input.a.x % 32u))), global1.c.b, _wgslsmith_mod_u32(global1.b, ~_wgslsmith_mod_u32(arg_1.c, arg_0)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.b.c.d.x)) * -1518f), _wgslsmith_f_op_f32(-1279f * _wgslsmith_f_op_f32(-global0.b.c.d.x)), global0.b.c.d.x, global0.a.d.x)));
    global1 = Struct_3(countOneBits(var_0.a), reverseBits(var_0.b), global1.c);
    let var_1 = Struct_4(Struct_1(-var_0.c.a, any(global0.b.a), global1.c.c, _wgslsmith_f_op_vec4_f32(-global0.b.c.d)), Struct_2(vec4<bool>(firstTrailingBit(0i) > global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(22952u, 1u, var_0.b, 1u)), 14u)], any(!vec4<bool>(false, global0.a.b, arg_1.b, true)), global0.a.b, true), Struct_1(_wgslsmith_add_vec3_i32(~vec3<i32>(-1i, 1i, -30095i), vec3<i32>(var_0.c.a.x, 11067i, arg_1.a.x)), !(14694u != arg_1.c), reverseBits(8235u), arg_1.d), arg_1));
    var var_2 = var_1.b;
    let var_3 = 5656u;
    return Struct_1(select(global1.c.a ^ abs(firstLeadingBit(u_input.b)), ~vec3<i32>(_wgslsmith_sub_i32(global1.c.a.x, global3[_wgslsmith_index_u32(0u, 14u)]), var_0.a, reverseBits(10819i)), var_1.b.a.wwz), any(select(select(var_1.b.a.zwx, var_1.b.a.wxx, arg_1.b), select(vec3<bool>(false, true, var_2.b.b), var_2.a.wwy, var_1.a.b), var_1.b.a.xyx)), _wgslsmith_add_u32(var_3, ~global1.c.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.a.d * vec4<f32>(global1.c.d.x, global0.a.d.x, 1000f, arg_1.d.x)) - vec4<f32>(var_1.a.d.x, -353f, var_2.b.d.x, var_0.c.d.x)))));
}

fn func_1() -> bool {
    global0 = Struct_4(func_4(firstLeadingBit((25964u ^ u_input.a.x) << (4294967295u % 32u)), Struct_1(-countOneBits(vec3<i32>(global3[_wgslsmith_index_u32(u_input.d.x, 14u)], global0.b.b.a.x, 40687i)), global0.b.b.b, u_input.a.x ^ func_2(16985u, global1.c.d.x, global0.b.b.d.zzz, global1.c.d.wzx), _wgslsmith_f_op_vec4_f32(global1.c.d + _wgslsmith_f_op_vec4_f32(vec4<f32>(556f, global1.c.d.x, global1.c.d.x, 1116f) * global0.a.d))), vec2<i32>(abs(-2147483647i >> (0u % 32u)), global3[_wgslsmith_index_u32(firstTrailingBit(global0.b.b.c), 14u)] << (global0.b.c.c % 32u)), ~u_input.a.x), Struct_2(global0.b.a, Struct_1(u_input.c, false, _wgslsmith_dot_vec4_u32(~vec4<u32>(global0.b.c.c, global0.a.c, 12542u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(global0.a.c, 88279u, global0.b.c.c, u_input.a.x), vec4<u32>(u_input.d.x, 23391u, 4294967295u, u_input.d.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-620f, -1000f, global1.c.d.x, 817f)), global1.c.d, !global0.b.a))), global0.b.c));
    global2 = 4294967295u;
    var var_0 = 1000f;
    var var_1 = Struct_3(global3[_wgslsmith_index_u32(~global1.b, 14u)], _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a.xy, u_input.d.xz), abs(u_input.d.yw)), u_input.a.xy), u_input.d.xx), global1.c);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -316f));
    return !((var_1.b ^ ~global0.b.c.c) >= ~(~global0.b.b.c)) & true;
}

fn func_5(arg_0: u32, arg_1: bool) -> Struct_4 {
    return Struct_4(global0.b.c, global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~u_input.d.x, !func_1());
    var var_1 = reverseBits(_wgslsmith_dot_vec2_u32(u_input.d.zz, u_input.d.xw));
    global1 = Struct_3(1i, 56813u, global0.a);
    var var_2 = ~(~global0.a.c);
    var var_3 = Struct_4(func_5(1u, all(select(!var_0.b.a, !var_0.b.a, all(vec2<bool>(global1.c.b, global0.b.b.b))))).b.b, func_5(select(~0u << (global0.b.c.c % 32u), _wgslsmith_dot_vec4_u32(firstTrailingBit(u_input.d), vec4<u32>(var_0.a.c, 2694u, global1.c.c, u_input.d.x)), var_0.b.c.b), global0.b.a.x).b);
    var var_4 = global1.c.a.xz;
    let var_5 = ~4294967295u;
    var_1 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(893u & global0.a.c, 24151u), _wgslsmith_f_op_vec2_f32(step(func_5(var_0.b.b.c, all(var_0.b.a.wxz)).b.c.d.zz, _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(-global1.c.d.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.c.d.x, 1574f), var_3.a.d.xy)))))));
}

