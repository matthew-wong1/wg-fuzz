struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec2<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(false, 229f, 15112u, 35226i), Struct_1(true, -321f, 4081u, -26185i), Struct_1(false, -759f, 0u, i32(-2147483648)), Struct_1(true, 516f, 33977u, 43090i), Struct_1(false, 207f, 4294967295u, 2147483647i), Struct_1(false, 577f, 36856u, -1030i), Struct_1(false, 439f, 4294967295u, 31437i), Struct_1(true, -1118f, 0u, -38932i), Struct_1(false, -550f, 23462u, -60030i), Struct_1(false, -890f, 4294967295u, -29120i), Struct_1(true, -313f, 0u, 32430i), Struct_1(false, 2250f, 53449u, 2147483647i), Struct_1(true, -1000f, 0u, -3233i), Struct_1(true, 1413f, 4294967295u, 8361i), Struct_1(true, -1496f, 49308u, 2147483647i), Struct_1(false, 358f, 3470u, -25437i), Struct_1(true, -828f, 0u, 33985i), Struct_1(true, -494f, 22488u, -4818i), Struct_1(false, 194f, 1u, 2147483647i), Struct_1(true, -480f, 0u, 0i), Struct_1(true, -1141f, 4294967295u, -13339i), Struct_1(false, -515f, 14138u, -26655i), Struct_1(false, -2137f, 0u, -6406i), Struct_1(true, 297f, 21647u, 5077i), Struct_1(true, 1899f, 35738u, i32(-2147483648)), Struct_1(true, -543f, 10933u, i32(-2147483648)), Struct_1(true, -1000f, 8665u, -19082i), Struct_1(false, -1892f, 0u, i32(-2147483648)), Struct_1(false, -325f, 4294967295u, -44369i), Struct_1(true, 436f, 14756u, i32(-2147483648)), Struct_1(true, -899f, 4294967295u, 0i));

var<private> global2: f32;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec4<bool>, arg_1: u32) -> Struct_1 {
    global1 = array<Struct_1, 31>();
    let var_0 = firstTrailingBit(abs(vec2<u32>(arg_1, _wgslsmith_dot_vec4_u32(select(vec4<u32>(14842u, 0u, 4294967295u, arg_1), vec4<u32>(u_input.c, arg_1, u_input.c, 44950u), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)), select(vec4<u32>(u_input.c, u_input.c, arg_1, 8885u), vec4<u32>(u_input.c, 1u, arg_1, 67172u), arg_0)))));
    global0 = -(vec3<i32>(u_input.a, ~(-1i), 1i) ^ -(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 0i, -1i), vec3<i32>(-4941i, -1i, 42572i))));
    var var_1 = arg_1;
    var var_2 = _wgslsmith_div_f32(-1671f, -707f);
    return global1[_wgslsmith_index_u32(arg_1, 31u)];
}

fn func_3(arg_0: u32) -> vec2<i32> {
    var var_0 = true;
    var_0 = true;
    return global0.yz;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> u32 {
    global0 = vec3<i32>(abs(-4051i), _wgslsmith_dot_vec2_i32(-func_3(4294967295u) & global0.yz, _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(1i, global0.x), global0.zy ^ global0.yx), vec2<i32>(-u_input.a, func_3(arg_1.c).x))), arg_1.d);
    let var_0 = func_1(select(select(!select(vec4<bool>(false, arg_2.x, false, arg_1.a), vec4<bool>(false, arg_2.x, true, false), vec4<bool>(true, false, arg_0.a, arg_1.a)), select(vec4<bool>(arg_2.x, true, arg_0.a, arg_0.a), select(vec4<bool>(arg_0.a, false, arg_1.a, arg_1.a), vec4<bool>(arg_2.x, arg_2.x, true, arg_1.a), arg_0.a), all(vec4<bool>(arg_2.x, false, arg_0.a, true))), select(!vec4<bool>(arg_2.x, true, true, arg_1.a), vec4<bool>(true, false, true, false), true)), !select(!vec4<bool>(true, true, arg_0.a, arg_0.a), vec4<bool>(false, arg_1.a, arg_2.x, arg_2.x), !vec4<bool>(arg_1.a, false, false, arg_1.a)), vec4<bool>(arg_2.x, arg_2.x, arg_0.a && func_1(vec4<bool>(true, arg_2.x, false, arg_1.a), arg_0.c).a, true)), arg_0.c);
    var var_1 = vec4<f32>(1000f, var_0.b, _wgslsmith_f_op_f32(arg_1.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * _wgslsmith_f_op_f32(-arg_0.b))), 679f);
    let var_2 = arg_0;
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return (_wgslsmith_sub_u32(1u & firstLeadingBit(arg_0.c), ~min(15215u, arg_1.c)) >> (1u % 32u)) << (~abs(~arg_1.c) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<i32>(abs(-1i), ~_wgslsmith_mult_i32(min(-2147483647i, i32(-1i) * -12817i), ~u_input.b >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 0u, u_input.c), vec4<u32>(u_input.c, u_input.d, 1035u, u_input.c)) % 32u)), firstTrailingBit(-52510i));
    let var_0 = vec3<u32>(~(~max(~4294967295u, 1u)), 1u, select(~func_2(func_1(vec4<bool>(true, true, true, true), u_input.d), func_1(vec4<bool>(false, true, false, true), u_input.c), vec2<bool>(true, true)), u_input.d, false || (firstLeadingBit(u_input.b) == abs(global0.x))));
    global0 = vec3<i32>(abs(global0.x), ~(-2147483647i >> (u_input.d % 32u)), _wgslsmith_dot_vec4_i32(~(~(vec4<i32>(u_input.b, 31i, 0i, u_input.a) | vec4<i32>(-57156i, u_input.a, u_input.b, -49380i))), firstTrailingBit(vec4<i32>(-2147483647i, global0.x, u_input.b, u_input.b) & (vec4<i32>(-55745i, u_input.a, u_input.a, global0.x) & vec4<i32>(global0.x, 1i, 34375i, 2147483647i)))));
    let var_1 = firstLeadingBit(var_0);
    global1 = array<Struct_1, 31>();
    let var_2 = true;
    var var_3 = Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1353f), -873f, false)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-223f * _wgslsmith_f_op_f32(-1000f - 376f))))), ~var_0.x, _wgslsmith_mod_i32(-global0.x, _wgslsmith_mod_i32(u_input.b, 0i)));
    global0 = abs(max(vec3<i32>(1i, i32(-1i) * -global0.x, _wgslsmith_sub_i32(global0.x, ~global0.x)), _wgslsmith_sub_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(-78091i, global0.x, 9354i), vec3<i32>(0i, u_input.b, u_input.a)), vec3<i32>(_wgslsmith_div_i32(1i, var_3.d), -56120i, -2147483647i >> (0u % 32u)))));
    var var_4 = max(~(-(-7640i & global0.x)), _wgslsmith_sub_i32(1i, global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(4294967295u, firstLeadingBit(select(var_1.x, 562u, false))) >> (~(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, var_3.c, var_0.x), var_0)) % 32u), global0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b)))), -1165f, any(vec4<bool>(all(vec4<bool>(false, true, false, var_3.a)), !var_3.a, true, any(vec2<bool>(var_2, true)))))), firstTrailingBit(-vec2<i32>(global0.x, global0.x)), var_1);
}

