struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec2<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<u32, 31> = array<u32, 31>(0u, 0u, 13328u, 61943u, 8138u, 4294967295u, 4294967295u, 4294967295u, 70121u, 20045u, 0u, 0u, 0u, 1u, 4294967295u, 0u, 4294967295u, 22614u, 0u, 46573u, 0u, 94842u, 2706u, 0u, 2424u, 1u, 4294967295u, 1u, 1u, 4294967295u, 0u);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: Struct_3) -> bool {
    global1 = array<u32, 31>();
    var var_0 = _wgslsmith_div_vec2_f32(arg_0.b.zy, _wgslsmith_f_op_vec2_f32(-arg_0.b.zy));
    let var_1 = ~vec3<i32>(_wgslsmith_div_i32(firstTrailingBit(-arg_2.a.x), u_input.a), min(~(~arg_2.a.x), -_wgslsmith_mod_i32(u_input.a, arg_2.a.x)), 1i);
    global1 = array<u32, 31>();
    return true;
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: f32) -> vec3<i32> {
    var var_0 = Struct_2(Struct_1(vec3<bool>(false, true, !(-2147483647i > u_input.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)))), u_input.b.zx, 1f), Struct_1(vec3<bool>(~(-1i) <= (arg_0.x ^ arg_0.x), true, !func_3(Struct_4(u_input.b.zz, vec3<f32>(-1163f, arg_2, -1000f), Struct_1(vec3<bool>(true, true, true), arg_2, u_input.b.zy, arg_2)), global1[_wgslsmith_index_u32(54220u, 31u)], Struct_3(vec3<i32>(2147483647i, -1i, -1i), Struct_2(Struct_1(vec3<bool>(false, false, true), arg_2, u_input.b.zz, -1679f), Struct_1(vec3<bool>(true, false, false), 1374f, u_input.b.yy, -678f), Struct_1(vec3<bool>(false, true, true), -802f, vec2<u32>(4294967295u, 4294967295u), arg_2), arg_0, Struct_1(vec3<bool>(false, false, true), -625f, vec2<u32>(19008u, global1[_wgslsmith_index_u32(39943u, 31u)]), arg_2)), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec2<u32>(1157u, global1[_wgslsmith_index_u32(61226u, 31u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1223f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))), u_input.b.yx, arg_2), Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, arg_2)) + 1000f), ~(~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 31u)], 31u)], 1u)), _wgslsmith_f_op_f32(min(arg_2, _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(-arg_2))))), reverseBits(_wgslsmith_mod_vec2_i32(-arg_0, abs(vec2<i32>(u_input.a, -34471i)))), Struct_1(select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), vec3<bool>(false, true, false), func_3(Struct_4(vec2<u32>(2376u, u_input.b.x), vec3<f32>(1000f, 937f, arg_2), Struct_1(vec3<bool>(true, true, true), arg_2, vec2<u32>(67135u, 9731u), -545f)), 57488u, Struct_3(vec3<i32>(13525i, 0i, arg_1), Struct_2(Struct_1(vec3<bool>(false, false, false), arg_2, vec2<u32>(4294967295u, 1733u), arg_2), Struct_1(vec3<bool>(true, true, false), arg_2, vec2<u32>(global1[_wgslsmith_index_u32(171u, 31u)], u_input.b.x), arg_2), Struct_1(vec3<bool>(true, false, false), 1764f, vec2<u32>(1u, 0u), arg_2), vec2<i32>(-50078i, arg_0.x), Struct_1(vec3<bool>(false, false, true), -874f, u_input.b.zz, arg_2)), u_input.b, vec2<u32>(1u, global1[_wgslsmith_index_u32(6135u, 31u)])))), vec3<bool>(true, true, true), !any(vec3<bool>(false, false, true))), arg_2, ~_wgslsmith_mult_vec2_u32(u_input.b.yy, vec2<u32>(60316u, u_input.b.x)), arg_2));
    let var_1 = var_0.e;
    let var_2 = -661f;
    global1 = array<u32, 31>();
    var_0 = Struct_2(Struct_1(!(!var_0.e.a), _wgslsmith_f_op_f32(max(var_2, var_1.d)), ~select(vec2<u32>(1u, var_0.b.c.x) << (vec2<u32>(global1[_wgslsmith_index_u32(0u, 31u)], 24779u) % vec2<u32>(32u)), vec2<u32>(u_input.b.x, 1u), !var_0.e.a.yx), -1130f), var_0.c, Struct_1(!var_0.c.a, 1f, vec2<u32>(max(global1[_wgslsmith_index_u32(~66797u, 31u)], _wgslsmith_div_u32(var_0.e.c.x, var_1.c.x)), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(26547u, var_1.c.x), var_1.c), vec2<u32>(4294967295u, var_0.c.c.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2)))), ~_wgslsmith_mult_vec2_i32(firstTrailingBit(var_0.d), var_0.d << (vec2<u32>(var_1.c.x, 4294967295u) % vec2<u32>(32u))) >> (u_input.b.zy % vec2<u32>(32u)), var_0.e);
    return firstTrailingBit(vec3<i32>(_wgslsmith_div_i32(1i, arg_1), var_0.d.x, -var_0.d.x));
}

