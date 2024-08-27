struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec2<f32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

var<private> global1: array<u32, 3>;

var<private> global2: array<vec3<f32>, 27>;

var<private> global3: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec4<i32>(-12745i, 31684i, -25230i, 13878i), vec3<bool>(false, false, false), vec2<f32>(831f, -163f), true), Struct_1(vec4<i32>(18261i, 0i, 2147483647i, -65202i), vec3<bool>(false, false, true), vec2<f32>(-260f, -1000f), false), Struct_1(vec4<i32>(-18943i, 27254i, -27340i, -1i), vec3<bool>(false, true, false), vec2<f32>(1206f, 466f), false), Struct_1(vec4<i32>(-1i, 13035i, 38330i, 3776i), vec3<bool>(false, true, false), vec2<f32>(-403f, 459f), false), Struct_1(vec4<i32>(-1i, 1i, 38533i, -34877i), vec3<bool>(true, true, false), vec2<f32>(-1310f, 1245f), true), Struct_1(vec4<i32>(2147483647i, 27616i, i32(-2147483648), 1i), vec3<bool>(false, true, true), vec2<f32>(1412f, -289f), false), Struct_1(vec4<i32>(-1i, 29187i, 0i, 9874i), vec3<bool>(false, true, true), vec2<f32>(551f, 251f), false), Struct_1(vec4<i32>(7365i, 61080i, 29359i, 2147483647i), vec3<bool>(true, false, true), vec2<f32>(-1690f, -110f), false), Struct_1(vec4<i32>(i32(-2147483648), -51869i, 1i, -18176i), vec3<bool>(true, true, true), vec2<f32>(-1449f, -1315f), true), Struct_1(vec4<i32>(0i, -1i, -45033i, -24977i), vec3<bool>(true, false, true), vec2<f32>(-1995f, -525f), false), Struct_1(vec4<i32>(2147483647i, 0i, -1i, -20298i), vec3<bool>(true, false, false), vec2<f32>(-151f, 1000f), false), Struct_1(vec4<i32>(18716i, 1i, 2147483647i, 19507i), vec3<bool>(true, false, false), vec2<f32>(-170f, -212f), true), Struct_1(vec4<i32>(45274i, -22032i, -29299i, 18031i), vec3<bool>(false, true, true), vec2<f32>(2362f, -865f), true), Struct_1(vec4<i32>(17602i, -1i, 0i, 2193i), vec3<bool>(true, true, true), vec2<f32>(-475f, 532f), false), Struct_1(vec4<i32>(0i, 2147483647i, 2147483647i, 1i), vec3<bool>(false, true, false), vec2<f32>(166f, -471f), true), Struct_1(vec4<i32>(11838i, 55959i, 2147483647i, -1i), vec3<bool>(true, true, false), vec2<f32>(1522f, 190f), true), Struct_1(vec4<i32>(-28674i, i32(-2147483648), -37201i, -9112i), vec3<bool>(false, false, false), vec2<f32>(1116f, 275f), true), Struct_1(vec4<i32>(1i, i32(-2147483648), -6679i, 12822i), vec3<bool>(false, true, true), vec2<f32>(358f, 1051f), false), Struct_1(vec4<i32>(0i, 0i, -18551i, -70109i), vec3<bool>(false, false, true), vec2<f32>(1000f, 1420f), true), Struct_1(vec4<i32>(-21246i, 0i, -4274i, -11939i), vec3<bool>(true, false, false), vec2<f32>(492f, 1396f), true), Struct_1(vec4<i32>(-38612i, -23868i, i32(-2147483648), i32(-2147483648)), vec3<bool>(false, false, false), vec2<f32>(496f, 959f), false), Struct_1(vec4<i32>(-1i, 4380i, -6238i, -23392i), vec3<bool>(true, false, false), vec2<f32>(1094f, 531f), true), Struct_1(vec4<i32>(745i, 182i, 41802i, 0i), vec3<bool>(true, true, true), vec2<f32>(2033f, 132f), true));

