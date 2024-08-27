struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_2, 9>;

var<private> global2: bool;

var<private> global3: array<vec2<bool>, 26> = array<vec2<bool>, 26>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec3<f32>) -> vec2<u32> {
    global1 = array<Struct_2, 9>();
    var var_0 = _wgslsmith_mod_vec3_i32(abs(abs(_wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.d, u_input.d, u_input.d), vec3<i32>(-1i, 0i, -20213i)))), vec3<i32>(~2147483647i ^ (u_input.d & u_input.d), u_input.d, u_input.d & 1i));
    var_0 = -_wgslsmith_div_vec3_i32(~(~vec3<i32>(u_input.d, var_0.x, 15292i)) >> (~vec3<u32>(u_input.c.x, u_input.e, u_input.e) % vec3<u32>(32u)), ~vec3<i32>(-16540i, ~u_input.d, 38965i));
    global1 = array<Struct_2, 9>();
    let var_1 = arg_0.xx;
    return u_input.c.xx;
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec2<i32>, arg_3: vec2<bool>) -> vec2<u32> {
    var var_0 = Struct_1(global0.x);
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(804f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1755f) - _wgslsmith_f_op_f32(-1724f * 601f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1484f) - _wgslsmith_f_op_f32(-431f - -820f)))), arg_0));
    let var_2 = Struct_2(_wgslsmith_mod_vec4_u32(~vec4<u32>(_wgslsmith_mult_u32(arg_1, u_input.c.x), arg_1, 73492u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, 75912u), u_input.a)), abs(~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, 0u, 12163u, arg_1), vec4<u32>(arg_1, 34837u, u_input.a.x, u_input.a.x)))), _wgslsmith_dot_vec4_i32(abs(max(vec4<i32>(arg_2.x, -11894i, arg_2.x, -8028i) >> (vec4<u32>(u_input.e, 1u, u_input.b, 1u) % vec4<u32>(32u)), vec4<i32>(arg_2.x, u_input.d, -45563i, u_input.d))), -_wgslsmith_mult_vec4_i32(~vec4<i32>(41953i, 24240i, u_input.d, arg_2.x), vec4<i32>(u_input.d, 1i, 1i, -1481i) >> (vec4<u32>(arg_1, 3321u, 92621u, u_input.c.x) % vec4<u32>(32u)))));
    let var_3 = Struct_1(arg_0);
    let var_4 = arg_3;
    return vec2<u32>((_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(var_2.a.ywy, var_2.a.wxx), _wgslsmith_clamp_vec3_u32(u_input.a, u_input.a, u_input.a)) & ~select(4294967295u, var_2.a.x, global0.x)) & _wgslsmith_add_u32(max(5077u, reverseBits(var_2.a.x)), ~(~arg_1)), var_2.a.x);
}

fn func_1() -> f32 {
    var var_0 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-220f, -209f, 1068f) - vec3<f32>(-687f, -917f, -737f))))) << (max(min(vec2<u32>(_wgslsmith_add_u32(u_input.b, u_input.a.x), u_input.e), ~vec2<u32>(4294967295u, u_input.a.x)), ~_wgslsmith_clamp_vec2_u32(func_3(false, u_input.b, vec2<i32>(12324i, 1i), vec2<bool>(global0.x, true)), vec2<u32>(55755u, u_input.e), func_3(false, u_input.a.x, vec2<i32>(52744i, u_input.d), global3[_wgslsmith_index_u32(4452u, 26u)]))) % vec2<u32>(32u));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -209f) * 362f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(812f)))) + 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2111f)) + -647f), _wgslsmith_f_op_f32(-1921f + -397f));
    var var_2 = Struct_2(max(_wgslsmith_add_vec4_u32(reverseBits(~vec4<u32>(var_0.x, var_0.x, u_input.b, 0u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_0.x, u_input.a.x, u_input.c.x), vec4<u32>(u_input.b, 1u, var_0.x, 53049u))), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), ~vec4<u32>(4294967295u, 43188u, var_0.x, u_input.c.x))), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, -8080i, -1i, 1277i), vec4<i32>(u_input.d, 2147483647i, u_input.d, -38206i)) & _wgslsmith_div_i32(~3003i, u_input.d));
    var_0 = _wgslsmith_div_vec2_u32(firstLeadingBit(firstLeadingBit(vec2<u32>(1u, var_0.x) << (vec2<u32>(u_input.c.x, 29617u) % vec2<u32>(32u))) & ~_wgslsmith_mod_vec2_u32(var_2.a.zx, u_input.c.xy)), var_2.a.xx);
    let var_3 = ~var_2.a;
    return _wgslsmith_f_op_f32(f32(-1f) * -347f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1())))));
    global2 = global0.x;
    global0 = global3[_wgslsmith_index_u32(u_input.a.x, 26u)];
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1197f, _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(max(164f, -1583f)))) + _wgslsmith_f_op_f32(var_0 + var_0)), -763f, var_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(func_1()))));
    let var_2 = any(select(vec4<bool>(select(global0.x, global0.x, all(vec4<bool>(global0.x, false, false, true))), _wgslsmith_f_op_f32(-293f + var_1.x) != _wgslsmith_f_op_f32(ceil(-623f)), var_1.x < _wgslsmith_f_op_f32(var_1.x * var_0), global0.x), !vec4<bool>(global0.x, 4294967295u > u_input.a.x, true, !global0.x), vec4<bool>(any(select(vec3<bool>(true, global0.x, false), vec3<bool>(true, false, global0.x), global0.x)), !any(vec4<bool>(global0.x, false, false, true)), global0.x, global0.x)));
    let var_3 = Struct_1(var_2);
    var var_4 = var_3;
    let var_5 = abs(_wgslsmith_mod_vec2_i32(~firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(2854i, u_input.d), vec2<i32>(u_input.d, 0i), vec2<i32>(u_input.d, u_input.d))), countOneBits(~vec2<i32>(u_input.d, u_input.d)) << (u_input.a.yx % vec2<u32>(32u))));
    global1 = array<Struct_2, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(abs(max(vec4<u32>(u_input.a.x, 1u, u_input.b, 99624u), vec4<u32>(u_input.e, 85470u, u_input.a.x, u_input.a.x)))) & _wgslsmith_mult_vec4_u32(abs(vec4<u32>(1u, u_input.c.x, 3729u, u_input.c.x) >> (vec4<u32>(61491u, 83594u, 13479u, u_input.c.x) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.c.x, 4294967295u, u_input.b, 54846u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e, u_input.a.x, u_input.c.x, 73624u), vec4<u32>(u_input.a.x, 22412u, 4294967295u, 1u)))), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(1u, 408u), u_input.e, u_input.b, ~4294967295u), select(~vec4<u32>(55025u, u_input.e, 4294967295u, 2319u), select(vec4<u32>(4195u, 1u, 0u, 16908u), vec4<u32>(u_input.c.x, 0u, u_input.a.x, u_input.a.x), vec4<bool>(false, false, var_3.a, false)), select(vec4<bool>(var_3.a, false, false, var_3.a), vec4<bool>(global0.x, false, var_3.a, false), global0.x))) << (~vec4<u32>(u_input.b, 97673u, ~4294967295u, 51611u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_1.x)), -101f, var_2)) - 699f)), var_0);
}

