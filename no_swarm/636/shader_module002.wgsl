struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(-1i, -63314i, 27353i), vec3<i32>(-34946i, 1408i, 7187i), vec3<i32>(0i, 1i, -1i), vec3<i32>(1i, -1i, -26102i), vec3<i32>(-25956i, -1i, -13387i), vec3<i32>(-10893i, -1i, -27297i), vec3<i32>(i32(-2147483648), 1278i, 28640i), vec3<i32>(i32(-2147483648), 1i, 29330i), vec3<i32>(30059i, i32(-2147483648), -24044i), vec3<i32>(33349i, i32(-2147483648), -12127i), vec3<i32>(8128i, 1i, 1i), vec3<i32>(-14431i, 20974i, 0i), vec3<i32>(0i, 2147483647i, 41717i), vec3<i32>(i32(-2147483648), -1i, 0i), vec3<i32>(7890i, 1i, i32(-2147483648)), vec3<i32>(-1i, -23870i, -392i), vec3<i32>(1i, -1i, -1i), vec3<i32>(1i, -2521i, -24250i), vec3<i32>(28126i, 2147483647i, 38590i), vec3<i32>(2147483647i, -1050i, i32(-2147483648)), vec3<i32>(2147483647i, 0i, 1i), vec3<i32>(11425i, 2147483647i, 2147483647i), vec3<i32>(-1i, -1i, 30468i), vec3<i32>(-1i, 0i, -73732i), vec3<i32>(0i, 17891i, 2147483647i), vec3<i32>(0i, 1i, 61451i), vec3<i32>(-13739i, i32(-2147483648), i32(-2147483648)), vec3<i32>(15539i, 0i, -43282i), vec3<i32>(1i, 2147483647i, 1i), vec3<i32>(34402i, -7128i, 18026i), vec3<i32>(0i, i32(-2147483648), 0i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec2<u32>) -> vec3<bool> {
    var var_0 = _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(select(max(vec3<i32>(-12910i, u_input.a.x, 22175i), vec3<i32>(1i, u_input.a.x, 0i)), vec3<i32>(-1i, -2147483647i, u_input.a.x), !arg_0), -(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) >> (vec3<u32>(79919u, arg_2.x, arg_2.x) % vec3<u32>(32u)))), _wgslsmith_sub_vec3_i32(-u_input.a.xxy, countOneBits(vec3<i32>(u_input.a.x, u_input.a.x, -27525i)))), vec3<i32>(u_input.a.x, -52560i << (reverseBits(0u) % 32u), 7678i));
    var var_1 = !((arg_2.x != ~arg_2.x) & !all(!vec3<bool>(arg_0, true, false)));
    var var_2 = arg_1;
    var var_3 = _wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -u_input.a.yy, u_input.a.yz);
    var_1 = any(var_2.a.b);
    return select(!(!(!select(vec3<bool>(arg_0, true, false), var_2.a.b, false))), select(var_2.a.b, select(var_2.a.b, vec3<bool>(arg_2.x >= 4294967295u, arg_0, any(arg_1.a.b)), var_2.a.b), true), true);
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec3<bool>) -> Struct_1 {
    global0 = array<vec3<i32>, 31>();
    global0 = array<vec3<i32>, 31>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 1254f)), func_3(arg_2.x, arg_1, firstLeadingBit(max(vec2<u32>(1u, 76687u), ~vec2<u32>(24600u, 0u)))));
    global0 = array<vec3<i32>, 31>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-417f * 2175f))), -1466f) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.a.a.x, arg_1.a.a.x, true))), arg_1.b)), !select(select(!arg_1.a.b, select(vec3<bool>(arg_1.a.b.x, true, false), vec3<bool>(false, false, false), vec3<bool>(arg_1.a.b.x, true, true)), !arg_2), select(select(vec3<bool>(arg_2.x, true, arg_1.a.b.x), vec3<bool>(true, arg_2.x, true), vec3<bool>(true, true, true)), vec3<bool>(var_0.b.x, arg_2.x, true), vec3<bool>(true, var_0.b.x, arg_2.x)), false));
    return Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.zx)))), _wgslsmith_f_op_vec2_f32(trunc(var_0.a))), var_1.b);
}

