struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: Struct_2,
    d: Struct_2,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(true, true, false, i32(-2147483648), 711f), Struct_1(true, true, false, -66784i, 1729f), Struct_1(true, false, false, -1481i, 906f), Struct_1(true, true, false, 1i, 208f), Struct_1(true, false, false, 1i, -442f), Struct_1(true, true, true, 33180i, -1360f), Struct_1(true, true, true, 0i, 169f), Struct_1(true, false, false, 2147483647i, -413f), Struct_1(false, false, false, -1i, -1492f), Struct_1(false, false, false, 43095i, 1484f), Struct_1(true, false, true, 8233i, -1452f), Struct_1(true, false, false, -1i, -331f), Struct_1(false, true, true, -1i, 308f), Struct_1(true, false, false, 2147483647i, -715f), Struct_1(true, false, false, -14905i, 794f), Struct_1(false, true, false, 1i, 368f), Struct_1(true, false, false, -1i, -504f), Struct_1(true, true, false, i32(-2147483648), 3100f), Struct_1(true, true, true, 1i, 292f), Struct_1(false, false, false, -4046i, 360f), Struct_1(true, true, true, 1i, 855f), Struct_1(false, false, false, 0i, 1076f), Struct_1(false, false, false, -46739i, -524f), Struct_1(false, true, true, i32(-2147483648), -968f), Struct_1(false, false, true, 0i, 1000f), Struct_1(true, false, false, 38219i, 342f), Struct_1(true, true, true, -1i, -648f), Struct_1(true, false, false, -44470i, -2102f), Struct_1(false, false, true, 2147483647i, -2296f), Struct_1(true, false, true, 2147483647i, 571f), Struct_1(true, false, false, i32(-2147483648), -538f), Struct_1(true, false, false, 28477i, -440f));

var<private> global2: array<vec4<bool>, 8> = array<vec4<bool>, 8>(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false));

var<private> global3: vec4<u32> = vec4<u32>(1u, 1u, 28432u, 4504u);

var<private> global4: array<vec4<f32>, 1>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec2<u32>) -> bool {
    var var_0 = !arg_1.a.a;
    var var_1 = arg_1.a.a;
    let var_2 = _wgslsmith_mod_u32(_wgslsmith_mult_u32(~global3.x, ~_wgslsmith_add_u32(91506u, 0u)), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(u_input.d, 4294967295u, 65189u, 4294967295u)), select(vec4<u32>(u_input.d, u_input.d, arg_3.x, u_input.d), vec4<u32>(u_input.d, 73237u, 16288u, 1u), vec4<bool>(arg_1.a.c, false, arg_1.a.b, true))) << (~(vec4<u32>(4294967295u, arg_3.x, u_input.d, arg_3.x) << (vec4<u32>(u_input.d, 72672u, arg_3.x, u_input.d) % vec4<u32>(32u))) % vec4<u32>(32u)), countOneBits(vec4<u32>(arg_3.x, _wgslsmith_mod_u32(20335u, 4294967295u), _wgslsmith_mod_u32(global3.x, u_input.d), ~global3.x))));
    var var_3 = Struct_2(arg_1.a);
    var var_4 = Struct_1(false, arg_1.a.a, var_3.a.a, -1i, _wgslsmith_f_op_f32(-arg_2.x));
    return true;
}

