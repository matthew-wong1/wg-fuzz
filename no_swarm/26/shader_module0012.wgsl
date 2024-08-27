struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: array<f32, 5> = array<f32, 5>(765f, -483f, 503f, -312f, 398f);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(19882u, 5u)], global1[_wgslsmith_index_u32(20209u, 5u)], -1036f) - vec3<f32>(395f, global1[_wgslsmith_index_u32(1u, 5u)], -611f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(700f, 773f, global1[_wgslsmith_index_u32(0u, 5u)]))))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1798f, global1[_wgslsmith_index_u32(4294967295u, 5u)], global1[_wgslsmith_index_u32(u_input.b, 5u)]))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1[_wgslsmith_index_u32(1u, 5u)], global1[_wgslsmith_index_u32(4294967295u, 5u)], global1[_wgslsmith_index_u32(u_input.c, 5u)])))))))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1[_wgslsmith_index_u32(12858u, 5u)], 1467f, global1[_wgslsmith_index_u32(u_input.c, 5u)]), vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 5u)], -760f, global1[_wgslsmith_index_u32(u_input.c, 5u)])))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.c, 5u)], -1606f, global1[_wgslsmith_index_u32(u_input.b, 5u)]))))));
    let var_1 = u_input.a;
    let var_2 = ~_wgslsmith_mod_u32(~firstLeadingBit(firstLeadingBit(4294967295u)), 82930u);
    let var_3 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(120539u, 5u)]);
    var var_4 = Struct_1(any(vec4<bool>(true, select(arg_0 != true, true, arg_0), true, arg_0)), var_0.x);
    return ((~(~25365u) ^ u_input.c) << ((u_input.c ^ _wgslsmith_mult_u32(u_input.c, 0u << (var_2 % 32u))) % 32u)) | 65717u;
}

fn func_2() -> vec4<u32> {
    global0 = array<Struct_1, 7>();
    let var_0 = global0[_wgslsmith_index_u32(~54371u, 7u)];
    global0 = array<Struct_1, 7>();
    global1 = array<f32, 5>();
    global0 = array<Struct_1, 7>();
    return vec4<u32>(1u, 32214u, ~(2764u & u_input.c) << (u_input.b % 32u), ~_wgslsmith_div_u32(9225u, firstTrailingBit(u_input.c))) >> (~vec4<u32>(_wgslsmith_sub_u32(firstLeadingBit(22433u), _wgslsmith_mult_u32(4294967295u, u_input.b)), u_input.c, ~func_3(var_0.a), 84605u) % vec4<u32>(32u));
}

fn func_1() -> f32 {
    var var_0 = ~((select(~vec4<u32>(60463u, u_input.b, u_input.b, 9962u), vec4<u32>(u_input.c, u_input.c, u_input.b, 1u), vec4<bool>(true, false, false, false)) << (~vec4<u32>(22990u, 111637u, u_input.c, u_input.b) % vec4<u32>(32u))) << ((func_2() << (vec4<u32>(max(55633u, u_input.c), u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 0u, 4294967295u), vec3<u32>(15057u, 52318u, 65133u)), u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_1 = global0[_wgslsmith_index_u32(max(_wgslsmith_mod_u32(~(~(~28259u)), _wgslsmith_dot_vec3_u32(max(var_0.xwx, ~vec3<u32>(91044u, u_input.c, 4294967295u)), var_0.xwz)), ~countOneBits(~4294967295u)), 7u)];
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, var_1.b), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-487f, var_1.b), vec2<f32>(var_1.b, 705f), true)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, 297f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.c, 5u)], global1[_wgslsmith_index_u32(69728u, 5u)])) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1[_wgslsmith_index_u32(48860u, 5u)], global1[_wgslsmith_index_u32(4294967295u, 5u)])))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1086f, 562f)))))), !(!any(!vec2<bool>(var_1.a, false)))));
    let var_3 = vec4<i32>(-2147483647i, 42002i, -u_input.a, 45390i);
    var var_4 = Struct_1(var_1.a, var_2.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.b, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 1u), 5u)])));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>) -> StorageBuffer {
    var var_0 = all(select(vec4<bool>(arg_1.x, arg_1.x, all(vec3<bool>(arg_1.x, arg_1.x, arg_0.a)), true), arg_1, select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 5u)] <= -404f, true, !arg_1.x), !select(vec4<bool>(true, true, false, true), arg_1, false), all(arg_1.zx))));
    var var_1 = ~_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(abs(firstLeadingBit(vec2<i32>(u_input.a, 0i))), _wgslsmith_mult_vec2_i32(abs(vec2<i32>(-64225i, 1i)), abs(vec2<i32>(-36816i, u_input.a)))), 2147483647i);
    let var_2 = 1u;
    let var_3 = ~u_input.a;
    let var_4 = select(reverseBits(~26378u) >> (min(~4294967295u, var_2) % 32u), ~(0u << (max(2970u, u_input.b) % 32u)), arg_1.x) << (~(~firstLeadingBit(0u) | (u_input.c & ~u_input.c)) % 32u);
    return StorageBuffer(vec3<u32>(35836u, ~firstTrailingBit(~4294967295u), 1u), _wgslsmith_mult_vec4_i32(~firstTrailingBit(~vec4<i32>(-5248i, 12407i, 557i, var_3)), reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, var_3, u_input.a, var_3), vec4<i32>(var_3, var_3, u_input.a, -2147483647i) >> (vec4<u32>(46475u, 0u, 4294967295u, 3297u) % vec4<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_1((_wgslsmith_f_op_f32(func_1()) > _wgslsmith_f_op_f32(-1577f * global1[_wgslsmith_index_u32(u_input.c, 5u)])) & !all(vec3<bool>(false, true, false)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(166f * _wgslsmith_f_op_f32(f32(-1f) * -893f))))), !select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), any(vec2<bool>(false, true))), vec4<bool>(true, true, true, true), any(vec3<bool>(true, false, true))));
}

