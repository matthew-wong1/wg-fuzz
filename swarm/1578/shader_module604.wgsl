struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: u32,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 15>;

var<private> global1: array<vec3<i32>, 14> = array<vec3<i32>, 14>(vec3<i32>(-29067i, -1i, -42192i), vec3<i32>(2147483647i, 2147483647i, 2147483647i), vec3<i32>(-6699i, -5579i, -1i), vec3<i32>(-14375i, -1i, -9005i), vec3<i32>(-23518i, 1i, 39919i), vec3<i32>(2147483647i, 61825i, -45021i), vec3<i32>(2147483647i, 0i, -2242i), vec3<i32>(47376i, 2147483647i, -1i), vec3<i32>(-36700i, -9060i, -1i), vec3<i32>(51731i, -539i, 26696i), vec3<i32>(-1i, 1i, 85019i), vec3<i32>(0i, 0i, 50056i), vec3<i32>(19817i, -1i, 2147483647i), vec3<i32>(10635i, 31332i, -23754i));

var<private> global2: Struct_2;

var<private> global3: vec3<u32> = vec3<u32>(1u, 4294967295u, 4294967295u);

var<private> global4: array<Struct_4, 22>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> Struct_4 {
    return global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(~global3.x, (_wgslsmith_sub_u32(min(u_input.e.x, 1095u), u_input.d.x & global3.x) | (global3.x ^ 7158u)) << (global3.x % 32u)), 22u)];
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: f32) -> i32 {
    let var_0 = Struct_4(vec2<bool>(!(!(1u < global3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2)) + -367f) != _wgslsmith_f_op_f32(1f * 613f)), ~(~(~(~vec2<u32>(global3.x, global3.x)))), u_input.e.x, func_2().d, false);
    global2 = var_0.d;
    global4 = array<Struct_4, 22>();
    let var_1 = arg_1.d.a;
    var var_2 = select(arg_1.e, true, all(select(!(!vec4<bool>(false, true, var_0.e, false)), vec4<bool>(4294967295u <= arg_1.c, all(arg_1.a), any(vec3<bool>(true, true, false)), arg_0.a), vec4<bool>(!var_0.d.a.c, false, true, any(vec4<bool>(true, false, arg_1.a.x, false))))));
    return _wgslsmith_dot_vec2_i32(func_2().d.a.b, firstTrailingBit(-(~global2.a.b) & vec2<i32>(var_1.b.x, arg_1.d.a.b.x | -53434i)));
}

fn func_1() -> vec4<bool> {
    global2 = Struct_2(Struct_1(!(global2.a.a & global2.a.c), vec2<i32>(firstLeadingBit(0i), func_3(Struct_1(global2.a.c, vec2<i32>(-2147483647i, -81951i), false), func_2(), _wgslsmith_f_op_f32(624f - 568f))), any(select(select(vec3<bool>(global2.a.c, true, false), vec3<bool>(true, true, true), false), select(vec3<bool>(global2.a.a, false, false), vec3<bool>(global2.a.c, true, false), vec3<bool>(true, global2.a.a, true)), global2.a.c))));
    return select(vec4<bool>(select(all(vec2<bool>(global2.a.c, global2.a.a)), true, any(vec4<bool>(false, false, global2.a.c, false)) | true), true, !(!all(vec4<bool>(global2.a.a, global2.a.a, global2.a.c, false))), false), select(!(!(!vec4<bool>(global2.a.a, global2.a.a, false, global2.a.c))), vec4<bool>(true, true, any(vec3<bool>(false, global2.a.c, global2.a.a)), !global2.a.a), false), !(!select(select(vec4<bool>(global2.a.c, false, true, false), vec4<bool>(global2.a.a, true, global2.a.a, global2.a.c), vec4<bool>(false, global2.a.a, global2.a.c, global2.a.c)), vec4<bool>(false, global2.a.c, global2.a.a, global2.a.c), global2.a.a & global2.a.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = global0[_wgslsmith_index_u32(global3.x << (u_input.d.x % 32u), 15u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1069f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(816f - 373f), 731f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(393f - 708f) + -1517f), 1f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-285f, 1f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1647f))))));
    let var_3 = abs(u_input.d.yzx);
    var var_4 = func_2();
    let var_5 = 0u;
    global0 = array<Struct_3, 15>();
    let var_6 = Struct_4(var_4.a, select(_wgslsmith_clamp_vec2_u32(vec2<u32>(global3.x, var_3.x), vec2<u32>(var_4.b.x, var_1.a) >> (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u)), vec2<u32>(var_5, var_4.b.x)), func_2().b, true), ~var_1.a, func_2().d, global2.a.b.x <= -_wgslsmith_mult_i32(var_4.d.a.b.x, 2147483647i));
    var var_7 = select(var_6.c, 0u, all(!(!vec2<bool>(true, var_1.c.a)))) & ~var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(-804f, 23031i, vec4<i32>(-(-var_1.b ^ -2329i), ~var_1.c.b.x, 17393i, global2.a.b.x), abs(_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(16055i, 2147483647i, u_input.b.x, 17772i)), vec4<i32>(reverseBits(65190i), -2147483647i, -2147483647i, 2147483647i | u_input.b.x))));
}

