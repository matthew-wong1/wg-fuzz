struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(false, vec4<bool>(false, true, false, false), vec3<bool>(true, true, true), vec3<f32>(-651f, 310f, -1337f)), Struct_1(false, vec4<bool>(true, false, true, false), vec3<bool>(false, true, false), vec3<f32>(-1030f, -1789f, 1390f)), Struct_1(false, vec4<bool>(false, true, false, true), vec3<bool>(true, false, false), vec3<f32>(-800f, -738f, 1118f)), Struct_1(true, vec4<bool>(true, false, true, true), vec3<bool>(true, false, false), vec3<f32>(-365f, 719f, -1248f)), Struct_1(false, vec4<bool>(true, true, true, true), vec3<bool>(false, true, true), vec3<f32>(443f, -1705f, -1277f)), Struct_1(true, vec4<bool>(false, false, true, false), vec3<bool>(false, true, true), vec3<f32>(457f, 1368f, 739f)), Struct_1(false, vec4<bool>(true, false, false, true), vec3<bool>(false, false, false), vec3<f32>(-871f, 275f, 1041f)), Struct_1(false, vec4<bool>(false, false, true, false), vec3<bool>(true, true, false), vec3<f32>(-150f, -659f, 480f)), Struct_1(false, vec4<bool>(false, true, false, false), vec3<bool>(true, false, false), vec3<f32>(540f, -397f, -859f)), Struct_1(true, vec4<bool>(false, true, true, true), vec3<bool>(false, true, false), vec3<f32>(475f, -213f, 210f)), Struct_1(true, vec4<bool>(false, true, false, true), vec3<bool>(true, false, true), vec3<f32>(1065f, -990f, -559f)), Struct_1(true, vec4<bool>(true, true, true, true), vec3<bool>(true, false, false), vec3<f32>(213f, 2514f, -1000f)), Struct_1(false, vec4<bool>(false, true, true, true), vec3<bool>(true, true, true), vec3<f32>(-574f, 1235f, -632f)), Struct_1(false, vec4<bool>(false, true, true, true), vec3<bool>(true, false, true), vec3<f32>(-245f, 1014f, 1422f)), Struct_1(true, vec4<bool>(true, true, true, true), vec3<bool>(true, true, true), vec3<f32>(294f, 423f, 402f)), Struct_1(false, vec4<bool>(true, false, false, true), vec3<bool>(false, true, true), vec3<f32>(850f, -1000f, 266f)), Struct_1(false, vec4<bool>(true, false, true, false), vec3<bool>(true, false, true), vec3<f32>(289f, 1000f, 424f)), Struct_1(false, vec4<bool>(false, false, true, true), vec3<bool>(false, true, true), vec3<f32>(173f, 1341f, 1578f)), Struct_1(false, vec4<bool>(true, false, true, false), vec3<bool>(false, true, true), vec3<f32>(908f, 243f, -1023f)), Struct_1(false, vec4<bool>(true, true, true, true), vec3<bool>(true, false, false), vec3<f32>(841f, -1000f, 910f)), Struct_1(false, vec4<bool>(false, false, true, true), vec3<bool>(true, true, false), vec3<f32>(-379f, 1226f, 815f)), Struct_1(true, vec4<bool>(false, true, true, false), vec3<bool>(false, false, true), vec3<f32>(517f, -1093f, -1625f)), Struct_1(false, vec4<bool>(false, true, false, true), vec3<bool>(true, false, false), vec3<f32>(485f, -305f, -242f)), Struct_1(true, vec4<bool>(true, false, false, true), vec3<bool>(true, true, false), vec3<f32>(744f, -384f, 248f)));

var<private> global1: array<vec4<i32>, 17>;

var<private> global2: Struct_1 = Struct_1(true, vec4<bool>(true, true, false, true), vec3<bool>(false, true, true), vec3<f32>(423f, -1550f, -1975f));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> bool {
    global0 = array<Struct_1, 24>();
    var var_0 = _wgslsmith_f_op_f32(ceil(1f));
    global1 = array<vec4<i32>, 17>();
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d.x, -1263f, global2.d.x, 1055f)))) - vec4<f32>(global2.d.x, 829f, global2.d.x, global2.d.x)), global0[_wgslsmith_index_u32(u_input.a.x, 24u)]);
    var_0 = 317f;
    return true;
}

