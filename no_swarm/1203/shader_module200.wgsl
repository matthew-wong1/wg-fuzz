struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(true, vec4<f32>(-276f, -1473f, -617f, 1693f), 34220u, 1u), Struct_1(false, vec4<f32>(-2161f, 1000f, 1865f, -1000f), 0u, 1u), Struct_1(true, vec4<f32>(871f, 223f, 1041f, -1000f), 4294967295u, 4294967295u), Struct_1(false, vec4<f32>(744f, 482f, 322f, 855f), 1u, 8379u), Struct_1(false, vec4<f32>(-1179f, -558f, 398f, -173f), 4294967295u, 0u), Struct_1(false, vec4<f32>(547f, 762f, -500f, 452f), 0u, 34820u), Struct_1(true, vec4<f32>(817f, -687f, 1133f, 476f), 0u, 0u), Struct_1(true, vec4<f32>(-842f, -1000f, 978f, 847f), 0u, 71394u), Struct_1(false, vec4<f32>(368f, 2252f, 1117f, -539f), 424u, 24060u), Struct_1(false, vec4<f32>(-279f, -311f, -761f, -847f), 35922u, 76573u), Struct_1(true, vec4<f32>(367f, 943f, -723f, 1052f), 28792u, 4294967295u), Struct_1(false, vec4<f32>(138f, -1000f, 855f, 1000f), 0u, 4294967295u), Struct_1(false, vec4<f32>(-1167f, -2045f, -445f, -2014f), 20454u, 4294967295u), Struct_1(true, vec4<f32>(-1912f, -679f, 198f, 1422f), 57570u, 6821u), Struct_1(false, vec4<f32>(685f, 610f, 1580f, -343f), 0u, 4294967295u), Struct_1(true, vec4<f32>(-1000f, 1000f, -492f, -1010f), 19483u, 1u), Struct_1(false, vec4<f32>(-624f, -1351f, -1000f, 822f), 91933u, 70611u), Struct_1(false, vec4<f32>(629f, -1000f, -1801f, -2144f), 4294967295u, 4294967295u), Struct_1(true, vec4<f32>(-289f, -1574f, 763f, 497f), 53390u, 28241u), Struct_1(true, vec4<f32>(-401f, 928f, -564f, -2138f), 28470u, 1u), Struct_1(true, vec4<f32>(-474f, 2100f, 553f, 490f), 67589u, 4294967295u), Struct_1(true, vec4<f32>(866f, -1011f, 1423f, 430f), 25956u, 4294967295u), Struct_1(false, vec4<f32>(651f, -423f, -828f, -384f), 0u, 1u), Struct_1(true, vec4<f32>(145f, -542f, 574f, -739f), 35154u, 44073u), Struct_1(true, vec4<f32>(347f, -1000f, -2163f, -319f), 77388u, 4294967295u), Struct_1(false, vec4<f32>(-1957f, 1500f, 1302f, -1316f), 31270u, 4294967295u));

var<private> global1: array<vec4<f32>, 1> = array<vec4<f32>, 1>(vec4<f32>(516f, -984f, -133f, 2203f));

var<private> global2: array<vec2<i32>, 15> = array<vec2<i32>, 15>(vec2<i32>(-33977i, -54334i), vec2<i32>(1i, 0i), vec2<i32>(-3804i, 2147483647i), vec2<i32>(-20060i, 35550i), vec2<i32>(13414i, -1i), vec2<i32>(-29130i, 0i), vec2<i32>(2147483647i, 41222i), vec2<i32>(-3102i, 2147483647i), vec2<i32>(0i, 23985i), vec2<i32>(-20492i, -35263i), vec2<i32>(-28439i, -10092i), vec2<i32>(0i, 19566i), vec2<i32>(21469i, 2147483647i), vec2<i32>(-44823i, 2147483647i), vec2<i32>(-2498i, 2147483647i));

