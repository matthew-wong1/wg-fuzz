struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
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

var<private> global0: f32 = -493f;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: f32) -> f32 {
    var var_0 = abs(u_input.b.zy);
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.d.c.x, 1163f, -335f, arg_2), vec4<f32>(arg_1.b.a, -1439f, arg_1.b.a, 117f)))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1921f, -1035f, -980f, -1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(830f, arg_1.d.c.x, 825f, 1558f), vec4<f32>(-1285f, arg_1.b.a, arg_2, -1148f)))), arg_1.b.c.x)))));
    let var_2 = var_1.xwz;
    let var_3 = Struct_1(arg_1.d.b.x | true, vec4<bool>(select(!any(arg_1.d.b), arg_1.d.b.x, any(!arg_0.d.b.zz)), arg_0.b.c.x, arg_1.a, any(vec3<bool>(false, false, arg_1.b.c.x)) || all(vec3<bool>(arg_1.d.b.x, true, arg_0.a))), var_2.xz);
    var var_4 = vec3<u32>(~37534u, u_input.a, max(abs(var_0.x), u_input.a)) ^ ~_wgslsmith_add_vec3_u32(reverseBits(u_input.b.zxw), _wgslsmith_add_vec3_u32(u_input.b.zwx >> (u_input.b.xzz % vec3<u32>(32u)), u_input.b.xww));
    return var_1.x;
}

fn func_2() -> Struct_3 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true)), Struct_2(_wgslsmith_f_op_f32(min(-1000f, 495f)), true, vec2<bool>(false, true)), u_input.c, Struct_1(true, vec4<bool>(true, true, true, true), vec2<f32>(1004f, -330f))), Struct_3(all(vec3<bool>(true, true, true)), Struct_2(1000f, all(vec4<bool>(false, true, false, false)), vec2<bool>(true, true)), select(u_input.c, -19823i, true), Struct_1(true, vec4<bool>(false, true, true, true), vec2<f32>(219f, 915f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-270f + 2252f)), -217f))));
    global0 = 1667f;
    var var_0 = vec4<i32>(max(u_input.c, _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.c, -2147483647i), u_input.c)), _wgslsmith_dot_vec2_i32(-(select(vec2<i32>(u_input.c, u_input.c), vec2<i32>(-19355i, u_input.c), vec2<bool>(true, true)) << (vec2<u32>(31175u, 0u) % vec2<u32>(32u))), abs(abs(vec2<i32>(1i, -31777i) & vec2<i32>(-1717i, u_input.c)))), _wgslsmith_div_i32(u_input.c, 0i), u_input.c);
    let var_1 = Struct_3(any(select(vec2<bool>(true, true), vec2<bool>(true, true), _wgslsmith_div_i32(var_0.x, 88525i) > ~u_input.c)), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(634f, 342f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-850f)))), all(vec3<bool>(true, true, true)), vec2<bool>(true, true)), -((-var_0.x & ~(-39571i)) >> (0u % 32u)), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1000f)), 312f)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-718f)) - _wgslsmith_f_op_f32(-682f - -1000f)), !vec4<bool>(true, true, any(vec3<bool>(false, false, true)), u_input.b.x <= 1u), vec2<f32>(-611f, 381f)));
    var var_2 = firstTrailingBit(vec2<u32>(u_input.b.x, ~34033u));
    return var_1;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: bool) -> Struct_1 {
    var var_0 = !((_wgslsmith_f_op_f32(-arg_2.x) >= arg_0.b.a) || any(arg_0.d.b));
    let var_1 = vec4<bool>(arg_0.d.b.x, false, !(all(arg_0.d.b.xzw) || (arg_1.x || all(vec3<bool>(false, arg_1.x, arg_1.x)))), arg_3);
    var var_2 = _wgslsmith_f_op_f32(floor(arg_0.b.a));
    var var_3 = ~firstTrailingBit(vec4<u32>(1u, 0u, countOneBits(~64984u), reverseBits(min(u_input.b.x, u_input.a))));
    global0 = -591f;
    return Struct_1(true, select(arg_0.d.b, !vec4<bool>(true, var_1.x, true, -1121f > arg_2.x), true), vec2<f32>(arg_0.d.c.x, 329f));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec2<bool>) -> Struct_3 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(672f))));
    global0 = -118f;
    global0 = -361f;
    var var_0 = func_4(func_2(), vec3<bool>(_wgslsmith_mult_u32(4294967295u, 4294967295u << (u_input.a % 32u)) > _wgslsmith_mult_u32(37924u, ~u_input.a), arg_2.x, arg_2.x), vec3<f32>(_wgslsmith_f_op_f32(abs(-236f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-559f - 371f) - -972f), _wgslsmith_f_op_f32(-2296f - _wgslsmith_f_op_f32(f32(-1f) * -790f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(657f * -306f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1818f), _wgslsmith_f_op_f32(abs(1462f)))))), !all(!vec3<bool>(false, true, arg_2.x)) || true);
    var var_1 = func_2().b;
    return Struct_3(!var_0.b.x, func_2().b, _wgslsmith_div_i32(func_2().c, ~arg_0), func_2().d);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<f32>) -> Struct_2 {
    global0 = 600f;
    let var_0 = vec4<f32>(arg_1.a, _wgslsmith_f_op_f32(-arg_2.x), -1042f, _wgslsmith_div_f32(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.b.a))))));
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-284f))));
    var var_1 = min(u_input.b.zy, ~(select(u_input.b.zz, u_input.b.xz, func_2().b.c) | u_input.b.wy));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1391f)), var_0.x);
    return Struct_2(arg_2.x, all(!(!arg_1.c)), vec2<bool>(arg_0.a, arg_0.d.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-577f + 553f));
    global0 = -3973f;
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1475f, 858f, -290f, -1572f))))) * vec4<f32>(-842f, _wgslsmith_f_op_f32(f32(-1f) * -1072f), _wgslsmith_f_op_f32(f32(-1f) * -255f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_1 = Struct_3(-1000f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x))), func_5(func_1(-2567i >> (~4294967295u % 32u), abs(firstTrailingBit(u_input.c)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)))), Struct_2(_wgslsmith_f_op_f32(select(var_0.x, 1899f, all(vec3<bool>(false, true, true)))), false, func_2().b.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.yzz - vec3<f32>(1311f, -347f, -1612f)))), ~_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, u_input.c) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))) >> ((65821u >> (abs(0u) % 32u)) % 32u), func_2().d);
    let var_2 = var_1.d.c;
    global0 = var_2.x;
    var var_3 = vec2<f32>(1f, -368f);
    let var_4 = _wgslsmith_f_op_f32(abs(var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c);
}

