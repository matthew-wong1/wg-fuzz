struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13> = array<u32, 13>(6791u, 101643u, 0u, 1u, 4294967295u, 9349u, 0u, 1u, 1u, 45796u, 1u, 4294967295u, 1u);

var<private> global1: vec2<i32>;

var<private> global2: array<bool, 15>;

var<private> global3: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(26455i, -17286i, i32(-2147483648)), vec3<i32>(-17768i, 20957i, i32(-2147483648)), vec3<i32>(3221i, i32(-2147483648), 2147483647i), vec3<i32>(1i, -6946i, -68977i), vec3<i32>(-1i, 1i, i32(-2147483648)), vec3<i32>(2147483647i, 23091i, i32(-2147483648)), vec3<i32>(-48721i, -1i, -1062i), vec3<i32>(0i, i32(-2147483648), -34642i), vec3<i32>(1i, -1i, -56464i), vec3<i32>(-15094i, 50665i, -1i), vec3<i32>(2147483647i, i32(-2147483648), 0i), vec3<i32>(-16739i, 1978i, 25235i), vec3<i32>(1i, -40606i, -1i), vec3<i32>(0i, -1i, -19774i), vec3<i32>(-54566i, 0i, 19884i), vec3<i32>(0i, 12383i, 1i), vec3<i32>(2160i, 2147483647i, 1i), vec3<i32>(49086i, 64171i, 1i), vec3<i32>(33213i, 0i, 29843i), vec3<i32>(1i, i32(-2147483648), 0i), vec3<i32>(2147483647i, i32(-2147483648), -24305i), vec3<i32>(24563i, 2147483647i, 2147483647i), vec3<i32>(14476i, 28070i, 1i), vec3<i32>(1i, -2078i, 2147483647i), vec3<i32>(104340i, 48112i, i32(-2147483648)), vec3<i32>(2147483647i, i32(-2147483648), -29476i), vec3<i32>(-11548i, -52520i, -1i), vec3<i32>(i32(-2147483648), 129i, -1i), vec3<i32>(0i, 10397i, -8400i), vec3<i32>(-1i, -1i, -26355i), vec3<i32>(36098i, 42486i, 21375i));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    return 692f;
}

fn func_3(arg_0: f32) -> vec3<i32> {
    global3 = array<vec3<i32>, 31>();
    let var_0 = Struct_2(~_wgslsmith_sub_u32(u_input.a.x, ~global0[_wgslsmith_index_u32(59641u, 13u)]), firstLeadingBit(max(i32(-1i) * -1i, 7329i)));
    let var_1 = abs(~_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_add_i32(var_0.b, global1.x), ~var_0.b, -2147483647i), vec3<i32>(reverseBits(var_0.b), -1i, var_0.b)));
    let var_2 = arg_0;
    let var_3 = all(vec2<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34960u, 13u)], 15u)], true));
    return var_1;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: Struct_2) -> i32 {
    global2 = array<bool, 15>();
    var var_0 = Struct_1(~(vec4<i32>(-1i) * -vec4<i32>(arg_2.b, -2147483647i, global1.x, arg_0.b)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 4294967295u, arg_0.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 13u)], 13u)]) & ~vec4<u32>(u_input.a.x, 0u, global0[_wgslsmith_index_u32(arg_3.a, 13u)], 53794u), vec4<u32>(24348u, _wgslsmith_div_u32(arg_0.a, global0[_wgslsmith_index_u32(arg_0.a, 13u)]), 1u, 0u)) % vec4<u32>(32u)));
    let var_1 = vec3<i32>(_wgslsmith_add_i32(~arg_1.x, -2147483647i), arg_2.b, ~var_0.a.x);
    let var_2 = var_0.a;
    let var_3 = Struct_1(min(-var_0.a, ~(-(~var_0.a))));
    return -var_3.a.x;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<f32>) -> f32 {
    let var_0 = arg_0;
    let var_1 = -func_4(Struct_2(~25631u, -32616i), vec3<i32>(_wgslsmith_mod_i32(global1.x, -2147483647i), -2147483647i, i32(-1i) * -29903i) & -func_3(arg_1.x), var_0, Struct_2(var_0.a, arg_0.b));
    global1 = min(-vec2<i32>(var_1, 45461i), abs(firstLeadingBit(vec2<i32>(var_1, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1, -10419i, arg_0.b, -2147483647i), vec4<i32>(-1i, -1i, 41936i, 0i))))));
    let var_2 = Struct_2(var_0.a, -1i);
    var var_3 = var_0.a;
    return arg_1.x;
}

