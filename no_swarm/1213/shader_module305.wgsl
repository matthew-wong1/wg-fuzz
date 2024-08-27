struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 18503i;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> bool {
    let var_0 = ~vec3<u32>(1u, 1u & u_input.b, u_input.a.x);
    global0 = _wgslsmith_mult_i32(_wgslsmith_div_i32(~(-firstTrailingBit(u_input.c.x)), abs(26827i)), _wgslsmith_dot_vec4_i32(reverseBits(u_input.c), _wgslsmith_sub_vec4_i32(-u_input.c, select(~u_input.c, -vec4<i32>(u_input.c.x, u_input.c.x, -1i, 28772i), vec4<bool>(true, true, true, true)))));
    let var_1 = arg_1.b;
    let var_2 = true;
    let var_3 = Struct_1(-u_input.c.zww, 1340f);
    return var_2;
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = vec3<f32>(arg_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -1130f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b * -735f)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.b))));
    var var_2 = Struct_2(abs(vec2<u32>(select(_wgslsmith_div_u32(u_input.a.x, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.b), vec2<u32>(27313u, u_input.b)), true), _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 88461u))), arg_2, arg_2);
    global0 = _wgslsmith_mod_i32(arg_2.a.x >> (60598u % 32u), ~(-(~countOneBits(var_2.c.a.x))));
    var var_3 = ~u_input.c.x;
    return select(vec3<bool>(!(!(!arg_1)), arg_1, _wgslsmith_sub_u32(27436u, var_2.a.x & var_2.a.x) > (~var_2.a.x >> (u_input.a.x % 32u))), vec3<bool>(arg_0.x < (arg_0.x >> (~4294967295u % 32u)), arg_1, arg_1), all(vec2<bool>(select(arg_1, true, arg_1), all(select(vec2<bool>(false, false), vec2<bool>(arg_1, true), vec2<bool>(arg_1, true))))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    var var_0 = func_4(u_input.c, all(vec3<bool>(arg_1.x < 0i, true, u_input.c.x > 33669i)) && (select(func_3(1196f, arg_2.c), any(vec3<bool>(false, false, false)), true) || !all(vec4<bool>(false, true, false, true))), Struct_1(vec3<i32>(~_wgslsmith_mod_i32(arg_1.x, 2147483647i), 2147483647i, -23245i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1784f)))) + arg_0.x)));
    let var_1 = Struct_1(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(arg_2.b.a, arg_2.b.a), firstLeadingBit(arg_2.c.a)), _wgslsmith_div_vec3_i32(vec3<i32>(arg_2.b.a.x, arg_1.x, arg_2.c.a.x), vec3<i32>(38300i, arg_1.x, arg_2.c.a.x)), max(-vec3<i32>(arg_1.x, arg_2.b.a.x, 20522i), arg_2.b.a)), ~vec3<i32>(firstTrailingBit(15848i), ~arg_2.c.a.x, 45639i), select(-arg_2.c.a << (abs(u_input.a) % vec3<u32>(32u)), select(vec3<i32>(arg_1.x, 14795i, arg_2.c.a.x), _wgslsmith_mult_vec3_i32(u_input.c.zwy, u_input.c.zxx), false), func_3(_wgslsmith_f_op_f32(arg_2.b.b * 200f), arg_2.c))), arg_3);
    global0 = 47212i;
    var var_2 = Struct_2(u_input.a.xz, arg_2.b, var_1);
    var var_3 = var_2.c.b;
    return Struct_1(min(~(var_2.b.a & _wgslsmith_mod_vec3_i32(vec3<i32>(-45540i, 2147483647i, u_input.c.x), vec3<i32>(0i, 45387i, 1i))), var_2.c.a), -2198f);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_add_i32(min(-(~(-2147483647i)), ~(~(-1i))), arg_0.a.x);
    global0 = _wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(var_0), u_input.c.x), arg_3.a.zy);
    let var_1 = Struct_2(_wgslsmith_div_vec2_u32(vec2<u32>(~u_input.a.x, firstTrailingBit(1u)) ^ select(_wgslsmith_mult_vec2_u32(u_input.a.xy, u_input.a.xz), reverseBits(u_input.a.yz), true), vec2<u32>(u_input.b, firstTrailingBit(1u))), arg_3, Struct_1(select(select(arg_1.a, arg_3.a, select(false, true, true)), -select(vec3<i32>(-22680i, arg_0.a.x, arg_0.a.x), arg_3.a, true), true), arg_0.b));
    var var_2 = arg_1;
    var_2 = func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b + 375f) + -1000f)), _wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1359f, -1197f))), max(u_input.c.xww, vec3<i32>(arg_1.a.x, 0i, -34838i)), var_1, arg_2.b).b)), ~(~(vec3<i32>(var_2.a.x, var_2.a.x, arg_0.a.x) ^ (u_input.c.xyw & vec3<i32>(u_input.c.x, arg_1.a.x, -1i)))), Struct_2(abs(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.a.x, var_1.a.x), vec2<u32>(0u, u_input.b), var_1.a), ~var_1.a)), var_1.c, arg_1), -147f);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1858f - arg_3.b) * _wgslsmith_f_op_f32(select(arg_2.b, arg_1.b, true))), var_2.b)), var_2.b);
}

