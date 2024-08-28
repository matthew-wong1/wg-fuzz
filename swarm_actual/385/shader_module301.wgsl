struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: i32;

var<private> global2: Struct_3 = Struct_3(vec3<f32>(556f, 1233f, 568f), Struct_1(vec2<i32>(-36731i, 1i), vec3<f32>(183f, -473f, 1000f), vec3<i32>(-4569i, -9552i, 1i), vec2<bool>(true, true), 96919u));

var<private> global3: Struct_2 = Struct_2(Struct_1(vec2<i32>(1i, 1i), vec3<f32>(181f, 226f, -380f), vec3<i32>(2147483647i, 1i, -2632i), vec2<bool>(false, true), 1u), true, 22155i, 1u, false);

var<private> global4: Struct_5 = Struct_5(vec2<i32>(-10029i, 23473i));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> f32 {
    let var_0 = vec3<u32>(global3.d, _wgslsmith_add_u32(global3.a.e << (~global3.a.e % 32u), global3.d), reverseBits(global2.b.e)) | ~(reverseBits(~vec3<u32>(global2.b.e, global2.b.e, 4294967295u)) & ~(vec3<u32>(global3.d, global3.d, 19843u) | vec3<u32>(135u, 33027u, global3.a.e)));
    let var_1 = ~min(vec4<i32>(~(1i ^ global4.a.x), _wgslsmith_sub_i32(~0i, _wgslsmith_add_i32(global4.a.x, 38757i)), global3.c, global2.b.c.x), abs(vec4<i32>(0i, global4.a.x, select(global2.b.c.x, 0i, true), global4.a.x)));
    let var_2 = var_0;
    global4 = Struct_5(_wgslsmith_clamp_vec2_i32(~vec2<i32>(global4.a.x, ~global4.a.x), var_1.xy, vec2<i32>(~(~(-45894i)), _wgslsmith_add_i32(global3.c, -global3.a.a.x))));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -397f);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -712f), var_3) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -135f), _wgslsmith_f_op_f32(sign(global3.a.b.x))))));
}

fn func_2() -> vec3<i32> {
    var var_0 = _wgslsmith_add_vec2_i32(global3.a.a, min(global4.a, vec2<i32>(global2.b.c.x, global3.c) | (vec2<i32>(global2.b.a.x, global2.b.a.x) & vec2<i32>(0i, global3.a.a.x)))) >> (vec2<u32>(1u, countOneBits(8312u) & (global2.b.e << (1u % 32u))) % vec2<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2563f, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(ceil(843f)), _wgslsmith_f_op_f32(floor(global3.a.b.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(677f, global2.b.b.x, 1028f, global3.a.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-863f, 1083f, -846f, -592f), vec4<f32>(global3.a.b.x, -1600f, global3.a.b.x, global3.a.b.x)))))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x))), _wgslsmith_f_op_f32(sign(-1000f)));
    let var_3 = Struct_1(_wgslsmith_add_vec2_i32(countOneBits(firstLeadingBit(-vec2<i32>(var_0.x, global4.a.x))), ~global2.b.c.yz), _wgslsmith_f_op_vec3_f32(vec3<f32>(558f, -1000f, 729f) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, global2.a.x, -1417f) * global2.b.b))))), _wgslsmith_mod_vec3_i32(-global3.a.c, vec3<i32>(select(-9518i, _wgslsmith_dot_vec4_i32(vec4<i32>(global3.c, 62329i, 2147483647i, global2.b.a.x), vec4<i32>(35141i, global3.a.a.x, -2147483647i, var_0.x)), all(vec3<bool>(global3.a.d.x, true, true))), 2147483647i, -global2.b.c.x)), global3.a.d, 4294967295u);
    global1 = -67702i;
    return _wgslsmith_add_vec3_i32(var_3.c, global2.b.c);
}

fn func_1(arg_0: bool, arg_1: Struct_5) -> vec2<bool> {
    var var_0 = -1266f;
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(-699f, global2.b.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1594f - 1075f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.b.x + 287f))), global2.a)), Struct_1(min(-vec2<i32>(arg_1.a.x, global3.a.c.x), ~vec2<i32>(16415i, global3.c)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-526f)), 244f), global3.a.b.x, _wgslsmith_f_op_f32(f32(-1f) * -455f)), -func_2(), global2.b.d, abs(1u)));
    let var_2 = (((_wgslsmith_add_vec3_u32(vec3<u32>(global3.a.e, u_input.a, 1u), vec3<u32>(31630u, 4294967295u, global2.b.e)) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, global2.b.e, 53675u), vec3<u32>(1u, 5009u, u_input.a)) % vec3<u32>(32u))) & vec3<u32>(global3.d, global3.a.e, select(4294967295u, 4294967295u, true))) ^ _wgslsmith_mod_vec3_u32(min(vec3<u32>(global2.b.e, global3.a.e, global3.a.e), vec3<u32>(global3.d, global2.b.e, 19776u) | vec3<u32>(var_1.b.e, global2.b.e, global2.b.e)), ~vec3<u32>(u_input.a, 33188u, 1u) ^ (vec3<u32>(global2.b.e, 60152u, var_1.b.e) | vec3<u32>(0u, var_1.b.e, global3.d)))) ^ ~(~abs(vec3<u32>(var_1.b.e, u_input.a, 55008u)) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(var_1.b.e, var_1.b.e, global2.b.e), abs(vec3<u32>(global2.b.e, 14012u, 8744u))));
    var_0 = 1f;
    var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1708f * -914f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(392f, global2.b.b.x))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(266f, 868f, -1009f) * vec3<f32>(-1026f, -1076f, global2.b.b.x)))))), global2.b);
    return vec2<bool>((~(~global3.a.a.x) != ((global2.b.a.x >> (1u % 32u)) << (~var_2.x % 32u))) | arg_0, !(((global3.a.b.x == 857f) | true) | select(global3.e, !global2.b.d.x, all(vec3<bool>(true, arg_0, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(all(func_1(all(vec2<bool>(false, global3.a.d.x)), Struct_5(vec2<i32>(global4.a.x, -10326i)))), global3.b);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1321f))) - global2.b.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(431f * 290f), global2.a.x));
    let var_2 = ~(-33695i);
    global0 = ~global3.c;
    global1 = _wgslsmith_div_i32(29033i, -3201i);
    let x = u_input.a;
    s_output = StorageBuffer(min(~select(_wgslsmith_mult_u32(u_input.a, 1u), global3.d, global2.b.d.x), select(49414u, abs(_wgslsmith_mod_u32(global2.b.e, 0u)), u_input.b >= 28045u)), abs(~(max(vec2<u32>(global3.d, 1u), vec2<u32>(15513u, 0u)) | firstLeadingBit(vec2<u32>(global2.b.e, 1u)))), var_1.x);
}

