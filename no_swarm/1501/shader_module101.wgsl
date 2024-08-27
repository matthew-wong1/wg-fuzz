struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
    c: Struct_2,
    d: vec4<bool>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec3<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 17> = array<vec4<u32>, 17>(vec4<u32>(49040u, 18586u, 0u, 1u), vec4<u32>(1u, 23155u, 1u, 1u), vec4<u32>(1u, 50634u, 59242u, 0u), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(67610u, 1u, 0u, 52455u), vec4<u32>(15880u, 40639u, 0u, 3462u), vec4<u32>(4294967295u, 1u, 72830u, 1463u), vec4<u32>(29689u, 0u, 0u, 4294967295u), vec4<u32>(4294967295u, 0u, 1u, 25481u), vec4<u32>(0u, 4294967295u, 22699u, 4294967295u), vec4<u32>(4294967295u, 1u, 73047u, 96043u), vec4<u32>(0u, 37080u, 51367u, 0u), vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(1u, 67252u, 38485u, 4294967295u), vec4<u32>(0u, 11049u, 0u, 0u), vec4<u32>(4294967295u, 56087u, 1u, 4294967295u), vec4<u32>(12159u, 52493u, 27949u, 67101u));

var<private> global1: i32 = 1550i;

var<private> global2: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec2<u32>) -> bool {
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(global2.a, global2.a))))))), countOneBits(_wgslsmith_dot_vec4_i32(select(vec4<i32>(0i, -2147483647i, u_input.a.x, -1296i) >> (global0[_wgslsmith_index_u32(1823u, 17u)] % vec4<u32>(32u)), abs(vec4<i32>(global2.b, 50723i, 28688i, 2147483647i)), true), _wgslsmith_mult_vec4_i32(-vec4<i32>(40093i, global2.b, global2.b, u_input.a.x), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, global2.b, 2147483647i, u_input.a.x), vec4<i32>(17510i, u_input.a.x, -34722i, 1i))))));
    global0 = array<vec4<u32>, 17>();
    let var_0 = Struct_4(countOneBits(~max(_wgslsmith_add_vec2_u32(arg_0, arg_0), _wgslsmith_mult_vec2_u32(arg_0, arg_0))), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(min(-500f, 285f)), global2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -183f)) * _wgslsmith_f_op_vec4_f32(global2.a + global2.a)), select(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), false), !any(vec4<bool>(true, false, true, true)))), Struct_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(global2.a, vec4<f32>(-298f, 1134f, -473f, global2.a.x)))), vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(exp2(global2.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1118f), _wgslsmith_f_op_f32(global2.a.x - global2.a.x)))), vec2<bool>(true, true)), vec4<bool>(true, global2.a.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-207f * global2.a.x)), true, true), Struct_3(!select(false, true, false) && true));
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.c.a.x, -548f)) - _wgslsmith_f_op_f32(select(-479f, -1328f, var_0.e.a))), global2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1181f)) * global2.a.x)))), -13875i);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(global2.a.wzz))))) - vec3<f32>(global2.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-103f, -228f)), _wgslsmith_f_op_f32(-var_0.b.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x - -794f))));
    return true;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_4(select(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(73107u, 56568u), vec2<u32>(29778u, 10905u), vec2<u32>(16981u, 37832u)), vec2<u32>(3810u, 1u)) & (vec2<u32>(1u, 1u) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))), ~vec2<u32>(1u, 1u), false), Struct_2(global2.a, select(vec2<bool>(true, true), vec2<bool>(true, true), true)), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, -1000f, -2501f, _wgslsmith_div_f32(-1848f, 171f))), select(select(vec2<bool>(false, true), vec2<bool>(false, true), func_3(vec2<u32>(0u, 4294967295u))), vec2<bool>(select(false, false, true), global2.a.x <= global2.a.x), select(vec2<bool>(true, false), vec2<bool>(true, false), true))), select(select(vec4<bool>(false, true, global2.b != 2147483647i, any(vec2<bool>(false, true))), vec4<bool>(true, true, all(vec4<bool>(true, true, true, true)), true), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true)), Struct_3(true));
    global0 = array<vec4<u32>, 17>();
    var_0 = Struct_4(var_0.a, var_0.c, var_0.c, !(!var_0.d), var_0.e);
    let var_1 = select(abs(vec3<i32>(~u_input.a.x, countOneBits(u_input.a.x >> (4294967295u % 32u)), -55183i >> (var_0.a.x % 32u))), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(abs(-96786i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global2.b, u_input.a.x), vec3<i32>(u_input.a.x, global2.b, u_input.a.x)), reverseBits(u_input.a.x)), select(~vec3<i32>(24826i, u_input.a.x, global2.b), vec3<i32>(u_input.a.x, global2.b, global2.b) ^ vec3<i32>(global2.b, 40882i, u_input.a.x), any(var_0.d))), _wgslsmith_div_vec3_i32(~(~vec3<i32>(u_input.a.x, -2147483647i, 0i)), _wgslsmith_div_vec3_i32(select(vec3<i32>(u_input.a.x, global2.b, -25453i), vec3<i32>(u_input.a.x, global2.b, 4050i), var_0.d.x), -vec3<i32>(u_input.a.x, global2.b, global2.b)))), vec3<bool>(var_0.e.a, var_0.b.b.x, true));
    let var_2 = Struct_3(!var_0.e.a);
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(-var_0.c.a.x), any(var_0.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.b.a.x - global2.a.x))) - _wgslsmith_f_op_f32(ceil(global2.a.x))), _wgslsmith_f_op_f32(max(-141f, 849f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(514f - global2.a.x), _wgslsmith_f_op_f32(ceil(-489f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1700f)) * global2.a.x))), -2147483647i);
}

