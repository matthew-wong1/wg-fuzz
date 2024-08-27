struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: i32,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> vec4<f32> {
    var var_0 = false;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2137f, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x)))), global0.x));
}

fn func_3() -> u32 {
    global0 = vec4<f32>(_wgslsmith_div_f32(global0.x, -933f), global0.x, 313f, global0.x);
    var var_0 = Struct_4(_wgslsmith_mod_u32(countOneBits(min(u_input.a.x, u_input.a.x << (0u % 32u))), ~firstLeadingBit(0u)), Struct_3(max(select(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 12028u, 4294967295u, 4294967295u), vec4<u32>(u_input.a.x, 34257u, 169u, 1u)), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 1u), vec4<bool>(true, true, true, true)), abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 66950u, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 0u, 0u)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(1382f, 1525f, true)), _wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -127f))), -2147483647i, global0.x, -829f));
    var_0 = Struct_4((u_input.a.x ^ 4294967295u) & var_0.b.a.x, var_0.b);
    let var_1 = false;
    var_0 = Struct_4(u_input.a.x, var_0.b);
    return 11088u;
}

fn func_1() -> Struct_2 {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2()))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-806f, global0.x, 324f, global0.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, global0.x))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-552f, 100f, global0.x, 474f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -280f, global0.x, 1000f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-573f, global0.x, global0.x, global0.x) * vec4<f32>(1391f, 1000f, -960f, 380f))))), func_3() != 67057u)));
    global0 = vec4<f32>(global0.x, global0.x, global0.x, 151f);
    let var_0 = _wgslsmith_f_op_vec4_f32(func_2()).x;
    var var_1 = max(~(~vec4<u32>(~20646u, u_input.a.x, 27234u, u_input.a.x)), vec4<u32>(~reverseBits(u_input.a.x) | _wgslsmith_dot_vec2_u32(vec2<u32>(5620u, 120272u), u_input.a), u_input.a.x, 42396u, 1u));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, var_0, -914f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(438f, global0.x, -285f, -779f), vec4<f32>(-445f, global0.x, var_0, var_0), false)))))));
    return Struct_2(any(vec2<bool>(true, true)), global0.x, Struct_1(vec2<u32>(42862u, u_input.a.x), !(true | any(vec3<bool>(false, false, true))), vec3<f32>(-724f, -2241f, _wgslsmith_f_op_f32(f32(-1f) * -187f))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32, arg_3: Struct_3) -> Struct_2 {
    global0 = vec4<f32>(298f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2()).x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + global0.x)))), -262f);
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.b.x), _wgslsmith_f_op_f32(select(-1640f, _wgslsmith_f_op_f32(-2268f * 867f), func_1().c.b))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-382f, 1318f, !arg_1.a)) - _wgslsmith_f_op_f32(-arg_1.c.c.x))), arg_3.d, -624f, _wgslsmith_f_op_f32(f32(-1f) * -257f));
    let var_0 = arg_3.a.x;
    var var_1 = 134f;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * -690f))))));
    return Struct_2(select((reverseBits(1u) > _wgslsmith_mod_u32(arg_1.c.a.x, 1u)) & !all(vec2<bool>(arg_0.b, arg_1.a)), any(!vec3<bool>(false, true, arg_1.a)), (39264u & (u_input.a.x >> (7502u % 32u))) > _wgslsmith_add_u32(abs(128303u), ~4294967295u)), -329f, Struct_1(_wgslsmith_sub_vec2_u32((vec2<u32>(25579u, var_0) | vec2<u32>(36274u, 27371u)) >> ((u_input.a ^ vec2<u32>(4294967295u, arg_0.a.x)) % vec2<u32>(32u)), reverseBits(u_input.a)), all(select(!vec2<bool>(arg_1.c.b, arg_1.c.b), select(vec2<bool>(arg_1.a, true), vec2<bool>(false, true), arg_1.c.b), select(vec2<bool>(arg_1.c.b, arg_0.b), vec2<bool>(true, true), arg_0.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.c.x, 316f, arg_0.c.x), arg_3.b, true)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(vec2<u32>(~_wgslsmith_div_u32(0u, 70675u), _wgslsmith_clamp_u32(13314u, abs(u_input.a.x), 1u)), select(false, true, true), vec3<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-398f)) * _wgslsmith_f_op_f32(-global0.x)), -485f)), func_1(), ~_wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(u_input.a.x, max(u_input.a.x, 1u), u_input.a.x)), Struct_3(reverseBits(vec4<u32>(38427u, 1u, u_input.a.x, u_input.a.x) | vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), global0.wwx, u_input.b.x, global0.x, global0.x));
    let var_1 = u_input.a.x;
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(370f, _wgslsmith_f_op_f32(f32(-1f) * -593f), _wgslsmith_f_op_f32(-var_0.c.c.x), var_0.c.c.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, 826f, global0.x, -960f)))))));
    let var_2 = func_1();
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-884f, _wgslsmith_div_f32(-842f, 823f))) * func_4(var_0.c, func_4(var_0.c, func_1(), 1u, Struct_3(vec4<u32>(0u, 17280u, var_2.c.a.x, u_input.a.x), vec3<f32>(var_0.b, 1000f, var_2.b), u_input.b.x, var_2.c.c.x, var_2.b)), var_1, Struct_3(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1, var_0.c.a.x, var_0.c.a.x, 47319u), vec4<u32>(u_input.a.x, 133905u, 1u, 26568u), vec4<u32>(var_1, var_1, var_1, 28415u)), _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, var_0.c.c.x, -1428f), vec3<f32>(var_0.c.c.x, var_0.b, global0.x)), 2147483647i, _wgslsmith_f_op_f32(f32(-1f) * -565f), _wgslsmith_f_op_f32(max(var_0.c.c.x, -1000f)))).b), -553f, _wgslsmith_div_f32(125f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * _wgslsmith_div_f32(var_0.b, global0.x)))), _wgslsmith_f_op_f32(-global0.x));
    var var_3 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-951f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -486f), global0.x)) + _wgslsmith_f_op_f32(min(-1560f, 669f))), 1623f, -951f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1167f + func_4(var_0.c, var_2, 0u, Struct_3(vec4<u32>(4294967295u, 25484u, 58482u, 1u), var_0.c.c, 1i, var_0.c.c.x, -1000f)).b) + 1615f), global0.x), func_4(func_4(var_2.c, func_4(var_0.c, Struct_2(false, var_2.c.c.x, Struct_1(vec2<u32>(0u, 55911u), false, vec3<f32>(836f, 499f, var_0.c.c.x))), ~var_0.c.a.x, Struct_3(vec4<u32>(var_0.c.a.x, 4294967295u, 6097u, var_0.c.a.x), vec3<f32>(var_2.c.c.x, var_2.c.c.x, -237f), 2147483647i, var_2.b, var_0.b)), var_0.c.a.x, Struct_3(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, var_1, var_1, var_0.c.a.x), vec4<u32>(4294967295u, var_2.c.a.x, var_2.c.a.x, 59985u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1204f, 1241f) * var_2.c.c), u_input.b.x, _wgslsmith_f_op_f32(-var_0.b), -1036f)).c, var_0, _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_1, var_2.c.a.x, 41452u), vec3<u32>(u_input.a.x, 1u, 10304u)), vec3<u32>(var_2.c.a.x, var_0.c.a.x, _wgslsmith_div_u32(u_input.a.x, 59009u))), Struct_3(~(~vec4<u32>(var_0.c.a.x, var_1, u_input.a.x, var_2.c.a.x)), vec3<f32>(_wgslsmith_f_op_f32(global0.x + var_3.x), var_2.b, 122f), 19578i, _wgslsmith_f_op_vec4_f32(func_2()).x, _wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(1416f - -1000f)))).c.c.x, u_input.b.x, var_0.c.a.x);
}

