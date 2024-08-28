struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: Struct_2,
    d: Struct_3,
    e: Struct_3,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_4,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>) -> i32 {
    let var_0 = u_input.a ^ u_input.a;
    var var_1 = _wgslsmith_f_op_f32(floor(-877f));
    var var_2 = !(!(arg_1.x | true));
    let var_3 = true;
    let var_4 = select(any(!select(arg_1.yy, select(arg_1.yz, arg_1.wy, arg_1.yz), !vec2<bool>(true, arg_1.x))), false, true || global0.x);
    return arg_0;
}

fn func_2() -> bool {
    let var_0 = u_input.a;
    var var_1 = vec3<i32>(abs(~(-13587i)), -2147483647i, abs(-func_3(abs(0i), select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(false, true, true, false), false))));
    var_1 = max(vec3<i32>((~13658i >> (_wgslsmith_mult_u32(var_0, u_input.a) % 32u)) >> (reverseBits(var_0) % 32u), -2147483647i, _wgslsmith_sub_i32(max(var_1.x, -var_1.x), _wgslsmith_div_i32(var_1.x, 1i))), vec3<i32>(abs(abs(_wgslsmith_div_i32(var_1.x, -1i))), var_1.x, 52306i));
    var var_2 = vec2<u32>(u_input.a, u_input.a);
    var_1 = abs(vec3<i32>(var_1.x, _wgslsmith_sub_i32(var_1.x, min(var_1.x, _wgslsmith_mod_i32(-25313i, -2147483647i))), -_wgslsmith_dot_vec3_i32(vec3<i32>(8889i, 15900i, var_1.x), vec3<i32>(63804i, var_1.x, 38101i))));
    return false;
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    let var_0 = ~(~vec3<u32>(u_input.a, u_input.a, 64353u)) | _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(countOneBits(select(vec3<u32>(2793u, 56096u, 4294967295u), vec3<u32>(4294967295u, u_input.a, 17299u), vec3<bool>(false, false, global0.x))), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(u_input.a, 12238u, u_input.a))), select(vec3<u32>(_wgslsmith_mod_u32(36412u, 53060u), u_input.a, firstLeadingBit(41739u)), _wgslsmith_add_vec3_u32(vec3<u32>(29194u, 0u, 1u), vec3<u32>(44957u, u_input.a, u_input.a)), !vec3<bool>(global0.x, false, false)));
    let var_1 = vec3<f32>(104f, -1032f, 446f);
    global0 = select(!vec2<bool>(global0.x, func_2()), !(!(!(!vec2<bool>(global0.x, true)))), vec2<bool>(func_2(), true));
    let var_2 = Struct_4(any(select(vec2<bool>(true, true), vec2<bool>(true, any(vec4<bool>(global0.x, global0.x, global0.x, global0.x))), select(select(vec2<bool>(true, global0.x), vec2<bool>(true, global0.x), vec2<bool>(false, true)), !vec2<bool>(global0.x, global0.x), global0.x))), firstLeadingBit(~(~_wgslsmith_clamp_u32(19939u, var_0.x, var_0.x))), Struct_2(!select(!vec3<bool>(false, global0.x, global0.x), !vec3<bool>(global0.x, global0.x, true), !global0.x)), Struct_3(Struct_1(vec4<u32>(17864u, _wgslsmith_sub_u32(4294967295u, var_0.x), _wgslsmith_sub_u32(u_input.a, u_input.a), ~0u)), global0.x, Struct_1(select(~vec4<u32>(814u, u_input.a, u_input.a, 55969u), vec4<u32>(var_0.x, u_input.a, var_0.x, u_input.a), !global0.x))), Struct_3(Struct_1(~(~vec4<u32>(4294967295u, 1u, u_input.a, 0u))), global0.x, Struct_1(vec4<u32>(~var_0.x, var_0.x, _wgslsmith_sub_u32(u_input.a, u_input.a), select(var_0.x, u_input.a, global0.x)))));
    let var_3 = vec4<u32>(_wgslsmith_mult_u32(countOneBits(_wgslsmith_dot_vec3_u32(var_0, var_2.e.c.a.wzx)), var_0.x) ^ _wgslsmith_clamp_u32(49935u, 4294967295u, countOneBits(_wgslsmith_mult_u32(var_2.d.c.a.x, 1u))), abs(~abs(_wgslsmith_add_u32(var_2.e.a.a.x, 11250u))), _wgslsmith_sub_u32(var_2.d.a.a.x, 3926u), _wgslsmith_dot_vec4_u32(~var_2.d.a.a, abs(var_2.d.c.a)));
    return ~(~var_0.x);
}

fn func_4(arg_0: u32) -> Struct_4 {
    let var_0 = -396f;
    return Struct_4(global0.x, u_input.a, Struct_2(select(vec3<bool>(!global0.x, global0.x, global0.x), !select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, global0.x, false), global0.x), all(select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), global0.x)))), Struct_3(Struct_1(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) << ((vec4<u32>(49520u, 44530u, 14559u, 69365u) >> (vec4<u32>(2816u, 1u, arg_0, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))), global0.x, Struct_1(countOneBits(min(vec4<u32>(56931u, 1u, 1u, arg_0), vec4<u32>(arg_0, 1u, u_input.a, u_input.a))))), Struct_3(Struct_1(~(~vec4<u32>(1u, u_input.a, 2616u, 4217u))), false, Struct_1(~(~vec4<u32>(16459u, 1u, 1u, arg_0)))));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_4) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-356f))))));
    var_0 = _wgslsmith_f_op_f32(trunc(1174f));
    var_0 = 432f;
    let var_1 = func_4(max(_wgslsmith_mult_u32(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 0u, arg_0.x), _wgslsmith_div_vec3_u32(vec3<u32>(53615u, u_input.a, arg_1.d.a.a.x), vec3<u32>(38629u, arg_1.d.c.a.x, 1u)))), func_4(4294967295u).b)).c;
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1334f - _wgslsmith_div_f32(-334f, -1777f)))));
    return _wgslsmith_sub_u32(arg_0.x, ~(~firstTrailingBit(_wgslsmith_sub_u32(1u, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<bool>(!all(select(!vec2<bool>(global0.x, global0.x), !vec2<bool>(global0.x, true), !global0.x)), false);
    let x = u_input.a;
    s_output = StorageBuffer(func_5(vec3<u32>(u_input.a ^ 62027u, select(u_input.a, u_input.a, false), u_input.a << (u_input.a % 32u)) & _wgslsmith_sub_vec3_u32(vec3<u32>(15468u, u_input.a, 38805u), vec3<u32>(1u, u_input.a, 0u) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))), func_4(func_1(-vec4<i32>(113221i, 1i, -2147483647i, 1i)))), ~select(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 25408u, 0u, 6619u), vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)), ~(vec4<u32>(1u, 16731u, 0u, 34299u) >> (vec4<u32>(u_input.a, 1u, u_input.a, 100248u) % vec4<u32>(32u))), any(vec2<bool>(false, false))));
}

