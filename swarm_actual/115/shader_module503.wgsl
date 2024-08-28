struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-19853i, 2147483647i, 1000f, -1i);

var<private> global1: array<f32, 14> = array<f32, 14>(1000f, -530f, 244f, 1958f, 1335f, -1000f, 1466f, -1171f, -434f, 618f, 300f, -1448f, -968f, 355f);

var<private> global2: array<vec2<f32>, 18>;

var<private> global3: array<vec3<bool>, 8>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: Struct_3, arg_3: vec2<i32>) -> Struct_3 {
    global2 = array<vec2<f32>, 18>();
    global3 = array<vec3<bool>, 8>();
    global1 = array<f32, 14>();
    let var_0 = arg_2.a.x;
    var var_1 = arg_2.e;
    return Struct_3(arg_2.a, arg_2.b, arg_2.c, Struct_2(var_1.a, vec2<bool>(!any(vec2<bool>(arg_0, arg_2.e.b.x)), arg_2.d.a.a > (global0.d ^ 20394i))), Struct_2(var_1.a, !vec2<bool>(arg_0, var_1.b.x)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: i32, arg_3: vec3<bool>) -> f32 {
    let var_0 = 1u;
    var var_1 = all(!arg_0);
    var_1 = !arg_0.x;
    var var_2 = ~1u;
    let var_3 = func_2(!arg_3.x, _wgslsmith_f_op_f32(ceil(arg_1.a.c)), func_2(arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2059f)), func_2(true, global0.c, func_2(!arg_1.b.x, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 14u)]), Struct_3(vec2<u32>(var_0, 79640u), arg_1.a, vec4<bool>(false, arg_3.x, arg_3.x, arg_3.x), arg_1, arg_1), firstTrailingBit(vec2<i32>(1i, -25250i))), countOneBits(-vec2<i32>(2147483647i, global0.b))), firstLeadingBit(countOneBits(vec2<i32>(1i, -2147483647i)) << (_wgslsmith_div_vec2_u32(vec2<u32>(46212u, var_0), vec2<u32>(23535u, 43092u)) % vec2<u32>(32u)))), abs(reverseBits(reverseBits(vec2<i32>(35935i, 11093i))) << (((vec2<u32>(u_input.a, 47070u) >> (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u))) & (vec2<u32>(1u, u_input.a) >> (vec2<u32>(27771u, u_input.a) % vec2<u32>(32u)))) % vec2<u32>(32u))));
    return var_3.b.c;
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: vec3<f32>) -> vec4<bool> {
    global3 = array<vec3<bool>, 8>();
    var var_0 = func_2(true, global0.c, arg_0, reverseBits(select(-vec2<i32>(arg_0.e.a.b, global0.a), ~select(vec2<i32>(0i, -2147483647i), vec2<i32>(global0.d, arg_0.d.a.d), arg_1.x), _wgslsmith_f_op_f32(round(-1000f)) >= -890f)));
    var var_1 = ~_wgslsmith_div_u32(1u, ~u_input.a);
    var var_2 = vec4<u32>(18444u, abs(~(~1u)), arg_0.a.x, 19627u);
    var var_3 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1841f)) - 906f) != 896f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(arg_1, var_0.e, var_0.b.b, var_0.c.wyw)), -1529f)) + _wgslsmith_f_op_f32(func_3(func_2(false, 1623f, Struct_3(arg_0.a, Struct_1(-1i, -17218i, arg_2.x, -94i), arg_1, Struct_2(Struct_1(1i, -2147483647i, -486f, -13597i), arg_1.zy), var_0.d), vec2<i32>(2147483647i, global0.b)).c, Struct_2(var_0.b, vec2<bool>(false, false)), -2147483647i, arg_1.xyy))), _wgslsmith_f_op_f32(step(574f, -516f))), Struct_3(vec2<u32>(max(var_2.x << (0u % 32u), u_input.a << (39666u % 32u)), 14906u), func_2(arg_0.d.b.x, _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(1u, 14u)], 199f, arg_0.d.b.x && arg_0.e.b.x)), Struct_3(arg_0.a << (vec2<u32>(var_0.a.x, 10344u) % vec2<u32>(32u)), Struct_1(global0.a, 2221i, arg_0.b.c, -2147483647i), select(arg_0.c, vec4<bool>(arg_1.x, var_0.e.b.x, false, arg_0.d.b.x), arg_0.d.b.x), var_0.d, arg_0.e), _wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(1i, arg_0.e.a.a)), ~vec2<i32>(var_0.d.a.b, var_0.e.a.b))).e.a, arg_1, func_2(all(select(var_0.c.ywz, vec3<bool>(false, true, var_0.e.b.x), arg_1.x)), _wgslsmith_f_op_f32(-global0.c), arg_0, vec2<i32>(0i, -13393i) | ~vec2<i32>(global0.d, 2147483647i)).e, func_2(max(arg_0.a.x, 18264u) == 4294967295u, var_0.b.c, func_2(true, -324f, func_2(arg_1.x, global0.c, Struct_3(arg_0.a, arg_0.e.a, vec4<bool>(arg_0.d.b.x, true, true, var_0.e.b.x), arg_0.d, var_0.d), vec2<i32>(1i, arg_0.b.d)), -vec2<i32>(global0.a, 16969i)), vec2<i32>(-52453i, 0i) >> (var_2.yx % vec2<u32>(32u))).e), vec2<i32>(arg_0.e.a.a, ~arg_0.e.a.a));
    return arg_1;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> u32 {
    global3 = array<vec3<bool>, 8>();
    let var_0 = arg_1;
    var var_1 = Struct_3(_wgslsmith_div_vec2_u32((~vec2<u32>(u_input.a, u_input.a) | vec2<u32>(398u, u_input.a)) | vec2<u32>(u_input.a, 4294967295u), ~vec2<u32>(1u, ~38151u)), Struct_1(11345i, global0.b, arg_0, 0i), !func_4(func_2(true, -230f, Struct_3(vec2<u32>(u_input.a, 4294967295u), Struct_1(1i, 2147483647i, arg_1.c, 21118i), vec4<bool>(false, false, true, true), Struct_2(var_0, vec2<bool>(true, true)), Struct_2(Struct_1(var_0.b, 56886i, arg_1.c, 14970i), vec2<bool>(false, false))), -vec2<i32>(var_0.d, global0.a)), vec4<bool>(any(vec4<bool>(false, true, true, false)), true, any(vec4<bool>(false, false, false, false)), true), vec3<f32>(1662f, _wgslsmith_f_op_f32(func_3(vec4<bool>(false, false, true, false), Struct_2(var_0, vec2<bool>(true, true)), global0.d, vec3<bool>(true, true, false))), -642f)), func_2(func_2(!(-1000f > arg_0), arg_1.c, func_2(all(vec3<bool>(true, true, false)), _wgslsmith_f_op_f32(-arg_1.c), func_2(false, 2636f, Struct_3(vec2<u32>(u_input.a, u_input.a), Struct_1(global0.d, var_0.a, var_0.c, global0.a), vec4<bool>(false, true, true, true), Struct_2(arg_1, vec2<bool>(true, false)), Struct_2(Struct_1(26165i, global0.d, 563f, -28840i), vec2<bool>(true, true))), vec2<i32>(arg_1.b, 11481i)), vec2<i32>(0i, var_0.d) << (vec2<u32>(u_input.a, 7776u) % vec2<u32>(32u))), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(28790i, -28550i, arg_1.b, arg_1.d), vec4<i32>(var_0.a, -18030i, var_0.a, arg_1.b)), global0.a)).e.b.x, -202f, func_2(true, -368f, Struct_3(~vec2<u32>(u_input.a, u_input.a), var_0, func_2(false, 213f, Struct_3(vec2<u32>(u_input.a, 1u), Struct_1(var_0.a, -28064i, 1056f, -78i), vec4<bool>(false, true, true, false), Struct_2(var_0, vec2<bool>(false, false)), Struct_2(var_0, vec2<bool>(true, false))), vec2<i32>(26225i, global0.b)).c, func_2(false, global0.c, Struct_3(vec2<u32>(u_input.a, 0u), arg_1, vec4<bool>(true, false, true, false), Struct_2(arg_1, vec2<bool>(false, true)), Struct_2(Struct_1(arg_1.b, var_0.a, global1[_wgslsmith_index_u32(4294967295u, 14u)], global0.d), vec2<bool>(true, false))), vec2<i32>(arg_1.b, var_0.a)).d, func_2(true, global0.c, Struct_3(vec2<u32>(u_input.a, 1u), arg_1, vec4<bool>(true, true, true, true), Struct_2(var_0, vec2<bool>(true, false)), Struct_2(Struct_1(-2147483647i, -1i, var_0.c, var_0.a), vec2<bool>(false, false))), vec2<i32>(0i, global0.a)).e), -firstLeadingBit(vec2<i32>(global0.b, var_0.b))), _wgslsmith_mod_vec2_i32(vec2<i32>(firstTrailingBit(arg_1.a), abs(arg_1.d)), vec2<i32>(1i, _wgslsmith_div_i32(global0.a, 55156i)))).d, func_2(true || ((var_0.d >> (0u % 32u)) != _wgslsmith_sub_i32(var_0.b, global0.b)), -415f, func_2(true, _wgslsmith_f_op_f32(sign(arg_1.c)), Struct_3(_wgslsmith_mod_vec2_u32(vec2<u32>(98442u, u_input.a), vec2<u32>(u_input.a, 36574u)), Struct_1(var_0.a, global0.a, -1296f, 1975i), func_4(Struct_3(vec2<u32>(4294967295u, 0u), Struct_1(arg_1.a, 30879i, 569f, var_0.a), vec4<bool>(true, false, true, true), Struct_2(Struct_1(var_0.a, -36669i, -465f, -2147483647i), vec2<bool>(true, false)), Struct_2(Struct_1(var_0.b, 10700i, var_0.c, 10055i), vec2<bool>(true, true))), vec4<bool>(true, false, true, true), vec3<f32>(global1[_wgslsmith_index_u32(1u, 14u)], var_0.c, global0.c)), Struct_2(Struct_1(arg_1.a, -66822i, 810f, 63307i), vec2<bool>(true, true)), Struct_2(Struct_1(-1i, 31209i, 1277f, var_0.d), vec2<bool>(false, true))), vec2<i32>(1i >> (u_input.a % 32u), arg_1.a)), -_wgslsmith_clamp_vec2_i32(vec2<i32>(-34128i, var_0.a), -vec2<i32>(arg_1.d, var_0.a), reverseBits(vec2<i32>(-84538i, 49539i)))).e);
    let var_2 = true;
    var var_3 = vec2<u32>(~29398u, var_1.a.x);
    return 0u;
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    global2 = array<vec2<f32>, 18>();
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, global1[_wgslsmith_index_u32(arg_0.a.x, 14u)]), vec2<f32>(global0.c, -442f), vec2<bool>(true, arg_0.e.b.x)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.e.a.c, global0.c)))), vec2<f32>(_wgslsmith_f_op_f32(arg_0.d.a.c * 524f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.d.a.c, arg_0.d.a.c))), (arg_0.e.a.b | global0.b) == func_2(true, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-283f, arg_0.e.a.c))), Struct_3(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 23664u), vec2<u32>(25204u, 58476u)), func_2(false, arg_0.b.c, arg_0, vec2<i32>(2147483647i, global0.b)).b, select(vec4<bool>(false, arg_0.c.x, arg_0.e.b.x, false), vec4<bool>(false, arg_0.e.b.x, false, arg_0.e.b.x), arg_0.d.b.x), Struct_2(arg_0.b, vec2<bool>(true, arg_0.e.b.x)), func_2(arg_0.d.b.x, -1579f, arg_0, vec2<i32>(-1i, global0.d)).d), abs(-vec2<i32>(global0.a, 13139i))).d.a.d));
    global3 = array<vec3<bool>, 8>();
    var var_1 = arg_0.d.a;
    let var_2 = Struct_1(1i, var_1.b ^ global0.b, arg_0.e.a.c, min(var_1.a & var_1.b, var_1.b));
    return func_2(true, _wgslsmith_f_op_f32(floor(var_1.c)), Struct_3(~(abs(arg_0.a) | (arg_0.a & arg_0.a)), func_2(arg_0.c.x, global0.c, func_2(arg_0.e.b.x & true, var_0.x, func_2(false, var_0.x, arg_0, vec2<i32>(-12414i, 27707i)), ~vec2<i32>(-1i, arg_0.e.a.b)), firstLeadingBit(vec2<i32>(-2147483647i, -2147483647i))).e.a, arg_0.c, Struct_2(arg_0.b, arg_0.e.b), arg_0.e), vec2<i32>(-abs(var_1.b), ~var_1.d)).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(_wgslsmith_div_i32(global0.d, 0i) > global0.a, !(!all(vec4<bool>(true, true, true, true))), true);
    let var_1 = 0i & (((global0.b >> (u_input.a % 32u)) << (~(~36542u) % 32u)) & (abs(-49529i) >> (firstTrailingBit(1u) % 32u)));
    let var_2 = vec2<bool>(var_0.x, var_0.x & var_0.x);
    global0 = func_5(Struct_3(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(func_1(global1[_wgslsmith_index_u32(1u, 14u)], Struct_1(var_1, global0.b, 539f, var_1)), max(u_input.a, u_input.a))), func_2(select(u_input.a != 17206u, var_2.x, true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1677f))), Struct_3(select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(13130u, 4294967295u), var_2), Struct_1(global0.b, global0.a, global0.c, 0i), !vec4<bool>(var_2.x, var_0.x, var_0.x, false), func_2(var_2.x, global0.c, Struct_3(vec2<u32>(4294967295u, u_input.a), Struct_1(var_1, -10803i, 198f, var_1), vec4<bool>(true, false, false, true), Struct_2(Struct_1(-57414i, 0i, global0.c, global0.a), var_2), Struct_2(Struct_1(global0.d, global0.b, 448f, 1i), vec2<bool>(var_2.x, var_2.x))), vec2<i32>(-28708i, var_1)).e, Struct_2(Struct_1(var_1, -46940i, global1[_wgslsmith_index_u32(0u, 14u)], 2147483647i), var_2)), vec2<i32>(-1i) * -vec2<i32>(-1089i, 1i)).d.a, func_4(Struct_3(_wgslsmith_div_vec2_u32(vec2<u32>(51164u, 43107u), vec2<u32>(u_input.a, u_input.a)), Struct_1(global0.b, 1i, -229f, -45123i), !vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), Struct_2(Struct_1(-14430i, 2717i, -1551f, -1i), vec2<bool>(var_2.x, true)), Struct_2(Struct_1(9744i, -51389i, global0.c, global0.a), vec2<bool>(false, false))), vec4<bool>(false, all(vec4<bool>(var_2.x, true, true, var_2.x)), any(vec4<bool>(var_2.x, var_2.x, true, var_0.x)), !var_2.x), vec3<f32>(_wgslsmith_f_op_f32(-460f + global0.c), _wgslsmith_f_op_f32(-1170f - -624f), _wgslsmith_f_op_f32(max(-421f, -145f)))), Struct_2(func_2(var_0.x, _wgslsmith_f_op_f32(775f + global0.c), func_2(false, global0.c, Struct_3(vec2<u32>(4294967295u, u_input.a), Struct_1(var_1, var_1, -1000f, 25082i), vec4<bool>(false, false, false, var_2.x), Struct_2(Struct_1(-1i, global0.a, global1[_wgslsmith_index_u32(4294967295u, 14u)], -41037i), var_2), Struct_2(Struct_1(global0.d, -2147483647i, -1000f, var_1), vec2<bool>(var_0.x, true))), vec2<i32>(-1i, -58006i)), vec2<i32>(1i, var_1) | vec2<i32>(global0.d, var_1)).d.a, vec2<bool>(func_4(Struct_3(vec2<u32>(19905u, 4294967295u), Struct_1(global0.d, var_1, -751f, var_1), vec4<bool>(var_0.x, true, var_0.x, true), Struct_2(Struct_1(0i, 3702i, -1799f, global0.b), var_0.yy), Struct_2(Struct_1(0i, 0i, global0.c, var_1), var_0.xy)), vec4<bool>(var_0.x, true, var_2.x, var_2.x), vec3<f32>(523f, 772f, 1551f)).x, var_0.x)), Struct_2(Struct_1(max(-1i, 11005i), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.d, var_1), vec2<i32>(global0.d, -15932i)), _wgslsmith_f_op_f32(global0.c - global1[_wgslsmith_index_u32(u_input.a, 14u)]), -30279i), !select(var_0.xz, vec2<bool>(true, var_0.x), var_0.yy))));
    global2 = array<vec2<f32>, 18>();
    global3 = array<vec3<bool>, 8>();
    var var_3 = (u_input.a ^ _wgslsmith_add_u32(1u, 0u << (~u_input.a % 32u))) == (0u >> (~u_input.a % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(~u_input.a), ~u_input.a ^ u_input.a, u_input.a) ^ max(select(~vec3<u32>(22338u, u_input.a, u_input.a), vec3<u32>(u_input.a, 8639u, u_input.a) ^ vec3<u32>(u_input.a, u_input.a, 1u), var_2.x), vec3<u32>(u_input.a, 66385u, 118953u) << (~vec3<u32>(4294967295u, 129671u, 33204u) % vec3<u32>(32u))));
}

