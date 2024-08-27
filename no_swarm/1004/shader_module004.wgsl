struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
    d: vec2<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(vec4<bool>(false, false, false, false)), Struct_3(vec4<bool>(true, false, true, true)), Struct_3(vec4<bool>(false, false, false, true)), Struct_3(vec4<bool>(true, false, true, true)), Struct_3(vec4<bool>(true, false, true, true)), Struct_3(vec4<bool>(false, false, false, true)), Struct_3(vec4<bool>(true, true, true, false)), Struct_3(vec4<bool>(true, true, false, true)), Struct_3(vec4<bool>(true, false, false, false)), Struct_3(vec4<bool>(true, false, false, true)), Struct_3(vec4<bool>(true, false, false, false)), Struct_3(vec4<bool>(false, true, true, true)), Struct_3(vec4<bool>(false, true, false, true)), Struct_3(vec4<bool>(false, true, true, true)), Struct_3(vec4<bool>(false, false, true, false)), Struct_3(vec4<bool>(true, true, false, false)), Struct_3(vec4<bool>(false, true, true, false)), Struct_3(vec4<bool>(true, false, false, true)), Struct_3(vec4<bool>(false, true, false, true)), Struct_3(vec4<bool>(false, true, false, true)));

var<private> global1: u32 = 12989u;

var<private> global2: array<vec4<f32>, 14> = array<vec4<f32>, 14>(vec4<f32>(-1503f, -989f, 1988f, -282f), vec4<f32>(1000f, -1495f, -287f, -137f), vec4<f32>(-790f, -624f, 130f, 1002f), vec4<f32>(-903f, 474f, -289f, -396f), vec4<f32>(437f, -316f, 738f, 1840f), vec4<f32>(370f, -789f, -1776f, -1521f), vec4<f32>(-776f, -315f, 168f, -869f), vec4<f32>(881f, -893f, 714f, 223f), vec4<f32>(-645f, -658f, -425f, -2419f), vec4<f32>(-1672f, 2029f, -279f, 636f), vec4<f32>(1102f, -147f, 1096f, 189f), vec4<f32>(138f, 510f, -1324f, 140f), vec4<f32>(538f, -700f, 512f, -458f), vec4<f32>(2733f, -1000f, -539f, -1433f));

var<private> global3: Struct_5 = Struct_5(Struct_1(vec4<i32>(-9808i, -35443i, -48287i, 2147483647i), vec3<i32>(2147483647i, 2147483647i, 0i), vec4<i32>(0i, -576i, -6570i, 30973i), -445f), Struct_2(vec3<i32>(i32(-2147483648), 43691i, -1i), 11084i, Struct_1(vec4<i32>(3606i, 61629i, 22498i, 2147483647i), vec3<i32>(-1i, 0i, -351i), vec4<i32>(-12573i, 2687i, -28846i, 9392i), 955f), true, -1i));

