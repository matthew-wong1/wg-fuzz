struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<f32>(-1319f, -1578f, -482f), vec2<u32>(11483u, 3157u), -1238f));

var<private> global1: array<vec2<bool>, 5> = array<vec2<bool>, 5>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false));

var<private> global2: array<u32, 25> = array<u32, 25>(85592u, 23719u, 94612u, 65449u, 4294967295u, 59041u, 31660u, 53019u, 58980u, 0u, 19712u, 866u, 17703u, 0u, 14273u, 0u, 4294967295u, 6614u, 0u, 4294967295u, 8342u, 1u, 11481u, 1u, 4294967295u);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32) -> bool {
    global2 = array<u32, 25>();
    var var_0 = global0.a;
    var var_1 = Struct_2(global0.a);
    var var_2 = Struct_1(global0.a.a, abs(global0.a.b), var_1.a.a.x);
    let var_3 = !global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(10224u, global0.a.b.x >> (1u % 32u)) >> (_wgslsmith_mod_u32(~(~0u), ~min(14934u, global0.a.b.x)) % 32u), 5u)];
    return var_0.b.x > ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(global0.a.b.x, 4294967295u), 15854u), var_1.a.b.x);
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: vec2<f32>, arg_3: u32) -> u32 {
    let var_0 = vec4<bool>(arg_1, (u_input.b.x << (_wgslsmith_clamp_u32(7195u, ~4294967295u, ~global0.a.b.x) % 32u)) > (_wgslsmith_sub_i32(u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-36842i, 54655i, -1i), vec3<i32>(8511i, 2147483647i, u_input.b.x))) ^ -50569i), arg_1, true);
    global1 = array<vec2<bool>, 5>();
    var var_1 = firstLeadingBit(vec3<i32>(u_input.b.x, _wgslsmith_sub_i32(select(u_input.b.x, u_input.b.x, func_3(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), 45642u)), u_input.b.x), abs(-countOneBits(u_input.b.x))));
    global1 = array<vec2<bool>, 5>();
    var_1 = vec3<i32>(-13770i, _wgslsmith_dot_vec3_i32(~vec3<i32>(var_1.x, u_input.b.x, -var_1.x), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(u_input.b.x, 58157i, u_input.b.x)) << (min(vec3<u32>(1u, 4294967295u, global0.a.b.x), vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 25u)], 37590u, 46652u)) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_mult_i32(u_input.b.x, var_1.x), 4873i, abs(var_1.x)))), -9320i);
    return 4294967295u;
}

fn func_2(arg_0: vec3<bool>) -> vec4<u32> {
    let var_0 = global0.a;
    global2 = array<u32, 25>();
    var var_1 = vec4<u32>(1u, 1u, func_4(arg_0, func_3(vec3<i32>(u_input.b.x, 76007i, u_input.b.x), u_input.a >> (global2[_wgslsmith_index_u32(u_input.a, 25u)] % 32u)), global0.a.a.zx, u_input.a), _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(u_input.a, 25u)], _wgslsmith_clamp_u32(firstLeadingBit(u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(12926u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(48485u, 25u)], 25u)], var_0.b.x), vec3<u32>(17433u, 24546u, var_0.b.x)), 4294967295u), var_0.b.x)) ^ _wgslsmith_mod_vec4_u32(abs(firstLeadingBit(vec4<u32>(0u, 40466u, global2[_wgslsmith_index_u32(1u, 25u)], 4294967295u)) ^ (vec4<u32>(3411u, 4294967295u, 1u, var_0.b.x) ^ vec4<u32>(u_input.a, 1u, 4294967295u, 45008u))), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(12847u, 4294967295u, global0.a.b.x, 0u), vec4<u32>(var_0.b.x, global2[_wgslsmith_index_u32(global0.a.b.x, 25u)], 1u, 65367u))));
    let var_2 = vec4<i32>(max(max(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 57099i, -30242i, u_input.b.x), vec4<i32>(26185i, u_input.b.x, u_input.b.x, -2147483647i))), _wgslsmith_dot_vec4_i32(vec4<i32>(-50726i, u_input.b.x, 5494i, -2147483647i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)) & -17178i), 0i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.b.x, ~(-8190i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-21504i, 28287i), -u_input.b)), u_input.b.x) >> (abs(reverseBits(abs(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, 2014u, global2[_wgslsmith_index_u32(61992u, 25u)], global2[_wgslsmith_index_u32(global0.a.b.x, 25u)]), vec4<u32>(11543u, 1029u, u_input.a, var_0.b.x))))) % vec4<u32>(32u));
    global0 = Struct_2(global0.a);
    return vec4<u32>(0u, ~4294967295u, 4294967295u, global0.a.b.x);
}

