struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_2,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: Struct_2,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec2<bool>(false, true), vec4<i32>(-1i, -1i, i32(-2147483648), 101923i), vec3<u32>(0u, 1u, 4294967295u)), Struct_1(vec2<bool>(false, true), vec4<i32>(2147483647i, -1i, 0i, -7962i), vec3<u32>(59987u, 59930u, 6116u)), Struct_1(vec2<bool>(false, false), vec4<i32>(1i, i32(-2147483648), 1i, 1i), vec3<u32>(65434u, 4294967295u, 0u)), Struct_1(vec2<bool>(true, true), vec4<i32>(28378i, 0i, 1i, 2261i), vec3<u32>(1u, 4294967295u, 4617u)), Struct_1(vec2<bool>(false, true), vec4<i32>(11474i, i32(-2147483648), 878i, 2147483647i), vec3<u32>(4294967295u, 1u, 1u)), Struct_1(vec2<bool>(false, true), vec4<i32>(-15777i, 15828i, -1i, -34141i), vec3<u32>(0u, 1u, 1u)), Struct_1(vec2<bool>(true, false), vec4<i32>(-1i, 36066i, 1i, 1i), vec3<u32>(1u, 4294967295u, 40346u)), Struct_1(vec2<bool>(true, false), vec4<i32>(1i, -7361i, 0i, -18709i), vec3<u32>(4294967295u, 6563u, 0u)), Struct_1(vec2<bool>(false, false), vec4<i32>(-10609i, 0i, i32(-2147483648), 0i), vec3<u32>(4294967295u, 4294967295u, 0u)), Struct_1(vec2<bool>(false, false), vec4<i32>(1i, -25652i, -37810i, 4960i), vec3<u32>(4294967295u, 0u, 59224u)), Struct_1(vec2<bool>(false, true), vec4<i32>(-25620i, -1i, -1i, -11862i), vec3<u32>(51463u, 4294967295u, 1u)), Struct_1(vec2<bool>(true, false), vec4<i32>(-31452i, 0i, -1i, 4363i), vec3<u32>(4294967295u, 1u, 4369u)), Struct_1(vec2<bool>(true, true), vec4<i32>(2147483647i, 1i, -1i, -19039i), vec3<u32>(0u, 16713u, 65986u)), Struct_1(vec2<bool>(false, true), vec4<i32>(i32(-2147483648), 0i, 45146i, 5759i), vec3<u32>(45618u, 0u, 40723u)), Struct_1(vec2<bool>(true, true), vec4<i32>(-35889i, 24106i, 18675i, 2147483647i), vec3<u32>(52956u, 1u, 0u)), Struct_1(vec2<bool>(true, false), vec4<i32>(18357i, 16521i, 6946i, 2147483647i), vec3<u32>(0u, 1u, 19113u)), Struct_1(vec2<bool>(true, true), vec4<i32>(0i, 2147483647i, 13665i, -13152i), vec3<u32>(1u, 0u, 1u)), Struct_1(vec2<bool>(true, true), vec4<i32>(19269i, 2147483647i, i32(-2147483648), -37436i), vec3<u32>(9183u, 1u, 16815u)), Struct_1(vec2<bool>(true, true), vec4<i32>(23360i, -12785i, -46317i, 42467i), vec3<u32>(1u, 53088u, 33322u)), Struct_1(vec2<bool>(false, true), vec4<i32>(2147483647i, 1i, 2147483647i, 2147483647i), vec3<u32>(11004u, 18989u, 0u)), Struct_1(vec2<bool>(true, true), vec4<i32>(35092i, -1i, 1i, -56589i), vec3<u32>(13320u, 39707u, 51091u)), Struct_1(vec2<bool>(false, false), vec4<i32>(0i, -84455i, 58155i, 36319i), vec3<u32>(0u, 2352u, 1u)), Struct_1(vec2<bool>(true, false), vec4<i32>(-7586i, -1i, 2147483647i, 12373i), vec3<u32>(1u, 4294967295u, 104614u)), Struct_1(vec2<bool>(true, false), vec4<i32>(-1i, 0i, 16609i, -1i), vec3<u32>(1u, 4294967295u, 40341u)), Struct_1(vec2<bool>(true, false), vec4<i32>(-1i, -997i, 2147483647i, i32(-2147483648)), vec3<u32>(1u, 27487u, 1u)), Struct_1(vec2<bool>(false, true), vec4<i32>(-1i, 74198i, 1i, -1i), vec3<u32>(15313u, 68518u, 104735u)), Struct_1(vec2<bool>(true, false), vec4<i32>(29191i, i32(-2147483648), -27183i, 6606i), vec3<u32>(0u, 1u, 4294967295u)), Struct_1(vec2<bool>(false, true), vec4<i32>(-1i, -1334i, -1i, -1i), vec3<u32>(34320u, 148u, 45709u)), Struct_1(vec2<bool>(false, true), vec4<i32>(1i, 30631i, 14139i, 0i), vec3<u32>(4294967295u, 91165u, 28695u)), Struct_1(vec2<bool>(false, true), vec4<i32>(-1527i, i32(-2147483648), 3464i, i32(-2147483648)), vec3<u32>(13911u, 48358u, 46149u)), Struct_1(vec2<bool>(true, false), vec4<i32>(1i, -24954i, 2147483647i, -17503i), vec3<u32>(43892u, 1u, 4294967295u)));

