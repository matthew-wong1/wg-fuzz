struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<bool>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 11>;

var<private> global1: array<f32, 14>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    global0 = array<vec3<u32>, 11>();
    var var_0 = Struct_1(vec3<u32>(1u, 27891u, _wgslsmith_div_u32(28340u, 1u)), abs(vec4<i32>(reverseBits(-11588i), u_input.c.x, -u_input.c.x, firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.e.zz, vec2<i32>(-2147483647i, u_input.b))))), vec3<bool>(true, !all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), false)), all(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), true))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-606f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2421f + 1872f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-177f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -552f), _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(0u, 14u)])))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1079f + global1[_wgslsmith_index_u32(u_input.d, 14u)]), global1[_wgslsmith_index_u32(~1u, 14u)]))), global1[_wgslsmith_index_u32(~4294967295u, 14u)], -797f));
    var_0 = Struct_1(var_0.a, countOneBits(vec4<i32>(i32(-1i) * -var_0.b.x, -var_0.b.x, firstLeadingBit(-var_0.b.x), _wgslsmith_sub_i32(u_input.c.x, firstTrailingBit(var_0.b.x)))), vec3<bool>(select(any(!var_0.c.yz), var_0.d > 741f, any(var_0.c)), !(!var_0.c.x), !all(var_0.c)), global1[_wgslsmith_index_u32(23906u, 14u)], var_0.e);
    let var_1 = all(var_0.c);
    let var_2 = var_1;
    return _wgslsmith_f_op_f32(min(-266f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -364f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1702f, global1[_wgslsmith_index_u32(45655u, 14u)])))))));
}

