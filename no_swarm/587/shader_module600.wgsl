struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: bool,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    global0 = array<bool, 9>();
    var var_0 = Struct_4(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(638f))), 611f))), Struct_2(_wgslsmith_div_vec3_i32(select(max(vec3<i32>(u_input.b, u_input.b, 2147483647i), vec3<i32>(42120i, 1i, -2147483647i)), abs(vec3<i32>(0i, u_input.b, -12829i)), !arg_0), vec3<i32>(~0i, -u_input.b, i32(-1i) * -12287i)), Struct_1(_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b, -22987i, 1i, 0i)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, -7863i), vec4<i32>(-2147483647i, u_input.b, -1i, 0i))), select(select(arg_0, arg_0, vec3<bool>(global0[_wgslsmith_index_u32(0u, 9u)], false, global0[_wgslsmith_index_u32(4294967295u, 9u)])), select(vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 9u)], arg_0.x), arg_0), !global0[_wgslsmith_index_u32(u_input.a, 9u)]), firstTrailingBit(vec4<i32>(1i, -13179i, 28163i, u_input.b)), ~select(vec4<u32>(4294967295u, 27722u, 4294967295u, 12462u), vec4<u32>(4294967295u, u_input.a, 27128u, u_input.a), vec4<bool>(true, arg_0.x, global0[_wgslsmith_index_u32(u_input.a, 9u)], true))), min(~(vec4<u32>(u_input.a, 4294967295u, 24883u, u_input.a) << (vec4<u32>(u_input.a, u_input.a, 4294967295u, 65288u) % vec4<u32>(32u))), vec4<u32>(~14988u, 1u, 4294967295u, 1u))), !vec2<bool>(arg_0.x, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(64940u, 35227u, u_input.a, u_input.a), vec4<u32>(2470u, 80799u, u_input.a, u_input.a)), vec4<u32>(0u, u_input.a, 31109u, u_input.a)), 9u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-488f, 1068f, -509f))))));
    var var_1 = _wgslsmith_div_i32(_wgslsmith_sub_i32(firstLeadingBit(u_input.b), -_wgslsmith_div_i32(-13793i, var_0.b.a.x) & -15789i), -28147i);
    let var_2 = var_0.b.b.a & var_0.b.b.a;
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_0.d)), var_0.d);
    return 174f;
}

fn func_4(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_3, arg_3: bool) -> f32 {
    global0 = array<bool, 9>();
    let var_0 = Struct_4(-1044f, Struct_2(vec3<i32>(~u_input.b, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b, 19244i), vec2<i32>(-1i, u_input.b) << (vec2<u32>(39386u, 44055u) % vec2<u32>(32u))), ~firstLeadingBit(u_input.b)), Struct_1(_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(-5077i, -62187i, u_input.b, -2147483647i)), max(vec4<i32>(u_input.b, u_input.b, -1i, -33916i), vec4<i32>(-16848i, u_input.b, 25686i, 2147483647i))), !vec3<bool>(false, arg_3, global0[_wgslsmith_index_u32(u_input.a, 9u)]), vec4<i32>(firstTrailingBit(58945i), -1i, u_input.b, firstTrailingBit(u_input.b)), max(~vec4<u32>(u_input.a, u_input.a, u_input.a, 10189u), max(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(0u, u_input.a, u_input.a, u_input.a)))), max(vec4<u32>(u_input.a << (4294967295u % 32u), u_input.a << (u_input.a % 32u), u_input.a, u_input.a | u_input.a), select(vec4<u32>(77780u, 0u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), all(vec2<bool>(arg_3, false))))), select(select(!vec2<bool>(true, global0[_wgslsmith_index_u32(514u, 9u)]), !vec2<bool>(arg_2.c, global0[_wgslsmith_index_u32(u_input.a, 9u)]), select(vec2<bool>(true, true), vec2<bool>(true, arg_3), !vec2<bool>(arg_3, true))), vec2<bool>(true || global0[_wgslsmith_index_u32(10065u, 9u)], arg_2.b), vec2<bool>(true, arg_3)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -1108f, arg_1)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1, -1271f, arg_2.a), vec3<f32>(656f, 759f, -105f)))))))));
    let var_1 = arg_2;
    let var_2 = 1i;
    var var_3 = _wgslsmith_f_op_f32(-var_1.a) != _wgslsmith_f_op_f32(min(-150f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1104f, var_0.d.x)) * var_1.a)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-460f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(arg_1)), arg_2.a)))), _wgslsmith_f_op_f32(round(var_0.a)), arg_3)) + -969f);
}