fn func_5(arg_0: vec3<f32>, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_3;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -996f));
    var var_2 = Struct_2(_wgslsmith_mod_u32(43208u, ~59655u), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(func_3(_wgslsmith_f_op_f32(trunc(-684f))), global3[_wgslsmith_index_u32(~u_input.a.x, 31u)] ^ abs(arg_3.a.yxz)), -(reverseBits(global3[_wgslsmith_index_u32(0u, 31u)]) << (u_input.a % vec3<u32>(32u)))));
    global2 = array<bool, 15>();
    global1 = ~var_0.a.wz;
    return Struct_1(arg_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(abs(~firstLeadingBit(u_input.a.x)));
    var var_1 = func_5(vec3<f32>(_wgslsmith_f_op_f32(func_1(!global2[_wgslsmith_index_u32(1u, 15u)], Struct_1(-vec4<i32>(global1.x, global1.x, global1.x, -2147483647i)), Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(1i, global1.x, 45195i, global1.x), vec4<i32>(global1.x, -1i, 2147483647i, global1.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -318f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1893f, 635f)) * _wgslsmith_div_f32(-133f, 828f))), -692f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(Struct_2(8830u, global1.x), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, -192f, -694f))))), _wgslsmith_div_f32(-1119f, _wgslsmith_f_op_f32(f32(-1f) * -982f)))), _wgslsmith_f_op_f32(-773f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(480f)) - _wgslsmith_f_op_f32(round(-313f))))), 1u, Struct_1((vec4<i32>(global1.x, -49629i, 0i, global1.x) ^ vec4<i32>(0i, global1.x, 82786i, -2147483647i)) | vec4<i32>(global1.x & 49501i, global1.x, _wgslsmith_mod_i32(global1.x, -1i), _wgslsmith_sub_i32(0i, -7253i))));
    var var_2 = firstTrailingBit(min(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, global1.x, 1i, 35723i), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.a.x, 1i, -21753i, global1.x), vec4<i32>(global1.x, global1.x, 13299i, -1i))), -vec4<i32>(global1.x, global1.x, -1i, var_1.a.x)), vec4<i32>(var_1.a.x, -var_1.a.x, ~(-1i), -abs(58660i))));
    let var_3 = vec2<u32>(5768u, _wgslsmith_add_u32(0u, 84589u));
    let var_4 = select(~min(~vec4<u32>(34610u, u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 13u)], 22695u), ~countOneBits(vec4<u32>(var_0, 77200u, var_3.x, 0u))), _wgslsmith_add_vec4_u32(min(~select(vec4<u32>(1u, 12605u, 1u, 24235u), vec4<u32>(var_0, var_3.x, 0u, global0[_wgslsmith_index_u32(81764u, 13u)]), vec4<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0, 13u)], 15u)], global2[_wgslsmith_index_u32(12116u, 15u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_3.x, 13u)], 15u)], false)), max(vec4<u32>(70102u, u_input.a.x, 40030u, 42833u) << (vec4<u32>(0u, var_0, 0u, u_input.a.x) % vec4<u32>(32u)), ~vec4<u32>(global0[_wgslsmith_index_u32(94944u, 13u)], var_0, var_0, global0[_wgslsmith_index_u32(var_3.x, 13u)]))), ~(~vec4<u32>(38544u, var_0, 4294967295u, var_3.x) | _wgslsmith_div_vec4_u32(vec4<u32>(var_3.x, 1u, 25665u, var_0), vec4<u32>(35653u, global0[_wgslsmith_index_u32(u_input.a.x, 13u)], var_0, var_3.x)))), !vec4<bool>(true, all(vec4<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(84720u, 13u)], 15u)], false, true, global2[_wgslsmith_index_u32(1u, 15u)])), true, all(select(vec2<bool>(global2[_wgslsmith_index_u32(70238u, 15u)], true), vec2<bool>(false, false), false))));
    var var_5 = _wgslsmith_f_op_f32(select(-1043f, 850f, true));
    var var_6 = !(!(!select(select(vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 15u)], true, global2[_wgslsmith_index_u32(18450u, 15u)]), vec4<bool>(true, true, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 13u)], 15u)], global2[_wgslsmith_index_u32(var_0, 15u)]), global2[_wgslsmith_index_u32(48948u, 15u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(64475u, 15u)], global2[_wgslsmith_index_u32(13161u, 15u)], global2[_wgslsmith_index_u32(var_4.x, 15u)]), all(vec4<bool>(global2[_wgslsmith_index_u32(0u, 15u)], global2[_wgslsmith_index_u32(var_0, 15u)], global2[_wgslsmith_index_u32(4294967295u, 15u)], true)))));
    let var_7 = Struct_1(vec4<i32>(var_1.a.x, ~27572i, -(~(~63118i)), 2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(min(var_4, firstTrailingBit(vec4<u32>(1u, var_0, min(u_input.a.x, var_4.x), ~5264u))), ~u_input.a, vec3<f32>(-681f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1884f - -961f) - -479f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(416f * 1191f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(549f, 2727f)))), -155f))), reverseBits(_wgslsmith_mod_vec4_i32(select(vec4<i32>(var_1.a.x, var_1.a.x, var_2.x, -26035i), -var_7.a, select(vec4<bool>(false, var_6.x, true, var_6.x), vec4<bool>(true, false, false, global2[_wgslsmith_index_u32(var_4.x, 15u)]), global2[_wgslsmith_index_u32(var_3.x, 15u)])), _wgslsmith_div_vec4_i32(select(var_1.a, var_1.a, vec4<bool>(true, global2[_wgslsmith_index_u32(var_0, 15u)], var_6.x, false)), var_7.a | var_7.a))), 2147483647i);
}

