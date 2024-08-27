struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32) -> vec3<f32> {
    var var_0 = Struct_4(vec3<bool>(true, all(vec2<bool>(false, true)), any(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)))), Struct_1(vec3<i32>(u_input.b.x, -2147483647i, _wgslsmith_mult_i32(2147483647i, 0i)) >> (countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0, 2193u, arg_0), vec3<u32>(arg_0, arg_0, 110354u), vec3<u32>(66353u, 1u, arg_0))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(round(1f)), firstTrailingBit(_wgslsmith_div_vec4_u32(select(vec4<u32>(arg_0, 94280u, arg_0, arg_0), vec4<u32>(45818u, arg_0, 0u, 41164u), true), vec4<u32>(24355u, 36631u, 50926u, arg_0)))), _wgslsmith_sub_vec4_i32(vec4<i32>(-u_input.a, _wgslsmith_clamp_i32(2147483647i ^ u_input.a, u_input.a ^ u_input.a, u_input.a | 1i), 21141i, _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.a, u_input.a), 1i)), vec4<i32>(2147483647i << (_wgslsmith_mod_u32(0u, arg_0) % 32u), -14463i, u_input.b.x, _wgslsmith_add_i32(22003i, 11190i) ^ ~u_input.a)), Struct_2(Struct_1(vec3<i32>(u_input.a ^ 35394i, u_input.a, u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -245f)), vec4<u32>(_wgslsmith_sub_u32(23708u, arg_0), arg_0, ~43314u, ~0u)), min(~min(vec2<u32>(686u, 96610u), vec2<u32>(1u, arg_0)), vec2<u32>(102348u >> (1u % 32u), ~235u))));
    var_0 = Struct_4(var_0.a, Struct_1(firstLeadingBit(-(var_0.d.a.a << (var_0.b.c.yzy % vec3<u32>(32u)))), var_0.d.a.b, vec4<u32>(~1u, _wgslsmith_add_u32(33941u, ~arg_0), arg_0, 3997u)), _wgslsmith_mult_vec4_i32(~(~vec4<i32>(1i, u_input.a, u_input.a, var_0.d.a.a.x)), -abs(var_0.c)) | _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_mult_i32(u_input.b.x, 2147483647i), -35338i, 1i), vec4<i32>(~var_0.d.a.a.x, -u_input.b.x, -var_0.d.a.a.x, u_input.b.x)), var_0.d);
    let var_1 = ~2147483647i;
    let var_2 = -496f;
    var_0 = Struct_4(select(var_0.a, vec3<bool>(_wgslsmith_add_i32(var_0.b.a.x, var_0.b.a.x) <= _wgslsmith_mod_i32(-13749i, var_0.d.a.a.x), var_0.a.x, all(vec4<bool>(var_0.a.x, var_0.a.x, true, true))), true & (var_0.a.x && true)), var_0.b, firstLeadingBit(vec4<i32>(-5902i, -u_input.a | var_0.d.a.a.x, var_0.c.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, -940i, -11902i, -12601i), select(var_0.c, vec4<i32>(1i, u_input.b.x, var_1, -13714i), var_0.a.x)))), var_0.d);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1265f - -1782f), var_0.d.a.b)), var_2)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(var_0.d.a.b - 136f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(var_2, -122f)), _wgslsmith_div_f32(var_2, -880f))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-180f, var_0.d.a.b), _wgslsmith_f_op_f32(f32(-1f) * -919f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.d.a.b)), 638f, _wgslsmith_f_op_f32(-var_0.b.b)) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(214f, 1151f, 755f))))))));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: vec4<u32>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -1055f, arg_0.a.b) - vec3<f32>(arg_1, 424f, 401f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.b, arg_0.a.b, 434f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -814f, arg_0.a.b))) - _wgslsmith_f_op_vec3_f32(func_3(arg_2.x))));
    var var_1 = true;
    var var_2 = vec4<bool>(true, !(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.b, 403f) * _wgslsmith_f_op_f32(abs(1000f))) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * 547f), -653f)), false, true);
    return vec3<i32>(reverseBits((arg_0.a.a.x >> (arg_0.a.c.x % 32u)) << (arg_2.x % 32u)), _wgslsmith_dot_vec2_i32(firstLeadingBit(abs(vec2<i32>(u_input.b.x, 49524i))), abs(arg_0.a.a.zz) | -u_input.b), 1i) | ~(-arg_0.a.a);
}

