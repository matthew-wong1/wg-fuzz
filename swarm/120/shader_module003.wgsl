struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<u32>,
    d: u32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1457f, 452f, 1000f);

var<private> global1: array<i32, 28>;

var<private> global2: array<Struct_1, 26>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_1() -> Struct_3 {
    return Struct_3(0u, vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(firstLeadingBit(u_input.c.yz), select(vec2<i32>(1i, 2147483647i), vec2<i32>(u_input.e, 0i), true)), _wgslsmith_sub_vec2_i32(u_input.c.zx, vec2<i32>(u_input.e, u_input.e)) >> (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 47340u), vec2<u32>(0u, 4294967295u)) % vec2<u32>(32u))), firstTrailingBit(_wgslsmith_clamp_i32(~(-4792i), _wgslsmith_clamp_i32(-33705i, -2147483647i, u_input.e), 37905i)), _wgslsmith_div_i32(-global1[_wgslsmith_index_u32(u_input.b, 28u)], 2147483647i), abs(17055i)), select(true, !(false || (u_input.b > u_input.a)), !any(vec3<bool>(true, true, true))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: u32, arg_3: vec3<i32>) -> vec4<u32> {
    var var_0 = arg_2;
    let var_1 = global2[_wgslsmith_index_u32(~(~select(~u_input.a << (_wgslsmith_mod_u32(0u, 72915u) % 32u), _wgslsmith_dot_vec2_u32(firstLeadingBit(arg_0.wx), vec2<u32>(7436u, 22577u)), true)), 26u)];
    let var_2 = var_1.b.x;
    let var_3 = vec4<u32>(0u, arg_0.x, 2788u, 1u);
    var var_4 = arg_1.c;
    return vec4<u32>(~4294967295u, ~(~abs(0u)), ~arg_1.d, abs(_wgslsmith_sub_u32(var_3.x, _wgslsmith_mult_u32(21025u, arg_2))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: vec4<f32>, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = all(vec2<bool>(true && (firstTrailingBit(1i) < func_1().b.x), all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)))));
    var var_1 = func_1().a;
    global2 = array<Struct_1, 26>();
    var var_2 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3.a), vec3<f32>(global0.x, arg_1.x, _wgslsmith_f_op_f32(-arg_1.x))), u_input.c.yy);
    var var_3 = abs(vec2<u32>(min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, arg_0.x, u_input.a, 4294967295u) << (vec4<u32>(4294967295u, 13162u, arg_0.x, arg_0.x) % vec4<u32>(32u)), countOneBits(arg_0)), _wgslsmith_div_u32(firstLeadingBit(1u), 75163u)), u_input.b));
    return vec4<i32>(89223i, i32(-1i) * -arg_3.b.x, firstTrailingBit(_wgslsmith_add_i32(var_2.b.x, u_input.e)) ^ ~(~(-1i)), 1i);
}

