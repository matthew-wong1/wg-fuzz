struct Struct_1 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(7961u, 29937u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec4<i32>) -> vec2<i32> {
    global0 = Struct_1(~(~(~(~1u))), 0u);
    global0 = arg_1;
    return arg_2.wy;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: i32) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_mod_u32(global0.a, 5391u), global0.a);
    var var_0 = select(~(-_wgslsmith_mod_vec2_i32(arg_1.xz, vec2<i32>(arg_1.x, u_input.a) & arg_1.zz)), func_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1179f))), Struct_1(~(4294967295u | arg_0.x), _wgslsmith_mult_u32(firstLeadingBit(35398u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, global0.b), arg_0.xz))), vec4<i32>(arg_1.x, arg_2, countOneBits(u_input.a) << (arg_0.x % 32u), arg_2)), !vec2<bool>((49293u | global0.b) != 126663u, all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)))));
    global0 = Struct_1(1u, ~arg_0.x);
    var var_1 = Struct_1(~_wgslsmith_dot_vec2_u32(max(arg_0.wx, arg_0.wz), arg_0.wy) | _wgslsmith_mod_u32(~(~global0.b), global0.a), global0.a);
    global0 = Struct_1(var_1.b, ~(4294967295u | global0.a));
    return Struct_1(reverseBits(~arg_0.x), global0.a ^ firstLeadingBit(abs(_wgslsmith_clamp_u32(arg_0.x, arg_0.x, arg_0.x))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>) -> f32 {
    global0 = func_2(vec4<u32>(min(~global0.a | 1u, global0.a), arg_0.b, abs(~1u), abs(~global0.b & ~1u)), min(countOneBits(~vec3<i32>(u_input.a, -2147483647i, u_input.a)), vec3<i32>(_wgslsmith_mult_i32(-2147483647i, 0i >> (global0.b % 32u)), u_input.a, _wgslsmith_mod_i32(u_input.a, _wgslsmith_div_i32(-68887i, -39478i)))), i32(-1i) * -1i);
    var var_0 = arg_1;
    let var_1 = _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(max(vec4<u32>(global0.a, arg_0.b, global0.a, arg_0.a), vec4<u32>(22236u, global0.b, arg_0.a, 56409u)), vec4<u32>(arg_0.a, 9684u, arg_0.a, 14891u) >> (vec4<u32>(110464u, 47626u, global0.b, global0.b) % vec4<u32>(32u))), ~_wgslsmith_div_vec4_u32(vec4<u32>(38416u, arg_0.b, global0.b, global0.a), vec4<u32>(54982u, 0u, arg_0.b, 16782u)), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, global0.a, arg_0.a, 4294967295u), vec4<u32>(23398u, global0.b, 0u, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(36104u, 4294967295u, 0u, global0.b), vec4<u32>(arg_0.a, 69697u, arg_0.a, arg_0.a)))), ~firstTrailingBit(min(vec4<u32>(76943u, global0.a, 94794u, global0.a), vec4<u32>(global0.b, global0.b, arg_0.b, 1u)))), vec4<u32>(~42335u, ~min(~65971u, _wgslsmith_mod_u32(global0.b, global0.b)), 0u, 1u));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1053f), all(vec4<bool>(func_2(vec4<u32>(global0.b, arg_0.a, 41650u, var_1.x), vec3<i32>(u_input.a, u_input.a, u_input.a), u_input.a).b >= var_1.x, false, true || all(vec3<bool>(true, false, false)), any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true)))))));
}

