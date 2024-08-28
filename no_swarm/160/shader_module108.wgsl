struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: f32,
    d: f32,
    e: f32,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: u32,
    d: Struct_4,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 2> = array<vec2<f32>, 2>(vec2<f32>(-314f, 835f), vec2<f32>(1005f, -811f));

var<private> global1: vec3<i32>;

var<private> global2: Struct_1;

var<private> global3: array<f32, 14> = array<f32, 14>(1246f, -1000f, -2170f, -189f, 690f, 758f, 245f, -259f, 402f, 478f, 323f, 1388f, 865f, 1000f);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> vec4<bool> {
    let var_0 = true;
    var var_1 = i32(-1i) * -global1.x;
    let var_2 = Struct_3(!var_0, Struct_2(~(global2.c.x ^ ~0u), select(vec2<i32>(u_input.a ^ 0i, -20003i), ~u_input.d.yx << (_wgslsmith_mod_vec2_u32(global2.b.yy, vec2<u32>(1u, global2.c.x)) % vec2<u32>(32u)), vec2<bool>(30475u <= global2.c.x, select(true, var_0, var_0))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1660f - global2.a)), ~vec3<u32>(u_input.b, 4294967295u, 6531u) ^ ~vec3<u32>(u_input.b, 1u, u_input.b), _wgslsmith_mod_vec3_u32(vec3<u32>(33089u, u_input.b, 57320u), ~global2.b)), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -249f), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b, 14u)]), global3[_wgslsmith_index_u32(78197u, 14u)] >= global2.a)), vec3<u32>(~38748u, 0u, u_input.b), global2.c), global2.b.xy));
    let var_3 = _wgslsmith_mod_u32(11855u, ~(~u_input.b));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_3, 14u)]), _wgslsmith_div_f32(-105f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -147f) + _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_3, 14u)]))), var_0)), -1752f);
    return !(!(!vec4<bool>(all(vec3<bool>(true, true, false)), true, !var_0, var_2.a)));
}