fn func_2() -> Struct_1 {
    var var_0 = -1000f;
    var var_1 = Struct_2(Struct_1(!func_3(u_input.b, Struct_2(Struct_1(true, false, false, u_input.c.x, -907f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1086f, 509f) - vec2<f32>(-3013f, 1000f)), ~global3.zz), false, true, _wgslsmith_clamp_i32(-2147483647i, max(abs(u_input.b), ~(-35200i)), u_input.c.x), -1612f));
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(577f * var_1.a.e), -1737f, _wgslsmith_f_op_f32(select(var_1.a.e, var_1.a.e, true))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.e, var_1.a.e, 726f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-375f, var_1.a.e, var_1.a.e)))))))));
    var var_3 = Struct_1(false, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1601f * var_2.x)) >= -130f, ~(var_1.a.d >> (~(11239u << (u_input.d % 32u)) % 32u)), _wgslsmith_f_op_f32(ceil(var_1.a.e)));
    var var_4 = Struct_2(Struct_1(true, false, !var_3.b, abs(select(var_3.d, select(-1i, var_3.d, true), false)), var_2.x));
    return Struct_1(func_3(var_4.a.d, Struct_2(Struct_1(false, true, false, var_4.a.d << (23585u % 32u), -1362f)), vec2<f32>(_wgslsmith_f_op_f32(-var_3.e), -719f), _wgslsmith_sub_vec2_u32(vec2<u32>(~11186u, select(0u, global3.x, false)), vec2<u32>(49879u, global3.x))), false, var_1.a.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(2147483647i, var_1.a.d, -16731i, var_1.a.d), vec4<i32>(~1i, var_3.d, ~(-var_1.a.d), ~var_1.a.d)), _wgslsmith_f_op_f32(-var_2.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_3) -> Struct_3 {
    var var_0 = arg_0;
    var var_1 = select(_wgslsmith_sub_vec2_u32((max(vec2<u32>(109718u, 55539u), global3.xy) & firstTrailingBit(vec2<u32>(arg_2.a, global3.x))) << (~_wgslsmith_div_vec2_u32(vec2<u32>(50568u, 1u), global3.xz) % vec2<u32>(32u)), vec2<u32>(u_input.d << (29131u % 32u), arg_2.a) >> (_wgslsmith_div_vec2_u32(~global3.ww, global3.yx) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(select(vec2<u32>(global3.x, 62773u), ~global3.wy, !vec2<bool>(false, var_0.a)), select(global3.wy ^ global3.xx, ~global3.yz, vec2<bool>(false, false))), reverseBits(global3.wz)), select(select(!(!vec2<bool>(false, arg_1.a.c)), select(vec2<bool>(true, arg_1.a.c), !vec2<bool>(var_0.b, false), vec2<bool>(true, true)), _wgslsmith_div_i32(-2147483647i, 12381i) != (25260i << (global3.x % 32u))), vec2<bool>(true, !arg_1.a.b), all(vec2<bool>(true, true))));
    var_0 = arg_1.a;
    var_1 = select(global3.zx >> (select(~firstTrailingBit(vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(var_1.x, 4294967295u >> (var_1.x % 32u)), all(vec3<bool>(var_0.c, true, arg_2.c.a.a)) & true) % vec2<u32>(32u)), firstTrailingBit(vec2<u32>(arg_2.a, var_1.x)), true);
    return Struct_3(min(select(1308u, var_1.x | ~0u, func_2().c), global3.x), min(vec2<i32>(_wgslsmith_sub_i32(arg_2.b.x, _wgslsmith_sub_i32(arg_1.a.d, -13063i)), -1i | (-2147483647i >> (global3.x % 32u))), vec2<i32>(_wgslsmith_sub_i32(arg_0.d, arg_1.a.d >> (0u % 32u)), reverseBits(-1i))), arg_1, Struct_2(Struct_1(!arg_2.c.a.b, var_0.b && var_0.c, arg_2.d.a.b, var_0.d, arg_1.a.e)), max(-arg_2.e, arg_2.e));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2) -> Struct_2 {
    let var_0 = arg_0.b.x | (~reverseBits(~40838i) ^ ~arg_0.e.x);
    let var_1 = ~0u;
    let var_2 = vec2<i32>(_wgslsmith_clamp_i32(2147483647i, _wgslsmith_mod_i32(arg_1.a.d, _wgslsmith_sub_i32(2147483647i >> (1u % 32u), i32(-1i) * -27676i)), ~_wgslsmith_div_i32(arg_0.d.a.d & 2147483647i, _wgslsmith_sub_i32(arg_0.e.x, u_input.a.x))), func_4(Struct_1(arg_1.a.b, any(select(vec2<bool>(arg_0.c.a.c, true), vec2<bool>(arg_0.d.a.a, arg_1.a.a), vec2<bool>(arg_1.a.c, false))), min(-1i, -22912i) != arg_1.a.d, -2147483647i, arg_0.d.a.e), arg_0.d, Struct_3(func_4(Struct_1(arg_1.a.b, arg_1.a.b, true, 20685i, -905f), func_4(global1[_wgslsmith_index_u32(arg_0.a, 32u)], Struct_2(global1[_wgslsmith_index_u32(arg_0.a, 32u)]), Struct_3(0u, arg_0.b, Struct_2(arg_1.a), Struct_2(arg_1.a), vec4<i32>(-3601i, arg_1.a.d, u_input.a.x, arg_1.a.d))).c, func_4(arg_0.d.a, Struct_2(Struct_1(true, false, arg_0.d.a.b, 2147483647i, arg_0.d.a.e)), arg_0)).a, ~arg_0.e.zx, Struct_2(arg_1.a), arg_0.d, ~(~arg_0.e))).b.x);
    let var_3 = arg_0;
    return func_4(arg_1.a, Struct_2(Struct_1(false, var_3.d.a.c, select(true, !arg_1.a.c, true), var_3.e.x | -68641i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.a.e, var_3.d.a.e))))), Struct_3(var_3.a, vec2<i32>(_wgslsmith_div_i32(i32(-1i) * -42826i, 2147483647i ^ u_input.a.x), 2147483647i), arg_1, arg_0.c, arg_0.e)).d;
}

