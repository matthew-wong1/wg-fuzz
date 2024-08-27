struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: vec3<i32>,
    d: i32,
    e: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: Struct_1,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: vec3<bool>) -> bool {
    var var_0 = !select(0u > max(min(u_input.a, u_input.b.x), u_input.d.x ^ u_input.a), !(!any(arg_1)), arg_0);
    let var_1 = Struct_3(true, -(min(vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, -1134i), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, u_input.c.x, u_input.c.x, 85986i), vec4<i32>(u_input.c.x, u_input.c.x, 0i, -38764i), vec4<i32>(-1i, u_input.c.x, u_input.c.x, 5669i))) << (u_input.d % vec4<u32>(32u))), Struct_1(vec3<f32>(1600f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(352f - -587f) + 1f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-823f)), _wgslsmith_f_op_f32(f32(-1f) * -869f)))), arg_1), 29103u, Struct_2(u_input.c.x, select(select(select(vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x), vec4<bool>(false, true, arg_1.x, true), false), !vec4<bool>(true, true, arg_0, arg_0), false | arg_1.x), !(!vec4<bool>(true, false, arg_0, arg_0)), vec4<bool>(false, true, true, arg_1.x && arg_0)), min(countOneBits(abs(vec3<i32>(u_input.c.x, -2147483647i, 25307i))), -_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 11365i, u_input.c.x), vec3<i32>(-1817i, u_input.c.x, -15342i), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x))), 1i, abs(max(-vec2<i32>(u_input.c.x, u_input.c.x), u_input.c))));
    var_0 = true;
    let var_2 = vec4<bool>(_wgslsmith_sub_u32(~(4294967295u >> (1u % 32u)), u_input.b.x ^ 23892u) >= 0u, 1u > (_wgslsmith_div_u32(max(13395u, var_1.d), _wgslsmith_add_u32(0u, 1641u)) ^ var_1.d), any(vec4<bool>(true, arg_0, select(u_input.a >= u_input.b.x, false & arg_1.x, true), all(arg_1.xy))), arg_0);
    var var_3 = Struct_2(-_wgslsmith_dot_vec2_i32(vec2<i32>(3261i >> (1u % 32u), u_input.c.x), var_1.e.e), vec4<bool>(!arg_1.x, true, var_1.a, arg_0), _wgslsmith_add_vec3_i32(var_1.e.c, var_1.e.c), ~select(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-2147483647i, -2147483647i, 0i, -42587i)), vec4<i32>(1i, u_input.c.x, -2147483647i, -6509i)), -2147483647i, !all(vec3<bool>(arg_0, var_2.x, true))), u_input.c);
    return var_1.a;
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: f32) -> f32 {
    let var_0 = arg_2;
    var var_1 = Struct_2(-2147483647i, !vec4<bool>(true, !(0i >= var_0.b.x), arg_0, select(func_3(var_0.c.b.x, arg_2.c.b), !arg_0, true)), arg_1, -14383i, vec2<i32>(u_input.c.x, _wgslsmith_sub_i32(~(~arg_2.e.c.x), u_input.c.x)));
    let var_2 = u_input.c.x;
    let var_3 = Struct_2(abs(select(_wgslsmith_div_i32(-arg_1.x, ~(-5057i)), select(u_input.c.x, ~21850i, 4294967295u > var_0.d), func_3(!var_1.b.x, vec3<bool>(true, true, false)))), vec4<bool>(var_0.c.b.x, any(select(var_0.e.b.zyw, vec3<bool>(arg_2.a, arg_2.a, var_1.b.x), any(arg_2.e.b))), false, var_0.c.b.x && arg_2.c.b.x), abs(firstLeadingBit(abs(vec3<i32>(arg_1.x, -22843i, 41549i)))), var_1.e.x, countOneBits(vec2<i32>(2147483647i, 16760i)));
    var_1 = var_3;
    return arg_3;
}