fn func_1() -> u32 {
    global0 = u_input.c.x;
    let var_0 = _wgslsmith_mult_u32(u_input.a.x, abs(abs(_wgslsmith_mod_u32(u_input.a.x | u_input.a.x, _wgslsmith_div_u32(u_input.b, u_input.b)))));
    var var_1 = var_0;
    let var_2 = Struct_1(u_input.c.zyw, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-569f)), 1336f), _wgslsmith_f_op_f32(f32(-1f) * -308f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(Struct_1(u_input.c.zzw, -601f), Struct_1(u_input.c.xyx, 1326f), Struct_1(u_input.c.wxw, 2148f), func_2(vec2<f32>(-1557f, 1278f), vec3<i32>(u_input.c.x, 16728i, u_input.c.x), Struct_2(vec2<u32>(u_input.a.x, 48790u), Struct_1(vec3<i32>(-46648i, u_input.c.x, 1i), 1282f), Struct_1(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), 833f)), 462f))))));
    var var_3 = Struct_2(~vec2<u32>(u_input.a.x, 64307u), Struct_1(select(vec3<i32>(countOneBits(u_input.c.x), var_2.a.x, 1i), ~var_2.a, true), var_2.b), func_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1914f, 308f))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.b, 1000f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.b, 278f))))))), func_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1313f, -1153f))), vec2<f32>(1193f, -947f))), countOneBits(var_2.a) | _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -2147483647i, var_2.a.x), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), var_2.a), Struct_2(_wgslsmith_add_vec2_u32(vec2<u32>(var_0, 4294967295u), vec2<u32>(76237u, var_0)), var_2, var_2), 1898f).a, Struct_2(~abs(vec2<u32>(1810u, 1691u)), Struct_1(u_input.c.wxy | var_2.a, _wgslsmith_f_op_f32(select(var_2.b, var_2.b, false))), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b, 1000f)), vec3<i32>(u_input.c.x, u_input.c.x, var_2.a.x), Struct_2(u_input.a.yz, Struct_1(var_2.a, var_2.b), Struct_1(u_input.c.xyz, var_2.b)), -579f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-996f, var_2.b, false)), _wgslsmith_f_op_f32(abs(794f)))))));
    return abs(u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.yxy >> (vec3<u32>(~4294967295u, u_input.a.x, u_input.b) % vec3<u32>(32u));
    global0 = -1i;
    global0 = -((11159i << ((func_1() << (_wgslsmith_div_u32(u_input.b, u_input.a.x) % 32u)) % 32u)) | 22190i);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-582f * 569f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-438f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1097f, -621f, true)), _wgslsmith_f_op_f32(-139f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(154f)) - -1000f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-965f - -153f))))));
    let var_2 = func_2(var_1.xy, select(_wgslsmith_add_vec3_i32(-abs(vec3<i32>(0i, 38349i, u_input.c.x)), ~(vec3<i32>(var_0.x, 8489i, 2147483647i) & u_input.c.xxz)), firstTrailingBit(firstTrailingBit(var_0)), !all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false)))), Struct_2(vec2<u32>(abs(~u_input.a.x), u_input.b), func_2(vec2<f32>(_wgslsmith_f_op_f32(688f - 1429f), var_1.x), countOneBits(vec3<i32>(26495i, var_0.x, -1620i)), Struct_2(select(u_input.a.yx, u_input.a.xy, true), Struct_1(var_0, var_1.x), func_2(var_1.xz, vec3<i32>(-11831i, 1i, u_input.c.x), Struct_2(vec2<u32>(1u, 34402u), Struct_1(vec3<i32>(19340i, 26201i, var_0.x), -1000f), Struct_1(vec3<i32>(-22150i, -2147483647i, var_0.x), 236f)), var_1.x)), -702f), Struct_1(~u_input.c.yxw >> (select(vec3<u32>(u_input.a.x, u_input.a.x, 9932u), u_input.a, false) % vec3<u32>(32u)), _wgslsmith_f_op_f32(select(443f, _wgslsmith_f_op_f32(abs(var_1.x)), u_input.b == 0u)))), -102f).b;
    global0 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-828f, var_2, var_1.x, -1509f)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_2, -1373f, -734f, -1209f), vec4<f32>(var_2, 1904f, var_2, 1349f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(385f, 1079f, var_2, var_1.x) + vec4<f32>(var_2, var_1.x, 177f, -1000f))), vec4<bool>(true, true, true, true))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_2, -118f)))), ~vec4<u32>(~firstTrailingBit(u_input.b), max(u_input.a.x, ~0u), 1u, 43537u));
}