var<private> global1: array<u32, 22> = array<u32, 22>(1u, 70906u, 19637u, 20324u, 0u, 0u, 17224u, 49904u, 0u, 19144u, 54176u, 0u, 26665u, 4294967295u, 4294967295u, 0u, 1u, 26721u, 4294967295u, 1u, 0u, 39281u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4) -> u32 {
    let var_0 = ~u_input.d << (abs(9332u) % 32u);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-858f + 230f), _wgslsmith_f_op_f32(-2323f * -510f)))));
    var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.x, 233f))))))));
    global0 = array<Struct_1, 31>();
    var_1 = vec2<f32>(var_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x))));
    return ~u_input.c;
}

fn func_2(arg_0: u32, arg_1: Struct_4, arg_2: i32, arg_3: Struct_4) -> Struct_2 {
    return Struct_2(Struct_1(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), ~_wgslsmith_add_vec4_i32(max(vec4<i32>(u_input.a.x, arg_2, arg_2, -1i), vec4<i32>(u_input.d, u_input.a.x, 2147483647i, -2147483647i)), ~vec4<i32>(arg_2, u_input.d, u_input.a.x, 2147483647i)), arg_3.a.xyx), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~func_3(Struct_4(firstLeadingBit(vec4<u32>(52754u, 4294967295u, u_input.b.x, arg_0)))), 22u)], 31u)], arg_2, Struct_1(!(!select(vec2<bool>(false, true), vec2<bool>(false, true), true)), ~(~(-vec4<i32>(1i, -14550i, -2147483647i, arg_2))), _wgslsmith_mod_vec3_u32(arg_3.a.wyy, vec3<u32>(select(4294967295u, arg_3.a.x, true), arg_1.a.x, reverseBits(arg_0)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(683f, 735f)))))));
}

fn func_1() -> f32 {
    let var_0 = Struct_3(func_2(5257u, Struct_4(vec4<u32>(~1u, firstLeadingBit(global1[_wgslsmith_index_u32(4294967295u, 22u)]), u_input.c, select(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(27546u, 22u)], 22u)], false))), ~firstLeadingBit(-7555i), Struct_4(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(54999u, 22u)], 22u)], 22692u, 4294967295u) ^ select(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(43474u, 22u)], 22u)], 22u)], global1[_wgslsmith_index_u32(38748u, 22u)], 31297u), vec4<u32>(4294967295u, 1u, global1[_wgslsmith_index_u32(4294967295u, 22u)], 4294967295u), vec4<bool>(true, true, true, false)))), vec3<bool>(true, true, true), Struct_2(Struct_1(vec2<bool>(true, true), vec4<i32>(-28727i, -40018i, u_input.d, u_input.a.x) & vec4<i32>(u_input.d, 54330i, u_input.d, 1i), _wgslsmith_div_vec3_u32(vec3<u32>(78372u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13736u, 22u)], 22u)], global1[_wgslsmith_index_u32(1u, 22u)]) >> (vec3<u32>(0u, u_input.c, 4294967295u) % vec3<u32>(32u)), vec3<u32>(u_input.c, global1[_wgslsmith_index_u32(4294967295u, 22u)], 24498u))), Struct_1(vec2<bool>(true, true), -(vec4<i32>(4988i, 39436i, u_input.a.x, 2147483647i) & vec4<i32>(u_input.a.x, -7000i, u_input.d, u_input.d)), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], global1[_wgslsmith_index_u32(30766u, 22u)], 0u) >> (abs(vec3<u32>(2826u, 12060u, 0u)) % vec3<u32>(32u))), 29230i, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_mult_u32(1u, 33466u)), 31u)], _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-744f, -1507f), vec2<f32>(1212f, -390f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(783f, -1000f) * vec2<f32>(-404f, 520f)))))), u_input.a);
    global0 = array<Struct_1, 31>();
    global0 = array<Struct_1, 31>();
    let var_1 = var_0.c.d.a;
    global0 = array<Struct_1, 31>();
    return var_0.a.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-480f, 1932f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -725f)))) - -165f) + _wgslsmith_f_op_f32(func_1()));
    let var_3 = vec3<bool>(1u != abs(~_wgslsmith_div_u32(u_input.b.x, global1[_wgslsmith_index_u32(1u, 22u)])), var_1, var_1);
    global0 = array<Struct_1, 31>();
    var var_4 = ~(1u ^ ~_wgslsmith_sub_u32(u_input.c, _wgslsmith_add_u32(1u, u_input.c)));
    var var_5 = var_3.zz;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(0u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, global1[_wgslsmith_index_u32(u_input.b.x, 22u)], global1[_wgslsmith_index_u32(u_input.c, 22u)]), vec4<u32>(global1[_wgslsmith_index_u32(46619u, 22u)], global1[_wgslsmith_index_u32(u_input.c, 22u)], 15053u, u_input.c)) & ~4294967295u), u_input.c >> (~global1[_wgslsmith_index_u32(~u_input.b.x, 22u)] % 32u), u_input.b.x));
}

