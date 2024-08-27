struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec2<i32>,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11>;

var<private> global1: u32 = 0u;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: i32, arg_3: vec4<bool>) -> i32 {
    global1 = 23635u;
    let var_0 = 4294967295u;
    return max(global0[_wgslsmith_index_u32(~abs(u_input.c.x), 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)]);
}

fn func_2() -> f32 {
    var var_0 = vec2<i32>(max(~2147483647i, 20545i), _wgslsmith_add_i32(-func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 40750i, global0[_wgslsmith_index_u32(u_input.c.x, 11u)], u_input.b.x), u_input.a), Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, true, true), 26302u, u_input.a.zx, vec3<bool>(false, false, true), vec2<f32>(-601f, -138f)), Struct_1(vec4<bool>(false, false, true, false), u_input.c.x, vec2<i32>(u_input.d.x, u_input.d.x), vec3<bool>(false, false, false), vec2<f32>(170f, -115f)), false, Struct_1(vec4<bool>(true, true, true, true), 0u, u_input.a.yz, vec3<bool>(false, true, false), vec2<f32>(-668f, -860f)), Struct_1(vec4<bool>(false, false, false, false), 40378u, u_input.d, vec3<bool>(false, false, false), vec2<f32>(-118f, 560f))), vec4<i32>(u_input.b.x, -58015i, u_input.b.x, global0[_wgslsmith_index_u32(4294967295u, 11u)]), u_input.c.x), _wgslsmith_mult_i32(u_input.b.x, global0[_wgslsmith_index_u32(u_input.c.x, 11u)]), vec4<bool>(true, true, true, true)), -max(max(-1i, global0[_wgslsmith_index_u32(53008u, 11u)]), global0[_wgslsmith_index_u32(38661u, 11u)])));
    let var_1 = _wgslsmith_dot_vec4_i32(u_input.a, -((vec4<i32>(40091i, 16104i, var_0.x, var_0.x) | u_input.a) >> (vec4<u32>(u_input.c.x, 39454u, u_input.c.x, u_input.c.x) % vec4<u32>(32u))) >> (vec4<u32>(~select(43962u, 1u, true), 1u, ~_wgslsmith_mod_u32(u_input.c.x, 40843u), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.c.zx, vec2<u32>(u_input.c.x, u_input.c.x)), vec2<u32>(u_input.c.x, 419u) << (u_input.c.zz % vec2<u32>(32u)))) % vec4<u32>(32u)));
    global1 = u_input.c.x;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -708f);
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -933f);
    return 1275f;
}

fn func_1() -> vec2<u32> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(818f + _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-124f)) * -621f))), 1228f);
    let var_1 = Struct_3(Struct_2(Struct_1(vec4<bool>(true, true, true, true), ~reverseBits(u_input.c.x), abs(vec2<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 11u)], 1i)) & max(u_input.d, u_input.b), vec3<bool>(false, true, any(vec4<bool>(false, false, false, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1358f, -854f)))), Struct_1(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true)), vec4<bool>(false, false, false, true), true), ~4294967295u, vec2<i32>(firstLeadingBit(51089i), abs(u_input.d.x)), vec3<bool>(false, any(vec3<bool>(false, true, true)), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1000f, 371f), vec2<f32>(123f, 660f)))), any(vec3<bool>(true, true, true)), Struct_1(vec4<bool>(true, true, true, true), ~1u, abs(u_input.b), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false))), vec2<f32>(_wgslsmith_f_op_f32(round(-1690f)), 619f)), Struct_1(vec4<bool>(true, select(false, false, false), all(vec4<bool>(true, false, true, true)), any(vec3<bool>(false, true, true))), reverseBits(~10382u), -(~u_input.a.yy), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec2<f32>(_wgslsmith_f_op_f32(max(1493f, 364f)), 379f))), ~max(firstLeadingBit(~vec4<i32>(34746i, u_input.d.x, 2147483647i, global0[_wgslsmith_index_u32(20638u, 11u)])), vec4<i32>(abs(u_input.a.x), -1i, -1i, func_3(global0[_wgslsmith_index_u32(u_input.c.x, 11u)], Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, true, false), 29071u, u_input.b, vec3<bool>(true, false, true), vec2<f32>(-676f, -1000f)), Struct_1(vec4<bool>(true, false, false, false), 89911u, u_input.d, vec3<bool>(false, true, true), vec2<f32>(2333f, -1212f)), true, Struct_1(vec4<bool>(true, false, true, false), 0u, u_input.b, vec3<bool>(false, false, false), vec2<f32>(-456f, -1133f)), Struct_1(vec4<bool>(true, false, true, false), 24168u, u_input.b, vec3<bool>(false, true, false), vec2<f32>(1056f, 298f))), u_input.a, 8923u), global0[_wgslsmith_index_u32(u_input.c.x, 11u)], vec4<bool>(true, false, false, false)))), _wgslsmith_add_u32(~_wgslsmith_sub_u32(u_input.c.x, min(u_input.c.x, 25884u)), u_input.c.x));
    var var_2 = countOneBits(vec3<i32>(max(~(-89938i), firstLeadingBit(11147i)), global0[_wgslsmith_index_u32(~var_1.a.a.b, 11u)], -2745i)) & vec3<i32>(~_wgslsmith_div_i32(u_input.b.x, -2147483647i) << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, var_1.a.a.b), ~u_input.c) % 32u), reverseBits(_wgslsmith_clamp_i32(var_1.b.x, u_input.b.x | u_input.a.x, -global0[_wgslsmith_index_u32(4294967295u, 11u)])), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2480i, 12854i), ~var_1.a.a.c), 4523i));
    var var_3 = var_1;
    let var_4 = Struct_5(var_1.a.d.a.x && any(var_3.a.e.d));
    return u_input.c.xy;
}

