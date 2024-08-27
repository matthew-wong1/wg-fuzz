struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 11427u;

var<private> global1: Struct_1 = Struct_1(-1242f, vec2<bool>(true, false));

var<private> global2: f32;

var<private> global3: array<Struct_4, 14> = array<Struct_4, 14>(Struct_4(0u, -362f), Struct_4(0u, -1000f), Struct_4(0u, 416f), Struct_4(69046u, 834f), Struct_4(0u, -162f), Struct_4(61331u, -1338f), Struct_4(34263u, -1000f), Struct_4(8183u, 433f), Struct_4(65390u, -233f), Struct_4(49526u, 124f), Struct_4(1u, 1463f), Struct_4(1u, -791f), Struct_4(77303u, -135f), Struct_4(1u, -248f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_1) -> u32 {
    let var_0 = false;
    var var_1 = _wgslsmith_div_u32(u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(~u_input.b, ~vec4<u32>(52010u, u_input.a.x, u_input.a.x, u_input.c)), abs(0u) | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.b.x, 0u), u_input.b.wyy)), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(countOneBits(u_input.b.xzw), vec3<u32>(u_input.a.x, 8033u, u_input.a.x)), vec3<u32>(~78942u, max(u_input.a.x, u_input.a.x), ~1u))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_3.a))), global1.a)), _wgslsmith_f_op_f32(-arg_3.a));
    let var_3 = Struct_4(~firstLeadingBit(u_input.c), var_2.x);
    var var_4 = select(select(!arg_2, arg_2, arg_2), !arg_2, !select(select(vec4<bool>(global1.b.x, var_0, arg_2.x, var_0), !arg_2, !arg_2.x), select(vec4<bool>(global1.b.x, arg_1.b.x, var_0, arg_1.b.x), select(arg_2, arg_2, vec4<bool>(arg_3.b.x, false, arg_3.b.x, arg_1.b.x)), true), true | arg_1.b.x));
    return abs(~_wgslsmith_dot_vec3_u32(u_input.b.zxx, _wgslsmith_add_vec3_u32(abs(vec3<u32>(u_input.c, 29601u, 55493u)), select(vec3<u32>(var_3.a, 4294967295u, 4294967295u), vec3<u32>(18554u, var_3.a, u_input.a.x), arg_1.b.x))));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool) -> Struct_1 {
    var var_0 = select(abs(vec2<u32>(1u, firstLeadingBit(u_input.b.x))) >> (vec2<u32>(func_3(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.a, global1.a), vec2<f32>(-1277f, global1.a))), Struct_1(1607f, global1.b), !vec4<bool>(global1.b.x, arg_1, global1.b.x, global1.b.x), Struct_1(-615f, global1.b)), u_input.a.x) % vec2<u32>(32u)), u_input.a.zz, reverseBits(arg_0.x) != abs(arg_0.x & arg_0.x));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-647f, global1.a)))))), vec2<bool>(true, any(vec2<bool>(all(vec3<bool>(false, true, global1.b.x)), any(vec4<bool>(false, global1.b.x, false, arg_1))))));
}

fn func_1(arg_0: Struct_4, arg_1: u32) -> Struct_2 {
    global1 = Struct_1(_wgslsmith_f_op_f32(floor(global1.a)), global1.b);
    let var_0 = vec2<bool>(true, global1.b.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, 710f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a - -2411f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_0.b, 178f) * vec3<f32>(212f, global1.a, -660f)), vec3<f32>(arg_0.b, global1.a, 1250f)))));
    let var_2 = Struct_4(_wgslsmith_dot_vec2_u32(~max(u_input.b.ww, vec2<u32>(4294967295u, 64394u)), vec2<u32>(~arg_1, _wgslsmith_mult_u32(arg_0.a, _wgslsmith_sub_u32(arg_0.a, arg_0.a)))), -862f);
    var var_3 = func_2(select(~(~(~vec2<i32>(2147483647i, 0i))), ~firstLeadingBit(~vec2<i32>(2147483647i, 1i)), global1.b), any(!(!select(vec4<bool>(false, true, false, var_0.x), vec4<bool>(var_0.x, var_0.x, global1.b.x, global1.b.x), vec4<bool>(false, global1.b.x, true, true)))));
    return Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(var_1, _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, var_3.a, arg_0.b) * var_1)))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1 + vec3<f32>(var_3.a, -640f, -1330f)) - _wgslsmith_f_op_vec3_f32(-var_1))))), Struct_1(1226f, var_0), vec3<bool>(any(select(select(vec4<bool>(var_3.b.x, global1.b.x, false, global1.b.x), vec4<bool>(var_3.b.x, true, true, false), var_0.x), vec4<bool>(true, var_3.b.x, var_0.x, false), !var_3.b.x)), all(vec4<bool>(true, var_0.x, true, global1.b.x)), var_3.b.x && (_wgslsmith_f_op_f32(-var_1.x) != _wgslsmith_f_op_f32(362f - var_1.x))), Struct_1(var_2.b, select(!select(var_0, global1.b, false), global1.b, select(true, any(vec2<bool>(var_0.x, false)), func_2(vec2<i32>(-2147483647i, 0i), var_3.b.x).b.x))));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2) -> Struct_4 {
    let var_0 = Struct_3(arg_1.b, 419f, func_1(Struct_4(~(~15824u), -1000f), (u_input.b.x >> (1u % 32u)) >> (arg_0 % 32u)), func_2(vec2<i32>(~(~(-1289i)), ~(-1i)), true));
    var var_1 = var_0.d.a;
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_0.c.b.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a.a)))))))));
    var var_3 = 1u;
    var var_4 = Struct_4(u_input.b.x, 1254f);
    return global3[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(~(~13884u), arg_0), arg_0) & 3651u, 14u)];
}

