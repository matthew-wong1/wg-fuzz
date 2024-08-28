struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: u32,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-524f, 696f, 694f, -228f);

var<private> global1: vec2<bool> = vec2<bool>(false, false);

var<private> global2: array<u32, 12>;

var<private> global3: Struct_4 = Struct_4(vec2<u32>(1u, 0u), Struct_3(vec4<i32>(20275i, -25059i, -43803i, 2147483647i), vec2<bool>(true, true), 6717u, vec3<u32>(4294967295u, 33901u, 1u), Struct_1(vec2<bool>(true, true), true)), Struct_1(vec2<bool>(true, true), false), vec3<bool>(true, true, true));

var<private> global4: array<Struct_5, 14>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = global3.b.a;
    var var_1 = ((firstLeadingBit(4294967295u) > ~countOneBits(u_input.b)) && !(all(vec4<bool>(false, false, true, global1.x)) || true)) != any(!global3.c.a);
    var var_2 = Struct_2(reverseBits(firstLeadingBit(global3.b.d)), vec4<i32>(_wgslsmith_dot_vec2_i32(-min(vec2<i32>(2147483647i, var_0.x), vec2<i32>(-1i, -11864i)), firstTrailingBit(vec2<i32>(global3.b.a.x, 9060i))), u_input.e, _wgslsmith_dot_vec2_i32(u_input.a.yy, ~var_0.zy), 1i), global3.c);
    var var_3 = global3.b.c;
    var_2 = Struct_2(global3.b.d, min(var_2.b, var_2.b), Struct_1(select(vec2<bool>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1369u, 12u)], 12u)], 12u)] > var_2.a.x, false), var_2.c.a, !(!global3.c.a)), true));
    return 711f;
}

fn func_2() -> vec2<i32> {
    global4 = array<Struct_5, 14>();
    global0 = vec4<f32>(-359f, 573f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(486f + global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(-498f - -944f))))));
    var var_0 = -2147483647i;
    var var_1 = select(!select(!global3.d, vec3<bool>(false, false, true), global3.d), !global3.d, true && global1.x);
    let var_2 = (u_input.c.yz >> (vec2<u32>(6274u, 1u) % vec2<u32>(32u))) ^ u_input.c.zx;
    return vec2<i32>(-abs(global3.b.a.x), global3.b.a.x);
}

fn func_1() -> Struct_3 {
    let var_0 = ~min(global3.b.a.zz, func_2());
    global2 = array<u32, 12>();
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(579f - -891f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -265f)))))));
    global4 = array<Struct_5, 14>();
    return global3.b;
}

fn func_4(arg_0: Struct_3) -> Struct_4 {
    let var_0 = vec2<bool>(544f >= _wgslsmith_f_op_f32(floor(1272f)), true);
    global2 = array<u32, 12>();
    global0 = vec4<f32>(855f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(466f + -387f), _wgslsmith_f_op_f32(f32(-1f) * -170f), true)), _wgslsmith_f_op_f32(-421f - global0.x)) - global0.x), 1054f, global0.x);
    global4 = array<Struct_5, 14>();
    var var_1 = func_1();
    return Struct_4(countOneBits(select(vec2<u32>(_wgslsmith_sub_u32(2126u, arg_0.c), max(1u, 80910u)), ~abs(vec2<u32>(var_1.d.x, u_input.c.x)), global3.c.a)), Struct_3(select(vec4<i32>(_wgslsmith_sub_i32(7520i, 2147483647i), u_input.a.x, var_1.a.x, var_1.a.x << (4294967295u % 32u)), firstTrailingBit(arg_0.a), !vec4<bool>(false, false, var_0.x, global1.x)), vec2<bool>(global3.b.e.b, arg_0.b.x), ~u_input.c.x, global3.b.d, Struct_1(!select(vec2<bool>(false, false), var_0, vec2<bool>(true, var_1.b.x)), var_0.x)), global3.c, global3.d);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<bool>(global1.x, select(global3.b.b.x, !global1.x, u_input.e > (i32(-1i) * -47171i)));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1041f, global0.x, -897f, global0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(189f, -1473f, 103f, 461f) * vec4<f32>(383f, global0.x, global0.x, global0.x))), vec4<f32>(global0.x, -376f, _wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(global0.x * 380f)))));
    global3 = func_4(func_1());
    let var_0 = vec4<f32>(global0.x, _wgslsmith_div_f32(global0.x, 1000f), global0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(global0.x - global0.x)), -795f))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-311f - -455f), _wgslsmith_f_op_f32(var_0.x + global0.x), any(global3.d))), _wgslsmith_div_f32(-520f, _wgslsmith_f_op_f32(var_0.x * var_0.x))))));
    let var_2 = max(_wgslsmith_div_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(67385u, 0u, u_input.d, 11439u), select(vec4<u32>(1u, global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(u_input.d, 12u)], 24244u), vec4<u32>(global2[_wgslsmith_index_u32(29453u, 12u)], global3.b.d.x, global2[_wgslsmith_index_u32(34507u, 12u)], u_input.b), vec4<bool>(true, false, global3.d.x, true))), ~(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 37755u, global2[_wgslsmith_index_u32(u_input.c.x, 12u)], 4294967295u), vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(53655u, 12u)], u_input.c.x, 92451u)) & vec4<u32>(20035u, u_input.b, global2[_wgslsmith_index_u32(global3.a.x, 12u)], 69037u))), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(global2[_wgslsmith_index_u32(0u, 12u)], u_input.b, u_input.c.x, u_input.b)), vec4<u32>(reverseBits(1u), global2[_wgslsmith_index_u32(~func_1().d.x, 12u)], global3.b.d.x | reverseBits(global3.b.c), global3.a.x)));
    var var_3 = global3.b.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(global3.b.a, _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 42182i, u_input.e, -1i), select(global3.b.a, ~vec4<i32>(10855i, u_input.a.x, 29098i, 0i), !vec4<bool>(global3.b.b.x, global1.x, var_3.b, true)))), global0.x);
}

