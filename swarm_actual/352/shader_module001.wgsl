struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec4<i32>,
    d: f32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: i32,
    c: Struct_2,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec3<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 21>;

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, false);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> f32 {
    global1 = select(select(vec4<bool>(!global1.x & global1.x, false, any(select(global1.zx, vec2<bool>(true, false), false)), global1.x), select(vec4<bool>(true, false, false, false), vec4<bool>(false, global1.x, true, any(global1.zy)), global1.x), select(!(!vec4<bool>(global1.x, false, false, true)), vec4<bool>(true, any(global1.xz), true, true), global1.x)), !(!vec4<bool>(false, true, global1.x, any(vec2<bool>(false, global1.x)))), select(vec4<bool>(false, !any(global1.zx), true, (u_input.b.x & u_input.b.x) > ~42861i), select(vec4<bool>(true, u_input.a.x < u_input.a.x, true, !global1.x), select(select(vec4<bool>(true, false, global1.x, true), vec4<bool>(global1.x, true, true, false), global1.x), vec4<bool>(global1.x, global1.x, true, false), vec4<bool>(true, global1.x, false, global1.x)), !(!vec4<bool>(global1.x, true, global1.x, true))), all(vec2<bool>(!global1.x, true))));
    let var_0 = global1.x;
    global1 = vec4<bool>(all(select(select(select(vec4<bool>(false, true, global1.x, global1.x), vec4<bool>(global1.x, global1.x, global1.x, true), false), !vec4<bool>(true, false, false, global1.x), u_input.b.x >= u_input.a.x), select(!vec4<bool>(false, true, global1.x, global1.x), !vec4<bool>(global1.x, global1.x, global1.x, global1.x), global1.x), false)), global1.x, !(!global1.x), global1.x);
    let var_1 = Struct_5(vec4<i32>(u_input.b.x, _wgslsmith_add_i32(reverseBits(u_input.a.x), u_input.a.x), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(-37208i, -59820i, 1i, 0i), vec4<i32>(u_input.a.x, -34819i, 1i, u_input.b.x) | u_input.b), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, -1i) ^ global0[_wgslsmith_index_u32(1u, 21u)])), _wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_mod_i32(1i, -2147483647i), 2147483647i), countOneBits(u_input.b.x) & 0i)), 60746i, Struct_2(2147483647i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1115f, 801f, -454f) + _wgslsmith_div_vec3_f32(vec3<f32>(-1557f, 870f, 596f), vec3<f32>(240f, 1220f, 788f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -729f, 253f) + vec3<f32>(-675f, 809f, -494f)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1746f, -604f, 505f), vec3<f32>(-1515f, -1628f, 134f))))), -234f), _wgslsmith_f_op_f32(f32(-1f) * -118f), -1000f);
    let var_2 = Struct_1(!vec3<bool>(true, all(vec2<bool>(false, true)), global1.x), min(_wgslsmith_mult_vec2_u32(~select(vec2<u32>(0u, 5476u), vec2<u32>(4294967295u, 20272u), vec2<bool>(false, global1.x)), ~vec2<u32>(62999u, 16647u)), vec2<u32>(firstLeadingBit(4294967295u), select(0u, 4294967295u, true)) >> (vec2<u32>(~2509u, 13985u >> (1u % 32u)) % vec2<u32>(32u))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-921f - var_1.d) + -1248f), _wgslsmith_f_op_f32(var_1.d - _wgslsmith_f_op_f32(step(1078f, var_1.d))))), -162f), -1460f));
}

fn func_2() -> Struct_1 {
    let var_0 = reverseBits(vec2<u32>(1u, 1u));
    var var_1 = Struct_4(select(global1.xxz, !global1.wxy, select(select(vec3<bool>(true, false, true), select(global1.xyw, vec3<bool>(global1.x, global1.x, true), global1.x), false), vec3<bool>(true, global1.x, true), select(!vec3<bool>(true, global1.x, global1.x), select(global1.xwz, vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(true, false, global1.x)), true || global1.x))), vec2<bool>(true, true), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(29699u, 23513u)), min(4294967295u, var_0.x) << (~1u % 32u), (var_0.x << (4294967295u % 32u)) & var_0.x, 77042u), vec4<u32>(abs(5043u), 19173u & ~var_0.x, var_0.x, ~var_0.x)), 21u)], _wgslsmith_f_op_f32(func_3()));
    let var_2 = Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(abs(-2147483647i), -4468i, i32(-1i) * -56882i), abs(_wgslsmith_div_vec3_i32(vec3<i32>(var_1.c.x, u_input.a.x, 2147483647i), u_input.b.wzx))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.d), 376f, var_1.d)), var_1.d);
    var var_3 = ~(~(~vec3<u32>(1u, 82403u, abs(28501u))));
    let var_4 = var_2;
    return Struct_1(vec3<bool>(!(_wgslsmith_f_op_f32(round(var_4.b.x)) <= 1765f), !all(!global1.zy), true), _wgslsmith_div_vec2_u32(var_0, ~var_0));
}

