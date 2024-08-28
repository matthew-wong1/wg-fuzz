struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec3<bool>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_1(global1.a, select(!global1.c, vec3<bool>(!global1.c.x, false, !any(global1.b)), vec3<bool>(any(!vec4<bool>(true, global1.b.x, false, global1.c.x)), global1.b.x, !global1.b.x)), select(!vec3<bool>(all(vec2<bool>(false, false)), global1.b.x != true, any(global1.b)), global1.c, select(all(global1.b.zy), global1.c.x, !all(vec4<bool>(false, false, global1.b.x, true)))), global1.d);
    var var_1 = Struct_1(-35398i, vec3<bool>(any(vec2<bool>(true, true)), true, false), vec3<bool>(all(!global1.c.yy), select(true, !global1.c.x, true), all(global1.b.zx)), 32033u | abs(_wgslsmith_sub_u32(reverseBits(77612u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d, var_0.d, u_input.a, global1.d), vec4<u32>(20592u, 1u, 39828u, var_0.d)))));
    var var_2 = Struct_1(-38780i & (_wgslsmith_dot_vec2_i32(max(vec2<i32>(global1.a, global1.a), u_input.b.yy), _wgslsmith_sub_vec2_i32(vec2<i32>(10702i, var_0.a), u_input.b.xz)) | countOneBits(2147483647i)), var_1.c, select(select(select(select(vec3<bool>(global1.b.x, true, global1.c.x), global1.c, false), select(vec3<bool>(var_1.b.x, var_1.c.x, false), global1.b, vec3<bool>(var_0.c.x, var_0.c.x, false)), any(vec4<bool>(global1.c.x, global1.c.x, var_0.b.x, false))), !(!global1.c), select(!global1.c, !var_1.b, select(var_0.b, vec3<bool>(false, true, false), vec3<bool>(true, global1.c.x, false)))), var_1.c, true), _wgslsmith_dot_vec4_u32(vec4<u32>(93326u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1.d, 32049u, global1.d), vec4<u32>(var_1.d, global1.d, global1.d, 26976u) & vec4<u32>(1u, 4294967295u, 33048u, 4294967295u)), 1u, 1u), abs(~(vec4<u32>(1u, u_input.a, global1.d, var_0.d) >> (vec4<u32>(0u, global1.d, var_1.d, var_0.d) % vec4<u32>(32u))))));
    var_2 = Struct_1(_wgslsmith_add_i32(firstLeadingBit(global1.a) << (_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, var_1.d, u_input.a), vec3<u32>(2453u, var_1.d, global1.d)), ~vec3<u32>(var_2.d, 20957u, 30759u)) % 32u), var_2.a), global1.b, select(var_0.b, select(var_1.c, global1.c, any(vec4<bool>(false, false, false, false))), global1.b), _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a, 1u), 12230u));
    global1 = Struct_1(var_1.a, vec3<bool>(!(!var_2.b.x), select(any(!var_0.c.yx), (0i >> (var_0.d % 32u)) >= _wgslsmith_sub_i32(var_0.a, 0i), any(!var_1.c.yx)), true), var_1.b, u_input.a);
    return (_wgslsmith_add_vec4_u32(vec4<u32>(var_0.d, ~u_input.a, ~0u, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(66033u, var_1.d, global1.d, 67326u), vec4<u32>(u_input.a, 4294967295u, global1.d, 6056u))) >> ((select(vec4<u32>(13242u, u_input.a, var_2.d, 46936u), ~vec4<u32>(11117u, 104288u, var_1.d, 14628u), var_2.b.x) | ~countOneBits(vec4<u32>(4294967295u, var_1.d, var_0.d, var_0.d))) % vec4<u32>(32u))) & firstLeadingBit(select(~vec4<u32>(5230u, global1.d, 23991u, var_0.d) & ~vec4<u32>(17825u, 86604u, 1u, global1.d), vec4<u32>(4294967295u, 1u, 0u, global1.d) & vec4<u32>(var_1.d, var_0.d, var_1.d, 50694u), !vec4<bool>(false, true, false, var_1.b.x)));
}

