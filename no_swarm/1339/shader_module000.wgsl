struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: u32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: u32,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 21> = array<vec2<bool>, 21>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false));

var<private> global1: array<bool, 14>;

var<private> global2: array<vec2<i32>, 15> = array<vec2<i32>, 15>(vec2<i32>(i32(-2147483648), 9999i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(2147483647i, 0i), vec2<i32>(5426i, 1i), vec2<i32>(i32(-2147483648), 17979i), vec2<i32>(3454i, 65736i), vec2<i32>(3510i, 1i), vec2<i32>(0i, 2147483647i), vec2<i32>(0i, -1i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-23408i, -13042i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(7558i, 12711i), vec2<i32>(-34298i, 2147483647i), vec2<i32>(-18929i, -19357i));

var<private> global3: array<Struct_4, 12> = array<Struct_4, 12>(Struct_4(Struct_1(-742f, 1u, true, 0u, vec2<i32>(0i, -21949i)), 1i), Struct_4(Struct_1(366f, 33498u, false, 11321u, vec2<i32>(1058i, -42866i)), -24488i), Struct_4(Struct_1(-1000f, 56024u, true, 29212u, vec2<i32>(-23312i, 34764i)), 50638i), Struct_4(Struct_1(1280f, 43186u, true, 4294967295u, vec2<i32>(4540i, -22439i)), 26660i), Struct_4(Struct_1(1341f, 45341u, false, 0u, vec2<i32>(2147483647i, 0i)), 1i), Struct_4(Struct_1(1721f, 0u, false, 73606u, vec2<i32>(-4743i, 14777i)), 0i), Struct_4(Struct_1(2775f, 7553u, true, 4294967295u, vec2<i32>(1i, 0i)), -1i), Struct_4(Struct_1(-1536f, 0u, true, 31604u, vec2<i32>(-1i, 0i)), i32(-2147483648)), Struct_4(Struct_1(-515f, 35143u, false, 4294967295u, vec2<i32>(0i, 41496i)), -1i), Struct_4(Struct_1(1099f, 35562u, true, 45943u, vec2<i32>(-4905i, -21886i)), 0i), Struct_4(Struct_1(-1438f, 4294967295u, false, 1u, vec2<i32>(-1i, -14802i)), -626i), Struct_4(Struct_1(2086f, 0u, false, 15056u, vec2<i32>(1i, 8516i)), -1i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_1 {
    global0 = array<vec2<bool>, 21>();
    let var_0 = Struct_4(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -343f), _wgslsmith_f_op_f32(1000f * 1f)), _wgslsmith_div_u32(~firstLeadingBit(u_input.b), 1u), all(vec4<bool>(!global1[_wgslsmith_index_u32(96459u, 14u)], global1[_wgslsmith_index_u32(~u_input.b, 14u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, 1u)), 14u)], global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, u_input.b), 14u)])), u_input.c, vec2<i32>(_wgslsmith_mod_i32(1i, 1i), 2147483647i)), u_input.d);
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1000f - 722f), var_0.a.a));
    let var_2 = true;
    let var_3 = vec3<bool>(!(all(vec4<bool>(true, var_2, var_0.a.c, var_0.a.c)) | var_0.a.c), false, true);
    return Struct_1(_wgslsmith_f_op_f32(385f * _wgslsmith_f_op_f32(-var_0.a.a)), 1u ^ (0u ^ var_0.a.d), !all(vec3<bool>(global1[_wgslsmith_index_u32(0u, 14u)] || global1[_wgslsmith_index_u32(u_input.c, 14u)], true, !var_2)), 1u, reverseBits(~((vec2<i32>(var_0.b, var_0.b) >> (vec2<u32>(u_input.c, u_input.b) % vec2<u32>(32u))) | ~global2[_wgslsmith_index_u32(u_input.c, 15u)])));
}

fn func_1() -> Struct_4 {
    var var_0 = Struct_1(-122f, 0u, any(vec3<bool>(true, any(!global0[_wgslsmith_index_u32(4294967295u, 21u)]), true)), ~_wgslsmith_div_u32(_wgslsmith_mod_u32(~62443u, 1u), 4294967295u), ~u_input.a.yz);
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-311f - -201f)), 1u, var_0.c, max(max(abs(var_0.d), ~25673u), _wgslsmith_dot_vec2_u32(vec2<u32>(75866u, 4303u) ^ vec2<u32>(var_0.d, var_0.b), select(vec2<u32>(71224u, 1u), vec2<u32>(56804u, 0u), true))) & var_0.d, u_input.a.yx);
    var var_1 = 1i;
    var var_2 = ~max(~_wgslsmith_sub_u32(6602u, u_input.b), 1u) | u_input.b;
    let var_3 = !global1[_wgslsmith_index_u32(4294967295u, 14u)];
    return Struct_4(func_2(), var_0.e.x ^ -(-2147483647i ^ firstTrailingBit(var_0.e.x)));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    var var_0 = func_1().a.a;
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - arg_0.x)))));
    let var_1 = min(7068i, u_input.d);
    var var_2 = arg_0;
    global1 = array<bool, 14>();
    return 1222f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = 0u;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-411f - var_0.a.a) * _wgslsmith_f_op_f32(var_0.a.a + -938f)) + var_0.a.a) * _wgslsmith_f_op_f32(func_3(vec3<f32>(_wgslsmith_f_op_f32(select(1302f, var_0.a.a, var_0.a.c)), _wgslsmith_f_op_f32(abs(var_0.a.a)), _wgslsmith_f_op_f32(-273f - -912f))))));
    let var_3 = _wgslsmith_add_u32(u_input.b & var_1, 1u);
    var var_4 = vec3<u32>(var_3, 5261u, ~(~1u));
    var var_5 = var_4.yy;
    var var_6 = vec4<i32>(~(-2147483647i), countOneBits(u_input.d), var_0.b, ~_wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.d, -2147483647i), 46939i, firstTrailingBit(-21958i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, _wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_4.x, ~0u, 27149u << (var_0.a.d % 32u)) << (vec4<u32>(4294967295u, ~27512u, _wgslsmith_div_u32(var_5.x, var_0.a.d), var_0.a.d) % vec4<u32>(32u)), ~_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(80804u, u_input.c, var_0.a.d, 1u)), vec4<u32>(var_3, var_1, var_1, var_5.x) & vec4<u32>(var_5.x, 59338u, 1u, var_1))), firstLeadingBit(~firstTrailingBit(u_input.c)), select(u_input.a.xw, global2[_wgslsmith_index_u32(var_3, 15u)], !vec2<bool>(var_0.a.c, true)));
}

