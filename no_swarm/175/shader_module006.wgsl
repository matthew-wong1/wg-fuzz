struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
    c: vec2<u32>,
    d: vec2<i32>,
    e: u32,
}

struct Struct_5 {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_4) -> vec4<i32> {
    var var_0 = vec4<bool>(true, all(select(select(vec4<bool>(arg_2.b, arg_2.b, global0.c, global0.c), !vec4<bool>(false, arg_2.b, false, false), true), select(select(vec4<bool>(false, arg_2.b, arg_2.b, true), vec4<bool>(true, global0.c, true, true), vec4<bool>(global0.c, global0.c, global0.c, arg_2.b)), select(vec4<bool>(true, true, global0.c, true), vec4<bool>(false, global0.c, true, arg_2.b), vec4<bool>(arg_2.b, false, true, true)), vec4<bool>(arg_2.b, global0.c, false, arg_2.b)), true)), true, any(select(select(vec2<bool>(true, true), !vec2<bool>(arg_2.b, false), !arg_2.b), vec2<bool>(global0.c, false), vec2<bool>(false, !global0.c))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1143f)))))), -793f);
    global0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.a.x - 117f))) - _wgslsmith_f_op_f32(-1f))), vec4<f32>(arg_2.a.x, -228f, global0.b.x, global0.a), any(!var_0.zxw));
    var var_2 = arg_2.a;
    let var_3 = firstTrailingBit(-u_input.c);
    return ~firstLeadingBit(-_wgslsmith_mult_vec4_i32(~vec4<i32>(77588i, var_3.x, 4218i, arg_1), -vec4<i32>(u_input.a.x, 17421i, -14910i, arg_1)));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: vec2<i32>, arg_3: vec2<f32>) -> vec4<bool> {
    global0 = Struct_3(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.b - _wgslsmith_f_op_vec4_f32(-global0.b)) * vec4<f32>(arg_1.x, -439f, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(global0.b.x - arg_1.x))))), global0.c);
    var var_0 = _wgslsmith_sub_u32(~reverseBits(0u), ~76292u);
    let var_1 = vec4<bool>(global0.c, _wgslsmith_f_op_f32(global0.b.x - -624f) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)))), !global0.c, -721f <= _wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), -1734f)));
    var var_2 = Struct_3(arg_3.x, vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_3.x))))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(global0.a * arg_3.x)))), 1623f, arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1698f + 1234f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.x)))));
    let var_3 = Struct_5(_wgslsmith_f_op_f32(step(arg_1.x, var_2.a)), global0.b, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_3.x, global0.a, global0.b.x)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-374f, arg_1.x, var_2.b.x, -469f), vec4<f32>(arg_3.x, -517f, var_2.b.x, 1603f))))))));
    return vec4<bool>(global0.c && var_1.x, true, select(all(!var_1), true, (false & var_1.x) | var_1.x) || all(!vec2<bool>(var_2.c, global0.c)), all(select(select(select(vec4<bool>(true, true, false, global0.c), vec4<bool>(var_2.c, true, true, true), global0.c), !vec4<bool>(var_1.x, false, true, global0.c), any(vec4<bool>(true, true, false, true))), var_1, select(vec4<bool>(var_1.x, var_2.c, var_2.c, false), vec4<bool>(var_1.x, var_1.x, true, var_2.c), select(var_1, var_1, var_2.c)))));
}

