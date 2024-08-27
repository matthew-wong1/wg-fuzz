struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17>;

var<private> global1: array<vec2<i32>, 12>;

var<private> global2: array<i32, 28> = array<i32, 28>(30336i, 2147483647i, -20309i, i32(-2147483648), 18264i, i32(-2147483648), 14490i, -76408i, 2147483647i, 15120i, i32(-2147483648), -48175i, 1i, 2147483647i, 2147483647i, 1i, 17535i, 37006i, 3677i, 13711i, 46222i, -1i, i32(-2147483648), i32(-2147483648), 49046i, 2147483647i, -1i, 48412i);

var<private> global3: vec3<u32> = vec3<u32>(53119u, 40211u, 4695u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_1(reverseBits(vec3<i32>(-23549i, countOneBits(global0[_wgslsmith_index_u32(abs(global3.x), 17u)]), ~_wgslsmith_div_i32(global2[_wgslsmith_index_u32(0u, 28u)], -3775i))));
    var var_1 = Struct_4(select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), vec3<bool>(all(vec3<bool>(false, true, false)), true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false)), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), !vec3<bool>(false, true, any(vec2<bool>(false, false)))), _wgslsmith_dot_vec4_u32((u_input.a >> (_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(6005u, 24791u, global3.x, 0u)) % vec4<u32>(32u))) << (max(abs(vec4<u32>(4294967295u, global3.x, 8954u, 64364u)), u_input.a) % vec4<u32>(32u)), (~u_input.a & vec4<u32>(u_input.a.x, 11847u, global3.x, 1u)) >> ((u_input.a >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, 18509u, 1u, u_input.a.x), u_input.a, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u))));
    global3 = _wgslsmith_mult_vec3_u32(u_input.a.zxy, _wgslsmith_sub_vec3_u32(countOneBits(~vec3<u32>(4640u, global3.x, global3.x)), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(var_1.b, 40592u, 33084u)), countOneBits(u_input.a.yxx | vec3<u32>(22160u, global3.x, 1u)))));
    global2 = array<i32, 28>();
    return firstLeadingBit(select(vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, select(-2147483647i, var_0.a.x, false), 1i), select(i32(-1i) * -1i, ~global0[_wgslsmith_index_u32(global3.x, 17u)], !var_1.a.x), _wgslsmith_add_i32(_wgslsmith_mult_i32(2147483647i, -1i), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 10990u), 28u)])), reverseBits(vec3<i32>(-var_0.a.x, ~2147483647i, 0i << (var_1.b % 32u))), select(select(!vec3<bool>(var_1.a.x, true, false), vec3<bool>(var_1.a.x, false, var_1.a.x), vec3<bool>(true, var_1.a.x, var_1.a.x)), !select(var_1.a, vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), var_1.a), vec3<bool>(all(vec2<bool>(var_1.a.x, false)), any(var_1.a.yz), !var_1.a.x))));
}

