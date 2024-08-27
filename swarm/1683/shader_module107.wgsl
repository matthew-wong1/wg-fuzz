struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: f32,
    d: f32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 7>;

var<private> global1: array<vec2<f32>, 13>;

var<private> global2: Struct_3;

var<private> global3: array<bool, 32> = array<bool, 32>(true, false, true, false, false, true, false, false, true, false, true, false, true, true, true, true, false, true, true, true, false, false, false, false, false, true, false, true, true, false, false, true);

var<private> global4: array<f32, 9> = array<f32, 9>(1636f, -1317f, 839f, -1000f, -527f, -199f, -1499f, 1000f, -1000f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> bool {
    var var_0 = global2.a;
    global2 = Struct_3(global2.a, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.b, ~1u, _wgslsmith_sub_u32(~var_0.a.x, reverseBits(1u))), _wgslsmith_mult_vec3_u32(min(vec3<u32>(var_0.a.x, global2.b, var_0.a.x), var_0.a.xxy), firstLeadingBit(~vec3<u32>(93151u, 0u, 78603u)))));
    global3 = array<bool, 32>();
    global2 = Struct_3(global2.a, _wgslsmith_clamp_u32(~countOneBits(~global2.b), _wgslsmith_mult_u32(~(global2.b & global2.a.a.x), firstTrailingBit(1551u)), var_0.a.x));
    let var_1 = global2.a.a.x;
    return global3[_wgslsmith_index_u32(var_0.a.x, 32u)];
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(~global2.a.a, global1[_wgslsmith_index_u32(global2.b, 13u)], global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(global2.a.a.x, 1u), max(reverseBits(global2.a.a.x), _wgslsmith_clamp_u32(186u, global2.b, global2.a.a.x))), 9u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(309f, -272f) - _wgslsmith_f_op_f32(-global2.a.e.x)))), global1[_wgslsmith_index_u32(190u, 13u)]));
    let var_1 = Struct_2(var_0.a);
    global0 = array<vec3<u32>, 7>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.e.x), _wgslsmith_f_op_f32(sign(var_1.a.e.x)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(abs(-1158f)), _wgslsmith_f_op_f32(-var_1.a.c)))), false & func_3())));
    var var_3 = Struct_4(Struct_2(Struct_1(var_1.a.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.d, var_2.x)) - _wgslsmith_div_vec2_f32(global1[_wgslsmith_index_u32(38205u, 13u)], var_1.a.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.x))), -1000f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global4[_wgslsmith_index_u32(global2.a.a.x, 9u)], var_2.x)))))), any(!select(vec4<bool>(global3[_wgslsmith_index_u32(7069u, 32u)], false, true, arg_0), select(vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(false, global3[_wgslsmith_index_u32(global2.b, 32u)], true, true), vec4<bool>(false, true, arg_0, global3[_wgslsmith_index_u32(4294967295u, 32u)])), true)));
    return Struct_1(~var_3.a.a.a | ~vec4<u32>(~var_0.a.a.x, ~45575u, ~global2.b, var_0.a.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_0.a.b))), var_2.x, var_1.a.c, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.c, -449f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.d, var_1.a.e.x) + global2.a.b))), vec2<f32>(-1815f, _wgslsmith_f_op_f32(abs(-643f))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_1) -> Struct_3 {
    var var_0 = arg_1.a.a.b.x;
    var var_1 = false != !global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~arg_2.a.xy), func_2(1044f != arg_1.a.a.c, _wgslsmith_sub_i32(0i, 6540i)).a.ww), 32u)];
    var var_2 = Struct_3(global2.a, global2.b);
    return Struct_3(Struct_1(countOneBits(~global2.a.a), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(428f - arg_2.d)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -228f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.d)))), _wgslsmith_f_op_f32(-1226f * 1493f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(arg_2.e)))) + var_2.a.b)), _wgslsmith_mod_u32(~abs(_wgslsmith_add_u32(1u, 35508u)), ~19656u));
}

fn func_1() -> Struct_4 {
    let var_0 = func_4(func_2(false, _wgslsmith_mod_i32(14606i, _wgslsmith_add_i32(-40447i, u_input.d) << (global2.b % 32u))), Struct_4(Struct_2(func_2(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(11419u, global2.a.a.x), 32u)], u_input.c)), global3[_wgslsmith_index_u32(~4294967295u, 32u)]), global2.a);
    global2 = var_0;
    var var_1 = -u_input.d;
    var var_2 = 11046u;
    let var_3 = Struct_2(Struct_1(_wgslsmith_mod_vec4_u32(countOneBits(var_0.a.a) ^ ~global2.a.a, _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 16749u, var_0.b, global2.a.a.x), var_0.a.a & vec4<u32>(var_0.a.a.x, 4294967295u, 4294967295u, var_0.a.a.x))), vec2<f32>(1000f, -415f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(604f + global4[_wgslsmith_index_u32(39162u, 9u)]), _wgslsmith_f_op_f32(-522f + global4[_wgslsmith_index_u32(var_0.b, 9u)]))) * global2.a.b.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.a.d * _wgslsmith_f_op_f32(701f + var_0.a.e.x)))), global2.a.e));
    return Struct_4(Struct_2(func_4(Struct_1(global2.a.a, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.a.e.x, global2.a.c))), _wgslsmith_f_op_f32(-1123f - 1319f), 305f, vec2<f32>(-1000f, var_3.a.e.x)), Struct_4(Struct_2(global2.a), global3[_wgslsmith_index_u32(~var_0.b, 32u)]), func_2(true, ~0i)).a), true);
}

fn func_5(arg_0: Struct_4) -> Struct_4 {
    var var_0 = global2.a.c;
    let var_1 = arg_0.a;
    let var_2 = !(!(!(false || func_1().b)));
    var var_3 = Struct_3(global2.a, select(1u, ~global2.a.a.x, any(vec4<bool>(true, true, true, true))));
    global0 = array<vec3<u32>, 7>();
    return Struct_4(var_1, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1());
    var var_1 = var_0;
    var var_2 = global3[_wgslsmith_index_u32(func_5(func_1()).a.a.a.x, 32u)];
    var var_3 = firstTrailingBit(var_1.a.a.a.x);
    var var_4 = ~(~(130480u >> ((~var_1.a.a.a.x ^ func_2(true, u_input.d).a.x) % 32u)));
    var_1 = func_1();
    var_1 = var_0;
    let var_5 = vec4<bool>(false, var_0.b, true && !(!(!var_0.b)), true);
    var_2 = !(global2.a.b.x >= global4[_wgslsmith_index_u32(1u, 9u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1311f, global2.a.b.x, var_1.a.a.d)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(790f, global2.a.c, 558f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1024f, 1706f, global2.a.e.x), vec3<f32>(170f, var_0.a.a.c, -581f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.d, var_1.a.a.d, global2.a.c)))))));
}

