struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(Struct_1(false, vec4<bool>(false, true, true, false)), Struct_1(false, vec4<bool>(false, false, true, true))), Struct_2(Struct_1(true, vec4<bool>(true, true, false, false)), Struct_1(false, vec4<bool>(true, false, false, false))), Struct_2(Struct_1(true, vec4<bool>(true, false, false, true)), Struct_1(true, vec4<bool>(false, false, false, false))), Struct_2(Struct_1(true, vec4<bool>(true, false, true, false)), Struct_1(true, vec4<bool>(false, true, false, false))), Struct_2(Struct_1(false, vec4<bool>(false, true, false, false)), Struct_1(true, vec4<bool>(false, true, true, false))), Struct_2(Struct_1(false, vec4<bool>(false, false, true, true)), Struct_1(false, vec4<bool>(true, true, true, false))), Struct_2(Struct_1(true, vec4<bool>(true, true, false, true)), Struct_1(false, vec4<bool>(false, true, false, false))), Struct_2(Struct_1(false, vec4<bool>(true, true, true, true)), Struct_1(true, vec4<bool>(false, false, false, false))), Struct_2(Struct_1(true, vec4<bool>(true, false, true, true)), Struct_1(false, vec4<bool>(true, false, true, false))), Struct_2(Struct_1(false, vec4<bool>(true, false, false, true)), Struct_1(true, vec4<bool>(false, true, false, false))), Struct_2(Struct_1(true, vec4<bool>(false, false, true, false)), Struct_1(false, vec4<bool>(true, false, true, false))));

var<private> global1: i32 = 0i;

var<private> global2: Struct_2 = Struct_2(Struct_1(true, vec4<bool>(false, true, false, false)), Struct_1(false, vec4<bool>(false, false, true, true)));

var<private> global3: array<vec4<u32>, 15> = array<vec4<u32>, 15>(vec4<u32>(0u, 4294967295u, 18376u, 4294967295u), vec4<u32>(0u, 0u, 0u, 47972u), vec4<u32>(40239u, 4294967295u, 4294967295u, 54248u), vec4<u32>(38115u, 4294967295u, 0u, 29614u), vec4<u32>(1u, 1u, 4294967295u, 16749u), vec4<u32>(4294967295u, 4294967295u, 1u, 1u), vec4<u32>(1u, 7824u, 4294967295u, 4291u), vec4<u32>(4294967295u, 7868u, 19264u, 40483u), vec4<u32>(29579u, 1u, 0u, 80757u), vec4<u32>(36388u, 0u, 118858u, 17699u), vec4<u32>(20949u, 1u, 1u, 1u), vec4<u32>(54660u, 24484u, 73596u, 35759u), vec4<u32>(28202u, 1u, 0u, 0u), vec4<u32>(209u, 25142u, 45846u, 71036u), vec4<u32>(0u, 4294967295u, 64242u, 130856u));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec2<bool>) -> vec2<u32> {
    var var_0 = !global2.b.b;
    let var_1 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -869f), _wgslsmith_f_op_f32(min(-728f, 576f)))) - _wgslsmith_f_op_f32(-138f - -407f))));
    global0 = array<Struct_2, 11>();
    var var_2 = Struct_2(Struct_1(!(!arg_0.x) & true, !vec4<bool>(var_1.x >= var_1.x, select(false, var_0.x, false), true, all(global2.b.b.xz))), Struct_1(true, vec4<bool>(true, var_0.x, true, true & any(vec2<bool>(arg_0.x, arg_0.x)))));
    var var_3 = global3[_wgslsmith_index_u32(0u, 15u)] & vec4<u32>(1u, 15735u, ~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, max(1u, 35797u)), select(vec2<u32>(0u, 32486u), ~vec2<u32>(0u, 25836u), vec2<bool>(var_0.x, var_2.b.b.x))));
    return vec2<u32>(~1u, 12794u);
}

fn func_3(arg_0: vec2<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1410f, -441f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2323f, 510f, -409f) * vec3<f32>(951f, 625f, 1709f))))))) - vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1719f, -845f)), _wgslsmith_f_op_f32(abs(1250f)), true)))), -1000f, 1317f));
    let var_1 = _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-979f + 1194f)) < -784f;
    var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(938f, var_0.x, -1554f) + vec3<f32>(var_0.x, 1046f, -526f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -1122f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-701f, -1000f, var_0.x), vec3<f32>(var_0.x, 1302f, -921f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1185f, -529f, 988f)), all(global2.b.b.ywy))))), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-1f), var_0.x)));
    var var_2 = u_input.c.wy;
    let var_3 = Struct_2(Struct_1(true, global2.b.b), global2.a);
    return Struct_2(global2.a, var_3.b);
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec4<bool>, arg_3: vec3<i32>) -> u32 {
    global3 = array<vec4<u32>, 15>();
    var var_0 = global2.b;
    let var_1 = ~(~vec3<u32>(4294967295u, _wgslsmith_mod_u32(1u, 12498u), ~(~22530u)));
    global2 = func_3(~func_2(var_0.b.yx) ^ ~vec2<u32>(~409u, var_1.x & var_1.x));
    let var_2 = global2.b;
    return _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 5405u), var_1.yz), vec2<u32>(~1u, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.b.b.xz;
    let var_1 = vec4<bool>(!(!(!var_0.x)), true, true, any(!(!(!global2.a.b.wxz))));
    let var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(select(1073u << (1u % 32u), 1u, var_0.x), func_1(true, _wgslsmith_f_op_f32(-834f * -523f), select(global2.a.b, var_1, vec4<bool>(var_0.x, var_0.x, true, true)), vec3<i32>(u_input.d, 2147483647i, 0i))), vec2<u32>(1u, 1u)) >> (_wgslsmith_sub_vec2_u32(~vec2<u32>(1u, 1u), abs(~vec2<u32>(4294967295u, 4294967295u))) % vec2<u32>(32u));
    global2 = global0[_wgslsmith_index_u32(1u, 11u)];
    global2 = Struct_2(Struct_1(true, global2.a.b), Struct_1(global2.a.b.x, func_3(reverseBits(var_2) ^ ~vec2<u32>(var_2.x, var_2.x)).b.b));
    global3 = array<vec4<u32>, 15>();
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(708f, -952f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-816f, 1737f) * vec2<f32>(766f, -1082f)), vec2<f32>(2220f, -538f), vec2<bool>(false, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(32620i, -1i), vec4<u32>(firstLeadingBit(func_2(global2.a.b.yy).x & ~var_2.x), ~4294967295u, 4294967295u, _wgslsmith_add_u32(firstTrailingBit(var_2.x ^ var_2.x), 24149u)), _wgslsmith_sub_vec3_i32(max(vec3<i32>(-u_input.d, u_input.d & -2147483647i, u_input.c.x), u_input.c.wxz), select(_wgslsmith_sub_vec3_i32(vec3<i32>(-18069i, u_input.d, u_input.a), u_input.c.yxx), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, 11331i, 1i), u_input.c.wzy), func_3(vec2<u32>(1u, 30955u)).a.b.wwx) | (vec3<i32>(u_input.c.x, u_input.d, 1i) >> (vec3<u32>(46478u, var_2.x, 0u) % vec3<u32>(32u)))), vec2<i32>(u_input.b, u_input.b));
}

