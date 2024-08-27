struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: vec2<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<f32>,
    d: vec4<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 5>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: bool, arg_3: vec3<bool>) -> u32 {
    let var_0 = ~(max(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1170i), vec4<i32>(2147483647i, -2147483647i, -1i, u_input.a.x)) << (~vec4<u32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x) % vec4<u32>(32u)), select(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x) << (vec4<u32>(arg_1.x, 0u, 1u, arg_1.x) % vec4<u32>(32u)), ~vec4<i32>(0i, -1i, -2147483647i, u_input.a.x), select(vec4<bool>(arg_0, arg_2, arg_2, false), vec4<bool>(false, true, false, arg_3.x), vec4<bool>(true, true, true, true)))) | vec4<i32>(u_input.a.x, -(-14284i & u_input.a.x), min(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -21833i, u_input.a.x, u_input.a.x), vec4<i32>(18512i, u_input.a.x, u_input.a.x, -22569i)), -u_input.a.x), _wgslsmith_add_i32(32812i << (1u % 32u), u_input.a.x)));
    global0 = array<vec2<bool>, 5>();
    var var_1 = !arg_3;
    return _wgslsmith_mod_u32(75034u, 10181u);
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec3<bool>) -> vec4<i32> {
    var var_0 = Struct_3(-1062f, arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(238f)))))), false);
    global0 = array<vec2<bool>, 5>();
    var var_1 = arg_1.c;
    let var_2 = all(arg_1.c.e);
    var var_3 = !arg_2.x;
    return vec4<i32>(-2147483647i, i32(-1i) * -(_wgslsmith_dot_vec2_i32(vec2<i32>(8116i, 1i), vec2<i32>(var_0.b.c, -1i)) << (func_3(false, vec3<u32>(var_1.a, var_1.a, arg_0.x), var_2, arg_1.c.e) % 32u)), arg_1.c.c, _wgslsmith_add_i32(~(-2147483647i), -24882i));
}

fn func_1() -> i32 {
    global0 = array<vec2<bool>, 5>();
    var var_0 = _wgslsmith_f_op_f32(-873f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -593f)) - -198f)));
    var_0 = -278f;
    let var_1 = -144f;
    global0 = array<vec2<bool>, 5>();
    return _wgslsmith_dot_vec4_i32(reverseBits(countOneBits(func_2(vec3<u32>(16683u, 4294967295u, 1u), Struct_2(vec4<u32>(68274u, 1u, 4294967295u, 1u), Struct_1(1u, false, -2147483647i, vec2<bool>(true, false), vec3<bool>(true, false, true)), Struct_1(1u, false, u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 5u)], vec3<bool>(false, true, true))), vec3<bool>(false, false, true)))) << ((vec4<u32>(1u, 1u, 1u, 1u) >> (select(vec4<u32>(1u, 1u, 1u, 1u), abs(vec4<u32>(1u, 13436u, 12122u, 7880u)), true) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(79490i, ~u_input.a.x), -1i), min(u_input.a.x, -abs(u_input.a.x)), ~firstTrailingBit(u_input.a.x << (4294967295u % 32u)), u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 5>();
    let var_0 = func_1();
    var var_1 = select(!select(vec4<bool>(false, var_0 >= var_0, true, true), vec4<bool>(true, true, true, true), select(false, false, true)), vec4<bool>(-1000f < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -121f))), true, false, any(vec2<bool>(select(false, true, false), false))), vec4<bool>(true, select(true, true, true), !any(vec3<bool>(false, false, true)) && true, true));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~max(_wgslsmith_mult_u32(0u, 27485u), 18831u >> (1u % 32u)), ~1u, ~1u, 1u), 26439u, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(561f))) - _wgslsmith_div_f32(-1590f, _wgslsmith_f_op_f32(ceil(-221f)))), _wgslsmith_f_op_f32(f32(-1f) * -478f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), vec2<i32>(-1i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(func_2(vec3<u32>(24714u, 100711u, 1u), Struct_2(vec4<u32>(1256u, 55314u, 17942u, 1081u), Struct_1(17087u, true, u_input.a.x, global0[_wgslsmith_index_u32(24907u, 5u)], var_1.xzy), Struct_1(53919u, true, 0i, vec2<bool>(var_1.x, var_1.x), vec3<bool>(false, false, var_1.x))), var_1.xyw).wyw, vec3<i32>(u_input.a.x, var_0, var_0)), vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, 13117i, var_0))));
}

