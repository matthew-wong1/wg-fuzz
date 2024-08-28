struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1>;

var<private> global1: Struct_2;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = global1.a.b.x;
    let var_1 = Struct_3(u_input.a, !(!global0[_wgslsmith_index_u32(1u & max(u_input.a.x, 23050u), 1u)]), global1.b.b.yxx);
    var_0 = max(global1.a.a, 8434i);
    let var_2 = ~vec2<i32>(-2147483647i, min(16576i, ~(~6002i)));
    var var_3 = var_1;
    return arg_0;
}

fn func_2() -> vec2<u32> {
    var var_0 = firstTrailingBit(min(global1.a.b.x, reverseBits(firstTrailingBit(global1.a.b.x))));
    let var_1 = Struct_1(u_input.b, select(vec4<i32>(reverseBits(countOneBits(global1.c.b.x)), max(global1.a.b.x, u_input.b), -global1.b.b.x, global1.c.b.x), _wgslsmith_add_vec4_i32(abs(_wgslsmith_mod_vec4_i32(global1.c.b, global1.a.b)), vec4<i32>(46433i, i32(-1i) * -23518i, global1.a.a, -1i)), _wgslsmith_f_op_f32(func_3(-711f)) == _wgslsmith_f_op_f32(round(-1000f))), max(_wgslsmith_clamp_vec3_u32(u_input.a.wzy, vec3<u32>(63415u, 32704u, u_input.a.x) | global1.b.c, vec3<u32>(1u, global1.e, global1.a.c.x)), ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(global1.c.c.x, 17964u, global1.b.c.x), vec3<u32>(21935u, 14498u, 8928u)))));
    global0 = array<bool, 1>();
    let var_2 = Struct_3(~vec4<u32>(1u, global1.c.c.x, u_input.a.x, ~select(9579u, global1.e, false)), false, _wgslsmith_mod_vec3_i32(abs(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, 0i, var_1.b.x), vec3<i32>(-16944i, var_1.b.x, -43813i) >> (var_1.c % vec3<u32>(32u)))), var_1.b.zzz));
    var var_3 = vec3<u32>(1u, select(_wgslsmith_dot_vec2_u32(~u_input.a.xx, global1.a.c.zx), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~u_input.a.ww, vec2<u32>(global1.a.c.x, u_input.a.x)), ~(1u | u_input.a.x), var_1.c.x << (~24347u % 32u)), true), _wgslsmith_mult_u32(_wgslsmith_mod_u32(global1.e, _wgslsmith_sub_u32(1u, var_1.c.x)), u_input.a.x));
    return vec2<u32>(~(~var_1.c.x), var_3.x);
}

fn func_4(arg_0: vec2<u32>) -> Struct_1 {
    global1 = Struct_2(global1.a, global1.c, Struct_1(-(_wgslsmith_sub_i32(-64190i, u_input.b) | u_input.b), max(global1.c.b, _wgslsmith_sub_vec4_i32(global1.a.b, global1.a.b)), global1.b.c), vec3<u32>(4294967295u & ~global1.c.c.x, ~firstLeadingBit(4294967295u), ~reverseBits(global1.e)) | u_input.a.zww, 15114u);
    var var_0 = select(select(!select(vec4<bool>(false, false, false, false), !vec4<bool>(global0[_wgslsmith_index_u32(0u, 1u)], false, global0[_wgslsmith_index_u32(36292u, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)]), !global0[_wgslsmith_index_u32(u_input.a.x, 1u)]), !(!vec4<bool>(true, true, global0[_wgslsmith_index_u32(29827u, 1u)], global0[_wgslsmith_index_u32(33825u, 1u)])), any(select(!vec4<bool>(true, true, global0[_wgslsmith_index_u32(14795u, 1u)], false), !vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 1u)], true, true, false), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], true, global0[_wgslsmith_index_u32(global1.d.x, 1u)], true), vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 1u)], global0[_wgslsmith_index_u32(global1.a.c.x, 1u)], true, global0[_wgslsmith_index_u32(0u, 1u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(7298u, 1u)], false))))), !select(vec4<bool>(select(false, global0[_wgslsmith_index_u32(25420u, 1u)], false), global0[_wgslsmith_index_u32(~2870u, 1u)], !global0[_wgslsmith_index_u32(1u, 1u)], true), vec4<bool>(true, true, global0[_wgslsmith_index_u32(global1.c.c.x, 1u)] & global0[_wgslsmith_index_u32(4294967295u, 1u)], true), vec4<bool>(any(vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)])), all(vec4<bool>(global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(67517u, 1u)], false, global0[_wgslsmith_index_u32(4294967295u, 1u)])), true, true)), global0[_wgslsmith_index_u32(26929u, 1u)]);
    let var_1 = 43605i;
    var_0 = vec4<bool>(var_0.x, var_0.x, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-155f, 771f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-870f)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-542f))));
    var var_2 = u_input.a;
    return global1.b;
}

