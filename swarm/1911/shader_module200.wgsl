struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: f32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(104922u, 4294967295u, 4294967295u);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<f32>) -> vec3<u32> {
    global0 = arg_0;
    global0 = arg_0;
    global0 = ~max(~(~(arg_0 & vec3<u32>(4294967295u, arg_0.x, global0.x))), _wgslsmith_clamp_vec3_u32(vec3<u32>(firstTrailingBit(0u), ~global0.x, _wgslsmith_div_u32(u_input.b, 41686u)), arg_0 | min(arg_0, vec3<u32>(global0.x, 4294967295u, arg_0.x)), vec3<u32>(global0.x, ~u_input.b, firstTrailingBit(arg_0.x))));
    var var_0 = _wgslsmith_sub_u32(min(global0.x, 0u), 1u | (~_wgslsmith_dot_vec2_u32(arg_0.xy, arg_0.yz) >> (5770u % 32u)));
    var var_1 = !vec3<bool>(all(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true)), true);
    return reverseBits(~arg_0);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = ~abs(~_wgslsmith_sub_vec4_i32(vec4<i32>(arg_2.a, arg_2.a, u_input.a, arg_2.a), vec4<i32>(arg_2.a, arg_2.a, 0i, arg_2.a)) >> (_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(12944u, u_input.b, u_input.b, 4294967295u), vec4<u32>(4294967295u, 1u, global0.x, global0.x)), ~vec4<u32>(5240u, global0.x, 15513u, u_input.b)) % vec4<u32>(32u)));
    var var_1 = Struct_1(select(-23393i, -35078i, true));
    var var_2 = -abs(_wgslsmith_dot_vec2_i32(~var_0.wx, _wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.a, var_0.x) | var_0.wz, min(var_0.xw, var_0.yz), var_0.ww)));
    global0 = _wgslsmith_sub_vec3_u32(func_3(vec3<u32>(~29853u, max(56000u & u_input.b, abs(70113u)), u_input.b), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(451f, 1344f, 405f) + vec3<f32>(-1000f, -734f, 1971f))))))), _wgslsmith_sub_vec3_u32((vec3<u32>(4294967295u, 76949u, 0u) << (vec3<u32>(1u, u_input.b, 1u) % vec3<u32>(32u))) | abs(vec3<u32>(u_input.b, global0.x, 46190u)), vec3<u32>(global0.x, 27722u, 4294967295u) >> (~vec3<u32>(u_input.b, 40522u, 35050u) % vec3<u32>(32u))) >> (select(vec3<u32>(global0.x, global0.x, 34847u) >> (vec3<u32>(0u, u_input.b, 805u) % vec3<u32>(32u)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(41786u, 4294967295u, global0.x), vec3<u32>(u_input.b, global0.x, global0.x), vec3<u32>(1u, 125954u, 0u)), select(arg_0.xxx, vec3<bool>(arg_1.x, arg_0.x, arg_1.x), any(vec4<bool>(true, true, arg_1.x, arg_1.x)))) % vec3<u32>(32u)));
    global0 = _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(~(vec3<u32>(u_input.b, global0.x, u_input.b) >> (vec3<u32>(39429u, u_input.b, global0.x) % vec3<u32>(32u))), ~(vec3<u32>(96801u, 17016u, u_input.b) | vec3<u32>(u_input.b, u_input.b, 0u))), vec3<u32>(~1u, abs(u_input.b), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(8911u, 59596u, u_input.b)), ~vec3<u32>(global0.x, global0.x, global0.x)))), vec3<u32>(firstLeadingBit(firstTrailingBit(~0u)), ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(34591u, 0u, 36681u), u_input.b), abs(~4294967295u)));
    return Struct_1(_wgslsmith_dot_vec2_i32(var_0.wx, firstLeadingBit(-var_0.wx) | _wgslsmith_mult_vec2_i32(vec2<i32>(22334i, 19736i), vec2<i32>(arg_2.a, arg_2.a))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<u32>) -> i32 {
    let var_0 = func_2(vec4<bool>(!arg_0.x, !select(true, arg_0.x & arg_0.x, true), !arg_0.x, !arg_0.x), !(!select(vec2<bool>(arg_0.x, false), !arg_0.yx, select(arg_0.x, arg_0.x, arg_0.x))), Struct_1(_wgslsmith_clamp_i32(abs(arg_1.a), arg_1.a, u_input.a)));
    let var_1 = _wgslsmith_mult_i32(1i, -2147483647i);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(sign(511f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -333f) + _wgslsmith_f_op_f32(1037f * -866f)))));
    return 34777i;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = Struct_1(max(arg_1, arg_0.a));
    global0 = vec3<u32>(u_input.b, ~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, func_3(~vec3<u32>(global0.x, u_input.b, 44827u), vec3<f32>(-438f, 520f, 486f)).x, firstTrailingBit(u_input.b ^ 39871u)), _wgslsmith_mod_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(global0.x, 72109u, u_input.b), vec3<u32>(global0.x, 166u, global0.x)), vec3<u32>(firstLeadingBit(global0.x), _wgslsmith_mod_u32(136027u, u_input.b), ~global0.x))));
    let var_1 = !select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), select(arg_2, false, arg_2)), !any(vec3<bool>(arg_2, false, false))), vec2<bool>(true, arg_2), arg_2);
    var var_2 = Struct_1(_wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(-1i, 10466i) ^ arg_0.a, -25989i), u_input.a));
    var var_3 = vec3<bool>(false, all(select(vec3<bool>(!var_1.x, all(vec3<bool>(true, arg_2, false)), all(vec3<bool>(var_1.x, true, var_1.x))), !(!vec3<bool>(var_1.x, arg_2, false)), vec3<bool>(true, true, false))), var_1.x);
    return ~(~(~(~(~vec3<u32>(global0.x, 4294967295u, 1u)))));
}

