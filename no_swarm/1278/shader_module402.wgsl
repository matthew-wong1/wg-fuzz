struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 28>;

var<private> global1: Struct_3 = Struct_3(Struct_1(true));

var<private> global2: vec4<u32> = vec4<u32>(4294967295u, 0u, 42956u, 1u);

var<private> global3: array<bool, 1> = array<bool, 1>(true);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-481f, 709f)) + _wgslsmith_f_op_f32(min(980f, 309f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1419f + _wgslsmith_div_f32(-486f, -501f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(107f)) + _wgslsmith_f_op_f32(-592f - -1433f)) - _wgslsmith_f_op_f32(floor(337f))), -1000f));
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: vec4<f32>, arg_3: u32) -> vec4<u32> {
    var var_0 = global1.a;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(arg_2.zwx)), _wgslsmith_f_op_vec3_f32(-arg_2.zzx))), _wgslsmith_f_op_vec3_f32(-arg_2.xwx)));
    let var_2 = Struct_2(global1.a, global1.a, !(!(_wgslsmith_f_op_f32(-var_1.x) > _wgslsmith_f_op_f32(-arg_2.x))), abs(arg_1));
    global3 = array<bool, 1>();
    var_1 = _wgslsmith_f_op_vec3_f32(arg_2.zwx + arg_2.xyz);
    return ~_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_add_u32(global2.x, u_input.b), u_input.b, 89038u, abs(global2.x)) & _wgslsmith_mod_vec4_u32(~vec4<u32>(0u, global2.x, 1u, 57880u), vec4<u32>(u_input.a, u_input.b, arg_3, 2393u)), ~(~vec4<u32>(66287u, 1u, 38267u, u_input.a) & firstTrailingBit(vec4<u32>(10859u, 26300u, 13106u, u_input.b))));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>) -> u32 {
    global2 = func_4(_wgslsmith_sub_i32((22282i << (u_input.a % 32u)) | ~(-16982i), 1i), firstLeadingBit(reverseBits(vec4<i32>(-1i, -1i, -20637i, 70193i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_2(Struct_1(global1.a.a), global1.a, false, vec4<i32>(25700i, 2147483647i, 5987i, 2147483647i))))) * vec4<f32>(-850f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -653f, _wgslsmith_f_op_f32(-285f - 356f))), countOneBits(arg_0)) & vec4<u32>(u_input.a, abs(arg_0), countOneBits(_wgslsmith_mult_u32(57375u, firstLeadingBit(global2.x))), 1u);
    global0 = array<vec2<bool>, 28>();
    let var_0 = Struct_2(Struct_1(global1.a.a), global1.a, global1.a.a, _wgslsmith_div_vec4_i32(vec4<i32>(~abs(1i), reverseBits(firstTrailingBit(14987i)), 5002i, 1i), vec4<i32>(-1i, ~(i32(-1i) * -3422i), _wgslsmith_dot_vec2_i32(~vec2<i32>(0i, 1i), vec2<i32>(1i, 26646i)), _wgslsmith_mod_i32(~(-17395i), 2147483647i))));
    global0 = array<vec2<bool>, 28>();
    global2 = countOneBits(_wgslsmith_sub_vec4_u32(~(firstLeadingBit(vec4<u32>(83328u, 17665u, 1u, 1u)) << ((vec4<u32>(0u, 35060u, 4673u, u_input.b) << (vec4<u32>(global2.x, 28248u, 0u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, arg_0, u_input.a, 54351u), ~vec4<u32>(u_input.b, arg_0, u_input.b, u_input.a), vec4<u32>(u_input.a, 70652u, 40251u, 43658u)), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, arg_0, global2.x, 86949u), vec4<u32>(1u, 0u, 4294967295u, 0u)), ~vec4<u32>(u_input.b, arg_0, arg_0, 46457u)))));
    return firstLeadingBit(_wgslsmith_add_u32(arg_0 << (func_4(var_0.d.x, select(vec4<i32>(var_0.d.x, 15645i, var_0.d.x, -18391i), vec4<i32>(11197i, var_0.d.x, -2147483647i, var_0.d.x), arg_1), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1644f, 1000f, 326f, 984f)), _wgslsmith_sub_u32(0u, global2.x)).x % 32u), ~abs(0u)));
}