fn func_1() -> Struct_1 {
    global2 = func_2();
    let var_0 = all(select(vec3<bool>(false, true, select(global2.b > global2.b, any(vec2<bool>(false, true)), true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, all(vec3<bool>(true, true, true)), true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true)));
    global1 = ~global2.b;
    global2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x + -620f))), global2.a.x, global2.a.x, global2.a.x), -_wgslsmith_div_i32(~u_input.a.x, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, global2.b, global2.b, 0i), vec4<i32>(global2.b, 11564i, -1i, global2.b)), -vec4<i32>(global2.b, global2.b, 2147483647i, u_input.a.x))));
    var var_1 = !vec4<bool>(true && any(select(vec2<bool>(true, var_0), vec2<bool>(true, true), vec2<bool>(true, var_0))), var_0, any(select(!vec2<bool>(false, var_0), select(vec2<bool>(false, var_0), vec2<bool>(var_0, var_0), var_0), true)), false);
    return Struct_1(global2.a, -50840i);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<u32>, arg_3: bool) -> vec3<f32> {
    var var_0 = _wgslsmith_mod_i32(func_1().b, 1i);
    global1 = ~_wgslsmith_div_i32(~(-43536i), u_input.a.x);
    var var_1 = vec4<i32>(global2.b, _wgslsmith_div_i32(~func_2().b, -46419i), ~_wgslsmith_dot_vec4_i32(-vec4<i32>(39452i, global2.b, 58762i, 2147483647i), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(285i, -18388i, -1i, u_input.a.x), vec4<i32>(2147483647i, -19282i, 2147483647i, 0i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-26327i, arg_0.b, global2.b, 1848i), vec4<i32>(2147483647i, 1i, u_input.a.x, u_input.a.x), vec4<i32>(-22959i, -24374i, global2.b, -12362i)))), max(-func_1().b, 2147483647i));
    var_1 = ~(~reverseBits(countOneBits(vec4<i32>(-1i, 54672i, -56931i, var_1.x)) | (vec4<i32>(-31449i, arg_0.b, -1i, arg_0.b) ^ vec4<i32>(2147483647i, global2.b, arg_0.b, u_input.a.x))));
    var_1 = _wgslsmith_div_vec4_i32(select(select(vec4<i32>(u_input.a.x, arg_0.b, var_1.x, 10730i) << (arg_2 % vec4<u32>(32u)), vec4<i32>(1i, var_1.x, 2147483647i, 10413i), all(vec4<bool>(arg_3, false, arg_3, arg_3))) >> (~arg_2 % vec4<u32>(32u)), ~(~(vec4<i32>(-4529i, 1i, arg_0.b, 28451i) >> (arg_2 % vec4<u32>(32u)))), !any(select(vec4<bool>(arg_3, arg_3, false, false), vec4<bool>(false, arg_3, arg_3, arg_3), arg_3))), select(select(~select(vec4<i32>(0i, u_input.a.x, -13979i, 0i), vec4<i32>(arg_0.b, -2699i, var_1.x, u_input.a.x), false), vec4<i32>(_wgslsmith_clamp_i32(var_1.x, -15206i, global2.b), u_input.a.x, -24505i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, global2.b, arg_0.b), var_1.zzz)), !(arg_3 & arg_3)), _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-3607i, 2147483647i, 28942i, 1850i), vec4<i32>(-16933i, arg_0.b, 1i, var_1.x)), max(vec4<i32>(-2147483647i, arg_0.b, 48968i, -7404i), vec4<i32>(u_input.a.x, var_1.x, 1i, 1i)), ~vec4<i32>(global2.b, u_input.a.x, 27407i, var_1.x)), select(vec4<i32>(424i, 1i, 40418i, u_input.a.x), vec4<i32>(2147483647i, arg_0.b, var_1.x, 65640i), false) & -vec4<i32>(-18890i, arg_0.b, 25991i, 1i)), arg_3));
    return _wgslsmith_f_op_vec3_f32(-arg_0.a.zyx);
}