fn func_5(arg_0: f32, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1374f, arg_3.x, _wgslsmith_f_op_f32(837f - 258f)))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2414f, 134f, -496f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.x, arg_0, 1042f) - vec3<f32>(132f, 1000f, arg_0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_3.x, -1122f, -401f), vec3<f32>(613f, -346f, arg_0))))))));
    let var_1 = func_3(-305f, Struct_1(~1u, min(_wgslsmith_add_u32(arg_2.x, 1u), arg_2.x ^ 1u)), vec4<i32>(-(-33416i >> (arg_2.x % 32u)), -arg_1.x, 62360i, arg_1.x >> (_wgslsmith_clamp_u32(global0.b, arg_2.x, 0u) % 32u))).x;
    let var_2 = Struct_1(_wgslsmith_sub_u32(reverseBits(arg_2.x), select(~(~arg_2.x), 13988u, !(var_0.x < 899f))), _wgslsmith_div_u32(4294967295u, global0.a << (_wgslsmith_div_u32(1u << (arg_2.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, arg_2.x, 88193u), arg_2)) % 32u)));
    var var_3 = _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(~(~var_2.b), 7999u), func_2(vec4<u32>(arg_2.x, var_2.b, var_2.a, arg_2.x), -vec3<i32>(arg_1.x, arg_1.x, var_1), 41672i).b ^ ~(95805u << (var_2.a % 32u)), reverseBits(~(arg_2.x & var_2.a))), 747u, abs(_wgslsmith_mod_u32(65907u, 44092u)));
    var_3 = 7863u;
    return func_2(min(~(max(vec4<u32>(0u, 20564u, 1u, 0u), vec4<u32>(arg_2.x, 4294967295u, global0.b, 33627u)) | ~vec4<u32>(arg_2.x, global0.b, 0u, arg_2.x)), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(41781u, var_2.a, var_2.b, arg_2.x), vec4<u32>(4294967295u, arg_2.x, 24721u, arg_2.x)), firstLeadingBit(vec4<u32>(arg_2.x, arg_2.x, global0.a, global0.b)), _wgslsmith_mult_vec4_u32(vec4<u32>(569u, 4419u, 4294967295u, global0.a), vec4<u32>(global0.b, 82200u, var_2.a, 0u)))), ~(-countOneBits(~vec3<i32>(var_1, u_input.a, 6514i))), -54994i);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>) -> i32 {
    var var_0 = func_5(_wgslsmith_f_op_f32(func_4(func_2(~firstLeadingBit(vec4<u32>(4294967295u, global0.b, arg_0.a, 26323u)), vec3<i32>(-u_input.a, i32(-1i) * -41267i, arg_1.x), _wgslsmith_add_i32(-u_input.a, _wgslsmith_clamp_i32(arg_1.x, -2147483647i, -4016i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1377f, -1000f, 1146f, 1460f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-218f, 856f, -509f, -906f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1691f, 1257f, 783f, 1000f), vec4<f32>(-111f, 1000f, 559f, -773f)))))), ~vec2<i32>(1i, u_input.a), ~_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(30498u, 4294967295u, 0u), vec3<u32>(arg_0.b, 4294967295u, 26975u), vec3<bool>(true, false, false)), max(vec3<u32>(arg_0.b, global0.a, arg_0.a), vec3<u32>(arg_0.b, arg_0.b, arg_0.a)), vec3<u32>(45730u, global0.a, arg_0.b) << (vec3<u32>(0u, arg_0.a, 1u) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.a, 0u, arg_0.b), _wgslsmith_mult_vec3_u32(vec3<u32>(global0.b, arg_0.b, 0u), vec3<u32>(arg_0.a, 21045u, 8264u)))), vec2<f32>(-1378f, -1509f));
    var var_1 = vec2<u32>(arg_0.a, 14981u) ^ vec2<u32>(global0.a << (_wgslsmith_sub_u32(~var_0.b, 4294967295u) % 32u), ~1u);
    var var_2 = !select(select(select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), false), vec4<bool>(all(vec2<bool>(false, true)), true, true, all(vec2<bool>(false, true)))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(true, false, true))), any(vec3<bool>(true, true, true)));
    var var_3 = -11542i;
    var var_4 = countOneBits(abs(firstLeadingBit(0u)));
    return -arg_1.x;
}

