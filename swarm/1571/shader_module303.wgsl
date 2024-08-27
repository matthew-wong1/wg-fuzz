struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(false, false), vec3<f32>(-1282f, 1000f, -1184f));

var<private> global1: array<vec4<bool>, 23>;

var<private> global2: array<f32, 24> = array<f32, 24>(1145f, -210f, -1120f, 1539f, 658f, -197f, 1344f, -1076f, 1000f, -526f, -830f, -1792f, -223f, -1000f, -1000f, 828f, 1398f, -1311f, 1227f, -494f, -159f, 1000f, 1000f, -858f);

var<private> global3: array<vec3<u32>, 10>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>) -> u32 {
    global0 = Struct_1(!global0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(260f, arg_1.x))), -444f, _wgslsmith_f_op_f32(sign(1000f))) * global0.b));
    global1 = array<vec4<bool>, 23>();
    global1 = array<vec4<bool>, 23>();
    global1 = array<vec4<bool>, 23>();
    var var_0 = arg_1.yz;
    return 67499u;
}

fn func_2(arg_0: vec4<u32>, arg_1: i32) -> bool {
    global0 = Struct_1(!select(select(global0.a, select(vec2<bool>(true, true), vec2<bool>(true, true), true), global0.a), vec2<bool>(global0.a.x, global0.a.x), any(!vec4<bool>(global0.a.x, global0.a.x, true, global0.a.x))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(52663u, 24u)]), global2[_wgslsmith_index_u32(arg_0.x, 24u)], all(vec3<bool>(global0.a.x, false, global0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(24067u, 24u)], global2[_wgslsmith_index_u32(0u, 24u)]))))));
    let var_0 = global1[_wgslsmith_index_u32(firstLeadingBit(func_3(arg_0.x, _wgslsmith_f_op_vec3_f32(select(global0.b, global0.b, false)))), 23u)];
    var var_1 = Struct_1(vec2<bool>(!var_0.x, all(global0.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(global0.b)), global0.b, select(vec3<bool>(false, true, var_0.x), vec3<bool>(var_0.x, global0.a.x, true), global0.a.x))) * _wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 24u)], global0.b.x, global0.b.x), vec3<f32>(global2[_wgslsmith_index_u32(28424u, 24u)], 267f, global2[_wgslsmith_index_u32(arg_0.x, 24u)]))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(686f * 125f), _wgslsmith_f_op_f32(global0.b.x + global0.b.x), _wgslsmith_f_op_f32(558f - -1367f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1237f, -1612f, global0.b.x)))))));
    var var_2 = ~_wgslsmith_mult_vec3_i32(min(_wgslsmith_div_vec3_i32(vec3<i32>(59621i, 7922i, arg_1), vec3<i32>(-11740i, 36638i, 34894i)), ~vec3<i32>(1i, -3910i, 49932i)), reverseBits(vec3<i32>(u_input.b, -8009i, u_input.a)) & ~vec3<i32>(arg_1, -7707i, 1i)) >> (global3[_wgslsmith_index_u32(~52790u, 10u)] % vec3<u32>(32u));
    let var_3 = Struct_1(select(!(!var_0.ww), var_0.yw, !vec2<bool>(true, any(vec4<bool>(false, false, false, var_1.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1340f, global2[_wgslsmith_index_u32(52183u, 24u)], var_1.b.x))) - _wgslsmith_f_op_vec3_f32(global0.b * _wgslsmith_f_op_vec3_f32(-global0.b))));
    return !any(vec2<bool>(var_1.a.x, true));
}

