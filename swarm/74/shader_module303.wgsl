struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec2<u32>(4294967295u, 4294967295u), -1000f, false), Struct_1(vec2<u32>(59645u, 0u), 974f, true), Struct_1(vec2<u32>(15984u, 4294967295u), 192f, true), Struct_1(vec2<u32>(4294967295u, 24194u), -480f, true), Struct_1(vec2<u32>(8109u, 44211u), 841f, true), Struct_1(vec2<u32>(4294967295u, 2398u), -116f, false), Struct_1(vec2<u32>(4294967295u, 4294967295u), 1412f, false), Struct_1(vec2<u32>(1u, 34468u), 119f, false), Struct_1(vec2<u32>(1u, 1u), -657f, false), Struct_1(vec2<u32>(41202u, 3270u), -974f, false), Struct_1(vec2<u32>(0u, 4294967295u), -1616f, false), Struct_1(vec2<u32>(0u, 98664u), 658f, false), Struct_1(vec2<u32>(4531u, 0u), 775f, true), Struct_1(vec2<u32>(0u, 12057u), -113f, false), Struct_1(vec2<u32>(1u, 0u), 1478f, false), Struct_1(vec2<u32>(4294967295u, 121501u), 536f, true), Struct_1(vec2<u32>(12949u, 1u), 402f, false), Struct_1(vec2<u32>(48653u, 117322u), 819f, true), Struct_1(vec2<u32>(4294967295u, 1u), 1100f, false), Struct_1(vec2<u32>(26386u, 1u), -1374f, false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> u32 {
    let var_0 = Struct_3(!vec4<bool>(select(select(false, arg_0.c, arg_0.c), arg_0.c, false), !arg_0.c, arg_0.c, !all(vec2<bool>(arg_0.c, arg_0.c))), -47380i);
    var var_1 = _wgslsmith_dot_vec3_i32(-vec3<i32>(arg_1, var_0.b << (14919u % 32u), arg_1 >> (0u % 32u)), (vec3<i32>(-1i) * -vec3<i32>(u_input.a, 1i, u_input.a)) << (_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(u_input.b, u_input.b, u_input.b)), vec3<u32>(u_input.b, 0u, 10314u) & vec3<u32>(635u, u_input.b, arg_0.a.x), ~vec3<u32>(arg_0.a.x, u_input.b, arg_0.a.x)) % vec3<u32>(32u))) >= -859i;
    let var_2 = Struct_3(select(var_0.a, select(!select(vec4<bool>(arg_0.c, arg_0.c, false, false), var_0.a, vec4<bool>(var_0.a.x, arg_0.c, var_0.a.x, var_0.a.x)), var_0.a, select(select(var_0.a, vec4<bool>(false, var_0.a.x, false, arg_0.c), false), var_0.a, true)), vec4<bool>(!var_0.a.x & true, true, all(var_0.a.zyy) & var_0.a.x, any(select(vec4<bool>(true, var_0.a.x, true, arg_0.c), vec4<bool>(arg_0.c, var_0.a.x, true, false), arg_0.c)))), _wgslsmith_mult_i32(26493i, ~(var_0.b << ((0u >> (arg_0.a.x % 32u)) % 32u))));
    let var_3 = ~40969i;
    global0 = array<Struct_1, 20>();
    return 0u;
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> f32 {
    global0 = array<Struct_1, 20>();
    let var_0 = Struct_3(!(!vec4<bool>(false, all(vec3<bool>(false, arg_1.c, arg_1.c)), false, false)), 17331i);
    let var_1 = var_0;
    var var_2 = Struct_2(~17708u, _wgslsmith_f_op_f32(ceil(arg_2.b)), -(~(vec2<i32>(arg_3, 56793i) >> (vec2<u32>(38540u, u_input.b) % vec2<u32>(32u))) << (reverseBits(arg_2.a) % vec2<u32>(32u))));
    let var_3 = func_2(Struct_1(min(_wgslsmith_mult_vec2_u32(firstTrailingBit(arg_2.a), select(arg_1.a, arg_2.a, vec2<bool>(false, false))), vec2<u32>(4294967295u, 4294967295u) << ((vec2<u32>(38331u, 1u) | arg_2.a) % vec2<u32>(32u))), 1488f, var_1.a.x), abs((-var_2.c.x & var_2.c.x) << ((~arg_2.a.x << (var_2.a % 32u)) % 32u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_1.b, _wgslsmith_f_op_f32(1307f + arg_2.b), !arg_2.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(arg_2.b, var_2.b))))));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_1) -> f32 {
    var var_0 = 4294967295u;
    let var_1 = arg_2.c;
    var_0 = ~15268u;
    var_0 = func_2(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_2.a.x, 0u, u_input.b, 25296u)), vec4<u32>(arg_2.a.x, 0u, u_input.b, arg_0)), reverseBits(3760u)), 20u)], _wgslsmith_mod_i32(u_input.a, u_input.a));
    let var_2 = Struct_3(!(!(!select(vec4<bool>(arg_2.c, var_1, arg_1.x, true), vec4<bool>(true, true, false, arg_1.x), vec4<bool>(arg_2.c, true, arg_2.c, arg_2.c)))), _wgslsmith_dot_vec2_i32(select(~vec2<i32>(-1i, u_input.a) & reverseBits(vec2<i32>(2147483647i, -2147483647i)), ~(vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(-47907i, u_input.a)), arg_1), abs(~vec2<i32>(u_input.a, 0i)) >> (countOneBits(~arg_2.a) % vec2<u32>(32u))));
    return _wgslsmith_f_op_f32(func_3(var_2.b, Struct_1(vec2<u32>(1u, 0u), arg_2.b, false), global0[_wgslsmith_index_u32(63384u, 20u)], -u_input.a));
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: vec4<f32>, arg_3: vec3<bool>) -> Struct_3 {
    var var_0 = arg_3.x;
    var var_1 = abs(-64509i);
    let var_2 = abs(select(vec3<u32>(reverseBits(u_input.b), func_2(Struct_1(vec2<u32>(u_input.b, arg_0.x), -1153f, arg_3.x), u_input.a), 6911u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 9122u, 4294967295u), max(vec3<u32>(24490u, arg_0.x, arg_0.x), vec3<u32>(1u, 25258u, 30209u))), select(select(vec3<bool>(arg_3.x, false, arg_3.x), arg_3, arg_3.x), select(arg_3, vec3<bool>(arg_3.x, false, true), arg_3), false))) << ((vec3<u32>(firstLeadingBit(~1u), _wgslsmith_clamp_u32(u_input.b >> (4294967295u % 32u), arg_0.x, arg_0.x), u_input.b) >> (vec3<u32>(_wgslsmith_sub_u32(u_input.b, 1u), ~u_input.b, 55876u) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_3 = select(-14048i, ~(-(i32(-1i) * -1i)), all(vec4<bool>(arg_3.x & false, !(arg_0.x != 1u), false, true)));
    var var_4 = global0[_wgslsmith_index_u32(~min(u_input.b, ~19730u), 20u)];
    return Struct_3(select(!(!select(vec4<bool>(var_4.c, true, true, false), vec4<bool>(arg_3.x, var_4.c, var_4.c, false), vec4<bool>(true, true, var_4.c, true))), !select(select(vec4<bool>(true, arg_3.x, var_4.c, true), vec4<bool>(false, false, arg_3.x, true), arg_3.x), select(vec4<bool>(arg_3.x, arg_3.x, arg_3.x, false), vec4<bool>(arg_3.x, false, var_4.c, false), vec4<bool>(var_4.c, var_4.c, arg_3.x, var_4.c)), arg_3.x), (_wgslsmith_f_op_f32(1000f * arg_1) != _wgslsmith_f_op_f32(var_4.b * arg_1)) & true), (-1i & (-u_input.a & u_input.a)) | _wgslsmith_mult_i32(_wgslsmith_div_i32(countOneBits(-70771i), u_input.a), ~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, 0i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 20>();
    let var_0 = global0[_wgslsmith_index_u32(1u, 20u)];
    var var_1 = _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a, 2147483647i), vec3<i32>(u_input.a, u_input.a, u_input.a)), u_input.a), ~vec3<i32>(-26725i, -2147483647i, 0i)) >> (max(~vec3<u32>(u_input.b, 3496u, var_0.a.x) ^ firstLeadingBit(vec3<u32>(5989u, 0u, 4294967295u)), max(vec3<u32>(4294967295u, u_input.b, var_0.a.x), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a.x, u_input.b, u_input.b), vec3<u32>(var_0.a.x, 58722u, u_input.b)))) % vec3<u32>(32u)), vec3<i32>(2147483647i, u_input.a, -1i));
    global0 = array<Struct_1, 20>();
    let var_2 = !(!vec2<bool>(var_0.c, all(select(vec3<bool>(var_0.c, var_0.c, var_0.c), vec3<bool>(var_0.c, var_0.c, var_0.c), vec3<bool>(false, false, var_0.c)))));
    var_1 = _wgslsmith_mod_vec3_i32(max(~(~vec3<i32>(0i, u_input.a, u_input.a)), countOneBits(select(vec3<i32>(1i, u_input.a, var_1.x), -vec3<i32>(var_1.x, 0i, 17563i), false))), min(-(~vec3<i32>(u_input.a, -2147483647i, 2147483647i) << (~vec3<u32>(0u, var_0.a.x, u_input.b) % vec3<u32>(32u))), -select(vec3<i32>(-1i, 1i, 36470i) | vec3<i32>(var_1.x, var_1.x, u_input.a), ~vec3<i32>(-13454i, 22426i, -38021i), false)));
    var var_3 = func_4(select(var_0.a, var_0.a, vec2<bool>(true, !any(var_2))), _wgslsmith_f_op_f32(select(var_0.b, -2436f, !any(vec3<bool>(var_0.c, false, var_0.c)))), vec4<f32>(var_0.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.b), var_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(0u, vec2<bool>(var_2.x, true), Struct_1(vec2<u32>(0u, u_input.b), var_0.b, var_0.c)))))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(func_3(~(-1i), global0[_wgslsmith_index_u32(var_0.a.x, 20u)], global0[_wgslsmith_index_u32(~u_input.b, 20u)], u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.b)))), vec3<bool>(var_0.c, false, all(select(select(vec4<bool>(false, var_2.x, true, false), vec4<bool>(true, var_2.x, true, true), vec4<bool>(var_2.x, var_2.x, false, false)), vec4<bool>(var_2.x, true, false, false), !vec4<bool>(var_2.x, var_2.x, true, true)))));
    let var_4 = func_4(var_0.a, var_0.b, vec4<f32>(_wgslsmith_f_op_f32(-var_0.b), -1624f, _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.b), -167f)), _wgslsmith_f_op_f32(f32(-1f) * -955f)))), vec3<bool>(all(!(!vec2<bool>(var_0.c, var_2.x))), var_0.c, false)).a.ww;
    let var_5 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(369f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(max(func_4(var_0.a, 614f, vec4<f32>(var_0.b, 1000f, var_0.b, -281f), vec3<bool>(false, false, var_3.a.x)).b, u_input.a), global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_mult_u32(1u, var_0.a.x)), 20u)], global0[_wgslsmith_index_u32(u_input.b, 20u)], firstTrailingBit(-23883i))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(-var_0.b))))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_5, -1750f, -731f, 683f), vec4<f32>(1000f, var_5, -905f, 953f))) * vec4<f32>(var_5, -1166f, 817f, -323f)), vec4<f32>(_wgslsmith_div_f32(775f, -304f), _wgslsmith_f_op_f32(-var_5), 1381f, -1424f), func_4(_wgslsmith_mod_vec2_u32(var_0.a, var_0.a), _wgslsmith_f_op_f32(-2712f * 366f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, -1000f, var_0.b, 1275f) - vec4<f32>(var_5, var_5, 515f, -1332f)), !var_3.a.zxz).a)) - _wgslsmith_div_vec4_f32(vec4<f32>(-704f, -1502f, _wgslsmith_f_op_f32(ceil(1445f)), -510f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(899f, var_5, var_0.b, var_0.b)))))));
}

