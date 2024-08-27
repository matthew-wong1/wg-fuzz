struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
    d: vec2<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec2<bool> {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(step(133f, -1525f)), _wgslsmith_div_f32(-338f, 1000f)), vec2<f32>(_wgslsmith_f_op_f32(min(351f, -577f)), 1180f))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1428f)) + -314f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1502f)), -918f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-615f)) + _wgslsmith_f_op_f32(min(736f, 737f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-420f * 1176f) * _wgslsmith_f_op_f32(trunc(-1775f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(807f))))));
    let var_1 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(96651u, 4294967295u, 1u, ~u_input.b) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(40269u, 106112u, u_input.b, u_input.b), firstLeadingBit(vec4<u32>(77267u, u_input.b, 14782u, 22395u))) % vec4<u32>(32u)), max(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, 63633u, u_input.b), vec4<u32>(u_input.b, 1u, 4294967295u, u_input.b)) ^ vec4<u32>(19446u, u_input.b, u_input.b, 0u), vec4<u32>(u_input.b, ~u_input.b, ~u_input.b, ~u_input.b)));
    var var_2 = Struct_1(-u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(729f - var_0.x), _wgslsmith_div_f32(-1393f, var_0.x), select(true, false, false))))), 82149u);
    let var_3 = vec3<bool>(!(!any(vec2<bool>(true, true))), true, false && any(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true)));
    let var_4 = u_input.a;
    return select(var_3.zz, var_3.xx, vec2<bool>(select(var_3.x, (u_input.b <= u_input.b) & true, var_3.x), select(true, true, var_3.x && var_3.x) || var_3.x));
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.b;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1160f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1199f * -1414f)))) - 215f), vec3<u32>(0u, ~(~select(var_0, var_0, true)), 117640u), Struct_1(u_input.c, -1246f, ~1u), !func_3(), Struct_2(Struct_1(u_input.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -268f))), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(25719u, 6389u), vec2<u32>(var_0, u_input.b)), abs(vec2<u32>(1u, 108585u)))), select(_wgslsmith_div_vec2_u32(select(vec2<u32>(0u, var_0), vec2<u32>(var_0, var_0), false), ~vec2<u32>(var_0, 32305u)), vec2<u32>(u_input.b << (1u % 32u), 36382u), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1897f, -966f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-541f, 737f), vec2<f32>(410f, 671f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1424f, -1727f) + vec2<f32>(246f, 1000f))), !func_3())), ~u_input.a.zwy));
    let var_2 = Struct_1(-20230i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(trunc(var_1.c.b))))), ~(~u_input.b));
    return Struct_1(var_1.e.d.x, _wgslsmith_f_op_f32(-var_2.b), u_input.b);
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_2 {
    return Struct_2(func_2(), vec2<u32>(arg_0, arg_0 << (~(~arg_0) % 32u)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -109f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), ~u_input.a.ywz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1465f));
    var var_1 = true;
    let var_2 = func_1(73478u, 9087i);
    var var_3 = Struct_3(var_0, _wgslsmith_mod_vec3_u32(~(~vec3<u32>(4294967295u, u_input.b, var_2.a.c)), vec3<u32>(var_2.b.x, 1u, ~u_input.b)) >> (~abs(~vec3<u32>(u_input.b, var_2.b.x, var_2.a.c)) % vec3<u32>(32u)), Struct_1(15848i, var_0, _wgslsmith_dot_vec2_u32(func_1(u_input.b, -2147483647i).b, var_2.b & vec2<u32>(u_input.b, u_input.b)) >> (var_2.b.x % 32u)), !select(select(func_3(), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true)), vec2<bool>(true, true), true), var_2);
    var var_4 = var_3.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_0, _wgslsmith_sub_i32(i32(-1i) * -7696i, firstLeadingBit(-func_2().a)), u_input.a, ~(~countOneBits(-u_input.a.wxy)));
}

