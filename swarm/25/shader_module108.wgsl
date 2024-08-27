struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: vec4<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(11108u, 4294967295u), vec3<f32>(-994f, 1635f, 113f), vec3<u32>(35914u, 0u, 1u));

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec2<u32>(37712u, 35339u), vec3<f32>(-428f, 429f, -759f), vec3<u32>(22984u, 12471u, 14210u)), Struct_1(vec2<u32>(4294967295u, 86134u), vec3<f32>(440f, 1216f, 222f), vec3<u32>(24531u, 0u, 23391u)), Struct_1(vec2<u32>(4294967295u, 37427u), vec3<f32>(425f, -1000f, -1082f), vec3<u32>(40720u, 4294967295u, 0u)), Struct_1(vec2<u32>(1u, 33403u), vec3<f32>(570f, 789f, -1000f), vec3<u32>(11232u, 0u, 4294967295u)), Struct_1(vec2<u32>(1u, 11855u), vec3<f32>(-1000f, -1891f, -1268f), vec3<u32>(1321u, 4294967295u, 4294967295u)), Struct_1(vec2<u32>(1u, 1u), vec3<f32>(1228f, -337f, -264f), vec3<u32>(0u, 33518u, 60476u)), Struct_1(vec2<u32>(68379u, 27290u), vec3<f32>(-615f, 172f, 1235f), vec3<u32>(4294967295u, 92696u, 0u)), Struct_1(vec2<u32>(67179u, 26955u), vec3<f32>(-1296f, 582f, 1053f), vec3<u32>(19388u, 43045u, 25728u)), Struct_1(vec2<u32>(1u, 12563u), vec3<f32>(-2049f, 1658f, -389f), vec3<u32>(8196u, 13811u, 4294967295u)), Struct_1(vec2<u32>(8948u, 15795u), vec3<f32>(229f, -517f, -2001f), vec3<u32>(0u, 0u, 28323u)), Struct_1(vec2<u32>(0u, 4294967295u), vec3<f32>(766f, -551f, -854f), vec3<u32>(1243u, 45696u, 0u)), Struct_1(vec2<u32>(23332u, 1u), vec3<f32>(702f, -638f, 949f), vec3<u32>(0u, 4294967295u, 0u)), Struct_1(vec2<u32>(0u, 4294967295u), vec3<f32>(-1000f, -642f, -2823f), vec3<u32>(1u, 0u, 4232u)), Struct_1(vec2<u32>(1u, 1u), vec3<f32>(309f, 272f, -247f), vec3<u32>(1u, 118496u, 0u)), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec3<f32>(-1652f, 290f, -490f), vec3<u32>(4294967295u, 82825u, 59757u)), Struct_1(vec2<u32>(2234u, 1u), vec3<f32>(1308f, -199f, 465f), vec3<u32>(1u, 1u, 21587u)), Struct_1(vec2<u32>(9406u, 115151u), vec3<f32>(541f, 499f, -372f), vec3<u32>(39842u, 40921u, 4294967295u)), Struct_1(vec2<u32>(57312u, 17625u), vec3<f32>(1079f, 1000f, 364f), vec3<u32>(2099u, 63842u, 0u)), Struct_1(vec2<u32>(53980u, 0u), vec3<f32>(-1201f, -1787f, 270f), vec3<u32>(53440u, 13565u, 42129u)), Struct_1(vec2<u32>(11930u, 103294u), vec3<f32>(-1102f, -1898f, 1798f), vec3<u32>(1u, 24339u, 24953u)), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec3<f32>(551f, 444f, 2230f), vec3<u32>(61077u, 0u, 0u)), Struct_1(vec2<u32>(1u, 1u), vec3<f32>(-556f, -739f, -254f), vec3<u32>(40094u, 4294967295u, 7117u)));

var<private> global2: array<bool, 27>;

var<private> global3: array<u32, 11>;