fn func_4(arg_0: f32, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = min(abs(arg_1), abs(arg_1));
    var_0 = u_input.c.zz;
    var var_1 = !all(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), true));
    let var_2 = vec2<bool>(6892u == _wgslsmith_add_u32(u_input.c.x, 211u), any(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true))));
    var var_3 = max(u_input.c.x, (abs(var_0.x) & (0u << (arg_1.x % 32u))) & reverseBits(arg_1.x)) < _wgslsmith_add_u32(~var_0.x, min(var_0.x, arg_1.x));
    return Struct_1(select(select(!vec4<bool>(var_2.x, false, true, var_2.x), select(vec4<bool>(false, var_2.x, false, var_2.x), select(vec4<bool>(var_2.x, var_2.x, false, var_2.x), vec4<bool>(true, var_2.x, true, false), var_2.x), vec4<bool>(var_2.x, false, var_2.x, true)), u_input.c.x <= ~16757u), select(!select(vec4<bool>(var_2.x, false, var_2.x, var_2.x), vec4<bool>(false, false, true, true), var_2.x), vec4<bool>(true, true, !var_2.x, u_input.c.x != var_0.x), vec4<bool>(false, var_2.x, select(var_2.x, true, var_2.x), any(vec4<bool>(var_2.x, true, true, true)))), false), 0u << ((firstTrailingBit(arg_1.x) | arg_1.x) % 32u), u_input.d, vec3<bool>(true, u_input.a.x == abs(_wgslsmith_add_i32(u_input.a.x, 2147483647i)), true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, arg_0))), arg_0)));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> Struct_1 {
    var var_0 = u_input.c;
    global1 = arg_2;
    let var_1 = arg_0;
    var var_2 = var_1.a.x;
    let var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -131f), _wgslsmith_f_op_f32(ceil(-1520f))), vec2<f32>(_wgslsmith_f_op_f32(floor(var_1.e.x)), _wgslsmith_f_op_f32(-var_1.e.x))))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 11>();
    let var_0 = ~global0[_wgslsmith_index_u32(~4294967295u, 11u)];
    var var_1 = vec3<u32>(42319u, u_input.c.x, u_input.c.x);
    var var_2 = true;
    let var_3 = func_5(func_4(-228f, func_1()), ~4294967295u, ~func_1().x);
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(622f, var_3.e.x)), _wgslsmith_f_op_f32(select(var_3.e.x, var_3.e.x, false)));
    let var_5 = vec3<f32>(_wgslsmith_f_op_f32(abs(var_3.e.x)), 1000f, 354f);
    var var_6 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(16006u, ~firstLeadingBit(abs(u_input.c.xy)) & select(u_input.c.xx, u_input.c.zy, !(!var_3.d.xy)), _wgslsmith_sub_i32(~abs(-17125i), 0i));
}

