struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28> = array<f32, 28>(1840f, -188f, -641f, -207f, -385f, 325f, -1671f, -344f, 807f, -477f, -311f, 656f, 351f, -1123f, 842f, 115f, -1000f, -1258f, 110f, -1019f, -1693f, 309f, 126f, 1000f, -606f, 252f, 304f, 447f);

var<private> global1: array<Struct_1, 25>;

var<private> global2: array<f32, 31> = array<f32, 31>(212f, -1000f, 235f, 1035f, 440f, 463f, 1749f, 1360f, 1000f, -985f, -649f, 466f, 377f, -545f, 337f, 116f, 1000f, 1416f, -644f, -411f, 2464f, 790f, 193f, -1643f, -731f, 2210f, 490f, 1000f, 630f, -724f, -1127f);

var<private> global3: Struct_1 = Struct_1(vec4<i32>(0i, i32(-2147483648), 4932i, 11683i));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: Struct_1) -> i32 {
    var var_0 = select(vec3<bool>(all(vec3<bool>(arg_1.x, !arg_1.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(u_input.a, 28u)]))) < -119f, arg_1.x), select(select(select(vec3<bool>(false, false, true), !vec3<bool>(false, arg_1.x, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, arg_1.x || false), !any(vec3<bool>(true, false, true))), vec3<bool>(false, true, any(!vec4<bool>(false, arg_1.x, true, true))), !select(!vec3<bool>(true, arg_1.x, arg_1.x), vec3<bool>(false, arg_1.x, arg_1.x), true)), select(select(select(vec3<bool>(false, true, false), vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(arg_1.x, arg_1.x, false)), !select(vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(false, arg_1.x, false), vec3<bool>(arg_1.x, arg_1.x, true)), vec3<bool>(false, select(arg_1.x, true, arg_1.x), !arg_1.x)), vec3<bool>(true, arg_1.x, !any(vec4<bool>(true, true, arg_1.x, arg_1.x))), arg_1.x));
    global1 = array<Struct_1, 25>();
    var var_1 = min(_wgslsmith_clamp_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(43059u, u_input.c, 1u, u_input.c)), vec4<u32>(4294967295u, u_input.b.x, u_input.a, 0u), firstTrailingBit(vec4<u32>(u_input.c, 29616u, 1u, u_input.c)))), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 0u, 4294967295u, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(22322u, 46899u, 4294967295u, 4294967295u), vec4<u32>(1u, u_input.a, u_input.a, u_input.c))), firstTrailingBit(vec4<u32>(40298u, u_input.b.x, 56576u, u_input.a))), vec4<u32>(select(8043u, u_input.c, any(vec4<bool>(var_0.x, var_0.x, false, arg_1.x))), 0u, _wgslsmith_div_u32(~u_input.a, _wgslsmith_div_u32(73713u, u_input.c)), ~(~3795u))), select(~(firstLeadingBit(vec4<u32>(4294967295u, 0u, 1u, 1045u)) << (~vec4<u32>(1u, 28910u, 56056u, u_input.c) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 0u, 34507u, u_input.c) | vec4<u32>(4294967295u, u_input.b.x, 72966u, u_input.b.x), vec4<u32>(4294967295u, u_input.b.x, u_input.c, u_input.c) & vec4<u32>(0u, u_input.a, u_input.c, 22104u)), vec4<u32>(u_input.c, u_input.c, ~4666u, _wgslsmith_dot_vec3_u32(vec3<u32>(62573u, u_input.c, 17829u), vec3<u32>(5760u, u_input.a, u_input.c)))), var_0.x));
    global3 = Struct_1(firstLeadingBit(arg_2.a));
    var var_2 = select(max(~(vec4<u32>(1u, var_1.x, u_input.c, u_input.b.x) >> (~vec4<u32>(var_1.x, var_1.x, var_1.x, u_input.c) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.a, var_1.x), vec4<u32>(var_1.x, 4294967295u, var_1.x, u_input.a)), vec4<u32>(1u, u_input.b.x, 4294967295u, u_input.b.x) << (vec4<u32>(0u, 1184u, var_1.x, 1u) % vec4<u32>(32u))), vec4<u32>(var_1.x, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, u_input.c), var_1.zxw), var_1.x))), vec4<u32>(var_1.x, u_input.c, _wgslsmith_sub_u32(44581u, 0u), countOneBits(~(~1u))), var_0.x);
    return _wgslsmith_div_i32(2147483647i, _wgslsmith_mult_i32(_wgslsmith_add_i32(1i, _wgslsmith_mult_i32(global3.a.x, -30268i) >> (4294967295u % 32u)), -1i));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec2<bool>, arg_3: f32) -> vec3<bool> {
    global3 = global1[_wgslsmith_index_u32(~u_input.b.x, 25u)];
    global1 = array<Struct_1, 25>();
    global3 = Struct_1(~vec4<i32>(countOneBits(_wgslsmith_dot_vec2_i32(global3.a.ww, global3.a.zy)), _wgslsmith_div_i32(global3.a.x, arg_0), select(-40920i, func_3(vec2<i32>(arg_0, global3.a.x), vec2<bool>(true, false), Struct_1(vec4<i32>(arg_0, 0i, global3.a.x, global3.a.x))), true), 0i));
    global3 = Struct_1(-global3.a);
    let var_0 = Struct_2(Struct_1(firstLeadingBit(abs(vec4<i32>(global3.a.x, arg_0, 2147483647i, 2147483647i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_3)) * 1075f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(ceil(-1000f))) * arg_3))), arg_3, !(!(!(!vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x)))));
    return vec3<bool>(true, any(var_0.e.wxy), false);
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(global3.a), 1237f, arg_1, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 31u)] * arg_1), select(select(select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), select(vec4<bool>(true, false, arg_0.x, false), vec4<bool>(true, false, arg_0.x, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, true)), select(vec4<bool>(arg_0.x, true, arg_0.x, false), vec4<bool>(arg_0.x, false, true, true), vec4<bool>(arg_0.x, false, true, arg_0.x))), vec4<bool>(true, arg_0.x, arg_0.x | true, true), arg_0.x), select(!vec4<bool>(arg_0.x, true, true, arg_0.x), vec4<bool>(func_2(global3.a.x, arg_2.x, vec2<bool>(arg_0.x, false), global0[_wgslsmith_index_u32(u_input.b.x, 28u)]).x, arg_0.x && arg_0.x, arg_0.x, true), !(!vec4<bool>(true, true, arg_0.x, arg_0.x))), vec4<bool>(any(vec4<bool>(false, arg_0.x, false, arg_0.x)), arg_0.x | true, !arg_0.x, select(func_2(0i, 620f, arg_0.zz, arg_2.x).x, arg_0.x, u_input.b.x < u_input.c))));
    var var_1 = Struct_1(var_0.a.a);
    var_1 = var_0.a;
    var_1 = global1[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.a, _wgslsmith_add_u32(1u, u_input.c)), u_input.b.x, 10644u)), 25u)];
    let var_2 = _wgslsmith_sub_u32(abs(~min(reverseBits(4294967295u), u_input.a)), ~(~(~(~u_input.b.x))));
    return global1[_wgslsmith_index_u32(22361u, 25u)];
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -670f)), 675f);
    let var_1 = func_4(select(vec3<bool>(false, any(vec3<bool>(true, true, true)), false), func_2(_wgslsmith_mult_i32(max(global3.a.x, global3.a.x), global3.a.x), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(min(arg_0.x, u_input.b.x), 28u)]), select(vec2<bool>(false, true), vec2<bool>(true, true), true), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c, arg_0.x), 28u)] - -1000f)), true), _wgslsmith_div_f32(-1750f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(71184u, 31u)])), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0[_wgslsmith_index_u32(min(u_input.b.x, arg_0.x), 28u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.c, 31u)] * 585f), _wgslsmith_f_op_f32(step(-446f, global0[_wgslsmith_index_u32(4013u, 28u)]))))))));
    global2 = array<f32, 31>();
    var var_2 = !((false | all(vec2<bool>(true, true))) != select(any(vec3<bool>(true, true, true)), all(vec2<bool>(false, true)), any(vec2<bool>(true, true))));
    let var_3 = _wgslsmith_div_i32(max(~global3.a.x, max(firstLeadingBit(~global3.a.x), func_3(select(global3.a.zz, vec2<i32>(global3.a.x, -2147483647i), false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), var_1))), firstTrailingBit(reverseBits(~_wgslsmith_clamp_i32(var_1.a.x, 2147483647i, -1i))));
    return 21783u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(max(~firstTrailingBit(u_input.b), vec3<u32>(abs(u_input.a), ~u_input.b.x, _wgslsmith_add_u32(1u, 0u))), u_input.b)), 25u)];
    global1 = array<Struct_1, 25>();
    global1 = array<Struct_1, 25>();
    global2 = array<f32, 31>();
    let var_1 = _wgslsmith_sub_vec4_u32(~(select(vec4<u32>(u_input.a, u_input.a, 41114u, 27981u), vec4<u32>(4294967295u, 27299u, 0u, u_input.b.x), false) | (vec4<u32>(12139u, 4294967295u, u_input.c, 4294967295u) | vec4<u32>(u_input.b.x, 29584u, 0u, u_input.c))) << (vec4<u32>(u_input.b.x, 1u, u_input.c, ~u_input.c) % vec4<u32>(32u)), vec4<u32>(~func_1(vec3<u32>(u_input.a, u_input.b.x, 1u)) | (20187u & (u_input.c >> (u_input.b.x % 32u))), abs(u_input.b.x << ((u_input.a ^ u_input.c) % 32u)), 4294967295u, ~min(4294967295u, u_input.c) ^ u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_1.x, 7833u, ~var_1.x));
}

