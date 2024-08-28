struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<f32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

var<private> global1: Struct_3 = Struct_3(Struct_1(vec4<f32>(-1170f, 1000f, 198f, -155f), 21193i, true, -853f));

var<private> global2: array<u32, 25> = array<u32, 25>(4294967295u, 45451u, 58086u, 66275u, 4294967295u, 2638u, 1u, 1u, 88155u, 4294967295u, 32459u, 4294967295u, 4294967295u, 20873u, 1u, 4294967295u, 4294967295u, 0u, 1u, 36523u, 23765u, 12286u, 4294967295u, 3459u, 0u);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool, arg_3: u32) -> vec2<u32> {
    global1 = arg_0;
    global1 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-921f, _wgslsmith_f_op_f32(f32(-1f) * -1429f), -1226f, _wgslsmith_f_op_f32(-arg_0.a.a.x))), _wgslsmith_dot_vec2_i32(u_input.a, u_input.b.wz), true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.b.a.x), 1385f, global1.a.c))));
    let var_0 = _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(u_input.b, u_input.b), ~(-(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, 2147483647i, 18559i), u_input.b) >> ((vec4<u32>(8318u, global2[_wgslsmith_index_u32(arg_3, 25u)], 1u, arg_3) ^ vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(arg_1.c.x, 25u)], 0u, 9676u)) % vec4<u32>(32u)))));
    var var_1 = Struct_4(1u);
    var_1 = Struct_4(20409u << ((_wgslsmith_mod_u32(arg_3, arg_3) ^ ~17191u) % 32u));
    return (select(vec2<u32>(var_1.a, _wgslsmith_mult_u32(arg_1.c.x, 93257u)), reverseBits(vec2<u32>(var_1.a, 4294967295u) & arg_1.c), !(arg_1.c.x < arg_3)) ^ min(~vec2<u32>(4294967295u, 26129u) << (~vec2<u32>(arg_1.c.x, 14363u) % vec2<u32>(32u)), arg_1.c)) | abs(arg_1.c);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = arg_2.b.d;
    var var_1 = select(vec3<bool>(global1.a.c, true, global1.a.d >= -800f), !vec3<bool>(!arg_0.x, true, all(vec3<bool>(true, arg_0.x, arg_2.b.c))), arg_0.xyx);
    var var_2 = _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(arg_2.c << ((~vec2<u32>(arg_2.c.x, 4294967295u) | (vec2<u32>(global2[_wgslsmith_index_u32(5304u, 25u)], global2[_wgslsmith_index_u32(11658u, 25u)]) | vec2<u32>(arg_2.c.x, arg_2.c.x))) % vec2<u32>(32u)), func_3(Struct_3(arg_2.b), Struct_2(u_input.a.x >> (arg_2.c.x % 32u), Struct_1(arg_2.b.a, -37325i, false, global1.a.a.x), vec2<u32>(arg_2.c.x, 29259u)), !all(vec3<bool>(true, true, false)), 27381u)), arg_2.c);
    let var_3 = _wgslsmith_sub_i32(7745i, global1.a.b);
    var_2 = firstLeadingBit(arg_2.c);
    return Struct_1(arg_2.b.a, _wgslsmith_sub_i32(var_3, u_input.b.x), var_1.x, global1.a.a.x);
}

fn func_4(arg_0: Struct_3) -> vec3<bool> {
    global0 = array<Struct_1, 3>();
    var var_0 = Struct_3(Struct_1(vec4<f32>(arg_0.a.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.d * -537f) - _wgslsmith_f_op_f32(global1.a.a.x * 1556f)), global1.a.a.x, global1.a.a.x), arg_0.a.b, false && global1.a.c, _wgslsmith_f_op_f32(f32(-1f) * -504f)));
    let var_1 = Struct_3(var_0.a);
    var_0 = arg_0;
    var var_2 = var_0.a;
    return select(!select(select(!vec3<bool>(var_0.a.c, true, var_1.a.c), vec3<bool>(true, true, true), arg_0.a.c && global1.a.c), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, arg_0.a.c), vec3<bool>(false, var_2.c, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, var_1.a.c), vec3<bool>(arg_0.a.c, false, global1.a.c)), select(vec3<bool>(var_0.a.c, true, var_0.a.c), vec3<bool>(true, var_0.a.c, global1.a.c), var_1.a.c)), !select(vec3<bool>(arg_0.a.c, var_1.a.c, true), vec3<bool>(false, var_2.c, var_1.a.c), vec3<bool>(true, true, var_2.c))), select(vec3<bool>(var_1.a.c, false, global2[_wgslsmith_index_u32(69117u, 25u)] == ~global2[_wgslsmith_index_u32(73941u, 25u)]), vec3<bool>(false, true, !(true && arg_0.a.c)), any(!vec2<bool>(arg_0.a.c, true))), !var_0.a.c);
}

