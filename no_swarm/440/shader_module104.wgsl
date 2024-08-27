struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec4<i32>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 26>;

var<private> global1: array<bool, 6>;

var<private> global2: vec3<f32>;

var<private> global3: vec3<i32>;

var<private> global4: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec3<u32>(4294967295u, 75116u, 92908u), vec3<bool>(true, true, true), vec4<i32>(1i, 8910i, -20767i, 1i), -877f, vec4<u32>(4231u, 11141u, 32479u, 30996u)), Struct_1(vec3<u32>(0u, 45865u, 13571u), vec3<bool>(true, true, false), vec4<i32>(-20168i, -53377i, -1i, 0i), -868f, vec4<u32>(0u, 27693u, 55393u, 4294967295u)), Struct_1(vec3<u32>(1u, 275u, 0u), vec3<bool>(false, true, false), vec4<i32>(i32(-2147483648), 0i, 1i, 28094i), 831f, vec4<u32>(2817u, 1u, 1646u, 7752u)), Struct_1(vec3<u32>(0u, 52176u, 14320u), vec3<bool>(false, true, false), vec4<i32>(1i, -55098i, 1i, -1i), -1040f, vec4<u32>(3742u, 0u, 0u, 38594u)), Struct_1(vec3<u32>(0u, 4294967295u, 29153u), vec3<bool>(false, false, true), vec4<i32>(65396i, 8945i, 2147483647i, 1i), -737f, vec4<u32>(1789u, 77781u, 24395u, 49672u)), Struct_1(vec3<u32>(22308u, 61517u, 60155u), vec3<bool>(false, true, true), vec4<i32>(-1i, -385i, -1i, 0i), -1000f, vec4<u32>(1u, 1u, 1u, 50382u)), Struct_1(vec3<u32>(57305u, 1u, 0u), vec3<bool>(true, false, true), vec4<i32>(-82423i, i32(-2147483648), 0i, 13902i), 232f, vec4<u32>(4294967295u, 138948u, 46884u, 17320u)), Struct_1(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<bool>(true, true, false), vec4<i32>(1i, 0i, -3631i, 1i), -1047f, vec4<u32>(0u, 1u, 1u, 1u)), Struct_1(vec3<u32>(44087u, 1u, 45954u), vec3<bool>(false, true, true), vec4<i32>(-45360i, 2147483647i, i32(-2147483648), 1i), -1000f, vec4<u32>(37537u, 1u, 3343u, 4294967295u)), Struct_1(vec3<u32>(44835u, 0u, 77763u), vec3<bool>(false, false, true), vec4<i32>(2147483647i, 0i, 18080i, -51568i), 1896f, vec4<u32>(16633u, 107007u, 35840u, 0u)), Struct_1(vec3<u32>(36756u, 29962u, 11081u), vec3<bool>(true, true, true), vec4<i32>(i32(-2147483648), 0i, -1i, 38231i), 782f, vec4<u32>(35022u, 1u, 1u, 4294967295u)), Struct_1(vec3<u32>(114838u, 4294967295u, 4294967295u), vec3<bool>(false, false, false), vec4<i32>(5168i, 1i, -28805i, 5966i), -1000f, vec4<u32>(1u, 15529u, 4294967295u, 23463u)), Struct_1(vec3<u32>(102367u, 70921u, 38513u), vec3<bool>(false, false, true), vec4<i32>(-25225i, 427i, 1i, i32(-2147483648)), -265f, vec4<u32>(0u, 62536u, 1u, 1u)), Struct_1(vec3<u32>(18337u, 73838u, 60506u), vec3<bool>(false, true, false), vec4<i32>(5824i, 63437i, 50741i, 43179i), 2370f, vec4<u32>(8294u, 1u, 4294967295u, 25356u)), Struct_1(vec3<u32>(0u, 4294967295u, 79683u), vec3<bool>(true, true, false), vec4<i32>(0i, 40815i, -3245i, 68920i), 1277f, vec4<u32>(4294967295u, 27981u, 10337u, 0u)), Struct_1(vec3<u32>(39621u, 66548u, 4294967295u), vec3<bool>(true, false, false), vec4<i32>(i32(-2147483648), -25296i, 60304i, 34300i), 227f, vec4<u32>(1u, 90407u, 73123u, 4294967295u)), Struct_1(vec3<u32>(0u, 37858u, 1u), vec3<bool>(true, true, false), vec4<i32>(0i, -42650i, 1i, -5020i), 102f, vec4<u32>(23122u, 1u, 31756u, 43925u)), Struct_1(vec3<u32>(23428u, 0u, 4294967295u), vec3<bool>(false, false, true), vec4<i32>(-60494i, -21310i, -6355i, -8531i), 1235f, vec4<u32>(4294967295u, 0u, 29804u, 14982u)), Struct_1(vec3<u32>(2289u, 0u, 1u), vec3<bool>(false, false, true), vec4<i32>(-1739i, 1519i, -57621i, 18032i), 1000f, vec4<u32>(17766u, 0u, 33949u, 0u)), Struct_1(vec3<u32>(14732u, 1u, 1u), vec3<bool>(true, true, false), vec4<i32>(0i, i32(-2147483648), 18806i, 2147483647i), 569f, vec4<u32>(0u, 7383u, 4294967295u, 1u)), Struct_1(vec3<u32>(0u, 59291u, 13668u), vec3<bool>(true, true, true), vec4<i32>(2147483647i, -1i, 2147483647i, i32(-2147483648)), 990f, vec4<u32>(26488u, 27846u, 57878u, 26234u)), Struct_1(vec3<u32>(29957u, 4294967295u, 4294967295u), vec3<bool>(true, true, false), vec4<i32>(40225i, 2147483647i, 1795i, 0i), -382f, vec4<u32>(1u, 0u, 1u, 1u)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: bool, arg_3: bool) -> u32 {
    let var_0 = -1658f;
    return _wgslsmith_dot_vec2_u32(vec2<u32>(~(~(~1u)), 4294967295u), select(vec2<u32>(1u, 1u), _wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(24608u, 4294967295u)), vec2<u32>(0u, 41378u), ~vec2<u32>(1u, 20320u)), !(!arg_2)) ^ vec2<u32>(~1u, ~1u));
}

