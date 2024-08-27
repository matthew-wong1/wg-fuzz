struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(9263u);

var<private> global1: vec2<f32>;

var<private> global2: array<f32, 19> = array<f32, 19>(681f, -2214f, 753f, 840f, -1000f, -771f, 1961f, 584f, -284f, 404f, -1883f, -734f, 912f, -1000f, 148f, 898f, 1315f, 285f, 135f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> u32 {
    var var_0 = ~u_input.d;
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 19u)] - _wgslsmith_f_op_f32(max(-175f, -748f))))), global2[_wgslsmith_index_u32(select(~50373u, ~(~1u ^ global0.a), arg_0.x), 19u)]));
    var_0 = _wgslsmith_sub_u32(arg_1.a >> (_wgslsmith_mod_u32(min(34682u, _wgslsmith_add_u32(0u, 10203u)), (u_input.c.x & 47778u) >> (1u % 32u)) % 32u), 0u);
    global0 = Struct_1(arg_1.a);
    let var_2 = arg_1;
    return arg_1.a;
}

fn func_2() -> bool {
    var var_0 = u_input.c.xy;
    let var_1 = func_3(vec4<bool>((-938f > global2[_wgslsmith_index_u32(29168u, 19u)]) || true, false, true, _wgslsmith_f_op_f32(-1394f + global1.x) < _wgslsmith_f_op_f32(-global1.x)), Struct_1(0u)) << (_wgslsmith_clamp_u32(_wgslsmith_add_u32(var_0.x, var_0.x), ~(_wgslsmith_clamp_u32(1046u, 4294967295u, 4294967295u) >> (global0.a % 32u)), ~(~u_input.c.x)) % 32u);
    let var_2 = Struct_1(1u);
    global0 = Struct_1(_wgslsmith_clamp_u32(select(reverseBits(~0u), ~(var_2.a >> (u_input.d % 32u)), false), 0u, ~(~0u)));
    let var_3 = Struct_1(_wgslsmith_clamp_u32(firstLeadingBit(66571u), 60720u, _wgslsmith_div_u32(4294967295u, _wgslsmith_div_u32(_wgslsmith_sub_u32(0u, u_input.c.x), _wgslsmith_div_u32(var_2.a, u_input.d)))));
    return max(_wgslsmith_clamp_u32(~max(var_3.a, u_input.c.x), var_3.a, func_3(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), true), Struct_1(var_3.a))), _wgslsmith_mod_u32(~u_input.c.x, var_0.x) << (~_wgslsmith_div_u32(global0.a, var_3.a) % 32u)) >= u_input.d;
}

fn func_4(arg_0: bool) -> Struct_1 {
    global0 = Struct_1(global0.a);
    var var_0 = vec3<i32>(-37100i, ~(u_input.a.x & 0i), -68608i);
    var var_1 = u_input.c.ywy;
    var var_2 = Struct_1(abs(abs(global0.a)));
    let var_3 = Struct_1(6908u);
    return var_3;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> f32 {
    var var_0 = ~vec2<i32>(_wgslsmith_sub_i32(u_input.a.x | 5363i, -19290i), _wgslsmith_sub_i32(u_input.b.x, u_input.b.x)) | ~vec2<i32>(~_wgslsmith_mult_i32(1i, -1i), reverseBits(u_input.a.x));
    global1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2147f) * -477f), _wgslsmith_f_op_f32(-global1.x)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-466f, global1.x) - _wgslsmith_f_op_f32(sign(arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-214f)))))));
    let var_1 = -1000f;
    global0 = func_4(false || all(vec2<bool>(func_2(), true)));
    var var_2 = vec2<u32>(countOneBits(~global0.a), func_4(all(vec3<bool>(true, true, var_1 != 638f))).a);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(~1u, 19u)])), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-471f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.x * -600f), _wgslsmith_f_op_f32(168f * global1.x))), _wgslsmith_f_op_f32(sign(var_1))), func_2()))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mod_u32(u_input.d, 30030u);
    let var_1 = -237f;
    let var_2 = !(!(!(_wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(4294967295u, 19u)], Struct_1(u_input.d))) == var_1)));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(var_1 + -1000f), -1399f, -320f);
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(361f, _wgslsmith_f_op_f32(f32(-1f) * -1375f))) * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_0 & _wgslsmith_dot_vec3_u32(vec3<u32>(31095u, 0u, var_0), u_input.c.zxw), 19u)])), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + -668f))), Struct_1(~(~2653u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(func_3(vec4<bool>(var_2, var_2, var_2, var_2), Struct_1(61463u)) >> (u_input.c.x % 32u), 19u)]) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-842f, -764f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(-1491f, Struct_1(0u))) * -700f))))));
    global2 = array<f32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(max(~_wgslsmith_mod_vec3_u32(u_input.c.yzx, u_input.c.wzw), ~(u_input.c.zyy >> (firstLeadingBit(vec3<u32>(global0.a, global0.a, global0.a)) % vec3<u32>(32u)))), abs(-u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.x) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -798f)))))), var_3, vec4<u32>(max(~var_0, global0.a) & (82396u >> ((global0.a >> (var_0 % 32u)) % 32u)), ~_wgslsmith_div_u32(_wgslsmith_sub_u32(1u, var_0), _wgslsmith_clamp_u32(var_0, u_input.c.x, 74669u)), 44463u, _wgslsmith_mod_u32(~global0.a & _wgslsmith_clamp_u32(64241u, var_0, 4294967295u), 13980u)));
}

