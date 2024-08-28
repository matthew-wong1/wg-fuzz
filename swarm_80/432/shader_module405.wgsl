struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec3<u32>,
    d: Struct_1,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32;

var<private> global2: array<bool, 16> = array<bool, 16>(true, false, true, false, false, true, true, false, true, true, true, true, false, true, true, false);

var<private> global3: array<i32, 11>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = arg_0.d.b.zz;
    let var_1 = arg_0.b.b;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b.c.x), _wgslsmith_f_op_f32(-arg_0.b.c.x), _wgslsmith_f_op_f32(476f * arg_0.b.c.x), arg_0.b.c.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.c.x, arg_0.b.c.x, arg_0.b.c.x, arg_0.b.c.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.c.x, arg_0.b.c.x, arg_0.b.c.x, -245f) - vec4<f32>(arg_0.b.c.x, -2038f, arg_0.b.c.x, 543f))))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.c.x, 1354f, -1064f, _wgslsmith_f_op_f32(abs(arg_0.b.c.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.c.x, arg_0.b.c.x, 216f, 155f))))));
    global1 = 56486u;
    var var_3 = _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, _wgslsmith_clamp_u32(~arg_0.e.x, _wgslsmith_mod_u32(1364u, u_input.b), 63396u), arg_0.e.x, _wgslsmith_div_u32(22564u, 49696u)), vec4<u32>(~u_input.c.x, 39308u, 0u, 62015u));
    return arg_0.b;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec2<f32>) -> u32 {
    let var_0 = Struct_2(true, arg_1, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(-arg_2.x))));
    var var_1 = _wgslsmith_mod_u32(reverseBits(38488u), 3336u);
    global2 = array<bool, 16>();
    let var_2 = arg_0;
    var_1 = ~19155u;
    return u_input.b;
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = 9111u;
    var_0 = max(u_input.c.x, _wgslsmith_clamp_u32(u_input.c.x ^ func_3(func_2(Struct_3(vec2<i32>(u_input.a, -2147483647i), Struct_2(false, Struct_1(global0.a, vec4<bool>(false, true, arg_2.a, false)), vec2<f32>(arg_2.c.x, arg_1.x)), u_input.c, Struct_1(vec2<i32>(59874i, -12700i), arg_2.b.b), vec2<u32>(48061u, arg_0)), vec2<i32>(20052i, 0i), vec4<i32>(global0.a.x, 2147483647i, u_input.a, 1192i)), func_2(Struct_3(global0.a, arg_2, vec3<u32>(arg_0, arg_0, 1u), arg_2.b, vec2<u32>(13550u, 4294967295u)), vec2<i32>(10976i, global0.a.x), vec4<i32>(global0.a.x, arg_2.b.a.x, -5170i, global3[_wgslsmith_index_u32(arg_0, 11u)])).b, vec3<f32>(-258f, -341f, 410f), arg_1), 0u, 83987u));
    var var_1 = abs(select(abs(-vec4<i32>(1i, 0i, 2147483647i, -1i)), countOneBits(vec4<i32>(-14721i, 0i, global0.a.x, global0.a.x)), true) | vec4<i32>(-16360i, -25633i, 20712i, abs(u_input.a)));
    return func_2(Struct_3(abs(~(-global0.a)), arg_2, reverseBits(vec3<u32>(71325u | arg_0, _wgslsmith_clamp_u32(arg_0, 0u, 4294967295u), 1537u)), Struct_1(abs(vec2<i32>(12223i, global0.a.x)), vec4<bool>(any(vec2<bool>(true, true)), false, func_2(Struct_3(arg_2.b.a, arg_2, vec3<u32>(26766u, arg_0, 10118u), Struct_1(vec2<i32>(u_input.a, arg_2.b.a.x), arg_2.b.b), u_input.c.zz), global0.a, vec4<i32>(arg_2.b.a.x, 32093i, global0.a.x, -2147483647i)).a, true)), ~u_input.c.zz), ~(-global0.a) | abs(vec2<i32>(-2147483647i, global3[_wgslsmith_index_u32(52441u, 11u)] >> (0u % 32u))), select(vec4<i32>(-(~19213i), ~(-16586i), func_2(Struct_3(vec2<i32>(35426i, arg_2.b.a.x), Struct_2(global0.b.x, arg_2.b, vec2<f32>(arg_1.x, 1000f)), u_input.c, Struct_1(vec2<i32>(-43380i, arg_2.b.a.x), arg_2.b.b), vec2<u32>(0u, 1u)), ~vec2<i32>(arg_2.b.a.x, -10049i), vec4<i32>(-1i, arg_2.b.a.x, -29270i, 1i)).b.a.x, 9828i), vec4<i32>(global3[_wgslsmith_index_u32(~arg_0, 11u)], arg_2.b.a.x, ~36341i, _wgslsmith_add_i32(-1263i, -23066i >> (u_input.c.x % 32u))), global0.b)).b.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2) -> Struct_2 {
    let var_0 = 9764u;
    global2 = array<bool, 16>();
    global1 = 49162u;
    var var_1 = _wgslsmith_f_op_f32(-arg_1.b.c.x);
    var var_2 = _wgslsmith_f_op_f32(-arg_2.c.x);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 16>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-786f)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -980f), -2425f, u_input.b > 121118u)), _wgslsmith_f_op_f32(814f * _wgslsmith_f_op_f32(max(1033f, 788f)))))));
    let var_1 = Struct_3(global0.a, func_4(Struct_1(abs(global0.a | vec2<i32>(2147483647i, -2147483647i)), select(func_1(0u, vec2<f32>(-1000f, 1536f), Struct_2(false, Struct_1(global0.a, vec4<bool>(true, true, false, false)), vec2<f32>(1255f, 1218f))), global0.b, global0.b)), Struct_3(vec2<i32>(-u_input.a, 2147483647i), func_2(Struct_3(vec2<i32>(1i, u_input.a), Struct_2(global2[_wgslsmith_index_u32(u_input.b, 16u)], Struct_1(vec2<i32>(global0.a.x, global0.a.x), vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 16u)], true, true, true)), vec2<f32>(1003f, -541f)), vec3<u32>(u_input.b, 99690u, u_input.c.x), Struct_1(vec2<i32>(5338i, 100851i), global0.b), u_input.c.yz), firstLeadingBit(global0.a), max(vec4<i32>(-8436i, global3[_wgslsmith_index_u32(45128u, 11u)], 1i, -2147483647i), vec4<i32>(global0.a.x, global3[_wgslsmith_index_u32(u_input.b, 11u)], global3[_wgslsmith_index_u32(u_input.b, 11u)], u_input.a))), _wgslsmith_sub_vec3_u32(max(u_input.c, u_input.c), firstLeadingBit(vec3<u32>(u_input.b, 68801u, u_input.b))), Struct_1(~global0.a, global0.b), vec2<u32>(u_input.c.x, 1u) >> (vec2<u32>(56597u, 0u) % vec2<u32>(32u))), Struct_2(global0.b.x, func_2(Struct_3(vec2<i32>(-1i, 2147483647i), Struct_2(false, Struct_1(global0.a, global0.b), vec2<f32>(-1151f, 191f)), u_input.c, Struct_1(global0.a, global0.b), vec2<u32>(u_input.b, 48396u)), -global0.a, _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 1i, 2147483647i, -6712i), vec4<i32>(global0.a.x, global0.a.x, -30461i, 27518i))).b, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1538f, -1232f), vec2<f32>(-317f, -837f))))))), reverseBits(min(_wgslsmith_div_vec3_u32(u_input.c, vec3<u32>(5202u, u_input.c.x, u_input.c.x)), ~countOneBits(u_input.c))), Struct_1(vec2<i32>(u_input.a, ~_wgslsmith_add_i32(0i, -29015i)), !global0.b), vec2<u32>(u_input.c.x, u_input.c.x));
    global1 = firstTrailingBit(_wgslsmith_dot_vec2_u32(~u_input.c.zy, u_input.c.yy));
    var var_2 = var_1;
    let var_3 = true;
    global2 = array<bool, 16>();
    let var_4 = Struct_1(global0.a, !select(global0.b, func_2(Struct_3(vec2<i32>(global0.a.x, 63945i), var_1.b, u_input.c, var_1.b.b, vec2<u32>(var_1.c.x, 44961u)), _wgslsmith_sub_vec2_i32(vec2<i32>(global0.a.x, global0.a.x), vec2<i32>(u_input.a, 0i)), vec4<i32>(global0.a.x, -21609i, global3[_wgslsmith_index_u32(1u, 11u)], 22374i)).b.b, func_4(var_1.b.b, var_1, func_4(var_1.d, Struct_3(vec2<i32>(global0.a.x, global3[_wgslsmith_index_u32(var_2.e.x, 11u)]), var_1.b, vec3<u32>(u_input.c.x, u_input.b, u_input.c.x), Struct_1(vec2<i32>(-1i, -2147483647i), var_1.d.b), u_input.c.xx), Struct_2(true, Struct_1(vec2<i32>(-47410i, 2147483647i), vec4<bool>(false, false, global0.b.x, var_1.b.a)), var_1.b.c))).b.b.x));
    var var_5 = abs(vec2<u32>(~firstLeadingBit(~33289u), var_1.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -600f) + var_2.b.c.x)), _wgslsmith_f_op_f32(trunc(1548f)), var_1.b.c.x, _wgslsmith_f_op_f32(-var_1.b.c.x)));
}