fn func_1() -> Struct_1 {
    var var_0 = !vec2<bool>(103f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(false, vec3<i32>(1i, -64939i, u_input.c.x), Struct_3(true, vec4<i32>(u_input.c.x, u_input.c.x, 37974i, u_input.c.x), Struct_1(vec3<f32>(-1432f, 230f, 1059f), vec3<bool>(false, true, false)), 75958u, Struct_2(-2147483647i, vec4<bool>(true, false, true, true), vec3<i32>(23470i, -2147483647i, 2147483647i), u_input.c.x, vec2<i32>(u_input.c.x, -19495i))), -1065f)) - _wgslsmith_f_op_f32(abs(-942f))), any(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, false, true), 52778u == u_input.a)));
    var var_1 = Struct_3(any(vec2<bool>(u_input.d.x > ~u_input.b.x, any(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, var_0.x, false), false)))), vec4<i32>(u_input.c.x, u_input.c.x, i32(-1i) * -2147483647i, -1i) << ((vec4<u32>(38774u, 38734u, u_input.d.x, firstTrailingBit(4294967295u)) | abs(_wgslsmith_mod_vec4_u32(vec4<u32>(35533u, u_input.b.x, u_input.d.x, 0u), vec4<u32>(90285u, 73737u, 1u, u_input.b.x)))) % vec4<u32>(32u)), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-438f, 2173f, 1224f)) + vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1331f, 229f) + vec3<f32>(1244f, -960f, -1000f))))), !select(vec3<bool>(var_0.x, true, false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), var_0.x), vec3<bool>(var_0.x, true, true))), u_input.a, Struct_2(~1i, vec4<bool>(true, true, true, true), -_wgslsmith_add_vec3_i32(vec3<i32>(9907i, u_input.c.x, 11715i), firstLeadingBit(vec3<i32>(10461i, u_input.c.x, u_input.c.x))), abs(u_input.c.x & ~(-306i)), max(_wgslsmith_sub_vec2_i32(u_input.c, -u_input.c), u_input.c)));
    var var_2 = Struct_2(1i, vec4<bool>(true, (_wgslsmith_f_op_f32(-var_1.c.a.x) <= _wgslsmith_f_op_f32(-var_1.c.a.x)) || false, var_0.x, -24163i < _wgslsmith_clamp_i32(1i, _wgslsmith_mod_i32(0i, u_input.c.x), var_1.e.e.x)), _wgslsmith_clamp_vec3_i32(countOneBits(select(var_1.e.c, ~vec3<i32>(-24456i, 84653i, u_input.c.x), u_input.c.x > u_input.c.x)), var_1.b.ywz, vec3<i32>(abs(var_1.e.c.x), var_1.b.x, var_1.b.x)), firstTrailingBit(u_input.c.x), reverseBits(abs(u_input.c)));
    var_0 = vec2<bool>(var_2.b.x, var_1.c.b.x);
    var var_3 = var_1.e;
    return var_1.c;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool) -> StorageBuffer {
    return StorageBuffer(vec3<f32>(-1434f, -417f, _wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x) * vec3<f32>(-2583f, -525f, arg_0.a.x)) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1023f, -1289f, arg_0.a.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.a + arg_0.a), _wgslsmith_f_op_vec3_f32(-arg_0.a)), arg_0.a.x == _wgslsmith_f_op_f32(arg_0.a.x - -454f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1386f, -1344f, true))), arg_0.a.x, _wgslsmith_f_op_f32(-arg_0.a.x))), ~u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(), Struct_2(-u_input.c.x, vec4<bool>(true, true, true, true), ~(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, 16135i), vec3<i32>(u_input.c.x, u_input.c.x, -20269i)) ^ countOneBits(vec3<i32>(u_input.c.x, u_input.c.x, 1i))), _wgslsmith_mod_i32(u_input.c.x, u_input.c.x), u_input.c), true);
}

