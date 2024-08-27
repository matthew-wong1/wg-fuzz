struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(129u, 1u, 61354u);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32) -> u32 {
    global0 = select(vec3<u32>(0u, ~1u & (global0.x | global0.x), _wgslsmith_div_u32(reverseBits(57852u), 50557u)), ~vec3<u32>(~global0.x, _wgslsmith_add_u32(global0.x, 0u), global0.x), true != any(vec4<bool>(true, false, true, false))) ^ ~reverseBits(~vec3<u32>(4294967295u, 6268u, 4294967295u) << (countOneBits(vec3<u32>(4294967295u, global0.x, 11143u)) % vec3<u32>(32u)));
    let var_0 = select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, true)), all(select(vec2<bool>(false, true), vec2<bool>(false, true), false)) & true), vec2<bool>(false, false));
    var var_1 = !select(var_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1949f, -195f), _wgslsmith_f_op_f32(1000f + 889f), true)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1875f)) * 115f), true);
    global0 = ~vec3<u32>(countOneBits(_wgslsmith_mod_u32(abs(global0.x), 4294967295u)), _wgslsmith_sub_u32(global0.x, select(28621u, 1u, true)), global0.x);
    var var_2 = 841f;
    return _wgslsmith_div_u32(4341u, global0.x);
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = Struct_1(1021u);
    let var_1 = Struct_4(Struct_2(Struct_1(var_0.a), Struct_1(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_0.a, arg_2.a, var_0.a), 99541u))), Struct_3(Struct_2(Struct_1(func_3(-23930i)), Struct_1(var_0.a))), Struct_2(Struct_1(min(148529u, 19501u)), Struct_1(abs(1u))));
    var var_2 = var_1;
    var_2 = Struct_4(Struct_2(var_1.b.a.a, var_1.a.a), Struct_3(var_2.c), var_1.c);
    var var_3 = select(vec3<bool>(!(global0.x > 1u) | true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec4<bool>(true, true, true, false)))), var_0.a < var_1.c.b.a), vec3<bool>(select(arg_0 == -1188f, true, select(any(vec2<bool>(true, false)), true, true)), _wgslsmith_f_op_f32(arg_0 - -1040f) > 1000f, true), !any(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false))));
    return vec3<u32>(var_0.a, var_1.b.a.a.a, ~reverseBits(_wgslsmith_div_u32(firstLeadingBit(1u), var_1.a.b.a)));
}

fn func_1(arg_0: vec3<bool>) -> u32 {
    global0 = (abs(_wgslsmith_sub_vec3_u32(func_2(-780f, global0.x, Struct_1(44175u)), _wgslsmith_div_vec3_u32(vec3<u32>(47041u, global0.x, 14988u), vec3<u32>(global0.x, global0.x, global0.x)))) | ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 38032u, 26806u), vec3<u32>(4886u, 0u, global0.x)))) >> (abs(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(3248u, global0.x, global0.x), vec3<u32>(global0.x, global0.x, global0.x)), vec3<u32>(firstLeadingBit(4294967295u), 9066u, global0.x))) % vec3<u32>(32u));
    let var_0 = abs(~(firstLeadingBit(vec4<u32>(global0.x, global0.x, 1u, 0u)) & min(vec4<u32>(global0.x, 54483u, global0.x, 72867u), vec4<u32>(global0.x, 26156u, 4294967295u, 0u))) << (_wgslsmith_add_vec4_u32(vec4<u32>(1u, global0.x, global0.x, 0u) & ~vec4<u32>(global0.x, 137547u, global0.x, 23046u), ~reverseBits(vec4<u32>(global0.x, 4294967295u, global0.x, global0.x))) % vec4<u32>(32u)));
    var var_1 = ~_wgslsmith_mod_i32(~u_input.a, i32(-1i) * -min(-51296i, -2147483647i));
    let var_2 = _wgslsmith_f_op_f32(ceil(335f));
    var var_3 = Struct_3(Struct_2(Struct_1((var_0.x | 4294967295u) ^ ~var_0.x), Struct_1(_wgslsmith_mult_u32(global0.x, global0.x >> (42863u % 32u)))));
    return _wgslsmith_sub_u32(((countOneBits(49344u) | var_0.x) ^ global0.x) & 1u, abs(~4294967295u) ^ var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global0 = ~select(vec3<u32>(~(~global0.x), 10908u, countOneBits(global0.x ^ global0.x)), vec3<u32>(~func_1(vec3<bool>(false, true, true)), _wgslsmith_add_u32(max(1u, 31722u), _wgslsmith_mult_u32(9360u, global0.x)), max(_wgslsmith_dot_vec4_u32(vec4<u32>(40455u, 1u, 0u, 1u), vec4<u32>(59365u, 14990u, global0.x, global0.x)), global0.x)), select(select(select(vec3<bool>(false, true, var_0), vec3<bool>(false, false, false), vec3<bool>(false, var_0, true)), vec3<bool>(false, true, var_0), false), vec3<bool>(true | var_0, !var_0, true), vec3<bool>(var_0 | var_0, all(vec2<bool>(var_0, true)), false)));
    let var_1 = all(select(vec4<bool>(var_0, var_0, 1i == u_input.a, !var_0), vec4<bool>(false, var_0, var_0, !(var_0 & var_0)), any(select(vec4<bool>(var_0, var_0, var_0, var_0), select(vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(var_0, false, var_0, var_0)), select(vec4<bool>(false, var_0, false, false), vec4<bool>(true, true, var_0, var_0), var_0)))));
    var var_2 = _wgslsmith_mult_i32(-1i, -97709i);
    var var_3 = u_input.b.zz;
    let var_4 = Struct_4(Struct_2(Struct_1(1u), Struct_1(global0.x)), Struct_3(Struct_2(Struct_1(22232u), Struct_1(~0u))), Struct_2(Struct_1(~4294967295u), Struct_1(global0.x)));
    let var_5 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-416f)))), -883f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-823f)))));
    var var_6 = !var_1;
    let var_7 = Struct_2(Struct_1(~1u), var_4.c.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_5, var_5) + vec3<f32>(452f, var_5, -414f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5, var_5, -1160f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_5, var_5, var_5) * vec3<f32>(308f, var_5, 213f))))));
}