fn func_4(arg_0: bool, arg_1: Struct_5, arg_2: vec2<u32>, arg_3: vec4<bool>) -> f32 {
    let var_0 = arg_1.d;
    global1 = min(_wgslsmith_mod_vec3_i32(u_input.c, vec3<i32>(max(_wgslsmith_mod_i32(-1i, 1i), u_input.d.x), _wgslsmith_div_i32(abs(1i), 2147483647i), ~global1.x)), vec3<i32>(_wgslsmith_dot_vec4_i32(min(u_input.d >> (vec4<u32>(4294967295u, arg_1.b.d.b.x, 35023u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, arg_1.e.b.x, -2147483647i, -1i), vec4<i32>(-50380i, global1.x, arg_1.e.b.x, 35941i))), countOneBits(vec4<i32>(30673i, arg_1.e.b.x, global1.x, -663i))), ~(~30939i & ~global1.x), -32966i));
    global2 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(arg_1.e.c.a)), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32((u_input.b ^ global2.c.x) << ((global2.b.x | 7917u) % 32u), select(_wgslsmith_sub_u32(global2.c.x, 8700u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, 21010u, arg_1.e.d.b.x, global2.c.x), vec4<u32>(arg_2.x, u_input.b, 26559u, 1u)), false)), 14u)])), global2.c ^ reverseBits(firstTrailingBit(arg_1.e.d.b)), vec3<u32>(countOneBits(0u) << ((arg_2.x >> (arg_1.c % 32u)) % 32u), 68101u, _wgslsmith_div_u32(countOneBits(~arg_1.b.a), arg_2.x)));
    global1 = firstTrailingBit(vec3<i32>(i32(-1i) * -arg_1.e.b.x, _wgslsmith_div_i32(-arg_1.e.b.x, arg_1.b.b.x), max(0i, -arg_1.b.b.x)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -685f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-346f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-185f)))))));
    return 1052f;
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: vec3<bool>) -> f32 {
    global3 = array<f32, 14>();
    var var_0 = Struct_3(all(vec2<bool>(_wgslsmith_add_i32(u_input.d.x, -2147483647i) <= 458i, all(!vec3<bool>(arg_0, arg_0, true)))), Struct_2(~(~_wgslsmith_clamp_u32(0u, u_input.b, global2.c.x)), firstLeadingBit(-_wgslsmith_sub_vec2_i32(u_input.c.zx, global1.yy)), Struct_1(_wgslsmith_f_op_f32(-691f * 1087f), vec3<u32>(1u, ~0u, 1u), global2.b), Struct_1(_wgslsmith_f_op_f32(func_4(any(vec3<bool>(arg_0, arg_0, true)), Struct_5(682f, Struct_2(1u, u_input.c.xy, Struct_1(-135f, vec3<u32>(4294967295u, 100216u, u_input.b), vec3<u32>(1480u, 1u, u_input.b)), Struct_1(global2.a, global2.c, global2.c), vec2<u32>(u_input.b, u_input.b)), 0u, Struct_4(global3[_wgslsmith_index_u32(global2.b.x, 14u)], 250f, 563f, global3[_wgslsmith_index_u32(0u, 14u)], arg_1.x), Struct_2(global2.b.x, global1.yy, Struct_1(-973f, global2.b, vec3<u32>(global2.c.x, global2.c.x, global2.c.x)), Struct_1(global2.a, global2.c, global2.b), global2.c.zx)), vec2<u32>(50827u, u_input.b) << (global2.c.zx % vec2<u32>(32u)), func_3())), abs(_wgslsmith_sub_vec3_u32(global2.c, vec3<u32>(4294967295u, 0u, 1u))), global2.b), firstTrailingBit(vec2<u32>(42309u, 34551u) ^ global2.c.xy) << (vec2<u32>(4294967295u << (global2.b.x % 32u), ~global2.b.x) % vec2<u32>(32u))));
    var var_1 = ~(~(-abs(abs(global1.yz))));
    global2 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1448f)))), countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(12182u, 86777u, u_input.b), vec3<u32>(14615u, 35362u, 1u))), vec3<u32>(firstTrailingBit(abs(_wgslsmith_add_u32(u_input.b, 0u))), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~var_0.b.e, vec2<u32>(4294967295u, 2163u)), 67344u), var_0.b.a));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-239f, 641f)), var_0.b.c.a) * global3[_wgslsmith_index_u32(54985u, 14u)]) + var_0.b.d.a), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(21827u, 32555u, 152296u), vec3<u32>(0u, 1u, global2.c.x)), select(var_0.b.d.b, var_0.b.d.b, arg_2)), global2.c), ~select(_wgslsmith_clamp_vec3_u32(vec3<u32>(46837u, u_input.b, var_0.b.a), global2.c, global2.c), ~var_0.b.d.b, true)), vec3<u32>(var_0.b.e.x, countOneBits(_wgslsmith_sub_u32(1u, var_0.b.c.b.x)), reverseBits(1891u) ^ _wgslsmith_sub_u32(_wgslsmith_mod_u32(55326u, 1u), global2.c.x << (global2.b.x % 32u))));
    return _wgslsmith_f_op_f32(func_4(!(!(var_0.a || !arg_2.x)), Struct_5(2433f, var_0.b, 35659u, Struct_4(_wgslsmith_f_op_f32(-1063f - _wgslsmith_f_op_f32(-316f - arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b.c.a))), var_2.a, global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.b.d.c.x, var_0.b.d.b.x, var_0.b.e.x), vec4<u32>(global2.b.x, 0u, var_0.b.a, var_2.c.x)), 14u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a))), Struct_2(~4294967295u, max(global1.zx, vec2<i32>(global1.x, global1.x)), var_0.b.c, var_2, _wgslsmith_add_vec2_u32(vec2<u32>(global2.b.x, u_input.b), select(var_0.b.c.b.yy, vec2<u32>(1u, var_0.b.d.c.x), vec2<bool>(var_0.a, false))))), ~(vec2<u32>(~4294967295u, 1u) & _wgslsmith_add_vec2_u32(vec2<u32>(var_0.b.c.b.x, 4294967295u), vec2<u32>(var_2.b.x, var_2.c.x) & vec2<u32>(u_input.b, 8332u))), select(vec4<bool>(!func_3().x, true, arg_2.x, arg_0), select(select(func_3(), vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), func_3()), vec4<bool>(true, false, true, true), select(select(vec4<bool>(true, false, false, arg_0), vec4<bool>(var_0.a, arg_0, false, var_0.a), vec4<bool>(arg_2.x, arg_2.x, arg_0, false)), !vec4<bool>(arg_0, arg_0, true, true), vec4<bool>(false, false, true, false))), var_0.a)));
}

