struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<i32>,
    d: vec4<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> vec3<f32> {
    let var_0 = -vec3<i32>(u_input.a, 0i, firstTrailingBit(52104i)) >> (~(~abs(vec3<u32>(u_input.c, 0u, u_input.c))) % vec3<u32>(32u));
    return vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -971f), -2297f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(145f)), 1675f)), _wgslsmith_f_op_f32(f32(-1f) * -470f));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2) -> u32 {
    var var_0 = Struct_1(min(_wgslsmith_clamp_i32(-1i, ~(u_input.a >> (arg_1.a.c.x % 32u)), -10756i), u_input.a), arg_1.a.b, arg_1.e.c);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -512f)) * _wgslsmith_f_op_f32(f32(-1f) * -273f))));
    let var_2 = ~firstLeadingBit(_wgslsmith_div_vec4_u32(select(vec4<u32>(9277u, arg_1.e.c.x, 0u, 1u) ^ vec4<u32>(1u, 20316u, arg_1.b, var_0.c.x), ~vec4<u32>(4294967295u, 52088u, 1u, var_0.c.x), arg_0.x), reverseBits(~vec4<u32>(0u, var_0.c.x, u_input.b, 66243u))));
    var_0 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-6427i, 2784i, arg_1.e.a), vec3<i32>(52477i, -32900i, arg_1.a.b) ^ vec3<i32>(1i, var_0.b, u_input.a)), _wgslsmith_mod_i32(abs(u_input.a), -1i), var_0.b, -33810i), _wgslsmith_add_vec4_i32(~(~vec4<i32>(arg_1.c.x, var_0.a, u_input.a, arg_1.a.a)), vec4<i32>(1i, -39621i, min(16739i, -33045i), ~(-2147483647i)))), _wgslsmith_mult_i32(var_0.b, _wgslsmith_dot_vec3_i32(vec3<i32>(abs(-1i), var_0.a << (4294967295u % 32u), var_0.a), min(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a, var_0.a, u_input.a), vec3<i32>(0i, var_0.b, 2147483647i)), vec3<i32>(var_0.b, 1i, var_0.a)))), select(abs(firstLeadingBit(vec2<u32>(arg_1.a.c.x, 0u))), ~arg_1.a.c, any(select(vec4<bool>(arg_1.d.x, false, false, false), arg_1.d, select(vec4<bool>(arg_1.d.x, arg_0.x, false, arg_1.d.x), vec4<bool>(arg_0.x, arg_1.d.x, arg_1.d.x, arg_0.x), arg_1.d)))));
    var_0 = arg_1.a;
    return max(var_0.c.x, firstLeadingBit(~_wgslsmith_clamp_u32(firstLeadingBit(u_input.c), arg_1.a.c.x >> (arg_1.a.c.x % 32u), var_0.c.x)));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec2<bool>) -> bool {
    let var_0 = arg_2.x;
    let var_1 = -23211i;
    let var_2 = _wgslsmith_f_op_vec3_f32(func_2());
    var var_3 = abs(select(vec3<u32>(func_3(vec3<bool>(false, false, var_0), Struct_2(Struct_1(var_1, arg_1, vec2<u32>(u_input.c, 0u)), 44400u, vec2<i32>(arg_1, 2147483647i), vec4<bool>(false, arg_2.x, false, var_0), Struct_1(3135i, var_1, vec2<u32>(u_input.b, 65720u)))), 1u, u_input.c), vec3<u32>(~arg_0, _wgslsmith_add_u32(u_input.b, 4294967295u), arg_0) << (select(~vec3<u32>(u_input.b, u_input.b, u_input.b), abs(vec3<u32>(2147u, arg_0, 0u)), select(vec3<bool>(arg_2.x, var_0, arg_2.x), vec3<bool>(true, false, var_0), vec3<bool>(true, false, var_0))) % vec3<u32>(32u)), !select(select(vec3<bool>(var_0, arg_2.x, false), vec3<bool>(var_0, var_0, arg_2.x), vec3<bool>(arg_2.x, true, false)), vec3<bool>(var_0, var_0, false), true)));
    var_3 = ~(~(~select(min(vec3<u32>(var_3.x, 84695u, 10599u), vec3<u32>(arg_0, u_input.c, 35586u)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 1u, 2707u), vec3<u32>(14763u, 4294967295u, var_3.x)), true)));
    return true;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_add_i32(~(~2147483647i), abs(-13972i ^ select(firstLeadingBit(u_input.a), u_input.a, true)));
    let var_1 = Struct_2(arg_1, 1u, countOneBits(-vec2<i32>(-44642i, -21417i) ^ select(vec2<i32>(arg_1.a, 0i), vec2<i32>(1i, -16961i), arg_0)) >> (vec2<u32>(~arg_1.c.x, 0u) % vec2<u32>(32u)), !vec4<bool>(all(arg_2), all(!vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x)), true, !any(vec2<bool>(arg_0, arg_2.x))), Struct_1(-abs(arg_1.a), u_input.a, arg_1.c));
    var_0 = 1i;
    var var_2 = 223f;
    var_0 = ~countOneBits(u_input.a);
    return Struct_1(arg_1.b, countOneBits(1i), vec2<u32>(_wgslsmith_clamp_u32(55043u, ~var_1.e.c.x, 1u), u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1i;
    let var_1 = Struct_1(countOneBits(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(0i, u_input.a), vec2<i32>(var_0, 0i)), ~0i, var_0)), ~abs(reverseBits(var_0)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, ~54295u), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 37841u), vec2<u32>(98750u, 4294967295u), vec2<u32>(u_input.c, u_input.b)) & ~(vec2<u32>(u_input.c, u_input.c) ^ vec2<u32>(u_input.b, u_input.b)), vec2<u32>(1u >> (firstLeadingBit(u_input.c) % 32u), (u_input.b >> (7380u % 32u)) >> (4294967295u % 32u))));
    let var_2 = var_1;
    var var_3 = func_4(func_1(29946u, -select(var_1.b, var_0, true), vec2<bool>(false, select(true, false, false))) || true, Struct_1(_wgslsmith_add_i32(min(min(var_1.a, var_1.a), 2147483647i), _wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, 52711i), vec2<i32>(u_input.a, var_2.b) | vec2<i32>(53276i, var_0))), 35820i, ~vec2<u32>(_wgslsmith_sub_u32(85558u, var_1.c.x), var_2.c.x)), select(select(vec3<bool>(-12926i < var_2.a, false, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), true), vec3<bool>(false, -30376i != var_1.b, any(vec2<bool>(true, false)))), vec3<bool>(true, true, all(vec2<bool>(true, true))), select(vec3<bool>(all(vec2<bool>(false, false)), false, false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), u_input.b > var_1.c.x), all(vec3<bool>(true, true, true)))));
    var var_4 = all(select(vec3<bool>(true, true, select(false, true, true) & true), select(vec3<bool>(all(vec4<bool>(true, false, false, true)), true, true), vec3<bool>(true, any(vec2<bool>(true, false)), any(vec3<bool>(true, true, false))), true), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true))));
    var_4 = ((-13085i & _wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, -1i, u_input.a, var_0), countOneBits(vec4<i32>(var_3.a, -2147483647i, 29131i, -1i)))) >> (~var_2.c.x % 32u)) != abs(-_wgslsmith_div_i32(~6709i, var_2.a));
    var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_div_i32(i32(-1i) * -26i, var_1.a) << (_wgslsmith_mult_u32(1u, ~min(0u, var_2.c.x)) % 32u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -313f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -669f)), 1422f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1000f)))))), var_3.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -134f))))), (firstTrailingBit(~vec3<u32>(4294967295u, var_1.c.x, 31872u)) & abs(~vec3<u32>(u_input.b, 1u, var_1.c.x))) << ((select(abs(vec3<u32>(var_2.c.x, var_3.c.x, u_input.c)), vec3<u32>(4294967295u, 4294967295u, u_input.b), any(vec2<bool>(true, true))) ^ firstTrailingBit(vec3<u32>(1u, var_2.c.x, 4294967295u) | vec3<u32>(u_input.c, 1u, var_1.c.x))) % vec3<u32>(32u)));
}

