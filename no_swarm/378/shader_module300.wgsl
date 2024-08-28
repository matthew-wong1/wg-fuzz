struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 15>;

var<private> global1: array<f32, 2>;

var<private> global2: vec3<u32> = vec3<u32>(42160u, 4294967295u, 0u);

var<private> global3: array<Struct_2, 21>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> vec3<u32> {
    global3 = array<Struct_2, 21>();
    var var_0 = 785f;
    let var_1 = Struct_1(u_input.a, arg_0.a.b);
    let var_2 = arg_0.c;
    let var_3 = ~0i;
    return vec3<u32>(~select(var_1.a, 39662u, true), u_input.a, arg_2.a.a) & ~(~(~u_input.b.zwy >> (select(vec3<u32>(22607u, u_input.b.x, 0u), u_input.b.xyx, true) % vec3<u32>(32u))));
}

fn func_2(arg_0: Struct_2) -> i32 {
    global2 = func_3(arg_0, arg_0.c.a, global3[_wgslsmith_index_u32(arg_0.a.a >> (4294967295u % 32u), 21u)]) & u_input.b.yxy;
    global0 = array<Struct_3, 15>();
    let var_0 = vec4<i32>(-1i, (i32(-1i) * -1i) ^ _wgslsmith_mod_i32(64664i, _wgslsmith_mod_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 8904i, 1i), vec3<i32>(-1i, 52035i, 15783i)))), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i) >> (vec4<u32>(global2.x, 21149u, 1u, u_input.a) % vec4<u32>(32u)), vec4<i32>(-2147483647i, 1i, 1i, ~(-1i))), _wgslsmith_add_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 5148i, 1i, -4375i), vec4<i32>(-10262i, 2147483647i, 28907i, 7977i)), select(~vec4<i32>(-8544i, -1433i, 2147483647i, -13621i), ~vec4<i32>(-1i, -36516i, -2147483647i, -1361i), true))), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(2147483647i, 8497i), _wgslsmith_add_i32(-1i, -2147483647i)), vec2<i32>(~(-10796i), _wgslsmith_mod_i32(-19767i, 35514i))) | _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, -3228i, 5400i), vec3<i32>(5639i, 11341i, 1i)) << (select(vec3<u32>(0u, u_input.b.x, arg_0.c.a), vec3<u32>(u_input.b.x, global2.x, 93809u), false) % vec3<u32>(32u))));
    global0 = array<Struct_3, 15>();
    var var_1 = global0[_wgslsmith_index_u32(~global2.x, 15u)];
    return _wgslsmith_dot_vec4_i32(~min(var_0, vec4<i32>(1i, var_0.x, var_0.x, 46130i)), var_0);
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: bool, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(abs(arg_0), _wgslsmith_mult_u32(~1u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, 4294967295u, u_input.b.x), u_input.b), _wgslsmith_mod_u32(reverseBits(4294967295u), ~7540u))), 2u)];
    let var_1 = select(select(arg_3, arg_3, !(!select(true, false, false))), vec3<bool>(true, false, !arg_2), !vec3<bool>(select(!arg_3.x, true, !arg_2), arg_2, arg_2));
    global0 = array<Struct_3, 15>();
    var var_2 = global0[_wgslsmith_index_u32(4294967295u, 15u)];
    global3 = array<Struct_2, 21>();
    return Struct_1(global2.x, vec2<f32>(global1[_wgslsmith_index_u32(abs(u_input.a), 2u)], _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(global2.x, 2u)]))));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> Struct_2 {
    let var_0 = func_4(~(~_wgslsmith_div_u32(min(4887u, 4005u), 8950u | global2.x)), max(vec4<i32>(func_2(global3[_wgslsmith_index_u32(arg_0.a, 21u)]), ~(-8124i), i32(-1i) * -18508i, ~0i) | vec4<i32>(min(1i, -1i), func_2(Struct_2(arg_0, 1081f, Struct_1(1u, vec2<f32>(-1035f, arg_0.b.x)))), firstLeadingBit(12425i), countOneBits(2147483647i)), vec4<i32>((-3957i >> (arg_0.a % 32u)) ^ ~(-2147483647i), -(i32(-1i) * -2147483647i), -8394i, ~(-2147483647i))), _wgslsmith_clamp_i32(2981i, 44662i, ~1i) < reverseBits(i32(-1i) * -279i), select(vec3<bool>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(0u, 2u)], -1000f) >= -100f, false, true), vec3<bool>(any(vec2<bool>(true, true)), true, true), vec3<bool>(global2.x != func_3(Struct_2(arg_0, arg_1, arg_0), global2.x, Struct_2(arg_0, arg_0.b.x, arg_0)).x, all(vec2<bool>(false, true)), true)));
    global3 = array<Struct_2, 21>();
    var var_1 = Struct_2(var_0, arg_0.b.x, func_4(u_input.b.x, _wgslsmith_mod_vec4_i32(-vec4<i32>(1i, 42711i, -1i, 0i), min(vec4<i32>(11488i, 9562i, -2147483647i, 2147483647i), ~vec4<i32>(52774i, 36158i, -1i, -2147483647i))), false, vec3<bool>(true, true, any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true))))));
    global2 = vec3<u32>(~func_4(~var_0.a, vec4<i32>(1i, 1i, 1i, 1i), true, select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false)).a << (~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, var_0.a, 4294967295u, arg_0.a)), ~u_input.b) % 32u), 0u ^ _wgslsmith_mult_u32(u_input.b.x, u_input.a), 7249u ^ ~firstTrailingBit(0u));
    let var_2 = global0[_wgslsmith_index_u32(var_1.c.a & ~(~_wgslsmith_dot_vec3_u32(u_input.b.zzz, u_input.b.wwx)), 15u)];
    return global3[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(abs(~(~u_input.b)), _wgslsmith_div_vec4_u32(~vec4<u32>(var_1.c.a, var_2.b, var_1.c.a, 0u), ~vec4<u32>(u_input.b.x, var_2.b, 4294967295u, 4294967295u)) >> (~vec4<u32>(var_0.a, 1u, u_input.b.x, 12770u) % vec4<u32>(32u)))), 21u)];
}