fn func_5(arg_0: vec2<bool>, arg_1: bool, arg_2: f32) -> bool {
    var var_0 = Struct_4(global2.a, 1404f, _wgslsmith_f_op_f32(539f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a, global3[_wgslsmith_index_u32(4294967295u, 14u)])))), global3[_wgslsmith_index_u32(1u, 14u)], _wgslsmith_f_op_f32(step(526f, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, ~u_input.b), abs(vec2<u32>(u_input.b, global2.c.x))), 14u)])));
    let var_1 = Struct_3(true, Struct_2(28189u, countOneBits(reverseBits(vec2<i32>(global1.x, global1.x)) ^ max(vec2<i32>(-24002i, global1.x), vec2<i32>(global1.x, global1.x))), Struct_1(_wgslsmith_f_op_f32(ceil(-236f)), min(global2.c, abs(global2.b)), firstTrailingBit(firstLeadingBit(vec3<u32>(4294967295u, 28034u, 8971u)))), Struct_1(_wgslsmith_f_op_f32(func_4(arg_0.x, Struct_5(355f, Struct_2(60653u, u_input.c.yx, Struct_1(var_0.a, vec3<u32>(96218u, u_input.b, global2.c.x), global2.b), Struct_1(global2.a, global2.b, vec3<u32>(global2.b.x, 1u, 12614u)), global2.c.zz), u_input.b, Struct_4(global2.a, -1068f, 1631f, -639f, global3[_wgslsmith_index_u32(u_input.b, 14u)]), Struct_2(53400u, u_input.c.xz, Struct_1(global2.a, global2.c, vec3<u32>(u_input.b, 4294967295u, u_input.b)), Struct_1(arg_2, global2.b, global2.b), global2.b.xx)), vec2<u32>(u_input.b, global2.c.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), global2.c, _wgslsmith_div_vec3_u32(~global2.c, global2.b)), global2.b.yz));
    global0 = array<vec2<f32>, 2>();
    var var_2 = arg_0.x;
    var var_3 = var_1.b;
    return all(arg_0);
}

fn func_1(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: Struct_4) -> Struct_3 {
    global1 = reverseBits(u_input.c);
    global1 = u_input.c;
    let var_0 = select(vec4<bool>(true && !(u_input.d.x == -2147483647i), true, false, !(!select(true, false, true))), vec4<bool>(true, true, true, true), true);
    global0 = array<vec2<f32>, 2>();
    var var_1 = vec3<bool>(var_0.x, func_5(var_0.xy, var_0.x, _wgslsmith_f_op_f32(func_2(global2.a <= -448f, vec4<f32>(1329f, global2.a, -578f, arg_0.a), select(var_0.ywy, vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x)))) == all(!func_3().wwx), (i32(-1i) * -2147483647i) <= ~reverseBits(u_input.a | -9008i));
    return Struct_3(var_1.x, Struct_2(global2.b.x, firstTrailingBit(reverseBits(u_input.d.wx)), Struct_1(1616f, global2.c, reverseBits(global2.c)), Struct_1(_wgslsmith_f_op_f32(-global2.a), vec3<u32>(~global2.c.x, 1u, 19569u), select(~global2.b, vec3<u32>(6329u, 1827u, global2.c.x), !var_0.x)), ~((global2.c.yx >> (global2.c.yz % vec2<u32>(32u))) | global2.c.xy)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 2>();
    var var_0 = 1i;
    let var_1 = func_1(Struct_4(-838f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1376f, -201f)))) * _wgslsmith_f_op_f32(-104f - _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(30843u, 14u)]))), -120f, 1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-325f)))), 1278f, true))), vec2<i32>(_wgslsmith_mult_i32(1i, _wgslsmith_add_i32(~global1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(10404i, -37030i), vec2<i32>(u_input.a, 2804i)))), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 946i, global1.x, 1i), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, global1.x, 37975i, -2147483647i), u_input.d), u_input.d))), Struct_4(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b, 14u)]), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(11398u, 14u)]), _wgslsmith_f_op_f32(sign(-450f)), -183f, global2.a));
    var var_2 = Struct_5(var_1.b.d.a, Struct_2(1u, vec2<i32>(global1.x, u_input.d.x), Struct_1(_wgslsmith_f_op_f32(round(var_1.b.d.a)), vec3<u32>(~global2.c.x, 4294967295u, u_input.b & 20763u), vec3<u32>(var_1.b.e.x ^ 37804u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.a, 35165u, 0u, global2.b.x), vec4<u32>(2798u, global2.b.x, global2.c.x, 0u)), ~1u)), func_1(Struct_4(_wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(36900u, 14u)], var_1.b.d.a)), _wgslsmith_f_op_f32(round(944f)), _wgslsmith_div_f32(-995f, global2.a), var_1.b.d.a, global2.a), vec2<i32>(u_input.d.x >> (1u % 32u), 13774i), Struct_4(_wgslsmith_f_op_f32(-global2.a), 363f, _wgslsmith_f_op_f32(400f - global2.a), _wgslsmith_f_op_f32(global2.a + -263f), _wgslsmith_f_op_f32(global2.a - global3[_wgslsmith_index_u32(var_1.b.c.b.x, 14u)]))).b.d, vec2<u32>(_wgslsmith_sub_u32(14646u, _wgslsmith_add_u32(44655u, global2.b.x)), _wgslsmith_sub_u32(var_1.b.a, ~30298u))), 29846u, Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1160f), global3[_wgslsmith_index_u32(0u, 14u)]), global3[_wgslsmith_index_u32(select(var_1.b.d.b.x, var_1.b.c.b.x, all(func_3().zyz)), 14u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.d.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(624f * global2.a))), -848f), Struct_2(u_input.b, _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-18648i, global1.x), _wgslsmith_add_vec2_i32(u_input.c.xx, vec2<i32>(40329i, global1.x))), select(vec2<i32>(-20136i, u_input.c.x), -u_input.c.zy, select(vec2<bool>(true, var_1.a), vec2<bool>(true, var_1.a), vec2<bool>(var_1.a, false))), u_input.c.zy), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-132f))), func_1(Struct_4(global3[_wgslsmith_index_u32(1864u, 14u)], global2.a, 816f, var_1.b.c.a, 422f), var_1.b.b, Struct_4(var_1.b.d.a, global3[_wgslsmith_index_u32(19536u, 14u)], 203f, 758f, var_1.b.c.a)).b.d.c, max(~var_1.b.c.b, _wgslsmith_mod_vec3_u32(var_1.b.d.c, var_1.b.d.c))), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.a))), firstLeadingBit(~vec3<u32>(57249u, 42262u, 4294967295u)), var_1.b.c.b), global2.b.yx));
    let var_3 = any(vec2<bool>(var_1.a, var_1.a));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(982f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(344f, var_1.b.c.a)), _wgslsmith_f_op_f32(var_2.a + var_2.b.c.a), var_1.a || var_1.a))) * global2.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global2.b.x, 14u)]), _wgslsmith_f_op_f32(min(-545f, global2.a)), -1231f, _wgslsmith_div_f32(592f, -769f))))), countOneBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.d, u_input.d), countOneBits(vec4<i32>(global1.x, -1338i, -41234i, -8102i)), u_input.d << (vec4<u32>(0u, 1u, 19242u, var_2.b.e.x) % vec4<u32>(32u))) | max(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -27073i, global1.x, u_input.d.x), vec4<i32>(-32186i, var_1.b.b.x, u_input.a, var_2.e.b.x)), vec4<i32>(-1i, var_2.e.b.x, 43017i, -2147483647i))));
}

