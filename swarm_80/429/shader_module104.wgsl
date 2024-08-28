struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: i32) -> vec4<i32> {
    let var_0 = Struct_1(~arg_0.c.a, vec4<i32>(~min(-arg_0.c.c, 1i), _wgslsmith_mod_i32(15955i, -1i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4495u, 4294967295u, 24442u), arg_0.c.a) % 32u)), -(~select(u_input.d.x, 0i, false)), arg_2), max(1557i, -3606i), abs(arg_2));
    var var_1 = arg_0.d;
    var var_2 = vec3<f32>(arg_0.b.x, _wgslsmith_f_op_f32(2407f + arg_0.b.x), arg_0.b.x);
    var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(-1393f - 1424f), -1124f), vec3<f32>(_wgslsmith_f_op_f32(trunc(-1319f)), _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(-arg_0.b.x)), !(!arg_0.a.x))))));
    var_2 = arg_0.b;
    return var_0.b;
}

fn func_2() -> Struct_1 {
    var var_0 = abs(vec4<i32>(u_input.a, -1i, reverseBits(-1i), u_input.e.x) ^ _wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.e.x, u_input.e.x, 0i, u_input.a), ~vec4<i32>(u_input.a, 0i, u_input.e.x, u_input.a), func_3(Struct_2(vec2<bool>(true, false), vec3<f32>(1499f, -702f, 365f), Struct_1(vec4<u32>(4294967295u, u_input.c, 4294967295u, 0u), vec4<i32>(u_input.b, -1i, 38440i, 1i), u_input.a, -2147483647i), Struct_1(vec4<u32>(u_input.c, u_input.c, 60944u, u_input.c), vec4<i32>(u_input.d.x, u_input.e.x, -1i, -6361i), u_input.d.x, u_input.e.x)), true, u_input.b))) & func_3(Struct_2(vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(755f, -1363f, -747f))), Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 4294967295u, 3431u, 47470u), vec4<u32>(u_input.c, 9223u, u_input.c, 31920u)), -vec4<i32>(0i, 17731i, -2147483647i, -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b, u_input.a), vec3<i32>(2147483647i, u_input.d.x, u_input.d.x)), u_input.e.x ^ -2147483647i), Struct_1(vec4<u32>(u_input.c, 0u, 0u, 39161u), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, -12545i, u_input.b, u_input.e.x), vec4<i32>(u_input.a, -32853i, 29807i, -16261i)), _wgslsmith_div_i32(16419i, -11104i), _wgslsmith_dot_vec2_i32(u_input.d.xz, vec2<i32>(u_input.e.x, u_input.a)))), select(false, !any(vec4<bool>(false, false, false, true)), true), min(select(func_3(Struct_2(vec2<bool>(false, true), vec3<f32>(-504f, -1000f, -2678f), Struct_1(vec4<u32>(u_input.c, 53779u, u_input.c, 1u), vec4<i32>(u_input.d.x, 0i, -2147483647i, -100199i), 18465i, u_input.d.x), Struct_1(vec4<u32>(u_input.c, 1u, u_input.c, 1u), vec4<i32>(1i, u_input.e.x, u_input.a, u_input.b), 5921i, 0i)), false, u_input.e.x).x, -u_input.e.x, true), u_input.e.x));
    var_0 = vec4<i32>(u_input.d.x, -var_0.x, _wgslsmith_sub_i32(-20632i, var_0.x), -35938i);
    let var_1 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(select(1u, u_input.c, any(vec4<bool>(true, true, false, true))), max(~(1u << (1u % 32u)), (u_input.c & u_input.c) >> (_wgslsmith_mod_u32(u_input.c, 1u) % 32u))), 12112u);
    var_0 = vec4<i32>(var_0.x, -14984i, _wgslsmith_dot_vec4_i32(abs(firstLeadingBit(vec4<i32>(5420i, var_0.x, var_0.x, -1i))), vec4<i32>(0i | var_0.x, reverseBits(1i), ~var_0.x, i32(-1i) * -28548i)) & 1i, 46223i);
    var var_2 = var_1;
    return Struct_1(~min(_wgslsmith_div_vec4_u32(vec4<u32>(19105u, 41337u, u_input.c, var_1), ~vec4<u32>(0u, 46290u, 19437u, u_input.c)), ~vec4<u32>(1u, var_1, 1u, var_1)), -(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, 2147483647i, u_input.b, 26920i), vec4<i32>(-35102i, var_0.x, var_0.x, var_0.x))) | (~_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, u_input.d.x, -1i, var_0.x), vec4<i32>(10029i, 1i, -2147483647i, u_input.a)) ^ (-vec4<i32>(2147483647i, var_0.x, 1i, 1i) ^ ~vec4<i32>(36112i, var_0.x, var_0.x, var_0.x))), ~abs(u_input.b), reverseBits(-1i));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = _wgslsmith_sub_i32(31191i, countOneBits(arg_0));
    let var_1 = func_2();
    let var_2 = max(var_1.c, var_0);
    var var_3 = ~reverseBits(1u);
    let var_4 = select(-(var_0 & (_wgslsmith_mult_i32(-1i, u_input.b) | arg_0)), 0i, select(true && (all(vec2<bool>(false, true)) == false), abs(_wgslsmith_clamp_u32(u_input.c, var_1.a.x, 1u)) <= var_1.a.x, select(any(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, true, true)), true)));
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<bool>, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = arg_0;
    var var_1 = ~(~arg_0.a.zwy);
    var var_2 = arg_0;
    let var_3 = Struct_1(vec4<u32>(max(u_input.c, ~arg_3.c.a.x), 5956u, _wgslsmith_clamp_u32(arg_1.x, abs(4294967295u), min(u_input.c, reverseBits(43791u))), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~var_2.a.zz, abs(var_1.xx)), ~(~vec2<u32>(arg_0.a.x, arg_1.x)))), vec4<i32>(16148i, ~var_2.c, _wgslsmith_mult_i32(_wgslsmith_add_i32(-82604i >> (1u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.e.x), var_2.b.zw)), _wgslsmith_mult_i32(var_2.c, ~(-8484i))), 53682i), max(~firstLeadingBit(-2147483647i), 10563i), firstLeadingBit(-var_2.b.x) >> (_wgslsmith_add_u32(arg_3.d.a.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(23903u, 6195u), vec2<u32>(0u, arg_3.c.a.x)), arg_0.a.x)) % 32u));
    var_2 = arg_0;
    return select(vec3<bool>(any(vec2<bool>(arg_3.a.x, false)) | arg_2.x, false, false), select(!arg_2, !vec3<bool>(arg_3.a.x || arg_2.x, all(arg_2), !arg_2.x), vec3<bool>(false, any(select(vec4<bool>(true, true, arg_3.a.x, arg_3.a.x), vec4<bool>(false, arg_2.x, true, false), vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x))), arg_0.a.x == ~1u)), arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~0i;
    var var_1 = select(select(select(vec3<bool>(true, true, true), func_4(func_1(u_input.d.x), vec3<u32>(4294967295u, u_input.c, 24381u), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), Struct_2(vec2<bool>(true, false), vec3<f32>(839f, 688f, 248f), Struct_1(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<i32>(2147483647i, u_input.d.x, u_input.d.x, 0i), u_input.b, u_input.a), Struct_1(vec4<u32>(u_input.c, 101392u, u_input.c, u_input.c), vec4<i32>(39857i, 19039i, -426i, u_input.a), 3293i, u_input.a))), vec3<bool>(any(vec3<bool>(true, true, false)), true, true)), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), true), func_4(Struct_1(~(~vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)), vec4<i32>(53596i, u_input.b, ~0i, u_input.d.x << (u_input.c % 32u)), _wgslsmith_clamp_i32(-u_input.b, countOneBits(42793i), abs(-1i)), ~func_2().c), _wgslsmith_add_vec3_u32(vec3<u32>(13212u, ~42496u, 2255u), ~_wgslsmith_sub_vec3_u32(vec3<u32>(57621u, 15251u, 0u), vec3<u32>(u_input.c, 23794u, 4294967295u))), vec3<bool>(select(select(true, true, true), all(vec2<bool>(true, false)), true), true, false), Struct_2(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1350f, 306f, -352f), vec3<f32>(682f, -278f, 213f), true)), Struct_1(~vec4<u32>(u_input.c, 41752u, u_input.c, u_input.c), -vec4<i32>(u_input.a, u_input.d.x, u_input.d.x, u_input.d.x), -u_input.a, 0i), Struct_1(vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.c), firstLeadingBit(vec4<i32>(u_input.e.x, u_input.d.x, 15927i, 2147483647i)), u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, -65817i, u_input.e.x), vec3<i32>(2147483647i, 48847i, u_input.e.x))))), false);
    var_1 = !select(vec3<bool>(false, false && !var_1.x, all(select(vec3<bool>(var_1.x, false, true), vec3<bool>(var_1.x, false, var_1.x), false))), vec3<bool>(!var_1.x, true, select(true, true, u_input.c >= u_input.c)), any(vec2<bool>(!var_1.x, true)));
    let var_2 = u_input.e.x;
    let var_3 = Struct_1(~(~reverseBits(firstTrailingBit(vec4<u32>(u_input.c, u_input.c, u_input.c, 0u)))), ~(-vec4<i32>(-1i, -1678i, -2147483647i, u_input.d.x) | vec4<i32>(var_2, -16567i, -19436i, 10406i)) & firstTrailingBit(func_1(0i).b), _wgslsmith_mod_i32(_wgslsmith_div_i32(~u_input.e.x, i32(-1i) * -2147483647i), 2147483647i), -1i);
    var var_4 = vec4<i32>(1i, ~(~func_3(Struct_2(vec2<bool>(var_1.x, false), vec3<f32>(-2460f, -341f, -1237f), var_3, var_3), true, ~u_input.e.x).x), countOneBits(~_wgslsmith_mult_i32(u_input.a, var_3.c >> (u_input.c % 32u))), ~countOneBits(reverseBits(reverseBits(var_3.d))));
    var var_5 = 237f;
    var_4 = vec4<i32>(~var_2, -((var_2 | _wgslsmith_add_i32(var_2, -1i)) | var_2), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.a, min(var_2, 54328i), -1i), var_3.b), var_4.x), var_2);
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_3.a.xx), firstTrailingBit(~0i));
}