fn func_6(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: vec2<u32>) -> vec3<bool> {
    let var_0 = vec4<u32>(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~20887u, 50761u), select(vec3<u32>(arg_2.x, 26145u, 4294967295u) | vec3<u32>(arg_2.x, 1u, 1u), countOneBits(vec3<u32>(global0.a, arg_2.x, 53789u)), true))), 0u, ~global0.a, _wgslsmith_mod_u32(global0.a, 121632u));
    var var_1 = Struct_1(global0.b, _wgslsmith_mod_u32(var_0.x, countOneBits(0u | arg_2.x)));
    var var_2 = vec3<bool>(any(vec4<bool>(true, _wgslsmith_sub_u32(arg_2.x, 1u) >= select(var_0.x, 4294967295u, true), true, true)), true, ~reverseBits(countOneBits(global0.b)) < var_0.x);
    var_2 = vec3<bool>(true, all(select(!(!vec2<bool>(var_2.x, var_2.x)), !(!vec2<bool>(false, var_2.x)), true)), !(var_2.x | var_2.x));
    var var_3 = vec4<bool>(var_2.x & true, all(vec4<bool>(any(vec2<bool>(false, false)), any(vec4<bool>(false, true, var_2.x, true)), select(true, arg_2.x != var_1.b, 0u == var_1.b), var_2.x)), any(var_2.xz), !var_2.x);
    return var_3.yxx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(func_6(vec3<i32>(u_input.a, -45853i, func_1(Struct_1(0u, 97372u), vec2<i32>(u_input.a, u_input.a))), vec4<i32>(2147483647i, u_input.a, min(6735i, -39290i), -2147483647i >> (global0.b % 32u)), vec2<u32>(global0.b, 17720u) >> (~vec2<u32>(0u, 3745u) % vec2<u32>(32u))), vec3<bool>(all(vec2<bool>(false, true)), 0i <= firstTrailingBit(2147483647i), any(vec3<bool>(false, true, true)) | true), vec3<bool>(func_6(vec3<i32>(13460i, 6423i, 20813i), -vec4<i32>(5245i, u_input.a, u_input.a, -1i), ~vec2<u32>(global0.b, 1u)).x, any(vec2<bool>(true, false)), false));
    global0 = func_5(_wgslsmith_f_op_f32(f32(-1f) * -1718f), ~(~abs(vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(u_input.a, -10749i))), (~(~vec3<u32>(4294967295u, 0u, 0u)) >> ((select(vec3<u32>(13781u, global0.a, 1u), vec3<u32>(2904u, 4294967295u, 25559u), var_0) | (vec3<u32>(4294967295u, global0.b, global0.a) & vec3<u32>(4294967295u, 15934u, global0.a))) % vec3<u32>(32u))) & vec3<u32>(~global0.b, ~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.b, 0u, 40000u), vec3<u32>(74158u, global0.b, 30357u)), ~2641u | ~global0.b), vec2<f32>(_wgslsmith_f_op_f32(floor(-1396f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1106f - -1415f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1273f)))))));
    global0 = func_2(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), ~(vec4<u32>(0u, global0.b, global0.a, global0.a) >> (vec4<u32>(global0.a, global0.a, global0.b, global0.b) % vec4<u32>(32u)))), countOneBits(~abs(vec4<u32>(global0.a, global0.a, 1u, global0.a)))), vec3<i32>(-u_input.a, -(~(~1i)), u_input.a), _wgslsmith_mod_i32(abs(u_input.a), -2147483647i));
    let var_1 = -51024i;
    global0 = func_2(_wgslsmith_mult_vec4_u32(countOneBits(reverseBits(~vec4<u32>(global0.b, 23845u, 21117u, 0u))), vec4<u32>(global0.a, ~3900u, ~(0u << (1u % 32u)), global0.a ^ _wgslsmith_dot_vec2_u32(vec2<u32>(global0.b, global0.a), vec2<u32>(1189u, 1u)))), max(-vec3<i32>(_wgslsmith_add_i32(var_1, u_input.a), -u_input.a, _wgslsmith_mod_i32(u_input.a, -15617i)), firstLeadingBit(vec3<i32>(func_3(1204f, Struct_1(1u, global0.b), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)).x, ~(-31882i), abs(19724i)))), var_1);
    global0 = Struct_1(0u, countOneBits(~(~(global0.b << (0u % 32u)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-431f, 1144f))))))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -2869f), vec2<f32>(-673f, -1000f), false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1171f, -1000f)), vec2<bool>(true, true))))));
    global0 = Struct_1(44367u, global0.a);
    let var_3 = select(!var_0.zy, var_0.yx, var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(-(~(-7295i))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2863f - -1000f), _wgslsmith_f_op_f32(abs(297f)), var_3.x)), 188f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.x)))), _wgslsmith_f_op_f32(trunc(var_2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.x, var_2.x, var_2.x, -905f), vec4<f32>(var_2.x, 475f, var_2.x, 1833f))) + vec4<f32>(var_2.x, -1819f, -1524f, -441f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, 158f, var_2.x, -278f), vec4<f32>(284f, var_2.x, var_2.x, var_2.x), var_3.x))))), vec4<i32>(_wgslsmith_mod_i32(2147483647i, -(34789i | var_1)), var_1, countOneBits(_wgslsmith_add_i32(~2147483647i, u_input.a)), _wgslsmith_sub_i32(u_input.a, 0i ^ u_input.a)), min(_wgslsmith_add_i32(-(33781i ^ var_1), abs(44799i)), (u_input.a >> (~global0.a % 32u)) ^ u_input.a));
}

