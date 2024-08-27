struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1535f, 1460f, 1000f, -2724f);

var<private> global1: i32 = 37807i;

var<private> global2: vec2<u32> = vec2<u32>(45173u, 0u);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<u32>) -> vec4<f32> {
    global1 = abs(-1i);
    let var_0 = !any(vec3<bool>(all(vec3<bool>(true, true, true)), true, !any(vec4<bool>(false, false, false, false))));
    global2 = ~min(arg_0, vec2<u32>(_wgslsmith_mult_u32(1u, 1u), ~1u) << (max(vec2<u32>(5080u, 16604u), max(arg_0, vec2<u32>(0u, u_input.a.x))) % vec2<u32>(32u)));
    let var_1 = _wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-35560i, 19784i, 0i), vec3<i32>(2147483647i, 1i, -53242i)), ~vec3<i32>(1i, -1i, 0i)), ~firstTrailingBit(vec3<i32>(-80955i, -26134i, 0i))) & 0i;
    let var_2 = 28888u;
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(max(global0.x, global0.x)), _wgslsmith_f_op_f32(max(-636f, global0.x)), global0.x, _wgslsmith_f_op_f32(sign(global0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(883f, global0.x, 422f, -1430f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-495f, 1065f, 1809f, global0.x), vec4<f32>(global0.x, global0.x, global0.x, global0.x)))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x) - vec4<f32>(global0.x, global0.x, -2135f, global0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(295f, -471f, -1001f, global0.x) - vec4<f32>(2106f, global0.x, global0.x, global0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-195f, global0.x, global0.x, 987f), vec4<f32>(global0.x, -878f, 554f, global0.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(568f, 1187f, 2296f, -327f) + vec4<f32>(971f, -271f, global0.x, -236f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(859f, -1000f, global0.x, -390f))) - vec4<f32>(_wgslsmith_f_op_f32(exp2(global0.x)), 673f, global0.x, -927f)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(func_3(abs(_wgslsmith_sub_vec2_u32(vec2<u32>(global2.x, 28629u), u_input.a << (u_input.a % vec2<u32>(32u)))))).xw, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(u_input.a))), -1i);
    var var_1 = vec4<f32>(-646f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-290f)), _wgslsmith_f_op_vec4_f32(func_3(u_input.a & u_input.a)).x)), var_0.a.x, var_0.a.x);
    global2 = ~u_input.a;
    var_1 = arg_3.b;
    let var_2 = false;
    return arg_1.b.x;
}

fn func_2(arg_0: vec2<f32>) -> i32 {
    global1 = i32(-1i) * -firstLeadingBit(1594i);
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(global0.xy + vec2<f32>(arg_0.x, arg_0.x)), vec2<f32>(arg_0.x, global0.x)))))), vec4<f32>(arg_0.x, 1491f, arg_0.x, _wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-466f, 963f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1226f, global0.x, 1607f)), -1i), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1128f, arg_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1055f, -614f, arg_0.x, arg_0.x)), -13083i << (u_input.a.x % 32u)), vec4<i32>(-2147483647i, 0i, -2147483647i, -1i), Struct_1(_wgslsmith_f_op_vec2_f32(-global0.zz), _wgslsmith_f_op_vec4_f32(func_3(u_input.a)), firstTrailingBit(8147i))))), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -39706i, ~abs(0i), _wgslsmith_dot_vec3_i32(~vec3<i32>(1i, 0i, 0i), vec3<i32>(2147483647i, -35356i, -7306i))), ~vec4<i32>(abs(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 18317i, 45568i), vec3<i32>(2147483647i, -2147483647i, 2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -34226i), vec2<i32>(2147483647i, -1i)), 1i)));
    let var_1 = -((abs(~vec3<i32>(var_0.c, -2147483647i, -1i)) | (vec3<i32>(var_0.c, 45655i, var_0.c) << (vec3<u32>(51827u, 57863u, 1u) % vec3<u32>(32u)))) & vec3<i32>(firstLeadingBit(firstLeadingBit(var_0.c)), ~(~3736i), _wgslsmith_add_i32(i32(-1i) * -21220i, _wgslsmith_clamp_i32(2147483647i, var_0.c, var_0.c))));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1643f - 1000f), _wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_vec4_f32(-var_0.b), var_1.x);
    let var_2 = ~vec3<i32>(2147483647i, var_1.x, var_1.x);
    return var_0.c;
}

fn func_1() -> bool {
    var var_0 = -reverseBits(~(i32(-1i) * -9664i));
    var var_1 = -func_2(global0.yx);
    global1 = _wgslsmith_dot_vec3_i32(vec3<i32>(22349i, ~(-14762i), select(0i, 1i, all(vec2<bool>(false, false)))) | select(-vec3<i32>(1i, 0i, -2147483647i), reverseBits(select(vec3<i32>(0i, -53653i, -18412i), vec3<i32>(1i, -13925i, -44324i), true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)))), _wgslsmith_div_vec3_i32(-min(vec3<i32>(1i, 25768i, -27260i), vec3<i32>(-2147483647i, 18979i, 43914i)) << (vec3<u32>(_wgslsmith_mod_u32(0u, u_input.a.x), global2.x, ~u_input.a.x) % vec3<u32>(32u)), abs(-vec3<i32>(7484i, 5838i, -23358i)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 8665u), ~vec3<u32>(u_input.a.x, 26009u, global2.x)) % vec3<u32>(32u))));
    var_1 = ~(-2147483647i);
    var var_2 = vec3<bool>(all(vec3<bool>(!any(vec2<bool>(true, false)), all(vec2<bool>(true, true)), all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), true)))), any(select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), true);
    return all(select(vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -336f) <= _wgslsmith_f_op_f32(-global0.x), false, var_2.x), vec3<bool>(true, all(var_2.yy), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1001f) - 2148f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-2110f, -413f, -964f, 166f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(421f, -835f, global0.x, 560f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, 409f, global0.x) - vec4<f32>(global0.x, global0.x, global0.x, global0.x))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(sign(global0.x)))) - 564f), _wgslsmith_f_op_f32(abs(102f)), global0.x, _wgslsmith_f_op_f32(-1439f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.x, global0.x)) - _wgslsmith_f_op_f32(-global0.x)))));
    let var_1 = 1u;
    var var_2 = vec4<bool>(true, any(select(vec3<bool>(true, false, func_1()), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(false, false, true), var_1 == 64209u), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true))), all(select(vec2<bool>(true, all(vec4<bool>(true, false, true, true))), select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false)), select(vec2<bool>(true, true), vec2<bool>(true, true), true))), !(!(_wgslsmith_div_u32(24505u, u_input.a.x) < 19528u)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1069f)), -498f))));
    var var_4 = ~(~_wgslsmith_add_vec4_i32(vec4<i32>(i32(-1i) * -32452i, func_2(global0.wy), _wgslsmith_mult_i32(-16286i, -1i), 1i), firstLeadingBit(select(vec4<i32>(-472i, 2147483647i, 1i, -2147483647i), vec4<i32>(-22584i, -2147483647i, -4084i, -21521i), vec4<bool>(var_2.x, true, var_2.x, var_2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, var_4.xwz, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(280f, -1784f, _wgslsmith_f_op_f32(sign(-117f)), _wgslsmith_f_op_f32(-1001f - _wgslsmith_f_op_f32(step(global0.x, -666f)))))));
}