fn func_5(arg_0: Struct_4, arg_1: u32, arg_2: Struct_1) -> StorageBuffer {
    global1 = arg_2;
    var var_0 = Struct_3(arg_2, _wgslsmith_f_op_f32(func_1(arg_0, u_input.a.x).d.a - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(arg_0.b))))))), func_1(func_4(arg_1, Struct_2(vec3<f32>(972f, global1.a, global1.a), arg_2, vec3<bool>(arg_2.b.x, arg_2.b.x, true), func_1(arg_0, arg_0.a).d), Struct_2(vec3<f32>(arg_0.b, -405f, global1.a), func_2(vec2<i32>(-1i, -44290i), false), func_1(Struct_4(4294967295u, arg_2.a), 4294967295u).c, arg_2)), firstLeadingBit(max(arg_1, u_input.b.x)) << (26224u % 32u)), Struct_1(1018f, arg_2.b));
    global0 = ~_wgslsmith_div_u32(u_input.b.x, arg_0.a);
    global3 = array<Struct_4, 14>();
    var_0 = Struct_3(Struct_1(func_4(47116u, var_0.c, var_0.c).b, select(func_2(~vec2<i32>(-36768i, -31735i), true).b, vec2<bool>(var_0.c.d.b.x, any(vec2<bool>(false, false))), var_0.d.b.x)), _wgslsmith_f_op_f32(199f + -303f), var_0.c, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1336f - _wgslsmith_f_op_f32(max(arg_0.b, global1.a)))), vec2<bool>(global1.b.x, true)));
    return StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-144f)), func_2(vec2<i32>(1i, countOneBits(4218i)), true).a), ~select(~vec3<i32>(-2147483647i, -45630i, -2147483647i), ~vec3<i32>(-1i, 23768i, -33580i), var_0.a.b.x) & vec3<i32>(-(~23257i), -1i, -16740i), -578f, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-145f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a + 1334f) * _wgslsmith_f_op_f32(ceil(arg_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.a * var_0.c.b.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c.a * _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, -589f, -117f) * var_0.c.a))), !var_0.c.c)), _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.b.x, ~(arg_0.a & u_input.a.x)), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_4(_wgslsmith_div_u32(u_input.b.x, ~_wgslsmith_div_u32(u_input.c, 25257u)), func_1(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.c, min(10679u, u_input.b.x)), 14u)], firstLeadingBit(1u)), Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(503f, 243f, global1.a)))), func_2(_wgslsmith_mult_vec2_i32(vec2<i32>(54164i, 33736i), vec2<i32>(-1i, -1i)), func_2(vec2<i32>(-53699i, 23279i), global1.b.x).b.x), vec3<bool>(func_1(global3[_wgslsmith_index_u32(u_input.b.x, 14u)], u_input.a.x).d.b.x, func_1(Struct_4(3121u, global1.a), 4294967295u).b.b.x, all(vec2<bool>(true, false))), func_2(~vec2<i32>(2147483647i, 0i), u_input.b.x > 1u))), u_input.a.x, func_1(Struct_4(u_input.b.x, 578f), 35755u).d);
}