fn func_1() -> Struct_3 {
    let var_0 = 232f;
    let var_1 = func_5(func_4(Struct_1(true, true, !any(vec3<bool>(true, false, true)), u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0))), Struct_2(func_2()), Struct_3(~countOneBits(u_input.d), u_input.a.yz, Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, global3.x), vec3<u32>(1u, u_input.d, 53056u)), 32u)]), Struct_2(global1[_wgslsmith_index_u32(40345u, 32u)]), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.a.x, u_input.b, -45746i) >> (vec4<u32>(66990u, 3554u, u_input.d, global3.x) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(-10518i, 1i, 0i, 0i), vec4<i32>(u_input.b, u_input.a.x, u_input.a.x, u_input.c.x))))), func_4(global1[_wgslsmith_index_u32(46340u, 32u)], Struct_2(global1[_wgslsmith_index_u32(39446u, 32u)]), Struct_3(u_input.d, reverseBits(u_input.c.xx), Struct_2(Struct_1(true, true, true, -2147483647i, 1000f)), func_4(func_4(Struct_1(true, true, true, u_input.c.x, var_0), Struct_2(Struct_1(true, true, false, u_input.a.x, 1236f)), Struct_3(global3.x, vec2<i32>(34549i, -2147483647i), Struct_2(Struct_1(false, false, true, -29387i, var_0)), Struct_2(Struct_1(true, false, true, u_input.c.x, var_0)), vec4<i32>(u_input.c.x, 0i, 2147483647i, u_input.b))).c.a, func_4(global1[_wgslsmith_index_u32(global3.x, 32u)], Struct_2(global1[_wgslsmith_index_u32(u_input.d, 32u)]), Struct_3(1u, u_input.a.xy, Struct_2(Struct_1(true, true, false, 2147483647i, var_0)), Struct_2(global1[_wgslsmith_index_u32(u_input.d, 32u)]), vec4<i32>(u_input.c.x, -2147483647i, u_input.b, u_input.a.x))).c, func_4(Struct_1(true, false, true, -2147483647i, -276f), Struct_2(Struct_1(false, false, true, u_input.c.x, var_0)), Struct_3(u_input.d, vec2<i32>(u_input.a.x, u_input.c.x), Struct_2(global1[_wgslsmith_index_u32(10405u, 32u)]), Struct_2(Struct_1(true, false, true, u_input.b, var_0)), vec4<i32>(0i, 2147483647i, -20185i, -1i)))).c, _wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a.x, u_input.b, u_input.c.x, -72360i), vec4<i32>(19229i, u_input.b, u_input.a.x, 0i)))).c);
    global4 = array<vec4<f32>, 1>();
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.e), -2425f) - vec2<f32>(var_0, _wgslsmith_div_f32(-1000f, 810f)))))));
    global1 = array<Struct_1, 32>();
    return Struct_3(32799u, (abs(-u_input.c.zy) << (min(_wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.d), global3.zx), vec2<u32>(0u, 37684u)) % vec2<u32>(32u))) & vec2<i32>(countOneBits(-u_input.b), _wgslsmith_div_i32(-var_1.a.d, 2147483647i)), Struct_2(func_4(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(13738u), 1u), 32u)], Struct_2(Struct_1(false, true, var_1.a.a, 0i, -1124f)), func_4(Struct_1(true, var_1.a.a, var_1.a.c, var_1.a.d, var_0), Struct_2(global1[_wgslsmith_index_u32(81045u, 32u)]), Struct_3(u_input.d, u_input.c.yy, Struct_2(var_1.a), var_1, vec4<i32>(0i, -1i, 1i, u_input.b)))).c.a), Struct_2(Struct_1(!var_1.a.c, true, var_1.a.a, -1i, _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(floor(var_0))))), firstTrailingBit(func_4(Struct_1(0i < u_input.a.x, !var_1.a.c, true, 1i, -587f), Struct_2(Struct_1(var_1.a.b, var_1.a.b, var_1.a.a, -53424i, var_1.a.e)), Struct_3(4294967295u, vec2<i32>(1i, u_input.b), Struct_2(Struct_1(var_1.a.c, true, true, -2147483647i, var_2.x)), var_1, ~vec4<i32>(-6092i, u_input.c.x, u_input.b, 15135i))).e));
}

