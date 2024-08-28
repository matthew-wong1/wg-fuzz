struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(40702u, 4294967295u), vec4<i32>(1519i, -32398i, -14234i, 44133i), 53056u, false);

var<private> global1: array<Struct_1, 29>;

var<private> global2: Struct_2;

var<private> global3: Struct_1 = Struct_1(vec2<u32>(2849u, 0u), vec4<i32>(2147483647i, 2147483647i, -52462i, -18783i), 24394u, true);

var<private> global4: array<vec4<f32>, 12> = array<vec4<f32>, 12>(vec4<f32>(971f, 1405f, 140f, 120f), vec4<f32>(269f, 732f, 1111f, 404f), vec4<f32>(521f, -626f, 1299f, -111f), vec4<f32>(-380f, 458f, -1076f, -1304f), vec4<f32>(-867f, -2307f, 553f, -781f), vec4<f32>(-1277f, 1150f, 1313f, 160f), vec4<f32>(680f, 693f, -337f, 760f), vec4<f32>(262f, 1271f, 479f, -875f), vec4<f32>(-1536f, -492f, 1354f, 2382f), vec4<f32>(-907f, 773f, -480f, -403f), vec4<f32>(-1180f, 585f, 1036f, 1404f), vec4<f32>(-346f, -730f, 1405f, -377f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b << (u_input.a.x % 32u), ~(~0u)), 29u)];
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x));
    var var_1 = arg_0;
    let var_2 = arg_1.b;
    global0 = Struct_1(~vec2<u32>(~_wgslsmith_clamp_u32(global2.a, arg_1.a, 31345u), reverseBits(15899u)), vec4<i32>(~select(global0.b.x, -21472i, !arg_1.b.d), _wgslsmith_mult_i32(0i, 258i), i32(-1i) * -2147483647i, arg_0.b.b.x), ~_wgslsmith_div_u32(~0u, 42392u), select(!(~global2.a <= 0u), var_1.b.d, !global0.d));
    return ~_wgslsmith_mult_i32(arg_0.b.b.x ^ (arg_0.b.b.x & (var_2.b.x << (global3.a.x % 32u))), (_wgslsmith_dot_vec4_i32(global2.b.b, global2.b.b) | _wgslsmith_add_i32(arg_1.b.b.x, -1i)) & _wgslsmith_add_i32(global2.b.b.x, global0.b.x | arg_0.b.b.x));
}

fn func_2() -> Struct_2 {
    global3 = global2.b;
    let var_0 = vec2<bool>(false, global3.d);
    global0 = global2.b;
    global3 = global2.b;
    let var_1 = _wgslsmith_mod_i32(func_3(Struct_2(1u, global2.b, _wgslsmith_f_op_vec3_f32(select(global2.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c.x, global2.c.x, global2.c.x) - global2.c), select(vec3<bool>(var_0.x, global2.b.d, global2.b.d), vec3<bool>(false, global3.d, var_0.x), vec3<bool>(global0.d, true, global2.b.d))))), Struct_2(57199u, Struct_1(vec2<u32>(9493u, 21421u), _wgslsmith_mod_vec4_i32(global3.b, global2.b.b), global3.a.x, global3.d), _wgslsmith_f_op_vec3_f32(max(global2.c, vec3<f32>(global2.c.x, -412f, global2.c.x))))), ~(~(_wgslsmith_dot_vec3_i32(u_input.c, global2.b.b.wzx) << ((global2.a >> (1u % 32u)) % 32u))));
    return Struct_2(18025u, global2.b, vec3<f32>(1057f, _wgslsmith_f_op_f32(sign(global2.c.x)), 364f));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec4<f32>, arg_3: vec4<i32>) -> u32 {
    global3 = global1[_wgslsmith_index_u32(~40304u, 29u)];
    global4 = array<vec4<f32>, 12>();
    global2 = func_2();
    global1 = array<Struct_1, 29>();
    var var_0 = global2.a;
    return global2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.b.x;
    var var_1 = global0.b;
    var var_2 = Struct_2(~func_1(true, 2147483647i, global4[_wgslsmith_index_u32(1u, 12u)], vec4<i32>(global3.b.x & 1i, max(global0.b.x, -25503i), -u_input.c.x, -var_1.x)), global2.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(740f * global2.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x))) + global2.c));
    let var_3 = _wgslsmith_mult_i32((i32(-1i) * -26373i) & func_2().b.b.x, firstLeadingBit(63330i << (var_2.b.c % 32u)));
    var var_4 = Struct_1(vec2<u32>(0u, 4294967295u), global0.b, var_2.a, ~(global3.b.x << (~global0.a.x % 32u)) >= _wgslsmith_mod_i32(countOneBits(_wgslsmith_sub_i32(-32157i, 0i)), 2147483647i));
    let var_5 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-135f))));
    var_4 = global2.b;
    let var_6 = i32(-1i) * -1i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, _wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_5 * func_2().c.x), _wgslsmith_f_op_f32(trunc(333f)))));
}