fn func_2() -> Struct_3 {
    var var_0 = abs(vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 16749u, 18950u, 48829u), ~vec4<u32>(11002u, 4294967295u, 40596u, 1u)), _wgslsmith_mod_u32(func_3(global2.zz, vec4<i32>(0i, 1511i, 22045i, u_input.a.x), true, global1[_wgslsmith_index_u32(0u, 6u)]), 63642u))) ^ vec2<u32>(~(~1u), ~max(_wgslsmith_dot_vec2_u32(vec2<u32>(100895u, 1u), vec2<u32>(0u, 4294967295u)), _wgslsmith_dot_vec2_u32(vec2<u32>(38156u, 21902u), vec2<u32>(48099u, 0u))));
    let var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~var_0.x, ~5960u, min(~22690u, 0u)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), ~vec3<u32>(var_0.x, 1u, 0u)), ~(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(49520u, 27702u, 84784u), vec3<u32>(var_0.x, 84097u, 4294967295u)))));
    return Struct_3(vec3<i32>(max(u_input.b.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.a.zz, vec2<i32>(global3.x, 42174i)), -2147483647i)), u_input.b.x, _wgslsmith_sub_i32(-2147483647i, ~global3.x)));
}

fn func_1() -> vec3<f32> {
    let var_0 = func_2();
    let var_1 = (u_input.b.x ^ 0i) ^ countOneBits(-53138i >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(9689u, 25528u), firstTrailingBit(vec2<u32>(70366u, 19256u))) % 32u));
    global0 = array<vec2<i32>, 26>();
    let var_2 = _wgslsmith_f_op_f32(-global2.x);
    var var_3 = Struct_3(abs(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(global3.x, u_input.a.x, -76881i)), _wgslsmith_div_vec3_i32(u_input.b, vec3<i32>(8004i, var_0.a.x, -2147483647i))), u_input.a.www)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.x, global2.x, var_2))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2.x, 729f, global2.x))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2, var_2, var_2), vec3<f32>(global2.x, -807f, -1845f))), vec3<f32>(global2.x, -857f, global2.x)))), false)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-global2.x), 1291f, _wgslsmith_f_op_f32(max(global2.x, global2.x))), _wgslsmith_f_op_vec3_f32(func_1()))) * vec3<f32>(_wgslsmith_f_op_f32(step(-385f, _wgslsmith_f_op_f32(sign(global2.x)))), 143f, 1880f)));
}

