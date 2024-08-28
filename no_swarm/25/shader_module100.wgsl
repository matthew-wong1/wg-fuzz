struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7> = array<f32, 7>(147f, 2872f, -2054f, 1237f, -1344f, 311f, 710f);

var<private> global1: vec2<i32> = vec2<i32>(19630i, i32(-2147483648));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: Struct_4, arg_2: bool) -> bool {
    return false;
}

fn func_3(arg_0: vec3<bool>, arg_1: bool) -> vec3<bool> {
    global1 = firstTrailingBit(abs(~vec2<i32>(48806i, -1i) ^ ~vec2<i32>(u_input.a, 62587i))) << (_wgslsmith_mod_vec2_u32(reverseBits(reverseBits(vec2<u32>(1u, 47685u)) >> (vec2<u32>(4294967295u, u_input.c) % vec2<u32>(32u))), firstLeadingBit(vec2<u32>(u_input.b, u_input.c) & ~vec2<u32>(u_input.b, u_input.c))) % vec2<u32>(32u));
    var var_0 = abs(vec2<i32>(global1.x, 3532i));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1674f, -1000f))) + vec2<f32>(1394f, -186f)))), vec2<f32>(_wgslsmith_div_f32(-566f, global0[_wgslsmith_index_u32(~1u, 7u)]), 375f))));
    var var_2 = -_wgslsmith_mult_i32(_wgslsmith_add_i32(max(i32(-1i) * -13132i, 2147483647i), 0i), var_0.x);
    global1 = _wgslsmith_mod_vec2_i32(~(-_wgslsmith_mult_vec2_i32(-vec2<i32>(41911i, 60166i), ~vec2<i32>(3375i, global1.x))), ~(-(~vec2<i32>(2147483647i, var_0.x))));
    return vec3<bool>(!(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(34847u, 7u)]))) < -465f), true, all(vec4<bool>(false, true, func_2(global0[_wgslsmith_index_u32(u_input.b, 7u)], Struct_4(Struct_3(vec3<u32>(u_input.c, 1u, 0u)), u_input.c, vec3<i32>(u_input.a, 1i, var_0.x)), any(vec4<bool>(arg_1, false, arg_0.x, arg_1))), true)));
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = !(false && func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1123f, arg_0)), Struct_4(Struct_3(vec3<u32>(u_input.c, 0u, u_input.b)), 0u, vec3<i32>(2147483647i, -7282i, u_input.d)), all(vec4<bool>(false, true, false, true))));
    var var_1 = ~vec3<i32>(1i, global1.x, select(~max(u_input.a, -2147483647i), u_input.d, var_0));
    let var_2 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~1u, 7u)]);
    let var_3 = ~abs(var_1.zz);
    let var_4 = select(!vec3<bool>(var_0, arg_0 != _wgslsmith_f_op_f32(sign(var_2)), true), func_3(!vec3<bool>(true, any(vec4<bool>(true, false, var_0, var_0)), any(vec4<bool>(var_0, true, var_0, true))), false), !(!(!(!vec3<bool>(var_0, true, true)))));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(u_input.b, 7u)], global0[_wgslsmith_index_u32(u_input.c, 7u)], true)), _wgslsmith_f_op_f32(ceil(var_2)), -245f))), firstLeadingBit(countOneBits(var_3.x)), vec2<f32>(_wgslsmith_f_op_f32(exp2(var_2)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(1u, 7u)], -402f))))))), Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2, 1143f, var_2)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2333f, -1061f, arg_0) - vec3<f32>(arg_0, -427f, var_2)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 7u)], -214f, -825f) - vec3<f32>(-1000f, global0[_wgslsmith_index_u32(0u, 7u)], -1000f)))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(156f, 911f, arg_0.c.x, 1532f) + vec4<f32>(arg_0.c.x, -376f, arg_0.d.a.x, arg_1.a.a.x))), vec4<f32>(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.c, 7u)])), 1055f, _wgslsmith_f_op_f32(f32(-1f) * -1424f), -779f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c.x, 2406f, 776f, arg_0.c.x) + _wgslsmith_div_vec4_f32(vec4<f32>(540f, arg_0.d.a.x, arg_0.a.a.x, arg_0.a.a.x), vec4<f32>(-1254f, arg_1.d.a.x, -142f, 428f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0[_wgslsmith_index_u32(18645u, 7u)], arg_1.a.a.x, -644f, global0[_wgslsmith_index_u32(u_input.b, 7u)]))) - vec4<f32>(global0[_wgslsmith_index_u32(u_input.c, 7u)], arg_0.d.a.x, 740f, 402f)))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -653f)), -1307f, 248f), vec4<f32>(333f, _wgslsmith_f_op_f32(min(1606f, 161f)), func_1(1f).d.a.x, arg_1.a.a.x)));
    let var_1 = global0[_wgslsmith_index_u32(u_input.c, 7u)];
    let var_2 = func_3(vec3<bool>(true, true, true), false);
    global1 = vec2<i32>((-firstLeadingBit(arg_1.b) << ((4294967295u & _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(88506u, u_input.c))) % 32u)) >> (u_input.c % 32u), global1.x);
    var var_3 = select(!var_2, var_2, var_2);
    return func_1(-583f).a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<i32>(firstTrailingBit(2147483647i & reverseBits(-global1.x)), -13953i);
    global1 = max(vec2<i32>(global1.x, ~(~global1.x)), firstLeadingBit(~(~vec2<i32>(69413i, -1414i))));
    var var_0 = func_4(func_1(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.b, u_input.c), 4294967295u), 7u)]), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(22377u, 7u)])), _wgslsmith_f_op_f32(min(1046f, global0[_wgslsmith_index_u32(u_input.c, 7u)])))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.c, 7u)], 1007f)) + global0[_wgslsmith_index_u32(1u, 7u)]))));
    let var_1 = select(vec2<bool>(select(true, func_3(vec3<bool>(true, true, false), false).x, (4294967295u << (u_input.c % 32u)) <= 0u), !((u_input.b != u_input.c) | false)), func_3(func_3(func_3(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), true), true), true).yx, !select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(true, true, true)), all(vec2<bool>(true, false))), vec2<bool>(false, func_2(-239f, Struct_4(Struct_3(vec3<u32>(49913u, 68474u, 30733u)), u_input.b, vec3<i32>(u_input.a, 1i, global1.x)), false))));
    var var_2 = -min(_wgslsmith_mod_i32(_wgslsmith_add_i32(firstTrailingBit(u_input.d), _wgslsmith_sub_i32(u_input.d, 2147483647i)), _wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, global1.x, -22783i), countOneBits(vec3<i32>(u_input.d, u_input.a, -11348i)))), global1.x);
    let var_3 = select(!var_1, select(vec2<bool>(false, true), !vec2<bool>(any(vec4<bool>(true, false, false, false)), var_1.x == false), func_3(select(!vec3<bool>(false, var_1.x, false), vec3<bool>(var_1.x, var_1.x, var_1.x), false), true).zx), var_1);
    var_2 = -1i;
    var var_4 = ~(~(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.c, u_input.b), vec3<u32>(26109u, 59673u, 1u)), ~u_input.b, ~62900u) >> (countOneBits(~vec3<u32>(26856u, u_input.c, 3380u)) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.a.x));
}

