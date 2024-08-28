struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21> = array<u32, 21>(14572u, 1u, 70014u, 1u, 34516u, 1u, 35808u, 0u, 47640u, 1u, 4294967295u, 55285u, 0u, 0u, 42365u, 0u, 0u, 13935u, 65056u, 0u, 4294967295u);

var<private> global1: array<u32, 19> = array<u32, 19>(0u, 1u, 39299u, 258u, 13210u, 13423u, 1u, 0u, 1u, 22701u, 6335u, 24891u, 0u, 0u, 4294967295u, 0u, 3290u, 8255u, 6155u);

var<private> global2: array<u32, 14>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: f32) -> i32 {
    let var_0 = -vec3<i32>(_wgslsmith_dot_vec3_i32(~firstLeadingBit(vec3<i32>(-19609i, 1i, -4205i)), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, 64544i, -2147483647i), vec3<i32>(66655i, -32624i, -1i))), 1i, 37622i);
    return 1i;
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_1) -> i32 {
    var var_0 = !(!vec4<bool>(!any(vec3<bool>(true, false, false)), min(arg_0.x, arg_2.a.x) > -1i, arg_1 != _wgslsmith_f_op_f32(-arg_1), true | (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 14u)], 14u)] < 1u)));
    var_0 = vec4<bool>(all(var_0.zyw), (_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_div_f32(arg_1, -1585f)) > arg_1) || (true & select(!var_0.x, false, false)), false, false);
    let var_1 = Struct_1(abs(vec3<i32>(arg_2.a.x, arg_2.a.x, _wgslsmith_sub_i32(arg_2.a.x, func_3(10667u, 1348f)))));
    global0 = array<u32, 21>();
    var_0 = select(vec4<bool>(false, !(_wgslsmith_div_f32(189f, -1542f) <= _wgslsmith_f_op_f32(sign(arg_1))), any(!select(vec3<bool>(false, true, var_0.x), var_0.zzy, false)), !all(vec4<bool>(true, var_0.x, false, true)) & true), !vec4<bool>(any(vec3<bool>(true, var_0.x, false)), _wgslsmith_div_f32(arg_1, arg_1) > _wgslsmith_f_op_f32(arg_1 * arg_1), select(all(vec2<bool>(var_0.x, true)), all(vec2<bool>(false, true)), any(var_0.xz)), true & !var_0.x), select(!(!vec4<bool>(false, var_0.x, false, true)), !(!(!vec4<bool>(true, true, var_0.x, var_0.x))), !(!select(vec4<bool>(false, true, true, var_0.x), vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(false, false, var_0.x, true)))));
    return ~arg_0.x;
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: i32, arg_3: bool) -> bool {
    return true;
}

fn func_1(arg_0: u32) -> f32 {
    global1 = array<u32, 19>();
    var var_0 = !func_4(_wgslsmith_sub_vec4_u32(firstLeadingBit(~vec4<u32>(arg_0, u_input.a.x, 49519u, 39083u)), ~vec4<u32>(22258u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 19u)], 19u)], 1146u, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 21u)], 19u)])), -1527f, _wgslsmith_mult_i32(-(~21652i), reverseBits(func_2(vec4<i32>(-1i, -2147483647i, -7571i, 26047i), 400f, Struct_1(vec3<i32>(-83188i, 2147483647i, -1i))))), true);
    let var_1 = !any(select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), false));
    var var_2 = min(func_3(countOneBits(u_input.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(920f + _wgslsmith_f_op_f32(sign(-1295f))), -841f))), _wgslsmith_sub_i32(1i, -(~4902i)));
    global2 = array<u32, 14>();
    return _wgslsmith_f_op_f32(f32(-1f) * -1649f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(select(-1221f, _wgslsmith_f_op_f32(func_1(61764u)), true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(414f))))));
    global1 = array<u32, 19>();
    var var_1 = Struct_1(vec3<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(32575i, 9399i, 0i), vec3<i32>(1i, 2147483647i, 26577i))), 494i, firstLeadingBit(firstTrailingBit(-1i))) | countOneBits(~vec3<i32>(1i, 1i, 1i)));
    var var_2 = Struct_1(vec3<i32>(~var_1.a.x ^ (var_1.a.x >> (u_input.a.x % 32u)), firstTrailingBit(-(~var_1.a.x)), 2147483647i));
    global2 = array<u32, 14>();
    var var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(select(select(vec4<i32>(var_2.a.x, _wgslsmith_sub_i32(var_1.a.x, -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_1.a.x, 21545i), var_1.a), func_3(u_input.a.x, -117f)), abs(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, var_1.a.x, 26969i, 41620i), vec4<i32>(var_2.a.x, -1i, -36952i, -1i))), all(vec2<bool>(false, false))), ~(~vec4<i32>(var_1.a.x, 1i, 22174i, var_2.a.x)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 50089i, -2147483647i, var_1.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 9705i, 14678i, var_2.a.x), vec4<i32>(-24027i, -1i, var_2.a.x, -1i)), firstLeadingBit(vec4<i32>(var_2.a.x, -1i, -2147483647i, var_1.a.x))), false), _wgslsmith_div_u32(global2[_wgslsmith_index_u32(4294967295u, 14u)], min(0u, 0u)), ~((~vec3<u32>(u_input.a.x, 2923u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17387u, 19u)], 14u)], 21u)], 21u)]) ^ ~vec3<u32>(u_input.a.x, 4294967295u, global1[_wgslsmith_index_u32(0u, 19u)])) & abs(_wgslsmith_add_vec3_u32(u_input.a.zwz, vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(0u, 21u)], 0u)))));
}

