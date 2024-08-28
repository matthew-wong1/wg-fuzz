struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: u32,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2>;

var<private> global1: array<vec3<i32>, 5>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_5, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> f32 {
    let var_0 = !vec3<bool>(all(select(vec2<bool>(true, true), select(vec2<bool>(arg_2.a, false), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 2u)]), vec2<bool>(arg_2.a, false)), select(arg_2.a, global0[_wgslsmith_index_u32(arg_0.a, 2u)], true))), !arg_2.a, true);
    let var_1 = Struct_3(firstLeadingBit(vec2<u32>(abs(4294967295u) >> (max(arg_0.a, arg_1) % 32u), 0u ^ ~u_input.a)), Struct_2(arg_2, vec3<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(69202u, arg_1), ~u_input.a), ~(~arg_0.a), 16048u), arg_2), 4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(433f, _wgslsmith_f_op_f32(max(arg_3, -361f)), -1298f, _wgslsmith_f_op_f32(arg_3 - arg_3)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_2.c, arg_2.c, arg_2.c))))));
    global1 = array<vec3<i32>, 5>();
    return 2269f;
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> u32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(Struct_5(arg_0.b.x), 33061u, arg_0.c, -253f)))) - _wgslsmith_f_op_f32(ceil(arg_0.c.c))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_5(arg_0.b.x), u_input.a, arg_0.c, _wgslsmith_f_op_f32(f32(-1f) * -1148f))) + 1229f)), arg_1, -569f);
    let var_1 = Struct_5(1u);
    var var_2 = Struct_2(Struct_1(false, abs(min(-u_input.b, i32(-1i) * -2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + 455f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1803f))))), vec3<u32>(min(~(~u_input.a), u_input.a), var_1.a | u_input.a, 71634u), Struct_1(global0[_wgslsmith_index_u32(u_input.a, 2u)], ~(_wgslsmith_div_i32(-2147483647i, -1i) & ~arg_0.c.b), _wgslsmith_f_op_f32(trunc(var_0.x))));
    var_2 = Struct_2(arg_0.c, ~abs(_wgslsmith_clamp_vec3_u32(var_2.b, arg_0.b, vec3<u32>(var_1.a, var_2.b.x, 0u)) ^ firstTrailingBit(vec3<u32>(656u, u_input.a, 4294967295u))), Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 27583u, arg_0.b.x, var_2.b.x), vec4<u32>(arg_0.b.x, 0u, 0u, var_1.a)) << (_wgslsmith_dot_vec2_u32(var_2.b.yy, var_2.b.zy) % 32u), reverseBits(var_2.b.x)), 2u)], u_input.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1))), -448f)));
    var var_3 = Struct_3(~(~var_2.b.zy) << (~((var_2.b.yy >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))) | _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.b.x, 4294967295u), arg_0.b.zx)) % vec2<u32>(32u)), Struct_2(var_2.c, vec3<u32>(0u, var_1.a, ~_wgslsmith_clamp_u32(30077u, 0u, 610u)), Struct_1(all(vec4<bool>(true, global0[_wgslsmith_index_u32(var_1.a, 2u)], false, true)) && all(vec2<bool>(arg_0.c.a, global0[_wgslsmith_index_u32(19149u, 2u)])), 46697i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -620f)))), arg_0.b.x, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.c, arg_0.c.c, var_0.x, arg_0.c.c))), _wgslsmith_div_vec4_f32(vec4<f32>(-429f, 754f, -692f, -577f), vec4<f32>(286f, var_0.x, var_0.x, -142f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_2.a.c), var_2.c.c, 569f) - vec4<f32>(_wgslsmith_f_op_f32(145f * var_0.x), _wgslsmith_f_op_f32(515f * -1774f), _wgslsmith_f_op_f32(-var_2.c.c), var_2.c.c)))));
    return var_3.c << (~0u % 32u);
}

fn func_1() -> Struct_2 {
    global0 = array<bool, 2>();
    let var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 38861u, u_input.a), ~vec4<u32>(u_input.a, u_input.a, 1u, 20653u)), ~56783u, ~61118u), vec3<u32>(func_2(Struct_2(Struct_1(global0[_wgslsmith_index_u32(4294967295u, 2u)], u_input.b, -2070f), vec3<u32>(u_input.a, 13519u, u_input.a), Struct_1(true, u_input.b, -539f)), -670f), ~0u, ~19343u) >> ((select(vec3<u32>(u_input.a, 13136u, u_input.a), vec3<u32>(28518u, 0u, 1u), false) >> (select(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 43088u), vec3<bool>(global0[_wgslsmith_index_u32(14602u, 2u)], false, true)) % vec3<u32>(32u))) % vec3<u32>(32u))), ~(~vec3<u32>(u_input.a, u_input.a, 0u)) >> (firstLeadingBit(firstTrailingBit(vec3<u32>(3118u, 4294967295u, u_input.a))) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(-1237f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1656f)))));
    var var_2 = vec2<u32>(67468u, 0u);
    let var_3 = _wgslsmith_mod_vec2_u32(abs(~(~vec2<u32>(var_0, u_input.a) & (vec2<u32>(0u, var_2.x) >> (vec2<u32>(23334u, u_input.a) % vec2<u32>(32u))))), max(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 2477u) ^ vec2<u32>(var_0, var_0), ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(var_0, 0u))), vec2<u32>(47226u, 12052u)));
    return Struct_2(Struct_1(!all(!vec4<bool>(true, global0[_wgslsmith_index_u32(var_3.x, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)], true)), u_input.b, _wgslsmith_f_op_f32(f32(-1f) * -436f)), vec3<u32>(_wgslsmith_add_u32(var_2.x, 1u), var_0, 1u), Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0, abs(~u_input.a), _wgslsmith_mult_u32(_wgslsmith_mod_u32(var_0, var_3.x), 1u)), 2u)], ~u_input.b, -503f));
}