fn func_4(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_2(func_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(138f, arg_0.a.x, arg_0.a.x, 700f), vec4<f32>(arg_0.a.x, arg_0.a.x, -763f, arg_0.a.x), arg_0.b.x))))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(exp2(arg_0.a)), arg_0.b), 2071f), !arg_0.b), 708f);
    var var_1 = select(_wgslsmith_div_u32(1u, 1u), ~((~49825u << (_wgslsmith_clamp_u32(4294967295u, 43996u, 1u) % 32u)) << (1u % 32u)), true);
    var_0 = Struct_2(var_0.a, -328f);
    let var_2 = select(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(2138f)), _wgslsmith_f_op_f32(ceil(1766f)), 1000f, var_0.b)), Struct_2(func_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1193f, 1320f, -999f, -135f))), Struct_2(Struct_1(var_0.a.a, vec3<bool>(var_0.a.b.x, true, var_0.a.b.x)), -1101f), !arg_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(311f - arg_0.a.x) + _wgslsmith_f_op_f32(-arg_0.a.x))), select(vec3<bool>(any(var_0.a.b), !arg_0.b.x, true), func_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.a.x, 1019f, -1000f, var_0.b))), Struct_2(var_0.a, arg_0.a.x), !vec3<bool>(false, arg_0.b.x, true)).b, all(vec4<bool>(var_0.a.b.x, var_0.a.b.x, arg_0.b.x, var_0.a.b.x)))).b.xy, !select(!(!vec2<bool>(var_0.a.b.x, false)), arg_0.b.yy, true), func_3(true, Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a.x, -392f)), var_0.a.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -524f))), abs(max(_wgslsmith_sub_vec2_u32(vec2<u32>(14225u, 4294967295u), vec2<u32>(1u, 1u)), select(vec2<u32>(46962u, 1u), vec2<u32>(27418u, 4294967295u), var_0.a.b.yx)))).zy);
    let var_3 = select(select(!vec4<bool>(any(vec2<bool>(true, false)), any(vec4<bool>(true, var_0.a.b.x, var_2.x, arg_0.b.x)), false, var_2.x & false), select(select(!vec4<bool>(true, var_2.x, false, var_2.x), select(vec4<bool>(false, false, true, var_2.x), vec4<bool>(var_0.a.b.x, var_0.a.b.x, false, true), vec4<bool>(var_2.x, var_0.a.b.x, arg_0.b.x, true)), any(vec3<bool>(var_0.a.b.x, false, true))), vec4<bool>(all(vec4<bool>(true, true, var_0.a.b.x, false)), !var_0.a.b.x, all(vec2<bool>(true, var_0.a.b.x)), all(var_2)), true | any(vec4<bool>(true, true, var_2.x, var_2.x))), !(var_0.a.a.x >= _wgslsmith_f_op_f32(136f + 113f))), select(vec4<bool>(select(true, true, true), select(true || var_0.a.b.x, false, func_3(true, Struct_2(Struct_1(vec2<f32>(arg_0.a.x, arg_0.a.x), arg_0.b), arg_0.a.x), vec2<u32>(61108u, 34201u)).x), true, true), !select(!vec4<bool>(true, false, var_2.x, false), !vec4<bool>(var_0.a.b.x, true, var_0.a.b.x, false), !vec4<bool>(var_2.x, arg_0.b.x, arg_0.b.x, arg_0.b.x)), select(~0u > firstTrailingBit(4294967295u), true, true)), !select(!select(vec4<bool>(false, true, true, var_2.x), vec4<bool>(true, arg_0.b.x, var_0.a.b.x, true), vec4<bool>(false, true, arg_0.b.x, false)), vec4<bool>(any(vec3<bool>(false, var_2.x, false)), all(arg_0.b), var_2.x, var_2.x), true));
    return countOneBits(0u);
}

fn func_1() -> vec4<bool> {
    let var_0 = vec4<u32>(~(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 12425u, 0u, 1u), vec4<u32>(0u, 28145u, 34062u, 35081u)) >> ((55479u >> (1u % 32u)) % 32u)) << (func_4(func_2(vec4<f32>(598f, 499f, 1000f, 1632f), Struct_2(Struct_1(vec2<f32>(-1000f, 729f), vec3<bool>(true, false, true)), 1666f), vec3<bool>(true, true, true))) % 32u), 1167u, 0u, ~1u);
    return select(vec4<bool>(u_input.a.x < _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), 1i), var_0.x == max(~3312u, firstLeadingBit(1u)), var_0.x <= 22914u, (false & (var_0.x > 22416u)) == true), !(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), true)), vec4<bool>(all(vec2<bool>(true, true)), false, any(vec3<bool>(true, true, true)), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(52882u << (1u % 32u), 1u, 1u, abs(2565u))), firstTrailingBit(~global0[_wgslsmith_index_u32(1u, 31u)]), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-381f, 1f, -1009f, _wgslsmith_div_f32(401f, -1611f)), vec4<f32>(_wgslsmith_f_op_f32(step(448f, -155f)), _wgslsmith_f_op_f32(f32(-1f) * -100f), 296f, 1073f), select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), func_1(), u_input.a.x != u_input.a.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1894f, 921f, 335f, 681f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(527f, 1472f, -687f, -1545f) * vec4<f32>(-630f, -626f, 971f, -1000f))), vec4<f32>(_wgslsmith_f_op_f32(412f * 1050f), _wgslsmith_f_op_f32(-2315f * 1221f), -239f, _wgslsmith_f_op_f32(f32(-1f) * -719f)), select(select(vec4<bool>(false, var_0.x, false, true), vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(var_0.x, true, true, false)), select(vec4<bool>(true, true, var_0.x, true), vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, true)), select(vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(true, true, var_0.x, true), var_0.x)))), !vec4<bool>(!var_0.x, true, true, var_0.x))), -1i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-29969i, u_input.a.x, u_input.a.x, 40112i), u_input.a, false), vec4<i32>(1i, u_input.a.x, -23962i, -32226i)), u_input.a.x) & 0i);
}

