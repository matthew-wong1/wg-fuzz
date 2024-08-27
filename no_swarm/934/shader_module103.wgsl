struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30>;

var<private> global1: i32;

var<private> global2: array<Struct_1, 22>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec2<u32>) -> f32 {
    var var_0 = reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(34660u, arg_3.x << (14449u % 32u), u_input.a >> (u_input.a % 32u), u_input.a), _wgslsmith_div_vec4_u32(~vec4<u32>(2372u, arg_3.x, 0u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, arg_3.x, 4294967295u), vec4<u32>(19227u, 1u, 4294967295u, arg_3.x), vec4<u32>(u_input.a, u_input.a, u_input.a, arg_3.x))), ~vec4<u32>(arg_3.x, u_input.a, 52173u, arg_3.x) ^ vec4<u32>(4294967295u, arg_3.x, 4294967295u, 33284u)) & (abs(vec4<u32>(u_input.a, 4294967295u, 1u, arg_3.x)) >> (~vec4<u32>(33014u, 8096u, u_input.a, 4294967295u) % vec4<u32>(32u))));
    global1 = 38285i;
    let var_1 = Struct_3(global2[_wgslsmith_index_u32(~(1u | abs(~arg_3.x)), 22u)]);
    global1 = _wgslsmith_div_i32(var_1.a.d.x, arg_1.a.d.x);
    var var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(~arg_3.x, u_input.a), vec2<u32>(87883u, 26187u));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_0.x, 30u)], arg_1.a.b.x), _wgslsmith_f_op_f32(select(var_1.a.b.x, arg_0.a.b.x, false)))))))));
}

fn func_4(arg_0: Struct_4, arg_1: f32) -> bool {
    var var_0 = all(!(!vec3<bool>(arg_0.a, arg_0.a == arg_0.a, !arg_0.a)));
    var_0 = true;
    var_0 = _wgslsmith_f_op_f32(step(-638f, global0[_wgslsmith_index_u32(u_input.a, 30u)])) != _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(0u, 30u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-166f)), _wgslsmith_div_f32(1000f, global0[_wgslsmith_index_u32(0u, 30u)])))));
    global2 = array<Struct_1, 22>();
    var var_1 = u_input.a < abs(~15451u);
    return true;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4) -> vec4<i32> {
    global0 = array<f32, 30>();
    var var_0 = Struct_1(select(vec4<bool>(arg_0.a, !all(vec3<bool>(true, true, arg_1.a)), true, !arg_1.a & true), select(select(vec4<bool>(arg_0.a, arg_1.a, arg_1.a, arg_1.a), vec4<bool>(arg_0.a, true, false, arg_1.a), vec4<bool>(false, true, arg_1.a, arg_0.a)), select(select(vec4<bool>(false, arg_1.a, arg_1.a, false), vec4<bool>(arg_1.a, arg_1.a, false, false), vec4<bool>(arg_0.a, arg_0.a, arg_1.a, arg_0.a)), !vec4<bool>(arg_1.a, false, false, true), !vec4<bool>(arg_0.a, false, true, arg_0.a)), false), arg_0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)]), vec2<f32>(1356f, 846f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(64321u, 30u)])))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 30u)], 783f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)])), arg_0.a)), vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 30u)] * global0[_wgslsmith_index_u32(1u, 30u)]), -1048f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 30u)], -756f))))), vec2<i32>(-1i) * -abs(-vec2<i32>(1i, 8499i)), any(!vec4<bool>(arg_0.a, false, false, arg_0.a)) & true);
    global1 = 0i;
    let var_1 = !func_4(arg_0, var_0.b.x);
    var var_2 = Struct_3(global2[_wgslsmith_index_u32(53075u, 22u)]);
    return firstLeadingBit(~vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(14363i, var_2.a.d.x), i32(-1i) * -1i), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.a.d.x, var_2.a.d.x), vec2<i32>(var_0.d.x, -2147483647i))), -_wgslsmith_mod_i32(1i, var_0.d.x), -(1i & var_2.a.d.x)));
}