var<private> global4: Struct_2;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.b.x)) - _wgslsmith_div_f32(global0.b.x, global0.b.x))), global0.b.x), _wgslsmith_f_op_f32(sign(-628f)), _wgslsmith_f_op_f32(-global4.a.x));
    global2 = array<bool, 27>();
    var var_1 = Struct_1(~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, global3[_wgslsmith_index_u32(37647u, 11u)]) | select(global0.c.xx, vec2<u32>(u_input.a, 13595u), vec2<bool>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.c.x, 11u)], 27u)], global2[_wgslsmith_index_u32(u_input.b, 27u)])), global0.c.yz ^ global0.c.zx), _wgslsmith_f_op_vec3_f32(abs(global0.b)), global0.c);
    let var_2 = var_1.b.x;
    var var_3 = 0u;
    return ~abs(~(~vec3<u32>(1u, global0.c.x, 1u)));
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.d;
    global1 = array<Struct_1, 22>();
    global0 = global1[_wgslsmith_index_u32(global0.a.x, 22u)];
    global0 = Struct_1(~(global0.c.yx >> (~_wgslsmith_sub_vec2_u32(global0.a, vec2<u32>(global3[_wgslsmith_index_u32(54947u, 11u)], 1u)) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(-global0.b), ~(~_wgslsmith_add_vec3_u32(global0.c >> (vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(4294967295u, 11u)], global0.a.x) % vec3<u32>(32u)), func_3())));
    global2 = array<bool, 27>();
    return global1[_wgslsmith_index_u32(u_input.a, 22u)];
}

fn func_1() -> vec2<u32> {
    let var_0 = func_2();
    global2 = array<bool, 27>();
    let var_1 = func_2();
    let var_2 = func_2();
    let var_3 = vec2<bool>(true, true);
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 11>();
    global1 = array<Struct_1, 22>();
    global3 = array<u32, 11>();
    var var_0 = _wgslsmith_dot_vec2_u32(~(select(global0.a, global0.a, select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(global2[_wgslsmith_index_u32(52415u, 27u)], true))) | _wgslsmith_mod_vec2_u32(global0.a, _wgslsmith_sub_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(0u, 11u)], u_input.a), vec2<u32>(56132u, global0.a.x)))), func_1());
    global0 = Struct_1(~vec2<u32>(0u, 4294967295u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.b.x, global4.c, global0.b.x))) + _wgslsmith_f_op_vec3_f32(exp2(global0.b))))), func_3() ^ _wgslsmith_sub_vec3_u32(select(global0.c, vec3<u32>(global3[_wgslsmith_index_u32(80709u, 11u)], 21624u, global3[_wgslsmith_index_u32(4294967295u, 11u)]), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 27u)]) >> (reverseBits(vec3<u32>(117140u, u_input.b, 61451u)) % vec3<u32>(32u)), global0.c));
    let var_1 = _wgslsmith_add_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(firstTrailingBit(0u), 11u)], 11u)], 45980u) << (4294967295u % 32u);
    global3 = array<u32, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(global0.c, 751f, u_input.c, _wgslsmith_clamp_vec4_i32(max(select(max(vec4<i32>(u_input.c, u_input.c, u_input.d, 0i), vec4<i32>(u_input.d, u_input.d, u_input.c, u_input.d)), ~vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d), vec4<bool>(true, true, global2[_wgslsmith_index_u32(1u, 27u)], true)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(-1i, u_input.c, u_input.d, 64680i), abs(vec4<i32>(-20020i, 2147483647i, u_input.c, u_input.c)), vec4<i32>(14083i, u_input.c, -62621i, u_input.c))), _wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.d, u_input.c, -51138i, u_input.d), _wgslsmith_sub_vec4_i32(vec4<i32>(-30630i, 12678i, u_input.d, 1i), vec4<i32>(0i, 0i, u_input.d, u_input.d))) ^ vec4<i32>(-2147483647i, 1i | u_input.d, _wgslsmith_add_i32(34197i, u_input.d), 12504i), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, u_input.d, u_input.c, -1i), vec4<i32>(-33726i, u_input.d, -16309i, u_input.d)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.c, u_input.d), vec4<i32>(u_input.d, 9356i, -26720i, 34601i)), min(vec4<i32>(u_input.d, u_input.c, 29001i, 1000i), vec4<i32>(u_input.d, 26199i, -19490i, u_input.d))), -vec4<i32>(u_input.c, u_input.c, 2147483647i, u_input.d))), max(vec3<u32>(abs(var_1), ~4294967295u, global0.c.x), global0.c));
}

