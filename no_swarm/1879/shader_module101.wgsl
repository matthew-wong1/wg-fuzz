struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 28>;

var<private> global1: u32;

var<private> global2: vec3<i32>;

var<private> global3: array<Struct_4, 28> = array<Struct_4, 28>(Struct_4(Struct_3(2147483647i, Struct_1(vec4<bool>(false, false, true, true)), vec2<u32>(1u, 79652u), false), -258f, 2147483647i), Struct_4(Struct_3(-1i, Struct_1(vec4<bool>(false, false, true, false)), vec2<u32>(32824u, 4294967295u), false), -1718f, 2147483647i), Struct_4(Struct_3(-49076i, Struct_1(vec4<bool>(false, false, true, true)), vec2<u32>(117u, 16555u), false), 1000f, -4440i), Struct_4(Struct_3(0i, Struct_1(vec4<bool>(true, true, true, true)), vec2<u32>(63068u, 0u), true), 1342f, 1i), Struct_4(Struct_3(0i, Struct_1(vec4<bool>(false, true, false, true)), vec2<u32>(1u, 1u), true), 592f, 0i), Struct_4(Struct_3(18006i, Struct_1(vec4<bool>(true, true, false, false)), vec2<u32>(4294967295u, 24370u), true), -125f, -37122i), Struct_4(Struct_3(-38884i, Struct_1(vec4<bool>(true, false, true, true)), vec2<u32>(1u, 55706u), true), 181f, 2147483647i), Struct_4(Struct_3(12349i, Struct_1(vec4<bool>(true, false, false, true)), vec2<u32>(0u, 4294967295u), false), 272f, i32(-2147483648)), Struct_4(Struct_3(i32(-2147483648), Struct_1(vec4<bool>(true, false, true, false)), vec2<u32>(4294967295u, 1u), true), -438f, -21487i), Struct_4(Struct_3(2147483647i, Struct_1(vec4<bool>(true, true, true, false)), vec2<u32>(22393u, 4294967295u), false), 107f, -7897i), Struct_4(Struct_3(0i, Struct_1(vec4<bool>(true, false, true, true)), vec2<u32>(34122u, 1u), false), 238f, 35741i), Struct_4(Struct_3(0i, Struct_1(vec4<bool>(false, true, false, true)), vec2<u32>(5447u, 1u), true), -464f, -24159i), Struct_4(Struct_3(0i, Struct_1(vec4<bool>(false, false, true, false)), vec2<u32>(0u, 4294967295u), false), 864f, -1i), Struct_4(Struct_3(-17469i, Struct_1(vec4<bool>(false, true, false, false)), vec2<u32>(48306u, 36854u), true), 324f, -64987i), Struct_4(Struct_3(0i, Struct_1(vec4<bool>(true, false, false, false)), vec2<u32>(25906u, 4294967295u), true), 2135f, 3377i), Struct_4(Struct_3(-30645i, Struct_1(vec4<bool>(false, true, false, true)), vec2<u32>(0u, 48685u), false), -1088f, -1i), Struct_4(Struct_3(-1i, Struct_1(vec4<bool>(true, true, true, true)), vec2<u32>(0u, 5590u), true), 1297f, -1i), Struct_4(Struct_3(i32(-2147483648), Struct_1(vec4<bool>(true, false, true, true)), vec2<u32>(13857u, 58169u), false), -934f, -45i), Struct_4(Struct_3(i32(-2147483648), Struct_1(vec4<bool>(false, true, false, true)), vec2<u32>(1u, 5712u), false), -518f, i32(-2147483648)), Struct_4(Struct_3(10792i, Struct_1(vec4<bool>(true, true, true, false)), vec2<u32>(1u, 0u), true), -364f, 8573i), Struct_4(Struct_3(3225i, Struct_1(vec4<bool>(true, true, true, true)), vec2<u32>(4294967295u, 24134u), false), 704f, 0i), Struct_4(Struct_3(25157i, Struct_1(vec4<bool>(false, false, false, true)), vec2<u32>(47893u, 4294967295u), true), 1618f, 1i), Struct_4(Struct_3(-2585i, Struct_1(vec4<bool>(false, true, false, false)), vec2<u32>(1u, 0u), false), 805f, -1i), Struct_4(Struct_3(1i, Struct_1(vec4<bool>(false, false, false, true)), vec2<u32>(29830u, 9284u), true), -100f, 1i), Struct_4(Struct_3(-28727i, Struct_1(vec4<bool>(false, true, false, false)), vec2<u32>(52944u, 1u), true), 926f, 0i), Struct_4(Struct_3(-6713i, Struct_1(vec4<bool>(false, true, true, true)), vec2<u32>(41110u, 22485u), true), 484f, 35182i), Struct_4(Struct_3(1i, Struct_1(vec4<bool>(false, true, false, false)), vec2<u32>(1u, 20243u), true), 594f, -24319i), Struct_4(Struct_3(1i, Struct_1(vec4<bool>(false, false, false, false)), vec2<u32>(12651u, 0u), true), 1033f, -28633i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_1) -> f32 {
    return 1383f;
}

fn func_3() -> u32 {
    let var_0 = global2.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1102f + 2202f), _wgslsmith_f_op_f32(503f - 118f))), -1000f, _wgslsmith_f_op_f32(max(1629f, _wgslsmith_f_op_f32(1000f - 781f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1991f, -827f, -1798f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-773f, 972f, -597f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(240f, -1444f, 235f) + vec3<f32>(285f, -779f, -265f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1833f, 101f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -179f), _wgslsmith_f_op_f32(func_2(Struct_1(vec4<bool>(true, false, false, false)))))), -118f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(493f, -1161f, 2736f))))), false));
    var var_2 = global2.xy;
    global2 = -vec3<i32>(global2.x, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(global2.zx, min(global2.zz, vec2<i32>(var_2.x, 17667i))), -10171i), u_input.b);
    global2 = _wgslsmith_add_vec3_i32(vec3<i32>(~1i, ~_wgslsmith_mod_i32(-u_input.b, 1i), u_input.b), vec3<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2147483647i) ^ global2.zy, ~global2.zx), global2.x, u_input.b));
    return _wgslsmith_add_u32(u_input.a.x, 1u);
}