fn func_2(arg_0: vec2<u32>, arg_1: bool) -> Struct_2 {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-489f, global0[_wgslsmith_index_u32(u_input.a, 30u)], 860f)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(59826u, 30u)], global0[_wgslsmith_index_u32(arg_0.x, 30u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(310f, -1992f, global0[_wgslsmith_index_u32(10283u, 30u)]) + vec3<f32>(1139f, global0[_wgslsmith_index_u32(u_input.a, 30u)], 1000f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(var_0.x, 30u)], global0[_wgslsmith_index_u32(13374u, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)]))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0[_wgslsmith_index_u32(1u, 30u)], -1700f, global0[_wgslsmith_index_u32(4294967295u, 30u)]), vec3<f32>(1903f, global0[_wgslsmith_index_u32(u_input.a, 30u)], -1000f))))))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(27721u, 30u)], global0[_wgslsmith_index_u32(29706u, 30u)], -1184f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(0u, 30u)], -878f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(var_0.x, 30u)], 1720f, -2366f), vec3<f32>(758f, -1474f, 1103f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(449f, global0[_wgslsmith_index_u32(u_input.a, 30u)], -1000f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 30u)], -1484f, global0[_wgslsmith_index_u32(0u, 30u)])))))));
    global0 = array<f32, 30>();
    global2 = array<Struct_1, 22>();
    var var_2 = func_5(Struct_4(arg_1 || true), Struct_4(func_4(Struct_4(arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(vec4<bool>(arg_1, false, true, false), var_1.xz, vec2<f32>(1399f, var_1.x), vec2<i32>(0i, 25197i), arg_1)), Struct_3(global2[_wgslsmith_index_u32(7676u, 22u)]), global2[_wgslsmith_index_u32(38228u, 22u)], arg_0))))));
    return Struct_2(Struct_1(select(select(select(vec4<bool>(arg_1, arg_1, arg_1, true), vec4<bool>(arg_1, false, arg_1, arg_1), arg_1), !vec4<bool>(true, arg_1, false, arg_1), all(vec3<bool>(arg_1, arg_1, false))), select(select(vec4<bool>(true, true, arg_1, true), vec4<bool>(arg_1, true, arg_1, arg_1), arg_1), !vec4<bool>(false, arg_1, arg_1, true), !arg_1), select(!vec4<bool>(false, false, arg_1, arg_1), vec4<bool>(arg_1, false, true, arg_1), select(vec4<bool>(arg_1, arg_1, true, true), vec4<bool>(arg_1, false, arg_1, arg_1), arg_1))), _wgslsmith_f_op_vec2_f32(exp2(var_1.xz)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(var_1.zz, vec2<f32>(1000f, var_1.x)))) - var_1.yz), -var_2.xz >> (_wgslsmith_mult_vec2_u32(~arg_0, ~vec2<u32>(u_input.a, 4294967295u)) % vec2<u32>(32u)), arg_1), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(24293u, 46176u, var_0.x, 129870u), vec4<u32>(var_0.x, 1u, var_0.x, 1530u)), min(vec4<u32>(var_0.x, 54945u, var_0.x, 1u), vec4<u32>(var_0.x, arg_0.x, 12431u, 6880u))) << (~16113u % 32u), _wgslsmith_clamp_u32(var_0.x, ~abs(var_0.x), ~4294967295u)), 22u)], select(vec2<bool>(reverseBits(var_2.x) <= var_2.x, false), !vec2<bool>(var_2.x >= var_2.x, var_0.x > var_0.x), !(!select(vec2<bool>(false, arg_1), vec2<bool>(false, true), vec2<bool>(arg_1, false)))));
}

fn func_6(arg_0: Struct_2) -> i32 {
    let var_0 = u_input.a;
    var var_1 = !vec2<bool>(!(1u <= u_input.a), all(arg_0.b.a.yzw) | (4294967295u <= (u_input.a | u_input.a)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(782f, _wgslsmith_f_op_f32(arg_0.a.b.x + -707f))), -2827f, 873f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 30u)], -628f)), _wgslsmith_f_op_f32(min(func_2(vec2<u32>(var_0, u_input.a), arg_0.a.a.x).b.c.x, _wgslsmith_f_op_f32(-arg_0.a.c.x)))))));
    var var_3 = arg_0.b.a.yyy;
    let var_4 = ~(firstTrailingBit(~arg_0.b.d.x) & arg_0.a.d.x) != -arg_0.a.d.x;
    return max(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.d.x, arg_0.a.d.x, 49200i, -1i) << (vec4<u32>(var_0, 1u, u_input.a, 1u) % vec4<u32>(32u)), vec4<i32>(-1i) * -vec4<i32>(4814i, 0i, arg_0.a.d.x, 1i)), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.d.x, 14403i, -38108i, arg_0.a.d.x), vec4<i32>(53974i, 2147483647i, arg_0.a.d.x, arg_0.b.d.x) & vec4<i32>(785i, -2147483647i, -2147483647i, arg_0.b.d.x)), -11952i)), 0i);
}

