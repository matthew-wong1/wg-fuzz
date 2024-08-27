struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

var<private> global1: f32;

var<private> global2: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec4<u32>(78360u, 101674u, 0u, 4294967295u), vec3<u32>(12256u, 1u, 0u)), Struct_1(vec4<u32>(36135u, 4676u, 34230u, 1u), vec3<u32>(1985u, 29254u, 34390u)), Struct_1(vec4<u32>(76797u, 4294967295u, 12571u, 81626u), vec3<u32>(4294967295u, 36646u, 2575u)), Struct_1(vec4<u32>(72314u, 23126u, 4294967295u, 1u), vec3<u32>(21189u, 1u, 89957u)), Struct_1(vec4<u32>(1u, 0u, 14672u, 4294967295u), vec3<u32>(1u, 12572u, 9866u)), Struct_1(vec4<u32>(0u, 19666u, 1u, 75559u), vec3<u32>(16185u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(1u, 18026u, 11696u, 80980u), vec3<u32>(62644u, 32001u, 0u)), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 38154u), vec3<u32>(27960u, 23902u, 4294967295u)), Struct_1(vec4<u32>(51490u, 117374u, 4294967295u, 43602u), vec3<u32>(0u, 1u, 1u)), Struct_1(vec4<u32>(38801u, 1u, 3278u, 1u), vec3<u32>(1u, 22830u, 1u)), Struct_1(vec4<u32>(11863u, 1u, 0u, 25633u), vec3<u32>(0u, 1u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 1u, 0u, 4712u), vec3<u32>(37404u, 41825u, 4294967295u)), Struct_1(vec4<u32>(1u, 18399u, 4429u, 0u), vec3<u32>(1u, 20057u, 53497u)), Struct_1(vec4<u32>(0u, 0u, 4294967295u, 42376u), vec3<u32>(14635u, 1u, 0u)), Struct_1(vec4<u32>(1u, 96094u, 43197u, 37450u), vec3<u32>(1u, 11004u, 0u)), Struct_1(vec4<u32>(4294967295u, 0u, 0u, 54892u), vec3<u32>(4294967295u, 1u, 1u)), Struct_1(vec4<u32>(23562u, 19848u, 1u, 25069u), vec3<u32>(4294967295u, 0u, 0u)), Struct_1(vec4<u32>(3905u, 0u, 0u, 41735u), vec3<u32>(1u, 1u, 6142u)), Struct_1(vec4<u32>(1u, 13373u, 28772u, 21414u), vec3<u32>(30728u, 4294967295u, 46108u)), Struct_1(vec4<u32>(1u, 29747u, 1785u, 0u), vec3<u32>(102563u, 1u, 4294967295u)), Struct_1(vec4<u32>(6610u, 4294967295u, 1u, 34703u), vec3<u32>(24781u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(1u, 1u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 1u, 0u)), Struct_1(vec4<u32>(1u, 34909u, 5021u, 1u), vec3<u32>(13438u, 41706u, 1u)), Struct_1(vec4<u32>(31803u, 4294967295u, 7118u, 1u), vec3<u32>(4294967295u, 20078u, 1u)), Struct_1(vec4<u32>(3416u, 41700u, 67768u, 16823u), vec3<u32>(27588u, 1624u, 19719u)), Struct_1(vec4<u32>(26961u, 4985u, 18231u, 4294967295u), vec3<u32>(78276u, 1u, 78566u)), Struct_1(vec4<u32>(68637u, 4294967295u, 8146u, 1u), vec3<u32>(0u, 1u, 40155u)), Struct_1(vec4<u32>(1u, 1u, 32238u, 5488u), vec3<u32>(20258u, 1u, 16497u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> f32 {
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    var var_0 = true;
    var var_1 = _wgslsmith_clamp_u32(u_input.b.x, abs(_wgslsmith_mod_u32(32305u, 33600u)), abs(u_input.b.x));
    let var_2 = Struct_1(~u_input.b, u_input.b.wwy);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(422f)) * 729f));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(336f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3()))))));
    var var_0 = global2[_wgslsmith_index_u32(34236u, 28u)];
    let var_1 = all(vec4<bool>(true, true, true, true)) | true;
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1189f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(343f, _wgslsmith_f_op_f32(step(869f, -2821f))))), true)), -290f);
    global0 = array<Struct_1, 1>();
    return Struct_1(u_input.b, var_0.b);
}

