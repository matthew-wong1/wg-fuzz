struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: bool, arg_3: vec2<i32>) -> f32 {
    var var_0 = Struct_1(!(!(!arg_0)), arg_1, -u_input.d, -12613i, select(arg_0, !select(select(vec4<bool>(arg_2, true, true, true), vec4<bool>(arg_2, arg_2, true, arg_2), vec4<bool>(false, arg_0.x, false, arg_2)), !vec4<bool>(false, arg_0.x, true, arg_2), !vec4<bool>(arg_0.x, arg_0.x, arg_2, false)), vec4<bool>(any(select(vec4<bool>(arg_0.x, true, false, false), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_2, false))), !arg_2, true, !(u_input.c.x == u_input.a))));
    var var_1 = vec2<bool>(true, arg_2);
    var_1 = !select(vec2<bool>(!(!arg_2), false), select(var_0.a.zz, vec2<bool>(true, true), all(!vec3<bool>(true, var_1.x, true))), all(var_0.a.zxy) || false);
    let var_2 = Struct_3(!var_0.e.x, Struct_1(select(select(select(var_0.a, var_0.a, arg_2), arg_0, false), arg_0, arg_0), min(var_0.b, -vec3<i32>(-10180i, var_0.c, u_input.d)) >> (select(vec3<u32>(0u, 34367u, u_input.a), vec3<u32>(u_input.b.x, 0u, 0u), arg_0.x) % vec3<u32>(32u)), -5195i << (u_input.c.x % 32u), ~var_0.c, arg_0), Struct_2(Struct_1(!arg_0, _wgslsmith_div_vec3_i32(select(vec3<i32>(2147483647i, u_input.e, 1i), vec3<i32>(26260i, var_0.d, 1i), true), vec3<i32>(arg_1.x, var_0.b.x, 1i) | vec3<i32>(arg_3.x, arg_1.x, u_input.e)), _wgslsmith_dot_vec2_i32(var_0.b.zx, _wgslsmith_mod_vec2_i32(vec2<i32>(-29175i, 24220i), var_0.b.zy)), var_0.c, vec4<bool>(false, u_input.e >= -46146i, arg_0.x && var_1.x, true))), -_wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.e, var_0.d, u_input.d), vec4<i32>(arg_1.x, u_input.e, 1i, 0i))), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 1i, u_input.e, 2147483647i), countOneBits(vec4<i32>(1i, 0i, arg_1.x, 600i)))));
    let var_3 = var_2.c;
    return _wgslsmith_div_f32(1937f, 984f);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = arg_2.e;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-478f + 2101f), _wgslsmith_f_op_f32(-2717f + 1105f), _wgslsmith_f_op_f32(func_3(arg_0.c.a.e, vec3<i32>(32444i, 2769i, -64500i), false, vec2<i32>(u_input.e, arg_2.c))), 190f)))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1465f, 1000f, 110f, -110f) - vec4<f32>(299f, 131f, -451f, 800f)) - vec4<f32>(1104f, -649f, -1037f, 1974f)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, 244f, 1142f, 1656f), vec4<f32>(-1457f, 200f, -1846f, -669f))), vec4<f32>(-104f, -1829f, 1906f, -2520f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(round(861f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -606f), _wgslsmith_f_op_f32(func_3(vec4<bool>(arg_1.e.x, arg_1.e.x, true, arg_2.a.x), vec3<i32>(arg_2.c, arg_2.d, arg_1.c), false, vec2<i32>(-2147483647i, u_input.e)))))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -1759f, var_1.x)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2764f, 403f, 566f, var_1.x), vec4<f32>(var_1.x, 1406f, 2455f, var_1.x)))), vec4<f32>(-294f, 368f, var_1.x, _wgslsmith_f_op_f32(var_1.x * var_1.x)), arg_2.a)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, var_1.x, -268f, var_1.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(453f, var_1.x, var_1.x, var_1.x)))));
    var var_2 = arg_0.c.a.a.x;
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 388f, 1343f)))))));
    return all(select(var_0.zwy, !select(vec3<bool>(arg_1.a.x, arg_2.e.x, true), var_0.xzy, select(arg_2.a.wyz, var_0.yww, arg_0.c.a.e.zww)), !var_0.yxz));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_1(select(select(vec4<bool>(true, true, true, true), vec4<bool>(select(true, true, true), true, func_2(Struct_3(true, Struct_1(vec4<bool>(false, false, true, false), vec3<i32>(u_input.e, u_input.d, -1i), u_input.e, u_input.e, vec4<bool>(false, true, true, true)), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec3<i32>(u_input.e, u_input.d, -2147483647i), 2147483647i, -2147483647i, vec4<bool>(false, false, false, false))), 1i), Struct_1(vec4<bool>(false, false, true, false), vec3<i32>(u_input.e, u_input.d, u_input.e), 1i, u_input.d, vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(false, false, true, true), vec3<i32>(u_input.e, 27889i, u_input.e), -1i, 43325i, vec4<bool>(false, true, true, true))), true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), false)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true)), select(vec3<i32>(u_input.d, i32(-1i) * -2147483647i, abs(_wgslsmith_add_i32(-7700i, 33916i))), reverseBits(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(17259i, u_input.d, 62301i)), ~vec3<i32>(u_input.d, u_input.d, -15785i))), any(!select(vec2<bool>(true, false), vec2<bool>(true, true), false))), u_input.e | _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.e, 0i, u_input.d), firstTrailingBit(max(vec4<i32>(-2147483647i, u_input.e, u_input.d, u_input.e), vec4<i32>(-2147483647i, -24458i, u_input.d, 1i)))), _wgslsmith_add_i32(u_input.e, abs(-3214i)), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false)), vec4<bool>(false, select(arg_0 > 1073f, false, false), !(u_input.a < 1u), true), false));
    let var_1 = Struct_2(Struct_1(!(!select(vec4<bool>(true, var_0.a.x, var_0.e.x, true), var_0.e, var_0.a.x)), var_0.b, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(75634i >> (0u % 32u), min(2188i, var_0.d), var_0.c ^ u_input.d), abs(u_input.d) | 0i, 1i ^ reverseBits(u_input.e)), _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.e, var_0.d), -18126i << ((u_input.c.x ^ u_input.b.x) % 32u)), !(!select(vec4<bool>(var_0.e.x, false, false, true), var_0.e, var_0.e.x))));
    var_0 = var_1.a;
    var var_2 = var_1.a;
    var var_3 = Struct_1(select(select(select(var_2.a, var_0.a, var_0.a), select(var_2.a, var_0.a, arg_0 <= arg_0), false), !vec4<bool>(var_2.e.x, true, var_1.a.a.x, any(var_2.e.yzx)), any(!select(vec4<bool>(var_0.a.x, true, var_0.a.x, var_2.a.x), var_2.a, var_2.e))), vec3<i32>(_wgslsmith_div_i32(var_2.c << (~4294967295u % 32u), var_2.c), -_wgslsmith_div_i32(22538i, -var_2.d), ~abs(-23322i)), var_1.a.d, _wgslsmith_sub_i32(~(-var_1.a.d), abs(var_2.b.x ^ 1i) >> (54193u % 32u)), select(!vec4<bool>(var_2.e.x, true, !var_1.a.e.x, false), var_0.a, !func_2(Struct_3(true, var_1.a, var_1, 0i), var_1.a, Struct_1(var_2.a, vec3<i32>(-29750i, -25507i, 10400i), -1i, var_0.b.x, var_1.a.e))));
    return Struct_1(var_1.a.e, vec3<i32>(_wgslsmith_div_i32(18037i, -1i), var_2.c, -_wgslsmith_mod_i32(_wgslsmith_sub_i32(-2147483647i, -1i), var_0.d)), countOneBits(abs(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(1104i, -1i, var_2.d, 7939i), vec4<i32>(var_2.c, -822i, var_0.b.x, -4580i))))), -_wgslsmith_add_i32(-45095i, _wgslsmith_add_i32(var_3.b.x, _wgslsmith_add_i32(2147483647i, var_0.c))), !vec4<bool>(false, true, true && var_2.e.x, true));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: Struct_3) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1159f, _wgslsmith_f_op_f32(1266f + -1133f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1242f, 416f, false))) - 420f))));
    var var_1 = u_input.b;
    return !(u_input.c.x >= 58992u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(func_4(func_1(1000f), true, _wgslsmith_add_i32(func_1(-153f).d, 1i), Struct_3(all(vec3<bool>(true, false, false)), func_1(666f), Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec3<i32>(u_input.e, u_input.e, u_input.e), u_input.e, u_input.d, vec4<bool>(false, false, true, true))), u_input.e)), !any(vec2<bool>(true, true))), !func_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-2322f, 891f)), _wgslsmith_f_op_f32(min(-997f, -458f)), all(vec4<bool>(true, false, false, false))))).e.xy, true);
    var_0 = select(vec2<bool>(any(vec2<bool>(!var_0.x, var_0.x)), var_0.x), vec2<bool>(true, _wgslsmith_mult_u32(_wgslsmith_div_u32(33829u, 65969u), ~u_input.b.x) > ~(~4294967295u)), func_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1050f * -700f)))).e.xx);
    let var_1 = vec2<bool>(true | (true | any(vec4<bool>(var_0.x, false, true, false))), true);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<bool>(var_0.x, false, false, var_1.x), vec3<i32>(u_input.e, u_input.e, u_input.d), var_0.x, vec2<i32>(u_input.d, -2147483647i)))), false)))));
    var_0 = vec2<bool>(func_4(func_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(358f, -452f)))), true, abs(max(-7413i, 2147483647i)) >> (u_input.b.x % 32u), Struct_3(all(func_1(318f).e.wyz), Struct_1(vec4<bool>(false, true, var_0.x, var_1.x), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.e, 1i, u_input.e), vec3<i32>(u_input.e, u_input.d, -2147483647i)), 2147483647i, 25557i, func_1(-1021f).a), Struct_2(Struct_1(vec4<bool>(false, true, var_1.x, true), vec3<i32>(u_input.e, 2263i, -71374i), u_input.d, -51908i, vec4<bool>(true, var_1.x, true, var_1.x))), _wgslsmith_sub_i32(0i, min(0i, u_input.e)))), true);
    let var_3 = -(~(~(~vec2<i32>(27325i, u_input.e))) >> (u_input.b.yy % vec2<u32>(32u)));
    var_0 = var_1;
    var var_4 = Struct_2(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(703f - -1000f) * _wgslsmith_f_op_f32(abs(-909f))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_add_vec3_u32(~u_input.b.wyw, _wgslsmith_mult_vec3_u32(~u_input.b.yxx, select(vec3<u32>(u_input.c.x, 0u, 82828u), u_input.b.wyx, var_4.a.a.x))), ~(~max(u_input.b.wzy, vec3<u32>(u_input.c.x, 61416u, 42082u))), select(!(!var_4.a.e.yxw), vec3<bool>(true, true, any(vec2<bool>(var_4.a.a.x, false))), var_4.a.a.zyx)), min(vec2<i32>(-27307i, -6341i) & vec2<i32>(-2147483647i, var_3.x), _wgslsmith_mod_vec2_i32(vec2<i32>(var_3.x, _wgslsmith_dot_vec2_i32(var_3, var_4.a.b.zy)), countOneBits(var_3 & var_4.a.b.yy))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(153f, 1090f)), _wgslsmith_f_op_f32(sign(101f)))))), 0u);
}