fn func_1() -> Struct_2 {
    return Struct_2(func_4(func_2()), global1.b, global1.c, vec3<u32>(_wgslsmith_add_u32(global1.d.x, u_input.a.x), 4294967295u, _wgslsmith_add_u32(u_input.a.x, ~1u)), _wgslsmith_div_u32(firstTrailingBit(u_input.a.x), global1.e));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2) -> vec4<u32> {
    var var_0 = Struct_3(vec4<u32>(arg_1.e, func_1().c.c.x, 0u, global1.a.c.x), -506f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-345f, 1061f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2030f)))), func_1().a.b.zyw);
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1639f, -409f), vec2<f32>(-2823f, -952f))))))));
    var_0 = Struct_3(~vec4<u32>(~arg_0.x, 4294967295u, 4294967295u, 4294967295u), select(var_0.b, global0[_wgslsmith_index_u32(~(~arg_0.x), 1u)], var_1.x >= _wgslsmith_f_op_f32(abs(250f))) | !(!global0[_wgslsmith_index_u32(~0u, 1u)]), -(-vec3<i32>(arg_1.a.b.x, var_0.c.x, -2147483647i) >> (~(global1.c.c ^ arg_0) % vec3<u32>(32u))));
    var var_2 = var_1.x;
    let var_3 = Struct_3(~abs(var_0.a), -443f < _wgslsmith_f_op_f32(trunc(-1117f)), reverseBits(_wgslsmith_mult_vec3_i32(var_0.c << (global1.d % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.c.b.x, arg_1.c.b.x, var_0.c.x), ~var_0.c, vec3<i32>(40375i, -1i, 2147483647i)))));
    return ~reverseBits(vec4<u32>(21782u, _wgslsmith_div_u32(reverseBits(arg_0.x), u_input.a.x), u_input.a.x, arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(u_input.a >> (_wgslsmith_add_vec4_u32(vec4<u32>(~u_input.a.x, ~u_input.a.x, 8502u, ~global1.a.c.x), u_input.a) % vec4<u32>(32u)), func_5(global1.a.c, func_1()), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(func_5(~(~global1.d), func_1()).x, u_input.a.x), 1u)]);
    let var_1 = global0[_wgslsmith_index_u32(4294967295u, 1u)];
    let var_2 = vec2<bool>(!global0[_wgslsmith_index_u32(59412u, 1u)], select(any(!vec3<bool>(global0[_wgslsmith_index_u32(global1.b.c.x, 1u)], global0[_wgslsmith_index_u32(14292u, 1u)], global0[_wgslsmith_index_u32(18590u, 1u)])), u_input.b >= _wgslsmith_div_i32(2869i, -u_input.b), true));
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-187f, 100f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(615f * 1056f)) - -1224f))), any(vec3<bool>(var_2.x, all(select(var_2, vec2<bool>(false, var_2.x), vec2<bool>(true, true))), true))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.b.c.x, var_0.x, -global1.a.b & _wgslsmith_mult_vec4_i32(max(vec4<i32>(u_input.b, u_input.b, -1i, -47781i), vec4<i32>(-1i, global1.b.b.x, 22213i, 1i)) << (_wgslsmith_sub_vec4_u32(u_input.a, u_input.a) % vec4<u32>(32u)), global1.c.b), global1.c.b.wy, global1.b.b.wz);
}