fn func_1() -> Struct_1 {
    var var_0 = ~_wgslsmith_div_vec2_u32(u_input.a.xx, u_input.a.zz);
    var var_1 = 76058u ^ (38617u << (u_input.a.x % 32u));
    global2 = ~vec3<i32>(~(~(-62540i)), u_input.b, _wgslsmith_dot_vec4_i32(~(-vec4<i32>(u_input.b, -2147483647i, 2147483647i, global2.x)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(59448u, 0u), 28u)]));
    var_1 = abs(select(4294967295u, u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(vec4<bool>(true, true, false, true)))) - _wgslsmith_f_op_f32(trunc(-826f))) != 619f));
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, func_3()), countOneBits(_wgslsmith_mod_u32(u_input.a.x, 72906u))), 28u)];
    return Struct_1(vec4<bool>(false, !(!var_2.a.d), true, any(!var_2.a.b.a.yzx)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(global2.x, func_1(), _wgslsmith_mult_vec2_u32(vec2<u32>(39308u, select(_wgslsmith_mult_u32(u_input.a.x, 26814u), u_input.a.x, true)), select(select(vec2<u32>(1u, 26227u), u_input.a.yz ^ u_input.a.xz, all(vec2<bool>(false, false))), vec2<u32>(0u, u_input.a.x) << ((u_input.a.zz ^ vec2<u32>(16981u, 8026u)) % vec2<u32>(32u)), vec2<bool>(any(vec2<bool>(true, true)), true))), true);
    var var_1 = _wgslsmith_f_op_f32(sign(1065f));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1626f)) - -1427f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(710f * 387f) - _wgslsmith_f_op_f32(round(-303f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(3383f + 1431f), _wgslsmith_f_op_f32(-379f + 819f)))) * vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -623f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -723f)))))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, var_2.x) * _wgslsmith_f_op_f32(floor(var_2.x)))))) - _wgslsmith_f_op_f32(step(-1610f, 478f)));
    global3 = array<Struct_4, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(var_0.c.x));
}

