struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: array<bool, 23> = array<bool, 23>(true, true, false, false, true, false, false, true, true, false, true, false, false, false, false, true, false, false, true, true, true, true, false);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = _wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(11553u, u_input.b, u_input.e)) << (vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, u_input.e, u_input.d.x, 50896u), u_input.d), 13456u, ~u_input.b) % vec3<u32>(32u)), ~vec3<u32>(~u_input.d.x, min(u_input.e, u_input.b), firstLeadingBit(u_input.e))) << (vec3<u32>(62046u, _wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.d.x, 4294967295u, u_input.b), ~42764u), 1u), ~_wgslsmith_sub_u32(~u_input.d.x, _wgslsmith_dot_vec3_u32(u_input.d.xxx, u_input.d.yzw))) % vec3<u32>(32u));
    let var_1 = -arg_0.b;
    var_0 = countOneBits(~vec3<u32>(~(~var_0.x), ~15708u, _wgslsmith_add_u32(min(u_input.b, 0u), min(0u, var_0.x))));
    let var_2 = Struct_3(global0[_wgslsmith_index_u32(46800u, 25u)], Struct_2(-1000f));
    let var_3 = global1[_wgslsmith_index_u32(46761u, 23u)];
    return 4294967295u;
}

fn func_2() -> vec2<bool> {
    let var_0 = vec3<u32>(func_3(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~u_input.e, ~4294967295u), 25u)]), u_input.b, u_input.e);
    global0 = array<Struct_1, 25>();
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -855f);
    global1 = array<bool, 23>();
    var var_2 = Struct_3(Struct_1(select(vec4<bool>(select(global1[_wgslsmith_index_u32(23014u, 23u)], false, false), true, global1[_wgslsmith_index_u32(u_input.d.x, 23u)], all(vec3<bool>(false, true, false))), select(select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.e, 23u)], true, global1[_wgslsmith_index_u32(1u, 23u)]), vec4<bool>(global1[_wgslsmith_index_u32(44438u, 23u)], true, true, false), vec4<bool>(global1[_wgslsmith_index_u32(29359u, 23u)], global1[_wgslsmith_index_u32(u_input.e, 23u)], false, global1[_wgslsmith_index_u32(var_0.x, 23u)])), select(vec4<bool>(false, true, global1[_wgslsmith_index_u32(51176u, 23u)], false), vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(1u, 23u)]), vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.d.x, 23u)], global1[_wgslsmith_index_u32(0u, 23u)])), false), global1[_wgslsmith_index_u32(u_input.e, 23u)]), abs(-_wgslsmith_add_i32(u_input.c.x, u_input.c.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1, var_1, 1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 724f, var_1)))), global1[_wgslsmith_index_u32(57082u, 23u)]), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -153f)));
    return !var_2.a.a.yy;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1) -> vec3<i32> {
    let var_0 = -_wgslsmith_mult_i32(~(~_wgslsmith_dot_vec4_i32(vec4<i32>(-5597i, -21151i, u_input.a.x, -17444i), vec4<i32>(u_input.a.x, 2147483647i, u_input.c.x, -2147483647i))), 56237i);
    var var_1 = Struct_2(645f);
    var var_2 = ~(~max(abs(u_input.d.wz), abs(u_input.d.yx)) ^ ~u_input.d.wy);
    var var_3 = !select(func_2(), vec2<bool>(!(!global1[_wgslsmith_index_u32(u_input.e, 23u)]), true), all(vec2<bool>(global1[_wgslsmith_index_u32(0u, 23u)] & false, arg_1.a.x)));
    let var_4 = arg_1.a;
    return firstTrailingBit(min(~(vec3<i32>(-1i, -2147483647i, -22510i) ^ vec3<i32>(2147483647i, arg_1.b, arg_1.b)), firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -26498i, var_0), vec3<i32>(4492i, var_0, u_input.c.x)))) >> (u_input.d.zwy % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 23>();
    global0 = array<Struct_1, 25>();
    let var_0 = ~65190u;
    let var_1 = _wgslsmith_div_vec3_i32(func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(454f, 317f, -244f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2013f, -702f, -1342f)))), Struct_1(select(!vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(u_input.e, 23u)], global1[_wgslsmith_index_u32(40444u, 23u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(52463u, 23u)], global1[_wgslsmith_index_u32(var_0, 23u)], global1[_wgslsmith_index_u32(var_0, 23u)], global1[_wgslsmith_index_u32(u_input.b, 23u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.e, 23u)], true, global1[_wgslsmith_index_u32(var_0, 23u)], false), false), vec4<bool>(global1[_wgslsmith_index_u32(124422u, 23u)], true, global1[_wgslsmith_index_u32(22559u, 23u)], global1[_wgslsmith_index_u32(var_0, 23u)])), -18004i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(2011f, 520f, 426f), vec3<f32>(-648f, 918f, 1000f))), true)), min(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, 13823i, -1i) ^ _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -18034i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.c.x, u_input.c.x)), _wgslsmith_add_vec3_i32(~vec3<i32>(-1i, 30376i, u_input.a.x), countOneBits(vec3<i32>(u_input.c.x, 37389i, -2147483647i)))), vec3<i32>(-20007i, i32(-1i) * -1i, -1i)));
    var var_2 = i32(-1i) * -1i;
    var var_3 = vec4<i32>(-u_input.c.x, 2147483647i, var_1.x, -1i);
    var var_4 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(522f, 341f, false)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1029f), -1001f);
    var var_5 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_4.x))));
    let var_6 = var_5.a;
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.d.xz, u_input.d.xw) >> (u_input.d.yw % vec2<u32>(32u)), -vec2<i32>(firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(var_3.x, -19134i))), u_input.a.x), vec4<i32>(10403i, 2706i, -(var_3.x ^ _wgslsmith_add_i32(-333i, var_1.x)), firstTrailingBit(-2147483647i)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-146f, -302f)))))));
}

