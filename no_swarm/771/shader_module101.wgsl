struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -473f) - _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1138f))))));
    var var_1 = !vec4<bool>(true & !(arg_0.b.x == 0u), arg_0.a, true, any(vec2<bool>(true, true)));
    global0 = -vec4<i32>(_wgslsmith_dot_vec2_i32(abs(global0.zz), -abs(global0.wz)), select(global0.x >> (arg_0.b.x % 32u), _wgslsmith_div_i32(-1i, ~global0.x), true), ~global0.x, -9335i);
    var var_2 = _wgslsmith_mod_vec4_i32(~firstLeadingBit(vec4<i32>(-1i) * -vec4<i32>(global0.x, -1i, global0.x, global0.x)), vec4<i32>(_wgslsmith_mod_i32(global0.x, min(abs(-1i), -40844i)), 0i, -48130i, ~global0.x));
    var_1 = select(vec4<bool>(!(!(!var_1.x)), !var_1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(var_0)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(539f, -715f))), select(var_1.x, !(!var_1.x), true)), select(!select(!vec4<bool>(arg_0.a, false, true, true), vec4<bool>(arg_0.a, false, false, false), !vec4<bool>(var_1.x, arg_0.a, arg_0.a, false)), select(vec4<bool>(all(vec4<bool>(true, var_1.x, true, arg_0.a)), any(var_1.zwy), false, true), select(vec4<bool>(var_1.x, arg_0.a, arg_0.a, var_1.x), select(vec4<bool>(false, arg_0.a, var_1.x, false), vec4<bool>(false, true, var_1.x, false), vec4<bool>(var_1.x, var_1.x, true, arg_0.a)), vec4<bool>(false, true, false, arg_0.a)), !(!vec4<bool>(var_1.x, true, true, var_1.x))), !select(select(vec4<bool>(true, false, false, arg_0.a), vec4<bool>(var_1.x, true, true, true), vec4<bool>(true, var_1.x, false, var_1.x)), vec4<bool>(true, true, var_1.x, false), select(true, arg_0.a, false))), select(vec4<bool>(arg_0.a, arg_0.a, true, _wgslsmith_f_op_f32(var_0 + var_0) == _wgslsmith_f_op_f32(-var_0)), select(vec4<bool>(!var_1.x, !arg_0.a, true, var_1.x), vec4<bool>(var_1.x, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, var_1.x, var_1.x, true), !vec4<bool>(true, arg_0.a, false, true))), arg_0.a && var_1.x));
    return firstLeadingBit(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(0u, arg_0.b.x, 4294967295u)), ~arg_0.b)) ^ reverseBits(u_input.a);
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_3, arg_3: Struct_2) -> bool {
    let var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(global0.x, global0.x, _wgslsmith_mod_i32(global0.x, ~_wgslsmith_clamp_i32(19479i, 42656i, -2147483647i)), 20483i), min(_wgslsmith_div_vec4_i32(~vec4<i32>(5462i, -48474i, 0i, -108550i), select(~vec4<i32>(1376i, -7637i, global0.x, global0.x), -vec4<i32>(global0.x, global0.x, 23374i, global0.x), select(arg_3.a, arg_3.a, arg_3.a.x))), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -45881i, global0.x, global0.x) & (vec4<i32>(-51782i, -3900i, global0.x, -10345i) >> (vec4<u32>(arg_3.c, 2984u, u_input.b.x, arg_3.d.b.x) % vec4<u32>(32u))), vec4<i32>(39816i, 1i, firstLeadingBit(global0.x), 0i))));
    global0 = vec4<i32>(-1i) * -abs(firstTrailingBit(var_0) << (vec4<u32>(arg_3.c, arg_3.c, 0u, 51360u) % vec4<u32>(32u)));
    let var_1 = Struct_2(!(!vec4<bool>(arg_3.b.x, false, arg_2.a.x, true)), arg_3.a.zz, ~(~(~(~u_input.a))), arg_3.d);
    let var_2 = arg_3;
    var var_3 = reverseBits(~(~vec4<u32>(var_2.c, 1u, 106675u, u_input.b.x)) & ~max(vec4<u32>(var_1.c, arg_3.c, arg_3.d.b.x, 29113u), vec4<u32>(u_input.b.x, 21458u, arg_3.c, 35085u))) ^ select(_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(var_1.d.b.x, 4294967295u, 1u, arg_3.c)), ~vec4<u32>(var_1.d.b.x, 4294967295u, 18979u, u_input.b.x)) ^ max(min(vec4<u32>(u_input.b.x, 18420u, 1u, 0u), vec4<u32>(var_1.d.b.x, 4294967295u, 43142u, 1u)), vec4<u32>(10974u, 1527u, 87144u, 24956u)), ~select(~vec4<u32>(16559u, var_2.c, 33978u, 4294967295u), vec4<u32>(arg_3.c, var_1.d.b.x, 99168u, 0u) & vec4<u32>(1u, 1u, 0u, var_1.d.b.x), true), !(!any(vec2<bool>(var_1.a.x, true))));
    return any(!vec3<bool>(-25490i >= var_0.x, false || arg_2.a.x, var_1.a.x)) & var_1.b.x;
}

