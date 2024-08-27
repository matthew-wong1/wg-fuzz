struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 15>;

var<private> global1: array<vec4<u32>, 25>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec2<f32>) -> u32 {
    let var_0 = u_input.a.zww;
    let var_1 = arg_1;
    var var_2 = Struct_2(abs(firstLeadingBit(u_input.a.zz | var_0.zx)), 992f);
    let var_3 = select(u_input.c, ~(~arg_0.a.x), false) & arg_0.a.x;
    global1 = array<vec4<u32>, 25>();
    return 37291u;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec2<bool>) -> f32 {
    var var_0 = countOneBits(u_input.b) | u_input.b;
    let var_1 = func_3(Struct_2(~vec2<i32>(arg_1.a.x, ~2147483647i), arg_1.b), Struct_1(vec3<f32>(_wgslsmith_div_f32(1282f, -110f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -387f)), 271f)), vec4<bool>(true, any(vec3<bool>(any(vec4<bool>(true, false, arg_0.x, true)), !arg_0.x, false)), arg_2.x, false), vec2<f32>(-660f, arg_1.b));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1735f)))) - arg_1.b));
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    var var_0 = vec3<bool>(all(vec3<bool>(true, true, 15230u < ~u_input.b)), all(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(1u, arg_1, arg_1), vec3<u32>(arg_1, u_input.b, 10309u) & vec3<u32>(u_input.b, arg_1, arg_1)), _wgslsmith_add_vec3_u32(vec3<u32>(24866u, 7097u, 31785u), vec3<u32>(4294967295u, u_input.b, 60648u) ^ vec3<u32>(u_input.b, 4294967295u, arg_1))), 15u)]), true);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(2170f, _wgslsmith_f_op_f32(f32(-1f) * -717f), _wgslsmith_f_op_f32(2230f + -560f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(403f, -449f, arg_2.b))))))));
    let var_2 = select(vec4<bool>(!(!(var_0.x | false)), select(all(!vec4<bool>(var_0.x, var_0.x, var_0.x, false)), var_0.x, var_0.x), ~arg_1 > ~(~30756u), var_0.x), select(vec4<bool>(-1264f != var_1.a.x, true, var_0.x, var_0.x && var_0.x), vec4<bool>(any(!vec4<bool>(var_0.x, true, false, var_0.x)), any(select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, false, false, false), true)), !any(vec3<bool>(var_0.x, true, var_0.x)), var_0.x), var_0.x), vec4<bool>(select(var_0.x, true, any(!vec3<bool>(var_0.x, var_0.x, true))), false, any(select(!vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(var_0.x, true), global0[_wgslsmith_index_u32(29417u, 15u)], false), var_0.x)), all(select(vec3<bool>(true, var_0.x, false), !vec3<bool>(var_0.x, true, false), var_0.x))));
    var var_3 = global1[_wgslsmith_index_u32(4294967295u, 25u)];
    var_1 = Struct_1(var_1.a);
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(993f, -1125f, var_1.a.x))))));
}

fn func_1() -> Struct_2 {
    var var_0 = func_4(~_wgslsmith_sub_vec2_i32(u_input.a.zz, u_input.a.ww), firstLeadingBit(~_wgslsmith_add_u32(~56006u, 0u)), Struct_2(vec2<i32>(_wgslsmith_sub_i32(u_input.c, -2147483647i), u_input.a.x ^ countOneBits(u_input.a.x)), _wgslsmith_f_op_f32(func_2(select(global0[_wgslsmith_index_u32(122003u, 15u)], vec2<bool>(true, true), false), Struct_2(_wgslsmith_div_vec2_i32(u_input.a.xy, vec2<i32>(u_input.c, u_input.c)), _wgslsmith_f_op_f32(f32(-1f) * -1240f)), vec2<bool>(true, true)))), Struct_2(-(~(~vec2<i32>(2147483647i, u_input.c))), -1127f));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.a.x, _wgslsmith_f_op_f32(select(1000f, var_0.a.x, false))))));
    var var_1 = var_0.a.xz;
    var var_2 = firstTrailingBit(u_input.a.www);
    var var_3 = 60926u;
    return Struct_2(-(~vec2<i32>(1i, var_2.x)), _wgslsmith_f_op_f32(step(722f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a.x, var_0.a.x, false)) * _wgslsmith_f_op_f32(399f + var_1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = true;
    var var_2 = any(vec3<bool>(true, any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), false));
    var_1 = _wgslsmith_f_op_f32(min(259f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-234f)))))) >= _wgslsmith_f_op_f32(-var_0.b);
    let var_3 = Struct_2(vec2<i32>(i32(-1i) * -1i, (-13137i << (u_input.b % 32u)) ^ ((i32(-1i) * -1i) ^ func_1().a.x)), func_4(var_0.a, ~_wgslsmith_add_u32(34689u, u_input.b), func_1(), var_0).a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(401f - -678f), -1000f, var_0.b)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-func_4(var_0.a, u_input.b, Struct_2(vec2<i32>(1i, var_3.a.x), var_0.b), var_0).a))), _wgslsmith_div_vec3_u32(~vec3<u32>(~u_input.b, 0u, u_input.b), _wgslsmith_mult_vec3_u32(~firstLeadingBit(vec3<u32>(4311u, 44625u, 1u)), reverseBits(vec3<u32>(u_input.b, 0u, u_input.b) << (vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u))))), ~(~(~vec4<u32>(u_input.b, u_input.b, 0u, 0u))) | _wgslsmith_div_vec4_u32(vec4<u32>(~29376u, u_input.b, ~u_input.b, abs(40716u)), global1[_wgslsmith_index_u32(4294967295u >> (u_input.b % 32u), 25u)]), _wgslsmith_mult_i32(-36120i | countOneBits(abs(var_0.a.x)), -1i), func_4(~(-_wgslsmith_mod_vec2_i32(var_0.a, vec2<i32>(var_0.a.x, 1i))), ~u_input.b, var_0, Struct_2(func_1().a, _wgslsmith_f_op_f32(f32(-1f) * -1343f))).a.x);
}

