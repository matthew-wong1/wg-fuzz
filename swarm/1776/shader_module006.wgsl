struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> f32 {
    var var_0 = arg_2;
    var_0 = arg_2;
    var var_1 = Struct_1(1306f, vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.b.x))), var_0.c, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a)), arg_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), arg_2.d);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a + -2706f) + var_1.c) - -1361f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(var_0.b + _wgslsmith_div_vec3_f32(arg_2.b, vec3<f32>(var_0.c, arg_0.a, 2673f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(514f + _wgslsmith_f_op_f32(floor(var_1.b.x))) + var_0.b.x) - _wgslsmith_f_op_f32(f32(-1f) * -599f)), vec3<u32>(select(1u, _wgslsmith_sub_u32(u_input.b.x, arg_2.d.x) >> (reverseBits(arg_0.d.x) % 32u), true), 1u, u_input.b.x));
    var_0 = arg_0;
    return arg_0.a;
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_1 {
    var var_0 = ~(~firstLeadingBit(abs(37514u)));
    var var_1 = _wgslsmith_mod_i32(-19405i, -(2147483647i >> (u_input.a.x % 32u)));
    var var_2 = vec2<u32>(u_input.b.x, (select(firstTrailingBit(u_input.b.x), u_input.a.x, !arg_0) << (u_input.b.x % 32u)) | 58226u);
    let var_3 = vec3<u32>(u_input.b.x >> (_wgslsmith_add_u32(var_2.x, 4979u << ((var_2.x ^ var_2.x) % 32u)) % 32u), 4294967295u, 42157u);
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-1113f * -430f), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, _wgslsmith_f_op_f32(select(-1788f, -330f, arg_0)), -2085f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1559f, 201f) * vec3<f32>(1000f, 866f, 196f))))))), 255f, var_3);
    return Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(var_4.b.x, var_4.b, var_4.a, vec3<u32>(u_input.a.x, var_4.d.x, 4294967295u)), max(-52449i, -2147483647i), Struct_1(-111f, var_4.b, var_4.b.x, vec3<u32>(74665u, u_input.a.x, u_input.b.x)))) + _wgslsmith_f_op_f32(round(-1664f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.c) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1118f)))), 1299f, 1020f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -306f)) * var_4.a), var_4.d);
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    var var_0 = ~8092i << (~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~u_input.b.ww, countOneBits(arg_1.xw)), _wgslsmith_mod_u32(~arg_0, 1u)) % 32u);
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(964f, arg_3.c.x) + arg_2.b.xz)) * vec2<f32>(_wgslsmith_f_op_f32(-arg_3.c.x), _wgslsmith_div_f32(arg_2.a, arg_2.c)))))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_f32(func_3(arg_2, 64298i, arg_2)), func_2(true, 1i).b, _wgslsmith_f_op_f32(min(-733f, -713f)), select(u_input.b.zyw, vec3<u32>(u_input.a.x, arg_3.a, arg_3.a), vec3<bool>(arg_3.b.x, true, arg_3.b.x))), select(~(-1i), -35206i, arg_3.b.x & arg_3.b.x), arg_2)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.c.x - var_1.x) - 734f), 1555f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-401f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), arg_2.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(arg_2.b)))), true)), _wgslsmith_f_op_f32(func_3(arg_2, firstTrailingBit(_wgslsmith_mult_i32(1i, -2147483647i)) ^ 838i, func_2(arg_2.d.x != _wgslsmith_div_u32(arg_1.x, u_input.b.x), -_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -42940i, 59416i), vec3<i32>(-15392i, 2147483647i, -2147483647i))))), arg_1.yxw);
    var_2 = arg_2;
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(1u), ~4294967295u, ~arg_3.a) >> (arg_1.yzy % vec3<u32>(32u)), vec3<u32>(~reverseBits(0u), 4294967295u, 4294967295u)), firstLeadingBit(u_input.b.x)), 19u)];
    return func_2(false, _wgslsmith_dot_vec2_i32(abs(countOneBits(vec2<i32>(2147483647i, -2147483647i))), ~vec2<i32>(-2147483647i, -1i)));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    global0 = array<Struct_2, 19>();
    var var_0 = true;
    let var_1 = vec4<bool>(~(~(~u_input.b.x)) > 1u, true, any(vec3<bool>(all(vec3<bool>(true, true, true)), true, !(arg_2.d.x == u_input.a.x))), false);
    global0 = array<Struct_2, 19>();
    var var_2 = Struct_2(arg_1.d.x, vec4<bool>(true, true || !var_1.x, true, !var_1.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(1205f, -817f), _wgslsmith_div_vec2_f32(arg_2.b.yz, vec2<f32>(561f, -517f)))))));
    return Struct_2(22814u, !select(select(!vec4<bool>(false, var_1.x, var_2.b.x, true), vec4<bool>(true, var_1.x, var_1.x, false), var_2.b.x), vec4<bool>(!var_1.x, !var_2.b.x, true, all(vec4<bool>(false, var_1.x, false, false))), var_2.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-471f - var_2.c.x)), arg_2.a)));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: bool) -> StorageBuffer {
    var var_0 = func_5(vec4<i32>(1i, 1i, 1i, 1i), func_4(u_input.b.x, ~countOneBits(~vec4<u32>(1u, 1u, u_input.b.x, 19741u)), func_2(arg_1, firstLeadingBit(~0i)), Struct_2(_wgslsmith_div_u32(max(u_input.a.x, u_input.b.x), 1u), select(vec4<bool>(true, false, false, arg_1), select(vec4<bool>(false, arg_1, arg_2, arg_1), vec4<bool>(false, arg_2, arg_2, arg_1), vec4<bool>(false, arg_1, arg_2, arg_2)), select(vec4<bool>(true, arg_0, arg_2, false), vec4<bool>(arg_1, false, arg_1, true), arg_0)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-143f, 311f) + vec2<f32>(-1388f, -654f)))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(407f, vec3<f32>(2941f, -554f, -239f), -726f, vec3<u32>(u_input.a.x, u_input.b.x, u_input.b.x)), firstTrailingBit(-2147483647i), func_2(arg_1, -20151i))) - -1602f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-308f, -568f, 417f) + vec3<f32>(-1000f, 587f, 2144f)))), _wgslsmith_div_f32(-686f, _wgslsmith_f_op_f32(-924f + -473f)), u_input.a.yxy));
    var var_1 = u_input.a.x;
    let var_2 = u_input.a;
    var_0 = global0[_wgslsmith_index_u32(7244u, 19u)];
    let var_3 = u_input.b.yw;
    return StorageBuffer(532f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x - 464f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 19>();
    global0 = array<Struct_2, 19>();
    global0 = array<Struct_2, 19>();
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -419f) * -207f)));
    let var_1 = u_input.a.x;
    var var_2 = 2147483647i;
    let x = u_input.a;
    s_output = func_1(~(~firstTrailingBit(1i)) == -31815i, !(~max(var_1, 8198u) < 0u), all(vec4<bool>(true, any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), all(vec2<bool>(true, true)), false)));
}

