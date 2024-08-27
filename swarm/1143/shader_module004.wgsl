struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec4<f32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1763u, 18034u, 4294967295u);

var<private> global1: array<f32, 17> = array<f32, 17>(607f, 1459f, 1044f, 2304f, 1347f, -1372f, -865f, -228f, -867f, 1029f, -896f, -540f, -1669f, -722f, 1365f, 724f, 2653f);

var<private> global2: u32 = 0u;

var<private> global3: f32 = 1357f;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: vec4<u32>) -> i32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1714f), arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-3020f, -343f))), arg_0.a.c.x);
    global1 = array<f32, 17>();
    let var_1 = arg_2.x | 1u;
    var var_2 = Struct_4(arg_0.a, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(arg_0.b * vec4<f32>(_wgslsmith_f_op_f32(floor(-166f)), var_0.x, _wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(arg_0.b.x - 1134f))))), max(-vec3<i32>(max(arg_0.a.a.x, arg_0.c.x), 0i, -2147483647i), arg_0.c));
    var var_3 = arg_0.c.x;
    return -_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(select(min(var_2.c, arg_0.c), var_2.a.a.zwx, 222f == arg_0.a.c.x), arg_0.a.a.yxx, vec3<i32>(~var_2.c.x, arg_0.c.x | 18592i, -1i)), var_2.a.a.zxw);
}

