struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: bool,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 15>;

var<private> global1: array<i32, 1> = array<i32, 1>(5438i);

var<private> global2: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(true, -49666i, 25979u, vec4<f32>(203f, -482f, -101f, -313f)), Struct_1(false, 1i, 0u, vec4<f32>(-343f, 918f, 647f, -706f)), Struct_1(false, 45039i, 31799u, vec4<f32>(-1435f, 318f, 2226f, -1762f)), Struct_1(true, -15323i, 0u, vec4<f32>(440f, 363f, -180f, -409f)), Struct_1(true, 1i, 4294967295u, vec4<f32>(-483f, 796f, 599f, 158f)), Struct_1(false, 30983i, 0u, vec4<f32>(919f, 445f, 898f, -140f)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = countOneBits(~arg_0.x ^ arg_0.x);
    let var_1 = 1175f;
    let var_2 = 1i;
    global0 = array<Struct_4, 15>();
    return global2[_wgslsmith_index_u32(~(_wgslsmith_dot_vec3_u32(vec3<u32>(1626u, _wgslsmith_mult_u32(arg_0.x, arg_0.x), 60028u), select(vec3<u32>(arg_0.x, arg_0.x, 30738u), vec3<u32>(1u, arg_0.x, 11811u), arg_1.xxz) | select(vec3<u32>(arg_0.x, var_0, arg_0.x), vec3<u32>(89538u, arg_0.x, var_0), false)) & 35936u), 6u)];
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_4) -> Struct_1 {
    let var_0 = vec3<bool>(false, arg_2.b, false);
    global2 = array<Struct_1, 6>();
    let var_1 = Struct_2(vec3<i32>(_wgslsmith_dot_vec3_i32(min(vec3<i32>(global1[_wgslsmith_index_u32(16460u, 1u)], arg_1.b, u_input.b) & vec3<i32>(12419i, u_input.b, global1[_wgslsmith_index_u32(64151u, 1u)]), _wgslsmith_sub_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(1u, 1u)], 9269i, arg_1.b), vec3<i32>(arg_1.b, u_input.a, global1[_wgslsmith_index_u32(arg_0, 1u)]))), -vec3<i32>(16046i, u_input.a, global1[_wgslsmith_index_u32(arg_1.c, 1u)])), _wgslsmith_dot_vec3_i32(-vec3<i32>(arg_1.b, global1[_wgslsmith_index_u32(1u, 1u)], 34066i), vec3<i32>(-1i) * -vec3<i32>(arg_1.b, -1i, 1i)), -u_input.a));
    let var_2 = true;
    global2 = array<Struct_1, 6>();
    return func_2(max(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0 & arg_0, arg_1.c << (66459u % 32u)), ~vec2<u32>(55050u, arg_1.c)), vec2<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, arg_0, 26298u, arg_0)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, arg_1.c, 0u, 0u), vec4<u32>(0u, 20219u, arg_0, arg_0))), arg_0)), select(vec4<bool>(all(var_0.yy), all(vec4<bool>(false, true, true, false)), true, false), select(!(!vec4<bool>(false, var_0.x, true, arg_1.a)), !select(vec4<bool>(arg_2.b, var_0.x, true, arg_1.a), vec4<bool>(arg_1.a, arg_1.a, true, false), vec4<bool>(true, false, var_2, false)), var_0.x | true), true), arg_2.c.xxz);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.d.x * _wgslsmith_f_op_f32(-arg_0.d.x))));
    let var_1 = ~countOneBits(vec2<u32>(~4294967295u, 13684u));
    let var_2 = _wgslsmith_f_op_f32(ceil(arg_1.x));
    let var_3 = abs(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(~2147483647i, firstLeadingBit(-2147483647i), 33237i), abs(vec3<i32>(-45309i, -2147483647i, u_input.b)) ^ (vec3<i32>(arg_0.b, -57316i, global1[_wgslsmith_index_u32(arg_0.c, 1u)]) ^ vec3<i32>(-11640i, arg_0.b, -43299i))), arg_0.b));
    let var_4 = Struct_3(Struct_2(reverseBits(vec3<i32>(global1[_wgslsmith_index_u32(~4294967295u, 1u)], _wgslsmith_mult_i32(2147483647i, var_3), _wgslsmith_dot_vec2_i32(vec2<i32>(53464i, global1[_wgslsmith_index_u32(arg_0.c, 1u)]), vec2<i32>(-43471i, 1i))))), Struct_1(arg_0.a, select(-36410i, _wgslsmith_add_i32(global1[_wgslsmith_index_u32(arg_0.c, 1u)], _wgslsmith_sub_i32(u_input.a, 6095i)), (var_1.x < 3410u) && true), arg_0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.x, var_2, 282f, arg_0.d.x) * arg_0.d))), arg_0.a, !arg_2);
    return Struct_2(vec3<i32>(var_3, arg_0.b, arg_0.b));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_4(vec4<f32>(-564f, 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-540f, -642f, true))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(795f, 475f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-175f))))), false && any(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), select(true, true, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-405f, -742f, -1000f, -269f), vec4<f32>(-447f, -389f, 1023f, 319f), vec4<bool>(true, true, false, true))), vec4<f32>(692f, -1309f, -565f, -389f)))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -1477f)), -525f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(151f)) * -1031f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(133f * 1529f))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * -1477f)), var_0.a.x))));
    let var_2 = Struct_3(func_4(func_3(abs(select(4294967295u, 1u, var_0.b)), func_2(vec2<u32>(1u, 1u), vec4<bool>(var_0.b, false, var_0.b, true), vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x)), global0[_wgslsmith_index_u32(select(20971u, ~72261u, true), 15u)]), _wgslsmith_f_op_vec2_f32(sign(var_0.c.zz)), !(!select(vec4<bool>(var_0.b, var_0.b, false, var_0.b), vec4<bool>(false, true, var_0.b, false), false))), global2[_wgslsmith_index_u32(~(~0u), 6u)], all(vec2<bool>(var_0.b, var_0.b)), select(select(vec4<bool>(true & var_0.b, false, all(vec2<bool>(var_0.b, true)), !var_0.b), select(select(vec4<bool>(false, var_0.b, var_0.b, true), vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b), vec4<bool>(true, var_0.b, false, var_0.b)), select(vec4<bool>(var_0.b, var_0.b, var_0.b, true), vec4<bool>(var_0.b, var_0.b, var_0.b, true), var_0.b), true), all(vec2<bool>(false, var_0.b)) || !var_0.b), !vec4<bool>(!var_0.b, false, !var_0.b, true), !select(select(vec4<bool>(var_0.b, true, var_0.b, var_0.b), vec4<bool>(true, var_0.b, var_0.b, var_0.b), var_0.b), vec4<bool>(var_0.b, var_0.b, true, var_0.b), var_0.b)));
    global2 = array<Struct_1, 6>();
    var var_3 = _wgslsmith_f_op_f32(step(1774f, var_2.b.d.x));
    return Struct_1(all(var_2.d.xwz), _wgslsmith_div_i32(-24099i, -57549i), _wgslsmith_mod_u32(10124u, ~_wgslsmith_add_u32(1u, var_2.b.c & var_2.b.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-218f - _wgslsmith_f_op_f32(ceil(690f))), 548f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1860f * -1409f) - -728f), _wgslsmith_f_op_f32(-1043f - _wgslsmith_f_op_f32(ceil(var_0.a.x)))) + _wgslsmith_f_op_vec4_f32(sign(var_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = ~max(var_0.b, var_0.b);
    global1 = array<i32, 1>();
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(func_2(vec2<u32>(53007u, var_0.c), vec4<bool>(var_0.a, false, true, var_0.a), var_0.d.xww).d.x, var_0.d.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, -1343f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(370f + var_0.d.x), var_0.d.x), _wgslsmith_f_op_f32(max(-329f, var_0.d.x)))));
    var var_3 = vec4<bool>(true, var_0.a && var_0.a, true, false);
    let var_4 = var_0.d.xz;
    var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_4, vec2<f32>(707f, var_4.x))) - var_0.d.zx), vec2<f32>(_wgslsmith_f_op_f32(abs(-2761f)), var_2.x))), var_4);
    var var_5 = var_3.x;
    var var_6 = func_4(Struct_1(false, ~var_0.b, firstTrailingBit(func_3(1u, func_1(), global0[_wgslsmith_index_u32(var_0.c, 15u)]).c), var_0.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(func_2(vec2<u32>(0u, 8205u), vec4<bool>(true, false, var_0.a, true), vec3<f32>(var_2.x, 1000f, var_2.x)).d.x, _wgslsmith_f_op_f32(-var_4.x)))), vec4<bool>(select(67318u <= var_0.c, true, var_3.x), true, true, !(!func_3(var_0.c, Struct_1(var_0.a, 0i, var_0.c, var_0.d), Struct_4(vec4<f32>(-759f, var_2.x, 155f, var_2.x), var_0.a, vec4<f32>(1317f, var_2.x, var_2.x, -1435f))).a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x * 1511f)), _wgslsmith_f_op_f32(var_4.x * _wgslsmith_f_op_f32(-var_4.x)), _wgslsmith_f_op_f32(122f - _wgslsmith_f_op_f32(step(var_0.d.x, var_0.d.x))), _wgslsmith_f_op_f32(237f - var_2.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.d.x, var_4.x, var_2.x, -1470f), var_0.d, var_3.x)), vec4<f32>(var_2.x, 581f, var_0.d.x, var_0.d.x))), _wgslsmith_f_op_vec4_f32(trunc(func_2(vec2<u32>(1u, 0u), vec4<bool>(false, true, var_0.a, true), vec3<f32>(1813f, 462f, -866f)).d)))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(var_0.c, 105268u) << (vec2<u32>(var_0.c, var_0.c) % vec2<u32>(32u))) >> (~firstTrailingBit(var_0.c) % 32u));
}

