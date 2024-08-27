struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<u32>(55050u, 24798u, 1u), Struct_1(vec4<i32>(0i, -48640i, -54069i, 37591i), 0i, -235f, vec3<i32>(-97650i, 43789i, -1i)));

var<private> global1: f32;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: Struct_3) -> u32 {
    let var_0 = true;
    global0 = Struct_2(vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b, vec2<u32>(63666u, u_input.c)) >> (_wgslsmith_add_vec2_u32(vec2<u32>(2486u, u_input.b.x), global0.a.yz) % vec2<u32>(32u)), select(u_input.b, global0.a.xx, select(arg_1, arg_1, arg_1.x))), global0.a.x, ~(~(~37131u))), Struct_1(arg_3.d.a, -_wgslsmith_clamp_i32(-2147483647i & global0.b.a.x, ~(-2147483647i), 0i), 1552f, vec3<i32>(-1i, arg_3.a.x, global0.b.b)));
    return reverseBits(~44399u) | u_input.c;
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: i32) -> Struct_2 {
    let var_0 = global0.b.c;
    let var_1 = ~arg_2.b.d.zz;
    var var_2 = Struct_2(global0.a, Struct_1(vec4<i32>(_wgslsmith_mult_i32(global0.b.b, ~2147483647i), 8794i, -6862i | select(14163i, u_input.d.x, true), -23561i), -8760i, _wgslsmith_f_op_f32(500f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(236f))))), vec3<i32>(max(firstLeadingBit(78520i), _wgslsmith_sub_i32(arg_3, 72796i)), 0i, arg_2.b.b)));
    var_2 = Struct_2(countOneBits(vec3<u32>(~(~var_2.a.x), ~min(arg_2.a.x, 1u), 23104u)), Struct_1(vec4<i32>(-40489i, arg_0, var_2.b.a.x, arg_0), 1i >> (~func_3(var_2.b.c, vec2<bool>(false, false), vec2<f32>(394f, global0.b.c), Struct_3(arg_2.b.a, -2147483647i, global0.b, Struct_1(vec4<i32>(global0.b.d.x, arg_0, u_input.d.x, arg_0), arg_2.b.b, -159f, global0.b.a.zyx))) % 32u), -893f, arg_2.b.d & (abs(var_2.b.d) ^ reverseBits(arg_2.b.a.xxw))));
    global0 = Struct_2(~countOneBits(max(vec3<u32>(u_input.b.x, global0.a.x, 51354u), ~vec3<u32>(u_input.c, 1u, 0u))), Struct_1(max(countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, var_1.x, -5123i, arg_0), vec4<i32>(arg_3, 2375i, var_1.x, -1i))), firstLeadingBit(arg_2.b.a)), abs(-_wgslsmith_clamp_i32(arg_3, var_1.x, 2147483647i)), _wgslsmith_f_op_f32(floor(var_2.b.c)), vec3<i32>(countOneBits(~14803i), ~(-1i), var_1.x)));
    return Struct_2(~vec3<u32>(1u, _wgslsmith_mult_u32(global0.a.x, 1u), 1u), Struct_1(-global0.b.a, abs(-51791i), _wgslsmith_f_op_f32(-arg_2.b.c), arg_2.b.d));
}