fn func_2(arg_0: vec3<bool>) -> Struct_3 {
    let var_0 = ~vec2<u32>(44310u, 77668u);
    var var_1 = countOneBits(34868i) | max(-reverseBits(func_3(Struct_4(Struct_1(vec4<i32>(2147483647i, -11746i, 1i, -15778i), 5066u, vec4<f32>(1487f, global1[_wgslsmith_index_u32(38675u, 17u)], 230f, global1[_wgslsmith_index_u32(22194u, 17u)]), vec2<bool>(arg_0.x, true)), vec4<f32>(126f, global1[_wgslsmith_index_u32(u_input.b.x, 17u)], 484f, -782f), vec3<i32>(-21907i, 15196i, 0i)), u_input.b, u_input.b)), -(~(41422i >> (global0.x % 32u))));
    var var_2 = vec4<bool>(all(select(vec2<bool>(true, arg_0.x), arg_0.xz, false)), all(select(!(!arg_0), vec3<bool>(8437u >= var_0.x, var_0.x == 1u, true), !arg_0)), 10755u <= countOneBits(~global0.x), _wgslsmith_dot_vec2_u32(u_input.b.xz, u_input.b.xx) <= var_0.x);
    var_2 = !select(select(!vec4<bool>(arg_0.x, var_2.x, true, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, !arg_0.x), true), select(vec4<bool>(!arg_0.x, true, -794f > global1[_wgslsmith_index_u32(var_0.x, 17u)], !arg_0.x), !select(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(true, var_2.x, var_2.x, false), false), vec4<bool>(var_2.x || var_2.x, true, false, true)), true);
    return Struct_3(select(vec2<i32>(1i, 1i), _wgslsmith_mult_vec2_i32(abs(vec2<i32>(-2147483647i, 2147483647i)), vec2<i32>(1i, 1i)), var_2.x && true) >> (vec2<u32>(62u, var_0.x) % vec2<u32>(32u)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: bool, arg_3: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_mult_u32(firstLeadingBit(firstTrailingBit(1u)), ~(u_input.a | 51192u));
    global2 = u_input.a;
    var var_1 = 476f;
    var var_2 = Struct_2(u_input.a, arg_3);
    global1 = array<f32, 17>();
    return arg_1;
}

fn func_5(arg_0: Struct_3, arg_1: i32) -> Struct_1 {
    global2 = 1u;
    let var_0 = func_4(arg_0.a, Struct_3(vec2<i32>(1i, max(_wgslsmith_dot_vec4_i32(vec4<i32>(5466i, arg_1, arg_0.a.x, arg_0.a.x), vec4<i32>(arg_0.a.x, -1i, -38148i, 7645i)), _wgslsmith_sub_i32(7056i, -6249i)))), all(vec2<bool>(true, true)), Struct_1(-min(vec4<i32>(1i, 1i, 2147483647i, 35932i), ~vec4<i32>(-1i, arg_1, arg_0.a.x, 0i)), 0u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 17u)], global1[_wgslsmith_index_u32(global0.x, 17u)], 686f, -637f), vec4<f32>(global1[_wgslsmith_index_u32(20144u, 17u)], global1[_wgslsmith_index_u32(global0.x, 17u)], global1[_wgslsmith_index_u32(u_input.a, 17u)], -615f)))), select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(false, false), true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))), select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true), true))));
    global1 = array<f32, 17>();
    let var_1 = Struct_2(_wgslsmith_dot_vec3_u32(max(~u_input.b.zxx | (vec3<u32>(u_input.b.x, 4294967295u, 15976u) >> (vec3<u32>(u_input.a, 24369u, u_input.b.x) % vec3<u32>(32u))), max(vec3<u32>(u_input.a, global0.x, 36012u) << (u_input.b.xww % vec3<u32>(32u)), ~u_input.b.yyy)), ~vec3<u32>(u_input.b.x, u_input.b.x, 23695u) & _wgslsmith_add_vec3_u32(abs(u_input.b.yxz), _wgslsmith_clamp_vec3_u32(u_input.b.zzx, vec3<u32>(4294967295u, 46630u, 58283u), u_input.b.zzz))), Struct_1(countOneBits(vec4<i32>(1i, 54552i, 12984i, var_0.a.x) & vec4<i32>(1i, 53834i, -69209i, -50976i)) ^ ((vec4<i32>(-1i, arg_1, -8106i, 30632i) << (u_input.b % vec4<u32>(32u))) << (vec4<u32>(u_input.b.x, 1u, global0.x, u_input.a) % vec4<u32>(32u))), 22148u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 17u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(47912u, 17u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 17u)] + global1[_wgslsmith_index_u32(71820u, 17u)]), global1[_wgslsmith_index_u32(abs(u_input.b.x), 17u)])), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)))));
    var var_2 = Struct_3(var_0.a);
    return Struct_1(_wgslsmith_clamp_vec4_i32(var_1.b.a, select(vec4<i32>(-28702i, -2147483647i, -76208i, var_0.a.x), vec4<i32>(var_2.a.x, arg_0.a.x, 47116i, var_1.b.a.x), !var_1.b.d.x), max(~var_1.b.a, abs(var_1.b.a))) ^ -var_1.b.a, var_1.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(185f, 1f, var_1.b.c.x, _wgslsmith_f_op_f32(-var_1.b.c.x))), vec2<bool>(true, true));
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_3 {
    let var_0 = firstLeadingBit(abs(_wgslsmith_clamp_vec4_u32(~vec4<u32>(29217u, u_input.a, 0u, global0.x), vec4<u32>(1u, _wgslsmith_dot_vec2_u32(global0.yy, u_input.b.xz), 43215u, ~arg_1.b), ~_wgslsmith_div_vec4_u32(u_input.b, u_input.b))));
    global0 = var_0.zwx;
    global1 = array<f32, 17>();
    var var_1 = countOneBits(vec2<i32>(min(arg_1.a.x, ~(-arg_1.a.x)), ~func_2(arg_2.xwy).a.x));
    var var_2 = Struct_4(Struct_1(vec4<i32>(_wgslsmith_sub_i32(var_1.x, arg_1.a.x >> (u_input.a % 32u)), abs(arg_1.a.x), -_wgslsmith_add_i32(arg_1.a.x, 0i), 2147483647i), 1u ^ (0u | (0u << (arg_0 % 32u))), arg_1.c, vec2<bool>(select(false && arg_1.d.x, true, select(false, true, arg_1.d.x)), true)), arg_1.c, -select(~vec3<i32>(arg_1.a.x, var_1.x, 0i), -firstLeadingBit(arg_1.a.xxy), true && all(vec4<bool>(true, arg_2.x, false, false))));
    return func_4(var_2.c.yz, func_4(select(_wgslsmith_add_vec2_i32(arg_1.a.xy, vec2<i32>(arg_1.a.x, var_1.x)), vec2<i32>(arg_1.a.x, arg_1.a.x), !select(var_2.a.d.x, arg_2.x, true)), func_4(func_5(Struct_3(vec2<i32>(-19757i, -36706i)), arg_1.a.x ^ 0i).a.yy, Struct_3(min(vec2<i32>(0i, var_1.x), vec2<i32>(var_1.x, var_1.x))), true, func_5(Struct_3(var_2.a.a.zy), func_4(vec2<i32>(-27378i, var_1.x), Struct_3(vec2<i32>(var_2.a.a.x, var_2.c.x)), true, arg_1).a.x)), true, func_5(Struct_3(vec2<i32>(var_1.x, -61834i)), _wgslsmith_mult_i32(-2147483647i, 3524i << (var_2.a.b % 32u)))), true, func_5(func_4(~(-var_2.c.yx), func_4(-vec2<i32>(-41902i, -2147483647i), Struct_3(var_2.c.xy), arg_2.x & true, Struct_1(vec4<i32>(var_1.x, var_1.x, 11972i, -10791i), var_2.a.b, vec4<f32>(var_2.a.c.x, 618f, -1000f, 338f), arg_1.d)), all(!vec4<bool>(arg_2.x, false, false, false)), arg_1), -35731i));
}

