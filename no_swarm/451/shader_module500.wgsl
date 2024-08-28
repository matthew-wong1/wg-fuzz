struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: vec4<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)));

var<private> global2: vec2<f32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: i32) -> u32 {
    let var_0 = arg_0;
    return ~(~arg_2.x);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: u32) -> vec2<bool> {
    global0 = Struct_1(vec2<bool>(false, true));
    var var_0 = true;
    var var_1 = arg_1;
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, -1165f) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, global2.x)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(542f, -383f)))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2.x, -448f, -543f)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1173f, global2.x))), -620f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-433f))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-811f, -395f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(790f))))));
    return var_1.a;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = 1u < ~_wgslsmith_add_u32(~1u, reverseBits(_wgslsmith_dot_vec4_u32(u_input.e, arg_0)));
    var var_1 = select(firstTrailingBit(32065i), i32(-1i) * -1i, false);
    var var_2 = Struct_1(func_4(vec4<u32>(arg_0.x, 0u, func_3(Struct_1(vec2<bool>(arg_1.a.x, global0.a.x)), global1[_wgslsmith_index_u32(88985u, 23u)], ~u_input.e, ~1i), arg_0.x), Struct_1(!vec2<bool>(arg_1.a.x, false)), reverseBits(vec4<i32>(1i, _wgslsmith_mod_i32(u_input.c, u_input.d), u_input.d, u_input.c >> (u_input.e.x % 32u))), u_input.e.x));
    var var_3 = global1[_wgslsmith_index_u32(arg_0.x, 23u)];
    var var_4 = global1[_wgslsmith_index_u32(abs(1u) >> (u_input.e.x % 32u), 23u)];
    return Struct_1(select(vec2<bool>(all(vec3<bool>(true, false, global0.a.x)) | true, !global0.a.x), select(!vec2<bool>(false, var_3.a.x), select(arg_1.a, var_2.a, !var_4.a.x), select(vec2<bool>(var_3.a.x, var_3.a.x), vec2<bool>(global0.a.x, true), 1153f <= global2.x)), vec2<bool>(arg_1.a.x, var_4.a.x)));
}

fn func_5(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = _wgslsmith_add_vec4_u32(~(reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.e.x, u_input.a, u_input.e.x, u_input.a), u_input.e)) & ~u_input.e), ~reverseBits(~select(u_input.e, u_input.e, vec4<bool>(true, arg_0.a.x, arg_0.a.x, true))));
    var var_1 = vec2<u32>(~select(_wgslsmith_sub_u32(4294967295u, ~u_input.e.x), 77626u, arg_0.a.x), 4294967295u);
    let var_2 = global1[_wgslsmith_index_u32(0u, 23u)];
    let var_3 = var_1.x;
    var var_4 = func_2(u_input.e, func_2(u_input.e, arg_0));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, global2.x)), vec4<f32>(194f, 548f, 1308f, -607f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.x, -696f, -400f, -2508f))), _wgslsmith_div_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, -1916f), vec4<f32>(global2.x, -351f, 883f, -483f)))))) - vec4<f32>(global2.x, -1869f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-410f, 814f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.x))))));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = Struct_1(global0.a);
    var var_2 = arg_1;
    global0 = Struct_1(vec2<bool>(global0.a.x, !(!all(vec3<bool>(global0.a.x, true, true)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-424f, 1000f, global2.x, global2.x), vec4<f32>(global2.x, -856f, global2.x, global2.x), false)))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.x, -1986f, -982f, 1228f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.x, global2.x, 595f, global2.x)))))))), _wgslsmith_f_op_vec4_f32(func_5(func_2(u_input.e, Struct_1(var_1.a))))));
    return Struct_1(!func_2(u_input.e, Struct_1(vec2<bool>(var_1.a.x, true))).a);
}

fn func_6(arg_0: Struct_1, arg_1: f32) -> vec2<bool> {
    let var_0 = arg_0;
    var var_1 = Struct_1(var_0.a);
    let var_2 = -1000f;
    global0 = Struct_1(arg_0.a);
    let var_3 = func_1(_wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(591i, u_input.d, u_input.d), vec3<i32>(u_input.d, -29643i, -10997i)), ~(i32(-1i) * -48053i)), ~reverseBits(firstTrailingBit(u_input.c))), func_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, u_input.b.x, u_input.e.x)), _wgslsmith_clamp_u32(1u, u_input.e.x, 0u), u_input.b.x, reverseBits(72318u)), _wgslsmith_div_vec4_u32(abs(vec4<u32>(1u, u_input.e.x, 7983u, u_input.e.x)), u_input.e >> (u_input.e % vec4<u32>(32u))), vec4<u32>(abs(u_input.e.x), firstLeadingBit(1u), _wgslsmith_mod_u32(u_input.a, u_input.b.x), u_input.e.x)), func_1(reverseBits(-1i), arg_0)));
    return vec2<bool>(false, select(true, arg_0.a.x, any(vec3<bool>(var_0.a.x, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c << (min(u_input.b.x, _wgslsmith_add_u32(4294967295u >> (u_input.a % 32u), ~(u_input.b.x ^ u_input.e.x))) % 32u);
    let var_1 = Struct_1(vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-419f))) >= _wgslsmith_f_op_f32(-global2.x), false));
    let var_2 = Struct_1(func_6(func_1(var_0, global1[_wgslsmith_index_u32(~u_input.e.x, 23u)]), -365f));
    let var_3 = all(!select(select(select(vec4<bool>(true, true, var_1.a.x, false), vec4<bool>(var_2.a.x, true, global0.a.x, global0.a.x), var_1.a.x), select(vec4<bool>(false, true, var_1.a.x, global0.a.x), vec4<bool>(global0.a.x, var_2.a.x, var_2.a.x, true), vec4<bool>(false, false, false, var_1.a.x)), !var_1.a.x), select(!vec4<bool>(var_1.a.x, var_2.a.x, true, true), !vec4<bool>(false, global0.a.x, global0.a.x, var_2.a.x), select(vec4<bool>(true, true, true, var_2.a.x), vec4<bool>(true, global0.a.x, global0.a.x, false), vec4<bool>(var_2.a.x, true, false, var_1.a.x))), true));
    var var_4 = ~0u;
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, -1210f) + vec2<f32>(global2.x, -692f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2.x, global2.x))) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2.x, global2.x)))), func_4(~u_input.e, func_1(var_0, Struct_1(var_2.a)), ~vec4<i32>(8052i, 15386i, -25989i, -2147483647i), 43242u).x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global2.x, 204f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -479f))))));
    var var_5 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(firstLeadingBit(1u)), vec3<f32>(-2478f, global2.x, _wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(556f * global2.x) - -237f)))), firstLeadingBit(-(~u_input.c) | max(var_0 & var_0, 1i)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(min(global2.x, 601f)), 176f, _wgslsmith_f_op_f32(1000f * 2145f), _wgslsmith_f_op_f32(abs(541f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -2627f, _wgslsmith_f_op_f32(round(global2.x)), _wgslsmith_f_op_f32(-global2.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -2205f, global2.x, global2.x) * vec4<f32>(global2.x, 1021f, 671f, global2.x)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, -291f, -192f, global2.x))))))), vec4<i32>(_wgslsmith_div_i32(i32(-1i) * -23201i, 1i), -(firstLeadingBit(var_0) | u_input.d), ~(var_0 ^ var_0), 1i));
}

