struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: vec2<bool>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> vec2<bool> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-603f))), -1846f);
    var var_1 = u_input.a;
    let var_2 = firstTrailingBit(min(abs(u_input.a) | _wgslsmith_mod_u32(4294967295u & u_input.a, _wgslsmith_clamp_u32(59286u, u_input.a, 4294967295u)), 0u));
    var var_3 = select(min(~(~(~vec3<u32>(95781u, 78512u, 16310u))), ~select(vec3<u32>(u_input.a, 5305u, u_input.a), ~vec3<u32>(1u, u_input.a, 0u), true)), countOneBits(_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(var_2, var_2, 0u)), vec3<u32>(68291u, 98272u, var_2))) ^ _wgslsmith_mod_vec3_u32(~vec3<u32>(27190u, u_input.a, u_input.a), ~(vec3<u32>(0u, u_input.a, var_2) | vec3<u32>(0u, 4294967295u, var_2))), any(!vec3<bool>(true, any(vec2<bool>(true, false)), any(vec2<bool>(false, false)))));
    let var_4 = Struct_1(~max(-_wgslsmith_dot_vec3_i32(vec3<i32>(17200i, -6240i, -68235i), vec3<i32>(0i, -1i, 0i)), _wgslsmith_dot_vec3_i32(min(vec3<i32>(-74293i, 39514i, 2147483647i), vec3<i32>(14314i, -1i, 1i)), abs(vec3<i32>(38316i, 2147483647i, 2147483647i)))), -19022i, var_0.x);
    return vec2<bool>(true, true);
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = -2147483647i;
    var_0 = 52896i;
    let var_1 = func_3();
    let var_2 = _wgslsmith_add_i32(1784i, _wgslsmith_mult_i32(1i << (u_input.a % 32u), -40616i));
    let var_3 = -173f;
    return Struct_2(Struct_1(countOneBits(-34982i), -9060i, var_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-171f, _wgslsmith_f_op_f32(ceil(var_3)))))), firstLeadingBit(~_wgslsmith_div_vec2_u32(~vec2<u32>(33964u, arg_0), ~vec2<u32>(arg_0, arg_0))));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: f32, arg_3: i32) -> vec3<i32> {
    var var_0 = func_2(_wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, arg_1) | _wgslsmith_sub_u32(0u, 0u), ~0u) & (arg_1 >> (4294967295u % 32u)));
    let var_1 = vec4<i32>(-1i) * -((vec4<i32>(46686i, 1i, var_0.a.a, 0i) >> (select(vec4<u32>(0u, arg_1, 0u, 1u), vec4<u32>(37338u, u_input.a, 20855u, 5466u), true) % vec4<u32>(32u))) & vec4<i32>(i32(-1i) * -1i, -64729i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.b, var_0.a.a, -33139i, -1i), vec4<i32>(0i, var_0.a.b, arg_3, 25983i)), abs(arg_3)));
    var_0 = Struct_2(func_2(var_0.c.x).a, -448f, vec2<u32>(var_0.c.x, max(max(0u, arg_1), ~select(arg_1, u_input.a, true))));
    var var_2 = func_2(0u).a;
    var_0 = func_2(var_0.c.x);
    return ~(-((~vec3<i32>(var_2.b, 0i, -22703i) << (~vec3<u32>(41471u, 0u, 1u) % vec3<u32>(32u))) | max(min(var_1.wzy, var_1.zzz), -vec3<i32>(102725i, var_2.a, arg_3))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(func_1(1026f, ~1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -629f))), _wgslsmith_clamp_i32(~(-11744i), -(~43608i), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(16172i, 0i, -1i, 0i), vec4<i32>(1i, -21497i, 0i, 0i))))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(453f * -1660f)))), 1710f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1344f) * func_2(57910u).b), 2226f, true))), -169f);
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x), 1f, _wgslsmith_f_op_f32(-var_1.x)));
    let var_2 = 1008f;
    var var_3 = Struct_3(~(~abs(vec3<u32>(1u, u_input.a, u_input.a))), var_0.x, select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), !func_3(), select(vec2<bool>(true, true), func_3(), vec2<bool>(true, true))), !func_3(), ~_wgslsmith_sub_u32(7608u, u_input.a) > u_input.a), vec3<u32>(0u, 4294967295u, 8165u));
    var_3 = Struct_3(~vec3<u32>(1u, 14785u, ~_wgslsmith_dot_vec3_u32(var_3.a, var_3.d)), 42212i, select(func_3(), vec2<bool>((var_3.c.x && var_3.c.x) && true, var_3.c.x), all(select(vec2<bool>(var_3.c.x, var_3.c.x), var_3.c, vec2<bool>(true, var_3.c.x))) & false), vec3<u32>(func_2(firstLeadingBit(_wgslsmith_sub_u32(var_3.a.x, 32760u))).c.x, ~0u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, u_input.a, var_3.d.x, var_3.a.x)), min(vec4<u32>(57081u, 33703u, u_input.a, var_3.d.x) & vec4<u32>(16247u, 4294967295u, 1u, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(var_3.d.x, u_input.a, var_3.a.x, var_3.a.x), vec4<u32>(4294967295u, 35776u, 46390u, var_3.a.x))))));
    var var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1782f)), _wgslsmith_f_op_f32(round(var_1.x))), _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-1431f * -479f)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-173f, var_1.x)))), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-212f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1334f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(vec3<u32>(40486u, 62714u, 15239u), var_3.a) << (abs(vec3<u32>(101161u, ~1u, ~var_3.d.x)) % vec3<u32>(32u)), max(func_2(var_3.a.x).a.b, 0i));
}