fn func_1() -> vec3<u32> {
    global0 = func_5(Struct_1(_wgslsmith_div_i32(-67338i, u_input.a)), (_wgslsmith_div_i32(u_input.a, ~u_input.a) ^ func_4(vec4<bool>(true, true, true, true), func_2(vec4<bool>(true, false, true, true), vec2<bool>(true, true), Struct_1(u_input.a)), vec4<u32>(79534u, global0.x, u_input.b, global0.x) & vec4<u32>(u_input.b, 0u, global0.x, 27445u))) | -u_input.a, true, Struct_1(2533i >> (_wgslsmith_mod_u32(~global0.x, ~u_input.b) % 32u)));
    let var_0 = Struct_1(_wgslsmith_clamp_i32(~(-79360i), u_input.a, countOneBits(u_input.a)));
    var var_1 = func_2(vec4<bool>(!all(vec3<bool>(true, true, true)), u_input.b == 4294967295u, all(vec3<bool>(all(vec3<bool>(false, false, false)), all(vec3<bool>(true, false, true)), select(false, false, false))), any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false))))), vec2<bool>(true, !any(select(vec2<bool>(false, false), vec2<bool>(true, true), true))), func_2(vec4<bool>((u_input.b > 14524u) | true, _wgslsmith_f_op_f32(select(-257f, 1103f, true)) >= 1f, true, any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true)))), vec2<bool>(true, true), var_0));
    var_1 = func_2(select(vec4<bool>(false, true, true, ~global0.x <= u_input.b), select(vec4<bool>(true, true, true, 7131u != global0.x), vec4<bool>(true, true, true, true), false), select(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), true), vec4<bool>(any(vec4<bool>(true, false, false, false)), all(vec3<bool>(true, true, true)), true, true), true)), select(vec2<bool>(-var_1.a > _wgslsmith_sub_i32(46408i, 14460i), any(select(vec2<bool>(false, false), vec2<bool>(true, true), false))), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), false), vec4<bool>(false, true, true, true)))), var_0);
    global0 = vec3<u32>(firstTrailingBit(56595u), 49485u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(global0.zx, global0.zz, vec2<u32>(14291u, global0.x)) >> (vec2<u32>(global0.x, 0u) % vec2<u32>(32u)), vec2<u32>(~u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global0.x), global0.zy))) >> (~func_3(_wgslsmith_div_vec3_u32(vec3<u32>(global0.x, global0.x, 4294967295u), vec3<u32>(0u, 54711u, global0.x)), vec3<f32>(-1627f, -1655f, 235f)).x % 32u));
    return vec3<u32>(func_5(var_0, u_input.a, false, Struct_1(~(-var_1.a))).x, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 1u, 37138u), vec3<u32>(~19751u, 36278u, min(u_input.b, u_input.b))), ~1u), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = !select(any(vec2<bool>(all(vec3<bool>(false, false, true)), true)), !any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true))), true & !any(vec4<bool>(false, true, false, true)));
    global0 = _wgslsmith_add_vec3_u32(vec3<u32>(~4294967295u, ~min(33777u, u_input.b), 94361u), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_div_u32(~1972u, min(2993u, u_input.b)), u_input.b, ~(~1u)), min(abs(~vec3<u32>(24347u, u_input.b, 58131u)), vec3<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(53280u, 4294967295u, 4294967295u), vec3<u32>(u_input.b, 1u, 59725u)), 1u))));
    global0 = select(abs(vec3<u32>(func_3(vec3<u32>(92260u, global0.x, 1u), vec3<f32>(1655f, -107f, 546f)).x, 1u, ~1u) >> (~vec3<u32>(6883u, 45440u, u_input.b) % vec3<u32>(32u))), ~vec3<u32>(_wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b) | _wgslsmith_mod_u32(u_input.b, global0.x), _wgslsmith_add_u32(41398u, 19681u), _wgslsmith_div_u32(_wgslsmith_sub_u32(10346u, global0.x), 35114u)), !vec3<bool>(var_0, var_0, var_0 && all(vec2<bool>(var_0, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-182f, -281f, 1116f, 448f)))), abs(~vec4<u32>(u_input.b, _wgslsmith_mod_u32(global0.x, u_input.b), _wgslsmith_add_u32(global0.x, 4294967295u), func_1().x)), -1000f, 65064u, -firstLeadingBit(~_wgslsmith_add_vec3_i32(vec3<i32>(-31969i, -60022i, -1i), vec3<i32>(u_input.a, 1i, u_input.a))));
}

