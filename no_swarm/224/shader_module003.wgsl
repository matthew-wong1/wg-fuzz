struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 17> = array<vec2<bool>, 17>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true));

var<private> global1: array<vec4<f32>, 26>;

var<private> global2: array<vec2<f32>, 3> = array<vec2<f32>, 3>(vec2<f32>(1901f, -1107f), vec2<f32>(-344f, 866f), vec2<f32>(-1101f, -378f));

var<private> global3: i32;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2() -> u32 {
    var var_0 = (_wgslsmith_div_vec3_i32(~(~vec3<i32>(16241i, 3826i, -1i)), _wgslsmith_add_vec3_i32(vec3<i32>(53107i, -9629i, 0i), vec3<i32>(45814i, -9763i, 13307i)) >> ((u_input.d.ywx | u_input.c) % vec3<u32>(32u))) ^ vec3<i32>(1i, ~abs(-1i), min(min(-2147483647i, 26992i), 24615i))) << (vec3<u32>(_wgslsmith_div_u32(63290u, 4294967295u), 50745u, ~(u_input.a.x << (_wgslsmith_mod_u32(0u, u_input.a.x) % 32u))) % vec3<u32>(32u));
    let var_1 = !global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.e.x, 23722u), 17u)];
    let var_2 = 1350f;
    var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(~_wgslsmith_mod_i32(var_0.x, ~85039i), 2147483647i & var_0.x, 3085i & var_0.x), _wgslsmith_sub_vec3_i32(-vec3<i32>(_wgslsmith_mult_i32(2147483647i, -1i), -var_0.x, _wgslsmith_div_i32(var_0.x, -2147483647i)), vec3<i32>(var_0.x, ~_wgslsmith_div_i32(60614i, -1i), -2147483647i)));
    var var_3 = _wgslsmith_mult_vec4_i32(max(vec4<i32>(-1i | var_0.x, var_0.x, -1i, abs(var_0.x)) << (countOneBits(vec4<u32>(u_input.a.x, u_input.e.x, u_input.c.x, u_input.e.x)) % vec4<u32>(32u)), vec4<i32>(-7620i, _wgslsmith_mod_i32(~25076i, abs(var_0.x)), _wgslsmith_div_i32(var_0.x, var_0.x), var_0.x)), select(-vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_0.x, -1i), vec3<i32>(var_0.x, -1i, 1i)), ~(-33409i), max(-1i, -27106i), -var_0.x), firstTrailingBit(countOneBits(vec4<i32>(6558i, 1i, var_0.x, 35863i)) >> (firstTrailingBit(vec4<u32>(u_input.a.x, u_input.b, u_input.d.x, u_input.b)) % vec4<u32>(32u))), var_1.x));
    return 1u;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    var var_0 = firstTrailingBit(vec3<i32>(arg_0.a, arg_0.a, reverseBits(~(-28321i))));
    global2 = array<vec2<f32>, 3>();
    let var_1 = func_2();
    var var_2 = arg_1;
    var var_3 = Struct_1(_wgslsmith_mult_i32(var_0.x, -(~arg_0.a)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-203f + _wgslsmith_f_op_f32(-1f)))));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: Struct_2) -> vec3<i32> {
    global3 = max(1i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(-66563i, -64970i)), vec2<i32>(-77201i, _wgslsmith_mult_i32(68409i, 1i)))) >> (~(~reverseBits(u_input.b)) % 32u);
    let var_0 = vec4<bool>(all(!(!select(vec3<bool>(false, true, arg_3.a), vec3<bool>(arg_1.x, arg_3.a, false), arg_1.x))), true, arg_1.x, true);
    let var_1 = Struct_2(false);
    var var_2 = !(!var_0);
    var var_3 = select(select(!(!(!vec4<bool>(true, true, arg_3.a, false))), vec4<bool>(arg_1.x, any(select(global0[_wgslsmith_index_u32(1288u, 17u)], global0[_wgslsmith_index_u32(0u, 17u)], true)), all(var_2.zxw) != false, true), false), vec4<bool>(all(var_2.yzz), false, true, any(vec2<bool>(false, all(var_2.xww)))), (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) <= arg_0) | var_0.x);
    return abs(select(vec3<i32>(~2147483647i, 1i, 48830i), (vec3<i32>(-1i) * -vec3<i32>(8512i, 1i, -2147483647i)) >> (~arg_2 % vec3<u32>(32u)), true));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: u32) -> Struct_1 {
    let var_0 = ~vec3<u32>(~(~_wgslsmith_div_u32(1u, u_input.e.x)), 35834u, firstLeadingBit(~select(445u, u_input.c.x, false)));
    var var_1 = Struct_1(_wgslsmith_add_i32(~_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-28720i, -38224i, 10419i, 5488i), vec4<i32>(arg_0.x, 2147483647i, arg_0.x, arg_0.x)), reverseBits(-29808i), _wgslsmith_clamp_i32(13438i, 947i, arg_0.x)), ~(-(~(-1i)))));
    let var_2 = reverseBits(_wgslsmith_add_i32(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-46236i, 0i, 1i) | arg_0, func_3(1000f, vec2<bool>(arg_1.a, true), vec3<u32>(u_input.a.x, arg_2, 34162u), Struct_2(arg_1.a)))), ~(reverseBits(var_1.a) << (abs(arg_2) % 32u))));
    var var_3 = global0[_wgslsmith_index_u32(u_input.e.x ^ 4294967295u, 17u)];
    var var_4 = vec3<f32>(345f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -1000f)), -813f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2431f, -885f)) * 232f)));
    return Struct_1(func_3(461f, !select(vec2<bool>(false, false), select(global0[_wgslsmith_index_u32(44078u, 17u)], vec2<bool>(true, arg_1.a), arg_1.a), arg_1.a), _wgslsmith_add_vec3_u32(max(abs(u_input.d.xzx), abs(var_0)), var_0 >> (abs(vec3<u32>(1u, 10609u, u_input.c.x)) % vec3<u32>(32u))), arg_1).x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~(-_wgslsmith_add_i32(_wgslsmith_sub_i32(17848i, 6902i), _wgslsmith_dot_vec4_i32(vec4<i32>(-34216i, -2147483647i, -88144i, 2147483647i), vec4<i32>(2147483647i, -1i, 1i, -83412i)))));
    let var_1 = 1u;
    let var_2 = -148f;
    let var_3 = ~u_input.a;
    var var_4 = func_4(~func_3(_wgslsmith_f_op_f32(func_1(Struct_1(-1i), Struct_2(true))), select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec3<u32>(1u, var_3.x, var_1) ^ vec3<u32>(4294967295u, var_1, 4294967295u), Struct_2(true)) | ~(-(vec3<i32>(var_0.a, 34383i, var_0.a) | vec3<i32>(var_0.a, 17629i, var_0.a))), Struct_2((_wgslsmith_f_op_f32(-var_2) <= -201f) || !all(vec4<bool>(false, false, false, false))), abs(_wgslsmith_sub_u32(u_input.b, var_3.x) << ((~u_input.c.x ^ max(31947u, u_input.a.x)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_0.a, ~(i32(-1i) * -2147483647i), countOneBits(func_4(select(vec3<i32>(1i, 7456i, var_4.a), vec3<i32>(var_4.a, -1i, var_4.a), false), Struct_2(true), ~var_1).a), i32(-1i) * -reverseBits(var_4.a)), _wgslsmith_dot_vec3_u32(select(vec3<u32>(~var_3.x, 4294967295u, 1u), vec3<u32>(~var_1, u_input.d.x, var_3.x), all(vec2<bool>(true, false))), max(u_input.c, vec3<u32>(u_input.b, var_1, 4294967295u))), var_0.a, vec3<f32>(1764f, -1586f, var_2));
}