fn func_2() -> Struct_4 {
    let var_0 = u_input.c.x;
    var var_1 = global0.c;
    global0 = Struct_3(-251f, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-789f, global0.a)))), _wgslsmith_f_op_f32(trunc(-238f)), 956f, global0.a) - vec4<f32>(649f, _wgslsmith_f_op_f32(2386f - 3272f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a, global0.a) - -694f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1011f * 509f)))), !(!global0.c) && false);
    var var_2 = vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.a)) * global0.a) <= _wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(select(global0.b.x, global0.a, global0.c == true))), true);
    var var_3 = func_4(abs(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -1i, var_0, -2147483647i), vec4<i32>(8169i, 3979i, 21343i, var_0)) | vec4<i32>(var_0, u_input.a.x, u_input.a.x, 17801i), func_3(vec3<u32>(u_input.b.x, 0u, u_input.b.x), var_0, Struct_4(global0.b.yww, true, u_input.b.yy, u_input.c, 0u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, global0.b.x)) + global0.b.xz) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global0.b.xy), _wgslsmith_f_op_vec2_f32(exp2(global0.b.wx)))))), vec2<i32>(u_input.a.x, abs(abs(var_0))), global0.b.xy);
    return Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) - -1000f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.b.x)) - _wgslsmith_f_op_f32(-global0.b.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(525f - 1176f) + 1000f)))), !global0.c, ~u_input.b.zx, vec2<i32>(~0i, _wgslsmith_sub_i32(select(_wgslsmith_clamp_i32(0i, var_0, u_input.a.x), u_input.a.x, any(vec3<bool>(global0.c, global0.c, global0.c))), -var_0)), _wgslsmith_dot_vec2_u32(~(~select(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.xx, var_2.x)), ~_wgslsmith_clamp_vec2_u32(~u_input.b.xw, u_input.b.xz, ~vec2<u32>(u_input.b.x, 0u))));
}

fn func_5(arg_0: Struct_4) -> Struct_3 {
    global0 = Struct_3(-611f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b)) + global0.b)), -1953f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x + 386f) * arg_0.a.x) * _wgslsmith_f_op_f32(abs(arg_0.a.x))));
    global0 = Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-208f, arg_0.a.x, true && arg_0.b)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(1000f + arg_0.a.x))))), global0.b, false);
    global0 = Struct_3(1f, _wgslsmith_div_vec4_f32(global0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global0.b))))), !any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))));
    global0 = Struct_3(_wgslsmith_f_op_f32(global0.b.x + arg_0.a.x), _wgslsmith_f_op_vec4_f32(-global0.b), arg_0.b);
    var var_0 = true;
    return Struct_3(arg_0.a.x, vec4<f32>(func_2().a.x, _wgslsmith_f_op_f32(1162f - arg_0.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(965f + arg_0.a.x)), global0.b.x)), _wgslsmith_div_f32(global0.b.x, global0.a)), false != (2957u < func_2().e));
}

fn func_1() -> StorageBuffer {
    global0 = func_5(func_2());
    let var_0 = vec2<i32>(u_input.a.x, 23410i);
    var var_1 = Struct_1(u_input.b.yz);
    var_1 = Struct_1(abs(~vec2<u32>(var_1.a.x, 4294967295u) << (max(u_input.b.zz, _wgslsmith_add_vec2_u32(vec2<u32>(4724u, 0u), vec2<u32>(u_input.b.x, var_1.a.x))) % vec2<u32>(32u))));
    var var_2 = _wgslsmith_dot_vec3_u32(~vec3<u32>(1u >> (var_1.a.x % 32u), ~u_input.b.x, ~var_1.a.x), vec3<u32>(u_input.b.x, 0u, 70793u) ^ vec3<u32>(var_1.a.x, ~4384u, max(u_input.b.x, 34149u))) > 4294967295u;
    return StorageBuffer(-countOneBits(func_3(u_input.b.wyx, u_input.c.x, Struct_4(vec3<f32>(global0.a, -914f, global0.a), true, u_input.b.zy, vec2<i32>(var_0.x, 1i), u_input.b.x)).ww) >> (~_wgslsmith_mod_vec2_u32(u_input.b.xx | var_1.a, abs(var_1.a)) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(112f, -2183f)) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(1477f, global0.a), global0.b.xz), _wgslsmith_f_op_vec2_f32(-global0.b.xx)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

