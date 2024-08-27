struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31> = array<bool, 31>(false, false, false, false, false, false, true, false, false, true, false, false, false, false, true, false, false, false, false, true, false, false, false, false, false, true, true, true, false, false, true);

var<private> global1: vec2<f32> = vec2<f32>(864f, -1907f);

var<private> global2: vec3<bool> = vec3<bool>(true, true, false);

var<private> global3: vec2<i32> = vec2<i32>(-50446i, 20933i);

var<private> global4: array<vec4<bool>, 14> = array<vec4<bool>, 14>(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<bool>) -> vec2<bool> {
    var var_0 = !(!select(arg_1.c >= u_input.a, false, any(global2.zx))) & (~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.b.x, arg_1.b.x, 4114u), vec3<u32>(arg_1.b.x, arg_1.b.x, arg_1.b.x)), firstLeadingBit(arg_1.b.wyx)) >= ~33873u);
    global3 = ~(arg_0.xz | _wgslsmith_clamp_vec2_i32(arg_0.xz << (vec2<u32>(2477u, 32637u) % vec2<u32>(32u)), ~vec2<i32>(global3.x, u_input.b), arg_0.yx));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -573f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.a.x, 1134f)))) + 1224f) - -108f);
    var_0 = any(global2.zx);
    let var_2 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(364f, global1.x, global1.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), arg_1.a), vec4<u32>(63931u, 0u, ~arg_1.b.x, 8129u) ^ (vec4<u32>(~arg_1.b.x, ~4294967295u, 1u, firstTrailingBit(arg_1.b.x)) << ((max(arg_1.b, vec4<u32>(4294967295u, 28296u, 82888u, arg_1.b.x)) >> (~arg_1.b % vec4<u32>(32u))) % vec4<u32>(32u))), ~select(1i, -21484i, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(arg_1.b.x, 1u), 1u), 31u)]));
    return !vec2<bool>(-50142i <= _wgslsmith_div_i32(-global3.x, -2147483647i), any(!(!global2.xx)));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> vec4<u32> {
    var var_0 = min(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.b, 1i), arg_1), abs(min(6755i, 44501i)), -global3.x), vec3<i32>(0i, countOneBits(arg_0.c & 33378i), _wgslsmith_add_i32(arg_0.c, -9951i))), vec3<i32>(arg_0.c, min(1i, _wgslsmith_sub_i32(_wgslsmith_add_i32(-2147483647i, u_input.b), ~(-17084i))), global3.x));
    let var_1 = arg_0.a.x;
    var var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(899f, _wgslsmith_f_op_f32(ceil(var_1)))));
    let var_4 = select(func_3(select(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1, -1i, 2792i), vec3<i32>(1i, u_input.b, arg_0.c))), vec3<i32>(-2147483647i, var_0.x ^ -4267i, reverseBits(arg_0.c)), true), Struct_1(arg_0.a, firstTrailingBit(firstTrailingBit(arg_0.b)), abs(firstLeadingBit(var_2.c))), vec4<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(1u, 31u)], true, false)) & (global0[_wgslsmith_index_u32(12539u, 31u)] || global2.x), global2.x & false, false | (false == global2.x), global0[_wgslsmith_index_u32(0u, 31u)] | true)), func_3(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(var_2.c, arg_1, 1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, global3.x, -61090i), vec3<i32>(var_2.c, 1i, arg_1), vec3<i32>(40384i, 2147483647i, 2147483647i))), vec3<i32>(u_input.a, 0i, var_2.c)), arg_0, !select(select(vec4<bool>(true, false, global2.x, global0[_wgslsmith_index_u32(arg_0.b.x, 31u)]), global4[_wgslsmith_index_u32(4294967295u, 14u)], global4[_wgslsmith_index_u32(var_2.b.x, 14u)]), select(global4[_wgslsmith_index_u32(arg_0.b.x, 14u)], global4[_wgslsmith_index_u32(4294967295u, 14u)], vec4<bool>(global2.x, global0[_wgslsmith_index_u32(1u, 31u)], global2.x, false)), !vec4<bool>(false, global0[_wgslsmith_index_u32(arg_0.b.x, 31u)], true, false))), select(select(select(global2.yz, !vec2<bool>(true, global2.x), all(global4[_wgslsmith_index_u32(51542u, 14u)])), !select(global2.xx, global2.zz, vec2<bool>(global0[_wgslsmith_index_u32(61277u, 31u)], false)), !global2.xx), global2.zz, !(!select(global2.xy, global2.yz, vec2<bool>(false, false)))));
    return ~(~arg_0.b);
}

fn func_1() -> StorageBuffer {
    global2 = !(!(!(!(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(101848u, 31u)], global2.x)))));
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, global1.x), vec4<f32>(global1.x, global1.x, -435f, 210f))))), _wgslsmith_mult_vec4_u32(~abs(func_2(Struct_1(vec4<f32>(global1.x, 731f, -1637f, 922f), vec4<u32>(0u, 44159u, 1u, 0u), global3.x), u_input.b)), max(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(33410u, 0u, 77951u, 4294967295u), vec4<u32>(82340u, 1u, 1u, 42056u), vec4<u32>(17153u, 91597u, 48853u, 1u))), vec4<u32>(1u, 1u, 1u, 1u))), select(13007i, u_input.a, global2.x));
    var var_1 = global2.xx;
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.a.x)), _wgslsmith_f_op_f32(abs(226f)), _wgslsmith_f_op_f32(trunc(global1.x)), _wgslsmith_div_f32(-539f, -571f))))), var_0.b, _wgslsmith_sub_i32(-firstTrailingBit(1i), (i32(-1i) * -var_0.c) << (82400u % 32u)));
    let var_2 = all(vec2<bool>(false, global2.x || true));
    return StorageBuffer(44522u, vec3<u32>(~_wgslsmith_mod_u32(24000u, ~var_0.b.x), 30835u ^ ~_wgslsmith_dot_vec3_u32(var_0.b.yxz, vec3<u32>(var_0.b.x, 30475u, 52357u)), var_0.b.x), select(_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(var_0.c, u_input.a, 29020i, 4341i)), vec4<i32>(global3.x, var_0.c, 2147483647i, u_input.a) >> (var_0.b % vec4<u32>(32u))) & min(reverseBits(vec4<i32>(2147483647i, 24075i, 0i, global3.x)), ~vec4<i32>(0i, var_0.c, -2147483647i, u_input.b)), min(vec4<i32>(u_input.b, 0i, u_input.b ^ var_0.c, _wgslsmith_clamp_i32(global3.x, -43440i, global3.x)), -_wgslsmith_mult_vec4_i32(vec4<i32>(-20113i, -1i, -49929i, var_0.c), vec4<i32>(-1i, -1i, -64869i, global3.x))), !all(vec4<bool>(false, false, var_1.x, true))), vec3<u32>(_wgslsmith_div_u32(~var_0.b.x, firstTrailingBit(_wgslsmith_div_u32(var_0.b.x, var_0.b.x))), firstTrailingBit(abs(min(13410u, var_0.b.x))), 61607u), vec2<i32>(-(30008i << (var_0.b.x % 32u)), 20212i) << (firstTrailingBit(var_0.b.wz) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 31>();
    var var_0 = 1u;
    let x = u_input.a;
    s_output = func_1();
}

