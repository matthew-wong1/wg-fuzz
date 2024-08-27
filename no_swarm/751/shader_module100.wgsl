struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4>;

var<private> global1: vec2<i32> = vec2<i32>(0i, -56680i);

var<private> global2: array<u32, 15> = array<u32, 15>(0u, 0u, 32080u, 4294967295u, 25728u, 1u, 1u, 7115u, 1u, 0u, 0u, 4294967295u, 3013u, 0u, 13884u);

var<private> global3: array<vec2<i32>, 29>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<bool>) -> bool {
    global2 = array<u32, 15>();
    let var_0 = abs(_wgslsmith_div_u32(arg_0.a.b, _wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(45432u, arg_0.a.b, 1u, 30499u) | vec4<u32>(62173u, u_input.a, 70133u, u_input.b), ~vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(4158u, 15u)], u_input.c.x, global2[_wgslsmith_index_u32(4294967295u, 15u)])))));
    return (var_0 == ~6318u) != !global0[_wgslsmith_index_u32(var_0, 4u)];
}

fn func_2(arg_0: vec2<bool>) -> u32 {
    global1 = vec2<i32>(-2147483647i, global1.x);
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(339f))));
    global1 = firstTrailingBit(vec2<i32>(1i, global1.x));
    let var_1 = global1.x;
    var var_2 = ~_wgslsmith_mod_vec4_u32(abs(~(vec4<u32>(global2[_wgslsmith_index_u32(1u, 15u)], 27947u, 19518u, global2[_wgslsmith_index_u32(4294967295u, 15u)]) | vec4<u32>(68070u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 15u)], 15u)], 29318u, u_input.a))), ~_wgslsmith_clamp_vec4_u32(select(vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 15u)], 4294967295u, global2[_wgslsmith_index_u32(13444u, 15u)], 7657u), vec4<u32>(u_input.b, u_input.a, u_input.b, global2[_wgslsmith_index_u32(4294967295u, 15u)]), vec4<bool>(false, true, arg_0.x, false)), ~vec4<u32>(1260u, u_input.b, u_input.b, global2[_wgslsmith_index_u32(u_input.c.x, 15u)]), select(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(59702u, 15u)], 15u)], global2[_wgslsmith_index_u32(0u, 15u)], global2[_wgslsmith_index_u32(38341u, 15u)], 93489u), vec4<u32>(u_input.a, global2[_wgslsmith_index_u32(4294967295u, 15u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 15u)], 15u)], u_input.a), vec4<bool>(true, global0[_wgslsmith_index_u32(4584u, 4u)], false, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 15u)], 4u)]))));
    return select(u_input.c.x, firstTrailingBit(var_2.x), true | func_3(Struct_4(Struct_3(Struct_2(var_0.a), 24543u, vec4<i32>(global1.x, 25971i, global1.x, global1.x)), Struct_2(var_0.a)), select(select(vec4<bool>(false, false, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, false, global0[_wgslsmith_index_u32(0u, 4u)]), false), !vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a, 4u)], global0[_wgslsmith_index_u32(var_2.x, 4u)]), true)));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(~func_2(select(select(vec2<bool>(false, global0[_wgslsmith_index_u32(44565u, 4u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(u_input.a, 4u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 4u)], false)), select(vec2<bool>(global0[_wgslsmith_index_u32(42523u, 4u)], true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 4u)], global0[_wgslsmith_index_u32(0u, 4u)]), vec2<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 15u)], 4u)], false)), true)), -vec3<i32>(-4440i, ~(-144i), 15155i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-728f, -1656f, 1169f, 976f), vec4<f32>(-144f, 102f, 812f, -1310f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1389f, 1324f, 879f, -2291f))) - vec4<f32>(-1304f, 518f, 1729f, 1000f))) - vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1946f - 1709f))), -1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-472f * 447f), _wgslsmith_f_op_f32(f32(-1f) * -1290f)), _wgslsmith_f_op_f32(-1128f + _wgslsmith_f_op_f32(f32(-1f) * -675f)))), -vec2<i32>(global1.x, global1.x));
    var var_1 = 74770u;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c.wx) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0.c.zw)) * var_0.c.yx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c.zz * vec2<f32>(var_0.c.x, -285f))))))));
    var var_3 = select(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, ~_wgslsmith_div_u32(4294967295u, u_input.a)), 29u)], firstLeadingBit(global3[_wgslsmith_index_u32(9010u, 29u)] >> (_wgslsmith_mult_vec2_u32(u_input.c.xx & vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, 1u)) % vec2<u32>(32u))), select(vec2<bool>(func_3(Struct_4(Struct_3(Struct_2(var_0.c.x), 7553u, vec4<i32>(var_0.d.x, -1i, 1i, -1i)), Struct_2(var_0.c.x)), select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(59536u, 4u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(32030u, 15u)], 4u)], global0[_wgslsmith_index_u32(var_0.a, 4u)]), vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.b, 4u)], global0[_wgslsmith_index_u32(var_0.a, 4u)]), global0[_wgslsmith_index_u32(var_0.a, 4u)])), (global2[_wgslsmith_index_u32(45272u, 15u)] != global2[_wgslsmith_index_u32(15279u, 15u)]) | (global0[_wgslsmith_index_u32(17025u, 4u)] || global0[_wgslsmith_index_u32(var_0.a, 4u)])), !vec2<bool>(global0[_wgslsmith_index_u32(3453u, 4u)], -743f > var_0.c.x), func_3(Struct_4(Struct_3(Struct_2(var_2.x), 55660u, vec4<i32>(-1i, var_0.b.x, var_0.b.x, 1i)), Struct_2(var_2.x)), vec4<bool>(4294967295u < global2[_wgslsmith_index_u32(53231u, 15u)], true, global0[_wgslsmith_index_u32(~0u, 4u)], any(vec2<bool>(false, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 15u)], 4u)]))))));
    let var_4 = vec4<f32>(-443f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-755f, var_0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), global0[_wgslsmith_index_u32(max(_wgslsmith_dot_vec2_u32(u_input.c.xz, vec2<u32>(global2[_wgslsmith_index_u32(4678u, 15u)], 0u)), _wgslsmith_sub_u32(var_0.a, 17888u)), 4u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(238f, var_2.x))), -711f));
    return Struct_1(~(~max(20147u, ~28039u)), var_0.b, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -147f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(var_4.x)), -462f)), -391f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 1101f) * _wgslsmith_f_op_f32(floor(141f))), _wgslsmith_div_f32(-193f, _wgslsmith_f_op_f32(ceil(648f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.x + var_4.x) + 637f), -707f))), reverseBits(vec2<i32>(var_0.b.x, reverseBits(101i))));
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(func_1().c.x, _wgslsmith_f_op_f32(floor(func_1().c.x))), func_1().c.x)));
    let var_1 = Struct_2(735f);
    global0 = array<bool, 4>();
    global0 = array<bool, 4>();
    global0 = array<bool, 4>();
    return max(46885u & global2[_wgslsmith_index_u32(~min(_wgslsmith_sub_u32(u_input.a, arg_2.a), arg_2.a ^ arg_2.a), 15u)], _wgslsmith_dot_vec4_u32(vec4<u32>(1u, countOneBits(34201u | u_input.b), 1u, arg_2.a), reverseBits(max(vec4<u32>(1u, u_input.b, 67473u, global2[_wgslsmith_index_u32(1u, 15u)]), vec4<u32>(global2[_wgslsmith_index_u32(0u, 15u)], arg_2.a, 7533u, global2[_wgslsmith_index_u32(4294967295u, 15u)])) << (vec4<u32>(arg_2.a, 4294967295u, 67629u, 1u) % vec4<u32>(32u)))));
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> Struct_3 {
    global1 = ~vec2<i32>(firstTrailingBit(abs(_wgslsmith_clamp_i32(arg_2.b.x, 43795i, -79782i))), -(~_wgslsmith_mult_i32(1i, 31454i)));
    var var_0 = func_1();
    return Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1002f, var_0.c.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(991f, arg_0))))), u_input.c.x, countOneBits(-(vec4<i32>(24942i, 28129i, 41743i, 52653i) | vec4<i32>(1i, 36307i, var_0.b.x, arg_2.d.x))));
}

