struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 4> = array<vec4<i32>, 4>(vec4<i32>(2147483647i, 24665i, 0i, -24952i), vec4<i32>(40962i, -1i, 4530i, i32(-2147483648)), vec4<i32>(252i, 25093i, -1i, -1742i), vec4<i32>(i32(-2147483648), -6618i, -39641i, -39004i));

var<private> global1: Struct_1;

var<private> global2: i32 = -48842i;

var<private> global3: array<vec3<i32>, 19>;

var<private> global4: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = global4[_wgslsmith_index_u32(arg_0.x, 19u)];
    let var_1 = arg_1;
    global0 = array<vec4<i32>, 4>();
    return arg_0.xy;
}

fn func_1(arg_0: vec3<i32>, arg_1: f32) -> Struct_1 {
    global2 = -3412i;
    let var_0 = arg_0.zz;
    global0 = array<vec4<i32>, 4>();
    var var_1 = ~func_2(~reverseBits(~vec3<u32>(41498u, 4294967295u, 4294967295u)), Struct_1(true));
    let var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(615f, 1000f))))));
    return Struct_1(global1.a);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    global1 = func_1(vec3<i32>(-14728i, _wgslsmith_dot_vec4_i32(vec4<i32>(~1i, 0i, u_input.c, -u_input.a), _wgslsmith_mod_vec4_i32(max(vec4<i32>(0i, u_input.a, -36271i, -8683i), vec4<i32>(-20163i, 1i, u_input.c, 1i)), vec4<i32>(u_input.b.x, u_input.a, u_input.c, u_input.c))), _wgslsmith_mult_i32(-405i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(global3[_wgslsmith_index_u32(8520u, 19u)], vec3<i32>(u_input.a, u_input.a, u_input.c)), vec3<i32>(u_input.c, u_input.b.x, -29010i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(931f, -665f))))));
    var var_0 = Struct_1(select(true, false, func_1(u_input.b.xyy, _wgslsmith_f_op_f32(floor(-1649f))).a) & true);
    global4 = array<Struct_1, 19>();
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(~1u, firstLeadingBit(~144637u)), ~1u, ~(~abs(70991u))), vec3<u32>(0u, 4294967295u, 4294967295u));
    var var_2 = firstLeadingBit(abs(~_wgslsmith_sub_vec4_u32(~vec4<u32>(80833u, 0u, 4294967295u, 0u), firstTrailingBit(vec4<u32>(54180u, 1u, 4294967295u, 106236u)))));
    return Struct_1(any(!vec4<bool>(false, true, func_1(u_input.b.zyx, -711f).a, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_3(!(!global1.a || !any(vec2<bool>(false, false))), func_1(vec3<i32>(_wgslsmith_dot_vec3_i32(-global3[_wgslsmith_index_u32(0u, 19u)], u_input.b.yzx), firstLeadingBit(-u_input.b.x), -(~u_input.b.x)), -164f));
    global1 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~1u) << (select(~min(13091u, 12081u), 18888u, var_0.a) % 32u), countOneBits(0u)), 19u)];
    let var_1 = true;
    let var_2 = 11164u;
    global0 = array<vec4<i32>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec4_u32(abs(vec4<u32>(1u, 95619u, 0u, var_2) & vec4<u32>(var_2, 17204u, var_2, var_2)), _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(var_2, var_2, 34499u, 4294967295u)), vec4<u32>(435u, 975u, 1u, var_2) >> (vec4<u32>(63281u, 1u, var_2, var_2) % vec4<u32>(32u)))), countOneBits(~(~_wgslsmith_div_vec3_u32(vec3<u32>(var_2, 0u, 4294967295u), vec3<u32>(64256u, var_2, 0u)))), -23647i, countOneBits(u_input.a));
}