fn func_4(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_2) -> Struct_3 {
    global1 = arg_2.b.c;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2319f)) + -1000f);
    var var_0 = arg_2.b;
    let var_1 = vec4<bool>(any(select(!select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(false, false), vec2<bool>(true, true))), true, !(!any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)))), 1u > _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_2.a.x), u_input.b) | 56966u, ~_wgslsmith_dot_vec2_u32(u_input.b, u_input.b)));
    var var_2 = _wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(1043f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2951f, var_0.c))))));
    return Struct_3(select(~vec4<i32>(func_2(arg_2.b.a.x, arg_2.a.yz, arg_2, -2147483647i).b.a.x, arg_2.b.d.x, u_input.d.x, 6718i), ~global0.b.a, var_1), -3341i >> (0u % 32u), Struct_1(vec4<i32>(-(~39433i), 2147483647i, global0.b.a.x, _wgslsmith_dot_vec3_i32(arg_0.wwz, vec3<i32>(arg_2.b.d.x, u_input.a.x, arg_0.x) >> (vec3<u32>(arg_1, arg_2.a.x, 85711u) % vec3<u32>(32u)))), -(arg_2.b.d.x ^ -19152i) >> (min(arg_1 >> (2619u % 32u), 30023u) % 32u), _wgslsmith_f_op_f32(f32(-1f) * -1073f), _wgslsmith_sub_vec3_i32(vec3<i32>(29571i, -2147483647i, arg_0.x), -var_0.a.xyz) << (~arg_2.a % vec3<u32>(32u))), global0.b);
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_3) -> Struct_3 {
    var var_0 = func_4(global0.b.a, abs(max(0u, 4294967295u) >> (u_input.c % 32u)), func_2(func_4(arg_1.c.a ^ vec4<i32>(8471i, 1i, arg_1.b, -1i), _wgslsmith_div_u32(4294967295u, global0.a.x), Struct_2(vec3<u32>(u_input.b.x, u_input.c, u_input.b.x), Struct_1(global0.b.a, 3323i, -1482f, arg_1.c.d))).a.x >> ((~u_input.c << (global0.a.x % 32u)) % 32u), u_input.b ^ func_2(_wgslsmith_mod_i32(global0.b.a.x, global0.b.b), global0.a.zy, Struct_2(vec3<u32>(59250u, 98919u, u_input.c), Struct_1(vec4<i32>(1i, u_input.d.x, u_input.a.x, -1i), -37000i, 1625f, arg_1.a.xwy)), func_4(arg_1.d.a, 1u, Struct_2(vec3<u32>(global0.a.x, 4294967295u, 46582u), arg_1.d)).d.b).a.xz, Struct_2(~_wgslsmith_add_vec3_u32(vec3<u32>(30875u, global0.a.x, global0.a.x), vec3<u32>(4294967295u, 4294967295u, u_input.c)), arg_1.d), -_wgslsmith_sub_i32(~9735i, u_input.a.x))).d.d;
    var_0 = firstLeadingBit(vec3<i32>(-39549i, _wgslsmith_sub_i32(u_input.a.x ^ u_input.a.x, i32(-1i) * -15508i), countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 9879i, 21174i), vec3<i32>(global0.b.a.x, -1i, 42377i)))) ^ global0.b.d);
    var_0 = arg_1.a.zxw;
    let var_1 = firstTrailingBit(global0.b.d.x) != _wgslsmith_dot_vec3_i32(~vec3<i32>(global0.b.b ^ var_0.x, 1i, 0i), ~countOneBits(vec3<i32>(2147483647i, var_0.x, u_input.a.x)));
    let var_2 = -_wgslsmith_clamp_i32(firstTrailingBit(arg_1.a.x), u_input.d.x, -2147483647i);
    return Struct_3(~min(vec4<i32>(-global0.b.d.x, var_2, firstTrailingBit(20109i), u_input.a.x), vec4<i32>(-arg_1.c.a.x, _wgslsmith_mod_i32(1i, global0.b.b), 1i, arg_1.a.x)), func_2(_wgslsmith_mod_i32(1i, var_0.x), ~vec2<u32>(func_2(global0.b.d.x, vec2<u32>(7230u, u_input.c), Struct_2(vec3<u32>(u_input.b.x, 4294967295u, global0.a.x), arg_1.c), var_0.x).a.x, global0.a.x), func_2(15316i, reverseBits(func_2(-1i, vec2<u32>(119188u, 37817u), Struct_2(global0.a, global0.b), 1220i).a.zy), func_2(~u_input.d.x, ~global0.a.zz, Struct_2(global0.a, Struct_1(vec4<i32>(var_0.x, 0i, var_0.x, global0.b.a.x), -1i, arg_1.c.c, vec3<i32>(-58750i, 0i, 2147483647i))), i32(-1i) * -1i), _wgslsmith_sub_i32(-u_input.a.x, arg_1.a.x << (u_input.c % 32u))), var_0.x).b.b, func_4(vec4<i32>(~(var_0.x << (4921u % 32u)), firstLeadingBit(func_2(-27946i, u_input.b, Struct_2(global0.a, global0.b), var_0.x).b.b), global0.b.b, var_2), func_3(_wgslsmith_f_op_f32(f32(-1f) * -2064f), !select(vec2<bool>(var_1, arg_0.x), vec2<bool>(true, arg_0.x), arg_0.xx), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1345f, global0.b.c))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(894f, arg_1.c.c), vec2<f32>(global0.b.c, global0.b.c)))), arg_1), Struct_2((vec3<u32>(12663u, 32155u, 4294967295u) | global0.a) & abs(vec3<u32>(global0.a.x, 17701u, u_input.c)), arg_1.c)).c, Struct_1(reverseBits(-(vec4<i32>(27465i, arg_1.c.d.x, var_0.x, arg_1.d.b) << (vec4<u32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x) % vec4<u32>(32u)))), _wgslsmith_sub_i32(-21655i, 36818i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -117f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.c) - _wgslsmith_f_op_f32(global0.b.c - arg_1.c.c))), (vec3<i32>(-25332i, var_2, var_2) & global0.b.d) << (vec3<u32>(global0.a.x, _wgslsmith_mult_u32(u_input.c, 1u), 49473u) % vec3<u32>(32u))));
}

