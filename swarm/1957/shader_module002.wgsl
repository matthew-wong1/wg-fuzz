struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_5 {
    a: vec4<u32>,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_4, 1> = array<Struct_4, 1>(Struct_4(Struct_2(Struct_1(-1i)), Struct_3(vec3<f32>(-1000f, 636f, -1289f), vec4<f32>(790f, 946f, -121f, -949f)), vec3<f32>(-1962f, -532f, 1783f), Struct_1(45795i)));

var<private> global2: array<vec4<i32>, 14>;

var<private> global3: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(Struct_1(0i)), Struct_2(Struct_1(0i)), Struct_2(Struct_1(i32(-2147483648))), Struct_2(Struct_1(1i)));

var<private> global4: vec2<f32> = vec2<f32>(351f, 787f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: i32, arg_3: f32) -> vec3<u32> {
    var var_0 = !(!(true & (-global0.a < -63574i)));
    global3 = array<Struct_2, 4>();
    var var_1 = min(vec3<u32>(~_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b, arg_1.x, arg_1.x, 4294967295u)), ~vec4<u32>(u_input.a.x, 0u, arg_1.x, arg_1.x)), _wgslsmith_clamp_u32(u_input.d.x, select(u_input.a.x, arg_1.x, false) ^ ~u_input.b, _wgslsmith_mod_u32(arg_1.x, 60074u) >> (abs(arg_1.x) % 32u)), countOneBits(reverseBits(_wgslsmith_mult_u32(arg_1.x, arg_1.x)))), vec3<u32>(~(~arg_1.x) | ~u_input.b, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(49883u, arg_1.x), arg_1.xx), vec2<u32>(u_input.c.x, u_input.c.x)), ~(~u_input.d.xy)), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.b, 0u), 1u, arg_1.x) >> (~(~arg_1.x) % 32u)));
    let var_2 = Struct_5(vec4<u32>(~arg_1.x, _wgslsmith_div_u32(4294967295u, ~u_input.d.x) >> ((firstTrailingBit(var_1.x) >> (u_input.d.x % 32u)) % 32u), var_1.x, firstTrailingBit(~(~var_1.x))), arg_2, Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(arg_0.b.b.zzx + vec3<f32>(arg_3, -810f, arg_0.b.a.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(712f, -338f, arg_0.c.x)) - arg_0.c)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(253f - global4.x), arg_3, global4.x, -1000f)))));
    var var_3 = !any(vec3<bool>(true, any(vec3<bool>(true, true, false)) & true, !(-481f == global4.x)));
    return abs(_wgslsmith_clamp_vec3_u32(~vec3<u32>(24281u, 4294967295u, 33693u), vec3<u32>(arg_1.x & 39472u, 1u, u_input.a.x), vec3<u32>(~var_2.a.x, ~9441u, _wgslsmith_mod_u32(arg_1.x, var_2.a.x)))) | _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, var_1.x), ~(~reverseBits(vec3<u32>(1u, arg_1.x, u_input.a.x))), var_2.a.zyw);
}

fn func_2() -> Struct_4 {
    var var_0 = global1[_wgslsmith_index_u32(min(_wgslsmith_dot_vec3_u32(select(vec3<u32>(18435u, u_input.a.x, 18563u) << (u_input.c.wzx % vec3<u32>(32u)), func_3(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, u_input.b), 1u)], u_input.c.wxy, -global0.a, -1309f), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), _wgslsmith_sub_vec3_u32(~min(vec3<u32>(36899u, 1u, u_input.b), u_input.c.xwx), vec3<u32>(~u_input.d.x, ~u_input.d.x, ~39560u))), max(1u, _wgslsmith_div_u32(func_3(global1[_wgslsmith_index_u32(4294967295u, 1u)], u_input.d, global0.a, global4.x).x, ~0u) | ((u_input.d.x & 1u) >> (reverseBits(u_input.d.x) % 32u)))), 1u)];
    var var_1 = var_0.b;
    let var_2 = Struct_2(var_0.d);
    let var_3 = Struct_4(var_2, Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -511f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.c.x))), -1840f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)), _wgslsmith_f_op_f32(select(-257f, var_0.b.b.x, true)))), vec3<f32>(-864f, global4.x, _wgslsmith_div_f32(global4.x, global4.x)), var_0.d);
    let var_4 = u_input.c.zz;
    return Struct_4(Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_2.a.a), vec2<i32>(-26719i, var_3.d.a)) >> (18571u % 32u))), var_0.b, _wgslsmith_f_op_vec3_f32(-var_1.b.wxz), var_3.d);
}

fn func_1() -> f32 {
    global3 = array<Struct_2, 4>();
    global0 = Struct_1(firstLeadingBit(global0.a));
    let var_0 = ~_wgslsmith_clamp_i32(i32(-1i) * -1i, abs(min(abs(-2147483647i), 46726i)), global0.a);
    let var_1 = func_2();
    global1 = array<Struct_4, 1>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-693f, global4.x, -1000f))) - _wgslsmith_div_vec3_f32(vec3<f32>(global4.x, global4.x, global4.x), vec3<f32>(global4.x, -411f, 399f))))), vec3<f32>(_wgslsmith_f_op_f32(func_1()), -497f, -134f)), vec3<f32>(_wgslsmith_f_op_f32(-946f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(698f)), global4.x)), global4.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global4.x)))));
    var var_2 = global0.a;
    var_2 = -_wgslsmith_add_i32(global0.a, global0.a) >> ((1u >> (abs(abs(1u)) % 32u)) % 32u);
    let var_3 = true;
    global1 = array<Struct_4, 1>();
    var var_4 = vec2<u32>(38590u, ~(~45729u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(~_wgslsmith_clamp_i32(global0.a, global0.a, global0.a) << (87541u % 32u), _wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(var_4.x, 14u)], reverseBits(vec4<i32>(global0.a, -2147483647i, 8941i, 29679i)))));
}

