struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: bool,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 10>;

var<private> global1: array<vec3<f32>, 10>;

var<private> global2: array<vec2<f32>, 20>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = Struct_3(-u_input.b, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global1[_wgslsmith_index_u32(4294967295u, 10u)], vec3<f32>(1145f, 1872f, 670f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-604f + -882f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1895f, 1225f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -415f)))))), min(vec2<u32>(firstLeadingBit(~11769u), 96720u), reverseBits(_wgslsmith_mult_vec2_u32(u_input.a.xw, min(vec2<u32>(32305u, 16496u), u_input.a.wy)))), ~vec2<i32>(~u_input.b, abs(i32(-1i) * -1i)));
    var var_1 = var_0.b.x;
    let var_2 = ((u_input.a.x & ~select(17598u, 0u, false)) & ~0u) ^ reverseBits(var_0.c.x);
    var var_3 = Struct_2(-1i, Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_0.b.x, -1352f)), vec3<f32>(_wgslsmith_f_op_f32(select(-371f, 795f, false)), var_0.b.x, _wgslsmith_f_op_f32(abs(946f)))), -18357i == -_wgslsmith_dot_vec2_i32(vec2<i32>(-12663i, 0i), vec2<i32>(-1i, arg_0)), any(!global0[_wgslsmith_index_u32(firstTrailingBit(49118u), 10u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -380f)), ~(~(var_0.d.x ^ 2147483647i))));
    return var_3.b.a.x;
}

fn func_2() -> vec3<bool> {
    global2 = array<vec2<f32>, 20>();
    var var_0 = 1000f;
    var var_1 = any(vec3<bool>(false, true, true));
    var var_2 = vec2<i32>(u_input.b, -reverseBits(0i));
    let var_3 = _wgslsmith_f_op_f32(func_3(-(~(-abs(-13940i)))));
    return vec3<bool>(select(true, select(true, select(select(true, true, false), true, true), all(select(global0[_wgslsmith_index_u32(7536u, 10u)], global0[_wgslsmith_index_u32(u_input.a.x, 10u)], false))), select(any(vec2<bool>(true, true)), true, all(vec4<bool>(true, true, true, true)))), !(u_input.a.x != (~u_input.a.x ^ ~u_input.a.x)), var_3 <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3, -288f)) + -1112f));
}

fn func_1() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(828f, -197f, -179f, _wgslsmith_f_op_f32(1998f + 375f)))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(451f, 1017f, -1568f, -2151f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2063f, 562f, -1088f, 1211f)))))))));
    var var_1 = min(_wgslsmith_dot_vec4_i32(vec4<i32>(32770i, 1i, 1i, 2147483647i), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) << (u_input.a % vec4<u32>(32u)), -vec4<i32>(u_input.b, u_input.b, u_input.b, 22474i)), vec4<i32>(43204i, u_input.b, 0i, -509i) & vec4<i32>(-14588i, 21752i, 0i, u_input.b))), _wgslsmith_sub_i32(~(-18131i), u_input.b) | max(2147483647i, -18043i));
    var var_2 = u_input.a.xwy;
    var var_3 = func_2();
    var var_4 = Struct_4(_wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(u_input.b, u_input.b) << (var_2.yy % vec2<u32>(32u))) & vec2<i32>(1i | u_input.b, max(19872i, 30967i)), _wgslsmith_mod_vec2_i32(abs(vec2<i32>(27010i, -13434i)), ~(vec2<i32>(-2147483647i, u_input.b) ^ vec2<i32>(u_input.b, 56080i)))), vec2<i32>(-(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 2147483647i, -12759i), vec3<i32>(u_input.b, 2147483647i, 8073i))), -19669i), vec4<u32>(_wgslsmith_sub_u32(~_wgslsmith_mult_u32(25142u, var_2.x), 61697u), ~(~(~u_input.a.x)), u_input.a.x, ~(_wgslsmith_add_u32(u_input.a.x, var_2.x) ^ var_2.x)), u_input.a.x, Struct_3(max(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 33466i), vec2<i32>(-23755i, -29032i)) | _wgslsmith_mult_i32(u_input.b, u_input.b), 0i), var_0.wzw, ~(~select(u_input.a.zx, var_2.xy, var_3.x)), firstTrailingBit(vec2<i32>(-u_input.b, -2147483647i))));
    return Struct_4(~_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, ~(-2147483647i)), vec2<i32>(-1i) * -var_4.e.d, var_4.a), vec2<i32>(0i, -2147483647i) | abs(var_4.a), vec4<u32>(_wgslsmith_sub_u32(~var_2.x, ~4294967295u), ~(~4294967295u), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_2.x, u_input.a.x), vec2<u32>(var_4.e.c.x, 89144u)), u_input.a.ww), 0u), 31034u, Struct_3(~_wgslsmith_mod_i32(abs(u_input.b), select(-49599i, var_4.e.d.x, false)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1892f, 889f, var_0.x)) - _wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(37209u, 10u)] - global1[_wgslsmith_index_u32(4294967295u, 10u)])))), var_4.e.c, ~select(vec2<i32>(u_input.b, -2686i), var_4.b, var_3.yz)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 10>();
    var var_0 = func_1();
    let var_1 = !vec3<bool>(false, !(func_2().x | select(true, true, false)), !((var_0.e.b.x != var_0.e.b.x) && true));
    var var_2 = min(-(~(~(vec2<i32>(u_input.b, u_input.b) & var_0.b))), vec2<i32>(func_1().e.a << (30910u % 32u), _wgslsmith_clamp_i32(-44668i << (_wgslsmith_dot_vec4_u32(u_input.a, u_input.a) % 32u), 295i, u_input.b)));
    var var_3 = ~(~31562i);
    var var_4 = false;
    var var_5 = Struct_4(vec2<i32>(u_input.b, abs(min(u_input.b, var_0.a.x)) >> (4294967295u % 32u)), ~(countOneBits(-vec2<i32>(491i, var_2.x)) | ~var_0.e.d), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, min(u_input.a.x, u_input.a.x) | _wgslsmith_mult_u32(0u, 93525u), _wgslsmith_add_u32(firstTrailingBit(var_0.e.c.x), ~0u)), u_input.a), 20899u, var_0.e);
    let var_6 = var_5.e.c << (vec2<u32>(firstTrailingBit(~_wgslsmith_add_u32(8790u, var_0.c.x)), abs(var_0.e.c.x)) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(-27123i, u_input.b, var_0.e.d.x)), reverseBits(vec3<i32>(u_input.b, var_0.a.x, var_5.b.x))), (vec3<i32>(var_2.x, -57345i, u_input.b) ^ vec3<i32>(var_2.x, -2147483647i, -2147483647i)) >> ((u_input.a.xzz >> (u_input.a.xwy % vec3<u32>(32u))) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(var_0.e.b.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_5.e.b.x)))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1602f - var_5.e.b.x))))), 0u, vec3<u32>(2526u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_6.x, 0u, 1u, 91006u), var_0.c) ^ (select(var_6.x, 70951u, true) | max(45262u, 284u)), 4294967295u));
}

