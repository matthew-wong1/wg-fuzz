struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(48745u, true, true), Struct_1(65142u, false, true), Struct_1(100100u, true, true), Struct_1(0u, true, true), Struct_1(0u, false, true), Struct_1(4294967295u, true, true), Struct_1(24361u, true, false), Struct_1(4294967295u, true, false), Struct_1(14561u, false, false), Struct_1(8998u, false, false), Struct_1(1u, true, false), Struct_1(4294967295u, true, false), Struct_1(4294967295u, true, true), Struct_1(0u, false, false), Struct_1(0u, true, false));

var<private> global2: vec2<i32>;

var<private> global3: array<vec4<u32>, 21> = array<vec4<u32>, 21>(vec4<u32>(69595u, 15050u, 13032u, 71887u), vec4<u32>(108812u, 1u, 1u, 59373u), vec4<u32>(80765u, 4294967295u, 27688u, 20214u), vec4<u32>(0u, 4294967295u, 33135u, 37984u), vec4<u32>(31129u, 0u, 4294967295u, 1u), vec4<u32>(0u, 42044u, 0u, 4294967295u), vec4<u32>(45775u, 0u, 1u, 98802u), vec4<u32>(4969u, 0u, 5120u, 54142u), vec4<u32>(1u, 31360u, 27693u, 74653u), vec4<u32>(17433u, 31897u, 4294967295u, 1u), vec4<u32>(4294967295u, 1u, 1u, 4294967295u), vec4<u32>(70089u, 40760u, 0u, 23009u), vec4<u32>(0u, 1u, 4294967295u, 4294967295u), vec4<u32>(30748u, 42128u, 24113u, 1u), vec4<u32>(4294967295u, 4294967295u, 0u, 2919u), vec4<u32>(23326u, 4294967295u, 1u, 0u), vec4<u32>(31483u, 4294967295u, 1u, 0u), vec4<u32>(48615u, 1u, 1u, 4294967295u), vec4<u32>(4294967295u, 34962u, 6376u, 0u), vec4<u32>(4294967295u, 15266u, 4294967295u, 1u), vec4<u32>(59408u, 13536u, 14141u, 4294967295u));

var<private> global4: vec4<u32> = vec4<u32>(0u, 39710u, 17836u, 1u);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> i32 {
    global4 = ~u_input.d;
    global0 = u_input.b;
    var var_0 = select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), true)), select(vec2<bool>(true, true), vec2<bool>(false, all(vec3<bool>(true, false, true))), false), select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, all(vec3<bool>(true, false, true))), false)), select(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(false, _wgslsmith_dot_vec3_i32(vec3<i32>(33984i, 2147483647i, global2.x), vec3<i32>(global2.x, 2147483647i, global2.x)) <= u_input.c)), select(vec2<bool>(all(vec2<bool>(true, true)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))), vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), true), false));
    let var_1 = Struct_2(vec2<bool>(true, true), Struct_1(~_wgslsmith_mod_u32(~u_input.a.x, 0u), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-305f, 449f, var_0.x)) - _wgslsmith_f_op_f32(-319f + -1347f)) > 1153f), global2.x | global2.x, countOneBits(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, global2.x, 55592i, -5554i), vec4<i32>(global2.x, global2.x, -2147483647i, u_input.c)), ~vec4<i32>(-48885i, 36868i, u_input.c, global2.x)) >> (1u % 32u)));
    global4 = _wgslsmith_sub_vec4_u32(global3[_wgslsmith_index_u32(select(~u_input.d.x, ~(38001u >> (global4.x % 32u)) & u_input.d.x, var_1.a.x), 21u)], _wgslsmith_add_vec4_u32(~vec4<u32>(abs(0u), ~73041u, u_input.a.x << (29811u % 32u), abs(global4.x)), firstLeadingBit(_wgslsmith_clamp_vec4_u32(global3[_wgslsmith_index_u32(4294967295u, 21u)], vec4<u32>(u_input.a.x, 0u, 35923u, 40804u), u_input.d) << ((vec4<u32>(u_input.a.x, var_1.b.a, u_input.d.x, var_1.b.a) & global3[_wgslsmith_index_u32(var_1.b.a, 21u)]) % vec4<u32>(32u)))));
    return -17916i;
}