var<private> global4: u32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-555f, _wgslsmith_f_op_f32(max(-762f, -114f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1098f * -990f), _wgslsmith_f_op_f32(f32(-1f) * -529f), true)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1719f, -786f), _wgslsmith_f_op_f32(round(-170f)))))));
    let var_1 = vec2<u32>(65294u, ~2221u);
    global4 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(~_wgslsmith_sub_u32(~global1[_wgslsmith_index_u32(var_1.x, 3u)], var_1.x >> (43191u % 32u)), ~min(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, global1[_wgslsmith_index_u32(4294967295u, 3u)], var_1.x), vec3<u32>(1u, 1u, 1u)), global1[_wgslsmith_index_u32(var_1.x, 3u)] >> (var_1.x % 32u))), _wgslsmith_div_u32(1u, _wgslsmith_div_u32(select(global1[_wgslsmith_index_u32(~1u, 3u)], firstLeadingBit(global1[_wgslsmith_index_u32(0u, 3u)]), true), var_1.x))), 3u)];
    global4 = ~_wgslsmith_sub_u32(~3587u, 54735u);
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x)))));
    return -(~u_input.b) & (0i << (~global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(33931u, var_1.x), 3u)] % 32u));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32) -> vec3<bool> {
    global3 = array<Struct_1, 23>();
    let var_0 = global0[_wgslsmith_index_u32(0u, 2u)];
    let var_1 = !(u_input.b >= reverseBits(_wgslsmith_sub_i32(u_input.b ^ 2147483647i, 21376i ^ var_0.a.x)));
    let var_2 = global0[_wgslsmith_index_u32(countOneBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~49257u, 3u)], 3u)]), 2u)];
    let var_3 = Struct_1(~vec4<i32>(firstLeadingBit(-var_0.a.x), func_3(), var_0.a.x, -2147483647i | var_2.a.x), select(vec3<bool>(true, var_0.d, var_2.d), !(!(!vec3<bool>(var_0.d, var_1, var_1))), true), vec2<f32>(var_0.c.x, 212f), var_0.b.x);
    return !(!vec3<bool>(var_0.a.x > (31723i << (arg_0.x % 32u)), true, arg_1 < arg_1));
}

fn func_1() -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(((76059u & ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 3u)], 3u)]) & ~global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 3u)], 3u)], 3u)], 3u)], 3u)], 3u)], 3u)]) | firstTrailingBit(28596u), 27u)]);
    global3 = array<Struct_1, 23>();
    let var_1 = select(vec3<i32>(u_input.a >> (global1[_wgslsmith_index_u32(101235u, 3u)] % 32u), _wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.a, u_input.b), 0i), countOneBits(u_input.b)), ~min(-1i, -2147483647i)), ~vec3<i32>(min(-1i, 1i >> (global1[_wgslsmith_index_u32(1u, 3u)] % 32u)), _wgslsmith_div_i32(u_input.b, -2147483647i), countOneBits(~u_input.b)), true);
    global3 = array<Struct_1, 23>();
    var var_2 = !(!(!select(func_2(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 3u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(45281u, 3u)], 3u)], 3u)], global1[_wgslsmith_index_u32(1150u, 3u)]), global1[_wgslsmith_index_u32(4294967295u, 3u)]), vec3<bool>(false, false, false), vec3<bool>(true, true, true))));
    return vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(1f, var_0.x)))), -1808f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-330f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1000f, -2261f)))))) - 1800f), var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec3_u32(~min(select(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(14657u, 3u)], 3u)], 3u)], 3u)], 9656u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 3u)], 3u)]), ~vec3<u32>(global1[_wgslsmith_index_u32(1u, 3u)], 26588u, global1[_wgslsmith_index_u32(10522u, 3u)]), vec3<bool>(false, false, true)), vec3<u32>(0u, 10959u, 429u) >> (vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(63848u, 3u)], 18098u) % vec3<u32>(32u))), ~(~(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 3u)], 3u)], 20165u, 0u) ^ vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 3u)], 3u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 3u)], 3u)], 0u))));
    let var_1 = global0[_wgslsmith_index_u32(var_0.x, 2u)];
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_1())));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(abs(var_0.x)), var_0.x), 2u)];
    var var_4 = u_input.b & 19441i;
    var var_5 = countOneBits(1u);
    let x = u_input.a;
    s_output = StorageBuffer(1u << (~(0u | var_0.x) % 32u), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)], var_0.x), min(vec3<u32>(82252u, var_0.x, var_0.x), vec3<u32>(57562u, global1[_wgslsmith_index_u32(57985u, 3u)], var_0.x))) ^ 4294967295u, -18378i, var_2);
}