fn func_4(arg_0: f32, arg_1: vec3<i32>) -> Struct_4 {
    var var_0 = Struct_1(-vec3<i32>(1i, func_2(Struct_2(Struct_1(arg_1, 584f, vec4<u32>(1u, 1u, 0u, 4294967295u)), vec2<u32>(10185u, 4294967295u)), _wgslsmith_f_op_f32(arg_0 + -573f), vec4<u32>(4294967295u, 0u, 45808u, 4294967295u)).x, -arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(447f)), _wgslsmith_f_op_f32(abs(461f))))), ~(~(select(vec4<u32>(0u, 1u, 22369u, 65348u), vec4<u32>(5780u, 11068u, 26624u, 45463u), vec4<bool>(false, false, false, false)) & vec4<u32>(0u, 4294967295u, 25345u, 16805u))));
    var_0 = Struct_1(~_wgslsmith_add_vec3_i32(var_0.a | -arg_1, reverseBits(vec3<i32>(arg_1.x, 1i, arg_1.x))), _wgslsmith_f_op_f32(f32(-1f) * -1567f), firstTrailingBit(var_0.c));
    var var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(func_2(Struct_2(Struct_1(arg_1, 1697f, vec4<u32>(0u, 0u, var_0.c.x, 0u)), ~vec2<u32>(var_0.c.x, 86123u)), var_0.b, var_0.c).x, min(arg_1.x, arg_1.x), u_input.b.x), min(~_wgslsmith_add_vec3_i32(-arg_1, ~vec3<i32>(-34956i, 35589i, var_0.a.x)), func_2(Struct_2(Struct_1(vec3<i32>(arg_1.x, var_0.a.x, u_input.b.x), -401f, var_0.c), var_0.c.zy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b, -850f))), max(reverseBits(var_0.c), vec4<u32>(var_0.c.x, var_0.c.x, var_0.c.x, 12887u) | vec4<u32>(var_0.c.x, 50673u, 4294967295u, var_0.c.x)))));
    let var_2 = true;
    var_0 = Struct_1(vec3<i32>(-1i) * -arg_1, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1345f))), ~(~vec4<u32>(var_0.c.x, 49464u, var_0.c.x, var_0.c.x) << (((var_0.c | var_0.c) ^ _wgslsmith_add_vec4_u32(var_0.c, vec4<u32>(var_0.c.x, 0u, var_0.c.x, 41454u))) % vec4<u32>(32u))));
    return Struct_4(vec3<bool>(true, arg_0 >= 921f, true), Struct_1(-(~vec3<i32>(u_input.b.x, 1i, arg_1.x)), var_0.b, select(vec4<u32>(firstTrailingBit(var_0.c.x), max(var_0.c.x, 47249u), var_0.c.x << (var_0.c.x % 32u), _wgslsmith_add_u32(var_0.c.x, var_0.c.x)), _wgslsmith_sub_vec4_u32(var_0.c, var_0.c | var_0.c), vec4<bool>(!var_2, any(vec4<bool>(var_2, false, false, var_2)), all(vec4<bool>(var_2, var_2, var_2, var_2)), var_0.c.x > 4294967295u))), -(~(-reverseBits(vec4<i32>(-14961i, -27387i, u_input.b.x, -60280i)))), Struct_2(Struct_1(_wgslsmith_mod_vec3_i32(~arg_1, abs(var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(922f + arg_0) - -1375f), _wgslsmith_div_vec4_u32(var_0.c, abs(var_0.c))), _wgslsmith_sub_vec2_u32(~var_0.c.yz, _wgslsmith_div_vec2_u32(vec2<u32>(45143u, var_0.c.x), vec2<u32>(54647u, var_0.c.x)) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.c.x, var_0.c.x), var_0.c.xx, var_0.c.xy) % vec2<u32>(32u)))));
}

fn func_1(arg_0: vec2<u32>) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -198f);
    var var_1 = func_4(_wgslsmith_f_op_f32(-135f + -121f), _wgslsmith_mult_vec3_i32(firstLeadingBit(select(vec3<i32>(-22583i, u_input.b.x, -1i), func_2(Struct_2(Struct_1(vec3<i32>(u_input.a, -2147483647i, 2147483647i), -977f, vec4<u32>(arg_0.x, 70113u, 4294967295u, 5334u)), arg_0), 690f, vec4<u32>(201u, 1u, arg_0.x, arg_0.x)), arg_0.x == 11337u)), -firstTrailingBit(min(vec3<i32>(0i, -65162i, 1i), vec3<i32>(u_input.b.x, 20045i, 14344i)))));
    var_0 = 741f;
    var var_2 = u_input.b;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-837f, var_1.b.b) * vec2<f32>(var_1.b.b, var_1.b.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~(~(~(vec3<i32>(2147483647i, 1i, u_input.a) & vec3<i32>(-2147483647i, 1i, u_input.b.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -2111f))))), ~_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(50099u, 1u, 0u, 54650u))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(var_0.c.wx)));
    var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-300f, 823f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-397f, -1189f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-690f, 878f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(579f, -1334f))))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-245f, -1569f), vec2<f32>(-100f, -397f), true))))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.b))))))), _wgslsmith_f_op_f32(ceil(var_0.b)));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, -293f))) * vec2<f32>(-2000f, -1480f));
    let x = u_input.a;
    s_output = StorageBuffer(max(var_0.c.xz, var_0.c.ww) | reverseBits(vec2<u32>(~var_0.c.x, 17166u)), vec3<u32>(~abs(~0u), var_0.c.x, _wgslsmith_mod_u32(~39299u & _wgslsmith_sub_u32(var_0.c.x, 12966u), 1u)), var_0.a.x);
}