fn func_2() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(269f, 393f) * vec2<f32>(-1449f, -139f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-582f, 279f) - vec2<f32>(1573f, 1249f)))), vec2<f32>(-1579f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -562f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(567f + -619f)), Struct_3(-159f, global0[_wgslsmith_index_u32(75880u, 9u)], true), 680f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1237f + -332f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 9u)], false, false))) - -499f))));
    var_0 = _wgslsmith_f_op_f32(floor(299f));
    let var_1 = ~1i > -abs(_wgslsmith_mod_i32(-50641i, 10119i << (u_input.a % 32u)));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(abs(~u_input.a)), u_input.a, 4294967295u), vec3<u32>(abs(u_input.a), min(u_input.a, ~(u_input.a & u_input.a)), u_input.a)), 9u)];
    return !select(select(vec3<bool>(u_input.a <= u_input.a, var_1, true), !select(vec3<bool>(true, var_1, global0[_wgslsmith_index_u32(0u, 9u)]), vec3<bool>(var_1, false, var_1), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 9u)], false, var_1)), !select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 9u)], true, false), vec3<bool>(false, global0[_wgslsmith_index_u32(41068u, 9u)], var_1), false)), !select(select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(100022u, 9u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 9u)], var_1, true), vec3<bool>(false, false, true)), vec3<bool>(true, var_1, var_1), false), true);
}