var<private> global3: array<Struct_1, 30>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-609f * 423f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1033f)) + _wgslsmith_f_op_f32(select(1418f, 879f, false)))))))));
    global2 = array<vec2<i32>, 15>();
    global2 = array<vec2<i32>, 15>();
    let var_1 = _wgslsmith_clamp_i32(-arg_0.x & abs(_wgslsmith_mult_i32(arg_0.x, 0i)), _wgslsmith_add_i32(-arg_0.x, ~2147483647i), 1i) < _wgslsmith_sub_i32(~(~(-arg_0.x)), _wgslsmith_mod_i32((i32(-1i) * -27247i) << (_wgslsmith_dot_vec2_u32(vec2<u32>(81221u, 0u), u_input.c.yx) % 32u), ~(~arg_0.x)));
    global0 = array<Struct_1, 26>();
    return vec2<bool>(var_1, var_1);
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_div_u32(firstTrailingBit(13181u) << (0u % 32u), _wgslsmith_add_u32(~43431u, arg_0.x)), 0u, 0u), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.d, u_input.c.x, 4294967295u), vec3<u32>(4294967295u, 22913u, u_input.b.x) >> (_wgslsmith_clamp_vec3_u32(u_input.c, u_input.c, u_input.c) % vec3<u32>(32u))));
    var var_1 = all(!func_3(max(reverseBits(vec3<i32>(-14504i, 0i, -1i)), vec3<i32>(64816i, -36984i, 32018i))));
    var var_2 = Struct_2(Struct_1(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(~var_0.x, 1u)] * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(624f, -505f, -113f, 804f)))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(721f, 477f, 913f, 104f))))), ~(~u_input.a), 94882u));
    var var_3 = Struct_1(false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.a.b.x, var_2.a.b.x), var_2.a.b.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.a.b.x * var_2.a.b.x))), _wgslsmith_f_op_f32(943f * _wgslsmith_f_op_f32(f32(-1f) * -744f)), 241f)), _wgslsmith_mult_u32(firstTrailingBit(~(63915u >> (u_input.d % 32u))), var_0.x), ~68913u);
    global1 = array<vec4<f32>, 1>();
    return var_2.a;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<u32>) -> Struct_2 {
    global2 = array<vec2<i32>, 15>();
    var var_0 = Struct_2(func_2(_wgslsmith_div_vec4_u32(~select(vec4<u32>(9003u, 64602u, 1u, arg_1.x), vec4<u32>(u_input.b.x, u_input.d, u_input.c.x, 4294967295u), true), vec4<u32>(u_input.d & 41051u, u_input.d, ~559u, u_input.b.x))));
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(~0u, ~arg_1.x | (23822u << (0u % 32u))), 5573u), ~4294967295u), 30u)];
    var var_2 = _wgslsmith_mult_i32(2147483647i, ~firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 26250i), vec2<i32>(-2147483647i, 1i)) & firstTrailingBit(-2147483647i)));
    var_2 = ~(reverseBits(_wgslsmith_clamp_i32(-2147483647i, 2147483647i, -13234i) ^ (1i >> (u_input.d % 32u))) | _wgslsmith_sub_i32(-16925i, 1i));
    return Struct_2(var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(-1806i, -1i);
    let var_1 = func_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2046f, 298f)) * vec2<f32>(1f, 1f)))))), firstTrailingBit(vec2<u32>(80413u, 4294967295u)));
    global2 = array<vec2<i32>, 15>();
    global0 = array<Struct_1, 26>();
    let var_2 = 27453u;
    let var_3 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.b.x, 1000f) + var_1.a.b.yz)))), ~((vec2<u32>(u_input.a, 1u) >> (min(vec2<u32>(53929u, var_2), u_input.c.zx) % vec2<u32>(32u))) << (~vec2<u32>(u_input.d, var_1.a.d) % vec2<u32>(32u))));
    let var_4 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1764f + _wgslsmith_f_op_f32(var_4.b.x - -760f)), _wgslsmith_f_op_f32(max(var_1.a.b.x, -474f)))), ~vec2<i32>(-_wgslsmith_sub_i32(var_0.x, var_0.x), var_0.x));
}

