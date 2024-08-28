struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: vec3<bool>,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: Struct_3,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32> = array<f32, 32>(-436f, 340f, -655f, -1062f, 502f, 291f, 227f, -584f, 763f, 264f, -1568f, 1200f, 1363f, -420f, 165f, -1262f, 1564f, -783f, 216f, 333f, 555f, -710f, -274f, 800f, 204f, -1710f, -2397f, -1000f, 577f, -137f, -628f, 748f);

var<private> global1: f32 = 704f;

var<private> global2: u32;

var<private> global3: array<Struct_3, 19>;

var<private> global4: Struct_4;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.c.a, 1080f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0[_wgslsmith_index_u32(u_input.e, 32u)], 1000f))) - vec2<f32>(global0[_wgslsmith_index_u32(u_input.e, 32u)], global4.c.a)), all(select(vec4<bool>(global4.d, global4.c.e.b, global4.e.x, global4.c.c.x), vec4<bool>(global4.c.e.b, true, true, global4.b.a.b), true))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(578f, _wgslsmith_f_op_f32(1303f + -107f)) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(global4.c.e.c.xz + vec2<f32>(-1128f, global0[_wgslsmith_index_u32(1553u, 32u)])), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-538f, 261f), global4.c.e.c.yy, vec2<bool>(true, false)))))), global4.c.e.c.xx)), true));
    global0 = array<f32, 32>();
    var var_1 = _wgslsmith_div_i32(2147483647i, -1i);
    global4 = Struct_4(u_input.a, Struct_2(global4.c.e), global4.c, any(!select(vec2<bool>(true, true), global4.e.zy, !global4.e.zx)), select(!select(vec3<bool>(global4.c.c.x, true, false), !global4.c.c, global4.c.c.x), !(!select(global4.c.c, vec3<bool>(false, global4.e.x, global4.b.a.b), global4.c.c)), !vec3<bool>(!global4.b.a.b, global4.d & true, global4.e.x)));
    let var_2 = Struct_4(u_input.a, Struct_2(global4.c.e), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -265f), countOneBits(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(u_input.c, vec3<u32>(u_input.d, 33557u, 16997u)), _wgslsmith_mod_vec3_u32(vec3<u32>(27203u, global4.c.b.x, 0u), vec3<u32>(52444u, 4294967295u, global4.c.b.x)))), vec3<bool>(!(-143f == var_0.x), true, !(!global4.c.e.b)), _wgslsmith_f_op_f32(trunc(-2621f)), global4.b.a), true, select(!(!global4.c.c), !(!select(global4.c.c, vec3<bool>(global4.e.x, global4.e.x, false), true)), global4.e.x));
    return global4.b.a.b;
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: bool) -> i32 {
    var var_0 = abs(global4.c.b.zz) << (abs(~(u_input.c.yx | ~vec2<u32>(arg_0.b.x, arg_0.b.x))) % vec2<u32>(32u));
    global3 = array<Struct_3, 19>();
    let var_1 = arg_0;
    let var_2 = select(select(select(!select(vec4<bool>(false, global4.e.x, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, var_1.c.x, false, true)), vec4<bool>(true, true, true, true), false), !(!select(vec4<bool>(arg_0.c.x, true, var_1.e.b, arg_2), vec4<bool>(false, var_1.c.x, arg_1, true), vec4<bool>(arg_1, false, global4.b.a.b, true))), !(!vec4<bool>(arg_0.e.b, false, var_1.c.x, var_1.c.x))), select(vec4<bool>(false, false, !(332f == var_1.d), arg_1), select(vec4<bool>(u_input.e == u_input.d, arg_2 != false, all(global4.e.xy), false), !select(vec4<bool>(false, global4.e.x, arg_0.e.b, global4.e.x), vec4<bool>(arg_0.c.x, global4.b.a.b, global4.d, true), false), !select(vec4<bool>(false, true, true, arg_0.e.b), vec4<bool>(arg_0.c.x, true, var_1.c.x, false), global4.e.x)), vec4<bool>(!global4.e.x, all(vec4<bool>(arg_0.e.b, arg_0.e.b, var_1.e.b, true)), arg_1, !(global4.c.b.x != 35772u))), !vec4<bool>(false, arg_0.e.b, arg_0.e.b && true, arg_1));
    let var_3 = !global4.b.a.b;
    return abs(var_1.e.a);
}

