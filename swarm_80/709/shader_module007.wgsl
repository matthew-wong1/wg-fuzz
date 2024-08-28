struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

var<private> global1: vec3<i32> = vec3<i32>(i32(-2147483648), 55905i, 1i);

var<private> global2: u32 = 0u;

var<private> global3: array<u32, 13> = array<u32, 13>(13484u, 4294967295u, 1u, 6021u, 53100u, 1u, 20582u, 0u, 4294967295u, 44235u, 4294967295u, 22338u, 4294967295u);

var<private> global4: vec4<i32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec4<i32> {
    global1 = u_input.c;
    global0 = array<Struct_1, 26>();
    let var_0 = global0[_wgslsmith_index_u32(reverseBits(u_input.b), 26u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(641f, 399f, -489f)))))));
    global4 = min(var_0.b, max(var_0.b, abs(var_0.b)));
    return _wgslsmith_sub_vec4_i32(~(-(~var_0.b) ^ (var_0.b | vec4<i32>(u_input.c.x, global1.x, var_0.a, var_0.b.x))), vec4<i32>(29939i, -_wgslsmith_mult_i32(abs(-19787i), _wgslsmith_mod_i32(global4.x, -1i)), global4.x | _wgslsmith_mod_i32(abs(global4.x), _wgslsmith_dot_vec3_i32(vec3<i32>(global4.x, u_input.c.x, 0i), global4.zxx)), ~(-34150i)));
}