fn func_5(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = Struct_1(0u, _wgslsmith_f_op_vec2_f32(round(arg_0.c.b)));
    global1 = array<f32, 2>();
    let var_1 = var_0;
    global3 = array<Struct_2, 21>();
    global0 = array<Struct_3, 15>();
    return select(vec4<bool>(true, true, all(vec4<bool>(true, any(vec2<bool>(false, true)), true, true)), true), vec4<bool>(true, select(true, select(true, true, true), all(vec3<bool>(true, true, true))), false, any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))) || true), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs(firstTrailingBit(41235u));
    let var_1 = select(select(!select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), true), true), !func_5(func_1(Struct_1(75044u, vec2<f32>(global1[_wgslsmith_index_u32(84501u, 2u)], global1[_wgslsmith_index_u32(global2.x, 2u)])), 198f)), !select(func_5(global3[_wgslsmith_index_u32(u_input.a, 21u)]), vec4<bool>(true, true, true, true), true)), vec4<bool>(true, !all(vec4<bool>(true, true, false, false)), min(_wgslsmith_dot_vec2_i32(vec2<i32>(-6496i, 2147483647i), vec2<i32>(0i, 1i)), -40535i) <= ~firstLeadingBit(-13431i), all(vec3<bool>(true, true, true))), func_5(func_1(func_4(1u, vec4<i32>(0i, 23557i, 0i, 1i), any(vec4<bool>(true, true, true, false)), vec3<bool>(true, false, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(global2.x, 2u)])), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(global2.x, 2u)]))))).x);
    global2 = vec3<u32>(~global2.x, u_input.b.x, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(~global2.x);
}