fn func_2(arg_0: vec3<u32>) -> u32 {
    let var_0 = Struct_2(vec4<bool>(true, !(true | any(vec2<bool>(true, true))), true, !(!any(vec3<bool>(false, true, true)))), Struct_1(~(-func_3())), Struct_1(vec3<i32>(_wgslsmith_clamp_i32(reverseBits(-20817i), _wgslsmith_sub_i32(0i, global0[_wgslsmith_index_u32(45096u, 17u)]), global2[_wgslsmith_index_u32(arg_0.x, 28u)]), -1i, 36519i)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(364f))))));
    global3 = abs(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(~(~arg_0), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1603u, 67992u, global3.x), u_input.a.wzx), vec3<u32>(0u, 38152u, arg_0.x) | u_input.d)), u_input.d, vec3<u32>(72998u, 27640u, 1u)));
    let var_1 = Struct_3(Struct_1(select(var_0.b.a, vec3<i32>(~(-72043i), 1i, -39013i), var_0.a.yzx)), any(select(!(!vec3<bool>(var_0.a.x, true, var_0.a.x)), var_0.a.xzx, var_0.a.x || (var_0.a.x | false))), ~(-abs(global2[_wgslsmith_index_u32(arg_0.x, 28u)]) >> (~1u % 32u)), 2147483647i, select(_wgslsmith_add_vec2_u32(u_input.d.zy, vec2<u32>(_wgslsmith_add_u32(global3.x, 4647u), arg_0.x)), vec2<u32>(~(u_input.a.x ^ arg_0.x), ~9481u), vec2<bool>(any(vec3<bool>(var_0.a.x, true, var_0.a.x)), false)));
    let var_2 = Struct_4(vec3<bool>(all(var_0.a.xy), false, true), u_input.d.x);
    global2 = array<i32, 28>();
    return _wgslsmith_sub_u32(~min(~4294967295u, u_input.d.x), 22108u) ^ _wgslsmith_div_u32(34982u, 4294967295u);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: f32) -> Struct_3 {
    global1 = array<vec2<i32>, 12>();
    var var_0 = ~global3.x;
    global3 = ~u_input.a.zwz;
    var var_1 = vec4<u32>(~global3.x, ~1u, global3.x, func_2(~(~vec3<u32>(65020u, u_input.a.x, global3.x))));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2 + arg_2))) < arg_2;
    return Struct_3(Struct_1(-max(vec3<i32>(1i, 1i, 2147483647i), vec3<i32>(-5558i, 0i, global0[_wgslsmith_index_u32(1u, 17u)])) ^ vec3<i32>(global2[_wgslsmith_index_u32(min(0u, 42185u), 28u)], global2[_wgslsmith_index_u32(0u, 28u)], u_input.b & u_input.b)), any(select(vec2<bool>(!var_2, !arg_0.x), arg_0.zx, vec2<bool>(true, true))), -(~(~(arg_1.x & global0[_wgslsmith_index_u32(60097u, 17u)]))), (_wgslsmith_add_i32(~u_input.b, _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(u_input.d.x, 28u)], 1i)) << (_wgslsmith_add_u32(~1u, u_input.d.x) % 32u)) << (~_wgslsmith_sub_u32(u_input.d.x, 0u) % 32u), global3.zx);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: Struct_4) -> vec4<i32> {
    return _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(arg_1.b.a.x, arg_0.d, u_input.b, global2[_wgslsmith_index_u32(4294967295u, 28u)]), select(vec4<i32>(-20621i, 25218i, u_input.b, u_input.b), vec4<i32>(1i, arg_0.d, global2[_wgslsmith_index_u32(3220u, 28u)], -2147483647i), arg_0.b)), vec4<i32>(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)]), 1i, -40856i, firstTrailingBit(50116i))), ~arg_1.b.a.x, ~(-(~arg_1.c.a.x)), -countOneBits(-arg_0.a.a.x)), vec4<i32>(countOneBits(_wgslsmith_dot_vec2_i32(min(arg_0.a.a.yx, vec2<i32>(-1i, arg_1.c.a.x)), arg_0.a.a.yx << (vec2<u32>(arg_0.e.x, arg_2.x) % vec2<u32>(32u)))), _wgslsmith_add_i32(_wgslsmith_mult_i32(1i, countOneBits(arg_0.a.a.x)), global2[_wgslsmith_index_u32(~(u_input.d.x & arg_2.x), 28u)]), -48365i, _wgslsmith_add_i32(_wgslsmith_sub_i32(~1i, 27718i), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~u_input.a, vec4<u32>(arg_3.b, 58241u, 47305u, 4294967295u)), 17u)])));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: vec3<u32>, arg_3: vec4<bool>) -> Struct_2 {
    global1 = array<vec2<i32>, 12>();
    global2 = array<i32, 28>();
    global1 = array<vec2<i32>, 12>();
    global0 = array<i32, 17>();
    let var_0 = _wgslsmith_add_u32(17850u, firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.a.zzy, vec3<u32>(57783u, 81636u, 1u))));
    return Struct_2(arg_3, func_1(!vec3<bool>(any(arg_3.zw), false, false), arg_0.zx, 475f).a, func_1(!arg_3.xzz, firstTrailingBit(select(~vec2<i32>(u_input.b, arg_0.x), vec2<i32>(-83441i, 743i) & arg_0.wz, true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_1.x, 1051f))), arg_1.x))).a, 822f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(4294967295u, _wgslsmith_mod_u32(u_input.d.x, global3.x))), 28u)] << (12068u % 32u);
    let var_1 = _wgslsmith_f_op_f32(min(-687f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1694f)))));
    let var_2 = global3.xy;
    var var_3 = func_5(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(18742i, -4480i, 38500i, u_input.b), vec4<i32>(u_input.b, 29916i, 2147483647i, global2[_wgslsmith_index_u32(u_input.d.x, 28u)]))), firstTrailingBit(~vec4<i32>(-1i, 2147483647i, 2147483647i, 2147483647i)), min(max(vec4<i32>(-48910i, global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(66743u, 17u)], global2[_wgslsmith_index_u32(var_2.x, 28u)]), vec4<i32>(u_input.b, 2147483647i, u_input.b, global2[_wgslsmith_index_u32(4294967295u, 28u)])), select(vec4<i32>(-2147483647i, u_input.b, -30583i, 1i), vec4<i32>(34584i, global0[_wgslsmith_index_u32(0u, 17u)], -1i, global0[_wgslsmith_index_u32(8739u, 17u)]), vec4<bool>(true, true, false, true)))), func_4(func_1(vec3<bool>(true, true, true), global1[_wgslsmith_index_u32(u_input.c, 12u)] | vec2<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 28u)], 1i), _wgslsmith_div_f32(var_1, 2384f)), Struct_2(vec4<bool>(true, true, true, true), func_1(vec3<bool>(true, true, false), global1[_wgslsmith_index_u32(global3.x, 12u)], -493f).a, func_1(vec3<bool>(true, true, true), global1[_wgslsmith_index_u32(85290u, 12u)], var_1).a, _wgslsmith_f_op_f32(select(var_1, 1286f, true))), vec4<u32>(~28021u, _wgslsmith_add_u32(global3.x, global3.x), u_input.c, 4294967295u), Struct_4(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), 1u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-var_1))), var_1) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, 439f) - _wgslsmith_f_op_f32(step(-1149f, 1063f))), _wgslsmith_f_op_f32(-1000f * -697f))), max(_wgslsmith_add_vec3_u32(~u_input.a.xxz ^ u_input.d, vec3<u32>(global3.x, global3.x, u_input.a.x)), max(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 0u, 0u), _wgslsmith_add_vec3_u32(u_input.d, vec3<u32>(var_2.x, 1u, 1u))), u_input.d)), !vec4<bool>(-1451f >= var_1, select(true, true, false), true, true));
    var_3 = func_5(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(u_input.c, 17u)], 42607i, var_3.b.a.x), -vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(74530u, 17u)], 4135i, u_input.b)), ~_wgslsmith_div_vec4_i32(vec4<i32>(var_3.b.a.x, global2[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(global3.x, 17u)], 1i), vec4<i32>(-62500i, var_3.b.a.x, -1i, -9830i)), select(-vec4<i32>(var_3.b.a.x, -1i, 22412i, 46234i), vec4<i32>(var_3.b.a.x, global0[_wgslsmith_index_u32(45799u, 17u)], global2[_wgslsmith_index_u32(u_input.a.x, 28u)], global0[_wgslsmith_index_u32(u_input.c, 17u)]) ^ vec4<i32>(-5043i, -1i, global2[_wgslsmith_index_u32(global3.x, 28u)], 0i), var_3.a.x)), vec4<i32>(-global2[_wgslsmith_index_u32(u_input.c | 61822u, 28u)], global0[_wgslsmith_index_u32(var_2.x, 17u)], _wgslsmith_add_i32(_wgslsmith_sub_i32(0i, var_3.b.a.x), global0[_wgslsmith_index_u32(var_2.x, 17u)]), -1i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-857f, var_1)) + _wgslsmith_div_vec2_f32(vec2<f32>(-1564f, var_3.d), vec2<f32>(432f, -312f))) - vec2<f32>(var_3.d, var_1)) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(185f)) * _wgslsmith_div_f32(var_1, var_1)), _wgslsmith_f_op_f32(select(-435f, -1476f, var_3.a.x)))), u_input.a.yyx, vec4<bool>(var_3.a.x, select(all(!vec2<bool>(var_3.a.x, false)), true, func_5(vec4<i32>(-37542i, -13274i, global2[_wgslsmith_index_u32(var_2.x, 28u)], -9487i), vec2<f32>(890f, -206f), u_input.a.wwy, !vec4<bool>(var_3.a.x, true, var_3.a.x, var_3.a.x)).a.x), !func_1(var_3.a.xyz, -vec2<i32>(u_input.b, -1i), 1527f).b, var_3.a.x));
    var var_4 = abs(global3.yx) >> (global3.zz % vec2<u32>(32u));
    let var_5 = 39456u;
    let x = u_input.a;
    s_output = StorageBuffer(var_5, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-724f, var_1, var_3.d), vec3<f32>(var_1, var_3.d, var_1)) - vec3<f32>(-1000f, var_1, var_1)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(958f, var_1, 746f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1835f, -778f, var_3.d))), any(var_3.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(456f, -518f, -1065f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.d, var_3.d, var_1)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.d, -431f, var_3.d) + vec3<f32>(var_3.d, var_1, -1672f)))), global0[_wgslsmith_index_u32(19141u, 17u)], func_3().x);
}

