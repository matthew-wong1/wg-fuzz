struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30>;

var<private> global1: array<Struct_4, 11> = array<Struct_4, 11>(Struct_4(vec4<f32>(-801f, 537f, 1345f, -1732f), Struct_1(vec4<u32>(4798u, 0u, 1u, 54199u)), 0u, -5195i), Struct_4(vec4<f32>(-379f, -429f, 104f, -1000f), Struct_1(vec4<u32>(0u, 1u, 0u, 79004u)), 142198u, i32(-2147483648)), Struct_4(vec4<f32>(525f, -1368f, -1244f, 794f), Struct_1(vec4<u32>(71448u, 11923u, 4294967295u, 4294967295u)), 72809u, 2147483647i), Struct_4(vec4<f32>(-880f, -1000f, 859f, 990f), Struct_1(vec4<u32>(0u, 70489u, 4294967295u, 1u)), 71053u, 44073i), Struct_4(vec4<f32>(-334f, 803f, -446f, -1000f), Struct_1(vec4<u32>(1u, 1u, 4294967295u, 1148u)), 0u, -1i), Struct_4(vec4<f32>(182f, 100f, 1000f, 1356f), Struct_1(vec4<u32>(66076u, 45852u, 1u, 78695u)), 4294967295u, -1i), Struct_4(vec4<f32>(1000f, 281f, -487f, 164f), Struct_1(vec4<u32>(80665u, 59546u, 0u, 1u)), 31043u, -1i), Struct_4(vec4<f32>(-484f, 308f, 621f, -434f), Struct_1(vec4<u32>(1u, 4294967295u, 3632u, 49624u)), 5819u, 348i), Struct_4(vec4<f32>(393f, 366f, -1741f, -401f), Struct_1(vec4<u32>(9885u, 38434u, 10063u, 38091u)), 62750u, -20064i), Struct_4(vec4<f32>(1509f, 824f, -766f, 1000f), Struct_1(vec4<u32>(4294967295u, 1u, 18675u, 1u)), 30486u, 2147483647i), Struct_4(vec4<f32>(259f, -1000f, -788f, 392f), Struct_1(vec4<u32>(0u, 1u, 28376u, 75958u)), 0u, -1i));

var<private> global2: array<vec4<u32>, 5> = array<vec4<u32>, 5>(vec4<u32>(0u, 1u, 4294967295u, 19102u), vec4<u32>(4294967295u, 35382u, 33703u, 0u), vec4<u32>(28481u, 43820u, 1u, 48053u), vec4<u32>(0u, 0u, 54992u, 55485u), vec4<u32>(4294967295u, 4294967295u, 62908u, 40550u));

