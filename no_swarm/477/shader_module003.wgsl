struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: u32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6> = array<u32, 6>(0u, 73144u, 31596u, 1u, 50029u, 38720u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: Struct_2) -> i32 {
    let var_0 = Struct_4(vec4<bool>(any(select(vec4<bool>(true, arg_0.x, arg_0.x, false), arg_0, !vec4<bool>(arg_0.x, false, false, true))), all(vec2<bool>(true, !arg_0.x)), any(vec2<bool>(-285f != arg_1.x, true)), _wgslsmith_sub_i32(~arg_2.b, _wgslsmith_dot_vec3_i32(u_input.b.zww, u_input.b.xyx)) == arg_2.b), all(vec3<bool>(any(arg_0.xyz), arg_0.x, true)) || true, -u_input.b.x);
    let var_1 = arg_1.x;
    global0 = array<u32, 6>();
    var var_2 = !(!vec2<bool>(var_0.a.x, true));
    let var_3 = var_0;
    return firstTrailingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b.xx, ~u_input.b.zz), vec2<i32>(1i, 11516i)));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: i32) -> Struct_1 {
    global0 = array<u32, 6>();
    global0 = array<u32, 6>();
    let var_0 = vec4<f32>(arg_0, 305f, _wgslsmith_f_op_f32(trunc(1271f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(393f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1285f, 381f))))));
    var var_1 = Struct_3(Struct_1(-1i), Struct_1(23254i), Struct_1(-20009i), vec4<bool>(true, global0[_wgslsmith_index_u32((1u >> (global0[_wgslsmith_index_u32(0u, 6u)] % 32u)) << ((34976u | global0[_wgslsmith_index_u32(82148u, 6u)]) % 32u), 6u)] < (global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, global0[_wgslsmith_index_u32(23265u, 6u)]), 6u)] << ((51224u ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16107u, 6u)], 6u)], 6u)], 6u)]) % 32u)), arg_1, (!arg_1 != arg_1) || true), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u & global0[_wgslsmith_index_u32(11346u, 6u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~43496u, 6u)], 6u)]), _wgslsmith_sub_vec2_u32(~vec2<u32>(global0[_wgslsmith_index_u32(43094u, 6u)], 24219u), vec2<u32>(global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33793u, 6u)], 6u)]))));
    var var_2 = select(var_1.d.yyw, var_1.d.xxw, var_1.d.zwz);
    return Struct_1(((-16063i << (reverseBits(global0[_wgslsmith_index_u32(59394u, 6u)]) % 32u)) | func_3(var_1.d, vec4<f32>(-153f, var_0.x, -751f, var_0.x), Struct_2(var_0.zzy, 0i))) >> (_wgslsmith_div_u32(0u, ~firstTrailingBit(67741u)) % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: i32) -> vec4<i32> {
    let var_0 = min(firstTrailingBit(max(firstTrailingBit(~global0[_wgslsmith_index_u32(0u, 6u)]), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(5059u, 6u)], 6u)], ~arg_1.x))), reverseBits(1u));
    var var_1 = -837f;
    var var_2 = any(vec3<bool>(true, true, ~global0[_wgslsmith_index_u32(arg_1.x, 6u)] < 1u));
    var var_3 = _wgslsmith_add_i32(-min(arg_2 << (select(13995u, 70362u, false) % 32u), arg_2), ~(-select(-26130i, 1i, true)));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-619f)));
    return _wgslsmith_mult_vec4_i32(reverseBits(~min(min(u_input.b, vec4<i32>(arg_0.a, arg_2, arg_0.a, arg_0.a)), vec4<i32>(arg_0.a, u_input.b.x, arg_0.a, arg_2) ^ vec4<i32>(arg_2, -1i, arg_2, u_input.b.x))), vec4<i32>(~2147483647i, i32(-1i) * -_wgslsmith_mod_i32(-21409i, arg_0.a), -42591i, -59137i));
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: vec4<u32>, arg_3: u32) -> Struct_1 {
    var var_0 = _wgslsmith_add_vec4_i32(-func_4(func_2(-728f, true, min(20140i, -2147483647i)), arg_2.www, _wgslsmith_add_i32(u_input.a, -1i)), reverseBits(select(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, u_input.a, 2147483647i, -1i), vec4<i32>(u_input.a, 9576i, u_input.b.x, u_input.b.x)), abs(vec4<i32>(u_input.a, u_input.b.x, u_input.a, u_input.b.x)), true) & vec4<i32>(_wgslsmith_sub_i32(-2147483647i, u_input.b.x), 1i, _wgslsmith_sub_i32(-1i, u_input.b.x), -u_input.b.x)));
    let var_1 = vec3<bool>(any(vec2<bool>(true, true)), true, any(select(select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), false), vec3<bool>(true, true, true), !all(vec3<bool>(false, true, false)))));
    var var_2 = Struct_4(!(!(!(!vec4<bool>(var_1.x, false, var_1.x, true)))), any(select(vec3<bool>(!var_1.x, var_1.x != false, false), select(vec3<bool>(true, false, var_1.x), vec3<bool>(false, true, var_1.x), select(vec3<bool>(var_1.x, false, false), vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(false, var_1.x, false))), select(var_1, vec3<bool>(var_1.x, true, var_1.x), true))), ~_wgslsmith_add_i32(-u_input.b.x, _wgslsmith_sub_i32(-33675i, 42725i)) & _wgslsmith_sub_i32(var_0.x, _wgslsmith_add_i32(1i, -20086i)));
    var var_3 = func_2(_wgslsmith_f_op_f32(arg_0 - 167f), _wgslsmith_f_op_f32(-arg_0) > arg_0, var_2.c);
    let var_4 = u_input.b.x;
    return func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, arg_0, !var_2.a.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0)) - 2109f)))), true & (var_3.a != u_input.b.x), -2147483647i);
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_4, arg_3: vec3<u32>) -> f32 {
    let var_0 = vec4<bool>(arg_2.b == (-arg_2.c > _wgslsmith_dot_vec2_i32(u_input.b.xy, firstLeadingBit(u_input.b.zw))), arg_2.a.x, true, any(arg_2.a.wxz));
    let var_1 = _wgslsmith_f_op_f32(-arg_1);
    global0 = array<u32, 6>();
    let var_2 = var_0.x;
    var var_3 = abs(arg_3.x);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(u_input.a, ~u_input.a);
    var var_1 = -835f;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -803f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -204f) + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(913f, -552f)))))));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 441f) + _wgslsmith_f_op_f32(floor(-315f)))) * _wgslsmith_f_op_f32(func_5(func_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -243f))), ~(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(45574u, 6u)], 6u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(55557u, 6u)], 6u)], 6u)], 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)])), abs(~vec4<u32>(global0[_wgslsmith_index_u32(88164u, 6u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35896u, 6u)], 6u)], 6u)], 15510u, 4294967295u)), ~10548u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1395f), -965f, (-2147483647i << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37489u, 6u)], 6u)] % 32u)) > 84432i)), Struct_4(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), true)), (97929u & global0[_wgslsmith_index_u32(10356u, 6u)]) > ~1u, u_input.b.x), ~vec3<u32>(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(0u, 6u)], 6u)], ~global0[_wgslsmith_index_u32(93772u, 6u)], 44609u))));
    global0 = array<u32, 6>();
    let var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - vec2<f32>(_wgslsmith_f_op_f32(-525f + 1266f), _wgslsmith_f_op_f32(-396f + -586f)))))));
    var_1 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x);
}

