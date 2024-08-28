struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
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

var<private> global0: array<f32, 14> = array<f32, 14>(-755f, -1000f, 556f, -1786f, -834f, 894f, 824f, 692f, -778f, -1296f, 970f, 582f, 1593f, 823f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>) -> vec4<u32> {
    global0 = array<f32, 14>();
    let var_0 = min(~2147483647i, u_input.a.x);
    global0 = array<f32, 14>();
    global0 = array<f32, 14>();
    global0 = array<f32, 14>();
    return vec4<u32>(~(~u_input.b.x), ~_wgslsmith_clamp_u32(~u_input.b.x & (u_input.b.x | u_input.b.x), 4294967295u, u_input.b.x), 44222u, u_input.b.x & u_input.b.x);
}

fn func_2(arg_0: vec3<u32>, arg_1: u32) -> vec2<u32> {
    var var_0 = Struct_3(!any(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), false)), vec4<i32>(u_input.a.x & select(u_input.a.x, u_input.a.x, true), u_input.a.x, _wgslsmith_div_i32(_wgslsmith_div_i32(-2147483647i, 6247i), u_input.a.x), ~u_input.a.x) >> (func_3(true, vec3<bool>(arg_1 != 1u, arg_0.x >= 2712u, true)) % vec4<u32>(32u)), ~(~abs(~arg_0.x)), Struct_1(true, vec2<i32>(-1i) * -countOneBits(u_input.a.zz), reverseBits(~u_input.a.zx)), Struct_1(firstLeadingBit(_wgslsmith_add_i32(84776i, u_input.a.x)) >= ~(~u_input.a.x), vec2<i32>(-(~0i), 2147483647i), u_input.a.yz));
    let var_1 = var_0.a;
    var var_2 = Struct_3(var_0.a, vec4<i32>(select(_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.a.x, var_0.d.c.x), firstTrailingBit(2147483647i)), min(_wgslsmith_add_i32(u_input.a.x, -5207i), min(u_input.a.x, -16961i)), var_0.e.a), 10962i, var_0.e.b.x, -(~(var_0.b.x ^ var_0.b.x))), 21214u, Struct_1(var_0.e.a, var_0.b.xz, u_input.a.zz), Struct_1(!var_0.d.a, u_input.a.xz, vec2<i32>(var_0.b.x, _wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.a.yz), -vec2<i32>(1i, var_0.b.x)))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(22522u, 9983u), u_input.b.x << (1u % 32u)), 14u)], _wgslsmith_f_op_f32(trunc(-565f)), true))), _wgslsmith_f_op_f32(-1052f - -1277f), global0[_wgslsmith_index_u32(4294967295u, 14u)]);
    let var_4 = ~(~var_0.c);
    return select(arg_0.yy ^ select(~vec2<u32>(28776u, 62515u) ^ ~arg_0.yz, firstTrailingBit(~arg_0.zx), var_0.d.a & true), u_input.b ^ abs(abs(u_input.b)), select(vec2<bool>(var_0.a, false), vec2<bool>(true, true), false));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32) -> vec2<i32> {
    let var_0 = func_2(~(~(~vec3<u32>(874u, u_input.b.x, u_input.b.x))), u_input.b.x);
    global0 = array<f32, 14>();
    let var_1 = Struct_3(!(true || !any(vec4<bool>(false, false, true, arg_1.a))), _wgslsmith_mod_vec4_i32(vec4<i32>(i32(-1i) * -arg_1.c.x, -(~(-2147483647i)), 1i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2468i, arg_1.b.x, -2147483647i), vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, 15201i))), vec4<i32>(-14414i, max(~arg_1.c.x, -u_input.a.x), arg_1.b.x, abs(_wgslsmith_sub_i32(-6542i, 0i)))), ~(~_wgslsmith_div_u32(35314u, func_3(arg_1.a, vec3<bool>(arg_1.a, arg_1.a, true)).x)), Struct_1(any(vec3<bool>(arg_1.a && true, true, u_input.a.x <= 18863i)), ~arg_1.c, ~_wgslsmith_sub_vec2_i32(vec2<i32>(-55606i, -2147483647i), vec2<i32>(arg_1.b.x, u_input.a.x)) << (_wgslsmith_add_vec2_u32(var_0, _wgslsmith_mult_vec2_u32(var_0, vec2<u32>(u_input.b.x, arg_2))) % vec2<u32>(32u))), Struct_1(-594f <= _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(max(79467u, var_0.x), 14u)]), ~(~vec2<i32>(arg_1.c.x, 6706i)), -arg_1.b));
    global0 = array<f32, 14>();
    global0 = array<f32, 14>();
    return var_1.d.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(false, firstLeadingBit((~vec4<i32>(64439i, 16432i, u_input.a.x, u_input.a.x) | select(vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(-17769i, 184i, u_input.a.x, -6713i), false)) | max(~vec4<i32>(u_input.a.x, 1i, -45024i, -501i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x), vec4<i32>(-10425i, -16897i, 0i, u_input.a.x)))), ~u_input.b.x, Struct_1(any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false), select(false, true, false))), func_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-396f, -1000f, 1267f, global0[_wgslsmith_index_u32(u_input.b.x, 14u)]), vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], -1000f, global0[_wgslsmith_index_u32(u_input.b.x, 14u)], global0[_wgslsmith_index_u32(u_input.b.x, 14u)])))), Struct_1(true, _wgslsmith_add_vec2_i32(u_input.a.yy, u_input.a.yx), vec2<i32>(-1i, 2147483647i)), _wgslsmith_mod_u32(6956u << (u_input.b.x % 32u), u_input.b.x)), select(~firstLeadingBit(vec2<i32>(22654i, u_input.a.x)), _wgslsmith_mod_vec2_i32(vec2<i32>(79952i, u_input.a.x) | vec2<i32>(1i, u_input.a.x), _wgslsmith_div_vec2_i32(vec2<i32>(-7241i, u_input.a.x), vec2<i32>(-2147483647i, 2018i))), true)), Struct_1(true && all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), u_input.a.xy, u_input.a.xx));
    var var_1 = true != (var_0.d.c.x >= -_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.e.c.x, 2147483647i, -2147483647i, -1i), vec4<i32>(u_input.a.x, -2147483647i, 1i, u_input.a.x)));
    var var_2 = var_0;
    var_1 = var_0.a;
    var var_3 = true;
    var var_4 = ~countOneBits(_wgslsmith_mod_u32(var_2.c ^ 32548u, ~(~u_input.b.x)));
    var var_5 = var_2.b.wzw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(var_0.c, 43562u), 1u), 14u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(0u, 14u)]))), 1f), all(vec2<bool>(5948i >= u_input.a.x, false && var_2.e.a)))), u_input.b.x);
}