var<private> global4: vec3<i32>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: Struct_3) -> u32 {
    global3 = Struct_5(Struct_1(global3.a.c, _wgslsmith_mult_vec3_i32(arg_0.a.c.c.wyw, vec3<i32>(-4053i >> (arg_1.x % 32u), reverseBits(global4.x), _wgslsmith_dot_vec4_i32(arg_0.c.c.a, global3.b.c.c))), ~(~arg_0.a.c.c | -arg_0.a.c.a), arg_0.a.c.d), global3.b);
    global4 = vec3<i32>(countOneBits(37549i), 15106i, global4.x);
    var var_0 = Struct_5(Struct_1(_wgslsmith_mod_vec4_i32(arg_0.a.c.c, arg_0.c.c.c), global3.b.a, arg_0.c.c.c, _wgslsmith_f_op_f32(-1046f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1015f, 996f)), _wgslsmith_f_op_f32(-790f * -1195f))))), arg_0.c);
    let var_1 = Struct_1(_wgslsmith_mod_vec4_i32(global3.b.c.c >> (countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 50457u), vec4<u32>(8975u, arg_1.x, 23765u, 0u))) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(var_0.b.c.c, vec4<i32>(38604i, u_input.a, -1i, var_0.a.c.x)) | select(global3.a.c, global3.a.c, arg_3.a)), select(global3.b.a << (_wgslsmith_clamp_vec3_u32(countOneBits(arg_1), ~vec3<u32>(arg_1.x, arg_1.x, 53626u), countOneBits(arg_1)) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(global3.b.c.a.x, 1i), -41899i), -global3.a.a.x << (arg_1.x % 32u), arg_0.d.x), all(select(arg_3.a.xww, arg_3.a.xwz, vec3<bool>(true, true, false)))), vec4<i32>(arg_0.b, firstTrailingBit(25361i), abs((var_0.b.e << (arg_1.x % 32u)) & global3.b.b), var_0.b.a.x), _wgslsmith_f_op_f32(step(-901f, 1381f)));
    var var_2 = vec3<f32>(global3.b.c.d, 523f, _wgslsmith_f_op_f32(arg_0.c.c.d - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(415f * 518f))));
    return firstLeadingBit(~(~1u));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_4, arg_3: vec3<u32>) -> i32 {
    let var_0 = vec2<bool>(!(_wgslsmith_add_u32(~4294967295u, 52669u) != abs(firstTrailingBit(arg_3.x))), all(!vec3<bool>(-1i == u_input.a, true, any(vec2<bool>(arg_0.d, true)))));
    global0 = array<Struct_3, 20>();
    var var_1 = !select(vec4<bool>(all(!vec3<bool>(global3.b.d, false, false)), any(var_0), select(arg_2.a.d, arg_2.a.d & true, -316f < arg_0.c.d), any(select(vec3<bool>(false, true, global3.b.d), vec3<bool>(var_0.x, true, false), vec3<bool>(arg_2.a.d, global3.b.d, arg_2.c.d)))), select(select(select(vec4<bool>(true, arg_0.d, true, true), vec4<bool>(true, false, arg_0.d, var_0.x), vec4<bool>(true, true, false, false)), select(vec4<bool>(arg_0.d, arg_2.a.d, var_0.x, arg_0.d), vec4<bool>(true, global3.b.d, global3.b.d, false), vec4<bool>(global3.b.d, var_0.x, false, global3.b.d)), vec4<bool>(global3.b.d, true, arg_0.d, true)), select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_2.a.d, global3.b.d, true, true), vec4<bool>(var_0.x, var_0.x, arg_2.a.d, false)), vec4<bool>(all(vec4<bool>(false, var_0.x, true, false)), true, !var_0.x, select(false, true, arg_0.d))), select(select(!vec4<bool>(false, global3.b.d, arg_0.d, global3.b.d), vec4<bool>(arg_2.c.d, var_0.x, arg_2.a.d, true), select(vec4<bool>(true, false, true, var_0.x), vec4<bool>(false, var_0.x, true, global3.b.d), vec4<bool>(global3.b.d, global3.b.d, false, arg_2.a.d))), select(vec4<bool>(var_0.x, var_0.x, global3.b.d, global3.b.d), select(vec4<bool>(false, var_0.x, arg_0.d, global3.b.d), vec4<bool>(false, global3.b.d, global3.b.d, false), true), false), !vec4<bool>(arg_2.c.d, true, arg_2.c.d, global3.b.d)));
    var var_2 = arg_2.c;
    var var_3 = select(var_1.yyx, vec3<bool>(global3.b.d, false, true), var_1.wwy);
    return _wgslsmith_mult_i32(select(~38090i, 1i, true), countOneBits(_wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_div_i32(2147483647i, -2147483647i)), countOneBits(33418i))));
}

