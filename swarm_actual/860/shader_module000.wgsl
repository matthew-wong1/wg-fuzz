struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<f32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13> = array<bool, 13>(true, false, false, false, false, true, true, true, false, true, false, false, false);

var<private> global1: u32;

var<private> global2: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec4<u32>(4294967295u, 52052u, 21979u, 4294967295u), 7045u, vec4<f32>(1219f, 1129f, 201f, -226f), vec2<u32>(13459u, 0u), vec2<i32>(1i, -47813i)), Struct_1(vec4<u32>(4294967295u, 1u, 39272u, 4294967295u), 1u, vec4<f32>(633f, 109f, -354f, -1785f), vec2<u32>(45132u, 1u), vec2<i32>(-1i, -21368i)));

var<private> global3: u32;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(firstTrailingBit(37501u), 19346u, arg_0, _wgslsmith_mult_u32(arg_0, arg_0)), reverseBits(~vec4<u32>(arg_0, 9502u, 29086u, 0u))) ^ select(~reverseBits(vec4<u32>(arg_0, 0u, arg_0, arg_0)), countOneBits(~vec4<u32>(41699u, 0u, arg_0, 4294967295u)), select(select(vec4<bool>(true, false, true, true), vec4<bool>(global0[_wgslsmith_index_u32(arg_0, 13u)], global0[_wgslsmith_index_u32(1u, 13u)], false, false), global0[_wgslsmith_index_u32(arg_0, 13u)]), vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(30966u, 13u)]), true)), _wgslsmith_sub_u32(arg_0, arg_0), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(316f, -1000f, -712f, -2250f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-527f, -1793f, 289f, -1000f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -660f, -1564f, 211f)), vec4<f32>(-1349f, -1576f, 388f, -186f))))), _wgslsmith_mod_vec2_u32(vec2<u32>(~arg_0, _wgslsmith_mod_u32(1u, arg_0)), firstTrailingBit(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0, 4294967295u), vec2<u32>(0u, arg_0)), select(vec2<u32>(arg_0, arg_0), vec2<u32>(arg_0, arg_0), true)))), vec2<i32>(-1i, -1i));
    var var_1 = Struct_2(Struct_1(reverseBits(vec4<u32>(44649u, var_0.a.x, 33255u, ~arg_0)), ~countOneBits(~var_0.b), var_0.c, vec2<u32>(select(~4294967295u, _wgslsmith_sub_u32(4294967295u, 1u), false), var_0.b), -var_0.e), global2[_wgslsmith_index_u32(~arg_0, 2u)], Struct_1(~var_0.a, 3369u, _wgslsmith_f_op_vec4_f32(-var_0.c), vec2<u32>(arg_0, abs(arg_0 >> (arg_0 % 32u))), _wgslsmith_div_vec2_i32(arg_1, vec2<i32>(_wgslsmith_mod_i32(0i, 1i), 2147483647i))), false);
    global3 = 36717u;
    let var_2 = 119f;
    var var_3 = Struct_1(var_0.a, ~_wgslsmith_dot_vec4_u32(~var_0.a & var_0.a, _wgslsmith_div_vec4_u32(var_1.a.a, var_1.a.a << (var_0.a % vec4<u32>(32u)))), _wgslsmith_f_op_vec4_f32(var_0.c + var_0.c), var_1.c.d, arg_1 << (var_0.d % vec2<u32>(32u)));
    return select(vec2<bool>(true, var_1.d), !select(vec2<bool>(true, all(vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 13u)]))), vec2<bool>(true, false), true), false);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec4<i32>) -> u32 {
    var var_0 = !select(vec2<bool>(any(select(vec4<bool>(arg_0, global0[_wgslsmith_index_u32(arg_1.b, 13u)], false, true), vec4<bool>(global0[_wgslsmith_index_u32(arg_1.a.x, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)], false, true), false)), global0[_wgslsmith_index_u32(8487u, 13u)]), select(select(func_3(4294967295u, u_input.a.yz), select(vec2<bool>(true, true), vec2<bool>(arg_0, false), vec2<bool>(true, true)), func_3(arg_1.d.x, vec2<i32>(-36418i, u_input.b)).x), func_3(arg_1.a.x, min(arg_2.xz, vec2<i32>(u_input.a.x, 1i))), vec2<bool>(true, true)), vec2<bool>(all(!vec2<bool>(arg_0, false)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(35685u, 4294967295u, arg_1.d.x, 31220u)), arg_1.a), 13u)]));
    var var_1 = Struct_2(Struct_1(arg_1.a, arg_1.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-216f, 893f, _wgslsmith_f_op_f32(arg_1.c.x + arg_1.c.x), _wgslsmith_f_op_f32(sign(arg_1.c.x)))), ~abs(firstTrailingBit(arg_1.d)), vec2<i32>(-23194i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(1i, 0i, u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_1.e.x, arg_1.e.x, 19684i), vec4<i32>(-1i, -27145i, arg_1.e.x, arg_2.x))))), Struct_1(abs(~arg_1.a), arg_1.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.c.x, -520f, -622f, -1014f)))), arg_1.a.ww, _wgslsmith_sub_vec2_i32(reverseBits(-vec2<i32>(u_input.c, 11380i)), _wgslsmith_mod_vec2_i32(firstLeadingBit(arg_2.yy), _wgslsmith_div_vec2_i32(vec2<i32>(arg_1.e.x, arg_2.x), arg_2.wx)))), global2[_wgslsmith_index_u32(11625u, 2u)], false);
    var var_2 = -9763i;
    let var_3 = _wgslsmith_clamp_vec2_i32(var_1.c.e, arg_2.xy, _wgslsmith_mod_vec2_i32(var_1.b.e, vec2<i32>(arg_2.x, _wgslsmith_sub_i32(1i, max(0i, var_1.a.e.x)))));
    let var_4 = Struct_2(var_1.c, Struct_1(var_1.b.a, ~4294967295u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.a.c.x, -227f, 778f, 1309f))))), var_1.a.c, select(vec4<bool>(var_0.x, true, var_1.d, var_0.x), !vec4<bool>(var_0.x, true, var_0.x, var_1.d), false))), var_1.c.d, min(_wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(u_input.b, arg_2.x)), ~u_input.a.xz), var_1.c.e)), var_1.b, all(select(!(!vec3<bool>(true, true, arg_0)), select(!vec3<bool>(true, var_0.x, true), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, true, true)), any(select(vec3<bool>(true, var_0.x, arg_0), vec3<bool>(global0[_wgslsmith_index_u32(1u, 13u)], var_0.x, false), false)))));
    return _wgslsmith_mult_u32(~(~(~440u)), var_4.c.d.x) & ~2622u;
}