fn func_1() -> Struct_2 {
    var var_0 = func_5(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), func_4(global0.b.a, reverseBits(1u), func_2(7331i, ~(global0.a.yy << (vec2<u32>(59941u, 4294967295u) % vec2<u32>(32u))), Struct_2(max(global0.a, vec3<u32>(global0.a.x, 4294967295u, global0.a.x)), global0.b), ~(~(-2147483647i)))));
    var_0 = Struct_3(var_0.d.a, abs(-var_0.c.a.x), var_0.c, Struct_1(~_wgslsmith_sub_vec4_i32(vec4<i32>(24634i, u_input.d.x, u_input.d.x, global0.b.d.x), var_0.c.a) >> (~(~vec4<u32>(global0.a.x, global0.a.x, global0.a.x, 11413u)) % vec4<u32>(32u)), -1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.c))), countOneBits(var_0.d.d) << (_wgslsmith_mult_vec3_u32(global0.a, abs(global0.a)) % vec3<u32>(32u))));
    var_0 = Struct_3(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(global0.b.b, global0.b.a.x, global0.b.d.x, -2147483647i)) & ~vec4<i32>(8720i, u_input.a.x, var_0.b, u_input.d.x), select(var_0.a, _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, global0.b.d.x, global0.b.d.x), vec4<i32>(u_input.a.x, var_0.d.b, var_0.d.b, -14613i) << (vec4<u32>(41747u, 9102u, 118468u, u_input.b.x) % vec4<u32>(32u))), all(vec3<bool>(false, false, false)))), u_input.a.x, Struct_1(vec4<i32>(~_wgslsmith_mult_i32(var_0.d.b, -4389i), firstTrailingBit(11354i), var_0.a.x, 19581i), var_0.b, var_0.c.c, -_wgslsmith_sub_vec3_i32(max(vec3<i32>(var_0.a.x, global0.b.b, 8436i), global0.b.d), -global0.b.d)), Struct_1(min(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(var_0.c.a, vec4<i32>(1i, -23492i, u_input.a.x, 72241i)), var_0.d.a), vec4<i32>(global0.b.d.x, global0.b.d.x << (1u % 32u), 1i, -u_input.a.x)), u_input.a.x, 517f, -(~vec3<i32>(1i, var_0.a.x, -14402i))));
    var var_1 = func_2(global0.b.d.x, ~firstLeadingBit(max(vec2<u32>(4294967295u, 13639u), ~global0.a.yx)), func_2(var_0.a.x, _wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(4294967295u, global0.a.x)), Struct_2(vec3<u32>(global0.a.x, 2170u, _wgslsmith_div_u32(u_input.b.x, 31525u)), global0.b), u_input.d.x), global0.b.d.x);
    var var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(23248u, abs(global0.a.x >> (u_input.b.x % 32u)), ~u_input.c << (~4294967295u % 32u)), vec3<u32>(1u, 63787u, _wgslsmith_mult_u32(var_1.a.x, 4224u) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, 1u, 19500u, u_input.c), vec4<u32>(0u, 40037u, u_input.c, 26656u)) % 32u))) != 4294967295u;
    return Struct_2(~(~firstLeadingBit(_wgslsmith_mult_vec3_u32(global0.a, global0.a))), func_4(min(countOneBits(abs(global0.b.a)), vec4<i32>(u_input.a.x, 2147483647i, -65072i, global0.b.d.x >> (u_input.b.x % 32u))), var_1.a.x | 0u, Struct_2(countOneBits(~var_1.a), Struct_1(vec4<i32>(-18486i, u_input.d.x, global0.b.a.x, 0i) ^ global0.b.a, ~u_input.a.x, _wgslsmith_div_f32(var_1.b.c, global0.b.c), vec3<i32>(var_0.b, global0.b.d.x, var_1.b.d.x)))).d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.b.a;
    var var_1 = false;
    let var_2 = func_1();
    var var_3 = var_2;
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_div_f32(570f, global0.b.c), var_2.b.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.b.c, global0.b.c) * -1041f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0.b.c)), _wgslsmith_f_op_f32(-var_2.b.c))))), _wgslsmith_f_op_f32(abs(384f)), -684f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.b.c))), func_5(vec3<bool>(false, true, true), func_4(vec4<i32>(3862i, -1i, -25740i, -1i), 1u, Struct_2(global0.a, global0.b))).c.c) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_3.b.c)) + 1034f) - _wgslsmith_f_op_f32(round(1684f)))));
    var_1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x);
}

