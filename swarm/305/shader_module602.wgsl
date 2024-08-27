struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32;

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(vec2<u32>(0u, 0u), 2147483647i, 492f, vec2<u32>(0u, 62333u), vec2<u32>(4264u, 51957u));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: u32) -> vec3<bool> {
    var var_0 = -54950i;
    let var_1 = reverseBits(-arg_0.b);
    var var_2 = arg_1;
    global3 = arg_0;
    var var_3 = false;
    return select(!select(vec3<bool>(true, true, true), vec3<bool>(true, 48745u >= global2.d.x, true), any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true)))), select(select(vec3<bool>(any(vec2<bool>(true, false)), 4294967295u < global0.e.x, false), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), all(vec2<bool>(true, true))), any(vec2<bool>(true, true))), any(vec3<bool>(true, true, true)));
}

fn func_2(arg_0: i32, arg_1: vec3<i32>) -> vec3<i32> {
    var var_0 = select(true, false, any(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), func_3(Struct_1(global0.a, 27457i, global3.c, vec2<u32>(global3.d.x, 1848u), vec2<u32>(8590u, 18475u)), Struct_1(global0.a, 60511i, global3.c, vec2<u32>(9087u, u_input.a), vec2<u32>(37278u, 63697u)), arg_1.zx, 4294967295u), vec3<bool>(true, true, true)))) && func_3(Struct_1(abs(select(vec2<u32>(global0.e.x, 53262u), vec2<u32>(13737u, global0.e.x), false)), arg_0, global2.c, _wgslsmith_add_vec2_u32(min(vec2<u32>(18660u, global2.e.x), vec2<u32>(2007u, 46466u)), global2.d), vec2<u32>(_wgslsmith_dot_vec2_u32(global2.d, vec2<u32>(70726u, 1u)), 4294967295u)), Struct_1(~(~vec2<u32>(942u, 0u)), min(-arg_0, arg_0 & 29855i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) + global0.c), vec2<u32>(abs(global2.a.x), reverseBits(global2.a.x)), global0.e), arg_1.zz, ~1u).x;
    var var_1 = arg_1;
    let var_2 = !(~(~0u << (global2.a.x % 32u)) != 1u);
    var var_3 = Struct_1(global3.d, global3.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c + -1000f) - -629f))))), select(max(min(global2.d, ~vec2<u32>(1u, 44944u)), _wgslsmith_div_vec2_u32(global3.d, global3.d)), _wgslsmith_mod_vec2_u32(global3.a, ~(~global0.d)), vec2<bool>(all(!vec3<bool>(true, false, var_2)), !(u_input.a >= u_input.a))), ~global2.e);
    var_1 = arg_1;
    return countOneBits(-vec3<i32>(global2.b, ~var_3.b, global2.b)) & vec3<i32>(~31213i, i32(-1i) * -firstLeadingBit(-2147483647i), var_1.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_1 {
    return Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(global3.a.x, _wgslsmith_mult_u32(~arg_0.d.x, 46260u)), vec2<u32>(global0.d.x, _wgslsmith_clamp_u32(~26407u, ~1u, u_input.a))), global0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-228f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.c, 944f, false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-985f)), -192f)), _wgslsmith_f_op_f32(min(-256f, -1000f)))), ~vec2<u32>(1u, 1u) << (~countOneBits(vec2<u32>(global2.d.x, 4294967295u)) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(global0.e, _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(~global2.d, ~global2.e), select(_wgslsmith_mult_vec2_u32(global3.d, vec2<u32>(arg_0.a.x, 29524u)), arg_0.e | vec2<u32>(3657u, global0.e.x), true))));
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(Struct_1(~global0.e, countOneBits(global0.b), global2.c, vec2<u32>(_wgslsmith_div_u32(1u, u_input.a), select(global0.e.x, u_input.a, true)), ~_wgslsmith_mult_vec2_u32(~vec2<u32>(global3.a.x, 26709u), vec2<u32>(global2.e.x, 55380u))), (vec3<i32>(global0.b, -global0.b, -49883i | global0.b) | ((vec3<i32>(global3.b, 47686i, global0.b) & vec3<i32>(26817i, global2.b, 2147483647i)) & vec3<i32>(-1i, 0i, global3.b))) | abs(~func_2(-5944i, vec3<i32>(-24992i, -33395i, 1i))));
    global1 = -max(-2147483647i, global0.b);
    let var_1 = !(!any(vec4<bool>(true, true, true, true)) || (false && all(vec3<bool>(false, false, true))));
    var var_2 = select(vec3<bool>(!any(vec2<bool>(false, var_1)), var_1, true), select(vec3<bool>(var_1, all(vec2<bool>(var_1, var_1)), any(select(vec4<bool>(true, true, true, var_1), vec4<bool>(true, var_1, var_1, true), vec4<bool>(false, true, false, false)))), select(!func_3(Struct_1(vec2<u32>(43135u, 1u), global3.b, global3.c, vec2<u32>(8787u, 72674u), global0.d), var_0, vec2<i32>(global0.b, global0.b), 4294967295u), select(func_3(Struct_1(global3.a, 12040i, 1328f, vec2<u32>(global0.a.x, 0u), global0.d), Struct_1(var_0.a, global0.b, global2.c, global2.a, global0.e), vec2<i32>(global2.b, 1i), var_0.a.x), !vec3<bool>(true, true, var_1), vec3<bool>(var_1, true, var_1)), !vec3<bool>(var_1, false, true)), select(vec3<bool>(var_1, any(vec3<bool>(false, var_1, true)), all(vec2<bool>(var_1, var_1))), select(vec3<bool>(false, var_1, var_1), !vec3<bool>(var_1, false, var_1), var_1), true)), false);
    var_2 = vec3<bool>(var_2.x && !var_1, true, true);
    return Struct_1(~vec2<u32>(var_0.e.x, 1u >> (global0.a.x % 32u)), _wgslsmith_sub_i32(abs(~(i32(-1i) * -62275i)), global0.b), var_0.c, _wgslsmith_mod_vec2_u32(var_0.d, vec2<u32>(u_input.a, 0u)), ~vec2<u32>(u_input.a, abs(22797u)));
}