fn func_2(arg_0: Struct_3, arg_1: vec4<i32>) -> Struct_1 {
    return Struct_1(func_4(arg_0, arg_0.c.x | func_3(), all(global4.c.c.yx)), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.e.c.x - -844f), _wgslsmith_f_op_f32(trunc(1563f)), _wgslsmith_f_op_f32(min(arg_0.a, arg_0.e.c.x))) - global4.c.e.c)));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_4(-global4.c.e.a, Struct_2(func_2(global3[_wgslsmith_index_u32(~u_input.d, 19u)], ~countOneBits(vec4<i32>(0i, global4.a, global4.b.a.a, u_input.a)))), global3[_wgslsmith_index_u32(u_input.d, 19u)], false, global4.e);
    let var_1 = ~vec4<u32>(var_0.c.b.x, ~(~global4.c.b.x) & global4.c.b.x, _wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 1u), vec3<u32>(u_input.e, 0u, 1u)), _wgslsmith_sub_u32(1u, 27419u & var_0.c.b.x)), _wgslsmith_clamp_u32(1u, u_input.c.x, countOneBits(var_0.c.b.x)));
    let var_2 = -1i;
    var var_3 = !(!all(vec4<bool>(false, var_0.e.x, true, var_0.e.x)) | true);
    var var_4 = all(!(!(!vec2<bool>(false, global4.b.a.b))));
    return Struct_1(~0i | var_2, false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c.e.c)));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: i32, arg_3: Struct_1) -> Struct_4 {
    var var_0 = all(global4.c.c);
    let var_1 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~global4.c.b.x, global4.c.b.x), 32u)]);
    var var_2 = Struct_1(1i, any(global4.e.zy), vec3<f32>(global0[_wgslsmith_index_u32(u_input.d, 32u)], _wgslsmith_f_op_f32(round(1183f)), var_1));
    let var_3 = _wgslsmith_f_op_vec3_f32(select(global4.b.a.c, arg_0.c, global4.e));
    var var_4 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_2.c)));
    return Struct_4(_wgslsmith_mult_i32(arg_2, arg_3.a), global4.b, global4.c, arg_3.b, !vec3<bool>(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(40398u, 32u)])) == 1369f, !arg_0.b, false));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_3, 19>();
    global0 = array<f32, 32>();
    let var_0 = func_5(func_1(), -vec3<i32>(-u_input.a, select(i32(-1i) * -19966i, ~2147483647i, true), global4.c.e.a), 2147483647i, Struct_1(func_1().a >> (6371u % 32u), global4.d, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(182f + 861f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-313f, 271f))), 1576f)));
    var var_1 = (vec2<u32>(u_input.d, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(0u, var_0.c.b.x, 44745u)), vec3<u32>(29088u, var_0.c.b.x, global4.c.b.x) | global4.c.b)) ^ abs(_wgslsmith_div_vec2_u32(~u_input.c.zy, vec2<u32>(global4.c.b.x, 0u) & vec2<u32>(u_input.d, 65709u)))) >> (func_5(func_5(func_5(func_2(global4.c, vec4<i32>(var_0.a, 30522i, -2147483647i, global4.a)), max(vec3<i32>(global4.c.e.a, var_0.b.a.a, u_input.a), vec3<i32>(var_0.c.e.a, var_0.a, u_input.a)), u_input.a, func_2(global4.c, vec4<i32>(2147483647i, -2147483647i, global4.a, -21457i))).b.a, _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.c.e.a, global4.b.a.a, -17186i), vec3<i32>(1i, -36380i, -17619i)) >> (vec3<u32>(u_input.d, u_input.c.x, global4.c.b.x) % vec3<u32>(32u)), var_0.b.a.a, global4.b.a).c.e, vec3<i32>(var_0.b.a.a & ~global4.c.e.a, var_0.b.a.a, 0i), u_input.a, Struct_1(var_0.c.e.a, any(select(vec4<bool>(true, false, false, false), vec4<bool>(var_0.c.c.x, true, true, global4.d), global4.d)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c.e.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(482f, global0[_wgslsmith_index_u32(u_input.c.x, 32u)], -1080f))))).c.b.zz % vec2<u32>(32u));
    var var_2 = global4.c.e.a;
    global0 = array<f32, 32>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-812f + global0[_wgslsmith_index_u32(global4.c.b.x, 32u)]) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 32u)])))) + 254f));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(2147483647i, 58920i, 1213i, 20605i) >> (firstTrailingBit(vec4<u32>(1u, 82245u, global4.c.b.x, var_0.c.b.x) | vec4<u32>(0u, 1u, u_input.b, 21241u)) % vec4<u32>(32u))), -(~(-_wgslsmith_mod_vec4_i32(vec4<i32>(9296i, -20981i, 0i, -1i), vec4<i32>(2147483647i, var_0.b.a.a, global4.a, u_input.a)))));
}