fn func_5(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: vec2<i32>) -> Struct_1 {
    global0 = array<Struct_1, 3>();
    var var_0 = u_input.b.x;
    let var_1 = Struct_2(-17616i, global0[_wgslsmith_index_u32(0u, 3u)], vec2<u32>(func_3(Struct_3(func_2(vec4<bool>(arg_0.x, true, arg_0.x, global1.a.c), u_input.a, Struct_2(-2147483647i, global0[_wgslsmith_index_u32(0u, 3u)], vec2<u32>(arg_1.x, global2[_wgslsmith_index_u32(47405u, 25u)])))), Struct_2(-38542i, func_2(vec4<bool>(global1.a.c, global1.a.c, true, arg_0.x), u_input.a, Struct_2(global1.a.b, Struct_1(vec4<f32>(832f, -556f, 1000f, global1.a.d), -1i, global1.a.c, 867f), vec2<u32>(4294967295u, 0u))), reverseBits(vec2<u32>(48189u, 44545u))), func_2(vec4<bool>(global1.a.c, true, arg_0.x, arg_0.x), ~vec2<i32>(0i, global1.a.b), Struct_2(-1i, Struct_1(vec4<f32>(1000f, -325f, 403f, global1.a.d), global1.a.b, false, 389f), vec2<u32>(arg_1.x, 44086u))).c, _wgslsmith_mult_u32(arg_1.x, ~13054u)).x, arg_1.x));
    let var_2 = Struct_2(0i, var_1.b, vec2<u32>(0u, abs(_wgslsmith_clamp_u32(4294967295u, var_1.c.x, 112306u)) | min(~arg_1.x, 1u)));
    var var_3 = var_1;
    return Struct_1(vec4<f32>(-227f, _wgslsmith_f_op_f32(-927f * _wgslsmith_f_op_f32(f32(-1f) * -1433f)), _wgslsmith_f_op_f32(var_1.b.d + var_1.b.d), -299f), reverseBits(_wgslsmith_add_i32(_wgslsmith_clamp_i32(abs(u_input.a.x), 40140i, -var_1.a), ~_wgslsmith_div_i32(1i, var_3.a))), true, func_2(select(!vec4<bool>(var_1.b.c, true, true, var_2.b.c), !select(vec4<bool>(false, var_3.b.c, global1.a.c, var_2.b.c), vec4<bool>(var_1.b.c, false, var_1.b.c, true), vec4<bool>(false, true, false, var_3.b.c)), true), max(max(arg_2, vec2<i32>(var_3.a, var_2.b.b)) >> (vec2<u32>(global2[_wgslsmith_index_u32(28794u, 25u)], 47991u) % vec2<u32>(32u)), ~(-vec2<i32>(u_input.b.x, -29515i))), Struct_2(17003i, Struct_1(var_1.b.a, -61638i, var_3.b.a.x <= -368f, 1000f), _wgslsmith_add_vec2_u32(select(vec2<u32>(58993u, 34407u), var_2.c, false), vec2<u32>(1u, arg_1.x)))).a.x);
}