fn func_1() -> vec3<f32> {
    global1 = array<vec4<bool>, 23>();
    var var_0 = vec3<bool>(func_2(vec4<u32>(reverseBits(_wgslsmith_div_u32(u_input.c.x, 17360u)), 4294967295u, 68906u, _wgslsmith_sub_u32(u_input.c.x << (u_input.c.x % 32u), u_input.c.x >> (u_input.c.x % 32u))), u_input.a), true, true);
    let var_1 = Struct_1(vec2<bool>((firstTrailingBit(90395u) | 68391u) == (u_input.c.x & u_input.c.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1788f, 1207f, global0.a.x)))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x + -651f) - global2[_wgslsmith_index_u32(~60554u, 24u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1679f, global2[_wgslsmith_index_u32(u_input.c.x, 24u)], -1019f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global0.b)))) - global0.b));
    global0 = var_1;
    var var_2 = var_1;
    return vec3<f32>(_wgslsmith_f_op_f32(var_2.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)))), var_1.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.b.x))))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> f32 {
    global0 = arg_3;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-938f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1055f, 1365f)))) + arg_3.b.x);
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> vec2<f32> {
    var var_0 = global2[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(0u, _wgslsmith_clamp_u32(~u_input.c.x, 3364u, ~0u))), 24u)];
    global3 = array<vec3<u32>, 10>();
    let var_1 = all(vec4<bool>(all(vec2<bool>(false, true)), global0.a.x & all(vec4<bool>(false, global0.a.x, true, false)), all(vec2<bool>(false, false)), true)) & arg_1.a.x;
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global0.b.zy))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.b.zx) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 24u)], global2[_wgslsmith_index_u32(u_input.c.x, 24u)])), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-620f, 492f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1342f;
    global2 = array<f32, 24>();
    global0 = Struct_1(!global0.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-622f, -1000f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 24u)] - global0.b.x)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), var_0, global2[_wgslsmith_index_u32(u_input.c.x, 24u)]), !select(select(vec3<bool>(true, global0.a.x, global0.a.x), vec3<bool>(global0.a.x, global0.a.x, global0.a.x), false), !vec3<bool>(global0.a.x, true, false), !vec3<bool>(global0.a.x, true, false)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1353f, global2[_wgslsmith_index_u32(22336u, 24u)])), _wgslsmith_f_op_f32(var_0 - global2[_wgslsmith_index_u32(32882u, 24u)]))) + _wgslsmith_f_op_f32(func_4(Struct_1(!global0.a, _wgslsmith_f_op_vec3_f32(func_1())), Struct_1(select(vec2<bool>(false, global0.a.x), global0.a, global0.a), _wgslsmith_f_op_vec3_f32(-global0.b)), _wgslsmith_f_op_f32(step(var_0, 729f)), Struct_1(!global0.a, vec3<f32>(global0.b.x, -1869f, -309f))))), Struct_1(vec2<bool>(true, select(global0.a.x, global0.a.x, global0.a.x) != any(vec2<bool>(true, global0.a.x))), vec3<f32>(var_0, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.c.x, ~49443u, countOneBits(u_input.c.x)), 24u)], _wgslsmith_f_op_f32(exp2(global0.b.x))))));
    var var_2 = Struct_1(!select(!vec2<bool>(global0.a.x, global0.a.x), !global0.a, false), global0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-234f, 853f, -1717f, -655f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 24u)], -2064f, 800f, 495f) * vec4<f32>(global0.b.x, -467f, -926f, global2[_wgslsmith_index_u32(1340u, 24u)])), !vec4<bool>(global0.a.x, true, false, global0.a.x)))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1798f, _wgslsmith_f_op_f32(min(var_1.x, -804f)), var_1.x, _wgslsmith_div_f32(global2[_wgslsmith_index_u32(4294967295u, 24u)], var_1.x))))), -max(~vec2<i32>(29732i, 0i), abs(countOneBits(vec2<i32>(u_input.a, u_input.b)))), vec4<f32>(_wgslsmith_f_op_f32(-737f + _wgslsmith_f_op_f32(f32(-1f) * -418f)), var_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)))), _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(27842u, 24u)]))), _wgslsmith_mod_i32(-13432i, -7260i >> (~u_input.c.x % 32u)) << ((~u_input.c.x | ~2864u) % 32u), u_input.c.x);
}