fn func_6(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_3) -> Struct_1 {
    global3 = ~max(vec4<u32>(~max(74790u, global3.x), ~(arg_2.a & 5557u), 0u, arg_2.a), ~(_wgslsmith_mult_vec4_u32(vec4<u32>(102289u, arg_2.a, arg_2.a, 6739u), vec4<u32>(22657u, global3.x, 4294967295u, 62935u)) & _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.a, u_input.d, 4294967295u, arg_2.a), vec4<u32>(15834u, u_input.d, 4294967295u, arg_2.a))));
    let var_0 = func_1();
    var var_1 = Struct_1(any(!vec4<bool>(all(vec2<bool>(true, arg_2.c.a.a)), true, true, arg_1.x)), var_0.d.a.c | select(true, true, false), !select(!(!arg_2.c.a.c), !var_0.c.a.b, any(!global2[_wgslsmith_index_u32(var_0.a, 8u)])), func_4(var_0.d.a, arg_2.c, var_0).c.a.d, 1144f);
    let var_2 = Struct_3(firstTrailingBit(1u), ~(~(~max(arg_2.b, vec2<i32>(var_1.d, -29569i)))), var_0.c, var_0.c, vec4<i32>(_wgslsmith_mult_i32(-countOneBits(17536i), var_0.d.a.d), _wgslsmith_div_i32(1i, _wgslsmith_mult_i32(11762i, arg_2.c.a.d)) | (_wgslsmith_mult_i32(var_1.d, arg_2.b.x) & _wgslsmith_sub_i32(8113i, 0i)), min(i32(-1i) * -u_input.c.x, arg_2.b.x), -59304i));
    global0 = all(vec3<bool>(true, false, true));
    return global1[_wgslsmith_index_u32(var_2.a, 32u)];
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = func_1().c;
    var_0 = Struct_2(arg_1);
    let var_1 = Struct_3(1u ^ _wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec2_u32(~global3.zy, select(vec2<u32>(2u, 80595u), vec2<u32>(global3.x, 1u), false)), u_input.d), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a.yz, vec2<i32>(31095i, u_input.c.x)) << (global3.wy % vec2<u32>(32u)), vec2<i32>(arg_1.d, abs(u_input.c.x | -1i)), func_4(Struct_1(true, func_3(var_0.a.d, Struct_2(Struct_1(true, var_0.a.a, true, arg_1.d, -122f)), vec2<f32>(1206f, 1085f), global3.yx), !var_0.a.c, 2147483647i, arg_0.e), Struct_2(Struct_1(true, arg_1.c, arg_0.a, 0i, 1202f)), Struct_3(73796u, -u_input.a.yz, Struct_2(global1[_wgslsmith_index_u32(u_input.d, 32u)]), Struct_2(Struct_1(true, false, arg_0.a, -7666i, -730f)), vec4<i32>(arg_1.d, var_0.a.d, arg_0.d, -10019i))).e.zx), func_1().d, func_5(func_4(Struct_1(false == arg_1.b, func_3(-1i, Struct_2(global1[_wgslsmith_index_u32(global3.x, 32u)]), vec2<f32>(473f, arg_1.e), global3.zw), all(vec3<bool>(true, true, arg_0.a)), 4054i, -995f), func_1().c, func_4(Struct_1(true, false, var_0.a.c, 2147483647i, arg_1.e), func_1().c, func_4(Struct_1(arg_1.c, arg_0.b, arg_1.b, 15870i, 1519f), Struct_2(arg_1), Struct_3(u_input.d, u_input.a.yy, Struct_2(arg_1), Struct_2(global1[_wgslsmith_index_u32(4294967295u, 32u)]), vec4<i32>(15303i, var_0.a.d, -36091i, 1i))))), func_4(var_0.a, func_4(var_0.a, Struct_2(arg_1), func_4(arg_1, Struct_2(Struct_1(arg_1.c, false, false, 1i, -1898f)), Struct_3(35049u, u_input.c.xz, Struct_2(arg_1), Struct_2(Struct_1(arg_0.b, arg_1.c, true, 2780i, var_0.a.e)), vec4<i32>(arg_1.d, arg_1.d, u_input.c.x, 16239i)))).c, func_1()).d), _wgslsmith_clamp_vec4_i32(firstTrailingBit(abs(vec4<i32>(u_input.b, var_0.a.d, 1i, 19443i) >> (vec4<u32>(0u, u_input.d, 4446u, 69878u) % vec4<u32>(32u)))), ~(-_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a.d, -1i, -17277i, -36346i), vec4<i32>(-2147483647i, arg_1.d, 1i, 1i))), ~firstTrailingBit(vec4<i32>(1i, -2147483647i, 2147483647i, 0i))));
    global1 = array<Struct_1, 32>();
    let var_2 = func_1();
    return _wgslsmith_f_op_f32(-arg_1.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    let var_1 = Struct_1(!(false & !any(vec4<bool>(false, true, false, false))), false, true, u_input.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -405f))));
    global1 = array<Struct_1, 32>();
    var var_2 = any(!(!vec2<bool>(!var_1.a, true)));
    let var_3 = global1[_wgslsmith_index_u32(1u, 32u)];
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(func_7(func_6(var_1.e, select(select(vec3<bool>(true, var_1.b, var_3.b), vec3<bool>(true, var_1.c, var_1.b), true), vec3<bool>(false, true, var_3.a), var_1.a), func_1()), Struct_1(true, true, var_3.a, select(var_1.d | var_3.d, ~(-1i), var_1.c), -278f))), var_1.e, _wgslsmith_f_op_f32(floor(func_6(_wgslsmith_f_op_f32(var_1.e + -282f), !select(vec3<bool>(false, var_1.c, true), vec3<bool>(var_1.a, var_3.b, false), vec3<bool>(true, var_1.b, var_1.a)), Struct_3(0u, vec2<i32>(-87800i, -1i), Struct_2(var_1), func_1().c, ~vec4<i32>(1i, -455i, 1i, u_input.a.x))).e)), _wgslsmith_f_op_f32(abs(var_1.e)));
    let var_5 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(var_4.xz, var_4.wz)))), _wgslsmith_div_vec2_f32(vec2<f32>(799f, var_1.e), _wgslsmith_f_op_vec2_f32(ceil(var_4.xw))), select(vec2<bool>(false, var_1.b), !vec2<bool>(true, var_1.b), vec2<bool>(var_1.c, true)))), vec2<f32>(var_4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.x * 2017f) * -648f)))), vec2<f32>(_wgslsmith_f_op_f32(748f - -367f), var_1.e), vec2<bool>(true, func_2().c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(global3.x, global3.x), _wgslsmith_mult_vec4_i32(vec4<i32>(0i ^ (var_3.d ^ var_1.d), ~(44878i | var_1.d), -u_input.a.x, firstLeadingBit(1i)), -vec4<i32>(var_3.d, u_input.b, u_input.c.x, 4568i) >> (_wgslsmith_add_vec4_u32(~vec4<u32>(1u, 4294967295u, 30776u, 0u), select(vec4<u32>(global3.x, u_input.d, global3.x, 4294967295u), vec4<u32>(global3.x, global3.x, u_input.d, 1u), true)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(step(-1413f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1042f) + var_1.e))));
}