fn func_2(arg_0: bool, arg_1: vec4<i32>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-381f + global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d, u_input.d), 14u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, u_input.d), 14u)]))));
    let var_1 = select(select(select(select(vec3<bool>(false, arg_0, true), !vec3<bool>(false, false, arg_0), arg_0), !(!vec3<bool>(true, arg_0, arg_0)), any(select(vec2<bool>(false, true), vec2<bool>(arg_0, true), arg_0))), vec3<bool>(true, arg_0, arg_0), arg_0), vec3<bool>(true, !(true | all(vec2<bool>(arg_0, arg_0))), arg_0), !(!select(select(vec3<bool>(false, true, true), vec3<bool>(arg_0, arg_0, arg_0), arg_0), vec3<bool>(false, false, false), arg_0)));
    return _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(max(108898u, 23894u), 3385u), 4294967295u | (u_input.d & 0u)), 4294967295u), ~vec2<u32>(45836u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d), vec4<u32>(u_input.d, 21966u, u_input.d, u_input.d))), vec2<u32>(u_input.d, u_input.d));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.d, countOneBits(u_input.d))), ~select(~vec2<u32>(u_input.d, u_input.d), reverseBits(vec2<u32>(43582u, 4294967295u)), arg_0 < arg_0)), _wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, 0u), vec2<u32>(u_input.d, u_input.d))), ~abs(vec2<u32>(u_input.d, 28191u))) >> (_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.d, 4294967295u), abs(~17705u)) % 32u));
    var var_1 = select(var_0.zx, vec2<u32>(var_0.x, 14185u >> (~u_input.d % 32u)), global1[_wgslsmith_index_u32(~min(u_input.d, u_input.d << (3265u % 32u)), 14u)] >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(67868u, 14u)], -734f, true))));
    var_1 = _wgslsmith_add_vec2_u32(func_2(true, _wgslsmith_mult_vec4_i32(abs(select(vec4<i32>(0i, 15127i, u_input.a, -16500i), vec4<i32>(19158i, arg_0, u_input.c.x, -1i), false)), (vec4<i32>(arg_0, -19153i, arg_0, u_input.a) & vec4<i32>(15117i, 0i, 1i, 0i)) ^ vec4<i32>(u_input.a, u_input.e.x, -1i, u_input.c.x))), var_0.zz);
    var var_2 = -u_input.b;
    var var_3 = Struct_3(_wgslsmith_sub_vec3_u32(vec3<u32>(func_2(true, vec4<i32>(-15038i, arg_0, -6856i, -51371i) & vec4<i32>(-1i, 41490i, arg_0, 2147483647i)).x, var_0.x, _wgslsmith_dot_vec3_u32(firstLeadingBit(global0[_wgslsmith_index_u32(var_0.x, 11u)]), _wgslsmith_sub_vec3_u32(var_0, global0[_wgslsmith_index_u32(u_input.d, 11u)]))), var_0), Struct_2(Struct_1(global0[_wgslsmith_index_u32(1u, 11u)], vec4<i32>(~(-2147483647i), u_input.b, arg_0, 0i), vec3<bool>(u_input.c.x >= 0i, any(vec2<bool>(false, false)), true), global1[_wgslsmith_index_u32(1u, 14u)], _wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(0u, 14u)], global1[_wgslsmith_index_u32(u_input.d, 14u)], global1[_wgslsmith_index_u32(u_input.d, 14u)]), vec3<f32>(global1[_wgslsmith_index_u32(49579u, 14u)], 971f, 1046f)))), Struct_2(Struct_1(var_0, reverseBits(-vec4<i32>(arg_0, arg_0, -18303i, -2147483647i)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false), vec3<bool>(false, false, true), true), global1[_wgslsmith_index_u32(var_0.x, 14u)], vec3<f32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 337u, 33540u), vec3<u32>(var_1.x, 27355u, u_input.d)), 14u)], _wgslsmith_f_op_f32(f32(-1f) * -849f), -587f))), ~0i);
    return Struct_1(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(select(select(var_3.a, var_3.a, var_3.c.a.c), var_3.b.a.a, false | var_3.c.a.c.x), global0[_wgslsmith_index_u32(var_1.x, 11u)]), vec3<u32>(0u, select(1u, ~u_input.d, false), ~35962u)), vec4<i32>(15644i, _wgslsmith_dot_vec2_i32(max(u_input.c.xx, _wgslsmith_mult_vec2_i32(vec2<i32>(0i, 17138i), vec2<i32>(-34951i, 57846i))), abs(var_3.b.a.b.zy)), arg_0, reverseBits(select(~arg_0, arg_0, true))), var_3.b.a.c, _wgslsmith_f_op_f32(f32(-1f) * -281f), vec3<f32>(_wgslsmith_f_op_f32(max(var_3.c.a.e.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(648f - 824f), global1[_wgslsmith_index_u32(var_0.x ^ u_input.d, 14u)]))), _wgslsmith_f_op_f32(sign(395f)), _wgslsmith_div_f32(-1158f, var_3.c.a.e.x)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(arg_0.b.a.a, func_1(-13571i).b, vec3<bool>(arg_1.b.c.x && (_wgslsmith_f_op_f32(exp2(arg_2.d)) >= _wgslsmith_f_op_f32(step(-937f, 904f))), false & (u_input.d >= ~u_input.d), all(select(vec4<bool>(arg_0.c.a.c.x, arg_0.b.a.c.x, arg_1.b.c.x, arg_0.b.a.c.x), vec4<bool>(true, false, arg_2.c.x, false), false)) & any(select(vec2<bool>(true, arg_0.c.a.c.x), vec2<bool>(arg_2.c.x, arg_0.b.a.c.x), vec2<bool>(arg_1.b.c.x, arg_2.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(-arg_1.a)))))), _wgslsmith_f_op_vec3_f32(ceil(arg_2.e)));
    global1 = array<f32, 14>();
    let var_1 = true;
    var_0 = Struct_1(arg_0.a, _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(u_input.e.x, u_input.b), -2147483647i, arg_0.b.a.b.x ^ 1i, arg_2.b.x), arg_0.b.a.b), vec4<i32>(3486i, -1i, ~(var_0.b.x | -34536i), _wgslsmith_mult_i32(1i, -38608i))), vec3<bool>(true, any(!func_1(3419i).c.xx), var_0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(max(u_input.d, 1u), ~64588u), 14u)]) * arg_1.a), vec3<f32>(arg_2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1850f))), _wgslsmith_f_op_f32(func_3())));
    var var_2 = abs(vec2<u32>(arg_2.a.x, _wgslsmith_dot_vec4_u32(max(vec4<u32>(0u, 1u, 1u, arg_1.b.a.x), vec4<u32>(1u, 0u, arg_0.a.x, u_input.d)) >> (min(vec4<u32>(35295u, arg_0.a.x, u_input.d, 0u), vec4<u32>(1u, 15011u, u_input.d, arg_2.a.x)) % vec4<u32>(32u)), ~vec4<u32>(var_0.a.x, arg_1.b.a.x, u_input.d, 4294967295u) | (vec4<u32>(var_0.a.x, 1u, arg_1.b.a.x, arg_2.a.x) ^ vec4<u32>(var_0.a.x, arg_2.a.x, 14598u, 1u)))));
    return func_1(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(var_0.b.xwy, _wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.b.b.x, u_input.e.x, 0i), vec3<i32>(-1i, arg_0.c.a.b.x, arg_2.b.x))), ~vec3<i32>(_wgslsmith_sub_i32(arg_2.b.x, 53280i), _wgslsmith_sub_i32(5969i, var_0.b.x), countOneBits(2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_4(Struct_3(global0[_wgslsmith_index_u32(firstTrailingBit(~1u), 11u)], Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.d, 11u)], vec4<i32>(2431i, 2147483647i, u_input.b, u_input.b), vec3<bool>(true, true, true), -941f, vec3<f32>(-708f, -386f, global1[_wgslsmith_index_u32(u_input.d, 14u)]))), Struct_2(func_1(u_input.a)), -u_input.b), Struct_4(531f, func_1(u_input.c.x)), func_1(-1i)));
    let var_1 = _wgslsmith_add_u32(_wgslsmith_add_u32(~6455u, var_0.a.a.x), max(u_input.d >> (_wgslsmith_add_u32(1u, func_4(Struct_3(vec3<u32>(106133u, 0u, 0u), Struct_2(Struct_1(global0[_wgslsmith_index_u32(var_0.a.a.x, 11u)], var_0.a.b, vec3<bool>(true, true, true), 1885f, var_0.a.e)), Struct_2(var_0.a), 2147483647i), Struct_4(var_0.a.d, var_0.a), var_0.a).a.x) % 32u), var_0.a.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-16900i, ~(~u_input.a ^ firstTrailingBit(2833i)), ~_wgslsmith_add_i32(min(var_0.a.b.x, u_input.a), ~u_input.b), -(~_wgslsmith_sub_i32(u_input.b, u_input.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -638f)), _wgslsmith_f_op_f32(func_3()))), var_0.a.e.x);
}