fn func_1() -> vec4<u32> {
    var var_0 = Struct_1(vec3<bool>(true, !global1.x, global1.x), vec2<u32>(37095u, ~(~4294967295u) >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 17621u), ~vec2<u32>(1u, 0u)) % 32u)));
    var var_1 = Struct_1(vec3<bool>(true, true, (u_input.b.x > -9863i) != (-2147483647i < _wgslsmith_dot_vec3_i32(u_input.b.zxx, vec3<i32>(2147483647i, u_input.b.x, u_input.b.x)))), ~var_0.b);
    var_1 = func_2();
    global1 = vec4<bool>(var_1.a.x, var_1.a.x, true, firstLeadingBit(var_0.b.x) != ~var_1.b.x);
    let var_2 = func_2();
    return vec4<u32>(5329u & (~(~var_0.b.x) | 0u), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32((vec4<u32>(var_2.b.x, 1u, var_1.b.x, var_0.b.x) | vec4<u32>(29705u, var_0.b.x, var_2.b.x, var_1.b.x)) << (~vec4<u32>(60587u, var_2.b.x, var_1.b.x, var_0.b.x) % vec4<u32>(32u)), select(~vec4<u32>(var_2.b.x, 4294967295u, var_2.b.x, 37047u), max(vec4<u32>(var_2.b.x, var_0.b.x, var_2.b.x, var_0.b.x), vec4<u32>(0u, 34053u, 1u, var_1.b.x)), !vec4<bool>(true, global1.x, false, false))), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, var_1.b.x, var_2.b.x, var_2.b.x), vec4<u32>(var_1.b.x, 4294967295u, var_1.b.x, 0u) & vec4<u32>(1u, 14785u, 1u, 4294967295u))), ~max(4294967295u, 49958u), select(31132u, ~1u, any(!vec3<bool>(global1.x, var_0.a.x, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, abs(4294967295u), ~64743u, 37052u), ~func_1()) & select(~countOneBits(1u), 1u >> (_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(22611u, 63351u), vec2<u32>(33568u, 22733u)), ~0u) % 32u), true);
    let var_1 = _wgslsmith_dot_vec3_u32(~(firstLeadingBit(~vec3<u32>(var_0, 59858u, 1u)) & vec3<u32>(26260u, 1413u, ~var_0)), min(~(reverseBits(vec3<u32>(var_0, var_0, var_0)) >> (vec3<u32>(var_0, var_0, 1u) % vec3<u32>(32u))), select(vec3<u32>(_wgslsmith_mult_u32(1u, var_0), _wgslsmith_mult_u32(4294967295u, 0u), _wgslsmith_add_u32(29704u, var_0)), ~vec3<u32>(0u, 4294967295u, var_0) | vec3<u32>(8464u, var_0, 4294967295u), global1.xwy)));
    let var_2 = var_1;
    global0 = array<vec4<i32>, 21>();
    let var_3 = 2147483647i;
    let var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b.x, u_input.b.xxy, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(699f, 316f, 644f, -803f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(219f, -1000f, -1085f, 1906f) + vec4<f32>(538f, -1000f, -674f, 1079f)))))), _wgslsmith_clamp_vec3_i32(-(~u_input.b.yzz), u_input.b.wzw, u_input.b.yww), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1000f - 187f), _wgslsmith_f_op_f32(func_3()), 444f, _wgslsmith_f_op_f32(-1000f - -1112f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1917f, -372f, 1181f, 1238f)))), vec4<f32>(1f, _wgslsmith_f_op_f32(max(-997f, _wgslsmith_f_op_f32(f32(-1f) * -1589f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1194f))), _wgslsmith_f_op_f32(func_3())))));
}