fn func_4(arg_0: vec4<bool>) -> i32 {
    global3 = _wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(firstTrailingBit(reverseBits(0u))), _wgslsmith_div_u32(1u, 4294967295u), ~(~_wgslsmith_div_u32(1u, 1u)), select(abs(~4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(10258u, 1u), ~vec2<u32>(31903u, 4294967295u)), true)), vec4<u32>(_wgslsmith_div_u32(1u, countOneBits(~0u)), ~1u, ~_wgslsmith_add_u32(74320u, 57205u) ^ _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 1u), ~vec2<u32>(0u, 41090u)), ~1u));
    let var_0 = Struct_1(~_wgslsmith_clamp_vec4_u32(select(vec4<u32>(24997u, 4294967295u, 2168u, 0u), vec4<u32>(4294967295u, 1u, 0u, 63938u), !arg_0), _wgslsmith_div_vec4_u32(~vec4<u32>(4795u, 7962u, 1u, 4294967295u), ~vec4<u32>(53156u, 0u, 1u, 14838u)), max(vec4<u32>(1u, 1u, 11192u, 34227u), vec4<u32>(1u, 1u, 1u, 1u))), firstTrailingBit(select(4294967295u, 0u, arg_0.x)), vec4<f32>(1f, 1f, 1f, 1f), vec2<u32>(~75057u, firstTrailingBit(~1u)), vec2<i32>(_wgslsmith_div_i32(reverseBits(80797i << (0u % 32u)), abs(_wgslsmith_add_i32(u_input.a.x, u_input.b))), 2147483647i));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1291f, _wgslsmith_div_f32(929f, var_0.c.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1057f), -601f, arg_0.x)), 411f) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -2193f), var_0.c.x, var_0.c.x)))), _wgslsmith_f_op_vec4_f32(-var_0.c));
    let var_2 = Struct_1(abs(var_0.a & (~vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.d.x) << (~vec4<u32>(var_0.b, 4294967295u, 13321u, var_0.a.x) % vec4<u32>(32u)))), countOneBits(1u), _wgslsmith_f_op_vec4_f32(abs(var_1)), vec2<u32>(77485u, 35064u), -u_input.a.yz);
    let var_3 = Struct_2(Struct_1(select(_wgslsmith_clamp_vec4_u32(var_0.a, vec4<u32>(0u, 34425u, 4294967295u, 4294967295u), var_2.a) >> (countOneBits(var_0.a) % vec4<u32>(32u)), reverseBits(~vec4<u32>(var_0.b, var_0.d.x, 13403u, var_2.a.x)), true), var_0.b, var_2.c, vec2<u32>(var_0.b, select(~32442u, ~0u, false)), var_0.e), Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(5513u, _wgslsmith_sub_u32(var_2.b, var_2.a.x), 100634u, var_0.d.x), _wgslsmith_add_vec4_u32(vec4<u32>(var_2.d.x, var_2.b, 4294967295u, 8220u), var_0.a)), 0u, vec4<f32>(324f, var_0.c.x, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1020f) - var_1.x)), _wgslsmith_div_vec2_u32(var_0.a.zx, min(var_2.a.zx, reverseBits(var_2.d))), firstLeadingBit(~_wgslsmith_sub_vec2_i32(vec2<i32>(-365i, var_0.e.x), var_0.e))), var_2, false);
    return var_0.e.x;
}