fn func_1(arg_0: Struct_5) -> Struct_1 {
    var var_0 = !(!func_2());
    var var_1 = u_input.b;
    var var_2 = vec3<bool>(~u_input.a <= (u_input.a >> (u_input.a % 32u)), !(abs(1i) != min(~u_input.b, _wgslsmith_div_i32(-1i, u_input.b))), !(!(max(1469u, 4294967295u) >= u_input.a)));
    var_0 = select(vec3<bool>(var_2.x, false, global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_sub_u32(~1u, ~u_input.a)), 9u)]), !(!(!(!vec3<bool>(true, var_0.x, true)))), !vec3<bool>(true, true, select(var_0.x, false, all(vec4<bool>(true, global0[_wgslsmith_index_u32(61631u, 9u)], var_0.x, false)))));
    let var_3 = 1u;
    return Struct_1(vec4<i32>(~2147483647i, u_input.b, select(~u_input.b, u_input.b, any(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 9u)], var_0.x, true))), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b, 2147483647i) >> (vec3<u32>(u_input.a, u_input.a, var_3) % vec3<u32>(32u)), select(vec3<i32>(u_input.b, -65343i, 21694i), vec3<i32>(-20151i, u_input.b, u_input.b), vec3<bool>(arg_0.a.b, false, var_0.x)))) | -select(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) >> (vec4<u32>(u_input.a, var_3, 18789u, 4294967295u) % vec4<u32>(32u)), ~vec4<i32>(2147483647i, 1i, u_input.b, u_input.b), true), vec3<bool>(var_2.x, all(!(!vec3<bool>(arg_0.a.b, false, false))), true), _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b, -1i, u_input.b, u_input.b) | (vec4<i32>(82349i, u_input.b, u_input.b, 1i) & vec4<i32>(1i, -9352i, 0i, 2147483647i))), -_wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(734i, 1i, u_input.b, u_input.b)), vec4<i32>(u_input.b, 4091i, u_input.b, 2147483647i))), firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, var_3, 23763u, u_input.a), vec4<u32>(u_input.a, 28955u, var_3, 0u)) ^ ~(vec4<u32>(77147u, 0u, 0u, 1u) << (vec4<u32>(u_input.a, u_input.a, u_input.a, var_3) % vec4<u32>(32u)))));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_2) -> vec4<bool> {
    var var_0 = Struct_5(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-238f, _wgslsmith_f_op_f32(f32(-1f) * -355f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -439f) + 296f)), any(select(vec4<bool>(false, arg_1.b.b.x, true, arg_1.b.b.x), !vec4<bool>(global0[_wgslsmith_index_u32(21494u, 9u)], true, false, global0[_wgslsmith_index_u32(arg_1.c.x, 9u)]), !vec4<bool>(false, arg_0.x, global0[_wgslsmith_index_u32(24325u, 9u)], global0[_wgslsmith_index_u32(arg_1.b.d.x, 9u)]))), true));
    var var_1 = firstLeadingBit(-_wgslsmith_mod_i32(-_wgslsmith_mod_i32(arg_1.b.a.x, arg_1.b.c.x), _wgslsmith_div_i32(abs(u_input.b), 2147483647i)));
    let var_2 = select(arg_1.b.b, !func_2(), !(!vec3<bool>(true, any(vec3<bool>(var_0.a.c, global0[_wgslsmith_index_u32(1u, 9u)], var_0.a.c)), -1618f >= var_0.a.a)));
    var var_3 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a.a)) * var_0.a.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1285f, -1842f))));
    var var_4 = Struct_5(Struct_3(var_3.x, true || arg_0.x, all(!select(arg_1.b.b, arg_1.b.b, arg_1.b.b))));
    return vec4<bool>(false & (true & func_1(Struct_5(var_0.a)).b.x), arg_1.b.b.x, var_2.x | arg_0.x, var_4.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(vec4<i32>(firstLeadingBit(min(1631i, -24156i)), _wgslsmith_add_i32(select(u_input.b, u_input.b, global0[_wgslsmith_index_u32(u_input.a, 9u)]), u_input.b), 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.b, -2147483647i), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, -13471i, -75213i), vec3<i32>(u_input.b, u_input.b, -1i)))), vec4<i32>(u_input.b, _wgslsmith_div_i32(u_input.b, 8955i), ~77114i, abs(u_input.b << (4294967295u % 32u))), func_5(vec2<bool>(global0[_wgslsmith_index_u32(select(u_input.a, 32729u, false), 9u)], true), Struct_2(~vec3<i32>(u_input.b, u_input.b, 1i), func_1(Struct_5(Struct_3(-410f, global0[_wgslsmith_index_u32(u_input.a, 9u)], false))), ~vec4<u32>(u_input.a, u_input.a, 4695u, u_input.a)))), vec3<bool>(!global0[_wgslsmith_index_u32(~u_input.a, 9u)], select(global0[_wgslsmith_index_u32(u_input.a, 9u)], false, global0[_wgslsmith_index_u32(u_input.a, 9u)]), false), ~(vec4<i32>(0i, firstLeadingBit(-35287i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 2147483647i, -2416i, -14595i), vec4<i32>(-17680i, u_input.b, u_input.b, -2147483647i)), -9374i | u_input.b) & vec4<i32>(u_input.b, select(0i, -2147483647i, global0[_wgslsmith_index_u32(u_input.a, 9u)]), 1i, i32(-1i) * -38018i)), _wgslsmith_clamp_vec4_u32(~select(vec4<u32>(u_input.a, 20678u, u_input.a, 0u), vec4<u32>(u_input.a, u_input.a, 41400u, u_input.a), false), ~vec4<u32>(4294967295u, 15599u, u_input.a, 0u) & vec4<u32>(18008u, u_input.a, 0u, u_input.a), abs(~vec4<u32>(u_input.a, 0u, u_input.a, 70818u))) >> (vec4<u32>(1u, ~max(u_input.a, u_input.a), func_1(Struct_5(Struct_3(-1000f, global0[_wgslsmith_index_u32(u_input.a, 9u)], global0[_wgslsmith_index_u32(117065u, 9u)]))).d.x, 4178u) % vec4<u32>(32u)));
    var var_1 = var_0;
    var var_2 = Struct_5(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -373f)))), select(var_1.b.x, var_1.b.x, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, _wgslsmith_div_u32(66504u, 4294967295u)), 9u)]), true));
    let var_3 = var_1.d.yxy;
    let var_4 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-302f + _wgslsmith_f_op_f32(-var_2.a.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -450f)), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-944f * var_2.a.a))), 369f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.a, var_2.a.a, 1000f, var_2.a.a))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, 874f, 170f, var_2.a.a), vec4<f32>(var_2.a.a, var_2.a.a, var_2.a.a, -1555f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.a, -1294f, var_2.a.a, var_2.a.a) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1230f, var_2.a.a, var_2.a.a, var_2.a.a)))))));
    var_2 = Struct_5(var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(~var_1.d, var_1.d), -35153i, abs(i32(-1i) * -23777i));
}