fn func_1() -> Struct_1 {
    global2 = array<u32, 25>();
    global1 = array<vec2<bool>, 5>();
    let var_0 = _wgslsmith_f_op_f32(global0.a.c * global0.a.c);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0))) + -599f), global0.a.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-290f * -102f))))));
    let var_2 = select(countOneBits(func_2(vec3<bool>(true, true, true))), select(_wgslsmith_sub_vec4_u32(~(vec4<u32>(global0.a.b.x, 6499u, 30813u, global2[_wgslsmith_index_u32(u_input.a, 25u)]) >> (vec4<u32>(global0.a.b.x, u_input.a, u_input.a, 4294967295u) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, 16083u, u_input.a, u_input.a), ~vec4<u32>(15528u, global2[_wgslsmith_index_u32(4294967295u, 25u)], 1u, 0u))), vec4<u32>(func_4(vec3<bool>(true, true, false), true, vec2<f32>(598f, var_1.x), global2[_wgslsmith_index_u32(u_input.a, 25u)]) & 12507u, 1u, ~61580u, ~85005u), global0.a.c == _wgslsmith_f_op_f32(select(450f, 1020f, true))), false);
    return Struct_1(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(161f)), _wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(var_1.x)), var_1.x)))), global0.a.b, -116f);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> i32 {
    var var_0 = func_1();
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(623f, arg_2.c, global0.a.c) + _wgslsmith_f_op_vec3_f32(var_0.a * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-563f, arg_1.c, 1189f) - arg_2.a), func_1().a))), vec2<u32>(~4294967295u, 28233u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(671f - arg_2.c))) * _wgslsmith_f_op_f32(arg_1.c - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.a.a.x))))));
    let var_1 = countOneBits(countOneBits(_wgslsmith_dot_vec2_i32(-_wgslsmith_add_vec2_i32(vec2<i32>(36172i, 2147483647i), vec2<i32>(u_input.b.x, u_input.b.x)), vec2<i32>(~1i, firstLeadingBit(2147483647i)))));
    global0 = Struct_2(func_1());
    global2 = array<u32, 25>();
    return _wgslsmith_mod_i32(4719i, -(~(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a;
    var var_1 = abs(_wgslsmith_div_i32(_wgslsmith_sub_i32(func_5(select(global1[_wgslsmith_index_u32(0u, 5u)], vec2<bool>(true, false), global1[_wgslsmith_index_u32(u_input.a, 5u)]), func_1(), global0.a, global0.a.a.x), -20550i), ~_wgslsmith_div_i32(-20971i, _wgslsmith_add_i32(u_input.b.x, 1i))));
    let var_2 = _wgslsmith_mult_vec3_u32(abs(countOneBits(vec3<u32>(global2[_wgslsmith_index_u32(23703u, 25u)], var_0.b.x, 4294967295u) & abs(vec3<u32>(u_input.a, var_0.b.x, 34904u)))), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(var_0.b.x, 50285u), _wgslsmith_div_u32(~37847u, func_2(vec3<bool>(false, true, false)).x)), abs(~global0.a.b.x) << (~global2[_wgslsmith_index_u32(1u, 25u)] % 32u), func_1().b.x ^ ~1u));
    var_1 = ~13327i;
    var_1 = u_input.b.x;
    global0 = Struct_2(global0.a);
    var var_3 = !(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), all(vec2<bool>(true, false))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(false, false, false, true))));
    var var_4 = 1543f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(u_input.b.x, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -7463i)) & select(vec4<i32>(u_input.b.x, 31674i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -10999i), var_3.x), vec4<i32>(u_input.b.x, -7301i, u_input.b.x, _wgslsmith_sub_i32(u_input.b.x, u_input.b.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1206f, global0.a.c, var_0.c, var_0.a.x))) + vec4<f32>(_wgslsmith_f_op_f32(-global0.a.c), func_1().a.x, _wgslsmith_f_op_f32(step(var_0.a.x, 188f)), _wgslsmith_f_op_f32(-global0.a.c))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, 1233f, var_0.a.x, -1245f))))), global0.a.b.x);
}