fn func_1(arg_0: bool) -> Struct_4 {
    let var_0 = Struct_3(firstLeadingBit((func_2(vec2<i32>(u_input.a, u_input.a), u_input.a, 298f) | ~vec3<i32>(u_input.a, -40967i, -6782i)) | -vec3<i32>(u_input.a, u_input.a, -2147483647i)), Struct_2(Struct_1(vec3<bool>(all(vec2<bool>(true, arg_0)), arg_0 & arg_0, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1238f)), _wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)])), vec2<u32>(1u, global1[_wgslsmith_index_u32(u_input.b.x, 31u)])), _wgslsmith_f_op_f32(f32(-1f) * -442f)), Struct_1(vec3<bool>(arg_0, false, any(vec3<bool>(false, arg_0, arg_0))), _wgslsmith_f_op_f32(1330f * _wgslsmith_f_op_f32(select(-762f, -355f, true))), u_input.b.xx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1397f * 860f) + _wgslsmith_f_op_f32(f32(-1f) * -3032f))), Struct_1(select(vec3<bool>(true, false, arg_0), select(vec3<bool>(false, arg_0, false), vec3<bool>(false, true, arg_0), vec3<bool>(true, false, false)), arg_0), -359f, ~vec2<u32>(8826u, global1[_wgslsmith_index_u32(30687u, 31u)]), 2550f), _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -837i), ~vec2<i32>(u_input.a, u_input.a), min(vec2<i32>(-54784i, 2147483647i), vec2<i32>(u_input.a, 191i))) << (countOneBits(u_input.b.yz) % vec2<u32>(32u)), Struct_1(select(!vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, true, true), any(vec3<bool>(arg_0, arg_0, arg_0))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(2019f)))), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, 51192u), reverseBits(u_input.b.yx)), -167f)), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(min(u_input.b.x, u_input.b.x), 31u)], 31u)], 31u)], select(u_input.b.x << (0u % 32u), _wgslsmith_div_u32(abs(u_input.b.x), 14126u), !(arg_0 & arg_0)), ~(~_wgslsmith_mult_u32(u_input.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 31u)], 31u)], 31u)], 31u)]))), ~u_input.b.zz);
    global0 = 15967i;
    var var_1 = ~vec4<i32>(~(~var_0.a.x), ~_wgslsmith_dot_vec2_i32(var_0.a.yz, var_0.a.zz), _wgslsmith_add_i32(i32(-1i) * -21297i, _wgslsmith_dot_vec2_i32(var_0.a.yz, vec2<i32>(85887i, var_0.a.x))), u_input.a) | _wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.a, -1i, -2147483647i, -31143i) & -(vec4<i32>(u_input.a, var_0.a.x, var_0.b.d.x, var_0.a.x) | vec4<i32>(12960i, 5345i, u_input.a, 2147483647i)), select(vec4<i32>(-1i) * -vec4<i32>(0i, -2147483647i, u_input.a, 2147483647i), vec4<i32>(13333i, 1873i, u_input.a >> (global1[_wgslsmith_index_u32(1u, 31u)] % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a, u_input.a), var_0.a)), select(vec4<bool>(false, var_0.b.a.a.x, true, arg_0), vec4<bool>(arg_0, true, arg_0, arg_0), select(vec4<bool>(arg_0, var_0.b.a.a.x, var_0.b.a.a.x, false), vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(true, var_0.b.c.a.x, var_0.b.b.a.x, var_0.b.c.a.x)))));
    global1 = array<u32, 31>();
    let var_2 = Struct_2(Struct_1(!vec3<bool>(u_input.b.x >= global1[_wgslsmith_index_u32(1u, 31u)], any(var_0.b.e.a.xx), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.b.b) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.b.a.d, 649f)))), var_0.c.yx, 1874f), var_0.b.b, Struct_1(var_0.b.c.a, -1144f, min(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.b.yz, vec2<u32>(var_0.b.a.c.x, 4294967295u), u_input.b.zx), ~vec2<u32>(var_0.d.x, global1[_wgslsmith_index_u32(22339u, 31u)])), u_input.b.zy), _wgslsmith_div_f32(435f, var_0.b.a.d)), ~vec2<i32>(select(1i, ~2147483647i, !var_0.b.e.a.x), -select(u_input.a, var_1.x, false)), Struct_1(var_0.b.e.a, 118f, firstLeadingBit(vec2<u32>(27017u, abs(global1[_wgslsmith_index_u32(1u, 31u)]))), _wgslsmith_f_op_f32(f32(-1f) * -878f)));
    return Struct_4(~(select(var_0.c.yz, vec2<u32>(5054u, var_0.c.x), select(var_2.e.a.yy, var_2.a.a.xz, true)) | vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(var_0.d.x, 31u)], 4294967295u, 4294967295u), vec4<u32>(36718u, 45159u, 60533u, var_2.a.c.x)), ~4294967295u)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1346f), var_0.b.c.b, 153f))), Struct_1(select(vec3<bool>(arg_0, true, func_3(Struct_4(vec2<u32>(u_input.b.x, 4294967295u), vec3<f32>(1689f, -1608f, -1346f), Struct_1(var_2.a.a, 289f, vec2<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 31u)], 1u), 121f)), 4294967295u, var_0)), select(var_0.b.e.a, vec3<bool>(arg_0, true, true), true), !select(vec3<bool>(true, var_0.b.b.a.x, false), var_2.e.a, vec3<bool>(false, var_2.a.a.x, var_0.b.c.a.x))), -778f, vec2<u32>(18452u, ~79939u), _wgslsmith_f_op_f32(trunc(-641f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(any(select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), select(vec2<bool>(false, false), vec2<bool>(true, true), false), true)) != true);
    var var_1 = func_1(true);
    var var_2 = vec4<bool>(!var_1.c.a.x, !var_1.c.a.x & true, func_1((1u << (u_input.b.x % 32u)) != ~u_input.b.x).c.a.x, func_1(!(!var_1.c.a.x)).c.a.x);
    var var_3 = -1606f;
    let var_4 = Struct_4(_wgslsmith_mod_vec2_u32(u_input.b.xx, vec2<u32>(var_1.a.x, 35062u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.b - var_1.c.d) - 530f), -1546f, var_1.b.x)), var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-985f, 739f)), _wgslsmith_f_op_f32(f32(-1f) * -813f), -257f), _wgslsmith_f_op_f32(-var_1.b.x), vec3<u32>(~(~abs(0u)), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstLeadingBit(1u), u_input.b.x, ~(var_4.c.c.x ^ var_4.a.x)), 31u)], ~17752u), var_1.c.b);
}