fn func_1() -> vec4<u32> {
    let var_0 = ~vec4<u32>(~_wgslsmith_mod_u32(max(global2.x, 6007u), firstTrailingBit(28421u)), ~(~func_2(1u, vec4<bool>(global3[_wgslsmith_index_u32(0u, 1u)], global1.a.a, global3[_wgslsmith_index_u32(1u, 1u)], global1.a.a))), u_input.b, global2.x);
    let var_1 = -1i;
    var var_2 = ~(vec4<u32>(~74705u, 1u, var_0.x | global2.x, _wgslsmith_dot_vec4_u32(var_0, var_0)) >> (vec4<u32>(func_2(u_input.a, vec4<bool>(false, global1.a.a, true, false)), abs(global2.x), min(var_0.x, u_input.b), 13707u) % vec4<u32>(32u))) >> (~(~vec4<u32>(global2.x, ~4294967295u, ~4294967295u, global2.x)) % vec4<u32>(32u));
    var var_3 = (~firstTrailingBit(countOneBits(var_1)) | _wgslsmith_mult_i32((2147483647i >> (0u % 32u)) << ((var_2.x << (var_2.x % 32u)) % 32u), _wgslsmith_dot_vec3_i32(-vec3<i32>(71i, -2147483647i, var_1), abs(vec3<i32>(var_1, 0i, 0i))))) ^ ~countOneBits(var_1);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2557f, 717f, global3[_wgslsmith_index_u32(~47793u, 1u)])))));
    return vec4<u32>(4294967295u >> (select(func_2(~global2.x, !vec4<bool>(global3[_wgslsmith_index_u32(33505u, 1u)], global1.a.a, global1.a.a, global1.a.a)), 24744u, all(vec2<bool>(global1.a.a, global3[_wgslsmith_index_u32(global2.x, 1u)]))) % 32u), min(19984u, _wgslsmith_mod_u32(~var_2.x, _wgslsmith_div_u32(var_0.x, u_input.b)) << (~select(0u, var_2.x, global3[_wgslsmith_index_u32(25290u, 1u)]) % 32u)), 56479u & ~u_input.a, global2.x ^ _wgslsmith_add_u32(_wgslsmith_mult_u32(global2.x, var_2.x), ~(~u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 150f;
    global2 = func_1();
    global1 = Struct_3(global1.a);
    global2 = abs((select(max(vec4<u32>(4294967295u, 1u, u_input.a, global2.x), vec4<u32>(u_input.b, 4294967295u, u_input.a, global2.x)), reverseBits(vec4<u32>(global2.x, 548u, 9507u, 49153u)), true) >> (vec4<u32>(global2.x << (global2.x % 32u), 1u, reverseBits(u_input.b), _wgslsmith_dot_vec3_u32(global2.wxy, vec3<u32>(global2.x, 9721u, 721u))) % vec4<u32>(32u))) & vec4<u32>(global2.x, u_input.b, global2.x, 1u));
    let var_1 = Struct_3(global1.a);
    var var_2 = var_1;
    global0 = array<vec2<bool>, 28>();
    let var_3 = min(34381i, ~(-_wgslsmith_div_i32(~26372i, -2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(func_1().x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + 1884f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(522f + var_0) + _wgslsmith_f_op_f32(max(482f, var_0)))), _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(abs(var_0)))), -(~((vec4<i32>(-1i, var_3, var_3, var_3) >> (vec4<u32>(1u, 26593u, u_input.a, 4294967295u) % vec4<u32>(32u))) >> ((vec4<u32>(34985u, u_input.b, global2.x, 27427u) & vec4<u32>(global2.x, global2.x, u_input.a, 12892u)) % vec4<u32>(32u)))));
}