fn func_2() -> i32 {
    let var_0 = ~(0i | ~countOneBits(u_input.b.x));
    var var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.d.x * global2.d.x) - 356f)), global2.d.x, _wgslsmith_f_op_f32(step(global2.d.x, _wgslsmith_f_op_f32(abs(global2.d.x)))), global2.d.x), Struct_1(global2.c.x, global2.b, vec3<bool>(!global2.c.x, false, !(!global2.c.x)), global2.d));
    var var_2 = Struct_2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_1.b.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(492f * 1856f) * _wgslsmith_f_op_f32(global2.d.x * var_1.a.x))), -843f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1976f * _wgslsmith_f_op_f32(1000f + global2.d.x))), 1000f), Struct_1(all(select(select(vec2<bool>(false, global2.a), vec2<bool>(false, false), global2.c.yy), select(vec2<bool>(false, false), global2.c.xz, var_1.b.c.xx), vec2<bool>(var_1.b.a, false))), select(select(var_1.b.b, vec4<bool>(var_1.b.a, var_1.b.c.x, global2.c.x, false), global2.b), global2.b, global2.b), var_1.b.b.wyy, var_1.a.wyy));
    global1 = array<vec4<i32>, 17>();
    let var_3 = select(!(!var_2.b.b), vec4<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(633f + var_1.b.d.x), -1310f)) != _wgslsmith_f_op_f32(-1656f + 918f), func_3(), u_input.a.x <= _wgslsmith_mod_u32(~u_input.d, 85962u), !(!global2.c.x)), select(true, !(!(!var_1.b.c.x)), all(global2.b.zx)));
    return _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(abs(vec4<i32>(var_0, u_input.b.x, var_0, -2147483647i) << (abs(vec4<u32>(u_input.a.x, u_input.d, 4294967295u, 2787u)) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, var_0, i32(-1i) * -1i, u_input.b.x), u_input.b)), vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], u_input.b, global1[_wgslsmith_index_u32(u_input.d, 17u)]), u_input.b));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: u32) -> u32 {
    let var_0 = ~(-select(min(vec4<i32>(32984i, arg_1.x, arg_1.x, 50276i), ~vec4<i32>(-4845i, arg_0, -2147483647i, arg_1.x)), vec4<i32>(-1i, -8048i, func_2(), _wgslsmith_add_i32(arg_1.x, arg_1.x)), global2.b.x));
    let var_1 = _wgslsmith_f_op_f32(global2.d.x * global2.d.x);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1962f, var_1))) - -1007f)), 150f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1)) - _wgslsmith_f_op_f32(f32(-1f) * -333f)))), _wgslsmith_f_op_f32(max(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - var_1))));
    let var_3 = global2.d.xy;
    let var_4 = -(~vec3<i32>(0i, -2147483647i, arg_0) >> (vec3<u32>(u_input.c.x, arg_2, arg_2) % vec3<u32>(32u)));
    return abs(_wgslsmith_mult_u32(_wgslsmith_add_u32(~_wgslsmith_add_u32(u_input.c.x, 1u), ~0u), 29256u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~(~firstTrailingBit(func_1(~(-43193i), ~u_input.b.zx, ~u_input.c.x))), 24u)];
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1566f, -1234f, global2.d.x, var_0.d.x), vec4<f32>(626f, -355f, -846f, global2.d.x)))))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(122280u, u_input.a.x, u_input.a.x) | 69159u, ~(4294967295u | min(0u, u_input.c.x))), 24u)]);
    let var_2 = u_input.b.zy;
    global0 = array<Struct_1, 24>();
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.d.x)) * 552f), 158f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(657f))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(1800f)), _wgslsmith_f_op_f32(select(global2.d.x, var_0.d.x, global2.c.x)), _wgslsmith_f_op_f32(min(-688f, -1670f)), _wgslsmith_f_op_f32(min(var_0.d.x, global2.d.x))) + vec4<f32>(_wgslsmith_f_op_f32(min(1758f, -622f)), _wgslsmith_f_op_f32(ceil(var_0.d.x)), var_1.a.x, 613f))), global0[_wgslsmith_index_u32(~u_input.a.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, _wgslsmith_mod_u32(0u, 13444u)), ~vec3<u32>(u_input.d, 1u, u_input.a.x)) % 32u), 24u)]);
    let var_4 = var_3.a.ww;
    let var_5 = _wgslsmith_clamp_vec2_i32(-(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.b.yw, u_input.b.zz), 1i) ^ _wgslsmith_add_vec2_i32(var_2, max(vec2<i32>(var_2.x, var_2.x), vec2<i32>(var_2.x, -1i)))), vec2<i32>(abs(2147483647i), _wgslsmith_add_i32(countOneBits(17314i), _wgslsmith_mod_i32(1i, -2471i))), vec2<i32>(u_input.b.x, _wgslsmith_mult_i32(var_2.x, ~(~var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(min(0u, max(u_input.c.x, u_input.c.x)), max(1797u, u_input.c.x), reverseBits(_wgslsmith_div_u32(4294967295u, 24192u)), u_input.c.x), 4294967295u, vec3<u32>(min(50188u, firstTrailingBit(func_1(u_input.b.x, var_5, u_input.a.x))), ~90881u >> ((_wgslsmith_div_u32(u_input.c.x, u_input.a.x) & max(1u, 80436u)) % 32u), _wgslsmith_mult_u32(~65797u, ~u_input.d)), ~_wgslsmith_div_vec3_i32(u_input.b.xzx, ~(-u_input.b.zww)), 2147483647i);
}