fn func_2(arg_0: u32) -> vec2<f32> {
    global2 = 17435u;
    var var_0 = ~firstTrailingBit(vec2<i32>(u_input.c.x, 2147483647i ^ u_input.c.x) ^ ~global1.zy);
    var var_1 = _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(~u_input.c.x, ~global4.x, ~global4.x << (~31866u % 32u), -52146i)), _wgslsmith_mult_vec4_i32((vec4<i32>(-1i) * -vec4<i32>(global4.x, global4.x, global1.x, global4.x)) >> (~min(vec4<u32>(u_input.b, global3[_wgslsmith_index_u32(0u, 13u)], 30020u, global3[_wgslsmith_index_u32(58142u, 13u)]), vec4<u32>(arg_0, 4294967295u, u_input.b, u_input.b)) % vec4<u32>(32u)), select(func_3(), vec4<i32>(_wgslsmith_div_i32(global1.x, u_input.c.x), -u_input.c.x, _wgslsmith_sub_i32(var_0.x, global4.x), global4.x), vec4<bool>(true, true, all(vec2<bool>(true, true)), all(vec2<bool>(false, false))))));
    var var_2 = false;
    global3 = array<u32, 13>();
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(-1047f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, 193f)))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(673f, _wgslsmith_f_op_f32(f32(-1f) * -2916f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1066f))));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_2(~8653u >> (firstLeadingBit(u_input.b) % 32u)));
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(1u, 26u)]);
    global2 = _wgslsmith_div_u32(select(firstLeadingBit(1u), _wgslsmith_dot_vec2_u32(~select(vec2<u32>(u_input.b, global3[_wgslsmith_index_u32(26377u, 13u)]), vec2<u32>(60680u, 0u), true), ~reverseBits(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 13u)], 13u)], global3[_wgslsmith_index_u32(43048u, 13u)]))), all(select(vec2<bool>(arg_1, arg_1), select(vec2<bool>(arg_1, true), vec2<bool>(false, arg_1), vec2<bool>(arg_1, false)), vec2<bool>(false, arg_1)))), 1u << (global3[_wgslsmith_index_u32(~(~(~u_input.b)), 13u)] % 32u));
    var var_2 = firstLeadingBit(firstTrailingBit(-vec3<i32>(global1.x >> (7989u % 32u), -global1.x, u_input.c.x << (51716u % 32u))));
    global2 = countOneBits(~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, global3[_wgslsmith_index_u32(34609u, 13u)]), ~vec2<u32>(global3[_wgslsmith_index_u32(68400u, 13u)], 92859u)) | abs(47344u));
    return Struct_1(firstLeadingBit(_wgslsmith_div_i32(-(~global4.x), _wgslsmith_mult_i32(~1i, -global4.x))), ~_wgslsmith_mod_vec4_i32(var_1.a.b, var_1.a.b));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_2 {
    global1 = vec3<i32>(u_input.c.x, ~0i, 34359i) | abs(vec3<i32>(u_input.c.x, arg_1.b.x, -40584i));
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), firstTrailingBit(vec2<u32>(14551u, u_input.b)))), ~(~global3[_wgslsmith_index_u32(~max(global3[_wgslsmith_index_u32(u_input.b, 13u)], u_input.a), 13u)])), 26u)];
    global4 = arg_1.b;
    var_0 = func_1(-152f, true, -((u_input.c ^ global4.xxy) << (vec3<u32>(global3[_wgslsmith_index_u32(8989u, 13u)], 69353u, 24905u) % vec3<u32>(32u))) | var_0.b.xzw);
    let var_1 = global4.zw;
    return Struct_2(arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(-global1.x, ~vec4<i32>(_wgslsmith_div_i32(2147483647i, global1.x), ~23158i, ~global4.x, _wgslsmith_mod_i32(global1.x, u_input.c.x))), func_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-1387f)))), false, _wgslsmith_mod_vec3_i32(-global4.xxy, ~u_input.c)), true, func_1(1f, true, min(vec3<i32>(-2147483647i, 71722i, -19918i) >> (firstLeadingBit(vec3<u32>(1u, u_input.a, 1u)) % vec3<u32>(32u)), func_3().zwx)));
    let var_1 = -func_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(215f, _wgslsmith_f_op_f32(739f + -105f)))), true, ~vec3<i32>(global1.x, reverseBits(u_input.c.x), i32(-1i) * -1384i)).b.xz;
    var var_2 = Struct_2(func_4(global0[_wgslsmith_index_u32(firstTrailingBit(countOneBits(~u_input.b)), 26u)], Struct_1(global1.x & global4.x, ~vec4<i32>(var_0.a.b.x, var_0.a.a, global4.x, -39654i)), true, Struct_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.b.x, 2147483647i, u_input.c.x), vec3<i32>(7839i, 1i, var_0.a.b.x)), -u_input.c.x), select(vec4<i32>(17903i, u_input.c.x, 1i, global1.x) << (vec4<u32>(u_input.b, u_input.b, global3[_wgslsmith_index_u32(u_input.b, 13u)], u_input.a) % vec4<u32>(32u)), var_0.a.b, true))).a);
    var var_3 = 88650u;
    global0 = array<Struct_1, 26>();
    global2 = 1u;
    global0 = array<Struct_1, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(455f)), -350f, _wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(-272f - _wgslsmith_f_op_f32(step(-1179f, 1835f))))), ~(countOneBits(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(11019u, 13u)], 13u)], 4294967295u, global3[_wgslsmith_index_u32(u_input.b, 13u)], 3361u)) | ((vec4<u32>(8898u, 76825u, 1u, u_input.a) >> (vec4<u32>(u_input.b, u_input.a, u_input.a, u_input.b) % vec4<u32>(32u))) >> (~vec4<u32>(1u, global3[_wgslsmith_index_u32(34813u, 13u)], 1u, 0u) % vec4<u32>(32u)))), ~(~1611u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -786f, 1000f, 1483f), vec4<f32>(-1000f, -133f, -1113f, -1000f), vec4<bool>(false, false, true, false)))) + vec4<f32>(1f, 1f, 1f, 1f)) * vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(1674f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-641f, 545f) * _wgslsmith_div_f32(-1596f, -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -137f) + -1531f), 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(699f + -2077f)) - -1202f)));
}

