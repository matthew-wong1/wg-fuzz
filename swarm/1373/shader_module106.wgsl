struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(-1332f, 660f, 27443i, true, -5618i), Struct_1(-1891f, 242f, 51927i, false, -56533i), Struct_1(-1260f, 1536f, 1i, true, 16679i), Struct_1(-1000f, -1535f, 2147483647i, false, 0i), Struct_1(-171f, -730f, 31612i, true, -1i), Struct_1(-1513f, -653f, 2147483647i, true, -22990i), Struct_1(411f, -1125f, i32(-2147483648), false, 30115i), Struct_1(-1043f, -280f, -21533i, false, 2147483647i), Struct_1(-990f, 153f, 2147483647i, false, 42628i), Struct_1(410f, -1308f, i32(-2147483648), true, 7809i), Struct_1(-979f, 309f, 14188i, false, -1i), Struct_1(-1635f, -724f, i32(-2147483648), true, 0i), Struct_1(-1059f, 193f, 0i, false, 41145i), Struct_1(-1116f, 1363f, i32(-2147483648), false, -1i), Struct_1(898f, 118f, i32(-2147483648), false, -1i), Struct_1(1192f, -277f, -1i, true, -14101i), Struct_1(256f, -1287f, 29260i, true, 2147483647i));

var<private> global1: f32;

var<private> global2: u32 = 47568u;

var<private> global3: Struct_1 = Struct_1(813f, 349f, i32(-2147483648), true, -54268i);

var<private> global4: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(234f, -1108f, i32(-2147483648), true, 2147483647i), Struct_1(-256f, 173f, -25662i, false, 2147483647i), Struct_1(-854f, 203f, 2147483647i, false, -1i), Struct_1(-388f, -875f, 1i, false, -28521i), Struct_1(493f, -642f, -1i, false, 37607i), Struct_1(218f, -1543f, -2802i, true, -31429i), Struct_1(266f, -836f, 40681i, true, -21311i), Struct_1(-565f, -116f, 29508i, true, i32(-2147483648)), Struct_1(-1000f, -360f, 0i, true, 1i), Struct_1(-1011f, 198f, 44114i, false, -33894i), Struct_1(280f, -917f, 5540i, true, 2147483647i), Struct_1(794f, -226f, -13477i, true, 48079i), Struct_1(-220f, 1571f, 0i, true, i32(-2147483648)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec2<i32>, arg_3: Struct_1) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(~arg_0, 17u)];
    var var_1 = global0[_wgslsmith_index_u32(123085u, 17u)];
    global1 = -1199f;
    var var_2 = 0u;
    var var_3 = true;
    return _wgslsmith_f_op_f32(f32(-1f) * -1737f);
}

fn func_2() -> bool {
    var var_0 = global0[_wgslsmith_index_u32(~71125u, 17u)];
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(func_3(~1u, !(true || global3.d), vec2<i32>(select(reverseBits(var_0.e), _wgslsmith_mod_i32(2147483647i, global3.e), true), var_0.e), Struct_1(global3.b, var_0.a, 1i, var_0.e <= -22757i, _wgslsmith_mod_i32(global3.e, -global3.e)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a))), 259f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global3.b, var_0.b)), var_0.b)));
    var var_2 = 83598u;
    var var_3 = !(!select(global3.d, !(57983i != global3.e), select(true, false, all(vec2<bool>(global3.d, global3.d)))));
    let var_4 = _wgslsmith_f_op_f32(-183f * _wgslsmith_f_op_f32(-102f - var_1.x));
    return select(var_0.d, any(select(vec3<bool>(global3.d & var_0.d, !global3.d, all(vec3<bool>(var_0.d, false, var_0.d))), vec3<bool>(global3.d == global3.d, !var_0.d, all(vec2<bool>(true, var_0.d))), any(vec2<bool>(true, var_0.d)))), select(!((false & global3.d) && true), select(!(true | global3.d), global3.d, all(vec2<bool>(true, true))), select(true, var_0.d, true) || true));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> i32 {
    let var_0 = select(vec2<bool>(true, select(arg_2.d, false, true)), select(select(!select(vec2<bool>(true, arg_0.d), vec2<bool>(arg_0.d, arg_2.d), false), select(vec2<bool>(arg_0.d, true), select(vec2<bool>(global3.d, false), vec2<bool>(arg_0.d, true), true), select(vec2<bool>(arg_2.d, arg_2.d), vec2<bool>(true, global3.d), global3.d)), false), !select(select(vec2<bool>(true, false), vec2<bool>(arg_0.d, arg_2.d), vec2<bool>(true, arg_0.d)), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false)), true), func_2());
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-arg_0.b), 622f, -43301i, arg_0.e <= ~(i32(-1i) * -1i), arg_0.c);
    var var_2 = 34482u;
    var var_3 = firstTrailingBit(var_1.e);
    let var_4 = _wgslsmith_div_vec4_i32(vec4<i32>(global3.e, global3.c >> (u_input.a % 32u), reverseBits(34661i), 43909i) | -vec4<i32>(_wgslsmith_clamp_i32(arg_0.c, global3.c, 2147483647i), _wgslsmith_clamp_i32(global3.c, 1i, var_1.c), arg_0.c, -1i), vec4<i32>(-arg_0.e, ~2147483647i, -_wgslsmith_mod_i32(global3.c, var_1.e) << (u_input.a % 32u), arg_0.c));
    return global3.c | 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2324f - _wgslsmith_f_op_f32(global3.b * _wgslsmith_f_op_f32(abs(global3.b))))));
    global0 = array<Struct_1, 17>();
    let var_1 = Struct_1(global3.b, -328f, min(_wgslsmith_sub_i32(_wgslsmith_div_i32(23860i, 1i), ~(~(-1i))), func_1(Struct_1(-1904f, _wgslsmith_f_op_f32(1000f - -1290f), max(global3.e, -2147483647i), any(vec2<bool>(global3.d, true)), global3.e), 1u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.c, u_input.c, 66075u)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -310f), 1f, ~global3.e, false, _wgslsmith_mod_i32(-1i, global3.c)))), true, select(global3.c, global3.c, true));
    var var_2 = global4[_wgslsmith_index_u32(u_input.c, 13u)];
    var var_3 = Struct_1(-733f, _wgslsmith_f_op_f32(trunc(287f)), var_1.c, var_1.d, 4360i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.b), var_0))), ~_wgslsmith_clamp_vec4_i32(min(vec4<i32>(11032i, 0i, global3.e, var_1.c), vec4<i32>(1i, -28556i, -1i, global3.e)), ~(vec4<i32>(var_2.c, 20814i, -2147483647i, -2147483647i) ^ vec4<i32>(-1i, -56978i, var_1.c, 55203i)), max(vec4<i32>(var_3.c, var_3.c, -1i, -20740i), firstLeadingBit(vec4<i32>(var_3.c, global3.e, var_1.e, -2147483647i)))), ~vec2<i32>(~abs(global3.e), global3.e));
}