fn func_1() -> StorageBuffer {
    var var_0 = func_6(u_input.a, func_5(func_4(vec2<i32>(_wgslsmith_add_i32(-1i, 12579i), -1i), func_2(vec3<bool>(true, true, true)), false, Struct_1(countOneBits(vec4<i32>(-76077i, 0i, -18897i, 46658i)), 1u, vec4<f32>(2018f, global1[_wgslsmith_index_u32(u_input.b.x, 17u)], global1[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(13019u, 17u)]), vec2<bool>(true, true))), ~reverseBits(~26739i)), select(!vec4<bool>(true, true, false, all(vec4<bool>(true, true, true, false))), vec4<bool>(~14225u <= min(u_input.b.x, 1u), true, all(vec2<bool>(true, true)), true), true));
    let var_1 = Struct_4(func_5(func_6(global0.x, func_5(func_4(var_0.a, Struct_3(var_0.a), true, Struct_1(vec4<i32>(-2147483647i, 0i, -2147483647i, var_0.a.x), global0.x, vec4<f32>(331f, -1803f, global1[_wgslsmith_index_u32(u_input.a, 17u)], -1000f), vec2<bool>(false, false))), ~var_0.a.x), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false))), -515i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-786f, global1[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(global0.x, 17u)], global1[_wgslsmith_index_u32(136428u, 17u)]) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1[_wgslsmith_index_u32(1u, 17u)], 386f, global1[_wgslsmith_index_u32(global0.x, 17u)], global1[_wgslsmith_index_u32(global0.x, 17u)])))))), vec3<i32>((-41564i >> (_wgslsmith_add_u32(72433u, global0.x) % 32u)) & func_6(45967u, func_5(Struct_3(vec2<i32>(3381i, var_0.a.x)), 31742i), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true))).a.x, ~((-14959i | var_0.a.x) & var_0.a.x), 623i));
    let var_2 = var_1.a.a;
    var var_3 = ~2147483647i;
    var_3 = _wgslsmith_mult_i32(24689i, var_2.x);
    return StorageBuffer(~_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(var_1.a.a, var_1.a.a), _wgslsmith_div_vec4_i32(var_2, vec4<i32>(-2147483647i, var_1.a.a.x, 0i, -2147483647i)), var_2), firstTrailingBit(var_2 << (u_input.b % vec4<u32>(32u)))), u_input.b.xwy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global2 = u_input.a;
    global3 = global1[_wgslsmith_index_u32(0u, 17u)];
    global0 = u_input.b.zxw;
    var var_1 = !(!vec4<bool>(true, true, var_0 | var_0, !var_0));
    let x = u_input.a;
    s_output = func_1();
}

