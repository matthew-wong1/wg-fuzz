struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: f32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: f32,
    d: vec2<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 4>;

var<private> global1: array<Struct_4, 28>;

var<private> global2: Struct_1;

var<private> global3: array<Struct_4, 16> = array<Struct_4, 16>(Struct_4(true), Struct_4(true), Struct_4(false), Struct_4(false), Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(false), Struct_4(false), Struct_4(false), Struct_4(false), Struct_4(true), Struct_4(true), Struct_4(true), Struct_4(false), Struct_4(false));

var<private> global4: array<vec4<bool>, 15> = array<vec4<bool>, 15>(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> Struct_1 {
    var var_0 = true;
    var var_1 = Struct_3(Struct_2(_wgslsmith_clamp_u32(1u, select(countOneBits(global2.b.x), 1u, false), global2.b.x)), !vec3<bool>(true, any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false))), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(211f))))));
    var_0 = true;
    let var_2 = !var_1.b;
    let var_3 = -u_input.b.zxz;
    return Struct_1(_wgslsmith_dot_vec4_i32(u_input.c, ~(-vec4<i32>(38722i, var_3.x, u_input.a.x, 3708i))), global2.b);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_3) -> u32 {
    global0 = array<vec4<bool>, 4>();
    global2 = Struct_1(global2.a, _wgslsmith_sub_vec4_u32(vec4<u32>(~arg_1.a | firstTrailingBit(arg_2.a.a), 4294967295u, ~(~41056u), 0u), _wgslsmith_mod_vec4_u32(select(~vec4<u32>(27750u, global2.b.x, 1u, 8836u), vec4<u32>(1u, arg_1.a, arg_2.a.a, arg_1.a), true), (global2.b ^ global2.b) ^ ~vec4<u32>(4294967295u, global2.b.x, arg_1.a, 4294967295u))));
    global3 = array<Struct_4, 16>();
    global1 = array<Struct_4, 28>();
    global0 = array<vec4<bool>, 4>();
    return arg_2.a.a;
}

fn func_1(arg_0: i32, arg_1: vec4<i32>) -> Struct_2 {
    global4 = array<vec4<bool>, 15>();
    var var_0 = func_2();
    var var_1 = firstTrailingBit((global2.a >> (0u % 32u)) & -var_0.a);
    var_1 = ~0i;
    var var_2 = arg_1;
    return Struct_2(_wgslsmith_add_u32(func_2().b.x ^ _wgslsmith_add_u32(func_3(Struct_2(21954u), Struct_2(var_0.b.x), Struct_3(Struct_2(global2.b.x), vec3<bool>(true, true, true), 1148f)), 26192u), var_0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 28>();
    global0 = array<vec4<bool>, 4>();
    var var_0 = -vec2<i32>(_wgslsmith_dot_vec4_i32(-u_input.c, u_input.a), global2.a);
    let var_1 = vec2<bool>(true, _wgslsmith_div_u32(select(2635u, 34157u, false) & 1u, 0u) != 49082u);
    var var_2 = func_1(abs(var_0.x), select(vec4<i32>(-1i) * -u_input.c, u_input.b, !global0[_wgslsmith_index_u32(~(~global2.b.x), 4u)]));
    let var_3 = vec3<u32>(109463u, 1u, 0u);
    var_0 = u_input.c.ww;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<i32>(abs(global2.a), ~global2.a, ~u_input.b.x) | u_input.c.ywy), min(vec4<i32>(-8281i, abs(global2.a) >> ((var_3.x >> (var_2.a % 32u)) % 32u), var_0.x, 18476i & (u_input.c.x | u_input.b.x)), u_input.c), 438f, vec2<i32>(_wgslsmith_mult_i32(var_0.x, func_2().a), _wgslsmith_div_i32(~23657i, -var_0.x) << (select(1u, var_2.a, false && var_1.x) % 32u)), vec3<i32>(~0i ^ -(-2147483647i & global2.a), ~global2.a, global2.a));
}

