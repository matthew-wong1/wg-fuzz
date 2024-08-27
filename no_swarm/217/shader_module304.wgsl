struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: vec3<u32>;

var<private> global2: u32;

var<private> global3: i32 = -2965i;

var<private> global4: array<vec2<i32>, 22> = array<vec2<i32>, 22>(vec2<i32>(51993i, -1i), vec2<i32>(28637i, -45030i), vec2<i32>(13369i, 2147483647i), vec2<i32>(0i, 27814i), vec2<i32>(2147483647i, 21187i), vec2<i32>(47799i, -34402i), vec2<i32>(-32439i, 13033i), vec2<i32>(-9164i, 12144i), vec2<i32>(51134i, 33045i), vec2<i32>(0i, -11686i), vec2<i32>(1i, 1i), vec2<i32>(2147483647i, 1i), vec2<i32>(-20317i, 0i), vec2<i32>(-23684i, -24544i), vec2<i32>(-19622i, 38145i), vec2<i32>(-1i, 1i), vec2<i32>(2147483647i, 0i), vec2<i32>(i32(-2147483648), -67405i), vec2<i32>(0i, 2147483647i), vec2<i32>(2147483647i, -11880i), vec2<i32>(39371i, i32(-2147483648)), vec2<i32>(1i, i32(-2147483648)));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    global1 = _wgslsmith_add_vec3_u32(u_input.a.xyz, abs(u_input.a.zwz));
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -155f, -322f)))))));
    var var_1 = -(~0i);
    let var_2 = select(!(!(!vec4<bool>(global0.x, true, global0.x, true))), vec4<bool>(false, !(!global0.x), true, true), vec4<bool>(false, true, global0.x, global0.x));
    global0 = !select(var_2.ww, !vec2<bool>(global0.x, all(vec2<bool>(false, true))), select(vec2<bool>(true, true), !select(var_2.zz, vec2<bool>(global0.x, false), var_2.yz), false));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a)));
}