fn func_4(arg_0: Struct_2) -> f32 {
    global0 = array<bool, 2>();
    var var_0 = select(vec2<bool>(select(u_input.b, ~u_input.b, true) < ~_wgslsmith_mod_i32(2147483647i, arg_0.a.b), !any(!vec2<bool>(global0[_wgslsmith_index_u32(11162u, 2u)], global0[_wgslsmith_index_u32(24860u, 2u)]))), !vec2<bool>(false, (u_input.a & 37760u) < 1u), !arg_0.c.a);
    var_0 = select(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 2u)]), !select(!(!vec2<bool>(global0[_wgslsmith_index_u32(arg_0.b.x, 2u)], true)), !vec2<bool>(global0[_wgslsmith_index_u32(arg_0.b.x, 2u)], var_0.x), global0[_wgslsmith_index_u32(~(~u_input.a), 2u)]), !select(select(!vec2<bool>(var_0.x, false), select(vec2<bool>(true, false), vec2<bool>(arg_0.a.a, arg_0.c.a), var_0.x), select(vec2<bool>(arg_0.c.a, true), vec2<bool>(global0[_wgslsmith_index_u32(0u, 2u)], arg_0.a.a), vec2<bool>(arg_0.c.a, false))), !(!vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 2u)])), !select(var_0.x, arg_0.c.a, global0[_wgslsmith_index_u32(arg_0.b.x, 2u)])));
    var_0 = vec2<bool>(var_0.x, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(reverseBits(countOneBits(arg_0.b.x >> (arg_0.b.x % 32u))), 1580u), 2u)]);
    var_0 = select(select(select(select(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 2u)], true), vec2<bool>(arg_0.a.a, global0[_wgslsmith_index_u32(4294967295u, 2u)]), vec2<bool>(arg_0.c.a, var_0.x)), select(vec2<bool>(arg_0.c.a, var_0.x), vec2<bool>(false, arg_0.c.a), arg_0.a.a), all(vec3<bool>(false, false, arg_0.a.a))), select(!vec2<bool>(true, arg_0.a.a), !vec2<bool>(global0[_wgslsmith_index_u32(49117u, 2u)], true), select(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 2u)]), vec2<bool>(arg_0.c.a, var_0.x), var_0.x)), select(vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(global0[_wgslsmith_index_u32(381u, 2u)], arg_0.a.a), vec2<bool>(arg_0.a.a, arg_0.a.a), false), vec2<bool>(true, true))), select(!vec2<bool>(arg_0.c.a, false), vec2<bool>(true, true), select(!vec2<bool>(arg_0.a.a, global0[_wgslsmith_index_u32(36464u, 2u)]), vec2<bool>(false, arg_0.a.a), !vec2<bool>(var_0.x, true))), u_input.a >= 4294967295u), select(vec2<bool>(true, true), vec2<bool>(u_input.a < 4294967295u, false), !select(!vec2<bool>(false, arg_0.a.a), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, global0[_wgslsmith_index_u32(17808u, 2u)]), var_0.x), u_input.b > 2147483647i)), vec2<bool>(!global0[_wgslsmith_index_u32(countOneBits(1u), 2u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.c * 1000f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.a.c)) * 264f)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1486f, -225f) * arg_0.a.c) + arg_0.c.c) + _wgslsmith_f_op_f32(max(1916f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.c, arg_0.a.c))))) * 329f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(-1276f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1278f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(693f, 1000f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_4(func_1())))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -912f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(true, u_input.b, -2131f), vec3<u32>(145471u, u_input.a, u_input.a), Struct_1(global0[_wgslsmith_index_u32(0u, 2u)], -17671i, -109f)))), 1f, global0[_wgslsmith_index_u32(11872u, 2u)] && global0[_wgslsmith_index_u32(u_input.a, 2u)])))));
    var var_1 = select(u_input.b, firstLeadingBit(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(0i, -37168i)) << (max(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)), vec2<i32>(~u_input.b, ~u_input.b))), !(!all(vec2<bool>(global0[_wgslsmith_index_u32(11401u, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)]))));
    var var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(-1f))), 0u, var_2.b, var_2.b.x);
}

