struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec3<bool>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 1>;

var<private> global2: vec3<u32>;

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(global0.b)), -433f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-383f)), _wgslsmith_f_op_f32(-global3.b)), global3.b)) * vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2399f - -286f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-856f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global0.b)), _wgslsmith_f_op_f32(floor(-848f)))), _wgslsmith_f_op_f32(ceil(global3.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global3.b)) * _wgslsmith_f_op_f32(-global0.b))));
    let var_1 = Struct_2(!vec4<bool>(false, !global3.c.x, true, all(!vec3<bool>(true, global3.d, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.b, _wgslsmith_div_f32(global3.b, _wgslsmith_f_op_f32(-global0.b))))), _wgslsmith_mod_i32(abs(_wgslsmith_clamp_i32(~2147483647i, ~u_input.b, ~u_input.d)), 2147483647i));
    global1 = array<Struct_1, 1>();
    global2 = u_input.c;
    global3 = global1[_wgslsmith_index_u32(global3.e, 1u)];
    return _wgslsmith_add_u32(_wgslsmith_clamp_u32(global3.a.x, global3.a.x, ~(10672u >> (u_input.c.x % 32u)) << (0u % 32u)), max(4294967295u << (_wgslsmith_mult_u32(4294967295u, u_input.c.x) % 32u), ~0u) << (~global2.x % 32u));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec2_u32(~vec2<u32>(65208u << (u_input.e % 32u), global2.x), global0.a);
    var var_1 = ~vec4<u32>(1u, firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(global2.x, 4294967295u, global2.x), u_input.e)), global2.x, arg_0.e);
    let var_2 = global3.e;
    var var_3 = global1[_wgslsmith_index_u32(4294967295u & _wgslsmith_sub_u32(~1u | _wgslsmith_sub_u32(~arg_0.a.x, _wgslsmith_sub_u32(49048u, global2.x)), u_input.e), 1u)];
    var_1 = min(_wgslsmith_add_vec4_u32(select(vec4<u32>(88204u, global3.e, 71189u, global2.x) << (vec4<u32>(var_3.e, u_input.e, 4294967295u, 29954u) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(1u, global2.x, var_3.e, arg_0.e)), arg_2), ~countOneBits(vec4<u32>(arg_0.e, u_input.e, var_1.x, global0.e))), vec4<u32>(_wgslsmith_mult_u32(global3.e, func_3(u_input.e)), ~_wgslsmith_mod_u32(0u, 10152u), _wgslsmith_clamp_u32(var_1.x, 1u, abs(4294967295u)), ~(~0u))) << (vec4<u32>(_wgslsmith_add_u32(1u, ~(global2.x << (arg_0.e % 32u))), _wgslsmith_mult_u32(arg_0.e, 1u), global2.x, ~global0.a.x) % vec4<u32>(32u));
    return Struct_1(~firstTrailingBit(global2.zz >> ((var_1.xw | global3.a) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1348f)), !vec3<bool>(global0.c.x, false, false), var_3.c.x, 67441u);
}

fn func_1() -> Struct_2 {
    let var_0 = func_2(global1[_wgslsmith_index_u32(global3.e, 1u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b + 2784f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-577f - global3.b))) - global3.b), all(!(!select(global0.c, global3.c, vec3<bool>(true, global0.d, true)))));
    let var_1 = Struct_2(!(!(!(!vec4<bool>(global0.d, false, false, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(471f + var_0.b)) * _wgslsmith_f_op_f32(min(global3.b, 626f)))), u_input.d);
    global2 = ~select(vec3<u32>(0u, abs(1u), 4294967295u), vec3<u32>(46819u, global3.e, ~1u), var_1.a.x);
    var var_2 = global1[_wgslsmith_index_u32(global0.e, 1u)];
    global0 = var_0;
    return Struct_2(select(!vec4<bool>(!global3.d, false, all(vec4<bool>(var_0.d, global0.c.x, true, var_2.d)), any(vec4<bool>(var_1.a.x, true, false, global3.d))), vec4<bool>(true, true, true, true), !global3.d), _wgslsmith_f_op_f32(-var_2.b), 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(-global3.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.b)), -818f), _wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(sign(-1260f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(736f, global0.b, -1534f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, global0.b, global0.b))) - vec3<f32>(_wgslsmith_f_op_f32(-406f - 356f), _wgslsmith_f_op_f32(abs(global0.b)), _wgslsmith_f_op_f32(round(var_0.b))))));
    global1 = array<Struct_1, 1>();
    let var_2 = Struct_1(~select(max(global2.zz, vec2<u32>(global0.a.x, global0.e)) & ~u_input.c.yx, _wgslsmith_mod_vec2_u32(global2.yx, _wgslsmith_sub_vec2_u32(vec2<u32>(global3.e, u_input.e), vec2<u32>(0u, global2.x))), !var_0.a.yy), 1018f, vec3<bool>(false, true, func_2(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(u_input.c.xz, global3.a), 1u)], _wgslsmith_f_op_f32(max(global3.b, _wgslsmith_f_op_f32(-var_1.x))), global0.e != ~1u).d), select(!global0.c.x, !all(vec4<bool>(global3.c.x, global3.d, var_0.a.x, true)) || func_1().a.x, false), u_input.c.x);
    let var_3 = vec4<u32>(~33482u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.e ^ 37554u, ~4294967295u) >> (~(~45908u) % 32u), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_2.e, 19533u, u_input.e)), vec3<u32>(global2.x, var_2.a.x, 0u)) >> (select(~0u, var_2.a.x, select(false, false, true)) % 32u)), ~global2.x >> ((4294967295u ^ global0.e) % 32u), ~1u);
    global3 = func_2(func_2(Struct_1(~var_2.a, var_0.b, vec3<bool>(true, false, var_0.a.x), false || var_0.a.x, _wgslsmith_add_u32(29031u, 1u)), _wgslsmith_f_op_f32(195f * func_2(func_2(Struct_1(global3.a, -739f, global3.c, false, var_3.x), -1000f, true), _wgslsmith_f_op_f32(global0.b - 1201f), var_0.c == 2367i).b), global0.d), _wgslsmith_f_op_f32(max(var_0.b, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), true);
    var var_4 = max(firstTrailingBit(abs(~vec3<u32>(u_input.c.x, 1u, 31496u))), ~vec3<u32>(func_3(var_2.a.x), var_3.x, var_2.a.x)) << ((vec3<u32>(min(var_2.e, ~global3.e), _wgslsmith_dot_vec4_u32(var_3, vec4<u32>(global3.a.x, global2.x, u_input.e, 33392u)), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(var_3, var_3, vec4<u32>(24628u, 62214u, global2.x, 0u)), vec4<u32>(0u, global2.x, 4294967295u, var_3.x))) ^ (_wgslsmith_sub_vec3_u32(vec3<u32>(37352u, 21253u, global2.x) ^ u_input.c, ~var_3.zyy) | ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e, 9806u, var_2.a.x), var_3.zzw))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer((var_0.c >> (~(~0u) % 32u)) & -24741i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_2.b))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(656f)), _wgslsmith_f_op_f32(-271f * 693f))), var_1);
}