fn func_3(arg_0: u32) -> u32 {
    global1 = _wgslsmith_sub_vec3_u32(min(u_input.a.xzy, ~(vec3<u32>(global1.x, arg_0, 101987u) | u_input.a.wyy)) & ~(~reverseBits(u_input.a.wyy)), _wgslsmith_mult_vec3_u32(min(~vec3<u32>(1u, arg_0, arg_0), _wgslsmith_mult_vec3_u32(u_input.a.wzy, ~vec3<u32>(global1.x, arg_0, global1.x))), max((vec3<u32>(arg_0, 93556u, u_input.a.x) >> (vec3<u32>(1u, arg_0, arg_0) % vec3<u32>(32u))) << ((u_input.a.xxy | u_input.a.zzx) % vec3<u32>(32u)), vec3<u32>(u_input.b, u_input.b, u_input.b))));
    var var_0 = u_input.c.x;
    let var_1 = vec4<i32>(0i ^ _wgslsmith_div_i32(36397i, u_input.c.x), u_input.c.x, _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.c.x, _wgslsmith_div_i32(-26955i, u_input.c.x)), ~_wgslsmith_mult_i32(u_input.c.x, 2147483647i)), max(2147483647i, _wgslsmith_dot_vec4_i32(firstTrailingBit(abs(vec4<i32>(48159i, u_input.c.x, u_input.c.x, u_input.c.x))), ~(-vec4<i32>(u_input.c.x, u_input.c.x, -21025i, 0i)))));
    return ~1u;
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = -1016f;
    let var_1 = 1u >> (abs(arg_1) % 32u);
    var var_2 = arg_2;
    var var_3 = Struct_2(vec3<u32>(~_wgslsmith_sub_u32(~3112u, func_3(arg_3.x)), _wgslsmith_dot_vec3_u32(u_input.a.yzw, min(u_input.a.yyy << (u_input.a.zxw % vec3<u32>(32u)), ~vec3<u32>(global1.x, 30174u, 62402u))), ~arg_1));
    var_2 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.a + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-658f, 248f, 875f))), var_2.a));
    return arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> Struct_2 {
    return Struct_2(_wgslsmith_mult_vec3_u32(max(u_input.a.wwy << (u_input.a.zyz % vec3<u32>(32u)), ~vec3<u32>(1u, 16487u, 23025u)), firstLeadingBit(firstTrailingBit(u_input.a.xwy))) ^ ((_wgslsmith_mult_vec3_u32(vec3<u32>(0u, arg_3, global1.x), vec3<u32>(arg_3, 4294967295u, 89516u)) << (u_input.a.ywz % vec3<u32>(32u))) ^ (~vec3<u32>(7872u, 35215u, 0u) | vec3<u32>(global1.x, 6358u, arg_3))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = reverseBits(_wgslsmith_div_u32(_wgslsmith_mod_u32(~global1.x, 4294967295u & global1.x), _wgslsmith_dot_vec3_u32(~u_input.a.yzx, u_input.a.xzx)) >> ((1u << (_wgslsmith_mod_u32(~21020u, global1.x << (arg_1.a.x % 32u)) % 32u)) % 32u));
    var var_1 = func_4(arg_3, func_1(~min(vec4<i32>(u_input.c.x, u_input.c.x, -10077i, 40304i), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -3237i) << (u_input.a % vec4<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) - _wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_2.a.x, arg_0.a.x))))), _wgslsmith_mult_u32(~(~0u), ~global1.x << (~1u % 32u)));
    let var_2 = Struct_1(arg_2.a);
    let var_3 = global1.x;
    let var_4 = func_4(var_2, arg_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_2.a.x, _wgslsmith_f_op_f32(ceil(arg_3.a.x)), false)))), var_2.a.x), _wgslsmith_sub_u32(arg_1.a.x, arg_1.a.x));
    return select(_wgslsmith_sub_vec3_u32(func_4(Struct_1(var_2.a), arg_0, -1653f, var_1.a.x).a >> (abs(vec3<u32>(1u, 69055u, 4294967295u)) % vec3<u32>(32u)), var_1.a) << (u_input.a.yyz % vec3<u32>(32u)), firstLeadingBit(var_1.a), !(!vec3<bool>(!global0.x, false, global0.x && true)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~firstTrailingBit(func_5(Struct_1(vec3<f32>(-1835f, -753f, -701f)), func_4(func_1(vec4<i32>(u_input.c.x, -9635i, -45156i, u_input.c.x)), func_2(global0.x, global1.x, Struct_1(vec3<f32>(111f, 809f, 285f)), vec2<u32>(global1.x, global1.x)), _wgslsmith_f_op_f32(355f - 444f), abs(u_input.b)), func_1(max(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(0i, u_input.c.x, 32703i, u_input.c.x))), func_2(67865u >= global1.x, global1.x ^ u_input.b, Struct_1(vec3<f32>(724f, -2461f, 1692f)), vec2<u32>(global1.x, global1.x))));
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-609f, -625f, 643f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(350f, 397f, 1122f)), select(true, global0.x, false))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, 1373f, 949f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-389f, -2549f, 2430f))), !global0.x))))));
    global3 = 39907i;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - _wgslsmith_f_op_f32(round(-681f)))));
    var_1 = -393f;
    global1 = u_input.a.zww;
    let var_2 = !(!all(select(!vec2<bool>(global0.x, false), select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, true), false), !global0.x)));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(select(133f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - _wgslsmith_f_op_f32(var_0.a.x - -680f)), 188f)), !(!all(vec3<bool>(var_2, true, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(868f + var_0.a.x) - 1445f)), _wgslsmith_f_op_f32(trunc(1000f)));
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(var_0.a + vec3<f32>(-892f, _wgslsmith_f_op_f32(sign(var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_3.x)) - -1999f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(var_0.a, _wgslsmith_f_op_vec3_f32(exp2(var_0.a)), u_input.b > u_input.a.x)), u_input.a.x, vec2<f32>(var_3.x, 1108f), 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.a.x + var_4.a.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -282f))));
}