fn func_4(arg_0: Struct_1) -> bool {
    let var_0 = func_2(global2[_wgslsmith_index_u32(~(~(~func_2(Struct_1(u_input.b, arg_0.b)).b.x)), 28u)]);
    var var_1 = firstLeadingBit(arg_0.a.x);
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(2640f))));
    let var_3 = arg_0;
    let var_4 = min(var_3.a.wx >> (~firstLeadingBit(vec2<u32>(70755u, u_input.b.x)) % vec2<u32>(32u)), max(var_0.a.wx, _wgslsmith_clamp_vec2_u32(~vec2<u32>(var_0.b.x, 0u), ~u_input.b.xw, arg_0.b.zx))) ^ var_0.a.zz;
    return !(any(vec4<bool>(any(vec4<bool>(false, true, true, true)), false, var_2 <= 729f, any(vec4<bool>(true, false, false, true)))) & (var_2 != _wgslsmith_div_f32(768f, _wgslsmith_f_op_f32(-var_2))));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(max(_wgslsmith_mod_i32(arg_2.x, -1i), abs(-4014i)), arg_2.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), arg_3.b.yx) % 32u), _wgslsmith_add_i32(-18675i, u_input.a) | arg_2.x, u_input.a)), countOneBits(abs(min(-vec4<i32>(arg_2.x, arg_2.x, u_input.a, -17611i), ~vec4<i32>(u_input.a, 2147483647i, arg_2.x, arg_2.x)))), firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(-38095i, 0i, -1i, 50655i), vec4<i32>(u_input.a, arg_2.x, 2147483647i, u_input.a), reverseBits(vec4<i32>(u_input.a, 35919i, -34161i, arg_2.x))) ^ firstTrailingBit(vec4<i32>(1i, 16319i, u_input.a, arg_2.x))));
    var var_1 = _wgslsmith_f_op_f32(-777f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1958f, 180f)), _wgslsmith_div_f32(1176f, 1000f)))));
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -630f);
    let var_2 = _wgslsmith_mod_u32(~u_input.b.x, ~(~(min(u_input.b.x, 33325u) | abs(4294967295u))));
    var_0 = -_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(select(select(vec4<i32>(-1i, 0i, -1i, u_input.a), vec4<i32>(10398i, 2147483647i, 10348i, 0i), arg_0), _wgslsmith_div_vec4_i32(vec4<i32>(arg_2.x, var_0.x, -2147483647i, u_input.a), vec4<i32>(u_input.a, var_0.x, 29259i, arg_2.x)), arg_0), vec4<i32>(arg_2.x, -2147483647i, 2147483647i, 1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2.x, var_0.x, -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, 1i, var_0.x), vec4<i32>(35078i, u_input.a, -1i, u_input.a))), -(~vec4<i32>(0i, arg_2.x, var_0.x, arg_2.x)), select(vec4<i32>(-51451i, 1i, arg_2.x, -1i), ~vec4<i32>(0i, arg_2.x, 2147483647i, -15056i), all(vec2<bool>(false, false)))), (vec4<i32>(-2147483647i, u_input.a, 34958i, 1i) & abs(vec4<i32>(1i, -83478i, 1i, 29390i))) | _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(5818i, arg_2.x, var_0.x, var_0.x)), _wgslsmith_div_vec4_i32(vec4<i32>(36163i, arg_2.x, -42897i, -14143i), vec4<i32>(arg_2.x, 0i, u_input.a, -2147483647i))));
    return func_2(func_2(func_2(Struct_1(abs(arg_1.a), _wgslsmith_mult_vec3_u32(u_input.b.zxy, u_input.b.xzz)))));
}

fn func_1(arg_0: u32, arg_1: vec3<u32>) -> i32 {
    let var_0 = func_5(select(any(vec3<bool>(true, true, true)), !((u_input.a >= -6605i) & true), (_wgslsmith_f_op_f32(ceil(-1030f)) < -1180f) || func_4(func_2(Struct_1(u_input.b, u_input.b.zxy)))), func_2(global2[_wgslsmith_index_u32(27337u, 28u)]), _wgslsmith_sub_vec3_i32(~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -35860i, 48117i), vec3<i32>(38280i, u_input.a, -1i)), 20253i ^ u_input.a, u_input.a), ~select(firstLeadingBit(vec3<i32>(u_input.a, u_input.a, 1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, 1i, 26457i), vec3<i32>(u_input.a, u_input.a, 1i)), -67472i != u_input.a)), func_2(Struct_1(func_2(global0[_wgslsmith_index_u32(~28576u, 1u)]).a, min(countOneBits(u_input.b.zxy), ~vec3<u32>(0u, 46552u, 0u)))));
    global0 = array<Struct_1, 1>();
    var var_1 = 17377u;
    global1 = 1000f;
    var_1 = 1u;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 1>();
    var var_0 = vec3<i32>(_wgslsmith_add_i32(max(~(-1i) ^ func_1(1u, u_input.b.wzw), -1i), _wgslsmith_sub_i32(func_1(1u, ~u_input.b.xxw), select(_wgslsmith_mult_i32(u_input.a, u_input.a), min(-11255i, -64177i), false))), u_input.a, _wgslsmith_sub_i32(-835i, u_input.a) | u_input.a);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-466f, 914f, true)) - _wgslsmith_f_op_f32(209f + -1000f)))));
    var var_1 = func_5(false, global2[_wgslsmith_index_u32(select(93365u, 1u, any(vec3<bool>(false, false, false))) & u_input.b.x, 28u)], -(~countOneBits(-vec3<i32>(var_0.x, var_0.x, u_input.a))), global2[_wgslsmith_index_u32(6277u, 28u)]);
    global1 = -639f;
    var_0 = vec3<i32>(var_0.x, -18634i, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(~0u, reverseBits(~(u_input.b.x >> (u_input.b.x % 32u))), ~_wgslsmith_mult_u32(47600u, 1u) & ~(~u_input.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1057f, 938f, 706f, -166f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-303f, -303f, -970f, -2546f))))), _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(var_1.a.zw, ~vec2<u32>(16582u, u_input.b.x)), var_1.b.xy), vec2<u32>(0u, _wgslsmith_dot_vec2_u32(u_input.b.zz, _wgslsmith_mod_vec2_u32(vec2<u32>(8841u, 100129u), vec2<u32>(var_1.b.x, var_1.b.x))))), firstLeadingBit(var_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -484f), 1023f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1000f, 190f)), _wgslsmith_f_op_f32(-698f * 1489f))), _wgslsmith_div_f32(-874f, -1942f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(300f, 415f, 1024f, -1954f) * vec4<f32>(-1607f, 2007f, 1983f, -868f))))));
}