fn func_5(arg_0: vec3<f32>, arg_1: vec4<i32>) -> f32 {
    global0 = array<vec4<u32>, 17>();
    var var_0 = abs(vec2<i32>((arg_1.x << (~4294967295u % 32u)) >> (abs(0u) % 32u), u_input.a.x));
    var_0 = arg_1.yz;
    var var_1 = Struct_4(firstLeadingBit(vec2<u32>(1u, 1u)), Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-700f, 458f, 733f, arg_0.x)), _wgslsmith_f_op_vec4_f32(round(global2.a))), !vec2<bool>(true, global2.b > u_input.a.x)), Struct_2(global2.a, vec2<bool>(true, all(vec2<bool>(true, true)))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), true), true), any(vec4<bool>(true, true, true, true))), vec4<bool>(true, false, true, false)), Struct_3(false));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(1976f, -804f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-155f, var_1.b.a.x) * _wgslsmith_f_op_f32(f32(-1f) * -390f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.a.xzw), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-788f, 1388f, 785f), vec3<f32>(global2.a.x, -1000f, -1617f), vec3<bool>(true, true, false)))) + global2.a.xzw) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(func_1(), global2.a.zzy, ~global0[_wgslsmith_index_u32(4667u, 17u)], true)))), ~_wgslsmith_mult_vec4_i32(reverseBits(~vec4<i32>(-28046i, u_input.a.x, 0i, global2.b)), abs(max(vec4<i32>(-29883i, -2147483647i, -6598i, global2.b), vec4<i32>(-2147483647i, -1i, u_input.a.x, 0i))))));
    global1 = min(u_input.a.x, u_input.a.x);
    let var_1 = ~(~vec2<u32>(1u, 1u));
    var_0 = -2070f;
    var_0 = global2.a.x;
    global2 = func_1();
    var var_2 = select(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(~var_1.x, _wgslsmith_div_u32(1u, 25915u)), 1u), 1u, 4294967295u >> (firstTrailingBit(abs(var_1.x)) % 32u)), ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, var_1.x, var_1.x), vec3<u32>(0u, var_1.x, 42411u)) >> (max(~vec3<u32>(var_1.x, 14140u, var_1.x), _wgslsmith_add_vec3_u32(vec3<u32>(31376u, var_1.x, var_1.x), vec3<u32>(var_1.x, var_1.x, 4294967295u))) % vec3<u32>(32u))), select(!vec3<bool>(true, any(vec3<bool>(false, true, false)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, func_3(var_1))), vec3<bool>(func_3(vec2<u32>(0u, 38440u) | var_1), any(vec2<bool>(true, true)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.a.x, global2.a.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-687f + _wgslsmith_f_op_f32(-1573f * global2.a.x)))), -23549i, countOneBits(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(global2.b, -31250i))), global2.a.ywz, abs(~vec4<i32>(2147483647i, _wgslsmith_mult_i32(global2.b, global2.b), global2.b, -global2.b)));
}