fn func_2(arg_0: vec3<u32>) -> vec4<u32> {
    global0 = -(~vec4<i32>(~global0.x, global0.x, firstTrailingBit(~1i), _wgslsmith_dot_vec3_i32(vec3<i32>(8801i, global0.x, -36523i), reverseBits(global0.wzy))));
    var var_0 = Struct_2(vec4<bool>(false, true, func_4(Struct_3(vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1190f, 1000f, 226f, 500f))), 1f, Struct_3(select(vec2<bool>(true, false), vec2<bool>(true, true), false), _wgslsmith_f_op_vec4_f32(vec4<f32>(1690f, -1311f, 2011f, 325f) + vec4<f32>(637f, -702f, 597f, -1000f))), Struct_2(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), true), vec2<bool>(true, false), func_3(Struct_1(true, vec3<u32>(71267u, u_input.a, arg_0.x))), Struct_1(false, arg_0))), 1u != arg_0.x), vec2<bool>(true, select(true, false, all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false)))), 108999u, Struct_1(true, _wgslsmith_div_vec3_u32(arg_0, arg_0)));
    global0 = vec4<i32>(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 19025i, global0.x, global0.x), vec4<i32>(0i, global0.x, global0.x, global0.x) | vec4<i32>(0i, 2147483647i, -2147483647i, -1i))), _wgslsmith_mod_i32(-1i, -max(global0.x, 4546i)), ~countOneBits(abs(global0.x)), _wgslsmith_dot_vec3_i32(min(vec3<i32>(global0.x, global0.x, global0.x), -global0.zyw), _wgslsmith_clamp_vec3_i32(global0.zyz, -vec3<i32>(-1i, -6988i, 1i), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, global0.x, 6889i), vec3<i32>(global0.x, 48522i, global0.x))))) | (_wgslsmith_div_vec4_i32(vec4<i32>(-global0.x, global0.x & global0.x, -global0.x, global0.x & global0.x), ~countOneBits(vec4<i32>(-31532i, global0.x, -1i, -54427i))) & (vec4<i32>(abs(-694i), global0.x, -global0.x, -39499i) << (firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.x, u_input.b.x, 11583u, arg_0.x), vec4<u32>(3845u, u_input.b.x, u_input.b.x, 34206u))) % vec4<u32>(32u))));
    global0 = vec4<i32>(-1i, -select(-2147483647i, global0.x, all(select(vec3<bool>(false, var_0.b.x, var_0.b.x), vec3<bool>(true, var_0.a.x, var_0.b.x), vec3<bool>(true, var_0.b.x, var_0.b.x)))), _wgslsmith_mod_i32(27153i, _wgslsmith_clamp_i32(1i, -global0.x, _wgslsmith_sub_i32(max(-2147483647i, 0i), global0.x))), i32(-1i) * -global0.x);
    let var_1 = !var_0.a;
    return _wgslsmith_div_vec4_u32(select(~(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 4294967295u, arg_0.x, var_0.d.b.x), vec4<u32>(arg_0.x, arg_0.x, 4294967295u, 46580u)) | _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 23002u, var_0.d.b.x, 1u), vec4<u32>(49232u, var_0.d.b.x, var_0.c, arg_0.x))), ~(~vec4<u32>(0u, 35087u, u_input.a, 1u) | _wgslsmith_add_vec4_u32(vec4<u32>(1u, arg_0.x, 1u, 4294967295u), vec4<u32>(var_0.d.b.x, 4294967295u, 4294967295u, arg_0.x))), var_1.x), vec4<u32>(u_input.a, u_input.b.x, arg_0.x, 23379u));
}

