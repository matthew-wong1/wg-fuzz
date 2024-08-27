struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 33368u;

var<private> global1: array<vec4<i32>, 25>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: bool, arg_1: Struct_3) -> bool {
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(-(~arg_1.a.b.x), max(-u_input.c.x, max(-2147483647i, -arg_1.a.b.x))), firstLeadingBit(arg_1.a.b.xz));
    global0 = arg_1.a.a.x;
    var var_1 = abs(u_input.b);
    return true;
}

fn func_3() -> vec4<bool> {
    global1 = array<vec4<i32>, 25>();
    global1 = array<vec4<i32>, 25>();
    var var_0 = -149f;
    let var_1 = Struct_2(abs(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 13726u, 0u, u_input.b), max(vec4<u32>(0u, u_input.a.x, u_input.b, 102639u), vec4<u32>(141863u, u_input.a.x, u_input.a.x, u_input.b))), _wgslsmith_mod_vec4_u32(vec4<u32>(55924u, 11053u, u_input.a.x, u_input.a.x), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, 1260u, u_input.a.x), vec4<u32>(1u, u_input.b, 20069u, 1u))))), firstLeadingBit(max(-(vec3<i32>(38719i, 70169i, -2147483647i) & vec3<i32>(u_input.c.x, 28076i, 52590i)), -_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 1i, -19224i), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)))), Struct_1(!(false && (u_input.c.x < u_input.c.x))), Struct_1(any(vec4<bool>(false, true, true, true)) & all(vec2<bool>(true, true))));
    var var_2 = _wgslsmith_f_op_f32(select(-709f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1570f), -1532f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -793f))))))), ~(~20785u) != _wgslsmith_sub_u32(~var_1.a.x, var_1.a.x)));
    return select(vec4<bool>(select(var_1.c.a, all(vec2<bool>(var_1.d.a, var_1.d.a)) && var_1.c.a, true), false, (~u_input.a.x | _wgslsmith_mod_u32(4096u, 12782u)) == ~(1u << (var_1.a.x % 32u)), true), select(!vec4<bool>(!var_1.c.a, any(vec4<bool>(false, var_1.d.a, false, false)), var_1.d.a, var_1.c.a), !(!select(vec4<bool>(var_1.d.a, true, var_1.d.a, var_1.d.a), vec4<bool>(var_1.c.a, false, false, var_1.d.a), vec4<bool>(var_1.c.a, var_1.c.a, true, false))), select(select(vec4<bool>(true, var_1.d.a, false, true), select(vec4<bool>(true, false, var_1.c.a, false), vec4<bool>(false, var_1.c.a, var_1.c.a, var_1.c.a), false), select(vec4<bool>(var_1.d.a, false, false, false), vec4<bool>(false, var_1.d.a, false, false), vec4<bool>(true, var_1.d.a, false, var_1.d.a))), select(select(vec4<bool>(false, var_1.d.a, false, true), vec4<bool>(var_1.c.a, false, var_1.d.a, false), var_1.d.a), !vec4<bool>(var_1.d.a, false, true, true), var_1.c.a), !select(vec4<bool>(var_1.d.a, var_1.d.a, var_1.c.a, true), vec4<bool>(true, var_1.d.a, var_1.c.a, true), var_1.c.a))), all(select(vec3<bool>(func_1(var_1.d.a, Struct_3(var_1)), var_1.d.a, false), !select(vec3<bool>(var_1.d.a, false, false), vec3<bool>(true, true, true), var_1.c.a), vec3<bool>(var_1.d.a, var_1.c.a, var_1.d.a))));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec3<u32>) -> Struct_1 {
    global1 = array<vec4<i32>, 25>();
    global0 = u_input.b;
    var var_0 = func_3();
    global0 = _wgslsmith_add_u32(21388u, arg_0);
    global0 = 4294967295u;
    return Struct_1(true);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>) -> Struct_3 {
    global1 = array<vec4<i32>, 25>();
    global0 = ~(u_input.b ^ 0u);
    let var_0 = ~arg_0.a.xz;
    let var_1 = u_input.a.x;
    var var_2 = func_2(u_input.b, -countOneBits(u_input.c.x << (arg_0.a.x % 32u)) >= arg_1.x, arg_0.a.wzy);
    return Struct_3(Struct_2(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, var_0.x, ~0u, var_0.x | var_0.x), firstTrailingBit(min(arg_0.a, vec4<u32>(5302u, arg_0.a.x, u_input.a.x, var_0.x)))), -(vec3<i32>(-2147483647i, 2147483647i, arg_0.b.x) >> (vec3<u32>(arg_0.a.x, arg_0.a.x, var_1) % vec3<u32>(32u))) & arg_0.b, func_2(~0u, !var_2.a, arg_0.a.yyy), arg_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1u;
    var var_0 = Struct_5(func_4(Struct_2(min(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 9308u, u_input.a.x, 69755u), vec4<u32>(1774u, u_input.b, 38024u, 273u)), ~vec4<u32>(u_input.a.x, 0u, 0u, u_input.a.x)), ~vec3<i32>(u_input.c.x, -1i, u_input.c.x), Struct_1(func_1(true, Struct_3(Struct_2(vec4<u32>(106794u, u_input.a.x, 38444u, u_input.a.x), vec3<i32>(u_input.c.x, u_input.c.x, -18869i), Struct_1(true), Struct_1(false))))), func_2(u_input.a.x, true, vec3<u32>(4294967295u, u_input.b, u_input.a.x))), u_input.c), u_input.c.x, Struct_1(_wgslsmith_f_op_f32(trunc(-986f)) > 1347f), func_4(Struct_2(min(vec4<u32>(31729u, 44886u, 65810u, u_input.a.x), vec4<u32>(u_input.a.x, 22733u, 1u, 27467u)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.b), vec4<u32>(4294967295u, u_input.a.x, 1u, u_input.b)), _wgslsmith_sub_vec3_i32(vec3<i32>(45261i, -2147483647i, 0i), reverseBits(vec3<i32>(u_input.c.x, 2147483647i, -51260i))), func_4(func_4(Struct_2(vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, u_input.b), vec3<i32>(13174i, 21955i, u_input.c.x), Struct_1(false), Struct_1(true)), u_input.c).a, u_input.c).a.d, func_4(func_4(Struct_2(vec4<u32>(5272u, 4294967295u, u_input.b, 9550u), vec3<i32>(-41271i, -1i, u_input.c.x), Struct_1(false), Struct_1(false)), u_input.c).a, vec2<i32>(u_input.c.x, 1i)).a.d), _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, 1i), -vec2<i32>(0i, 25640i)), vec2<i32>(u_input.c.x, -1i) << (u_input.a.zy % vec2<u32>(32u)))));
    let var_1 = Struct_4(!(!vec4<bool>(!var_0.c.a, true, var_0.b == -1i, var_0.a.a.d.a)), Struct_1(all(select(vec3<bool>(false, var_0.a.a.d.a, var_0.a.a.c.a), select(vec3<bool>(var_0.a.a.c.a, var_0.c.a, true), vec3<bool>(false, var_0.d.a.c.a, var_0.c.a), vec3<bool>(var_0.a.a.d.a, var_0.c.a, var_0.c.a)), var_0.d.a.c.a))));
    var var_2 = var_1.b;
    global0 = ~firstTrailingBit(var_0.a.a.a.x);
    global1 = array<vec4<i32>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-689f - _wgslsmith_f_op_f32(1564f - _wgslsmith_div_f32(-913f, _wgslsmith_f_op_f32(select(-1455f, 505f, true))))), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(func_4(var_0.d.a, vec2<i32>(-1i, u_input.c.x)).a.a, vec4<u32>(_wgslsmith_sub_u32(4294967295u, var_0.d.a.a.x), var_0.a.a.a.x, var_0.a.a.a.x >> (u_input.b % 32u), ~u_input.b)), _wgslsmith_div_vec4_u32(~func_4(var_0.d.a, vec2<i32>(u_input.c.x, -29389i)).a.a, ~var_0.a.a.a)));
}