fn func_2() -> u32 {
    global1 = Struct_1(_wgslsmith_mult_i32(-global1.a, u_input.b.x), vec3<bool>(global1.a != global1.a, any(vec3<bool>(global1.b.x, true && global1.b.x, all(vec3<bool>(global1.c.x, global1.c.x, global1.c.x)))), false), global1.c, ~1u);
    var var_0 = _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(select(~func_3(), select(_wgslsmith_mod_vec4_u32(vec4<u32>(43040u, u_input.a, global1.d, u_input.a), vec4<u32>(u_input.a, global1.d, global1.d, 0u)), vec4<u32>(4294967295u, u_input.a, u_input.a, global1.d), !global1.c.x), select(vec4<bool>(global1.c.x, true, true, global1.b.x), !vec4<bool>(global1.c.x, true, global1.b.x, false), !vec4<bool>(false, global1.b.x, global1.b.x, false))), _wgslsmith_mod_vec4_u32(~vec4<u32>(58949u, u_input.a, u_input.a, 0u), func_3())), _wgslsmith_mult_vec4_u32(firstLeadingBit(~vec4<u32>(17861u, 92738u, u_input.a, 22712u)), ~(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 34422u, 4294967295u, 1u), vec4<u32>(9696u, global1.d, 50201u, 0u)) | abs(vec4<u32>(global1.d, 62902u, global1.d, global1.d)))));
    var_0 = vec4<u32>(var_0.x, ~max(var_0.x, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(73485u, global1.d, u_input.a), var_0.x, 1u)), ~22839u, abs(countOneBits(8259u)));
    global0 = global1.c.x;
    return _wgslsmith_dot_vec2_u32(~var_0.ww, ~vec2<u32>(~0u, _wgslsmith_clamp_u32(firstLeadingBit(86510u), 54642u, firstTrailingBit(50475u))));
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = vec3<bool>(global1.b.x, !global1.b.x, true);
    let var_1 = func_2();
    let var_2 = func_3();
    global0 = true;
    let var_3 = vec3<u32>(~4294967295u & firstLeadingBit(~var_1), max(~(~min(33185u, 31532u)), _wgslsmith_mod_u32(u_input.a, countOneBits(arg_0)) | 4294967295u), ~abs(_wgslsmith_mod_u32(~u_input.a, 24174u)));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-_wgslsmith_add_i32(-55868i >> (_wgslsmith_add_u32(global1.d, 4969u) % 32u), -16539i), vec3<bool>(global1.b.x, true, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 0u, 0u), vec3<u32>(9419u, u_input.a, u_input.a)), vec3<u32>(14683u, u_input.a, 0u)) != ~0u), !(!global1.c), countOneBits(func_1(u_input.a)));
    global1 = Struct_1(u_input.b.x, select(var_0.b, !select(var_0.c, var_0.c, global1.b), select(vec3<bool>(!global1.c.x, all(vec3<bool>(var_0.b.x, global1.c.x, global1.b.x)), global1.b.x), select(select(vec3<bool>(var_0.b.x, false, var_0.c.x), vec3<bool>(true, false, global1.c.x), global1.c), var_0.c, var_0.b.x | global1.c.x), any(vec2<bool>(true, false)) & (global1.c.x | var_0.b.x))), !(!var_0.c), func_1(_wgslsmith_clamp_u32(global1.d, 2132u, ~u_input.a) ^ func_2()));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - 671f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1632f, 469f))))), _wgslsmith_f_op_f32(1014f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1690f * -302f)))))), _wgslsmith_f_op_f32(-2412f + _wgslsmith_f_op_f32(sign(1f))), _wgslsmith_f_op_f32(1119f + _wgslsmith_f_op_f32(trunc(1000f))));
    global1 = Struct_1(_wgslsmith_mult_i32(global1.a, -1178i), select(var_0.c, !vec3<bool>(any(vec4<bool>(var_0.b.x, global1.b.x, var_0.b.x, var_0.b.x)), !var_0.c.x, var_1.x <= var_1.x), select(select(select(global1.c, vec3<bool>(true, false, global1.c.x), var_0.b.x), select(vec3<bool>(false, var_0.b.x, global1.c.x), var_0.b, vec3<bool>(global1.c.x, global1.b.x, true)), !var_0.b), !(!global1.b), select(select(global1.c, var_0.b, vec3<bool>(var_0.b.x, global1.b.x, true)), var_0.c, !vec3<bool>(var_0.c.x, false, false)))), vec3<bool>(global1.c.x, func_1(u_input.a << (0u % 32u)) == ~0u, true), ~func_2());
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(289f, var_1.x), _wgslsmith_f_op_f32(-var_1.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-102f * _wgslsmith_f_op_f32(abs(var_1.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.x))))) + -248f);
    let var_3 = !(!vec4<bool>(true, func_2() == 14734u, !(var_1.x >= 1669f), false));
    var var_4 = _wgslsmith_f_op_vec3_f32(var_1.zyy - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1703f, 1096f, -498f), vec3<f32>(671f, var_2, var_2), var_0.c))) + vec3<f32>(_wgslsmith_f_op_f32(var_2 * -301f), 122f, _wgslsmith_f_op_f32(f32(-1f) * -900f))) * var_1.wyw));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.d, var_0.d, var_0.d, 70676u), vec4<u32>(1u, 4294967295u, 22230u, 1u) | vec4<u32>(var_0.d, global1.d, 0u, u_input.a)), ~firstLeadingBit(vec4<u32>(u_input.a, 4294967295u, 12333u, 83222u))) | _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, global1.d, u_input.a, var_0.d), vec4<u32>(1u, 87648u, var_0.d, 79905u) >> (vec4<u32>(50849u, 1u, 4294967295u, u_input.a) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(40609u, 30166u, u_input.a, 4294967295u), vec4<u32>(1u, u_input.a, 42768u, 129659u))), ~(~vec4<u32>(3318u, 1u, 1u, 0u))), ~_wgslsmith_sub_vec2_u32(abs(vec2<u32>(global1.d, 1u)) & countOneBits(vec2<u32>(1u, 62255u)), ~select(vec2<u32>(var_0.d, u_input.a), vec2<u32>(0u, 36345u), global1.b.xz)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 - var_2) - _wgslsmith_f_op_f32(-2077f * _wgslsmith_f_op_f32(select(-1140f, var_2, global1.b.x)))), var_2, _wgslsmith_f_op_f32(round(-1762f)), _wgslsmith_f_op_f32(exp2(var_2))));
}