fn func_2(arg_0: u32) -> Struct_2 {
    let var_0 = _wgslsmith_sub_vec4_i32(func_4(_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, u_input.b, u_input.a, arg_0) | firstLeadingBit(vec4<u32>(u_input.a, 59005u, arg_0, 36608u)), ~func_3(vec4<u32>(u_input.b, arg_0, u_input.a, u_input.b), Struct_2(u_input.b, global2[_wgslsmith_index_u32(arg_0, 26u)], vec3<u32>(arg_0, 4294967295u, 82373u), arg_0, vec4<f32>(863f, -747f, -2159f, global0.x)), 0u, vec3<i32>(global1[_wgslsmith_index_u32(54738u, 28u)], 0i, -30770i)), abs(~vec4<u32>(59025u, 96447u, u_input.a, 34497u))), _wgslsmith_f_op_vec2_f32(-global0.xz), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, _wgslsmith_f_op_f32(ceil(847f)), _wgslsmith_f_op_f32(ceil(452f)), _wgslsmith_f_op_f32(global0.x * global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-223f, -261f, -373f, -467f)))), global2[_wgslsmith_index_u32(~abs(arg_0), 26u)]), _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(u_input.d, global1[_wgslsmith_index_u32(arg_0, 28u)], global1[_wgslsmith_index_u32(arg_0, 28u)], u_input.e) & vec4<i32>(-12939i, 1i, u_input.d, u_input.d)) | abs(vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(1u, 28u)], -2147483647i, 5797i)), -(~vec4<i32>(u_input.e, 1i, 0i, global1[_wgslsmith_index_u32(1u, 28u)])) ^ _wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.e, u_input.c.x, u_input.d, u_input.d), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, global1[_wgslsmith_index_u32(40036u, 28u)], global1[_wgslsmith_index_u32(u_input.b, 28u)], global1[_wgslsmith_index_u32(0u, 28u)]), vec4<i32>(-2147483647i, u_input.e, -1i, -7771i)))));
    global2 = array<Struct_1, 26>();
    var var_1 = vec4<bool>(!select(true, func_1().c, false), all(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false)), false), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), select(_wgslsmith_f_op_f32(select(275f, _wgslsmith_f_op_f32(-global0.x), true)) >= 353f, false, (all(vec3<bool>(false, false, false)) != true) || all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true))), func_1().c);
    var var_2 = Struct_2(func_3(_wgslsmith_clamp_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.b, 96060u, u_input.a), vec4<u32>(u_input.a, 28598u, arg_0, 0u)), vec4<u32>(4294967295u, func_3(vec4<u32>(4294967295u, u_input.b, arg_0, 4294967295u), Struct_2(8417u, global2[_wgslsmith_index_u32(0u, 26u)], vec3<u32>(1u, 0u, 0u), 34884u, vec4<f32>(global0.x, global0.x, global0.x, -1120f)), u_input.b, vec3<i32>(u_input.e, 1i, 14354i)).x, _wgslsmith_mod_u32(arg_0, arg_0), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 65622u, 0u, arg_0), vec4<u32>(33496u, 1u, 4294967295u, u_input.a))), vec4<u32>(abs(117589u), u_input.b ^ 8548u, u_input.a, 46113u)), Struct_2(arg_0, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)), ~u_input.c.zy), firstLeadingBit(firstTrailingBit(vec3<u32>(46754u, 0u, u_input.b))), _wgslsmith_div_u32(arg_0 | 1u, arg_0), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(554f, -643f, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1965f, global0.x, global0.x, -1444f) - vec4<f32>(1348f, global0.x, global0.x, global0.x)), all(vec4<bool>(var_1.x, var_1.x, false, false))))), 90351u, min(_wgslsmith_div_vec3_i32(var_0.zzw, min(vec3<i32>(2147483647i, u_input.e, 2147483647i), vec3<i32>(12960i, u_input.c.x, var_0.x))), firstTrailingBit(u_input.c) & _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 39151i, 1i), var_0.ywz))).x, global2[_wgslsmith_index_u32(~(64501u & _wgslsmith_dot_vec2_u32(vec2<u32>(54602u, 40358u), vec2<u32>(u_input.b, 4294967295u))) | arg_0, 26u)], (_wgslsmith_add_vec3_u32(max(vec3<u32>(4294967295u, arg_0, arg_0), vec3<u32>(3658u, 4294967295u, u_input.a)), reverseBits(vec3<u32>(arg_0, 1u, 4294967295u))) | ~vec3<u32>(arg_0, 24382u, 8940u)) & vec3<u32>(~(~u_input.b), _wgslsmith_add_u32(~u_input.a, arg_0), 1u >> (_wgslsmith_div_u32(u_input.a, 12930u) % 32u)), arg_0, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, _wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(-1001f - 1216f), _wgslsmith_f_op_f32(1558f - 716f))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(243f)), _wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(min(676f, -172f)))), -1042f, global0.x), vec4<bool>(!any(vec2<bool>(true, false)), !func_1().c, all(vec2<bool>(var_1.x, false)), false))));
    return Struct_2(~1u, var_2.b, vec3<u32>(_wgslsmith_div_u32(select(u_input.a, var_2.a, var_1.x), max(4294967295u, 4294967295u)) & var_2.a, ~_wgslsmith_dot_vec2_u32(func_3(vec4<u32>(var_2.a, var_2.d, 1u, 11063u), Struct_2(0u, Struct_1(var_2.e.yxy, vec2<i32>(-6434i, u_input.e)), vec3<u32>(1u, var_2.c.x, arg_0), 98574u, vec4<f32>(global0.x, -532f, -1859f, -1688f)), 27525u, var_0.zzy).yz, var_2.c.xx >> (vec2<u32>(48998u, arg_0) % vec2<u32>(32u))), ~(~arg_0)), ~(48808u | (~var_2.c.x >> (8209u % 32u))), var_2.e);
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_2) -> StorageBuffer {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1133f * 700f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1391f - 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.b.a.x))))), func_1().c)), 1738f, -1350f);
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_1.b.a, arg_1.b.a) - vec3<f32>(1695f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1893f, -550f)), _wgslsmith_f_op_f32(trunc(arg_1.e.x))), func_2(1u).b.a.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.e.wxy) + _wgslsmith_f_op_vec3_f32(-arg_1.e.ywz)), arg_1.e.wxx)));
    global1 = array<i32, 28>();
    let var_0 = vec2<i32>(_wgslsmith_div_i32(firstTrailingBit(_wgslsmith_mod_i32(1i, -1i)), u_input.d), max(50558i, firstLeadingBit(firstLeadingBit(u_input.c.x))));
    var var_1 = true || (~func_1().a >= u_input.a);
    return StorageBuffer(-1i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 28>();
    var var_0 = func_1();
    let x = u_input.a;
    s_output = func_5(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.e << (u_input.a % 32u), global1[_wgslsmith_index_u32(4294967295u, 28u)]), min(_wgslsmith_div_vec2_i32(var_0.b.xw, u_input.c.xy), ~var_0.b.yw)), u_input.c.zx), func_2(~4294967295u));
}