fn func_1(arg_0: f32, arg_1: i32) -> Struct_2 {
    global2 = array<Struct_1, 2>();
    let var_0 = func_4(select(!(!select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 13u)], false, global0[_wgslsmith_index_u32(4294967295u, 13u)], false), vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 13u)], true, true), global0[_wgslsmith_index_u32(41815u, 13u)])), vec4<bool>(global0[_wgslsmith_index_u32(max(1u, 1u >> (1u % 32u)), 13u)], !select(true, false, true), !(0i >= u_input.a.x), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(func_2(global0[_wgslsmith_index_u32(0u, 13u)], Struct_1(vec4<u32>(1u, 0u, 43738u, 9492u), 14419u, vec4<f32>(1513f, 306f, 382f, 387f), vec2<u32>(1u, 0u), u_input.a.yx), vec4<i32>(1i, -2147483647i, u_input.c, u_input.a.x)), _wgslsmith_sub_u32(0u, 0u)), 13u)]), select(true, _wgslsmith_f_op_f32(996f - arg_0) < arg_0, true)));
    return Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 108218u), 2u)], Struct_1(min(vec4<u32>(_wgslsmith_add_u32(0u, 0u), 56397u, min(1u, 1846u), 0u), vec4<u32>(_wgslsmith_clamp_u32(4294967295u, 24306u, 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 33611u), vec2<u32>(0u, 21079u)), _wgslsmith_div_u32(0u, 4294967295u), firstLeadingBit(16766u))), _wgslsmith_dot_vec3_u32(select(vec3<u32>(4294967295u, 0u, 28988u), vec3<u32>(4294967295u, 0u, 84559u), false), ~vec3<u32>(71587u, 49109u, 4294967295u)) >> (1u % 32u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_f_op_f32(f32(-1f) * -2036f), _wgslsmith_f_op_f32(1000f - arg_0), _wgslsmith_f_op_f32(sign(arg_0)))), vec2<u32>(select(1u, _wgslsmith_mult_u32(46653u, 12481u), true), select(~1u, 0u, true | global0[_wgslsmith_index_u32(62783u, 13u)])), u_input.a.zx), Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(21769u, ~1u, 1u, ~7908u), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 98212u, 51739u, 0u), ~vec4<u32>(1u, 4294967295u, 115690u, 4294967295u), vec4<u32>(20773u, 1u, 1u, 76349u))), 1u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-278f, arg_0, 272f, arg_0)) + _wgslsmith_div_vec4_f32(vec4<f32>(-826f, -1931f, arg_0, 524f), vec4<f32>(-128f, arg_0, 2077f, arg_0))), reverseBits(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 24238u), vec2<u32>(0u, 60707u)), vec2<u32>(1u, 1u))), abs(vec2<i32>(u_input.a.x, var_0))), !(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 24207u), vec2<u32>(0u, 1u)), 13u)] & global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(3147u, 30695u), 13u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(540f + _wgslsmith_f_op_f32(f32(-1f) * -184f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -773f)))))), u_input.a.x);
    global3 = var_0.b.a.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1399f, var_0.b.c.x), vec2<f32>(var_0.a.c.x, -1000f)))))) - _wgslsmith_f_op_vec2_f32(ceil(var_0.b.c.wy))) - _wgslsmith_f_op_vec2_f32(-var_0.b.c.yx));
    global0 = array<bool, 13>();
    global1 = min(_wgslsmith_sub_u32(4294967295u, firstTrailingBit(var_0.c.d.x >> ((15804u >> (1u % 32u)) % 32u))), ~firstTrailingBit(var_0.c.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.c.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.a.c.wy, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_0.c.c.xw + vec2<f32>(var_0.c.c.x, 521f)))), 107182u > (var_0.c.d.x & var_0.b.a.x))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -699f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * var_1.x) - var_1.x))), ~(~var_0.b.d.x), ~9217u);
}