fn func_2(arg_0: u32, arg_1: vec2<bool>) -> i32 {
    global0 = -_wgslsmith_dot_vec3_i32(reverseBits(-vec3<i32>(25070i, global2.x, -17632i)), ~(-_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, global2.x, 3696i), vec3<i32>(-10477i, 50158i, 41209i))));
    var var_0 = Struct_2(!arg_1, global1[_wgslsmith_index_u32(min(~arg_0, 0u), 15u)], abs(u_input.c), -func_3());
    let var_1 = Struct_1(_wgslsmith_mult_u32(max(~1u, firstLeadingBit(~var_0.b.a)), ~u_input.a.x), false, any(!(!select(vec4<bool>(var_0.a.x, true, arg_1.x, true), vec4<bool>(var_0.b.b, arg_1.x, var_0.a.x, false), vec4<bool>(var_0.a.x, false, arg_1.x, true)))));
    global0 = (-_wgslsmith_sub_i32(u_input.e, max(-26454i, 2147483647i)) | (~(0i & global2.x) ^ global2.x)) >> (21618u % 32u);
    var var_2 = global4.xzy;
    return ~_wgslsmith_dot_vec3_i32(vec3<i32>(~(-10482i), 1i, 33443i << (var_2.x % 32u)) ^ vec3<i32>(~var_0.c, u_input.e, global2.x), firstTrailingBit(~vec3<i32>(global2.x, -56373i, -14628i)));
}

fn func_1(arg_0: vec2<bool>) -> vec4<u32> {
    var var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_div_i32(global2.x, ~2147483647i), func_2(23754u ^ global4.x, !vec2<bool>(false, arg_0.x)) ^ firstTrailingBit(2147483647i)), -reverseBits(vec2<i32>(-26300i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.e, -2147483647i), vec3<i32>(1i, u_input.c, 1085i)))));
    let var_1 = -29568i;
    var var_2 = select(select(arg_0, !(!select(vec2<bool>(true, arg_0.x), vec2<bool>(false, arg_0.x), arg_0)), arg_0), select(select(vec2<bool>(select(arg_0.x, false, arg_0.x), arg_0.x), arg_0, select(!arg_0.x, any(vec2<bool>(false, false)), false)), arg_0, ~global2.x == var_1), !arg_0.x);
    let var_3 = select(select(select(arg_0, select(arg_0, !vec2<bool>(var_2.x, arg_0.x), arg_0), vec2<bool>(!var_2.x, false)), !arg_0, any(select(select(arg_0, vec2<bool>(var_2.x, arg_0.x), false), !arg_0, !var_2.x))), select(!vec2<bool>(true, arg_0.x | true), arg_0, var_2.x), (any(select(vec3<bool>(true, arg_0.x, true), vec3<bool>(true, arg_0.x, false), vec3<bool>(var_2.x, var_2.x, arg_0.x))) & var_2.x) & any(!vec4<bool>(true, arg_0.x, arg_0.x, var_2.x)));
    var var_4 = -3012f;
    return vec4<u32>(_wgslsmith_clamp_u32(~u_input.d.x, 35351u, u_input.a.x), countOneBits(firstLeadingBit(~4650u) << (u_input.a.x % 32u)), global4.x, ~(~_wgslsmith_mult_u32(firstLeadingBit(u_input.d.x), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 46977u), global4.wx))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 15>();
    let var_0 = func_1(select(select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, true)), true), !all(vec2<bool>(true, false))), vec2<bool>(true, true), true == ((21539u == global4.x) || all(vec2<bool>(true, true)))));
    var var_1 = vec4<i32>(global2.x, firstLeadingBit(_wgslsmith_dot_vec4_i32(min(vec4<i32>(global2.x, global2.x, global2.x, -3503i), abs(vec4<i32>(u_input.b, 2147483647i, global2.x, -1i))), vec4<i32>(-2147483647i, global2.x, -32361i, 1i) & (vec4<i32>(23903i, u_input.b, -2147483647i, global2.x) ^ vec4<i32>(u_input.c, u_input.c, -2147483647i, global2.x)))), i32(-1i) * -1i, -u_input.e);
    let var_2 = vec2<bool>(all(vec4<bool>(false, false, true, !(var_1.x <= global2.x))), true);
    global2 = vec2<i32>(u_input.b, func_2(4294967295u, select(vec2<bool>(var_2.x, all(vec3<bool>(true, true, false))), vec2<bool>(true, true), var_2)));
    let x = u_input.a;
    s_output = StorageBuffer((var_1.xz ^ -vec2<i32>(var_1.x, var_1.x)) >> (abs(vec2<u32>(~global4.x, global4.x >> (u_input.a.x % 32u))) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-969f, -520f)), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-808f, 510f)) + _wgslsmith_f_op_f32(sign(-1034f))), _wgslsmith_f_op_f32(abs(-649f))))));
}

