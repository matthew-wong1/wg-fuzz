struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19>;

var<private> global1: i32 = -5680i;

var<private> global2: array<vec3<i32>, 10>;

var<private> global3: f32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec4<u32> {
    return vec4<u32>(u_input.a.x, _wgslsmith_div_u32(select(u_input.c.x, u_input.c.x, true) | _wgslsmith_mod_u32(~u_input.c.x, u_input.a.x), firstTrailingBit(_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, ~1u))), 66952u, u_input.c.x);
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = Struct_1(func_3(), 2147483647i);
    var var_1 = !vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -756f) < _wgslsmith_f_op_f32(sign(arg_0)), !(!(var_0.a.x == var_0.a.x)), true | !any(vec3<bool>(false, false, false)), any(vec3<bool>(false, true, true)));
    var var_2 = Struct_2(vec4<bool>(var_1.x, false | !var_1.x, true, var_1.x), Struct_1(_wgslsmith_sub_vec4_u32(abs(u_input.a) & vec4<u32>(var_0.a.x, u_input.c.x, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, firstTrailingBit(20506u), _wgslsmith_dot_vec2_u32(var_0.a.xz, u_input.a.yx), u_input.c.x)), u_input.d << (~_wgslsmith_add_u32(u_input.a.x, 4294967295u) % 32u)));
    let var_3 = -481f;
    var_2 = global0[_wgslsmith_index_u32(var_0.a.x | 67190u, 19u)];
    return 574f;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-1000f * -678f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1023f * _wgslsmith_f_op_f32(f32(-1f) * -706f)) - -670f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(615f - -1007f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(-1266f)), -392f, arg_2))))));
    global0 = array<Struct_2, 19>();
    var var_1 = Struct_1(vec4<u32>(~(~_wgslsmith_add_u32(18967u, 8070u)), reverseBits(arg_1.a.x), ~(~arg_1.a.x), _wgslsmith_dot_vec3_u32(arg_0.a.yxw, firstTrailingBit(~vec3<u32>(1u, 15052u, u_input.c.x)))), -1i ^ reverseBits(_wgslsmith_div_i32(0i, arg_1.b)));
    let var_2 = select((vec4<u32>(4294967295u, arg_0.a.x, abs(var_1.a.x), u_input.a.x ^ 50253u) | vec4<u32>(~4294967295u, 4294967295u, ~104323u, ~u_input.a.x)) >> (((~var_1.a & select(vec4<u32>(43524u, 0u, var_1.a.x, var_1.a.x), var_1.a, vec4<bool>(arg_2, arg_2, arg_2, true))) >> ((~vec4<u32>(var_1.a.x, 29017u, 4294967295u, 0u) | vec4<u32>(49500u, 1u, 25385u, 41831u)) % vec4<u32>(32u))) % vec4<u32>(32u)), reverseBits(u_input.a >> (~(u_input.a & vec4<u32>(var_1.a.x, arg_0.a.x, 50646u, 4294967295u)) % vec4<u32>(32u))), !select(!select(vec4<bool>(arg_2, arg_2, arg_2, true), vec4<bool>(true, arg_2, arg_2, false), vec4<bool>(arg_2, true, true, false)), select(select(vec4<bool>(false, true, arg_2, false), vec4<bool>(arg_2, arg_2, arg_2, arg_2), vec4<bool>(true, arg_2, arg_2, false)), select(vec4<bool>(false, false, true, false), vec4<bool>(arg_2, true, false, false), vec4<bool>(false, arg_2, true, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(arg_2, arg_2, true, false), false)), vec4<bool>(arg_2, true, all(vec3<bool>(true, arg_2, true)), true)));
    let var_3 = !vec4<bool>(!any(vec2<bool>(arg_2, arg_2)), arg_2, all(select(vec2<bool>(true, true), select(vec2<bool>(true, arg_2), vec2<bool>(false, false), vec2<bool>(arg_2, false)), vec2<bool>(false, true))), false);
    return u_input.a;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = select(vec4<bool>(true, !arg_0.a.x, false, (arg_0.a.x | true) || arg_0.a.x), !vec4<bool>(false, arg_1, !(!arg_0.a.x), !any(arg_0.a.ww)), arg_0.a);
    var var_1 = arg_0;
    var_0 = vec4<bool>(any(arg_0.a.zz), _wgslsmith_mod_u32(var_1.b.a.x, ~arg_0.b.a.x >> (firstTrailingBit(u_input.c.x) % 32u)) == ~0u, ((arg_2.x ^ _wgslsmith_sub_i32(arg_3.b, var_1.b.b)) | arg_3.b) == -countOneBits(-63592i), arg_1);
    let var_2 = vec3<i32>(reverseBits(_wgslsmith_add_i32(-48960i, var_1.b.b)), countOneBits(_wgslsmith_div_i32(70202i, max(1i, var_1.b.b))), i32(-1i) * -22552i);
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-955f, _wgslsmith_div_f32(886f, 310f)))))));
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), false)), vec4<bool>(false, true, true | all(vec2<bool>(false, true)), true), true), func_4(Struct_2(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), Struct_1(func_1(Struct_1(vec4<u32>(u_input.c.x, u_input.a.x, u_input.a.x, u_input.c.x), -5942i), Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, u_input.c.x, u_input.a.x), -2645i), false), 47150i)), true, u_input.e.wwz, Struct_1(abs(firstLeadingBit(u_input.a)), 18766i >> (~u_input.a.x % 32u))));
    global0 = array<Struct_2, 19>();
    var var_1 = Struct_2(vec4<bool>(u_input.c.x >= 23213u, var_0.a.x, all(vec2<bool>(false, var_0.a.x)) || select(false, all(vec2<bool>(false, var_0.a.x)), var_0.a.x), all(!select(vec2<bool>(false, true), var_0.a.zx, var_0.a.yw))), Struct_1(_wgslsmith_sub_vec4_u32(u_input.a, ~select(u_input.a, vec4<u32>(var_0.b.a.x, var_0.b.a.x, var_0.b.a.x, var_0.b.a.x), true)), 4037i));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-u_input.b), select(vec3<i32>(-2147483647i, ~1i, _wgslsmith_clamp_i32(-var_1.b.b, 1i, var_0.b.b)), countOneBits(vec3<i32>(16230i, _wgslsmith_div_i32(u_input.d, var_0.b.b), var_0.b.b)), var_1.a.xyy));
}