fn func_1() -> u32 {
    let var_0 = vec3<i32>(firstTrailingBit(~_wgslsmith_dot_vec4_i32(vec4<i32>(-6601i, 5408i, -36187i, -12834i), -vec4<i32>(-24647i, 0i, -28502i, -44885i))), _wgslsmith_mult_i32(-func_6(func_2(vec2<u32>(1u, 4294967295u), true)), _wgslsmith_sub_i32(_wgslsmith_add_i32(-1i, -1i), _wgslsmith_clamp_i32(-43971i, 9575i, -27385i)) & firstTrailingBit(-1i)), _wgslsmith_add_i32(select(1i, -4154i, any(vec2<bool>(false, false))), 0i));
    let var_1 = func_2(_wgslsmith_mod_vec2_u32(~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(1u, 0u), vec2<u32>(u_input.a, 13722u))), vec2<u32>(~0u, ~u_input.a) << (abs(max(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a))) % vec2<u32>(32u))), false);
    var var_2 = global2[_wgslsmith_index_u32(39065u, 22u)];
    var var_3 = 1000f;
    var var_4 = false;
    return firstTrailingBit(_wgslsmith_dot_vec3_u32((vec3<u32>(4294967295u, u_input.a, u_input.a) << (vec3<u32>(44242u, u_input.a, u_input.a) % vec3<u32>(32u))) & (vec3<u32>(62671u, u_input.a, u_input.a) ^ vec3<u32>(50414u, 0u, 1u)), ~(vec3<u32>(u_input.a, 1u, 4294967295u) >> (vec3<u32>(44468u, u_input.a, u_input.a) % vec3<u32>(32u))))) >> (47936u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>((i32(-1i) * -41301i) >> (u_input.a % 32u), 1i), vec2<i32>(1i, 1i));
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 30u)]), global0[_wgslsmith_index_u32(~12999u, 30u)], 357f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(39693u, 30u)]))))))));
    global0 = array<f32, 30>();
    var var_2 = var_0.x;
    var_2 = -_wgslsmith_div_i32(-1i >> (func_1() % 32u), var_0.x);
    let var_3 = Struct_4(any(vec2<bool>(false, true)));
    var var_4 = func_2(vec2<u32>(7763u, firstTrailingBit(~u_input.a & _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.a), vec3<u32>(u_input.a, 0u, 0u)))), var_3.a != !var_3.a).a;
    var var_5 = Struct_1(var_4.a, vec2<f32>(global0[_wgslsmith_index_u32(~u_input.a, 30u)], var_4.b.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-235f - 812f), global0[_wgslsmith_index_u32(u_input.a, 30u)]))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-283f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec2<bool>(var_4.c.x != _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 30u)]), !(true == var_3.a)))), firstTrailingBit(vec2<i32>(0i, -7331i)), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(countOneBits(~63713u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 8704u), vec4<u32>(8876u, u_input.a, u_input.a, 0u)), u_input.a, ~4294967295u) | ~select(vec4<u32>(1u, u_input.a, u_input.a, 47764u), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), vec4<u32>(u_input.a, 28801u, u_input.a, 0u)), vec4<bool>(false, var_3.a, var_3.a, false)), var_5.d, _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(63100u, u_input.a, 1u), ~vec3<u32>(0u, 35264u, 29877u)), 1u), ~_wgslsmith_div_u32(u_input.a, 4294967295u)), ~((-vec3<i32>(0i, var_4.d.x, var_5.d.x) >> ((vec3<u32>(53323u, u_input.a, 11101u) >> (vec3<u32>(27562u, u_input.a, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u))) ^ (~vec3<i32>(0i, var_4.d.x, -2147483647i) | min(vec3<i32>(var_0.x, 71i, var_5.d.x), vec3<i32>(2147483647i, -6148i, var_4.d.x)))));
}