fn func_6(arg_0: i32, arg_1: Struct_3, arg_2: f32) -> Struct_2 {
    global1 = vec2<i32>(~59099i, abs(reverseBits(-1i)));
    let var_0 = func_1();
    var var_1 = arg_1;
    let var_2 = true;
    let var_3 = global1.x;
    return Struct_2(-1000f);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<i32>, 29>();
    var var_0 = ~global1.x;
    var var_1 = func_6(1i, func_5(-1545f, global0[_wgslsmith_index_u32(func_4(vec3<f32>(_wgslsmith_f_op_f32(select(-583f, 428f, global0[_wgslsmith_index_u32(1u, 4u)])), _wgslsmith_div_f32(-1054f, -1200f), -789f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-300f + 557f) * _wgslsmith_f_op_f32(-218f - -739f)), func_1()), 4u)], func_1()), _wgslsmith_f_op_f32(-func_1().c.x));
    global2 = array<u32, 15>();
    var_1 = Struct_2(var_1.a);
    var var_2 = (_wgslsmith_clamp_i32(i32(-1i) * -45912i, global1.x, global1.x) >> ((u_input.a >> (~func_1().a % 32u)) % 32u)) | (abs(-reverseBits(global1.x)) ^ -firstTrailingBit(_wgslsmith_div_i32(global1.x, global1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(var_1.a)), _wgslsmith_mult_vec4_u32(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.b, u_input.c.x, u_input.a), vec4<u32>(7671u, global2[_wgslsmith_index_u32(1u, 15u)], u_input.a, global2[_wgslsmith_index_u32(11233u, 15u)]))) | abs(~vec4<u32>(3160u, 34330u, 4294967295u, u_input.c.x)), vec4<u32>(u_input.b, _wgslsmith_mod_u32(~global2[_wgslsmith_index_u32(33008u, 15u)], global2[_wgslsmith_index_u32(countOneBits(1u), 15u)]), _wgslsmith_dot_vec3_u32(select(u_input.c, vec3<u32>(56767u, global2[_wgslsmith_index_u32(13538u, 15u)], u_input.c.x), vec3<bool>(true, false, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 15u)], 15u)], 4u)])), abs(vec3<u32>(0u, global2[_wgslsmith_index_u32(0u, 15u)], global2[_wgslsmith_index_u32(1u, 15u)]))), ~(global2[_wgslsmith_index_u32(u_input.b, 15u)] << (0u % 32u)))));
}

