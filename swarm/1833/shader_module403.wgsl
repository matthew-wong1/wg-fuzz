struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec4<bool>,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: bool,
    e: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec2<bool>,
    d: vec2<i32>,
    e: u32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_4,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
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

var<private> global0: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(245f, -2099f, Struct_1(294f, vec2<bool>(true, false), vec4<bool>(true, false, true, true), 161460u, vec4<u32>(0u, 0u, 0u, 34701u)), 502f), Struct_2(-1070f, 197f, Struct_1(1058f, vec2<bool>(false, false), vec4<bool>(true, true, true, false), 4294967295u, vec4<u32>(4294967295u, 4294967295u, 0u, 0u)), -172f), Struct_2(-848f, -849f, Struct_1(965f, vec2<bool>(true, false), vec4<bool>(false, false, false, true), 33926u, vec4<u32>(1u, 0u, 4294967295u, 7671u)), -923f), Struct_2(-2397f, -1036f, Struct_1(-199f, vec2<bool>(false, false), vec4<bool>(false, false, true, true), 8308u, vec4<u32>(1u, 1u, 27478u, 1u)), -980f), Struct_2(203f, 1201f, Struct_1(272f, vec2<bool>(true, false), vec4<bool>(false, true, true, true), 22438u, vec4<u32>(85842u, 48063u, 0u, 8623u)), 503f), Struct_2(1572f, 1785f, Struct_1(167f, vec2<bool>(true, false), vec4<bool>(true, true, false, false), 65119u, vec4<u32>(0u, 4294967295u, 0u, 8104u)), -638f), Struct_2(-1311f, 1000f, Struct_1(-1000f, vec2<bool>(false, true), vec4<bool>(true, true, true, true), 20945u, vec4<u32>(49831u, 4294967295u, 1329u, 27340u)), 1348f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: bool, arg_3: vec4<f32>) -> f32 {
    global0 = array<Struct_2, 7>();
    global0 = array<Struct_2, 7>();
    let var_0 = Struct_1(arg_3.x, vec2<bool>(true, true), !select(select(vec4<bool>(arg_2, false, arg_2, true), !vec4<bool>(arg_2, arg_2, false, false), select(vec4<bool>(false, true, false, arg_2), vec4<bool>(arg_2, arg_2, arg_2, arg_2), arg_2)), select(!vec4<bool>(arg_2, true, true, false), !vec4<bool>(arg_2, true, true, arg_2), vec4<bool>(arg_2, true, false, arg_2)), select(vec4<bool>(true, false, arg_2, true), vec4<bool>(arg_2, false, arg_2, arg_2), true)), _wgslsmith_mod_u32(~firstLeadingBit(abs(arg_0.x)), _wgslsmith_dot_vec4_u32(u_input.c, ~_wgslsmith_add_vec4_u32(u_input.c, vec4<u32>(u_input.a.x, 4294967295u, 48234u, arg_0.x)))), vec4<u32>((select(4294967295u, 12776u, arg_2) | 1u) & min(arg_0.x, arg_0.x ^ arg_0.x), _wgslsmith_dot_vec2_u32(u_input.d, ~vec2<u32>(u_input.c.x, 20257u)) >> (u_input.b.x % 32u), arg_0.x, ~arg_0.x));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1467f)))));
    let var_2 = 1u;
    return -1290f;
}

fn func_2() -> vec2<bool> {
    var var_0 = global0[_wgslsmith_index_u32(select(5528u, 1u, false), 7u)];
    let var_1 = !var_0.c.c.xxz;
    var var_2 = Struct_5(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d, _wgslsmith_f_op_f32(func_3(vec3<u32>(9166u, var_0.c.e.x, u_input.a.x), 1i, false, vec4<f32>(-806f, 365f, 201f, 305f)))) + vec2<f32>(529f, -216f)))), Struct_4(Struct_1(264f, vec2<bool>(false, all(var_0.c.c)), vec4<bool>(true, !var_1.x, !var_0.c.b.x, true), countOneBits(~87612u), u_input.c), true, select(select(vec2<bool>(var_0.c.c.x, var_1.x), vec2<bool>(false, false), !var_1.zx), vec2<bool>(var_1.x == var_1.x, true), var_0.c.c.yz), vec2<i32>(-1i) * -vec2<i32>(-2147483647i, 2147483647i), 82426u), Struct_4(var_0.c, select(all(var_0.c.c.wy), true, all(var_1)), !var_1.yy, vec2<i32>(-10401i, _wgslsmith_mult_i32(_wgslsmith_add_i32(-10855i, 17115i), _wgslsmith_clamp_i32(-2147483647i, -2147483647i, 2147483647i))), u_input.a.x));
    var var_3 = !var_2.c.a.c;
    let var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -884f)) + -365f), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.c.a.a, 505f)) - _wgslsmith_f_op_f32(func_3(vec3<u32>(15584u, 4294967295u, 4294967295u), 24287i, var_0.c.b.x, vec4<f32>(var_0.b, var_2.a.x, -443f, -544f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(trunc(1145f)))))));
    return !var_3.yw;
}

fn func_1() -> vec3<u32> {
    var var_0 = select(select(func_2(), func_2(), func_2()), select(vec2<bool>(true, true), !(!select(vec2<bool>(false, true), vec2<bool>(false, true), false)), true), any(vec4<bool>(true, true, true, true)));
    var_0 = vec2<bool>(var_0.x, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~u_input.c.zz, vec2<u32>(20764u, u_input.c.x), ~vec2<u32>(u_input.a.x, 4294967295u)), vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(4294967295u, u_input.b.x, 4294967295u)), _wgslsmith_mod_u32(4294967295u, u_input.c.x))) > 73728u);
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), 26927i, var_0.x, vec4<f32>(-460f, 569f, -166f, -626f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-149f - 1106f) - 1f)), select(!(!vec2<bool>(var_0.x, true)), vec2<bool>(!var_0.x, true), !var_0.x), !select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, var_0.x, var_0.x, var_0.x), var_0.x), select(vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, var_0.x)), all(vec2<bool>(false, true))), reverseBits(_wgslsmith_div_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(24143u, u_input.b.x, u_input.b.x, u_input.b.x), u_input.c))), select(u_input.c, vec4<u32>(abs(u_input.b.x), ~0u, u_input.c.x, u_input.d.x), all(vec2<bool>(var_0.x, true)) || false)), !var_0.x, Struct_1(-462f, !(!vec2<bool>(var_0.x, var_0.x)), !select(select(vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(true, true, false, false), vec4<bool>(var_0.x, true, var_0.x, true)), vec4<bool>(false, var_0.x, var_0.x, false), true), 45555u, firstLeadingBit(~u_input.c)), var_0.x || (_wgslsmith_f_op_f32(func_3(vec3<u32>(u_input.d.x, u_input.a.x, 24316u), reverseBits(1i), var_0.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(-939f, 753f, 1062f, -702f) * vec4<f32>(-362f, 694f, -761f, -111f)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2053f))), firstLeadingBit(abs(~0u)));
    return ~abs(var_1.c.e.zwy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_1();
    global0 = array<Struct_2, 7>();
    let var_1 = select(!select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, false)), func_2().x), select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec4<bool>(true, false, false, true)), true), select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true), true), vec3<bool>(6684u != var_0.x, true, true))), true);
    global0 = array<Struct_2, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1896f - 1048f) - -1094f)))), func_1().x);
}