var<private> global3: array<vec3<bool>, 19>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> u32 {
    global0 = array<u32, 30>();
    let var_0 = !arg_2;
    global0 = array<u32, 30>();
    let var_1 = _wgslsmith_f_op_f32(abs(-532f)) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1001f * _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_2 = min(countOneBits(select(global0[_wgslsmith_index_u32(5565u, 30u)] >> (arg_1.a.x % 32u), arg_1.a.x, any(vec4<bool>(var_1, false, var_1, arg_2))) >> (u_input.d.x % 32u)), 1u ^ _wgslsmith_mult_u32(4294967295u, global0[_wgslsmith_index_u32(arg_1.a.x, 30u)]));
    return ~global0[_wgslsmith_index_u32(arg_1.a.x, 30u)];
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = select(~(min(~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50398u, 30u)], 30u)], u_input.c, 1u), ~vec3<u32>(u_input.d.x, 0u, global0[_wgslsmith_index_u32(19728u, 30u)])) << (vec3<u32>(_wgslsmith_sub_u32(4294967295u, 42176u), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18094u, 30u)], 30u)], 30u)], 4294967295u), u_input.c) % vec3<u32>(32u))), reverseBits(~select(vec3<u32>(49515u, u_input.c, global0[_wgslsmith_index_u32(20353u, 30u)]), vec3<u32>(global0[_wgslsmith_index_u32(5988u, 30u)], u_input.d.x, 66367u), vec3<bool>(false, false, true))) >> (vec3<u32>(func_3(48403i, Struct_1(global2[_wgslsmith_index_u32(66990u, 5u)]), true, ~u_input.b.x), ~u_input.c & ~7664u, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.c, u_input.c), global0[_wgslsmith_index_u32(max(30119u, 4294967295u), 30u)], _wgslsmith_mult_u32(u_input.c, 4294967295u)), 30u)]) % vec3<u32>(32u)), vec3<bool>(any(vec2<bool>(true, false)) && (58721u > _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, global0[_wgslsmith_index_u32(u_input.d.x, 30u)]), vec2<u32>(0u, 0u))), false, any(vec3<bool>(any(vec4<bool>(false, false, true, true)), all(vec4<bool>(true, true, false, true)), arg_0 != 547f))));
    global3 = array<vec3<bool>, 19>();
    var var_1 = _wgslsmith_dot_vec2_u32(firstTrailingBit(reverseBits(u_input.d)), u_input.d);
    global3 = array<vec3<bool>, 19>();
    global3 = array<vec3<bool>, 19>();
    return Struct_1(firstTrailingBit((~global2[_wgslsmith_index_u32(5587u, 5u)] ^ global2[_wgslsmith_index_u32(4201u, 5u)]) ^ select(_wgslsmith_div_vec4_u32(global2[_wgslsmith_index_u32(u_input.d.x, 5u)], vec4<u32>(41349u, var_0.x, 38824u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 30u)], 30u)])), firstTrailingBit(global2[_wgslsmith_index_u32(u_input.c, 5u)]), vec4<bool>(true, false, false, false))));
}

fn func_1() -> f32 {
    global1 = array<Struct_4, 11>();
    var var_0 = 540f;
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1339f * -442f) - _wgslsmith_f_op_f32(-270f - -774f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1134f - 1290f)), _wgslsmith_f_op_f32(-400f - _wgslsmith_f_op_f32(floor(467f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(438f, 260f)))), func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(min(-546f, -678f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -275f), -1180f)))), 1u, u_input.a);
    global2 = array<vec4<u32>, 5>();
    var var_2 = max(abs(abs(var_1.d >> (abs(global0[_wgslsmith_index_u32(0u, 30u)]) % 32u))), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -51135i), -(~(~vec2<i32>(-1i, 7294i)))));
    return var_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1152f)), 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1281f, -1000f, true)) * -110f))) * _wgslsmith_f_op_f32(f32(-1f) * -2189f)), _wgslsmith_f_op_f32(func_1()), 705f);
    var var_1 = _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(min(1f, 1f)));
    let var_2 = ~(~_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b.x, 11518i, u_input.a), vec3<i32>(u_input.b.x, u_input.a, -2147483647i) >> (vec3<u32>(global0[_wgslsmith_index_u32(1u, 30u)], 40195u, global0[_wgslsmith_index_u32(4294967295u, 30u)]) % vec3<u32>(32u)))) << (_wgslsmith_div_u32(global0[_wgslsmith_index_u32(0u, 30u)], ~u_input.c) % 32u);
    let var_3 = Struct_2(Struct_1(vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 30u)], 30u)] ^ 4294967295u, ~4294967295u), 30u)], _wgslsmith_mult_u32(func_3(var_2, Struct_1(vec4<u32>(global0[_wgslsmith_index_u32(58022u, 30u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 30u)], 30u)], global0[_wgslsmith_index_u32(u_input.c, 30u)], 13073u)), false, var_2), ~0u), ~12680u | _wgslsmith_sub_u32(u_input.c, global0[_wgslsmith_index_u32(1u, 30u)]), 1u)), func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(1000f))))));
    let var_4 = 2147483647i;
    var_1 = -420f;
    var var_5 = firstLeadingBit(var_3.a.a.x);
    var var_6 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(17983u, u_input.c | 1u, func_3(2147483647i, Struct_1(vec4<u32>(1u, u_input.d.x, 0u, var_3.a.a.x)), false, var_4)), var_3.b.a.zyx)), ~_wgslsmith_add_vec4_u32(var_3.a.a, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_3.a.a.xzx, var_3.a.a.yyz | var_3.a.a.zyz), 5u)]));
}

