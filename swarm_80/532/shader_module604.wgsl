struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: bool,
    d: vec4<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
    c: Struct_3,
    d: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(-1777f, vec2<bool>(false, true), Struct_3(Struct_2(Struct_1(vec4<u32>(0u, 0u, 45459u, 1u), vec4<i32>(28867i, 0i, 1i, -674i), false, vec4<bool>(false, true, true, false), vec4<i32>(-16779i, 3170i, -65218i, i32(-2147483648))), Struct_1(vec4<u32>(98215u, 5338u, 1u, 35926u), vec4<i32>(-19646i, 1i, 2147483647i, -26477i), true, vec4<bool>(false, true, true, true), vec4<i32>(1i, 1i, 11044i, -37787i)), 0u)), Struct_3(Struct_2(Struct_1(vec4<u32>(0u, 33014u, 1u, 0u), vec4<i32>(59028i, 0i, 1i, -36004i), false, vec4<bool>(true, true, true, false), vec4<i32>(50474i, 10097i, -1i, 14251i)), Struct_1(vec4<u32>(4294967295u, 82937u, 69559u, 1u), vec4<i32>(10793i, 2147483647i, -41287i, 0i), false, vec4<bool>(false, false, true, false), vec4<i32>(-35884i, -1i, 0i, 0i)), 94106u)));

var<private> global1: vec2<i32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1() -> Struct_4 {
    return Struct_4(_wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -657f), _wgslsmith_f_op_f32(floor(global0.a))))), global0.b, global0.d, global0.d);
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: f32, arg_3: u32) -> u32 {
    let var_0 = global0.b.x;
    global0 = func_1();
    var var_1 = abs(~_wgslsmith_div_vec2_u32(~global0.c.a.a.a.zx, ~countOneBits(vec2<u32>(0u, u_input.c))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2, -204f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + global0.a)), 583f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2)) * _wgslsmith_f_op_f32(sign(215f)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(step(-381f, 1705f)), _wgslsmith_div_f32(arg_2, -554f), _wgslsmith_f_op_f32(arg_1.x - global0.a))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1288f, 1393f, arg_1.x, arg_2)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(513f, -207f, -681f, -463f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, 731f, 394f, global0.a) * vec4<f32>(arg_1.x, arg_2, global0.a, -271f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 1082f, global0.a, -832f)), any(vec2<bool>(false, false)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.a, global0.a, -1532f, arg_1.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(596f, 967f, 1025f, 468f))))));
    global0 = Struct_4(-1000f, vec2<bool>(true, func_1().c.a.b.c), global0.d, arg_0);
    return 1u;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_4) -> u32 {
    let var_0 = Struct_5(func_3(func_1().c, vec2<f32>(1285f, -100f), _wgslsmith_f_op_f32(-global0.a), 14331u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.a), global0.a)) + arg_2.a) + _wgslsmith_f_op_f32(abs(arg_2.a))), vec3<i32>(-38398i, u_input.e.x, arg_1.a.a.b.x));
    global1 = vec2<i32>(_wgslsmith_div_i32(firstTrailingBit(countOneBits(-2147483647i)), arg_1.a.b.b.x), _wgslsmith_sub_i32(global1.x, firstTrailingBit(33014i))) << (~countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), arg_0.a.b.a.xz)) % vec2<u32>(32u));
    let var_1 = global0.c.a.b.a.wx;
    let var_2 = u_input.b;
    var var_3 = vec3<bool>(arg_0.a.a.c, arg_2.c.a.a.d.x, all(!(!select(global0.c.a.a.d.yxz, vec3<bool>(false, arg_0.a.b.d.x, arg_0.a.a.c), false))));
    return abs(~(~(91366u ^ u_input.c))) << (((arg_0.a.b.a.x << (12945u % 32u)) >> (_wgslsmith_mult_u32(func_3(func_1().c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1340f, -534f)), _wgslsmith_f_op_f32(arg_2.a + global0.a), max(0u, 74865u)), 0u) % 32u)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = Struct_1(select(~vec4<u32>(~1u, 16846u, u_input.b, 21847u), vec4<u32>(func_2(func_1().c, global0.c, func_1()), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.c, u_input.b), global0.d.a.b.a.xyz >> (global0.c.a.b.a.zyw % vec3<u32>(32u))), min(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0.d.a.c, 6747u, global0.d.a.b.a.x), global0.c.a.b.a), u_input.c), func_3(Struct_3(Struct_2(global0.c.a.b, Struct_1(vec4<u32>(global0.d.a.c, global0.d.a.a.a.x, global0.c.a.c, 17237u), vec4<i32>(global1.x, -7426i, u_input.e.x, global1.x), true, vec4<bool>(true, global0.b.x, false, global0.b.x), vec4<i32>(u_input.e.x, -5874i, -5341i, 17364i)), u_input.c)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-514f, global0.a))), _wgslsmith_f_op_f32(round(global0.a)), _wgslsmith_mod_u32(u_input.b, 3502u))), global0.c.a.a.d), global0.c.a.b.e, any(select(!vec3<bool>(global0.d.a.b.c, true, global0.c.a.a.c), global0.c.a.b.d.yxz, vec3<bool>(u_input.b != global0.c.a.b.a.x, global0.c.a.a.c, all(vec2<bool>(global0.b.x, global0.d.a.b.d.x))))), !vec4<bool>(false, _wgslsmith_f_op_f32(trunc(-168f)) != _wgslsmith_f_op_f32(abs(global0.a)), global0.d.a.b.e.x >= ~global1.x, !global0.c.a.a.c), _wgslsmith_mult_vec4_i32(~(reverseBits(vec4<i32>(global0.c.a.a.e.x, u_input.a, 0i, global1.x)) << (countOneBits(global0.d.a.a.a) % vec4<u32>(32u))), -vec4<i32>(_wgslsmith_dot_vec4_i32(global0.d.a.b.b, global0.d.a.b.e), global0.c.a.a.e.x, global0.c.a.a.b.x, global0.c.a.a.e.x)));
    var_0 = func_1().d.a.b;
    let var_1 = Struct_2(func_1().c.a.a, Struct_1(_wgslsmith_sub_vec4_u32(~(var_0.a & global0.c.a.a.a), ~(vec4<u32>(0u, u_input.b, u_input.c, 4294967295u) & global0.c.a.a.a)), vec4<i32>(_wgslsmith_sub_i32(global1.x, -8012i), 48576i, ~50200i, -41842i) << (vec4<u32>(global0.d.a.a.a.x, u_input.b, global0.d.a.b.a.x, var_0.a.x) % vec4<u32>(32u)), false, vec4<bool>(true, true, select(true, true, global0.b.x), -2147483647i > (u_input.e.x << (global0.d.a.b.a.x % 32u))), global0.d.a.b.e), global0.d.a.a.a.x);
    global0 = func_1();
    let var_2 = func_1().c.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(~max(vec3<u32>(var_0.a.x, var_1.a.a.x, 19789u) | abs(var_1.a.a.yzz), vec3<u32>(abs(global0.d.a.c), 36523u, 49135u)));
}