fn func_1(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, ~11884u, _wgslsmith_div_u32(u_input.a, arg_0.b.x) | ~arg_0.b.x, u_input.a), func_2(_wgslsmith_mod_vec3_u32(countOneBits(arg_0.b), arg_0.b)));
    global0 = countOneBits(min(-vec4<i32>(~9658i, 0i, _wgslsmith_sub_i32(1i, -22650i), i32(-1i) * -41735i), vec4<i32>(~(-1i), global0.x, global0.x, select(_wgslsmith_mod_i32(7903i, 1i), _wgslsmith_div_i32(global0.x, 1i), false))));
    let var_1 = global0.x;
    let var_2 = ~(var_0.x | countOneBits(arg_0.b.x));
    return abs(~arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.wzx;
    var var_1 = Struct_1(true, reverseBits(func_1(Struct_1(any(vec4<bool>(false, true, true, false)), vec3<u32>(1u, 51606u, 12370u)))));
    global0 = vec4<i32>(~global0.x & -27516i, _wgslsmith_dot_vec4_i32(firstLeadingBit(abs(vec4<i32>(var_0.x, 43535i, global0.x, -41136i))), vec4<i32>(~(-1i), firstTrailingBit(-global0.x), -1i, -_wgslsmith_div_i32(var_0.x, 1i))), 0i << (u_input.a % 32u), 2147483647i);
    var var_2 = Struct_2(vec4<bool>(!any(vec2<bool>(false, var_1.a)), var_1.a, var_1.a, true), !select(select(vec2<bool>(true, var_1.a), vec2<bool>(var_1.a, true), true), vec2<bool>(var_1.a, var_1.a), select(vec2<bool>(false, false), vec2<bool>(var_1.a, var_1.a), var_1.a)), ~abs(44758u), Struct_1(any(select(select(vec2<bool>(false, var_1.a), vec2<bool>(var_1.a, true), vec2<bool>(true, true)), vec2<bool>(var_1.a, var_1.a), all(vec4<bool>(false, var_1.a, var_1.a, var_1.a)))), abs(firstTrailingBit(vec3<u32>(u_input.a, var_1.b.x, var_1.b.x)))));
    global0 = select(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(global0.x, var_0.x, 15478i, var_0.x), vec4<i32>(15900i, 10205i, 5212i, var_0.x) ^ vec4<i32>(-21180i, global0.x, -2147483647i, global0.x)) >> (~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 9659u, u_input.b.x, 1u), vec4<u32>(19697u, 6703u, 33295u, var_1.b.x)) % vec4<u32>(32u)), max(~vec4<i32>(0i, global0.x, global0.x, 24991i), countOneBits(vec4<i32>(1i, var_0.x, var_0.x, 0i))) | vec4<i32>(_wgslsmith_add_i32(1499i, global0.x), 45077i, var_0.x, var_0.x)), _wgslsmith_sub_vec4_i32(~(-abs(vec4<i32>(16390i, global0.x, global0.x, var_0.x))), _wgslsmith_sub_vec4_i32(select(-vec4<i32>(-13286i, 0i, global0.x, 15045i), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, var_0.x, 2312i, 11788i), vec4<i32>(global0.x, var_0.x, 2147483647i, -47370i)), false), vec4<i32>(~2147483647i, -2147483647i, i32(-1i) * -6044i, global0.x))), all(var_2.a));
    var var_3 = Struct_2(var_2.a, var_2.b, _wgslsmith_sub_u32(var_1.b.x, _wgslsmith_dot_vec2_u32(firstTrailingBit(var_1.b.yy >> (vec2<u32>(u_input.a, 38132u) % vec2<u32>(32u))), vec2<u32>(var_1.b.x, u_input.b.x) | ~vec2<u32>(var_1.b.x, 36680u))), Struct_1(_wgslsmith_f_op_f32(-1f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-945f, -641f)) - -400f), select(_wgslsmith_div_vec3_u32(var_1.b, _wgslsmith_add_vec3_u32(vec3<u32>(41180u, var_1.b.x, u_input.a), var_1.b)), ~vec3<u32>(u_input.b.x, 1u, var_1.b.x), select(any(vec2<bool>(var_1.a, false)), true, 4294967295u == var_2.d.b.x))));
    var var_4 = vec4<bool>(func_4(Struct_3(vec2<bool>(var_2.b.x, var_2.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1449f, -222f, 1079f, -652f), vec4<f32>(1141f, -495f, 1453f, -1000f))))), -1488f, Struct_3(vec2<bool>(var_1.a, var_3.b.x), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1324f, -1477f, 2060f, -1420f), vec4<f32>(449f, 1793f, -673f, 169f), vec4<bool>(true, false, false, true))), vec4<f32>(555f, -591f, -312f, 2119f)))), Struct_2(var_3.a, select(!var_2.b, select(var_3.b, var_2.a.xz, var_2.b), true), ~(4294967295u >> (u_input.b.x % 32u)), var_3.d)), !(~(~29724u) != func_2(_wgslsmith_div_vec3_u32(vec3<u32>(var_2.c, 23378u, 1u), vec3<u32>(var_3.d.b.x, var_2.d.b.x, var_1.b.x))).x), func_2(var_3.d.b).x >= 4618u, true);
    let var_5 = select(var_3.a, select(vec4<bool>(true, true && (var_3.d.a || true), !any(var_4.zw), var_1.a | true), vec4<bool>(reverseBits(-40379i) == global0.x, true, true, var_1.a), select(select(vec4<bool>(true, true, false, var_1.a), select(var_3.a, var_2.a, vec4<bool>(var_2.d.a, true, var_4.x, true)), true), select(var_2.a, !var_3.a, !var_2.d.a), var_2.a)), false);
    var_1 = Struct_1(-_wgslsmith_sub_i32(max(var_0.x, var_0.x), 28992i) <= 1i, max(var_1.b, ~(~(var_3.d.b ^ var_1.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(var_0.x, -62182i, ~1i) & _wgslsmith_sub_i32(52523i, -(~(-1i))), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(-1985i, -1i, global0.x, var_0.x)), vec4<i32>(-28672i, var_0.x, 7636i, _wgslsmith_sub_i32(30964i, -26877i))), select(~(~vec4<i32>(0i, 1166i, var_0.x, -27119i)), vec4<i32>(select(-2147483647i, global0.x, true), 36543i, global0.x, global0.x), vec4<bool>(true, var_2.d.a, var_4.x, !var_2.b.x))));
}

