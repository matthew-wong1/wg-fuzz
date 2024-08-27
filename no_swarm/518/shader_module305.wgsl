struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-12999i, 1i, 28907i);

var<private> global1: array<bool, 21>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: vec4<i32>) -> vec2<u32> {
    var var_0 = Struct_1(select(!vec4<bool>(all(vec2<bool>(global1[_wgslsmith_index_u32(0u, 21u)], false)), global1[_wgslsmith_index_u32(54747u, 21u)], global1[_wgslsmith_index_u32(u_input.d, 21u)], global1[_wgslsmith_index_u32(u_input.a, 21u)] & global1[_wgslsmith_index_u32(11426u, 21u)]), select(vec4<bool>(arg_2.x > 1i, false && global1[_wgslsmith_index_u32(1u, 21u)], true, global1[_wgslsmith_index_u32(u_input.a | 38111u, 21u)]), !(!vec4<bool>(false, false, global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(u_input.a, 21u)])), global1[_wgslsmith_index_u32(firstLeadingBit(u_input.d), 21u)]), any(vec3<bool>(!global1[_wgslsmith_index_u32(156254u, 21u)], global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, u_input.d), 21u)], u_input.a > 0u))), select(~select(~vec2<u32>(u_input.a, 4294967295u), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.d), vec2<u32>(1u, 1u)), arg_0.x == -285f), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 46115u), vec2<u32>(51388u, 0u), vec2<u32>(u_input.d, u_input.d)), ~vec2<u32>(9993u, 0u)), ~abs(vec2<u32>(1u, u_input.d))), select(!(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 21u)], false)), select(vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 21u)]), select(vec2<bool>(true, false), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 21u)], true), vec2<bool>(global1[_wgslsmith_index_u32(0u, 21u)], true)), select(vec2<bool>(global1[_wgslsmith_index_u32(7822u, 21u)], true), vec2<bool>(true, false), global1[_wgslsmith_index_u32(u_input.d, 21u)])), !vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(u_input.d, 21u)]))), _wgslsmith_sub_vec4_i32(vec4<i32>(14426i, arg_1.x, 11469i, -34559i) >> (~vec4<u32>(67733u, 4294967295u, u_input.d, 1u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(max(vec4<i32>(arg_1.x, arg_1.x, -1i, arg_1.x), vec4<i32>(1i, arg_2.x, global0.x, global0.x)), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, arg_1.x, -1i, 23810i), arg_2))) & vec4<i32>(u_input.c, _wgslsmith_dot_vec4_i32(-arg_2, arg_2), _wgslsmith_mod_i32(u_input.b, arg_2.x), countOneBits(_wgslsmith_dot_vec4_i32(arg_2, vec4<i32>(1i, 18832i, global0.x, 1i)))));
    let var_1 = ~(-countOneBits(vec4<i32>(_wgslsmith_dot_vec3_i32(var_0.c.wzx, arg_1), -u_input.b, 1i, 23318i)));
    let var_2 = var_0.a.wxy;
    var_0 = Struct_1(select(!vec4<bool>(var_0.a.x, select(var_0.a.x, true, true), false, true), !select(select(vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(647u, 21u)]), var_0.a, var_0.a.x), !vec4<bool>(true, var_0.a.x, true, var_0.a.x), global1[_wgslsmith_index_u32(~4294967295u, 21u)]), vec4<bool>(!any(var_0.a.xzz), all(select(var_2.yy, var_0.a.xz, var_2.xx)), true, false)), var_0.b | _wgslsmith_add_vec2_u32(var_0.b << (~vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)), ~vec2<u32>(48076u, u_input.d) << (~vec2<u32>(var_0.b.x, var_0.b.x) % vec2<u32>(32u))), var_0.c);
    var var_3 = Struct_3(true, firstLeadingBit(vec3<i32>(-21238i, 0i, arg_1.x)) | ~var_1.yzy);
    return _wgslsmith_clamp_vec2_u32(var_0.b, (~(var_0.b >> (vec2<u32>(0u, var_0.b.x) % vec2<u32>(32u))) >> ((countOneBits(vec2<u32>(25812u, 42707u)) ^ vec2<u32>(65398u, u_input.a)) % vec2<u32>(32u))) >> ((var_0.b ^ ~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), var_0.b)) % vec2<u32>(32u)), var_0.b);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: vec3<i32>) -> i32 {
    var var_0 = ~(~firstTrailingBit(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(arg_1, vec2<u32>(4294967295u, 21662u)), countOneBits(vec2<u32>(arg_1.x, u_input.a)))));
    var var_1 = Struct_2(Struct_1(!vec4<bool>(false, !global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(arg_1.x, 21u)], true), func_3(vec2<f32>(-1863f, arg_0.x), arg_2, vec4<i32>(-8386i, -1i, 40736i, 0i) | vec4<i32>(arg_2.x, arg_2.x, global0.x, global0.x)) >> (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u)), min(max(select(vec4<i32>(arg_2.x, global0.x, u_input.b, 52056i), vec4<i32>(43173i, u_input.b, arg_2.x, u_input.b), vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 21u)], global1[_wgslsmith_index_u32(var_0.x, 21u)], true, global1[_wgslsmith_index_u32(7932u, 21u)])), -vec4<i32>(global0.x, -1639i, u_input.c, arg_2.x)), vec4<i32>(-1i) * -vec4<i32>(global0.x, -58157i, arg_2.x, u_input.b))), countOneBits(u_input.c));
    var var_2 = arg_2.x;
    var var_3 = vec4<u32>(arg_1.x, u_input.a, 5493u, 46231u);
    var_2 = 1i;
    return var_1.b;
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = select(true, all(select(vec2<bool>(true, false), !vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 21u)], false), arg_0.a.xy)), true);
    global0 = ~min(max(~vec3<i32>(-28292i, u_input.c, global0.x), _wgslsmith_clamp_vec3_i32(arg_0.c.xyw, arg_0.c.xww, arg_0.c.wwx)) ^ arg_0.c.yww, ~vec3<i32>(u_input.c << (0u % 32u), _wgslsmith_mult_i32(arg_0.c.x, global0.x), func_2(vec4<f32>(-133f, -1000f, 1000f, -225f), arg_0.b, arg_0.c.xwx)));
    var var_1 = countOneBits(arg_0.c.x);
    var var_2 = Struct_2(arg_0, _wgslsmith_add_i32(-1i, i32(-1i) * -u_input.b) >> (_wgslsmith_sub_u32(10689u, arg_0.b.x) % 32u));
    global0 = ~var_2.a.c.zwx >> (_wgslsmith_div_vec3_u32(select(vec3<u32>(4294967295u, u_input.a, arg_0.b.x & arg_0.b.x), select(vec3<u32>(1u, 1u, 56796u) >> (vec3<u32>(u_input.a, arg_0.b.x, 0u) % vec3<u32>(32u)), vec3<u32>(10994u, u_input.d, arg_0.b.x) & vec3<u32>(u_input.d, u_input.a, 0u), false | var_0), var_2.a.a.zwy), ~abs(select(vec3<u32>(0u, 10019u, 33078u), vec3<u32>(0u, var_2.a.b.x, 50385u), vec3<bool>(false, arg_0.a.x, var_0)))) % vec3<u32>(32u));
    return var_0 && true;
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> vec3<i32> {
    global1 = array<bool, 21>();
    global1 = array<bool, 21>();
    var var_0 = vec3<i32>(1i, global0.x, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, 14799i, arg_0) ^ vec3<i32>(global0.x, -2147483647i, arg_0), arg_1.a.c.zxz >> (vec3<u32>(1554u, u_input.d, arg_1.a.b.x) % vec3<u32>(32u))) ^ ~u_input.b, arg_0));
    var var_1 = Struct_1(arg_1.a.a, _wgslsmith_sub_vec2_u32(max(reverseBits(vec2<u32>(arg_1.a.b.x, arg_1.a.b.x) & vec2<u32>(arg_1.a.b.x, 4294967295u)), vec2<u32>(arg_1.a.b.x, _wgslsmith_add_u32(0u, arg_1.a.b.x))), arg_1.a.b), ~(-(select(arg_1.a.c, arg_1.a.c, global1[_wgslsmith_index_u32(u_input.d, 21u)]) ^ -arg_1.a.c)));
    var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(var_1.c.zwx ^ arg_1.a.c.yxw, _wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(39492i, -7009i, -22072i)), vec3<i32>(-10589i, arg_0, 0i))), max(var_1.c.x, ~(-2147483647i) >> ((72352u & var_1.b.x) % 32u)), min(abs(-1i), abs(_wgslsmith_dot_vec2_i32(global0.xz, vec2<i32>(4634i, 62917i))))), var_1.c.zzx);
    return vec3<i32>(~47826i, abs(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(311f, 1492f, -145f, 1533f)), _wgslsmith_mod_vec2_u32(arg_1.a.b, var_1.b), vec3<i32>(arg_0, u_input.c, u_input.c))), _wgslsmith_mod_i32(reverseBits(-1i | global0.x), 0i)) << (vec3<u32>(_wgslsmith_mod_u32(arg_1.a.b.x, _wgslsmith_sub_u32(arg_1.a.b.x, 21204u)), 40477u, 1u) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(select(u_input.b, ~(~firstTrailingBit(global0.x)), global1[_wgslsmith_index_u32(71114u, 21u)]), Struct_2(Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(~29187u, 21u)], u_input.d > 8623u, true, func_1(Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(24593u, 21u)], true, false, global1[_wgslsmith_index_u32(76816u, 21u)]), vec2<u32>(u_input.d, 38747u), vec4<i32>(u_input.c, global0.x, 47307i, u_input.b)))), abs(vec2<u32>(u_input.a, 74004u) | vec2<u32>(1u, 63144u)), abs(-vec4<i32>(u_input.c, -2147483647i, u_input.b, global0.x))), ~global0.x));
    let var_0 = vec4<u32>(~(~(~0u)), u_input.d, 4294967295u, min(firstLeadingBit(_wgslsmith_clamp_u32(u_input.d, 25807u, u_input.a)) << (~0u % 32u), _wgslsmith_dot_vec4_u32(select(~vec4<u32>(u_input.a, u_input.a, 0u, u_input.d), ~vec4<u32>(u_input.d, 2774u, u_input.d, 39994u), vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.d, 21u)], global1[_wgslsmith_index_u32(0u, 21u)])), min(~vec4<u32>(10793u, 4294967295u, u_input.a, u_input.d), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a)))));
    let var_1 = Struct_2(Struct_1(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(var_0.x, 21u)], false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(var_0.x, 21u)], global1[_wgslsmith_index_u32(u_input.d, 21u)])), !vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.d, 21u)], global1[_wgslsmith_index_u32(u_input.a, 21u)], false), all(vec4<bool>(true, true, global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(55791u, 21u)]))), vec4<bool>(true, global1[_wgslsmith_index_u32(~40642u, 21u)], any(vec2<bool>(global1[_wgslsmith_index_u32(50002u, 21u)], false)), any(vec4<bool>(true, global1[_wgslsmith_index_u32(2805u, 21u)], global1[_wgslsmith_index_u32(1u, 21u)], true)))), ~var_0.wx, vec4<i32>(-1i) * -select(vec4<i32>(-1i, 44200i, 22309i, global0.x), vec4<i32>(2333i, u_input.b, 0i, u_input.c), true)), 7201i);
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(140f, _wgslsmith_f_op_f32(ceil(928f)), _wgslsmith_div_f32(385f, -204f)) + vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-710f, -1706f, 776f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(629f, -1603f, 1105f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1336f, 154f, -2007f))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-769f, 1271f, -1465f), vec3<f32>(-673f, 1000f, 307f), vec3<bool>(var_1.a.a.x, global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(4830u, 21u)]))))), func_1(var_1.a)));
    let var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec4<u32>(var_1.a.b.x | ~1u, 43855u, ~reverseBits(u_input.a), _wgslsmith_add_u32(var_3.a.b.x, var_0.x) << (var_0.x % 32u))), vec2<u32>(18204u, ~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(var_0.xw, vec2<u32>(var_0.x, 17321u)), ~7169u)));
}

