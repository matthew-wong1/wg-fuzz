struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: i32,
    d: vec2<f32>,
    e: vec3<bool>,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3) -> f32 {
    var var_0 = false;
    let var_1 = arg_0.a;
    var var_2 = min(_wgslsmith_sub_vec4_u32(vec4<u32>(13051u, max(~1u, 4294967295u), u_input.a.x, 1851u & countOneBits(u_input.a.x)), ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 35872u, u_input.a.x), vec4<u32>(0u, u_input.a.x, 4294967295u, 81450u)), u_input.a.x << (71544u % 32u), _wgslsmith_mod_u32(1u, 1u), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x))), _wgslsmith_mod_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 11051u, 4294967295u), vec4<u32>(4294967295u, u_input.a.x, 1u, 4294967295u)), vec4<u32>(12299u, abs(0u), 5076u, u_input.a.x)) << (~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)));
    var var_3 = arg_0.b.a <= 0i;
    global1 = select(vec3<bool>(true, !arg_1.a.b.x && true, global1.x), vec3<bool>(all(vec3<bool>(true, false, arg_0.a.a.x <= var_1.a.x)), any(vec3<bool>(select(var_1.b.x, false, global1.x), true, true)), false), !global1.x);
    return _wgslsmith_f_op_f32(abs(-1674f));
}

fn func_2(arg_0: u32) -> vec3<bool> {
    var var_0 = Struct_4(14176u, Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-998f, _wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(vec3<f32>(-722f, -717f, -425f), global1.yy, 1242f, global0[_wgslsmith_index_u32(arg_0, 23u)]), Struct_1(u_input.d.x)), Struct_3(Struct_2(vec3<f32>(-533f, 1000f, 472f), vec2<bool>(true, global1.x), 194f, global0[_wgslsmith_index_u32(73784u, 23u)]), Struct_1(u_input.c.x)))), _wgslsmith_f_op_f32(f32(-1f) * -539f))), global1.zy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-782f, 529f))), global0[_wgslsmith_index_u32(arg_0 >> (65834u % 32u), 23u)]), 1i, vec2<f32>(-2414f, _wgslsmith_f_op_f32(max(1051f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-184f * -335f))))), select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, global1.x, true), vec3<bool>(true, true, false), vec3<bool>(global1.x, false, true)), false), select(!vec3<bool>(global1.x, true, true), select(vec3<bool>(false, false, true), vec3<bool>(global1.x, false, global1.x), false), true), vec3<bool>(true, true, true)), vec3<bool>(global1.x == global1.x, true, true), vec3<bool>(true, select(global1.x, global1.x, global1.x), global1.x)));
    global0 = array<Struct_1, 23>();
    global1 = var_0.e;
    let var_1 = Struct_4(firstLeadingBit(_wgslsmith_dot_vec3_u32(select(vec3<u32>(4294967295u, var_0.a, arg_0), vec3<u32>(arg_0, 34603u, arg_0), vec3<bool>(false, var_0.b.b.x, true)), ~vec3<u32>(74538u, u_input.a.x, 4294967295u))) ^ select(u_input.a.x, firstLeadingBit(~arg_0), var_0.b.b.x), Struct_2(var_0.b.a, select(vec2<bool>(22308i != u_input.d.x, true), vec2<bool>(var_0.b.b.x | true, true), !var_0.b.b.x && any(global1.zz)), _wgslsmith_f_op_f32(-var_0.d.x), Struct_1(2147483647i)), 1i, vec2<f32>(-733f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x))), !var_0.e);
    var var_2 = u_input.d >> ((vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 1u, u_input.a.x) | vec4<u32>(4294967295u, 45489u, arg_0, 13406u), vec4<u32>(45062u, 4294967295u, 932u, arg_0) << (vec4<u32>(0u, 3646u, var_0.a, 32343u) % vec4<u32>(32u))), arg_0, ~countOneBits(0u)) & ~(~vec3<u32>(2562u, var_1.a, var_0.a))) % vec3<u32>(32u));
    return var_0.e;
}

fn func_1(arg_0: i32) -> Struct_2 {
    global0 = array<Struct_1, 23>();
    var var_0 = !any(func_2(u_input.a.x));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-580f, -287f, 1118f, 1834f) * vec4<f32>(1166f, 1599f, -1000f, -564f)))), vec4<f32>(1f, 1f, 1f, 1f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1086f + 1150f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(462f + 767f), _wgslsmith_f_op_f32(f32(-1f) * -639f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(965f, -2605f)))), 1f), select(!(!vec4<bool>(true, false, global1.x, global1.x)), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, global1.x, true), global1.x), select(vec4<bool>(global1.x, false, false, global1.x), vec4<bool>(true, global1.x, global1.x, true), true)))));
    global0 = array<Struct_1, 23>();
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(var_1.yww));
    return Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1144f)))), 800f, var_1.x), vec2<bool>(!any(!vec3<bool>(false, global1.x, false)), all(!vec3<bool>(true, false, global1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -925f), _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -143f)))), global0[_wgslsmith_index_u32(~0u, 23u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(2147483647i);
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    let var_1 = Struct_4(_wgslsmith_mult_u32(select(max(u_input.a.x, abs(u_input.a.x)), 11372u, global1.x), max(~4294967295u, ~23182u) >> (_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) % 32u)), var_0, var_0.d.a, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(163f, 617f)) * vec2<f32>(var_0.a.x, var_0.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0.c)))))), vec3<bool>(global1.x, !any(vec3<bool>(global1.x, false, global1.x)) && (global1.x | !var_0.b.x), global1.x));
    global1 = select(vec3<bool>(any(var_1.e), var_0.b.x, true), var_1.e, all(var_1.e.zz));
    var var_2 = func_1(-min(max(countOneBits(-19543i), 1i), reverseBits(func_1(-1i).d.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, 56581u, 49879u, 4294967295u), vec4<u32>(1u, u_input.a.x, 0u, u_input.a.x)), _wgslsmith_div_u32(var_1.a, 1u)), max(_wgslsmith_add_vec2_u32(u_input.a, ~vec2<u32>(904u, var_1.a)), vec2<u32>(firstLeadingBit(u_input.a.x), 1u)), u_input.a), vec4<u32>(1646u, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), var_1.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.a, 70020u, 42867u, 0u), ~vec4<u32>(u_input.a.x, 4294967295u, 34614u, u_input.a.x)) >> (1u % 32u)), var_2.a.x, ~select(~_wgslsmith_mod_vec3_u32(vec3<u32>(8326u, var_1.a, var_1.a), vec3<u32>(var_1.a, 35418u, 28122u)), vec3<u32>(min(var_1.a, u_input.a.x), ~0u, _wgslsmith_div_u32(u_input.a.x, 1u)), false));
}