fn func_5(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> vec4<i32> {
    let var_0 = arg_2;
    var var_1 = true;
    global3 = func_1();
    let var_2 = _wgslsmith_dot_vec4_u32(~vec4<u32>(~global2.a.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(33159u, 1u, arg_2.d.x), vec3<u32>(var_0.e.x, global0.a.x, 45961u)) % 32u), 1u, _wgslsmith_dot_vec2_u32(reverseBits(global3.e), ~vec2<u32>(global0.e.x, 72270u)), 12859u), _wgslsmith_div_vec4_u32(vec4<u32>(func_1().e.x, 33056u, 0u, 13438u) << (vec4<u32>(1u, 4294967295u, global0.e.x, max(global3.a.x, var_0.e.x)) % vec4<u32>(32u)), ~countOneBits(vec4<u32>(1u, arg_1, 1u, global3.d.x))));
    var var_3 = _wgslsmith_f_op_f32(-global3.c);
    return _wgslsmith_mult_vec4_i32(~vec4<i32>(global2.b, -global0.b, var_0.b, _wgslsmith_dot_vec3_i32(-vec3<i32>(global3.b, var_0.b, global2.b), vec3<i32>(global2.b, arg_3, 1101i))), max(select(-vec4<i32>(global2.b, arg_3, 36921i, var_0.b), vec4<i32>(reverseBits(-2147483647i), 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.b, 0i, 2147483647i), vec3<i32>(arg_2.b, -15580i, global2.b)), arg_2.b), vec4<bool>(true, true, true, true)), abs(~vec4<i32>(global0.b, arg_2.b, 852i, var_0.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (select(min(~vec4<i32>(global3.b, 10077i, 2147483647i, global2.b), vec4<i32>(-1i, 2147483647i, 23533i, -1i) & vec4<i32>(global0.b, global2.b, global3.b, global0.b)), func_5(vec3<f32>(-634f, -286f, 1000f), global0.d.x, func_1(), 50980i), any(vec3<bool>(true, true, true))) ^ select(_wgslsmith_mod_vec4_i32(vec4<i32>(32714i, global3.b, global2.b, -48581i) & vec4<i32>(global3.b, global3.b, global2.b, global3.b), _wgslsmith_mult_vec4_i32(vec4<i32>(15056i, -1i, -3263i, 7184i), vec4<i32>(global3.b, global3.b, 2147483647i, global2.b))), vec4<i32>(49238i, global3.b & 27686i, ~global2.b, -8414i << (0u % 32u)), vec4<bool>(true, true, true, true))) ^ _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-27752i, i32(-1i) * -2147483647i, abs(global3.b), _wgslsmith_div_i32(62297i, global0.b)), vec4<i32>(_wgslsmith_add_i32(global0.b, -21460i), countOneBits(-2147483647i), func_2(-1335i, vec3<i32>(2147483647i, global0.b, global3.b)).x, global0.b | global2.b)), _wgslsmith_div_vec4_i32(abs(reverseBits(vec4<i32>(0i, global0.b, global0.b, global0.b))), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-20730i, global3.b, 2147483647i, 11452i), vec4<i32>(34744i, 1i, 40146i, global3.b)))));
    var var_1 = Struct_1(vec2<u32>(64591u, ~global2.d.x) >> (~global2.d % vec2<u32>(32u)), var_0.x, global0.c, _wgslsmith_mod_vec2_u32(firstLeadingBit(reverseBits(min(global2.a, vec2<u32>(21284u, global3.e.x)))), func_1().d), vec2<u32>(u_input.a, global2.d.x));
    var var_2 = firstTrailingBit(global2.d.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c)))));
    global1 = 3524i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, ~max(var_1.d.x, 0u), 4294967295u), ~firstTrailingBit(vec3<u32>(global3.d.x, 1u, 4294967295u) ^ vec3<u32>(u_input.a, global3.e.x, 15674u))));
}