fn func_1(arg_0: u32) -> Struct_3 {
    var var_0 = Struct_4(reverseBits(global2[_wgslsmith_index_u32(~select(arg_0, 17499u, true), 25u)]));
    var var_1 = vec4<u32>(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(~global2[_wgslsmith_index_u32(var_0.a, 25u)], min(51988u, var_0.a), ~var_0.a, _wgslsmith_div_u32(var_0.a, arg_0))), ~(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, global2[_wgslsmith_index_u32(4294967295u, 25u)], global2[_wgslsmith_index_u32(1u, 25u)], arg_0), vec4<u32>(var_0.a, 47719u, global2[_wgslsmith_index_u32(arg_0, 25u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0, 25u)], 25u)], 25u)])) & _wgslsmith_mod_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(arg_0, 25u)], var_0.a, var_0.a, global2[_wgslsmith_index_u32(1u, 25u)]), vec4<u32>(global2[_wgslsmith_index_u32(0u, 25u)], arg_0, arg_0, 23747u)))), var_0.a, ~firstTrailingBit(var_0.a ^ global2[_wgslsmith_index_u32(0u << (arg_0 % 32u), 25u)]), ~global2[_wgslsmith_index_u32(4294967295u, 25u)]);
    let var_2 = func_5(select(vec3<bool>(true, !all(vec2<bool>(global1.a.c, true)), true), func_4(Struct_3(func_2(vec4<bool>(false, global1.a.c, false, global1.a.c), u_input.a, Struct_2(global1.a.b, global0[_wgslsmith_index_u32(1u, 3u)], var_1.zx)))), func_4(Struct_3(Struct_1(vec4<f32>(-1563f, -1000f, global1.a.a.x, 513f), global1.a.b, global1.a.c, global1.a.d))).x), firstLeadingBit(abs(var_1.wy)), -vec2<i32>(-u_input.a.x, _wgslsmith_dot_vec3_i32(~u_input.b.zyy, u_input.b.yww)));
    let var_3 = 1u;
    var var_4 = _wgslsmith_mult_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(-7683i << (var_1.x % 32u), ~(-24530i)), vec2<i32>(-41250i, _wgslsmith_mod_i32(1i, -1634i))), -49855i);
    return Struct_3(Struct_1(global1.a.a, u_input.b.x, all(func_4(Struct_3(Struct_1(var_2.a, -19217i, true, var_2.a.x)))), global1.a.a.x));
}

fn func_6(arg_0: Struct_3) -> vec2<i32> {
    global1 = func_1(~global2[_wgslsmith_index_u32(76797u, 25u)]);
    let var_0 = !func_5(vec3<bool>(true, false, select(false, func_4(arg_0).x, arg_0.a.d == 1935f)), ~min(reverseBits(vec2<u32>(global2[_wgslsmith_index_u32(46232u, 25u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 25u)], 25u)], 25u)])), vec2<u32>(4294967295u, 1u)), reverseBits(-_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, global1.a.b), vec2<i32>(34247i, arg_0.a.b)))).c;
    var var_1 = vec4<u32>(global2[_wgslsmith_index_u32(173753u, 25u)], global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(36447u, 25u)], 25u)], 66045u), vec3<u32>(26697u, global2[_wgslsmith_index_u32(0u, 25u)], 4294967295u)), 25u)], 25u)], select(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], _wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(7434u, 25u)], 25u)], global2[_wgslsmith_index_u32(24394u, 25u)]), vec2<u32>(28395u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 25u)], 25u)], 25u)])), all(vec3<bool>(true, arg_0.a.c, global1.a.c)))), 25u)], ~44534u << ((1u & (_wgslsmith_clamp_u32(25670u, global2[_wgslsmith_index_u32(59164u, 25u)], 1u) | _wgslsmith_dot_vec2_u32(vec2<u32>(35125u, global2[_wgslsmith_index_u32(0u, 25u)]), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 25u)], 25u)], global2[_wgslsmith_index_u32(0u, 25u)])))) % 32u), 4294967295u);
    var var_2 = ~vec3<u32>(max(~0u, 0u), 59234u, _wgslsmith_div_u32(46115u, global2[_wgslsmith_index_u32(var_1.x, 25u)]));
    var var_3 = ~var_1.x;
    return vec2<i32>(-9038i ^ arg_0.a.b, ~(_wgslsmith_add_i32(u_input.a.x, 11385i) & -arg_0.a.b)) >> (vec2<u32>(~37504u, var_2.x) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 3>();
    let var_0 = Struct_2(_wgslsmith_dot_vec2_i32(func_6(func_1(14301u & global2[_wgslsmith_index_u32(1u, 25u)])), ~_wgslsmith_mult_vec2_i32(u_input.a & u_input.b.wz, select(vec2<i32>(-14513i, global1.a.b), u_input.a, vec2<bool>(true, false)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a.a))), -1i, true, global1.a.d), vec2<u32>(_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 25u)], 25u)])), ~(vec2<u32>(global2[_wgslsmith_index_u32(47167u, 25u)], global2[_wgslsmith_index_u32(23635u, 25u)]) << (vec2<u32>(31372u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 25u)]) % vec2<u32>(32u)))), firstLeadingBit(1u)));
    let var_1 = true;
    let var_2 = ~3269u;
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a << (abs(~vec2<u32>(4294967295u, 35123u)) % vec2<u32>(32u)), _wgslsmith_clamp_u32(1u, ~17485u, 4294967295u), var_0.b.a, global1.a.a.xw, 0u);
}