fn func_2(arg_0: vec4<i32>, arg_1: i32) -> Struct_2 {
    global4 = vec3<i32>(~min(-_wgslsmith_mod_i32(-68535i, arg_0.x), arg_1), _wgslsmith_dot_vec2_i32(vec2<i32>(-global3.b.b, -21480i), vec2<i32>(-1i, 2147483647i)), func_4(global3.b, -190f, Struct_4(global3.b, global3.a.a.x, Struct_2(global3.a.b, 1i, Struct_1(global3.a.a, vec3<i32>(-1i, -1i, -1i), vec4<i32>(arg_1, 1i, -1i, -1i), -232f), false, global4.x), global4.yz), vec3<u32>(func_3(Struct_4(global3.b, -2147483647i, Struct_2(vec3<i32>(arg_1, arg_1, global3.a.a.x), 2147483647i, Struct_1(global3.a.c, vec3<i32>(-8877i, arg_1, -1953i), vec4<i32>(arg_1, 0i, -2147483647i, u_input.a), -218f), true, global4.x), vec2<i32>(global3.a.a.x, arg_0.x)), vec3<u32>(4294967295u, 0u, 0u), global0[_wgslsmith_index_u32(37003u, 20u)], Struct_3(vec4<bool>(true, global3.b.d, true, global3.b.d))), 1u, 1u)) << (firstLeadingBit(64413u) % 32u));
    var var_0 = _wgslsmith_clamp_u32(~0u, countOneBits(1u), max(~func_3(Struct_4(global3.b, global3.b.a.x, Struct_2(vec3<i32>(22265i, arg_0.x, global4.x), 0i, Struct_1(vec4<i32>(global3.a.b.x, 0i, -2147483647i, 1i), vec3<i32>(-2147483647i, global3.b.e, global3.a.a.x), global3.b.c.c, 700f), false, u_input.a), global4.zz), ~vec3<u32>(4294967295u, 0u, 1u), Struct_3(vec4<bool>(true, true, global3.b.d, false)), Struct_3(vec4<bool>(true, global3.b.d, false, global3.b.d))), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(0u, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(32607u, 1u, 1u), vec3<u32>(41970u, 4294967295u, 4294967295u)), 31474u, 1u), vec4<u32>(1u, 1u, 1u, 1u) >> (select(vec4<u32>(68610u, 0u, 22577u, 0u), vec4<u32>(53110u, 4294967295u, 0u, 86723u), false) % vec4<u32>(32u)))));
    global2 = array<vec4<f32>, 14>();
    let var_1 = _wgslsmith_add_i32(-28627i, -1i);
    let var_2 = Struct_3(select(select(select(!vec4<bool>(global3.b.d, global3.b.d, false, global3.b.d), vec4<bool>(true, false, true, true), vec4<bool>(true, global3.b.d, true, global3.b.d)), vec4<bool>(true, all(vec2<bool>(false, true)), false, global3.b.d), !global3.b.d), select(select(select(vec4<bool>(global3.b.d, global3.b.d, global3.b.d, global3.b.d), vec4<bool>(false, false, false, false), false), select(vec4<bool>(true, false, global3.b.d, global3.b.d), vec4<bool>(false, false, global3.b.d, global3.b.d), vec4<bool>(true, global3.b.d, global3.b.d, global3.b.d)), global3.b.d), select(!vec4<bool>(false, global3.b.d, global3.b.d, false), vec4<bool>(global3.b.d, true, global3.b.d, global3.b.d), any(vec2<bool>(false, global3.b.d))), select(select(vec4<bool>(false, global3.b.d, global3.b.d, global3.b.d), vec4<bool>(global3.b.d, global3.b.d, true, global3.b.d), true), select(vec4<bool>(global3.b.d, false, true, false), vec4<bool>(false, global3.b.d, false, false), vec4<bool>(global3.b.d, global3.b.d, global3.b.d, true)), !global3.b.d)), all(!select(vec2<bool>(true, global3.b.d), vec2<bool>(global3.b.d, true), vec2<bool>(global3.b.d, true)))));
    return Struct_2(reverseBits((vec3<i32>(8499i, arg_1, -2147483647i) | select(arg_0.xzx, vec3<i32>(arg_0.x, arg_0.x, arg_1), var_2.a.wzw)) >> ((vec3<u32>(51730u, 17934u, 0u) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u))), select(global4.x ^ min(global3.a.a.x, global3.b.c.a.x), -12792i, var_2.a.x) << (_wgslsmith_add_u32(4294967295u, ~(~0u)) % 32u), global3.b.c, any(var_2.a.yzw), _wgslsmith_sub_i32(_wgslsmith_div_i32(-_wgslsmith_clamp_i32(global3.b.c.b.x, 2147483647i, -1i), 24835i), ~(-1i)));
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: u32, arg_3: Struct_1) -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(~1u, 20u)];
    var_0 = global0[_wgslsmith_index_u32(~0u, 20u)];
    return func_2((vec4<i32>(_wgslsmith_div_i32(1i, 29814i), -2147483647i, -23662i, global3.a.a.x) << (firstTrailingBit(vec4<u32>(4294967295u, arg_2, 1u, arg_2)) % vec4<u32>(32u))) & _wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.a, ~31767i, global4.x >> (arg_2 % 32u)), -reverseBits(arg_3.a)), countOneBits(2147483647i));
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: f32, arg_3: u32) -> u32 {
    var var_0 = func_5(~_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, -1i, u_input.a, 2147483647i), global3.a.a), vec4<i32>(global3.b.a.x, 2147483647i, -1i, 18473i)) & 0i, func_2(vec4<i32>(-_wgslsmith_div_i32(0i, -2147483647i), _wgslsmith_div_i32(-2147483647i, global4.x) & u_input.a, ~(-19522i), global4.x), ~(-1i)), max(arg_3, ~60216u), global3.a);
    let var_1 = func_2(~global3.b.c.a, 22016i);
    var var_2 = var_1.d;
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1373f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.c.d)))))) * _wgslsmith_f_op_vec2_f32(arg_1.zy + arg_1.xx));
    let var_4 = func_2(-vec4<i32>(func_4(func_2(var_0.c.a, 18263i), _wgslsmith_f_op_f32(-var_3.x), Struct_4(Struct_2(global3.a.b, var_1.b, Struct_1(var_1.c.a, global3.b.a, var_0.c.a, var_0.c.d), var_1.d, var_0.b), global4.x, global3.b, vec2<i32>(0i, -2147483647i)), vec3<u32>(arg_3, arg_3, arg_3)), 0i, -var_0.b << (_wgslsmith_sub_u32(arg_3, 0u) % 32u), global4.x), ~_wgslsmith_mult_i32(-_wgslsmith_clamp_i32(u_input.a, -51500i, -17519i), 0i));
    return arg_3 << (~_wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(arg_3, arg_3, arg_3)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_3, arg_3, arg_3), vec3<u32>(arg_3, 78592u, 4294967295u))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(~(~14561u), 1u, ~abs(~0u) | ~_wgslsmith_clamp_u32(4294967295u, 6748u << (1u % 32u), 4294967295u), 1u);
    global4 = global3.b.a;
    let var_1 = !global3.b.d;
    global1 = _wgslsmith_mod_u32(23860u, func_1(true, vec3<f32>(global3.b.c.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.d)), _wgslsmith_f_op_f32(-global3.a.d)), global3.a.d, var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(global3.b.c.c.xyy, ~0u);
}

