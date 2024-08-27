struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>) -> i32 {
    return 14785i;
}

fn func_3(arg_0: Struct_1) -> bool {
    return any(vec3<bool>(true, select(any(vec2<bool>(true, true)), true, any(vec3<bool>(true, false, false))), false));
}

fn func_4(arg_0: bool, arg_1: u32) -> Struct_5 {
    var var_0 = arg_0;
    var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(1441f - _wgslsmith_f_op_f32(round(-956f)));
    let var_2 = Struct_3(Struct_1(~(arg_1 << (24159u % 32u)) ^ 1u, 2147483647i));
    var_1 = 471f;
    return Struct_5(0i, var_2.a, vec4<bool>(!(!arg_0) && true, !all(vec2<bool>(false, arg_0)), !arg_0, -2147483647i > abs(~var_2.a.b)), var_2.a);
}

fn func_1(arg_0: f32) -> Struct_5 {
    let var_0 = func_4((-(0i >> (1u % 32u)) > func_2(Struct_2(vec3<i32>(u_input.c, u_input.a.x, 2147483647i), Struct_1(93565u, -43476i), u_input.b.x), abs(vec2<u32>(59462u, 54938u)))) || !func_3(Struct_1(84135u, 0i)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(~_wgslsmith_mult_u32(1u, 1u), _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(113353u, 12299u)))), ~(~(~80412u))));
    let var_1 = func_4(var_0.c.x, 4294967295u | _wgslsmith_dot_vec3_u32(vec3<u32>(abs(0u), func_4(var_0.c.x, 63334u).b.a, abs(var_0.b.a)), vec3<u32>(firstTrailingBit(0u), var_0.b.a, 4294967295u))).d;
    let var_2 = Struct_2(-_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.b, 10078i, var_1.b) >> (vec3<u32>(var_1.a, 1u, 0u) % vec3<u32>(32u)), u_input.b) >> ((vec3<u32>(1u, 58672u, var_0.d.a) >> (vec3<u32>(36392u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d.a, 1u), vec2<u32>(var_1.a, 0u)), var_1.a) % vec3<u32>(32u))) % vec3<u32>(32u)), func_4(false, ~6109u).d, -7887i);
    let var_3 = _wgslsmith_clamp_vec2_i32(u_input.b.zy, ~vec2<i32>(var_0.b.b, 9460i) | u_input.b.yy, abs(vec2<i32>(_wgslsmith_clamp_i32(u_input.a.x, var_2.c, 1i), ~(-61926i)))) >> (vec2<u32>(var_1.a, _wgslsmith_dot_vec3_u32(vec3<u32>(0u >> (var_0.b.a % 32u), ~var_1.a, var_0.b.a), ~vec3<u32>(9061u, 1u, 1u) | vec3<u32>(var_2.b.a, 0u, var_2.b.a))) % vec2<u32>(32u));
    let var_4 = arg_0;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(-768f, -392f);
    let var_1 = func_1(_wgslsmith_f_op_f32(var_0.x + var_0.x));
    let var_2 = !vec4<bool>(true, var_1.c.x, _wgslsmith_add_u32(func_1(2356f).d.a, 1u) <= _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(20680u, 1u, 52509u), vec3<u32>(var_1.b.a, 73155u, var_1.d.a)), abs(vec3<u32>(1u, 22370u, 4294967295u))), false);
    var var_3 = i32(-1i) * -1i;
    var var_4 = _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, reverseBits(0i)), vec2<i32>(-15923i, ~u_input.a.x));
    var var_5 = Struct_5(-(1i >> (_wgslsmith_dot_vec3_u32(select(vec3<u32>(var_1.d.a, var_1.b.a, 34576u), vec3<u32>(var_1.d.a, 20726u, 0u), var_1.c.x), ~vec3<u32>(0u, var_1.b.a, var_1.d.a)) % 32u)), var_1.d, vec4<bool>(var_1.c.x, false, func_3(var_1.b) == all(!var_1.c.xz), true), Struct_1(6470u, _wgslsmith_mult_i32(i32(-1i) * -1i, -var_4.x)));
    var var_6 = false;
    let var_7 = 23045i | var_5.b.b;
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -func_1(_wgslsmith_div_f32(var_0.x, 908f)).b.b, firstTrailingBit(var_1.d.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-340f, -1000f, var_0.x), vec3<f32>(var_0.x, -263f, 175f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -632f, -1400f) * vec3<f32>(var_0.x, 1488f, var_0.x)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-619f, var_0.x, -938f) - _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(-583f, 1000f, 1277f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(618f, 102f, var_0.x) + vec3<f32>(-1000f, 1285f, var_0.x))))), _wgslsmith_f_op_f32(f32(-1f) * -2714f));
}

