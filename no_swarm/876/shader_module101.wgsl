struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<f32, 29> = array<f32, 29>(-770f, -725f, -1000f, -304f, 730f, -1000f, 818f, 1000f, 318f, 1285f, -997f, -682f, -578f, 108f, -1000f, -1000f, -1854f, -1409f, 1228f, -1000f, 1182f, 120f, 544f, -1971f, -614f, -540f, -212f, 1156f, -155f);

var<private> global1: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec2<u32>(6547u, 95446u), vec3<u32>(0u, 1u, 4294967295u), -1864f), Struct_1(vec2<u32>(54953u, 35632u), vec3<u32>(8270u, 13375u, 1u), -386f), Struct_1(vec2<u32>(0u, 1u), vec3<u32>(42818u, 0u, 86672u), 1199f), Struct_1(vec2<u32>(46336u, 28558u), vec3<u32>(15738u, 30365u, 32744u), -503f), Struct_1(vec2<u32>(0u, 9264u), vec3<u32>(0u, 0u, 94708u), -1776f));

var<private> global2: i32;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32) -> vec3<u32> {
    global0 = array<f32, 29>();
    let var_0 = vec2<bool>(false, global0[_wgslsmith_index_u32(~(~u_input.a), 29u)] > _wgslsmith_f_op_f32(-960f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0, 29u)] + 129f) + _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(50835u, 29u)])))));
    global0 = array<f32, 29>();
    var var_1 = Struct_1(~vec2<u32>(countOneBits(~4294967295u), arg_0), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0, 4294967295u, 1u), vec3<u32>(arg_0, 4294967295u, firstLeadingBit(14844u) | (arg_0 & 45553u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(24060u, 29u)])), _wgslsmith_f_op_f32(select(195f, _wgslsmith_f_op_f32(f32(-1f) * -261f), var_0.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, u_input.a, 17910u), vec3<u32>(53818u, u_input.a, 1u)), 29u)]) - _wgslsmith_div_f32(-1698f, _wgslsmith_f_op_f32(f32(-1f) * -789f)))));
    var var_2 = global1[_wgslsmith_index_u32(1u, 5u)];
    return vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(~min(var_1.a.x, arg_0), ~firstTrailingBit(u_input.a)), min(_wgslsmith_div_u32(58876u, ~0u), u_input.a)), var_2.a.x, ~(~(~4294967295u) | _wgslsmith_div_u32(_wgslsmith_div_u32(var_2.a.x, 46097u), arg_0)));
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = _wgslsmith_mult_vec3_u32(~(~arg_0.b), vec3<u32>(max(~(arg_0.b.x & 1u), u_input.a), u_input.a, ~(arg_0.a.x & arg_0.a.x) ^ _wgslsmith_dot_vec3_u32(func_3(0u), arg_0.b)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-266f - _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 29u)]))), _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(6239u, _wgslsmith_mod_u32(reverseBits(36164u), arg_0.b.x)), 29u)])), 1170f, _wgslsmith_div_f32(1681f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.c)))));
    var var_2 = Struct_1(var_0.zx, vec3<u32>(~abs(u_input.a), ~(~u_input.a), max(~firstLeadingBit(14648u), 4216u)), 190f);
    global0 = array<f32, 29>();
    global1 = array<Struct_1, 5>();
    return _wgslsmith_add_u32(1u, ~(~firstTrailingBit(select(42800u, 7634u, true))));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> vec2<u32> {
    var var_0 = reverseBits(~firstTrailingBit(select(arg_1.b, _wgslsmith_sub_vec3_u32(vec3<u32>(arg_3, 18444u, 0u), vec3<u32>(arg_3, 96705u, 6436u)), !vec3<bool>(false, arg_2, arg_0))));
    var var_1 = _wgslsmith_sub_u32(max(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3 << (u_input.a % 32u), arg_3, firstTrailingBit(0u)), vec3<u32>(~63018u, u_input.a >> (13917u % 32u), ~var_0.x)), u_input.a), arg_3);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(321f)));
    var_2 = 2503f;
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_2(Struct_1(~(~vec2<u32>(0u, 3919u)), arg_1.b, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_1.c, global0[_wgslsmith_index_u32(4294967295u, 29u)]))))), ~5450u), 5u)];
    return var_3.a;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec3<f32> {
    var var_0 = -reverseBits(abs(-_wgslsmith_clamp_vec4_i32(vec4<i32>(28036i, -25848i, -11642i, -2147483647i), vec4<i32>(0i, -9042i, -10203i, -2147483647i), vec4<i32>(1i, 2147483647i, -1i, 2147483647i))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(144f - 272f))), -133f, arg_0.c));
    let var_2 = -(~vec4<i32>(-12131i, -1i, -2147483647i, var_0.x) | _wgslsmith_mult_vec4_i32(vec4<i32>(1i, reverseBits(var_0.x), _wgslsmith_add_i32(1i, -2147483647i), var_0.x | var_0.x), ~vec4<i32>(var_0.x, -1i, var_0.x, var_0.x)));
    var_0 = ~countOneBits(vec4<i32>(firstLeadingBit(_wgslsmith_mod_i32(-12340i, -2147483647i)), -countOneBits(-2456i), 7069i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(6353i, -1493i, -16429i), var_0.wyx)));
    let var_3 = max(~_wgslsmith_clamp_vec4_u32(abs(abs(vec4<u32>(arg_1, 0u, arg_0.a.x, 4294967295u))), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 8793u, 7149u, 41832u) >> (vec4<u32>(arg_1, 4294967295u, 42043u, u_input.a) % vec4<u32>(32u)), countOneBits(vec4<u32>(4294967295u, u_input.a, 0u, 4294967295u))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 27980u, 44777u), vec4<u32>(100759u, arg_2.a.x, 2093u, 4294967295u) | vec4<u32>(1035u, arg_1, arg_1, 1u))), max(countOneBits(min(~vec4<u32>(4294967295u, arg_2.a.x, 0u, 4294967295u), select(vec4<u32>(u_input.a, u_input.a, 17419u, 37646u), vec4<u32>(arg_2.a.x, 4294967295u, arg_2.b.x, 51761u), false))), _wgslsmith_clamp_vec4_u32(abs(~vec4<u32>(arg_0.a.x, 1u, u_input.a, 25664u)), reverseBits(vec4<u32>(12106u, arg_1, arg_0.a.x, u_input.a)), firstTrailingBit(vec4<u32>(u_input.a, arg_1, 0u, 4294967295u) >> (vec4<u32>(48233u, 0u, u_input.a, arg_2.b.x) % vec4<u32>(32u))))));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c, 696f, arg_2.c) * _wgslsmith_f_op_vec3_f32(select(var_1, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(arg_1, 29u)], -1672f, false)), _wgslsmith_f_op_f32(abs(1356f))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_1), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(287f, arg_2.c, -1000f), vec3<f32>(1008f, var_1.x, 1539f), true))))), vec3<bool>(true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(Struct_1(func_1(false, Struct_1(vec2<u32>(7641u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a), -1536f), false, 8962u), ~vec3<u32>(u_input.a, 0u, 0u), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 29u)])), 42925u, Struct_1(firstLeadingBit(vec2<u32>(u_input.a, 1u)), countOneBits(vec3<u32>(u_input.a, u_input.a, 1u)), _wgslsmith_f_op_f32(abs(1260f))))))));
    global0 = array<f32, 29>();
    global2 = _wgslsmith_clamp_i32(max(39638i, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(-2528i, 1i), -10443i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 30148i, -1i), vec3<i32>(2147483647i, 1i, -2147483647i))), reverseBits(vec3<i32>(1i, 1i, 1i)))), _wgslsmith_sub_i32(max(-1i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-11640i, 0i), vec2<i32>(2147483647i, -16258i))), -1i), -firstLeadingBit(~1i));
    var var_1 = 515f;
    var var_2 = global1[_wgslsmith_index_u32(u_input.a ^ (u_input.a | func_2(Struct_1(abs(vec2<u32>(u_input.a, u_input.a)), firstTrailingBit(vec3<u32>(1832u, u_input.a, u_input.a)), _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(748u, 29u)]))))), 5u)];
    var_2 = Struct_1(var_2.a, ~func_3(0u), -628f);
    var var_3 = max(var_2.b.xy, _wgslsmith_div_vec2_u32(vec2<u32>(~_wgslsmith_sub_u32(u_input.a, 25448u), _wgslsmith_add_u32(func_2(global1[_wgslsmith_index_u32(78512u, 5u)]), ~u_input.a)), var_2.b.zz));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -709f)));
}

